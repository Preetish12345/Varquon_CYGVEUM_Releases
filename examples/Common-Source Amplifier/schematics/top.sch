{
  "components": [
    {
      "kind": "SYM:cs_amp",
      "x": 0.0,
      "y": 0.0,
      "rotation": 0,
      "mirrored": false,
      "name": "X1",
      "properties": {},
      "nodes": [
        {
          "index": 0,
          "x": 0.0,
          "y": 4.0
        },
        {
          "index": 1,
          "x": -4.0,
          "y": 0.0
        },
        {
          "index": 2,
          "x": 0.0,
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
      "kind": "Pin",
      "x": -7.0,
      "y": 0.0,
      "rotation": 0,
      "mirrored": false,
      "name": "IN",
      "properties": {
        "external": "ext_000"
      },
      "nodes": [
        {
          "index": 0,
          "x": -6.0,
          "y": 0.0
        }
      ]
    },
    {
      "kind": "Pin",
      "x": 7.0,
      "y": 0.0,
      "rotation": 180,
      "mirrored": false,
      "name": "OUT",
      "properties": {
        "external": "ext_001"
      },
      "nodes": [
        {
          "index": 0,
          "x": 6.0,
          "y": 0.0
        }
      ]
    },
    {
      "kind": "VDD",
      "x": 0.0,
      "y": 7.0,
      "rotation": 0,
      "mirrored": false,
      "name": "",
      "properties": {
        "value": "1.8"
      },
      "nodes": [
        {
          "index": 0,
          "x": 0.0,
          "y": 6.0
        }
      ]
    },
    {
      "kind": "Ground",
      "x": 0.0,
      "y": -7.0,
      "rotation": 0,
      "mirrored": false,
      "name": "",
      "properties": {},
      "nodes": [
        {
          "index": 0,
          "x": 0.0,
          "y": -6.0
        }
      ]
    }
  ],
  "wires": [
    {
      "x1": -6.0,
      "y1": 0.0,
      "x2": -4.0,
      "y2": 0.0
    },
    {
      "x1": 4.0,
      "y1": 0.0,
      "x2": 6.0,
      "y2": 0.0
    },
    {
      "x1": 0.0,
      "y1": 4.0,
      "x2": 0.0,
      "y2": 6.0
    },
    {
      "x1": 0.0,
      "y1": -4.0,
      "x2": 0.0,
      "y2": -6.0
    }
  ],
  "labels": [],
  "connections": [
    {
      "component_index": 0,
      "kind": "SYM:cs_amp",
      "name": "X1",
      "position": [
        0.0,
        0.0
      ],
      "nodes": [
        {
          "index": 0,
          "world": [
            0.0,
            4.0
          ],
          "wire_indices": [
            2
          ],
          "shared_with": []
        },
        {
          "index": 1,
          "world": [
            -4.0,
            0.0
          ],
          "wire_indices": [
            0
          ],
          "shared_with": []
        },
        {
          "index": 2,
          "world": [
            0.0,
            -4.0
          ],
          "wire_indices": [
            3
          ],
          "shared_with": []
        },
        {
          "index": 3,
          "world": [
            4.0,
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
      "component_index": 1,
      "kind": "Pin",
      "name": "IN",
      "position": [
        -7.0,
        0.0
      ],
      "nodes": [
        {
          "index": 0,
          "world": [
            -6.0,
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
      "component_index": 2,
      "kind": "Pin",
      "name": "OUT",
      "position": [
        7.0,
        0.0
      ],
      "nodes": [
        {
          "index": 0,
          "world": [
            6.0,
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
      "component_index": 3,
      "kind": "VDD",
      "name": "",
      "position": [
        0.0,
        7.0
      ],
      "nodes": [
        {
          "index": 0,
          "world": [
            0.0,
            6.0
          ],
          "wire_indices": [
            2
          ],
          "shared_with": []
        }
      ]
    },
    {
      "component_index": 4,
      "kind": "Ground",
      "name": "",
      "position": [
        0.0,
        -7.0
      ],
      "nodes": [
        {
          "index": 0,
          "world": [
            0.0,
            -6.0
          ],
          "wire_indices": [
            3
          ],
          "shared_with": []
        }
      ]
    }
  ],
  "parameters": ""
}