class Author < ActiveRecord::Base
  has_many :reference_authors, dependent: :destroy
  has_many :reference_editors, dependent: :destroy
  has_many :references, through: :reference_authors
  has_many :references, through: :reference_editors, as: :other_references

  validates :name, presence: :true

  def to_s
  	name
  end

end
