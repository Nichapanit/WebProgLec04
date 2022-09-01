class MainController < ApplicationController
  def test
  	
  end
  def post
  	@s1 = params[:subject1]
    @s2 = params[:subject2]
    @s3 = params[:subject3]
    @sc1 = params[:score1]
    @sc2 = params[:score2]
    @sc3 = params[:score3]
    if @sc1.to_i >@sc2.to_i && @sc1 .to_i > @sc3.to_i 
      @highest = @s1 
    elsif @sc2.to_i  >@sc1.to_i  && @sc2.to_i  > @sc3.to_i 
      @highest = @s2
    else 
      @highest = @s3
    end
  @total = @sc1.to_i+@sc2.to_i+@sc3.to_i 
  end
end
