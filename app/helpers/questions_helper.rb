module QuestionsHelper

  def question_header(action)
    case action
    when 'edit'
      "Edit #{ @test.title } Question"
    when 'create'
      "Create New #{ @test.title } Question"
    end

  end
end
