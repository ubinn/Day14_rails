class Daum < ApplicationRecord
    has_many :memberships
    has_many :users, through: :memberships
    has_many :posts
    
    
    # def self.메소드명 -> 클래스 메소드
    #    로직안에서 self를 쓸수없음
    # end
    
    # def 메소드명 -> 인스턴스 메소드
    #    로직안에서 self를 쓸수있다.
    # end
    
    def is_member?(user)
       self.users.include?(user)
    end
end
