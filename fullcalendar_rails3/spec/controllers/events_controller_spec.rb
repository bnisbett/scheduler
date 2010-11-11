require 'spec_helper'

describe EventsController do
  
  describe "GET 'index'" do
    it "should be successful" do
      events = [mock(:event), mock(:event)]
      Event.should_receive(:where).with(["startDate >= :start AND endDate <= :end", {:start=>"1969-12-31 19:00:00", :end=>"1969-12-31 19:00:00"}]).and_return(events)
      get 'index'
      response.should render_template('events/index')
    end
  end
  
  describe "Authenticated examples" do
      before(:each) do
        activate_authlogic
        UserSession.create Factory.build(:valid_user)
      end
      
      describe "handling GET /events" do
        before(:each) do
          @event = mock(:event)
          Event.should_receive(:find).and_return(@event)
          #Event.stub!(:find).and_return([@event])
        end
        
        it "should be redirected" do
          get :edit, :id => "1"
          response.should be_redirect
        end

        it "should render edit template" do
          get :edit, :id => '1'
          response.should redirect_to(:action =>'index')
        end
        
        it "should render show template" do
          get :show, :id => '1'
          response.should render_template('show')
        end
      end
    end
end
  
  
=begin   
  describe 'GET edit' do
    before { login }
    it 'should render edit js view' do
      events = [mock(:event), mock(:event)]
      Event.should_receive(:all).and_return(events)
      get :edit, :format =>'js'
      response.should render_template('events/edit.js.erb')
    end
  end
    
 
  describe "edit format js" do
    it "should respond to javascript" do
      event = mock(:event)
      Event.should_receive(:find).and_return(event)
      get 'edit'
      #@event = mock(:event)
      #Event.should_receive(:find).and_return(@event)          
      #get :edit, :format => 'js'
      #response.should render_template('events/edit')

    end
  end
  
  describe "GET calendar list format json" do
    it "should show a list of events" do
      get :index, :format => 'json'
      response.should be_success
    end
  end
  
  describe "new format js" do
    it "should respond to javascript" do
      get :new, :format => 'js'
      response.should be_success
    end
  end
  describe "create format js" do
    it "should respond to javascript" do
      get :create, :format => 'js'
      response.should be_success
     # response.should render_template('events/create.js.erb')
    end
  end
  
  describe "update format js" do
    it "should respond to javascript" do
      get :update, :format => 'js'
      response.should be_success
      #response.should render_template('events/update.js.erb')
    end
  end
  
  describe "destroy format js" do
    it "should respond to javascript" do
      @event = mock(:event)
      Event.should_receive(:find).and_return(@event)
      get :destroy, :format => 'js'
      response.should be_success
      #response.should render_template('events/destroy.js.erb')
    end
  end
=end

