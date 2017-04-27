# websocketd_examples
A few examples of using websocketd to visualize output from a command line utility

## ADC readings charting example
To try out the adc example:

    cd adc
    
First, if you want to see the output of the script by running it directly:
    
    python fake_read_adc.py
    
Then if you want to see the output plotted nicely in the browser using [smoothie charts](http://smoothiecharts.org):
    
    ./start_server.sh

Then point your browser at [http://localhost:8080](http://localhost:8080)

## Search algorithm coordinate plotting example
To try out the search examples:

    cd coordinates

  To try out the box search:
    
    ./start_server_box.sh
    
  And point your browser at [http://localhost:8080](http://localhost:8080)
  To try out the sprial search:
  
    ./start_server_spiral.sh
 
  And again point your browser at [http://localhost:8080](http://localhost:8080)
  
