class MP3Importer
  attr_accessor :path
  @files = []
  
  def initialize(path)
    @path = path
  end
  
  def files
    file_arr = Dir.entries(@path)
    p(file_arr)
  end
end