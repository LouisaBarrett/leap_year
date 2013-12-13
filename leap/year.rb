class Year

  def initialize(year)
    @year = year
  end

  def leap?
    potential_leap_year && potential_leap_century || leap_century
  end

  private

  def potential_leap_year
    @year % 4 == 0 
  end

  def potential_leap_century
    potential_leap_year && @year % 100 != 0
  end

  def leap_century
    potential_leap_century || @year % 400 == 0
  end

end
