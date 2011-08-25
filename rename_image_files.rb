
folder_name = '.'
folder_name = ARGV[0] if ARGV.length > 0

gifFiles = Dir.glob(File.join(folder_name, '*gif'))

gifFiles.each do |file|
  original_file_name = file.clone
  file.gsub!(/(Slide)0(.*gif)/i) { $1 + $2 }
  file.gsub!(/(Slide.*)gif/i) {$1 + "GIF" }
  File.rename original_file_name, file
end
