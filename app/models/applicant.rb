class Applicant < ActiveRecord::Base
  
	def self.search(search)
		if search
			where('name LIKE ? or nationality LIKE ? or dob LIKE ? or gender LIKE ? or disability LIKE ? 
				or status LIKE ? or mobileNo LIKE ? or education LIKE ? or currentJob LIKE ?', "%#{search}%","%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
		else
			all
		end
	end
  
  belongs_to :country

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  has_attached_file :cv, styles: { medium: "300x300>", thumb: "100x100>" }
  has_attached_file :membership, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image,:cv, :membership,  content_type: /\Aimage\/.*\Z/
  
  

  validates :name, :disability,  presence: true
  
  
  def self.getage(dob)
    now = Time.now.utc.to_date
    now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
  end
  
  before_save do
    self.disability.gsub!(/[\[\]\"]/, "") if attribute_present?("disability")
  end


NATIONALITY_LIST = ["Qatari", "nonQatari"]

GENDER_LIST = ["ذكر", "أنثى"]

STATUS_LIST = ["أعزب", "متزوج", "مطلق"]

EDUCATION_LIST = ["لا يوجد","إبتدائي","إعدادي","ثانوي","جامعي"]

#def validate!
#	errors.add(:name, "cannot be nil") if name.nil?
#end

end
