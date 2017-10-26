class DocumentPolicy < ApplicationPolicy
  def show?
    user.company == record.company  # returns true or false
  end
  
  def update?
    user.company == record.company
  end
end