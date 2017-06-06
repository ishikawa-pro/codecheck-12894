def calc(int_1, int_2, op)
    case op.chop
    when "+"
        return int_1.to_i + int_2.to_i
    when "-"
        return int_1.to_i - int_2.to_i
    when "*"
        return int_1.to_i * int_2.to_i
    when "/"
        return int_1.to_i / int_2.to_i

    end
end

def Reverse_polish(formula)
    result = String.new

    if formula.length == 5
        int_1 = formula[0,1]
        int_2 = formula[4,4]
        op = formula[2,2]

        result << int_1  << " " << int_2 << " " << op << "= "
        result << calc(int_1,int_2, op).to_s
        return result
    end
end

def shorFormula(formula)
    puts formula
    #正規表現でカッコの中を見つける
    md = formula.match(/[*\(\d\s.\s\d\)*]/)
    return md[0].to_s[1,5]
end

def main(argv)
  # このコードは引数と標準出力を用いたサンプルコードです。
  # このコードは好きなように編集・削除してもらって構いません。
  # ---
  # This is a sample code to use arguments and outputs.
  # Edit and remove this code as you like.

    result = String.new
    v = argv[0]
    short_fm = shorFormula(v)
    result << Reverse_polish(v)
    
#    v.chars do |char|
#        puts char.to_i
#    end
    puts result
end
