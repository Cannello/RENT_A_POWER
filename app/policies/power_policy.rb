class PowerPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def show?
    true
  end

  def update?
    record.user_id == user.id
  end

  def your_powers?
    true
  end

  def destroy?
    record.user_id == user.id
  end
end
