{
  "components": [
    {
      "kind": "SYM:inverter",
      "x": -1.0,
      "y": 0.0,
      "rotation": 0,
      "mirrored": false,
      "name": "X1",
      "properties": {},
      "nodes": [
        {
          "index": 0,
          "x": -1.0,
          "y": 4.0
        },
        {
          "index": 1,
          "x": -6.0,
          "y": 0.0
        },
        {
          "index": 2,
          "x": -1.0,
          "y": -4.0
        },
        {
          "index": 3,
          "x": 4.0,
          "y": 0.0
        }
      ]
    },
    {
      "kind": "Ground",
      "x": -1.0,
      "y": -5.0,
      "rotation": 0,
      "mirrored": false,
      "name": "",
      "properties": {},
      "nodes": [
        {
          "index": 0,
          "x": -1.0,
          "y": -4.0
        }
      ]
    },
    {
      "kind": "VDD",
      "x": -1.0,
      "y": 5.0,
      "rotation": 0,
      "mirrored": false,
      "name": "",
      "properties": {
        "value": "1.8"
      },
      "nodes": [
        {
          "index": 0,
          "x": -1.0,
          "y": 4.0
        }
      ]
    },
    {
      "kind": "Pin",
      "x": -12.0,
      "y": 0.0,
      "rotation": 0,
      "mirrored": false,
      "name": "P1",
      "properties": {
        "external": "ex0"
      },
      "nodes": [
        {
          "index": 0,
          "x": -11.0,
          "y": 0.0
        }
      ]
    },
    {
      "kind": "Pin",
      "x": 10.0,
      "y": 0.0,
      "rotation": 180,
      "mirrored": false,
      "name": "P2",
      "properties": {
        "external": "ex1"
      },
      "nodes": [
        {
          "index": 0,
          "x": 9.0,
          "y": 0.0
        }
      ]
    }
  ],
  "wires": [
    {
      "x1": 3.0,
      "y1": 0.0,
      "x2": 9.0,
      "y2": 0.0
    },
    {
      "x1": -5.0,
      "y1": 0.0,
      "x2": -11.0,
      "y2": 0.0
    }
  ],
  "labels": [],
  "connections": [
    {
      "component_index": 0,
      "kind": "SYM:inverter",
      "name": "X1",
      "position": [
        -1.0,
        0.0
      ],
      "nodes": [
        {
          "index": 0,
          "world": [
            -1.0,
            4.0
          ],
          "wire_indices": [],
          "shared_with": [
            [
              2,
              0
            ]
          ]
        },
        {
          "index": 1,
          "world": [
            -6.0,
            0.0
          ],
          "wire_indices": [
            1
          ],
          "shared_with": []
        },
        {
          "index": 2,
          "world": [
            -1.0,
            -4.0
          ],
          "wire_indices": [],
          "shared_with": [
            [
              1,
              0
            ]
          ]
        },
        {
          "index": 3,
          "world": [
            4.0,
            0.0
          ],
          "wire_indices": [
            0
          ],
          "shared_with": []
        }
      ]
    },
    {
      "component_index": 1,
      "kind": "Ground",
      "name": "",
      "position": [
        -1.0,
        -5.0
      ],
      "nodes": [
        {
          "index": 0,
          "world": [
            -1.0,
            -4.0
          ],
          "wire_indices": [],
          "shared_with": [
            [
              0,
              2
            ]
          ]
        }
      ]
    },
    {
      "component_index": 2,
      "kind": "VDD",
      "name": "",
      "position": [
        -1.0,
        5.0
      ],
      "nodes": [
        {
          "index": 0,
          "world": [
            -1.0,
            4.0
          ],
          "wire_indices": [],
          "shared_with": [
            [
              0,
              0
            ]
          ]
        }
      ]
    },
    {
      "component_index": 3,
      "kind": "Pin",
      "name": "P1",
      "position": [
        -12.0,
        0.0
      ],
      "nodes": [
        {
          "index": 0,
          "world": [
            -11.0,
            0.0
          ],
          "wire_indices": [
            1
          ],
          "shared_with": []
        }
      ]
    },
    {
      "component_index": 4,
      "kind": "Pin",
      "name": "P2",
      "position": [
        10.0,
        0.0
      ],
      "nodes": [
        {
          "index": 0,
          "world": [
            9.0,
            0.0
          ],
          "wire_indices": [
            0
          ],
          "shared_with": []
        }
      ]
    }
  ],
  "parameters": ""
}