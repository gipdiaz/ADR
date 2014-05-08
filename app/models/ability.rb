class Ability
 
  include CanCan::Ability
 
  def initialize(user)
    user ||= User.new # guest user
    unless user.nil?
	    if user.role? :admin
	      can :manage, :all
	      #can :update, User do |user2|
	      #  user2.try(:id) == user.id
	      #end    
	    elsif user.role? :user
	      can :manage, [Persona]
	    end    
    end    
    can :create, [Persona]
  end
end