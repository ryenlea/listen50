#
require 'FileUtils'

(2..50).each do |e|
    FileUtils.cp "../htmls/1q.html", "../htmls/#{e}q.html"
    FileUtils.cp "../htmls/1a.html", "../htmls/#{e}a.html"
end