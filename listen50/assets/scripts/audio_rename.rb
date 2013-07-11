require 'FileUtils'
Dir.new('../audios/shang').each do|file|
    if file.include? "mp3"
        new_name = file.split(' ')[0]
        if !(new_name.include? "mp3")
            p "===renaming #{file} to #{new_name}.mp3"
            FileUtils.mv("../audios/shang/#{file}", "../audios/shang/#{new_name}.mp3")
        end
    end
end

Dir.new('../audios/xia').each do|file|
    if file.include? "mp3"
        new_name = file.split(' ')[0]
        if !(new_name.include? "mp3")
            p "===renaming #{file} to #{new_name}.mp3"
            FileUtils.mv("../audios/shang/#{file}", "../audios/shang/#{new_name}.mp3")
        end
    end
end