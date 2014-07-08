require 'spec_helper'
require_relative '../lib/file_parser'

describe FileParser do
  it 'can parse data' do
    parsed_file = FileParser.new.extract_data('/Users/Kaylee/gSchoolWork/tip-calculator/data/test.json')
    expect(parsed_file). to eq({"foo" => "bar"})
  end
end