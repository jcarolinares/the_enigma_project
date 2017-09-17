{
  "version": "1.1",
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
          "id": "3d895a27-94a0-4a15-9f13-5aef05ea59dc",
          "type": "basic.input",
          "data": {
            "name": "letter",
            "range": "[7:0]",
            "pins": [
              {
                "index": "7",
                "name": "",
                "value": "0"
              },
              {
                "index": "6",
                "name": "",
                "value": "0"
              },
              {
                "index": "5",
                "name": "",
                "value": "0"
              },
              {
                "index": "4",
                "name": "",
                "value": "0"
              },
              {
                "index": "3",
                "name": "",
                "value": "0"
              },
              {
                "index": "2",
                "name": "",
                "value": "0"
              },
              {
                "index": "1",
                "name": "",
                "value": "0"
              },
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 160,
            "y": 328
          }
        },
        {
          "id": "351476f0-3b76-401d-b498-2dac15b4c64c",
          "type": "basic.output",
          "data": {
            "name": "sw_letter",
            "range": "[7:0]",
            "pins": [
              {
                "index": "7",
                "name": "",
                "value": "0"
              },
              {
                "index": "6",
                "name": "",
                "value": "0"
              },
              {
                "index": "5",
                "name": "",
                "value": "0"
              },
              {
                "index": "4",
                "name": "",
                "value": "0"
              },
              {
                "index": "3",
                "name": "",
                "value": "0"
              },
              {
                "index": "2",
                "name": "",
                "value": "0"
              },
              {
                "index": "1",
                "name": "",
                "value": "0"
              },
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 1096,
            "y": 328
          }
        },
        {
          "id": "60a6de5e-63cf-4b62-815d-5ca0c14f28be",
          "type": "basic.constant",
          "data": {
            "name": "sw1",
            "value": "\"  \"",
            "local": false
          },
          "position": {
            "x": 160,
            "y": 48
          }
        },
        {
          "id": "bd0d5ad1-e0aa-4f3a-939f-426182f00828",
          "type": "basic.constant",
          "data": {
            "name": "sw2",
            "value": "\"  \"",
            "local": false
          },
          "position": {
            "x": 264,
            "y": 48
          }
        },
        {
          "id": "68e67471-7528-45d6-8c1e-794baf37892d",
          "type": "basic.constant",
          "data": {
            "name": "sw3",
            "value": "\"  \"",
            "local": false
          },
          "position": {
            "x": 368,
            "y": 48
          }
        },
        {
          "id": "76728878-1d13-4e8e-a8e6-58327b06501b",
          "type": "basic.constant",
          "data": {
            "name": "sw4",
            "value": "\"  \"",
            "local": false
          },
          "position": {
            "x": 472,
            "y": 48
          }
        },
        {
          "id": "1dac0849-515c-48c4-971e-8da74a459499",
          "type": "basic.constant",
          "data": {
            "name": "sw5",
            "value": "\"  \"",
            "local": false
          },
          "position": {
            "x": 576,
            "y": 48
          }
        },
        {
          "id": "dfd44aeb-2929-42d3-8170-b30d2b1d4f9d",
          "type": "basic.constant",
          "data": {
            "name": "sw6",
            "value": "\"  \"",
            "local": false
          },
          "position": {
            "x": 680,
            "y": 48
          }
        },
        {
          "id": "8ac332af-910f-4119-ada4-e46d547023af",
          "type": "basic.constant",
          "data": {
            "name": "sw7",
            "value": "\"  \"",
            "local": false
          },
          "position": {
            "x": 784,
            "y": 48
          }
        },
        {
          "id": "261de638-ab97-4ff8-9b56-0016969f763e",
          "type": "basic.constant",
          "data": {
            "name": "sw8",
            "value": "\"  \"",
            "local": false
          },
          "position": {
            "x": 888,
            "y": 48
          }
        },
        {
          "id": "04015736-c9fd-4c8c-b910-8b60d7aad106",
          "type": "basic.constant",
          "data": {
            "name": "sw9",
            "value": "\"  \"",
            "local": false
          },
          "position": {
            "x": 992,
            "y": 48
          }
        },
        {
          "id": "66b264c6-b77f-4562-b5fe-d598a1e7a7a5",
          "type": "basic.constant",
          "data": {
            "name": "sw10",
            "value": "\"  \"",
            "local": false
          },
          "position": {
            "x": 1096,
            "y": 48
          }
        },
        {
          "id": "3d38a566-1e20-455c-8576-0a286af5b7d1",
          "type": "basic.code",
          "data": {
            "code": "\n\n\nlocalparam sw1_1 =sw1[15:8];\nlocalparam sw1_2 =sw1[7:0];\nlocalparam sw2_1 =sw2[15:8];\nlocalparam sw2_2 =sw2[7:0];\nlocalparam sw3_1 =sw3[15:8];\nlocalparam sw3_2 =sw3[7:0];\nlocalparam sw4_1 =sw4[15:8];\nlocalparam sw4_2 =sw4[7:0];\nlocalparam sw5_1 =sw5[15:8];\nlocalparam sw5_2 =sw5[7:0];\nlocalparam sw6_1 =sw6[15:8];\nlocalparam sw6_2 =sw6[7:0];\nlocalparam sw7_1 =sw7[15:8];\nlocalparam sw7_2 =sw7[7:0];\nlocalparam sw8_1 =sw8[15:8];\nlocalparam sw8_2 =sw8[7:0];\nlocalparam sw9_1 =sw9[15:8];\nlocalparam sw9_2 =sw9[7:0];\nlocalparam sw10_1 =sw10[15:8];\nlocalparam sw10_2 =sw10[7:0];\n\n\nreg [7:0] out_letter;\n\nalways @(*)\n    begin\n\n        case (letter)\n            sw1_1: out_letter<=sw1_2;\n            sw1_2: out_letter<=sw1_1;\n            \n            sw2_1: out_letter<=sw2_2;\n            sw2_2: out_letter<=sw2_1;\n\n            sw3_1: out_letter<=sw3_2;\n            sw3_2: out_letter<=sw3_1;\n            \n            sw4_1: out_letter<=sw4_2;\n            sw4_2: out_letter<=sw4_1;\n\n            sw5_1: out_letter<=sw5_2;\n            sw5_2: out_letter<=sw5_1;\n\n            sw6_1: out_letter<=sw6_2;\n            sw6_2: out_letter<=sw6_1;\n            \n            sw7_1: out_letter<=sw7_2;\n            sw7_2: out_letter<=sw7_1;\n\n            sw8_1: out_letter<=sw8_2;\n            sw8_2: out_letter<=sw8_1;\n            \n            sw9_1: out_letter<=sw9_2;\n            sw9_2: out_letter<=sw9_1;\n\n            sw10_1: out_letter<=sw10_2;\n            sw10_2: out_letter<=sw10_1;\n        \n        default: out_letter<= letter;\n        endcase\n\n\n    end\n    \nassign swap_letter=out_letter;",
            "params": [
              {
                "name": "sw1"
              },
              {
                "name": "sw2"
              },
              {
                "name": "sw3"
              },
              {
                "name": "sw4"
              },
              {
                "name": "sw5"
              },
              {
                "name": "sw6"
              },
              {
                "name": "sw7"
              },
              {
                "name": "sw8"
              },
              {
                "name": "sw9"
              },
              {
                "name": "sw10"
              }
            ],
            "ports": {
              "in": [
                {
                  "name": "letter",
                  "range": "[7:0]",
                  "size": 8
                }
              ],
              "out": [
                {
                  "name": "swap_letter",
                  "range": "[7:0]",
                  "size": 8
                }
              ]
            }
          },
          "position": {
            "x": 400,
            "y": 160
          },
          "size": {
            "width": 496,
            "height": 400
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "60a6de5e-63cf-4b62-815d-5ca0c14f28be",
            "port": "constant-out"
          },
          "target": {
            "block": "3d38a566-1e20-455c-8576-0a286af5b7d1",
            "port": "sw1"
          }
        },
        {
          "source": {
            "block": "bd0d5ad1-e0aa-4f3a-939f-426182f00828",
            "port": "constant-out"
          },
          "target": {
            "block": "3d38a566-1e20-455c-8576-0a286af5b7d1",
            "port": "sw2"
          }
        },
        {
          "source": {
            "block": "68e67471-7528-45d6-8c1e-794baf37892d",
            "port": "constant-out"
          },
          "target": {
            "block": "3d38a566-1e20-455c-8576-0a286af5b7d1",
            "port": "sw3"
          }
        },
        {
          "source": {
            "block": "76728878-1d13-4e8e-a8e6-58327b06501b",
            "port": "constant-out"
          },
          "target": {
            "block": "3d38a566-1e20-455c-8576-0a286af5b7d1",
            "port": "sw4"
          }
        },
        {
          "source": {
            "block": "1dac0849-515c-48c4-971e-8da74a459499",
            "port": "constant-out"
          },
          "target": {
            "block": "3d38a566-1e20-455c-8576-0a286af5b7d1",
            "port": "sw5"
          }
        },
        {
          "source": {
            "block": "dfd44aeb-2929-42d3-8170-b30d2b1d4f9d",
            "port": "constant-out"
          },
          "target": {
            "block": "3d38a566-1e20-455c-8576-0a286af5b7d1",
            "port": "sw6"
          }
        },
        {
          "source": {
            "block": "8ac332af-910f-4119-ada4-e46d547023af",
            "port": "constant-out"
          },
          "target": {
            "block": "3d38a566-1e20-455c-8576-0a286af5b7d1",
            "port": "sw7"
          }
        },
        {
          "source": {
            "block": "261de638-ab97-4ff8-9b56-0016969f763e",
            "port": "constant-out"
          },
          "target": {
            "block": "3d38a566-1e20-455c-8576-0a286af5b7d1",
            "port": "sw8"
          }
        },
        {
          "source": {
            "block": "04015736-c9fd-4c8c-b910-8b60d7aad106",
            "port": "constant-out"
          },
          "target": {
            "block": "3d38a566-1e20-455c-8576-0a286af5b7d1",
            "port": "sw9"
          }
        },
        {
          "source": {
            "block": "66b264c6-b77f-4562-b5fe-d598a1e7a7a5",
            "port": "constant-out"
          },
          "target": {
            "block": "3d38a566-1e20-455c-8576-0a286af5b7d1",
            "port": "sw10"
          }
        },
        {
          "source": {
            "block": "3d895a27-94a0-4a15-9f13-5aef05ea59dc",
            "port": "out"
          },
          "target": {
            "block": "3d38a566-1e20-455c-8576-0a286af5b7d1",
            "port": "letter"
          },
          "size": 8
        },
        {
          "source": {
            "block": "3d38a566-1e20-455c-8576-0a286af5b7d1",
            "port": "swap_letter"
          },
          "target": {
            "block": "351476f0-3b76-401d-b498-2dac15b4c64c",
            "port": "in"
          },
          "size": 8
        }
      ]
    },
    "state": {
      "pan": {
        "x": 54.9535,
        "y": 18.9535
      },
      "zoom": 0.9346
    }
  },
  "dependencies": {}
}