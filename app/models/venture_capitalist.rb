class VentureCapitalist

    attr_accessor :name, :total_worth

    @@all = []

    def initialize(name, total_worth)
        @name = name
        @total_worth = total_worth
        self.class.all << self
    end

    def self.all
        @@all
    end

    def self.tres_commas_club
        self.all.select do |venture_capitalist|
            if venture_capitalist.total_worth > 1000000
                venture_capitalist
            end
        end
    end

end
