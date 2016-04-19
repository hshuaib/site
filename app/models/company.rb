class Company < ActiveRecord::Base
  
  def self.search(search)
  		if search
  			where('companyName LIKE ? or jobTitle LIKE ? or nationality LIKE ? or gender LIKE ? 
  				or age LIKE ? or disability LIKE ? or education LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  		else
  			all
  		end
  	end
    
    
    before_save do
      self.disability.gsub!(/[\[\]\"]/, "") if attribute_present?("disability")
    end
  
  
  belongs_to :country
  
  
  GENDER_LISTComp = ["لا يهم", "أنثى", "ذكر"]
  EDUCATION_LIST = ["لا يهم","إبتدائي","إعدادي","ثانوي","جامعي"]
  
  
  def self.matching(iddd)
    where("company.id LIKE ?", "%#{iddd}" )
  end
  
  
end
