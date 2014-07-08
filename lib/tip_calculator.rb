class TipCalculator

  def initialize(staff_data, sales_data)
    @staff_data = staff_data
    @sales_data = sales_data
  end

  def calculate_tips
    server_hash = {}
    @staff_data.each do |staff|
      @sales_data.each do |sales|
        if staff["id"] == sales["server_id"]
          tip = sales["tip"]
          server_name = staff["first_name"] + " " + staff["last_name"]
          server_hash[server_name] = "$%.2f" % (tip/100.0)
        end
      end
    end
    server_hash
  end
end