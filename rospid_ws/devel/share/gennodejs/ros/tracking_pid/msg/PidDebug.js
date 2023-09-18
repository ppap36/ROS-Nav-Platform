// Auto-generated. Do not edit!

// (in-package tracking_pid.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class PidDebug {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.error = null;
      this.proportional = null;
      this.integral = null;
      this.derivative = null;
      this.feedforward = null;
      this.raw_error = null;
      this.scale_long_control = null;
    }
    else {
      if (initObj.hasOwnProperty('error')) {
        this.error = initObj.error
      }
      else {
        this.error = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('proportional')) {
        this.proportional = initObj.proportional
      }
      else {
        this.proportional = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('integral')) {
        this.integral = initObj.integral
      }
      else {
        this.integral = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('derivative')) {
        this.derivative = initObj.derivative
      }
      else {
        this.derivative = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('feedforward')) {
        this.feedforward = initObj.feedforward
      }
      else {
        this.feedforward = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('raw_error')) {
        this.raw_error = initObj.raw_error
      }
      else {
        this.raw_error = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('scale_long_control')) {
        this.scale_long_control = initObj.scale_long_control
      }
      else {
        this.scale_long_control = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PidDebug
    // Serialize message field [error]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.error, buffer, bufferOffset);
    // Serialize message field [proportional]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.proportional, buffer, bufferOffset);
    // Serialize message field [integral]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.integral, buffer, bufferOffset);
    // Serialize message field [derivative]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.derivative, buffer, bufferOffset);
    // Serialize message field [feedforward]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.feedforward, buffer, bufferOffset);
    // Serialize message field [raw_error]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.raw_error, buffer, bufferOffset);
    // Serialize message field [scale_long_control]
    bufferOffset = _serializer.float32(obj.scale_long_control, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PidDebug
    let len;
    let data = new PidDebug(null);
    // Deserialize message field [error]
    data.error = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [proportional]
    data.proportional = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [integral]
    data.integral = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [derivative]
    data.derivative = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [feedforward]
    data.feedforward = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [raw_error]
    data.raw_error = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [scale_long_control]
    data.scale_long_control = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 292;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tracking_pid/PidDebug';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9e084788031037458fcbdc7432057e27';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Twist error
    geometry_msgs/Twist proportional
    geometry_msgs/Twist integral
    geometry_msgs/Twist derivative
    geometry_msgs/Twist feedforward
    geometry_msgs/Twist raw_error
    float32 scale_long_control
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PidDebug(null);
    if (msg.error !== undefined) {
      resolved.error = geometry_msgs.msg.Twist.Resolve(msg.error)
    }
    else {
      resolved.error = new geometry_msgs.msg.Twist()
    }

    if (msg.proportional !== undefined) {
      resolved.proportional = geometry_msgs.msg.Twist.Resolve(msg.proportional)
    }
    else {
      resolved.proportional = new geometry_msgs.msg.Twist()
    }

    if (msg.integral !== undefined) {
      resolved.integral = geometry_msgs.msg.Twist.Resolve(msg.integral)
    }
    else {
      resolved.integral = new geometry_msgs.msg.Twist()
    }

    if (msg.derivative !== undefined) {
      resolved.derivative = geometry_msgs.msg.Twist.Resolve(msg.derivative)
    }
    else {
      resolved.derivative = new geometry_msgs.msg.Twist()
    }

    if (msg.feedforward !== undefined) {
      resolved.feedforward = geometry_msgs.msg.Twist.Resolve(msg.feedforward)
    }
    else {
      resolved.feedforward = new geometry_msgs.msg.Twist()
    }

    if (msg.raw_error !== undefined) {
      resolved.raw_error = geometry_msgs.msg.Twist.Resolve(msg.raw_error)
    }
    else {
      resolved.raw_error = new geometry_msgs.msg.Twist()
    }

    if (msg.scale_long_control !== undefined) {
      resolved.scale_long_control = msg.scale_long_control;
    }
    else {
      resolved.scale_long_control = 0.0
    }

    return resolved;
    }
};

module.exports = PidDebug;
