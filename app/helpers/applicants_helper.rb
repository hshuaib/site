module ApplicantsHelper
  def checkeda(area)
    @applicant.disability.nil? ? false : @applicant.disability.match(area)
  end
end
