class Solvent 

  def self.expire url
    new(url).expire
  end

  attr_accessor :url, :status

  def initialize url
    self.url = url
  end

  def expire
    e = Typhoeus::Easy.new
    e.url = url
    e.method = :purge
    self.status = e.perform

    self.status == 200
  end

end
