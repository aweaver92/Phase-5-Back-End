class UsersController < ApplicationController
    def update
      # Find the user record to update
      user = User.find(params[:id])

      # Update the user's username
      if user.update(username: params[:username])
        # Redirect to the usernames page with a success message
        flash[:success] = "Username updated successfully"
        redirect_to usernames_path
      else
        # Redirect to the usernames page with an error message
        flash[:error] = "There was an error updating your username"
        redirect_to usernames_path
      end
    end

    def create
      # Create a new user with the provided username
      user = User.new(username: params[:username])

      # Save the user and redirect to the usernames page with a success or error message
      if user.save
        flash[:success] = "Username created successfully"
        redirect_to usernames_path
      else
        flash[:error] = "There was an error creating your username"
        redirect_to usernames_path
      end
    end
  end
