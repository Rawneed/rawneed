class HomeController < ApplicationController
  require 'will_paginate/array'


  def index
      # @entries = Entry.paginate(:page => params[:page], :order => 'created_at DESC')
      @entries = Entry.all
  end
  
  def about
  end
  
  def contact
  end

end 
