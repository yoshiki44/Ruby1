require "csv" # CSVファイルを扱うためのライブラリを読み込んでいます

puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"

memo_type = gets.to_i # ユーザーの入力値を取得し、数字へ変換しています

# if文を使用して続きを作成していきましょう。
# 「memo_type」の値（1 or 2）によって処理を分岐させていきましょう。
if memo_type == 1
    puts "拡張子を除いたファイル名を入力してください"
    file_name = gets.chomp # ファイル名をターミナルから入力する
    puts "メモしたい内容を記載してください"
    puts "入力が完了したら”Ctrl＋D”を押してください"
    input = $stdin.readlines # メモ内容をターミナルから入力する
    CSV.open(file_name + ".csv","w") do |file| # 入力されたファイル名でcsvファイルを作成する
        file.puts(input) # メモ内容をcsvファイルに追加
    end
    
    
elsif memo_type == 2
    puts "拡張子を除いたファイル名を入力してください"
    file_name2 = gets.chomp # 追加するメモのファイル名を入力する
    puts "追加したい内容を記載してください"
    puts "入力が完了したら”Ctrl＋D”を押してください"
    add_input = $stdin.readlines # メモに追加する内容を入力する
    CSV.open(file_name2 + ".csv","a") do |file| # 対象のファイルを開き、追記モードにする
      file.puts(add_input) # メモの後ろに追記する
    end

else
    puts '1or2で入力してください！'
    
end

