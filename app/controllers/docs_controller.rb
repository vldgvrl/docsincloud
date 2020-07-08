class DocsController < ApplicationController
    before_action :authenticate_user!

    def index
        @docs = current_user.docs.all
    end

    def new
        @doc = current_user.docs.new
    end

    def create
        @doc = current_user.docs.new(doc_params)

        if @doc.save
            redirect_to docs_path, notice: "Successfully uploaded"
        else
            render "new"
        end

    end

    def attachment_name
        Doc.name
    end


    def destroy
        @doc = current_user.docs.find(params[:id])
        @doc.destroy
        redirect_to docs_path, notice: "Successfully deleted"
    end

    private 
        def doc_params
        params.require(:doc).permit(:name, :attachment)
        end

end
