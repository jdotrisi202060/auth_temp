class BlacksController < ApplicationController
  # GET /blacks
  # GET /blacks.xml
  def index
    @blacks = Black.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @blacks }
    end
  end

  # GET /blacks/1
  # GET /blacks/1.xml
  def show
    @black = Black.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @black }
    end
  end

  # GET /blacks/new
  # GET /blacks/new.xml
  def new
    @black = Black.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @black }
    end
  end

  # GET /blacks/1/edit
  def edit
    @black = Black.find(params[:id])
  end

  # POST /blacks
  # POST /blacks.xml
  def create
    @black = Black.new(params[:black])
    if current_user
      @black.user_id = current_user.id
    else
      @black.user_id = 0
    end

    respond_to do |format|
      if @black.save
        flash[:notice] = 'Black was successfully created.'
        format.html { redirect_to(@black) }
        format.xml  { render :xml => @black, :status => :created, :location => @black }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @black.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /blacks/1
  # PUT /blacks/1.xml
  def update
    @black = Black.find(params[:id])

    respond_to do |format|
      if @black.update_attributes(params[:black])
        flash[:notice] = 'Black was successfully updated.'
        format.html { redirect_to(@black) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @black.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /blacks/1
  # DELETE /blacks/1.xml
  def destroy
    @black = Black.find(params[:id])
    @black.destroy

    respond_to do |format|
      format.html { redirect_to(blacks_url) }
      format.xml  { head :ok }
    end
  end
end
