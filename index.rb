require_relative "./Aux/functions"
include Functions

msg('##### SCHEDULE #####')

loop do
    msg("1 - SEE ALL CONTACTS\n2 - ADD CONTACT\n3 - EDIT CONTACT\n4 - DELETE CONTACT\n0 - EXIT")
    
    print "Key: "
    get = gets.chomp.to_s

    case get
    when "0"
        msg("You leave.")
        break

    when "1"
        begin
            contacts = File.read("contacts.txt").split('|')
            
            if contacts.empty?
                msg("No contacts found.")
                return false
            end

            msg(contacts)
        rescue
            msg("No contacts found.")
        end

    when "2"
        print "Name: "
        name = gets.chomp
        print "Email: "
        email = gets.chomp
        print "Number: "
        number = gets.chomp
        print "Annotation: "
        annotation = gets.chomp

        contact = {name: name, email: email, number: number, annotation: annotation}

        contact_save = "NAME: #{contact[:name]} - EMAIL: #{contact[:email]} - NUMBER: #{contact[:number]} - ANNOTATION: #{contact[:annotation]} | "
        
        File.write("contacts.txt", contact_save, mode: "a")

    when "3"
        msg("Soon...")

    when "4"
        msg("Soon...")

        # contacts = File.read("contacts.txt").split('|')
        
        # msg(contacts)

    else
        msg("Invalid option.")

    end
end
