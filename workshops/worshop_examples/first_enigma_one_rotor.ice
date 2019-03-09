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
          "id": "f4b68083-ae20-4d94-bf61-0c1e52c226f6",
          "type": "basic.input",
          "data": {
            "name": "RX",
            "pins": [
              {
                "index": "0",
                "name": "RX",
                "value": "9"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -976,
            "y": -280
          }
        },
        {
          "id": "9138f647-cc36-499f-9a51-fa7ae9af67d6",
          "type": "basic.output",
          "data": {
            "name": "Serial",
            "pins": [
              {
                "index": "0",
                "name": "TX",
                "value": "8"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 960,
            "y": 88
          }
        },
        {
          "id": "39ff41db-26b6-4c57-870e-d698d2b17b66",
          "type": "basic.input",
          "data": {
            "name": "mode",
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
            "x": -608,
            "y": 320
          }
        },
        {
          "id": "767d6031-2b52-4236-9f09-f2d5dae59465",
          "type": "basic.output",
          "data": {
            "name": "mode_led",
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
            "x": -296,
            "y": 648
          }
        },
        {
          "id": "3c70745f-ff1e-4530-a641-d2a8bc456d62",
          "type": "basic.output",
          "data": {
            "name": "mode_led",
            "pins": [
              {
                "index": "0",
                "name": "LED3",
                "value": "98"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 0,
            "y": 648
          }
        },
        {
          "id": "159782b1-53cb-4154-8725-b65c4e217339",
          "type": "basic.output",
          "data": {
            "name": "mode_led",
            "pins": [
              {
                "index": "0",
                "name": "LED6",
                "value": "102"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": -144,
            "y": 648
          }
        },
        {
          "id": "21030ec2-9557-435f-b87f-07c987a9da8e",
          "type": "basic.output",
          "data": {
            "name": "mode_led",
            "pins": [
              {
                "index": "0",
                "name": "LED1",
                "value": "96"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": -296,
            "y": 728
          }
        },
        {
          "id": "2a05158b-4e93-42cc-a95f-3156a5e91ac5",
          "type": "basic.output",
          "data": {
            "name": "mode_led",
            "pins": [
              {
                "index": "0",
                "name": "LED4",
                "value": "99"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 0,
            "y": 728
          }
        },
        {
          "id": "1e536a14-85f4-4369-bbdc-07a83192f5aa",
          "type": "basic.output",
          "data": {
            "name": "mode_led",
            "pins": [
              {
                "index": "0",
                "name": "LED7",
                "value": "104"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": -144,
            "y": 728
          }
        },
        {
          "id": "c5223cac-0863-41da-a072-44685b679dbb",
          "type": "basic.output",
          "data": {
            "name": "mode_led",
            "pins": [
              {
                "index": "0",
                "name": "LED2",
                "value": "97"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": -296,
            "y": 808
          }
        },
        {
          "id": "f6088ff7-929b-4894-9607-8f75ca344796",
          "type": "basic.output",
          "data": {
            "name": "mode_led",
            "pins": [
              {
                "index": "0",
                "name": "LED5",
                "value": "101"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 0,
            "y": 808
          }
        },
        {
          "id": "4cb0ee46-ae09-49e4-8b1c-f4db93d43915",
          "type": "b9ce1495492d9bb52158ff7ab53777abfad9c97d",
          "position": {
            "x": -768,
            "y": -320
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "09b2c72f-4745-424f-9d74-647334648eaa",
          "type": "c6459cf10c1547cd019a1270349def563247dd01",
          "position": {
            "x": 752,
            "y": 104
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "48601cbd-ae23-4dad-9815-42c90ab1d7db",
          "type": "basic.code",
          "data": {
            "code": "/*Caesar Cypher\n\nCreated by Julián Caro Linares\n\njcarolinares@gmail.com\n\n\"A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z.\"\n\n*/\n\n/*Example 1*/\n\nreg [7:0] alphabet [0:25];\nreg [7:0] in_letter [0:25]; // Input contacts, it changes depending of the mode\nreg [7:0] crypt [0:25]; // Encryption disc- To make a new disc, change the values of this memory\nreg [7:0] out_letter [0:25]; // Output contacs, it changes depending of the mode\n\nreg [7:0] _out;\ninteger i=0; //For loop integer counter\n\n\nalways @(*) begin\n\n//Alphabet/Symbols declaration and encrypted symbols\nalphabet[0]=\"a\";  crypt[0]=\"j\";\nalphabet[1]=\"b\";  crypt[1]=\"k\";\nalphabet[2]=\"c\";  crypt[2]=\"q\";\nalphabet[3]=\"d\";  crypt[3]=\"u\";\nalphabet[4]=\"e\";  crypt[4]=\"l\";\nalphabet[5]=\"f\";  crypt[5]=\"m\";\nalphabet[6]=\"g\";  crypt[6]=\"r\";\nalphabet[7]=\"h\";  crypt[7]=\"t\";\nalphabet[8]=\"i\";  crypt[8]=\"b\";\nalphabet[9]=\"j\";  crypt[9]=\"a\";\nalphabet[10]=\"k\"; crypt[10]=\"s\";\nalphabet[11]=\"l\"; crypt[11]=\"d\";\nalphabet[12]=\"m\"; crypt[12]=\"c\";\nalphabet[13]=\"n\"; crypt[13]=\"o\";\nalphabet[14]=\"o\"; crypt[14]=\"v\";\nalphabet[15]=\"p\"; crypt[15]=\"p\";\nalphabet[16]=\"q\"; crypt[16]=\"n\";\nalphabet[17]=\"r\"; crypt[17]=\"w\";\nalphabet[18]=\"s\"; crypt[18]=\"e\";\nalphabet[19]=\"t\"; crypt[19]=\"x\";\nalphabet[20]=\"u\"; crypt[20]=\"z\";\nalphabet[21]=\"v\"; crypt[21]=\"y\";\nalphabet[22]=\"w\"; crypt[22]=\"f\";\nalphabet[23]=\"x\"; crypt[23]=\"i\";\nalphabet[24]=\"y\"; crypt[24]=\"h\";\nalphabet[25]=\"z\"; crypt[25]=\"g\";\n\n\n//Position between Encrypted disc and external positions contacts.\nfor (i=0; i<26;i=i+1)\n    begin\n        if (mode==0) begin\n            in_letter[i]<=alphabet[i];\n            out_letter[i]<=crypt[i];\n        end\n        else begin\n            in_letter[i]<=crypt[i];\n            out_letter[i]<=alphabet[i];\n        end\n    end\n\n\n//Conection between contacts\n\n    case(letter)\n        in_letter[0]: _out = out_letter[0];\n        in_letter[1]: _out = out_letter[1];\n        in_letter[2]: _out = out_letter[2];\n        in_letter[3]: _out = out_letter[3];\n        in_letter[4]: _out = out_letter[4];\n        in_letter[5]: _out = out_letter[5];\n        in_letter[6]: _out = out_letter[6];\n        in_letter[7]: _out = out_letter[7];\n        in_letter[8]: _out = out_letter[8];\n        in_letter[9]: _out = out_letter[9];\n        in_letter[10]: _out = out_letter[10];\n        in_letter[11]: _out = out_letter[11];\n        in_letter[12]: _out = out_letter[12];\n        in_letter[13]: _out = out_letter[13];\n        in_letter[14]: _out = out_letter[14];\n        in_letter[15]: _out = out_letter[15];\n        in_letter[16]: _out = out_letter[16];\n        in_letter[17]: _out = out_letter[17];\n        in_letter[18]: _out = out_letter[18];\n        in_letter[19]: _out = out_letter[19];\n        in_letter[20]: _out = out_letter[20];\n        in_letter[21]: _out = out_letter[21];\n        in_letter[22]: _out = out_letter[22];\n        in_letter[23]: _out = out_letter[23];\n        in_letter[24]: _out = out_letter[24];\n        in_letter[25]: _out = out_letter[25];\n                \n        \" \": _out = \" \";\n        \n        default: _out = 8'b0000_0000;\n    endcase\nend\n\nassign letter_out = _out;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "letter",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "mode"
                }
              ],
              "out": [
                {
                  "name": "letter_out",
                  "range": "[7:0]",
                  "size": 8
                }
              ]
            }
          },
          "position": {
            "x": -272,
            "y": -224
          },
          "size": {
            "width": 632,
            "height": 744
          }
        },
        {
          "id": "b9defb7b-0029-4112-b62d-dc06ef2e90d3",
          "type": "898c883b6b630622eaf08e5a3c5ef8b417a962e7",
          "position": {
            "x": -456,
            "y": 304
          },
          "size": {
            "width": 96,
            "height": 64
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "f4b68083-ae20-4d94-bf61-0c1e52c226f6",
            "port": "out"
          },
          "target": {
            "block": "4cb0ee46-ae09-49e4-8b1c-f4db93d43915",
            "port": "2f6a3bb1-2010-4f69-a978-717528dc5160"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "09b2c72f-4745-424f-9d74-647334648eaa",
            "port": "09701eaa-8d79-487f-b003-267e04095bb1"
          },
          "target": {
            "block": "9138f647-cc36-499f-9a51-fa7ae9af67d6",
            "port": "in"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "4cb0ee46-ae09-49e4-8b1c-f4db93d43915",
            "port": "b82422cd-6ac3-4b32-a8b8-3aff2a066775"
          },
          "target": {
            "block": "48601cbd-ae23-4dad-9815-42c90ab1d7db",
            "port": "letter"
          },
          "vertices": [
            {
              "x": -472,
              "y": 40
            }
          ],
          "size": 8
        },
        {
          "source": {
            "block": "48601cbd-ae23-4dad-9815-42c90ab1d7db",
            "port": "letter_out"
          },
          "target": {
            "block": "09b2c72f-4745-424f-9d74-647334648eaa",
            "port": "27183891-b385-412b-bc55-21df1dd0280e"
          },
          "size": 8
        },
        {
          "source": {
            "block": "4cb0ee46-ae09-49e4-8b1c-f4db93d43915",
            "port": "d7ebc6ce-2cde-4e33-8c9d-b439fd2cb3e0"
          },
          "target": {
            "block": "09b2c72f-4745-424f-9d74-647334648eaa",
            "port": "6bb28a95-e6e4-4044-9c22-c4404693b6b1"
          },
          "vertices": [
            {
              "x": 208,
              "y": 600
            }
          ]
        },
        {
          "source": {
            "block": "39ff41db-26b6-4c57-870e-d698d2b17b66",
            "port": "out"
          },
          "target": {
            "block": "b9defb7b-0029-4112-b62d-dc06ef2e90d3",
            "port": "1dce7109-e23a-42b6-a62c-d89c6fb0679e"
          }
        },
        {
          "source": {
            "block": "b9defb7b-0029-4112-b62d-dc06ef2e90d3",
            "port": "d588e866-08ee-43f6-b30b-1df27884333c"
          },
          "target": {
            "block": "48601cbd-ae23-4dad-9815-42c90ab1d7db",
            "port": "mode"
          }
        },
        {
          "source": {
            "block": "b9defb7b-0029-4112-b62d-dc06ef2e90d3",
            "port": "d588e866-08ee-43f6-b30b-1df27884333c"
          },
          "target": {
            "block": "767d6031-2b52-4236-9f09-f2d5dae59465",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "b9defb7b-0029-4112-b62d-dc06ef2e90d3",
            "port": "d588e866-08ee-43f6-b30b-1df27884333c"
          },
          "target": {
            "block": "21030ec2-9557-435f-b87f-07c987a9da8e",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "b9defb7b-0029-4112-b62d-dc06ef2e90d3",
            "port": "d588e866-08ee-43f6-b30b-1df27884333c"
          },
          "target": {
            "block": "c5223cac-0863-41da-a072-44685b679dbb",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "b9defb7b-0029-4112-b62d-dc06ef2e90d3",
            "port": "d588e866-08ee-43f6-b30b-1df27884333c"
          },
          "target": {
            "block": "159782b1-53cb-4154-8725-b65c4e217339",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "b9defb7b-0029-4112-b62d-dc06ef2e90d3",
            "port": "d588e866-08ee-43f6-b30b-1df27884333c"
          },
          "target": {
            "block": "1e536a14-85f4-4369-bbdc-07a83192f5aa",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "b9defb7b-0029-4112-b62d-dc06ef2e90d3",
            "port": "d588e866-08ee-43f6-b30b-1df27884333c"
          },
          "target": {
            "block": "3c70745f-ff1e-4530-a641-d2a8bc456d62",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "b9defb7b-0029-4112-b62d-dc06ef2e90d3",
            "port": "d588e866-08ee-43f6-b30b-1df27884333c"
          },
          "target": {
            "block": "2a05158b-4e93-42cc-a95f-3156a5e91ac5",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "b9defb7b-0029-4112-b62d-dc06ef2e90d3",
            "port": "d588e866-08ee-43f6-b30b-1df27884333c"
          },
          "target": {
            "block": "f6088ff7-929b-4894-9607-8f75ca344796",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {
    "b9ce1495492d9bb52158ff7ab53777abfad9c97d": {
      "package": {
        "name": "Serial-rx",
        "version": "0.2",
        "description": "Receptor serie asíncrono. Velocidad por defecto: 115200 baudios",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20height=%22223.269%22%20width=%22293.137%22%20viewBox=%220%200%20274.81662%20209.31615%22%3E%3Cg%20transform=%22matrix(-1.04907%200%200%201.04907%20-113.38%20-102.544)%22%20stroke=%22#000%22%3E%3Cpath%20d=%22M-170.798%20177.526l.315%2036.011%2040.397-37.263v-33.51z%22%20fill=%22#fff%22%20stroke-width=%223.541%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M-308.584%20177.892l53.235-35.7%20124.635.628-39.456%2035.7%22%20fill=%22#fff%22%20stroke-width=%223.541%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Crect%20ry=%223.509%22%20height=%2236.325%22%20width=%22139.039%22%20y=%22178.153%22%20x=%22-308.895%22%20fill=%22#fff%22%20stroke-width=%223.541%22%20stroke-linecap=%22square%22/%3E%3Cg%20transform=%22matrix(1.88858%200%200%201.88858%20-312.436%20138.651)%22%20stroke-width=%22.938%22%20stroke-linecap=%22square%22%3E%3Ccircle%20cy=%2230.367%22%20cx=%2211.326%22%20r=%223.15%22%20fill=%22red%22/%3E%3Ccircle%20cy=%2230.367%22%20cx=%2220.611%22%20r=%223.15%22%20fill=%22#faa%22/%3E%3Ccircle%20cy=%2230.367%22%20cx=%2262.82%22%20r=%223.15%22%20fill=%22green%22/%3E%3Ccircle%20cy=%2230.367%22%20cx=%2230.554%22%20r=%223.15%22%20fill=%22red%22/%3E%3C/g%3E%3C/g%3E%3Ctext%20y=%2228.295%22%20x=%2270.801%22%20style=%22line-height:0%25%22%20font-weight=%22400%22%20font-size=%2265.172%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22scale(.99853%201.00147)%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%20stroke-width=%221.209%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%2228.295%22%20x=%2270.801%22%20font-weight=%22700%22%20font-size=%2237.241%22%3ESerial%3C/tspan%3E%3C/text%3E%3Cg%20transform=%22translate(-49.71%20-39.925)%20scale(2.8106)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3Ccircle%20cx=%22233.043%22%20cy=%2281.071%22%20r=%2240.92%22%20fill=%22#ececec%22%20stroke=%22green%22%20stroke-width=%221.71%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M261.766%2092.931h-4.696V67.437h-48.103v25.295h-5.116%22%20fill=%22none%22%20stroke=%22green%22%20stroke-width=%224.275%22%20stroke-linecap=%22round%22/%3E%3Ctext%20y=%22173.032%22%20x=%2287.94%22%20style=%22line-height:0%25%22%20font-weight=%22400%22%20font-size=%2265.172%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22scale(.99853%201.00147)%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%20stroke-width=%221.209%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%22173.032%22%20x=%2287.94%22%20font-weight=%22700%22%20font-size=%2237.241%22%3ERX%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "b82422cd-6ac3-4b32-a8b8-3aff2a066775",
              "type": "basic.output",
              "data": {
                "name": "",
                "range": "[7:0]",
                "size": 8
              },
              "position": {
                "x": 936,
                "y": 96
              }
            },
            {
              "id": "9b46173d-7429-4d90-8701-a2eae9f88c53",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": -72,
                "y": 160
              }
            },
            {
              "id": "df254332-7ba1-4c4e-b14c-97b5211f8dff",
              "type": "basic.output",
              "data": {
                "name": "busy"
              },
              "position": {
                "x": 944,
                "y": 352
              }
            },
            {
              "id": "2f6a3bb1-2010-4f69-a978-717528dc5160",
              "type": "basic.input",
              "data": {
                "name": "RX",
                "clock": false
              },
              "position": {
                "x": -80,
                "y": 544
              }
            },
            {
              "id": "d7ebc6ce-2cde-4e33-8c9d-b439fd2cb3e0",
              "type": "basic.output",
              "data": {
                "name": "rcv"
              },
              "position": {
                "x": 944,
                "y": 608
              }
            },
            {
              "id": "38758516-ff7d-4688-a171-e35bb9f50bd0",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "115200",
                "local": false
              },
              "position": {
                "x": 416,
                "y": -136
              }
            },
            {
              "id": "d84b0e8b-3264-47e9-953f-b80b712fc373",
              "type": "basic.code",
              "data": {
                "code": "//-- Constantes para obtener las velocidades estándares\n`define B115200 104 \n`define B57600  208\n`define B38400  313\n`define B19200  625\n`define B9600   1250\n`define B4800   2500\n`define B2400   5000\n`define B1200   10000\n`define B600    20000\n`define B300    40000\n\n//-- Constante para calcular los baudios\nlocalparam BAUDRATE = (BAUD==115200) ? `B115200 : //-- OK\n                      (BAUD==57600)  ? `B57600  : //-- OK\n                      (BAUD==38400)  ? `B38400  : //-- Ok\n                      (BAUD==19200)  ? `B19200  : //-- OK\n                      (BAUD==9600)   ? `B9600   : //-- OK\n                      (BAUD==4800)   ? `B4800   : //-- OK \n                      (BAUD==2400)   ? `B2400   : //-- OK\n                      (BAUD==1200)   ? `B1200   : //-- OK\n                      (BAUD==600)    ? `B600    : //-- OK\n                      (BAUD==300)    ? `B300    : //-- OK\n                      `B115200 ;  //-- Por defecto 115200 baudios\n\n\n\n\n//-- Calcular el numero de bits para almacenar el divisor\nlocalparam N = $clog2(BAUDRATE);\n\n// Sincronizacion. Evitar \n// problema de la metaestabilidad\n\nreg d1;\nreg din;\n\nalways @(posedge clk)\n d1 <= RX;\n \n//-- Din contiene el dato serie de entrada listo para usarse   \nalways @(posedge clk)\n  din <= d1;\n  \n//------ Detectar el bit de start: flanco de bajada en din\n\n//-- Registro temporal\nreg q_t0 = 0;\n\nalways @(posedge clk)\n  q_t0 <= din;\n  \n//-- El cable din_fe es un \"tic\" que aparece cuando llega el flanco de \n//-- bajada\nwire din_fe = (q_t0 & ~din);\n\n//-------- ESTADO DEL RECEPTOR\n\n//-- 0: Apagado. Esperando\n//-- 1: Encendido. Activo. Recibiendo dato\nreg state = 0;\n\nalways @(posedge clk)\n  //-- Se pasa al estado activo al detectar el flanco de bajada\n  //-- del bit de start\n  if (din_fe)\n    state <= 1'b1;\n    \n  //-- Se pasa al estado inactivo al detectar la señal rst_state    \n  else if (rst_state)\n    state<=1'b0;\n\n//------------------ GENERADOR DE BAUDIOS -----------------------------\n//-- Se activa cuando el receptor está encendido\n\n\n//-- Calcular la mitad del divisor BAUDRATE/2\nlocalparam BAUD2 = (BAUDRATE >> 1);\n\n//-- Contador del sistema, para esperar un tiempo de  \n//-- medio bit (BAUD2)\n\n//-- NOTA: podria tener N-2 bits en principio\nreg [N-1: 0] div2counter = 0;\n\n//-- Se genera primero un retraso de BAUD/2\n//-- El proceso comienza cuando el estado pasa a 1\n\nalways @(posedge clk)\n\n  //-- Contar\n  if (state) begin\n    //-- Solo cuenta hasta BAUD2, luego  \n    //-- se queda en ese valor hasta que\n    //-- ena se desactiva\n    if (div2counter < BAUD2) \n      div2counter <= div2counter + 1;\n  end else\n    div2counter <= 0;\n\n//-- Habilitar el generador de baudios principal\n//-- cuando termine este primer contador\nwire ena2 = (div2counter == BAUD2);\n\n\n//------ GENERADOR DE BAUDIOS PRINCIPAL\n\n//-- Contador para implementar el divisor\n//-- Es un contador modulo BAUDRATE\nreg [N-1:0] divcounter = 0;\n\n//-- Cable de reset para el contador\nwire reset;\n\n//-- Contador con reset\nalways @(posedge clk)\n  if (reset)\n    divcounter <= 0;\n  else\n    divcounter <= divcounter + 1;\n\n//-- Esta señal contiene el tic\nwire ov = (divcounter == BAUDRATE-1);\n\n//-- Comparador que resetea el contador cuando se alcanza el tope\nassign reset = ov | (ena2 == 0);\n\n//-- El cable con el tic para capturar cada bit lo llamamos\n//-- bit_tic, y es la señal de overflow del contador\nwire bit_tic = ov;\n\n//-------- REGISTRO DE DESPLAZAMIENTO -----------\n//-- Es el componente que pasa los bits recibidos a paralelo\n//-- La señal de desplazamiento usada es bit_tic, pero sólo cuando  \n//-- estamos en estado de encendido (state==1)\n//-- Es un registro de 9 bits: 8 bits de datos + bit de stop\n//-- El bit de start no se almacena, es el que ha servido para\n//-- arrancar el receptor\n\nreg [8:0] sr = 0;\n\nalways @(posedge clk)\n  //-- Se captura el bit cuando llega y el receptor\n  //-- esta activado\n  if (bit_tic & state)\n    sr <= {din, sr[8:1]};\n    \n//-- El dato recibido se encuentran en los 8 bits menos significativos\n//-- una vez recibidos los 9 bits\n\n//-------- CONTADOR de bits recibidos\n\n//-- Internamente usamos un bit mas\n//-- (N+1) bits\nreg [4:0] cont = 0;\n\nalways @(posedge clk)\n\n  //-- El contador se pone a 0 si hay un overflow o \n  //-- el receptor está apagado \n  if ((state==0)| ov2)\n    cont <= 0;\n  else\n    //-- Receptor activado: Si llega un bit se incrementa\n    if (bit_tic)\n      cont <= cont + 1;\n      \n//-- Comprobar overflow\nwire ov2 = (cont == 9);\n    \n//-- Esta señal de overflow indica el final de la recepción\nwire fin = ov2;\n\n//-- Se conecta al reset el biestable de estado\nwire rst_state = fin;\n\n//----- REGISTRO DE DATOS -------------------\n//-- Registro de 8 bits que almacena el dato final\n\n//-- Bus de salida con el dato recibido\nreg data = 0;\n\nalways @(posedge clk)\n\n  //-- Si se ha recibido el ultimo bit, capturamos el dato\n  //-- que se encuentra en los 8 bits de menor peso del\n  //-- registro de desplazamiento\n  if (fin)\n    data <= sr[7:0];\n\n//-- Comunicar que se ha recibido un dato\n//-- Tic de dato recibido\nreg rcv = 0;\nalways @(posedge clk)\n  rcv <= fin;\n\n//-- La señal de busy es directamente el estado del receptor\nassign busy = state;\n\n",
                "params": [
                  {
                    "name": "BAUD"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "RX"
                    }
                  ],
                  "out": [
                    {
                      "name": "data",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "busy"
                    },
                    {
                      "name": "rcv"
                    }
                  ]
                }
              },
              "position": {
                "x": 152,
                "y": 0
              },
              "size": {
                "width": 616,
                "height": 768
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "9b46173d-7429-4d90-8701-a2eae9f88c53",
                "port": "out"
              },
              "target": {
                "block": "d84b0e8b-3264-47e9-953f-b80b712fc373",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "2f6a3bb1-2010-4f69-a978-717528dc5160",
                "port": "out"
              },
              "target": {
                "block": "d84b0e8b-3264-47e9-953f-b80b712fc373",
                "port": "RX"
              }
            },
            {
              "source": {
                "block": "d84b0e8b-3264-47e9-953f-b80b712fc373",
                "port": "data"
              },
              "target": {
                "block": "b82422cd-6ac3-4b32-a8b8-3aff2a066775",
                "port": "in"
              },
              "size": 8
            },
            {
              "source": {
                "block": "d84b0e8b-3264-47e9-953f-b80b712fc373",
                "port": "rcv"
              },
              "target": {
                "block": "d7ebc6ce-2cde-4e33-8c9d-b439fd2cb3e0",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "38758516-ff7d-4688-a171-e35bb9f50bd0",
                "port": "constant-out"
              },
              "target": {
                "block": "d84b0e8b-3264-47e9-953f-b80b712fc373",
                "port": "BAUD"
              }
            },
            {
              "source": {
                "block": "d84b0e8b-3264-47e9-953f-b80b712fc373",
                "port": "busy"
              },
              "target": {
                "block": "df254332-7ba1-4c4e-b14c-97b5211f8dff",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "c6459cf10c1547cd019a1270349def563247dd01": {
      "package": {
        "name": "Serial-tx",
        "version": "0.2",
        "description": "Transmisor serie",
        "author": "Juan Gonzalez-Gómez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20height=%22223.269%22%20width=%22293.137%22%20viewBox=%220%200%20274.81662%20209.31615%22%3E%3Cg%20transform=%22translate(347.142%20-102.544)%20scale(1.04907)%22%20stroke=%22#000%22%3E%3Cpath%20d=%22M-170.798%20177.526l.315%2036.011%2040.397-37.263v-33.51z%22%20fill=%22#fff%22%20stroke-width=%223.541%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M-308.584%20177.892l53.235-35.7%20124.635.628-39.456%2035.7%22%20fill=%22#fff%22%20stroke-width=%223.541%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Crect%20ry=%223.509%22%20height=%2236.325%22%20width=%22139.039%22%20y=%22178.153%22%20x=%22-308.895%22%20fill=%22#fff%22%20stroke-width=%223.541%22%20stroke-linecap=%22square%22/%3E%3Cg%20transform=%22matrix(1.88858%200%200%201.88858%20-312.436%20138.651)%22%20stroke-width=%22.938%22%20stroke-linecap=%22square%22%3E%3Ccircle%20cy=%2230.367%22%20cx=%2211.326%22%20r=%223.15%22%20fill=%22red%22/%3E%3Ccircle%20cy=%2230.367%22%20cx=%2220.611%22%20r=%223.15%22%20fill=%22#faa%22/%3E%3Ccircle%20cy=%2230.367%22%20cx=%2262.82%22%20r=%223.15%22%20fill=%22green%22/%3E%3Ccircle%20cy=%2230.367%22%20cx=%2230.554%22%20r=%223.15%22%20fill=%22red%22/%3E%3C/g%3E%3C/g%3E%3Ctext%20y=%2228.295%22%20x=%2270.801%22%20style=%22line-height:0%25%22%20font-weight=%22400%22%20font-size=%2265.172%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22scale(.99853%201.00147)%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%20stroke-width=%221.209%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%2228.295%22%20x=%2270.801%22%20font-weight=%22700%22%20font-size=%2237.241%22%3ESerial%3C/tspan%3E%3C/text%3E%3Cg%20transform=%22translate(-49.71%20-39.925)%20scale(2.8106)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3Cg%20transform=%22translate(-240.978%20-39.925)%20scale(2.8106)%22%20stroke=%22green%22%20stroke-linecap=%22round%22%3E%3Ccircle%20r=%2214.559%22%20cy=%2273.815%22%20cx=%22100.602%22%20fill=%22#ececec%22%20stroke-width=%22.608%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M106.978%2082.142h-3.353V63.316H97.54v18.678h-3.652%22%20fill=%22none%22%20stroke-width=%221.521%22/%3E%3C/g%3E%3Ccircle%20cx=%22233.043%22%20cy=%2281.071%22%20r=%2240.92%22%20fill=%22#ececec%22%20stroke=%22green%22%20stroke-width=%221.71%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M261.766%2092.931h-4.696V67.437h-48.103v25.295h-5.116%22%20fill=%22none%22%20stroke=%22green%22%20stroke-width=%224.275%22%20stroke-linecap=%22round%22/%3E%3Ctext%20y=%22165.6%22%20x=%22108.068%22%20style=%22line-height:0%25%22%20font-weight=%22400%22%20font-size=%2265.172%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22scale(.99853%201.00147)%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%20stroke-width=%221.209%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%22165.6%22%20x=%22108.068%22%20font-weight=%22700%22%20font-size=%2237.241%22%3ETX%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "09701eaa-8d79-487f-b003-267e04095bb1",
              "type": "basic.output",
              "data": {
                "name": "TX"
              },
              "position": {
                "x": 960,
                "y": 120
              }
            },
            {
              "id": "4c296e24-7312-407a-8fb0-f3a6d4feb3ab",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": -16,
                "y": 120
              }
            },
            {
              "id": "27183891-b385-412b-bc55-21df1dd0280e",
              "type": "basic.input",
              "data": {
                "name": "",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": -16,
                "y": 272
              }
            },
            {
              "id": "75d4695e-f445-4762-9ae9-c9bf0e51974f",
              "type": "basic.output",
              "data": {
                "name": "busy"
              },
              "position": {
                "x": 960,
                "y": 272
              }
            },
            {
              "id": "6bb28a95-e6e4-4044-9c22-c4404693b6b1",
              "type": "basic.input",
              "data": {
                "name": "txmit",
                "clock": false
              },
              "position": {
                "x": 0,
                "y": 424
              }
            },
            {
              "id": "42306dfc-8702-4c9a-98d6-56b4c86fff21",
              "type": "basic.output",
              "data": {
                "name": "done"
              },
              "position": {
                "x": 960,
                "y": 424
              }
            },
            {
              "id": "671d0b4d-317d-4aef-8422-8b9a400211a4",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "115200",
                "local": false
              },
              "position": {
                "x": 480,
                "y": -72
              }
            },
            {
              "id": "3238443f-338d-4796-b54a-c463c5f191aa",
              "type": "basic.code",
              "data": {
                "code": "//-- Constantes para obtener las velocidades estándares\n`define B115200 104 \n`define B57600  208\n`define B38400  313\n`define B19200  625\n`define B9600   1250\n`define B4800   2500\n`define B2400   5000\n`define B1200   10000\n`define B600    20000\n`define B300    40000\n\n//-- Constante para calcular los baudios\nlocalparam BAUDRATE = (BAUD==115200) ? `B115200 : //-- OK\n                      (BAUD==57600)  ? `B57600  : //-- OK\n                      (BAUD==38400)  ? `B38400  : //-- Ok\n                      (BAUD==19200)  ? `B19200  : //-- OK\n                      (BAUD==9600)   ? `B9600   : //-- OK\n                      (BAUD==4800)   ? `B4800   : //-- OK \n                      (BAUD==2400)   ? `B2400   : //-- OK\n                      (BAUD==1200)   ? `B1200   : //-- OK\n                      (BAUD==600)    ? `B600    : //-- OK\n                      (BAUD==300)    ? `B300    : //-- OK\n                      `B115200 ;  //-- Por defecto 115200 baudios\n\n\n//---- GENERADOR DE BAUDIOS\n\n//-- Calcular el numero dde bits para almacenar el divisor\nlocalparam N = $clog2(BAUDRATE);\n\n//-- Contador para implementar el divisor\n//-- Es un contador modulo BAUDRATE\nreg [N-1:0] divcounter = 0;\n\n//-- Cable de reset para el contador\n//-- Comparador que resetea el contador cuando se alcanza el tope\n//-- o cuando el estado del biestable es 0 (apagado)\nwire reset = ov_gen | (state == 0);\n\n//-- Contador con reset\nalways @(posedge clk)\n  if (reset)\n    divcounter <= 0;\n  else\n    divcounter <= divcounter + 1;\n\n//-- Hemos llegado al final\nwire ov_gen = (divcounter == BAUDRATE-1);\n\n\n\n//-- REGISTRO DESPLAZAMIENTO\n\n//-- Salida serie. Inicialmete a 1 (reposo) \nreg TX = 1;\n\n//-- Registro de desplazamiento de 9 bits\n//-- Inicializado todo a 1s\nreg [8:0] q = 9'h1FF;\n\n//-- La entrada de shift es la salida del generador de baudios\nwire shift = ov_gen;\n\nalways @(posedge clk)\n  if (txmit_tic)\n  //-- Carga del registro\n    q <= {data, 1'b0};\n    \n  else if (shift)\n    //-- Desplazamiento. Rellenar con 1 (bit de stop)\n    q <= {1'b1, q[8:1]};\n    \n//-- Sacar el bit de menor peso por serial-out    \nwire so;\nassign so = q[0];\n\n//-- La salida tx la registramos\nalways @(posedge clk)\n  TX <= so;\n  \n//-- La señal de entrada txmit se pasa por un \n//-- detector de flancos de subida para generar un tic\nreg q_re = 0;\nwire txmit_tic;\n\nalways @(posedge clk)\n  q_re <= txmit;\n  \nassign txmit_tic = (~q_re & txmit);  \n\n\n\n//-- Estado de transmisor\n//-- 0: Parado\n//-- 1: Ocupado (transmitiendo)\nreg state = 0;\n  \nalways @(posedge clk)\n  //-- Empieza la transmision: ocupado\n  if (txmit)\n    state <= 1'b1;\n    \n  //-- Acaba la transmision: libre    \n  else if (ov)\n    state <= 1'b0;\n\n//-- Contador de bits enviados\nreg [3:0] bits = 0;\nalways @(posedge clk)\n  //-- Si la cuenta ha terminado... volver a 0\n  if (ov)\n    bits <= 2'b00;\n  else\n    if (shift)\n      bits <= bits + 1;\n\n//-- Comprobar si se ha transmitido el último bit (overflow)\n//-- 1 bit de start + 8 bits de datos + 1 bit de stop\nwire ov = (bits == 10);\n\n//-- La señal de ocupado es el estado del transmisor\nassign busy = state;\n\n//-- La señal de done es la de overflow pero retrasada un\n//-- periodo de reloj del sistema y que el biestable \n//-- llegue al estado de parado antes de que se \n//-- empiece otra transmision\n\nreg done=0;\n\nalways @(posedge clk)\n  done <= ov;\n",
                "params": [
                  {
                    "name": "BAUD"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "data",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "txmit"
                    }
                  ],
                  "out": [
                    {
                      "name": "TX"
                    },
                    {
                      "name": "busy"
                    },
                    {
                      "name": "done"
                    }
                  ]
                }
              },
              "position": {
                "x": 248,
                "y": 72
              },
              "size": {
                "width": 560,
                "height": 456
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "3238443f-338d-4796-b54a-c463c5f191aa",
                "port": "TX"
              },
              "target": {
                "block": "09701eaa-8d79-487f-b003-267e04095bb1",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "671d0b4d-317d-4aef-8422-8b9a400211a4",
                "port": "constant-out"
              },
              "target": {
                "block": "3238443f-338d-4796-b54a-c463c5f191aa",
                "port": "BAUD"
              }
            },
            {
              "source": {
                "block": "4c296e24-7312-407a-8fb0-f3a6d4feb3ab",
                "port": "out"
              },
              "target": {
                "block": "3238443f-338d-4796-b54a-c463c5f191aa",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "27183891-b385-412b-bc55-21df1dd0280e",
                "port": "out"
              },
              "target": {
                "block": "3238443f-338d-4796-b54a-c463c5f191aa",
                "port": "data"
              },
              "size": 8
            },
            {
              "source": {
                "block": "6bb28a95-e6e4-4044-9c22-c4404693b6b1",
                "port": "out"
              },
              "target": {
                "block": "3238443f-338d-4796-b54a-c463c5f191aa",
                "port": "txmit"
              }
            },
            {
              "source": {
                "block": "3238443f-338d-4796-b54a-c463c5f191aa",
                "port": "busy"
              },
              "target": {
                "block": "75d4695e-f445-4762-9ae9-c9bf0e51974f",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "3238443f-338d-4796-b54a-c463c5f191aa",
                "port": "done"
              },
              "target": {
                "block": "42306dfc-8702-4c9a-98d6-56b4c86fff21",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "898c883b6b630622eaf08e5a3c5ef8b417a962e7": {
      "package": {
        "name": "Pulsador-cambio",
        "version": "0.1",
        "description": "Pulsador de cambio. Cada vez que se aprieta cambia de estado",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20width=%22460.337%22%20height=%22255.947%22%20viewBox=%220%200%20121.79741%2067.719391%22%3E%3Cdefs%3E%3ClinearGradient%20gradientTransform=%22matrix(-.013%20-.01966%20.01932%20-.01493%20151.654%20290.082)%22%20gradientUnits=%22userSpaceOnUse%22%20y2=%222300.215%22%20x2=%226069.057%22%20y1=%222538.05%22%20x1=%225466.681%22%20id=%22b%22%20xlink:href=%22#a%22/%3E%3ClinearGradient%20id=%22a%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#c3875c%22/%3E%3Cstop%20offset=%22.48%22%20stop-color=%22#eccba3%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#fce0cb%22/%3E%3C/linearGradient%3E%3C/defs%3E%3Cg%20transform=%22translate(138.022%20-134.888)%22%3E%3Cpath%20d=%22M-117.19%20184.278a20.69%209.094%200%200%200-13.734%202.307l-5.434.006-1.284%205.482a20.69%209.094%200%200%200-.238%201.3%2020.69%209.094%200%200%200%2020.69%209.093%2020.69%209.094%200%200%200%2020.69-9.094%2020.69%209.094%200%200%200-.029-.351h.064l-1.277-6.47-5.778.005a20.69%209.094%200%200%200-13.67-2.278z%22%20fill=%22#333%22%20stroke=%22#000%22%20stroke-width=%22.282%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cellipse%20ry=%226.762%22%20rx=%2219.408%22%20cy=%22187.341%22%20cx=%22-117.074%22%20fill=%22#666%22%20stroke=%22#000%22%20stroke-width=%22.282%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cg%20transform=%22matrix(.1018%200%200%20.10181%20-158.528%20145.536)%22%20stroke=%22#000%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%20stroke-width=%222.772%22%3E%3Cellipse%20cx=%22406.087%22%20cy=%22399.216%22%20rx=%22184.221%22%20ry=%2272.858%22%20fill=%22green%22/%3E%3Cellipse%20cx=%22406.23%22%20cy=%22383.328%22%20rx=%22179.497%22%20ry=%2260.977%22%20fill=%22#0f0%22/%3E%3C/g%3E%3C/g%3E%3Cpath%20d=%22M126.16%20115.387c-1.523%201.514-2.14%203.307-2.023%205.326-.507%201.097-2.411%202.346-2.027%203.267-1.196%201.923-1.624%203.389-1.572%204.569-.544%201.24-.403%201.705-.348%202.268-2.266%203.497-4.092%208.255-5.878%2013.125-2.302%202.765-3.64%205.792-4.898%208.84-2.191%203.7-3.756%207.67-4.02%2011.394l-.265.558c2.996%203.107%204.946%201.524%207.018.747%206.637-3.112%209.504-8.52%2012.212-14.025.473-1.572%201.57-3.127%203.151-4.669%204.414-4.785%206.886-10.022%209.857-15.142.228-.428.58-1.032%201.143-1.941%201.675-1.795%203.418-4.997%205.132-7.612z%22%20fill=%22url(#b)%22%20fill-rule=%22evenodd%22%20stroke=%22#000%22%20stroke-width=%22.265%22%20transform=%22translate(-90.276%20-115.233)%22/%3E%3Cpath%20d=%22M18.486%2038.911c-2.362%202.823-3.506%206.298-4.228%2010.204.518.13%201.302-.444%202.155-1.196%202.575-6.067%201.848-7.142%202.073-9.008z%22%20fill=%22#f8ecf8%22%20fill-rule=%22evenodd%22%20stroke=%22#000%22%20stroke-width=%22.265%22/%3E%3Cpath%20d=%22M33.79%205.666c2.093-.057%203.853.53%205.373%201.582M31.832%208.759c2.001.286%203.946.663%205.428%201.788M30.331%2013.16c1.325-.48%203.02.099%204.83%201.005M29.98%2015.593l1.79.362%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%22.265%22/%3E%3Ctext%20style=%22line-height:1.25;-inkscape-font-specification:ubuntu%22%20x=%2295.623%22%20y=%22119.34%22%20font-weight=%22400%22%20font-size=%2232.213%22%20font-family=%22ubuntu%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%222.013%22%20transform=%22translate(-45.776%20-83.714)%22%3E%3Ctspan%20x=%2295.623%22%20y=%22119.34%22%20style=%22-inkscape-font-specification:'ubuntu%20Medium'%22%20font-weight=%22500%22%3E1%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M111.077%2010.046l6.423-6.173-.75%2020.27-19.855-.75%206.09-6.006s-4.671-4.922-12.93-5.005c-8.259-.084-13.264%204.588-13.264%204.588l.084-6.84-5.173-2.253s8.092-6.34%2018.853-5.84c10.762.5%2020.522%208.009%2020.522%208.009zM67.44%2056.694l-6.424%206.173.75-20.271%2019.855.75-6.09%206.007s4.672%204.921%2012.93%205.005c8.259.083%2013.264-4.588%2013.264-4.588l-.083%206.84%205.172%202.253s-8.092%206.34-18.853%205.84c-10.761-.501-20.522-8.01-20.522-8.01z%22%20fill=%22green%22%20stroke=%22#000%22%20stroke-width=%22.529%22/%3E%3Ctext%20style=%22line-height:1.25;-inkscape-font-specification:ubuntu%22%20x=%22150.662%22%20y=%22135.941%22%20font-weight=%22400%22%20font-size=%2232.213%22%20font-family=%22ubuntu%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%222.013%22%20transform=%22translate(-45.776%20-83.714)%22%3E%3Ctspan%20x=%22150.662%22%20y=%22135.941%22%20style=%22-inkscape-font-specification:'ubuntu%20Medium'%22%20font-weight=%22500%22%3E0%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "26db5867-23b2-4ada-869b-9cb39b23c299",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 40,
                "y": 192
              }
            },
            {
              "id": "d588e866-08ee-43f6-b30b-1df27884333c",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 784,
                "y": 360
              }
            },
            {
              "id": "1dce7109-e23a-42b6-a62c-d89c6fb0679e",
              "type": "basic.input",
              "data": {
                "name": "pin",
                "clock": false
              },
              "position": {
                "x": 56,
                "y": 536
              }
            },
            {
              "id": "524efa31-7f36-40e7-a3a7-6f8bf292a17f",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "0",
                "local": false
              },
              "position": {
                "x": 408,
                "y": -64
              }
            },
            {
              "id": "1026fd5a-6d94-4b04-9605-f283a770e98f",
              "type": "basic.code",
              "data": {
                "code": "// Sincronizacion. Evitar \n// problema de la metaestabilidad\n\nreg d2;\nreg r_in;\n\nalways @(posedge clk)\n d2 <= d;\n \nalways @(posedge clk)\n  r_in <= d2;\n\n\n//-- Debouncer Circuit\n//-- It produces a stable output when the\n//-- input signal is bouncing\n\nreg btn_prev = 0;\nreg btn_out_r = 0;\n\nreg [16:0] counter = 0;\n\n\nalways @(posedge clk) begin\n\n  //-- If btn_prev and btn_in are differents\n  if (btn_prev ^ r_in == 1'b1) begin\n    \n      //-- Reset the counter\n      counter <= 0;\n      \n      //-- Capture the button status\n      btn_prev <= r_in;\n  end\n    \n  //-- If no timeout, increase the counter\n  else if (counter[16] == 1'b0)\n      counter <= counter + 1;\n      \n  else\n    //-- Set the output to the stable value\n    btn_out_r <= btn_prev;\n\nend\n\n\n//-- Generar tic en flanco de subida del boton\nreg old;\nwire tic;\n\nalways @(posedge clk)\n  old <= btn_out_r;\n  \nassign tic = !old & btn_out_r;\n\n//-- Conectar a un biestable de tipo T\nreg q = INI;\n\nalways @(posedge clk)\n  if (tic)\n    q <= ~q;\n\n//-- Sacar el estado del biestable por la salida\nassign tb = q;\n\n\n\n",
                "params": [
                  {
                    "name": "INI"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "d"
                    }
                  ],
                  "out": [
                    {
                      "name": "tb"
                    }
                  ]
                }
              },
              "position": {
                "x": 224,
                "y": 48
              },
              "size": {
                "width": 456,
                "height": 688
              }
            },
            {
              "id": "2b0cb5ea-6a20-46c1-bdb5-dbc79e918f41",
              "type": "basic.info",
              "data": {
                "info": "Valor inicial del pulsador\n",
                "readonly": true
              },
              "position": {
                "x": 376,
                "y": -72
              },
              "size": {
                "width": 224,
                "height": 40
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "1dce7109-e23a-42b6-a62c-d89c6fb0679e",
                "port": "out"
              },
              "target": {
                "block": "1026fd5a-6d94-4b04-9605-f283a770e98f",
                "port": "d"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "26db5867-23b2-4ada-869b-9cb39b23c299",
                "port": "out"
              },
              "target": {
                "block": "1026fd5a-6d94-4b04-9605-f283a770e98f",
                "port": "clk"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "1026fd5a-6d94-4b04-9605-f283a770e98f",
                "port": "tb"
              },
              "target": {
                "block": "d588e866-08ee-43f6-b30b-1df27884333c",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "524efa31-7f36-40e7-a3a7-6f8bf292a17f",
                "port": "constant-out"
              },
              "target": {
                "block": "1026fd5a-6d94-4b04-9605-f283a770e98f",
                "port": "INI"
              }
            }
          ]
        }
      }
    }
  }
}