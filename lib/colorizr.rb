  class String


# Color codes hash
#
   @@color_codes=
    {
        :black   => 30,
        :red     => 31,
        :green   => 32,
        :yellow  => 33,
        :blue    => 34,
        :pink => 95,
        :light_blue=>94,
        :white   => 97,
        :light_gray => 37
    }

  def self.colors

    @@color_codes.keys

  end

  def self.sample_colors

    puts "This is black".black
    puts "This is red".red
    puts "This is green".green
    puts "This is yellow".yellow
    puts "This is blue".blue
    puts "This is white".white
    puts "This is pink".pink
    puts "This is light_gray".light_gray
    puts "This is light_blue".light_blue

  end



  def self.create_colors
    @@color_codes.each do |color,code|
      self.send(:define_method, "#{color}") do
       puts "\e[#{code}m#{self}\e[0m"
      end
    end
  end


p String.colors
String.create_colors
String.sample_colors


end
