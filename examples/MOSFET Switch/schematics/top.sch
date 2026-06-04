{
  "components": [
    {
      "kind": "SYM:nmos_switch",
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
          "y": -1.0
        },
        {
          "index": 1,
          "x": -4.0,
          "y": 1.0
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
      "y": -1.0,
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
          "y": -1.0
        }
      ]
    },
    {
      "kind": "Pin",
      "x": -7.0,
      "y": 1.0,
      "rotation": 0,
      "mirrored": false,
      "name": "CTRL",
      "properties": {
        "external": "ext_001"
      },
      "nodes": [
        {
          "index": 0,
          "x": -6.0,
          "y": 1.0
        }
      ]
    },
    {
      "kind": "Pin",
      "x": 5.0,
      "y": 0.0,
      "rotation": 0,
      "mirrored": false,
      "name": "OUT",
      "properties": {
        "external": "ext_002"
      },
      "nodes": [
        {
          "index": 0,
          "x": 6.0,
          "y": 0.0
        }
      ]
    }
  ],
  "wires": [
    {
      "x1": -6.0,
      "y1": -1.0,
      "x2": -4.0,
      "y2": -1.0
    },
    {
      "x1": -6.0,
      "y1": 1.0,
      "x2": -4.0,
      "y2": 1.0
    },
    {
      "x1": 4.0,
      "y1": 0.0,
      "x2": 6.0,
      "y2": 0.0
    }
  ],
  "labels": [
    {
      "net": "in",
      "x": -4.0,
      "y": -1.0
    },
    {
      "net": "ctrl",
      "x": -4.0,
      "y": 1.0
    },
    {
      "net": "out",
      "x": 4.0,
      "y": 0.0
    }
  ],
  "connections": []
}