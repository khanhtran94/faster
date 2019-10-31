module Api
  module V1
    class QuestionsController < ApiV1Controller
      def define_entity
        @entity_model = Question
      end

      def destroy
        Question.destroy(params[:id])
      end

      def update
        puts __method__
        question = Question.find(params[:id])
        question.update_attributes(question_params)
        render json: question
      end

      protected

      def question_params
        params.require(:question).permit(:name,:content, :id, :user_id, :status_id, :limit)
      end

      def entity_params
        params.require(:question).permit(:name, :status_id, :email, :content, :status_id)
      end

      def search_params
        params.permit(:id, :status_id, :email, :name, :content, :status_id)
      end

      def advanced_search_params
        params.permit(:name, :status_id, :email, :content, :status_id)
      end
    end
  end
end