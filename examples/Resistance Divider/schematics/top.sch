{
  "components": [
    {
      "kind": "SYM:divider",
      "x": 0.0,
      "y": 0.0,
      "rotation": 0,
      "mirrored": false,
      "name": "X1",
      "properties": {},
      "nodes": [
        {
          "index": 0,
          "x": -4.0,
          "y": 0.0
        },
        {
          "index": 1,
          "x": 0.0,
          "y": -4.0
        },
        {
          "index": 2,
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
      "name": "VIN",
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
      "x": 5.0,
      "y": 0.0,
      "rotation": 0,
      "mirrored": false,
      "name": "VOUT",
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
      "y1": -4.0,
      "x2": 0.0,
      "y2": -6.0
    }
  ],
  "labels": [
    {
      "net": "vin",
      "x": -4.0,
      "y": 0.0
    },
    {
      "net": "vout",
      "x": 4.0,
      "y": 0.0
    }
  ],
  "connections": []
}