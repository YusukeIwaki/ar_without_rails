class CreateDailyAggregationResults < ActiveRecord::Migration[6.0]
  def up
    create_table :daily_aggregation_results do |t|
      t.date :target_date, null: false
      t.integer :count, null: false
      t.datetime :aggregated_at, null: false, index: true
    end
  end

  def down
    drop_table :daily_aggregation_results
  end
end