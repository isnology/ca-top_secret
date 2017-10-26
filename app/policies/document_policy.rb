class DocumentPolicy < ApplicationPolicy
  def show?
    user.company == record.company  # returns true or false
  end
end