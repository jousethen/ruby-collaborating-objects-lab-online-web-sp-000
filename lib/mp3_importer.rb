class MP3Importer
  attr_accessor :path
  @files = []
  
  def initialize(path)
    @path = path
  end
  
  def files
    return Dir.entries(@path)
  end
end