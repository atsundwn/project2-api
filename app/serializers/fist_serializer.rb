class FistSerializer < ActiveModel::Serializer
  attributes :id, :value, :profile_id, :question_id, :topic

  def topic
    object.question.topic
  end
end
