class Ability
  include CanCan::Ability

def initialize(user)
     user ||= User.new
        if user.role == "manager"
            can :manage, :all
        elsif user.role == "usuario"
            can :read, :all
        elsif user.role == "encargado"
            can :read, :all
        elsif user.role == "supervisor"
            can :update, :all
            can :show, :all
            can :read, :all
            can :destroy, :all
 end
 end
end
