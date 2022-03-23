--- my first crow script ... nothing too fancy,

--in1: voltage source 1 (lfo or other)
--in2: voltage source 2 (lfo or other)
--out1: quantized voltage to oscillator
--out2: quantized voltage to oscillator


function init ()
      input[1]{ mode = 'stream'
      , time = 0.25
      , stream = function ()
                     v = (input[1].volts)
                     output[1].volts = (math.floor(v*12)/12)
                     output[1].scale({0,2,4,5,7,9})
                                 end
                }
      input[2] { mode = 'stream'
      , time = 0.5
      , stream = function ()
                      w = (input[2].volts-1)--- subtract by 2 or more to get lower notes
                      output[2].volts = (math.floor(w*12)/12)
                      output[2].scale({0,2,4,7})
                    end
                  }
  end
