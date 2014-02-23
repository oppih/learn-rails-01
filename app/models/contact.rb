class Contact < ActiveRecord::Base
  has_no_table
  
  colum :name, :string
  colum :email, :string
  colun :content, :string
  
  validates_presence_of :name
  validates_presence_of :email
  validates_presence_of :content
  validates_format_of :email,
    :with => /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i
  validates_length_of :content, :maximun => 500
    
end