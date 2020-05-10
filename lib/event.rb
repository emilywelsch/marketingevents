class event
  attr_accessor :name, :url, :date, :time, :price, :host_organization, :description
  @@all = []

  def initialize(event_hash)
    event_hash.each do |key, value|
      self.send("#{key}=", value) if value.length > 0
    end
    @@all << self
  end

  def self.clear_all
    @@all = []
  end

  def add_attributes(event_details)
    event_details.each do |k, v|
      self.send(("#{k}="), v)
    end
  end

  def self.all
    @@all
  end
end
