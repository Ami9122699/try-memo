require "csv" # CSVファイルを扱うためのライブラリを読み込んでいます
 
puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"
 
memo_type = gets.to_i # ユーザーの入力値を取得し、数字へ変換しています

if memo_type == 1
puts "拡張子を除いたファイルを入力してください"
# イコールは２個

file_name = gets.chomp

puts "メモしたい内容を入力"
puts "終了後　ctrl + D を押す"

imput_memo = STDIN.read
memo = imput_memo.chomp
CSV.open("#{file_name}.csv","w") do |csv|
csv << ["#{memo}"]

puts memo
end
  
elsif memo_type == 2
puts "保存されているメモを編集。拡張子なしで名前を入力してください。" 
file_name = gets.chomp

print "メモの内容を編集して下さい。Ctrl+Dで保存します"
edit_memo = STDIN.read
memo = edit_memo.chomp

CSV.open("#{file_name}.csv","a") do |csv|
csv << ["#{memo}"]

end
end
 # if文を使用して続きを作成していきましょう。
 # 「memo_type」の値（1 or 2）によって処理を分岐させていきましょう。