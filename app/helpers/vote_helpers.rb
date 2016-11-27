helpers do
  def convert_to_class_name(table_name)
    table_name.slice(0..-2).capitalize
  end

  def convert_to_table_name(class_name)
    "#{class_name.downcase}s"
  end

  def find_voteable(class_name, id)
    case class_name
    when "Question"
      Question.find_by_id(id)
    when "Answer"
      Answer.find_by_id(id)
    when "Comment"
      Comment.find_by_id(id)
    end
  end
end
