def solve(n)
    answers = Array.new(n+1, 0)
    answers[0] = 1

    for i in 1..n do
        for j in 1..n do
            if j >= i
                answers[j] = answers[j] + answers[j-i]
            end
        end
    end

    return answers[n]
end

n = gets.chomp.to_i
puts solve(n)