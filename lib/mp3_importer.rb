class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    # files = Dir.glob("#{@path}/*.mp3").collect {|file|
    #   file.gsub("#{@path}/", "")}
      
      # Dir.glob("#{@path}/*.mp3").collect {|file|
      # file.gsub("#{@path}/", "")}
      
      Dir.children(self.path)
  end

  def import
    files.each {|file| Song.new_by_filename(file)}
  end
end