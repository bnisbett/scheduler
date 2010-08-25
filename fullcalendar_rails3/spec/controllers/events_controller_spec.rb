require 'spec_helper'

describe EventsController do
  
  describe "GET 'index'" do
    it "should be successful" do
      events = [mock(:event), mock(:event)]
      Event.should_receive(:all).and_return(events)
      get 'index'
      response.should render_template('events/index')
    end
  end
  
  describe "edit format js" do
    it "should respond to javascript" do
      event = mock(:event)
      Event.should_receive(:find).and_return(event)
      #@event = mock(:event)
      #Event.should_receive(:find).and_return(@event)          
      get :edit, :format => 'js'
      #assigns[:event].should == event
      #response.should be_success
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

end
