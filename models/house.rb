require_relative('../db/sql_runner')

class House

    attr_reader :first_name, :second_name, :house, :age, :id
 
    def initialize(options)
        @id = options['id'].to_i if options['id']
        @name = options['name']
        @url = options['url']
    end

end
