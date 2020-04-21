require 'tty-prompt'
require_relative "view"
include View
# require_relative "./classes/Player"

# this module will handle UX
module Services


	# get players name
    # get players chosen exp level to start out at
    # as of 200421 - the only difference is that the play starts out at a higher level of EXP, 
    #               - would like to be able to make the game harder for player with higher level in future
	def get_player_info(exp_levels)
        prompt = TTY::Prompt.new
        puts "Before we start, what is your coder name?"
        print "=> "; user_name = gets.strip.capitalize
        puts
		user_exp = prompt.select("What level of coder do you wish to start out as?", exp_levels, cycle: true)

        puts "Hi! #{user_name}. You would like to start out as experience level '#{exp_levels.key(user_exp)}'"
        puts

        puts  "Is this correct? y/n"
		print "=> "; resp = gets.strip
		
		if resp == "y"
			player_info = {name: user_name, level: exp_levels.key(user_exp), exp: user_exp}
		else
			get_player_info()
		end

		return player_info
    end



	# setting a predefined amount of time to wait
	# instead of writing sleep(2) everywhere and having to change it
	def wait(time)
		index = time
		sleep_time = [(0.1), (0.4), (1.0), (1.5), (3.0)]
		sleep(sleep_time[index])
	end


	# when the player wants to give up
	# display a give up message, wait some time to let it sink in
	# then end the game
	def give_up()
		display_outro('give up')
		wait(2)
		game_over()
	end


	# when the user wants to end the game
	# stops the loop and displays a message to player
	def game_over()
		display_outro('game over')
		wait(2)
		return false
	end



	def player_compared_themselves()
	end


	# offering players if they want to work on their level/grind before their next challenge
	# they have list of options from sub_classes
	def follow_up_after_challenge(follow_up_challenges)
        prompt = TTY::Prompt.new
		puts "Great work on the challenge"
		choice = prompt.select("What do you want to do now?", follow_up_challenges, cycle: true)
	end



	def press_any_key_to_continue()
		# getting user to continue to next challenge or quit out the app
		puts "Press any key to continue... or [q]uit"
		resp = gets.strip.downcase[0]
		return 'no' if resp == "q"
		system "clear"
		display_header_mini()
	end



	def is_player_experienced_enough_yet(player, game)
		master = game.exp_levels["Master"]
		advanced = game.exp_levels["Advanced"]
		beginner = game.exp_levels["Beginner"]
		noob = game.exp_levels["Noob"]


		if player.level == "Master"
			puts "What are you doing here at a bootcamp, you've already mastered all the languages."
			play_again = does_player_want_to_continue()
			return 'no' if play_again == false
		end

		if player.exp > game.exp_level_for_job && player.exp < game.exp_level_for_job_offer
			player.show_player_level()
			puts "Well done you have finished the game"
			puts "You are ready for prime time and can start applying for jobs"
			play_again = does_player_want_to_continue()
			return 'no' if play_again == false
		
		elsif player.exp > game.exp_level_for_job_offer
			puts "Woah you're awesome, you've got a job offer already!"
			puts "Well done you have finished the game"
			play_again = does_player_want_to_continue()
			return 'no' if play_again == false
		else
			play_again = true
		end
		return play_again
	end



	def does_player_want_to_continue()
		puts "Do you want to play again? y/n"
		print "=> "; play_again = gets.strip.downcase[0]
		
		if play_again == "y"
			# player wants to play again
			return true 
		end

		# player does NOT want to play again
		return false
	end

	
end 