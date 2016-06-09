$(document).ready(function(){
  Screencast = Backbone.Model.extend({});

  var screencast = new Screencast();
  screencast.url = '/tutorials/2.json';
    
  screencast.fetch({
    success : function(){
            console.log(screencast.get("title"));
    }
  });
  
  
  var Screencasts= Backbone.Collection.extend({
      model : Screencast 
  });
  var screencasts= new Screencasts();

  screencasts.url = "/tutorials.json";
  
  screencasts.fetch({
    success : function(){
      _.each(screencasts.models, function(model){
        view = new ScreencastView({model : model})
        //$('ul#tutorials').append(view.render().el);
        $('ul.screencasts').append(view.render());
        //console.log(tutorials);
      });
    }
  });
  
  
  var ScreencastView = Backbone.View.extend({
    tagName : "li",
    render : function(){
      return $(this.el).text(this.model.get('title'));  
    }
 }); 
});
