#Método Menú
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
option__A = gets.chomp.to_i    


unless (option__A == 4)

    if (option__A > 4 || option__A < 1) 
        menu(1)
        option__A = validation(1, option__A)
    end

    unless (option__A == 4)
        menu(2)
        option__B = gets.chomp.to_i

        if (option__B > 4 || option__B < 1) 
            menu(2)
            option__B = validation(2, option__B)
        end

        unless (option__B == 4)
            case(option__A)

            when 1
                puts "It's a TIE" if option__B == 1
                puts "PLAYER 2 wins" if option__B == 2
                puts "PLAYER 1 wins" if option__B == 3
            when 2
                puts "it's a TIE" if option__B == 2
                puts "PLAYER 2 wins" if option__B == 3
                puts "PLAYER 1 wins" if option__B == 1
            when 3
                puts "It's a TIE" if option__B == 3
                puts "PLAYER 2 wins" if option__B == 1
                puts "PLAYER 1 wins" if option__B == 2
            end
        end
    end
end