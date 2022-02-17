#https://www.hackerrank.com/challenges/ruby-strings-indexing/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
def serial_average(str)
  splited = str.split('-')
  "#{splited[0]}-#{((splited[1].to_f+splited[2].to_f)/2).round(2)}" 
end
