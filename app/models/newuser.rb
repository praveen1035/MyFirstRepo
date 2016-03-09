class Newuser < ActiveRecord::Base
  def self.authenticate(logml, logpd)
    user = Newuser.find_by_sql(["select sinm from newusers where sigml=? and sipd=?",logml,logpd]) 
    if user 
      user
    else
      nil
    end
  end
end
