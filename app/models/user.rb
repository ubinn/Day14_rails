class User < ApplicationRecord
    has_secure_password
    validates :user_name, uniqueness: true,
                          presence: true
    validates :password_digest, presence: true # 빈값을 지원하지 않는다. 
    # user_name 컬럼에 unique속성부여
    # 유효성검사 속성을 여러개 붙여쓰기 가능
    
    has_many :memberships
    has_many :daums, through: :memberships
    has_many :posts
end
