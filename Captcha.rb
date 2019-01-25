class Captcha
  def initialize
    @numbers=[1,2,3,4,5,6,7,8,9]
    @numbers_liter={
      1=>"one",
      2=>"two",
      3=>"tree",
      4=>"four",
      5=>"five",
      6=>"six",
      7=>"seven",
      8=>"eight",
      9=>"nine",
    }
    @operations={
      "+" => "plus",
      "-" => "minus",
      "*" => "multiplies",
    }
  end
  def getCaptcha

    randNum1=@numbers[rand(9)]
    randNum2=@numbers[rand(9)]
    op = @operations.keys[rand(3)]

    val = eval "#{randNum1}#{op}#{randNum2}"
    puts captcha_text = "#{@numbers_liter[randNum1]} #{@operations[op]} #{@numbers_liter[randNum2]}"

    return val
  end
end
