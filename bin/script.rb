require_relative '../lib/tip_calculator'
require_relative '../lib/file_parser'
require 'json'
require 'pp'

parsed_sales = FileParser.new.extract_data('/Users/Kaylee/gSchoolWork/tip-calculator/data/sales.json')
parsed_staff = FileParser.new.extract_data('/Users/Kaylee/gSchoolWork/tip-calculator/data/staff.json')
TipCalculator.new(parsed_staff,  parsed_sales).calculate_tips