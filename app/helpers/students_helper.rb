module StudentsHelper
  def gender_options
    [['male', 'm'],['female', 'f']]
  end

  def year_options(start_year, end_year)
    # [['2015','2015'], ['2016','2016'], ['2017','2017'], ['2018','2018']]
    years = []
    (start_year..end_year).each do |year|
      years << [year.to_s, year.to_s]
    end
  end
end