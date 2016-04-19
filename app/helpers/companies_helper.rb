module CompaniesHelper
  def checked(area)
    @company.disability.nil? ? false : @company.disability.match(area)
  end
end
