def menu(player)
    puts "Player #{player} it's your turn:
        Enter [ 1 ] for: Stone
        Enter [ 2 ] for: Paper
        Enter [ 3 ] for: Scissors
        Enter [ 4 ] for: Exit"
end

def validation(player, option)

    puts "\n\nInvalid option, choose again\n\n"
    menu(player)

    option = gets.chomp.to_i
    return "#{option}"
end

menu(1)
option__a = gets.chomp.to_i    


unless (option__a == 4)

    if (option__a > 4 || option__a < 1) 
        menu(1)
        option__a = validation(1, option__a)
    end

    unless (option__a == 4)
        menu(2)
        option__b = gets.chomp.to_i

        if (option__b > 4 || option__b < 1) 
            menu(2)
            option__b = validation(2, option__b)
        end

        unless (option__b == 4 && option__b > 4 && option__b < 1)

            case(option__a)

            when 1
                puts "It's a TIE" if option__b == 1
                puts "PLAYER 2 wins" if option__b == 2
                puts "PLAYER 1 wins" if option__b == 3
            when 2
                puts "it's a TIE" if option__b == 2
                puts "PLAYER 2 wins" if option__b == 3
                puts "PLAYER 1 wins" if option__b == 1
            when 3
                puts "It's a TIE" if option__b == 3
                puts "PLAYER 2 wins" if option__b == 1
                puts "PLAYER 1 wins" if option__b == 2
            end
        end
    end
end