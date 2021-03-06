class Api::ClassroomsController < ApplicationController
   def index
      render json: Classroom.all
   end
#
   def show
      render json: Classroom.find_by(id: params[:id])
   end

   def create
      render json: Classroom.create!(teacher_id: params[:classroom][:teacher_id], classroom_id: params[:classroom][:classroom_id], name: params[:classroom][:name])
   end

   def update
      @classroom = Classroom.find(params[:id])
      @classroom.update params.require(:classroom).permit(:name)
      @classroom.save
   end
end
