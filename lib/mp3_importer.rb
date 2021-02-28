class MP3Importer
  attr_accessor :path
  @files = []
  
  def initialize(path)
    @path = path
  end
  
  def files
    file_arr = Dir.entries(@path)
    file_arr.delete_if {|file| file.include?(mp3)}
  end
end