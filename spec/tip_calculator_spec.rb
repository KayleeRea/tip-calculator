require 'spec_helper'
require_relative '../lib/tip_calculator'

describe TipCalculator do
  it 'handles one persons information' do
    staff_data = {
      "id" => 3135,
      "first_name" => "Ila",
      "last_name" => "Nikolaus",
      "job_title" => "server"
    }

    sales_data = {
      "server_id" => 3135,
      "date" => "2014-05-08",
      "total" => 4464,
      "tip" => 848
    }

    expected = TipCalculator.new(staff_data, sales_data).calculate_tips
    expect(expected).to eq(
                          {"Ila Nikolaus" => "$8.48"}
                        )
  end
end