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
          "id": "228be4b1-a243-4cd7-9489-1c00b1d72eec",
          "type": "basic.output",
          "data": {
            "name": "led",
            "range": "[7:0]",
            "pins": [
              {
                "index": "7",
                "name": "LED7",
                "value": "104"
              },
              {
                "index": "6",
                "name": "LED6",
                "value": "102"
              },
              {
                "index": "5",
                "name": "LED5",
                "value": "101"
              },
              {
                "index": "4",
                "name": "LED4",
                "value": "99"
              },
              {
                "index": "3",
                "name": "LED3",
                "value": "98"
              },
              {
                "index": "2",
                "name": "LED2",
                "value": "97"
              },
              {
                "index": "1",
                "name": "LED1",
                "value": "96"
              },
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
            "y": 216
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
            "x": 208,
            "y": 328
          }
        },
        {
          "id": "19b5d4f1-3164-44e4-802d-436230808fd0",
          "type": "basic.code",
          "data": {
            "code": "/*\n\nThis circuit is an incremental counter\n\nA circuit can be:\n\n*Sequential -> The outputs depends of the inputs and previous states\n\n*/\n\nreg [7:0] counter=8'b0000_0000;\n\nalways @(posedge input_bit) begin\n    counter<=counter+1;\nend\n\n\n//We assign the output to the register state\nassign output_bit=counter;\n",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "input_bit"
                }
              ],
              "out": [
                {
                  "name": "output_bit",
                  "range": "[7:0]",
                  "size": 8
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
            "height": 440
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "1016b6de-1130-4fc3-bbdd-5b057d5d9993",
            "port": "out"
          },
          "target": {
            "block": "19b5d4f1-3164-44e4-802d-436230808fd0",
            "port": "input_bit"
          }
        },
        {
          "source": {
            "block": "19b5d4f1-3164-44e4-802d-436230808fd0",
            "port": "output_bit"
          },
          "target": {
            "block": "228be4b1-a243-4cd7-9489-1c00b1d72eec",
            "port": "in"
          },
          "size": 8
        }
      ]
    }
  },
  "dependencies": {}
}