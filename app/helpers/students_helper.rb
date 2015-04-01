module StudentsHelper
  def gender_options
    %w(male female)
  end

  def year_options(start_year, end_year)
    years = []
    (start_year..end_year).each do |year|
      years << [year.to_s, year.to_s]
    end
  end

  def address_types
    %w(current previous permanent)
  end

  def application_statuses
    %w(pending accepted declined)
  end

  def gender

  end
end