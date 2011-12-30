class Links < ActiveRecord::Base
 after_create:complete 
 def complete
    o =  [('a'..'z'),('A'..'Z')].map{|i| i.to_a}.flatten
  	string  =  (0..10).map{ o[rand(o.length)]  }.join;
  	self.shorten=string
  	self.save
  end
end
