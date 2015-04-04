class Student < ActiveRecord::Base

  after_create :add_to_committee

  belongs_to :committee

  has_many :advising_appointments
  has_many :addresses
  has_many :colleges
  has_many :enrollments

  has_many :courses, through: :enrollments

  accepts_nested_attributes_for :addresses
  accepts_nested_attributes_for :enrollments, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :courses
  accepts_nested_attributes_for :colleges, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :advising_appointments, allow_destroy: true, reject_if: :any_blank

  validates_presence_of :first_name, :last_name, :ssn, :date_of_birth, :place_of_birth, :cell_phone, :email,
                        :requested_admission_year, :mis_program_type

  def full_name
    "#{first_name} #{last_name}"
  end

  def next
    self.class.where("id > ?", id).first
  end

  def previous
    self.class.where("id < ?", id).last
  end

  private

  def any_blank(attributed)
    attributed.each do |item|
      return true if item[1].blank?
    end

    false
  end

  def add_to_committee
    self.committee = next_committee_assignment
    self.save
  end

  def next_committee_assignment
    student = Student.last
    student = student.previous

    if student && student.committee_id
      Committee.find(student.committee_id).next
    else
      Committee.first
    end
  end
end
