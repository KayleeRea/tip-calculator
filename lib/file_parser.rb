require 'json'

class FileParser

  def extract_data(path)
    data = File.read(path)
    JSON.parse(data)
  end
end