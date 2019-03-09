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
            "y": 256
          }
        },
        {
          "id": "838008eb-196c-4414-9926-a1f9598c93bc",
          "type": "c83dcd1d9ab420d911df81b3dfae04681559c623",
          "position": {
            "x": 104,
            "y": 256
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "19b5d4f1-3164-44e4-802d-436230808fd0",
          "type": "basic.code",
          "data": {
            "code": "/*\n\nA circuit can be:\n\n* Combinational->The outputs dependes of the inputs\n\n*Sequential -> The outputs depends of the inputs and previous states\n\n*/\n\n\n//Let's say the output has a 1 value\n//assign output_bit=1;\n\n//We assign the output directly the input\nassign output_bit=input_bit;\n",
            "params": [],
            "ports": {
              "in": [
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
            "width": 560,
            "height": 304
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "838008eb-196c-4414-9926-a1f9598c93bc",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
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
            "block": "18a7d8e6-78d4-4f1f-bfcb-b4b2816dde6a",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {
    "c83dcd1d9ab420d911df81b3dfae04681559c623": {
      "package": {
        "name": "Bit 1",
        "version": "1.0.0",
        "description": "Assign 1 to the output wire",
        "author": "Jesús Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2247.303%22%20height=%2227.648%22%20viewBox=%220%200%2044.346456%2025.919999%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22325.218%22%20y=%22315.455%22%20font-weight=%22400%22%20font-size=%2212.669%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22translate(-307.01%20-298.51)%22%3E%3Ctspan%20x=%22325.218%22%20y=%22315.455%22%20style=%22-inkscape-font-specification:'Courier%2010%20Pitch'%22%20font-family=%22Courier%2010%20Pitch%22%3E1%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "19c8f68d-5022-487f-9ab0-f0a3cd58bead",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 608,
                "y": 192
              }
            },
            {
              "id": "b959fb96-ac67-4aea-90b3-ed35a4c17bf5",
              "type": "basic.code",
              "data": {
                "code": "// Bit 1\n\nassign v = 1'b1;",
                "params": [],
                "ports": {
                  "in": [],
                  "out": [
                    {
                      "name": "v"
                    }
                  ]
                }
              },
              "position": {
                "x": 96,
                "y": 96
              },
              "size": {
                "width": 384,
                "height": 256
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "b959fb96-ac67-4aea-90b3-ed35a4c17bf5",
                "port": "v"
              },
              "target": {
                "block": "19c8f68d-5022-487f-9ab0-f0a3cd58bead",
                "port": "in"
              }
            }
          ]
        }
      }
    }
  }
}