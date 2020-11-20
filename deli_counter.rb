katz_deli = []

def line(katz_deli)
    if katz_deli.size == 0
        puts "The line is currently empty."
    else
        message = "The line is currently: "
        new_array = []
        katz_deli.each_with_index do |name,index|
            new_array << "#{index + 1}. #{name}"
        end
        puts message + new_array.join(" ")
    end
end

def take_a_number(katz_deli, name)
    if katz_deli.size == 0
        katz_deli.unshift(name)
        puts "Welcome, #{name}. You are number #{katz_deli.index(name) + 1} in line."
    else
        katz_deli.push(name)
    puts "Welcome, #{name}. You are number #{katz_deli.index(name) + 1} in line."
    end

end

def now_serving(katz_deli)
    if katz_deli.size == 0
        puts "There is nobody waiting to be served!"
    else
        current_customer = katz_deli.shift
        puts "Currently serving #{current_customer}."
    end
end


