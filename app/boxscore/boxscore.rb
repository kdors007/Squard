class Boxscore

    def initialize
        @nfl_box = HTTParty.get("http://www.espn.com/nfl/scoreboard")
        @doc = Nokogiri::HTML(@nfl_box).content
        @id = []
        @uniq_id = []

        @doc.split("gameId=").each do |x|
          @id << x[0..8]
        end
        @id.uniq!

        @id.each do |x|
          if x.scan(/\D/).empty? == true
            @uniq_id << x
          end
        end

        @example = HTTParty.get("http://www.espn.com/nba/boxscore?gameId=400975063")
        @parse = Nokogiri::HTML(@example)
        # @uniq_id.each do
    end

    def say_hey
        @example
    end 

end