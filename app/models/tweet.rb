class Tweet < ActiveRecord::Base

  before_validation :strip_score
  validates_presence_of :tid, :sender, :body, :score

  private
  def strip_score
    if self.body =~ /[\+\-]\d+\.\d+/
      # Decimal number
      self.score = self.body[/[\+\-]\d+\.\d+/].to_f
      self.body.gsub!(/[\+\-]\d+\.\d+/,'')
    elsif self.body =~ /[\+\-]\d+/
      # Integer number
      self.score = self.body[/[\+\-]\d+/].to_i
      self.body.gsub!(/[\+\-]\d+/,'')
    end
    unless self.score.nil?
      self.score = 1 if self.score<1
      self.score = 10 if self.score>10
    end
    self.body.strip!
  end
end
