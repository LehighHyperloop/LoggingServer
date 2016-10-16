This is the development staging grounds for the logging server.

This should run on any x86 machine running docker.

All parts of this may be subject to change.

------

## Sending Sensor Data

MQTT topics will follow the format `sensor/<location>/<measurement name>`.

This will transform to `sensor.<location>.<measurement name>` after being read by fluentd.

The format of the message should be as follows:

```
{
    "unit": "<unit of measure>",
    "value": "<value>"
}
```


#### Examples

```
sensor/front/temp
{
    "unit": "F",
    "value": "71"
}
```

```
sensor/accel1/accel
{
    "unit": "g",
    "value": {
        "x": "0.12",
        "y": "-0.01",
        "z": "1.0"
    }
}
```