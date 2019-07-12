require './config/init.rb'

results =
  ActiveRecord::Base.connected_to(database: :data) do
    TodoItem.group("DATE_FORMAT(created_at, '%Y-%m-%d')").count
  end

data = results.map do |created_at, count|
  { target_date: created_at, count: count, aggregated_at: Time.current }
end
ActiveRecord::Base.connected_to(database: :datacenter) do
  DailyAggregationResult.insert_all(data)
end
