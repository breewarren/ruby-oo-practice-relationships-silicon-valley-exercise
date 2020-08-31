class Startup

    attr_accessor :name, :domain
    attr_reader :founder

    @@all = []
    
    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        self.class.all << self
    end

    def pivot(name, domain)
        @name = name 
        @domain = domain
    end 

    def self.all
        @@all
    end 

    def self.find_by_founder(founder_name)
        self.all.find {|startup| startup.founder == founder_name}
    end 

    def self.domain
        self.all.map {|startup| startup.domain}
    end 

end
