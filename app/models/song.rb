class Song < ActiveRecord::Base

  # tim = Song.new({title: 'tim'})
  # tim.title

  # title, a string
  # Must not be blank
  validates :title, presence: true
  # Cannot be repeated by the same artist in the same year
  validates :title, uniqueness: { scope: :release_year }
  # released, a boolean describing whether the song was ever officially released.
  # Must be true or false
  validates :released, inclusion: { in: [true, false]}
  # release_year, an integer
  # Optional if released is false
  validates :release_year, :numericality => { less_than_or_equal_to: Date.today.year }, if: :released
  # Must not be blank if released is true
  # Must be less than or equal to the current year
  # artist_name, a string
  # Must not be blank
  validates :artist_name, presence: true
  # genre, a string

  # if !(Date.today - 18.years > self.dob)
  #   self.errors.add(:dob, 'must be older than 18')
end
