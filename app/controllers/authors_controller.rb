class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
    @author.name = flash[:author_name]
    @author.email = flash[:author_email]
  end

  def create
    @author = Author.create(author_params)
      if @author.save
        redirect_to author_path(@author)
      else
        @author = Author.create(author_params)
        flash[:errors] = @author.errors.full_messages
        flash[:author_name] = @author.name
        flash[:author_email] = @author.email
        render :new
      end
  end

  private

  def author_params
    params.permit(:email, :name)
  end
end
