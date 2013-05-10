require 'spec_helper'

describe UsersController do
  let (:users) {
    UsersController.new
  }
  
  let (:user_1) {
    User.create(
      name: "Pedro",
      email: "pedro@generalassemb.ly",
      password: "Yo!"
    )
  }
  
  let (:user_2) {
    User.create(
      name: "Kim",
      email: "kim@generalassemb.ly",
      password: "Yo mama!"
    )
  }
  
  let (:user_3) {
    User.create(
      name: "George",
      email: "george@generalassemb.ly",
      password: "Say what?"
    )
  }
  
  describe ".index" do
    it "should set an array of users in @users" do
      users.index
      expect(users.instance_variable_get(:users)).to match_array [user_1, user_2, user_3]
    end
  end
end