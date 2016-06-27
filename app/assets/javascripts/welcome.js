$(document).ready(function(){
  var Type = Backbone.Model.extend({});
   
  /*var type= new Type();
  type.url = '/tutorials/2.json';
    
  type.fetch({
    success : function(){
            console.log(type.get("title"));
    }
  });
  */
  
  var Types = Backbone.Collection.extend({
      model : Type 
      //url   : '/types.json'
  });
  var types = new Types();

  types.url = "/types.json";
  
  types.fetch({
    success : function(){
      _.each(types.models, function(model){
        view = new TypeView({model : model})
        //$('ul#types').append(view.render().el);
        $('ul.types').append(view.render());
        //console.log(types);
      });
    }
  })
  
  
  var TypeView = Backbone.View.extend({
    //model: Type,
    tagName: "li",
    //template: '',
    
    /*initialize: function (){
      //_.bindAll(this, 'render');
      this.template = _.template($("#type").html());
    },*/
    render: function(){
      return $(this.el).text(this.model.get('name'));  

      //this.$el.html(this.template(this.model.attributes));
      //$(this.el).attr('value',
      //  this.model.get('id')).html(this.model.get('name'));
      //return this;
    }
 });
  
  var TypesView = Backbone.View.extend({
    //model: TypesCollection,

    initialize: function(){
      _.bindAll(this, 'addOne', 'addAll');
        this.collection.bind('reset', this.addAll)
    },
    addOne: function(type){
      $(this.el).append(
        new TypeView({ model : type}).render().el);
    },
    addAll: function(){
      this.collection.each(this.addOne);
    }
    /*render: function() {
      this.$el.html();
      
      for(var i = 0; i < this.model.length; i++) {
        var m_TypeView = new TypeView({model: this.model.at(i)});
        
        this.$el.append(m_typeView.$el);
        m_TypeView.render();
      
      }
      return this;
    },*/
  });
  //var types = new Types();
  //new TypesView({el: $("#type"), collection: types});
  //types.fetch({
    //}); 
});
