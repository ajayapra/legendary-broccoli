# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from weather_station/Weather.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy

class Weather(genpy.Message):
  _md5sum = "404dfc49b0bcf6acc814bdb5efbe5cdd"
  _type = "weather_station/Weather"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """uint16 tempature
uint8 humidity
uint8 windspeed
time timestamp
"""
  __slots__ = ['tempature','humidity','windspeed','timestamp']
  _slot_types = ['uint16','uint8','uint8','time']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       tempature,humidity,windspeed,timestamp

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Weather, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.tempature is None:
        self.tempature = 0
      if self.humidity is None:
        self.humidity = 0
      if self.windspeed is None:
        self.windspeed = 0
      if self.timestamp is None:
        self.timestamp = genpy.Time()
    else:
      self.tempature = 0
      self.humidity = 0
      self.windspeed = 0
      self.timestamp = genpy.Time()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_struct_H2B2I.pack(_x.tempature, _x.humidity, _x.windspeed, _x.timestamp.secs, _x.timestamp.nsecs))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.timestamp is None:
        self.timestamp = genpy.Time()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.tempature, _x.humidity, _x.windspeed, _x.timestamp.secs, _x.timestamp.nsecs,) = _struct_H2B2I.unpack(str[start:end])
      self.timestamp.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_struct_H2B2I.pack(_x.tempature, _x.humidity, _x.windspeed, _x.timestamp.secs, _x.timestamp.nsecs))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.timestamp is None:
        self.timestamp = genpy.Time()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.tempature, _x.humidity, _x.windspeed, _x.timestamp.secs, _x.timestamp.nsecs,) = _struct_H2B2I.unpack(str[start:end])
      self.timestamp.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_H2B2I = struct.Struct("<H2B2I")
