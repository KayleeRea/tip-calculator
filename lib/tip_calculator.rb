class TipCalculator

  def initialize(staff_data, sales_data)
    @staff_data = staff_data
    @sales_data = sales_data
  end

  def calculate_tips
    server_hash = {}
    if @staff_data["id"] == @sales_data["server_id"]
      p tip = @sales_data["tip"]
     server_name = @staff_data["first_name"] + " " + @staff_data["last_name"]
      server_hash[server_name] = "$%.2f" % (tip/100.0)
    end
    server_hash
  end
end