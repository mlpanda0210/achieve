class Blog < ActiveRecord::Base
    validates :title, presence: true
    belongs_to :user
    has_many :comments , dependent: :destroy

    scope :index_all, -> {select(:id, :title, :content, :user_id, :created_at).order(created_at: :desc) }

end
