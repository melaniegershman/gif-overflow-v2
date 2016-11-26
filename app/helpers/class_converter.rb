helpers do
  def convert_to_class_name(table_name)
    table_name.slice(0..-2).capitalize
  end
end
