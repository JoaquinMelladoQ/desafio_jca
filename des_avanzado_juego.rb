#Método Menú
def menu(player)
    puts "Player #{player} it's your turn:
        Enter [ 1 ] for: Stone
        Enter [ 2 ] for: Paper
        Enter [ 3 ] for: Scissors
        Enter [ 4 ] for: Exit"
end

def validator(player, option)
    puts "Invalid option, choose again"
    menu(player)

    option = gets.chomp.to_i
    return "#{option}"
end

menu(1)
option_1 = gets.chomp.to_i

unless (option_1 == 4 )
    while (option_1 > 4 || option_1 < 1) do
        menu(1)
        option_1 = validator(1, option_1)
    end
    unless (option_1 == 4
        option_2 = gets.chomp.to_i

        while (option_2 > 4 || option_2 < 1) do
            option_2 = validator(2, option_2)
        end

        unless (option_2 == 4 )
            case(option_1)
            when 1
                puts "It's a TIE" if option_2 == 1
                puts "PLAYER 2 wins" if option_2 == 2
                puts "PLAYER 1 wins" if option_2 == 3
            when 2
                puts "it's a TIE" if option_2 == 2
                puts "PLAYER 2 wins" if option_2 == 3
                puts "PLAYER 1 wins" if option_2 == 1
            when 3
                puts "It's a TIE" if option_2 == 3
                puts "PLAYER 2 wins" if option_2 == 1
                puts "PLAYER 1 wins" if option_2 == 2
            end
        end
    end
end