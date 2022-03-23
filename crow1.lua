--- my first crow script

--in1: voltage
--in2: clock
--out1:

function init ()
      input[1]{ mode = 'stream'
      , time = 0.25
      , stream = function ()
                     v = (input[1].volts)
                     print(v)

                     output[1].volts = (math.floor(v*12)/12)
                     --print("value v")
                     --print(v)
                     output[1].scale({0,2,4,5,7,9,11})
                                 end
                }
      input[2] { mode = 'stream'
      , time = 0.5
      , stream = function ()
                      w = (input[2].volts-1)
                      output[2].volts = (math.floor(w*12)/12)
                      --print("value w")
                      --print(w)
                      output[2].scale({0,2,4,7})
                    end
                  }
  end




--input[1].stream = function()
            --  v = (input[1].volts)
              --output[1].volts = (math.floor(v*12)/12)/2
              --print(v)
              --output[1].scale({0,2,4,5,7,9,11})

          --end
