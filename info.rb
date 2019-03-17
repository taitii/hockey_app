#rake db:create palaiž datubāzi
#rake db:migrate nomigrē izveidotos teiblus

=begin

    ratings = Hash.new {0} //new hash, which has value of 0

    books.values.each { |zero| //gets books values from the books hash and get sorted by the previous ratings. The same nr as in Hash.new {0}
    ratings[zero] += 1 //counts the ratings and if theres 2 same ratings it increments
    }
    puts ratings //displays result

=end

# hash.keys / hash.values - can acquire keys or values
# codeblock / 5.times {puts "RUBY!"} - codeblock is everything between curly bracers

=begin 

    5.times { |number| // .times method sends value to |number| variable.
    puts number
    }

=end

=begin
#creating your own method

    def tame( number_of_shrews )
    number_of_shrews.times {
        puts "Tamed a shrew"
    }
    end
    tame 5 // puts 'Tamed a shrew' string 5 times.

=end


# class Blurb //Class names allways start with the Capital case latter
#   attr_accessor :content, :time, :mood
# end

=begin
    1) Models for handling data and business logic
    2) Controllers for handling the user interface and application
    3) Views for handling graphical user interface objects and presentation

    This separation results in user requests being processed as follows:

    1) The browser (on the client) sends a request for a page to the controller on the server.
    2) The controller retrieves the data it needs from the model in order to respond to the request.
    3) The controller gives the retrieved data to the view.
    4) The view is rendered and sent back to the client for the browser to display.
=end

# rails g model Team title:string code:string - title as a name is a string and the code as well. Generates a new model.
# rails g migration create_players - migrates create_players
# rake db:migrate - iepusho datubāzē jaunos laukus
# rake db:rollback - rollbacko atpakaļ uz pēdējo update datubāzei
# rake is specific type code block.

# Team.create({ title: "Sweden", code: "SWE" }) - class makes, basically adds key values, same as team.title = "Sweden" etc.
# Team.find_by({ code: "SWE" }) - Finds specific table with code"SWE"
# Team.where({ code: "SWE" })  - FInds all table with code "SWE"


######### CONTROLLERS ##########

# get "/teams", to: "teams#index" - Routing from to