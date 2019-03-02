{
  "version": "1.2",
  "package": {
    "name": "",
    "version": "",
    "description": "",
    "author": "",
    "image": ""
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "18a7d8e6-78d4-4f1f-bfcb-b4b2816dde6a",
          "type": "basic.output",
          "data": {
            "name": "led",
            "pins": [
              {
                "index": "0",
                "name": "LED0",
                "value": "95"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1080,
            "y": 328
          }
        },
        {
          "id": "1016b6de-1130-4fc3-bbdd-5b057d5d9993",
          "type": "basic.input",
          "data": {
            "name": "switch",
            "pins": [
              {
                "index": "0",
                "name": "SW1",
                "value": "10"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 192,
            "y": 440
          }
        },
        {
          "id": "19b5d4f1-3164-44e4-802d-436230808fd0",
          "type": "basic.code",
          "data": {
            "code": "/*\n\nThis circuit change the value of the button\n\nA circuit can be:\n\n*Sequential -> The outputs depends of the inputs and previous states\n\n*/\n\nreg state=0;\n\nalways @(posedge input_bit) begin\n\n    if (state==0) begin\n        state<=1;\n    end\n    else begin\n        state<=0;\n    end\n\nend\n\n\n//We assign the output to the register state\nassign output_bit=state;\n",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
                },
                {
                  "name": "input_bit"
                }
              ],
              "out": [
                {
                  "name": "output_bit"
                }
              ]
            }
          },
          "position": {
            "x": 392,
            "y": 136
          },
          "size": {
            "width": 568,
            "height": 448
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "19b5d4f1-3164-44e4-802d-436230808fd0",
            "port": "output_bit"
          },
          "target": {
            "block": "18a7d8e6-78d4-4f1f-bfcb-b4b2816dde6a",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "1016b6de-1130-4fc3-bbdd-5b057d5d9993",
            "port": "out"
          },
          "target": {
            "block": "19b5d4f1-3164-44e4-802d-436230808fd0",
            "port": "input_bit"
          }
        }
      ]
    }
  },
  "dependencies": {}
}