class StarSystem
  attr_reader :name, :planets

  def initialize(name, planets)
    @name = name
    @planets = planets
  end

  def planet_names
    @planets.map {|planet| planet.name}
  end

  def get_planet_by_name(planet_name)
    @planets.find {|planet| planet.name == planet_name}
  end


  def get_largest_planet
    array = @planets.map {|planet| planet.diameter}
    largest_diameter = array.sort[-1]
    @planets.find {|planet| planet.diameter == largest_diameter}
  end

  def get_smallest_planet
    array = @planets.map {|planet| planet.diameter}
    smallest_diameter = array.sort[0]
    @planets.find {|planet| planet.diameter == smallest_diameter}
  end

    def get_planets_with_no_moons
      @planets.find_all {|planets| planets.number_of_moons == 0}
    end

    def get_planets_with_more_moons(moons)
      array = @planets.find_all {|planets| planets.number_of_moons > moons}
      array.map{|planets| planets.name}
    end

    def get_number_of_planets_closer_than(distance)
      array = @planets.find_all {|planet| planet.distance_from_sun < distance}
      return array.count
    end

    def get_total_number_of_moons
      @planets.reduce(0) {|total_moons, planet| total_moons + planet.number_of_moons}
    end

    def get_planet_names_sorted_by_increasing_distance_from_sun
      array = @planets.sort_by {|planet| planet.distance_from_sun}
      array.map {|planet| planet.name}
    end


    def get_planet_names_sorted_by_size_decreasing
      array = @planets.sort_by {|planet| planet.diameter}
      array.map {|planet| planet.name}.reverse
      array.map {|planet| planet.name}.reverse
    end

end
