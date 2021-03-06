class BillsController < ApplicationController

  layout 'sell',:only=>:show

  # GET /bills
  # GET /bills.json
  def index
    @bills = Bill.all

    respond_to do |format|
      format.html # index.html.erb
      #format.json { render :json => @bills }
    end
  end

  # GET /bills/1
  # GET /bills/1.json
  def show
    @categories=Category.all
    @bill = Bill.find(params[:id])
    @products=Product.all
    
    respond_to do |format|
      format.html
     # format.js { head :no_content }
     end    
  end

  # GET /bills/new
  # GET /bills/new.json
  
  
  def new
    @table=Table.find(params[:id])
    @categories=Category.all
   
    @bill=Bill.create
    @bill.table=@table
    #@bill = Bill.new
    @bill.save
    
    redirect_to @bill
    #respond_to do |format|
    #  format.html # new.html.erb
    #  format.json { render :json => @bill }
    #end
  end

  # GET /bills/1/edit
  def edit
     @categories=Category.all
    @bill = Bill.find(params[:id])
  end

  # POST /bills
  # POST /bills.json
  def create
    
    @bill = Bill.params([:bill])
    #@bill.table_id=params[:id]
    puts '..........................'
    respond_to do |format|
      if @bill.save
        format.html { redirect_to @bill, :notice => 'Bill was successfully created.' }
        format.json { render :json => @bill, :status => :created, :location => @bill }
      else
        format.html { render :action => "new" }
        format.json { render :json => @bill.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bills/1
  # PUT /bills/1.json
  def update
    @bill = Bill.find(params[:id])

    respond_to do |format|
      if @bill.update_attributes(params[:bill])
        format.html { redirect_to @bill, :notice => 'Creada la nueva cuenta' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @bill.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bills/1
  # DELETE /bills/1.json
  def destroy
    @bill = Bill.find(params[:id])
    @bill.destroy

    respond_to do |format|
      format.html { redirect_to bills_url }
      format.json { head :no_content }
    end
  end
end
