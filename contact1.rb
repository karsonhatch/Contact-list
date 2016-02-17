contacts_input = []
while(true)
	puts """
	--- Contact List Menu ---
	1) Add contact
	2) List Contacts
	4) Delete Contact 
	5) Edit Contact 
	6) Exit Program"""
	puts "Select only numbers given"
	user_input = gets.strip
	if user_input == '1' 
		puts "Enter Contact Information"
		contact = gets 
		contacts_input << contact
	elsif user_input == '2'
		puts "List of Contacts:"
		puts "#{contacts_input.join('')}"
	elsif user_input == '6'
		exit(0)
	elsif user_input == '4'
		puts "Enter in the Contact you would like to delete:"
			selection = gets.strip
			contacts_input.delete(selection)
			puts contacts_input
	elsif user_input == '5'
		puts "Which contact would you like to edit:"
		selection = gets.strip
		contacts_input.each do |element|
				if element.downcase == selection.downcase
					puts "Enter new contact info"
					element.replace(gets.strip)
				end
	end
	else 
		puts "Invalid User Input, Please choose from Options Given."
	end
end

puts "#{contacts_input}"