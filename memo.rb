require "csv"
        #選択肢を出力
    while true
        puts "1(新規メモ作成),2(メモの編集),3(終了)"
        
        memo_type = gets.chomp
        #文字列を取得し、改行をしない
        if memo_type == "1"
                puts "拡張子を除いたファイル名を入力"
                memo_name = gets.chomp
                puts "メモ入力の完了後、Ctrl＋dを押下してください"
                memo = STDIN.read
                CSV.open("#{memo_name}.csv", "w") do |test|
                test << ["#{memo}"]
            end
        elsif memo_type == "2"
                puts "編集可能なファイルの拡張子を除いたファイル名を入力"
                memo_name = gets.chomp
                puts "メモ入力の完了後、Ctrl＋dを押下してください"
                memo = STDIN.read
                CSV.open("#{memo_name}.csv", "a") do |test|
                test << ["#{memo}"]
             end
        elsif memo_type == "3"
            puts "処理を終了"
            exit
        else
            puts "規定の数字を入力してください"
        end
    end