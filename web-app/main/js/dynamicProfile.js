      function RealGraphDrawer (target,data,count) {
        this.drawGraph = function(sensorValue){
          RGraph.Clear(document.getElementById(target));
          RGraph.ObjectRegistry.Clear();
          var line = new RGraph.Line(target, data)
              .Set('colors', ['green'])
              .Set('linewidth', 1)
              .Set('filled', true)
              .Set('fillstyle', 'rgba(128,255,128,0.5)')
              .Set('ymax', 300)
              .Set('numxticks', 5)
              .Set('labels', ['Now','10s','20s','30s','40s','50s','60s'])
              .Draw();
              //alert(target+":"+sensorValue);
          data = sensorValue.concat(data);
          if(count==0){
              for (var i = 0; i < sensorValue.length; i++) {
                  data.pop();
              }
          }else if(count>0){
              var len = data.length - count;
              if(len>0){
                  for (var i = 0; i < len; i++) {
                      data.pop();
                  }
              }
          }
        };

        this.realDrawGraph = function(sensorValue){
          RGraph.Clear(document.getElementById(target));
          RGraph.ObjectRegistry.Clear();
          var line = new RGraph.Line(target, sensorValue)
              .Set('colors', ['green'])
              .Set('linewidth', 1)
              .Set('filled', false)
              .Set('fillstyle', 'rgba(128,255,128,0.5)')
              .Set('ymax', 300)
              .Set('numxticks', 5)
              .Set('labels', ['Now','100ms','20ms','300ms','400ms','500ms','600ms','700ms','800ms','900ms','1000ms'])
              .Draw();
        };
      }

      function GraphDrawer (target,data) {
        var that = this;
        this.drawGraph = function(){
          RGraph.Clear(document.getElementById(target));
          RGraph.ObjectRegistry.Clear();
          var line = new RGraph.Line(target, data)
              .Set('colors', ['green'])
              .Set('linewidth', 1)
              .Set('filled', true)
              .Set('fillstyle', 'rgba(128,255,128,0.5)')
              .Set('ymax', 60)
              .Set('numxticks', 5)
              .Set('labels', ['Now','10s','20s','30s','40s','50s','60s'])
              .Draw();
          var r = RGraph.random(0,60);
          data = [r].concat(data);
          data.pop();

          if(typeof that.timer=="undefined" || that.timer==null)
          {
            that.timer = setInterval(that.drawGraph, 1000);
          }
          
          };
          this.stopDrawing = function(){
            clearInterval(that.timer);
            that.timer = null;
          };
        }

