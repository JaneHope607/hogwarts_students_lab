require_relative('../db/sql_runner')

class House

    attr_reader :first_name, :second_name, :house, :age, :id
 
    def initialize(options)
        @id = options['id'].to_i if options['id']
        @name = options['name']
        @url = options['url']
    end

    def save()
        sql = "INSERT INTO houses
        (name, url) 
        VALUES ($1, $2)
        RETURNING id"
        values = [@name, @url]
        result = SqlRunner.run(sql, values).first
        @id = result['id'].to_i
    end

    def self.delete_all()
        sql = "DELETE FROM houses"
        SqlRunner.run(sql)
    end

end
