// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: tensorflow/core/framework/summary.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// Metadata associated with a series of Summary data
public struct Tensorflow_SummaryDescription: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".SummaryDescription"

  /// Hint on how plugins should process the data in this series.
  /// Supported values include "scalar", "histogram", "image", "audio"
  public var typeHint: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.typeHint)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.typeHint.isEmpty {
      try visitor.visitSingularStringField(value: self.typeHint, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

/// Serialization format for histogram module in
/// core/lib/histogram/histogram.h
public struct Tensorflow_HistogramProto: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".HistogramProto"

  public var min: Double = 0

  public var max: Double = 0

  public var num: Double = 0

  public var sum: Double = 0

  public var sumSquares: Double = 0

  /// Parallel arrays encoding the bucket boundaries and the bucket values.
  /// bucket(i) is the count for the bucket i.  The range for
  /// a bucket is:
  ///   i == 0:  -DBL_MAX .. bucket_limit(0)
  ///   i != 0:  bucket_limit(i-1) .. bucket_limit(i)
  public var bucketLimit: [Double] = []

  public var bucket: [Double] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularDoubleField(value: &self.min)
      case 2: try decoder.decodeSingularDoubleField(value: &self.max)
      case 3: try decoder.decodeSingularDoubleField(value: &self.num)
      case 4: try decoder.decodeSingularDoubleField(value: &self.sum)
      case 5: try decoder.decodeSingularDoubleField(value: &self.sumSquares)
      case 6: try decoder.decodeRepeatedDoubleField(value: &self.bucketLimit)
      case 7: try decoder.decodeRepeatedDoubleField(value: &self.bucket)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.min != 0 {
      try visitor.visitSingularDoubleField(value: self.min, fieldNumber: 1)
    }
    if self.max != 0 {
      try visitor.visitSingularDoubleField(value: self.max, fieldNumber: 2)
    }
    if self.num != 0 {
      try visitor.visitSingularDoubleField(value: self.num, fieldNumber: 3)
    }
    if self.sum != 0 {
      try visitor.visitSingularDoubleField(value: self.sum, fieldNumber: 4)
    }
    if self.sumSquares != 0 {
      try visitor.visitSingularDoubleField(value: self.sumSquares, fieldNumber: 5)
    }
    if !self.bucketLimit.isEmpty {
      try visitor.visitPackedDoubleField(value: self.bucketLimit, fieldNumber: 6)
    }
    if !self.bucket.isEmpty {
      try visitor.visitPackedDoubleField(value: self.bucket, fieldNumber: 7)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

/// A SummaryMetadata encapsulates information on which plugins are able to make
/// use of a certain summary value.
public struct Tensorflow_SummaryMetadata: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".SummaryMetadata"

  /// A list of plugin data. A single summary value instance may be used by more
  /// than 1 plugin.
  public var pluginData: [Tensorflow_SummaryMetadata.PluginData] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public struct PluginData: SwiftProtobuf.Message {
    public static let protoMessageName: String = Tensorflow_SummaryMetadata.protoMessageName + ".PluginData"

    /// The name of the plugin this data pertains to.
    public var pluginName: String = String()

    /// The content to store for the plugin. The best practice is for this JSON
    /// string to be the canonical JSON serialization of a protocol buffer
    /// defined by the plugin. Converting that protobuf to and from JSON is the
    /// responsibility of the plugin code, and is not enforced by
    /// TensorFlow/TensorBoard.
    public var content: String = String()

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}

    /// Used by the decoding initializers in the SwiftProtobuf library, not generally
    /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
    /// initializers are defined in the SwiftProtobuf library. See the Message and
    /// Message+*Additions` files.
    public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularStringField(value: &self.pluginName)
        case 2: try decoder.decodeSingularStringField(value: &self.content)
        default: break
        }
      }
    }

    /// Used by the encoding methods of the SwiftProtobuf library, not generally
    /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
    /// other serializer methods are defined in the SwiftProtobuf library. See the
    /// `Message` and `Message+*Additions` files.
    public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
      if !self.pluginName.isEmpty {
        try visitor.visitSingularStringField(value: self.pluginName, fieldNumber: 1)
      }
      if !self.content.isEmpty {
        try visitor.visitSingularStringField(value: self.content, fieldNumber: 2)
      }
      try unknownFields.traverse(visitor: &visitor)
    }
  }

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &self.pluginData)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.pluginData.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.pluginData, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

/// A Summary is a set of named values to be displayed by the
/// visualizer.
///
/// Summaries are produced regularly during training, as controlled by
/// the "summary_interval_secs" attribute of the training operation.
/// Summaries are also produced at the end of an evaluation.
public struct Tensorflow_Summary: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".Summary"

  /// Set of values for the summary.
  public var value: [Tensorflow_Summary.Value] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public struct Image: SwiftProtobuf.Message {
    public static let protoMessageName: String = Tensorflow_Summary.protoMessageName + ".Image"

    /// Dimensions of the image.
    public var height: Int32 = 0

    public var width: Int32 = 0

    /// Valid colorspace values are
    ///   1 - grayscale
    ///   2 - grayscale + alpha
    ///   3 - RGB
    ///   4 - RGBA
    ///   5 - DIGITAL_YUV
    ///   6 - BGRA
    public var colorspace: Int32 = 0

    /// Image data in encoded format.  All image formats supported by
    /// image_codec::CoderUtil can be stored here.
    public var encodedImageString: Data = SwiftProtobuf.Internal.emptyData

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}

    /// Used by the decoding initializers in the SwiftProtobuf library, not generally
    /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
    /// initializers are defined in the SwiftProtobuf library. See the Message and
    /// Message+*Additions` files.
    public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularInt32Field(value: &self.height)
        case 2: try decoder.decodeSingularInt32Field(value: &self.width)
        case 3: try decoder.decodeSingularInt32Field(value: &self.colorspace)
        case 4: try decoder.decodeSingularBytesField(value: &self.encodedImageString)
        default: break
        }
      }
    }

    /// Used by the encoding methods of the SwiftProtobuf library, not generally
    /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
    /// other serializer methods are defined in the SwiftProtobuf library. See the
    /// `Message` and `Message+*Additions` files.
    public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
      if self.height != 0 {
        try visitor.visitSingularInt32Field(value: self.height, fieldNumber: 1)
      }
      if self.width != 0 {
        try visitor.visitSingularInt32Field(value: self.width, fieldNumber: 2)
      }
      if self.colorspace != 0 {
        try visitor.visitSingularInt32Field(value: self.colorspace, fieldNumber: 3)
      }
      if !self.encodedImageString.isEmpty {
        try visitor.visitSingularBytesField(value: self.encodedImageString, fieldNumber: 4)
      }
      try unknownFields.traverse(visitor: &visitor)
    }
  }

  public struct Audio: SwiftProtobuf.Message {
    public static let protoMessageName: String = Tensorflow_Summary.protoMessageName + ".Audio"

    /// Sample rate of the audio in Hz.
    public var sampleRate: Float = 0

    /// Number of channels of audio.
    public var numChannels: Int64 = 0

    /// Length of the audio in frames (samples per channel).
    public var lengthFrames: Int64 = 0

    /// Encoded audio data and its associated RFC 2045 content type (e.g.
    /// "audio/wav").
    public var encodedAudioString: Data = SwiftProtobuf.Internal.emptyData

    public var contentType: String = String()

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}

    /// Used by the decoding initializers in the SwiftProtobuf library, not generally
    /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
    /// initializers are defined in the SwiftProtobuf library. See the Message and
    /// Message+*Additions` files.
    public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularFloatField(value: &self.sampleRate)
        case 2: try decoder.decodeSingularInt64Field(value: &self.numChannels)
        case 3: try decoder.decodeSingularInt64Field(value: &self.lengthFrames)
        case 4: try decoder.decodeSingularBytesField(value: &self.encodedAudioString)
        case 5: try decoder.decodeSingularStringField(value: &self.contentType)
        default: break
        }
      }
    }

    /// Used by the encoding methods of the SwiftProtobuf library, not generally
    /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
    /// other serializer methods are defined in the SwiftProtobuf library. See the
    /// `Message` and `Message+*Additions` files.
    public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
      if self.sampleRate != 0 {
        try visitor.visitSingularFloatField(value: self.sampleRate, fieldNumber: 1)
      }
      if self.numChannels != 0 {
        try visitor.visitSingularInt64Field(value: self.numChannels, fieldNumber: 2)
      }
      if self.lengthFrames != 0 {
        try visitor.visitSingularInt64Field(value: self.lengthFrames, fieldNumber: 3)
      }
      if !self.encodedAudioString.isEmpty {
        try visitor.visitSingularBytesField(value: self.encodedAudioString, fieldNumber: 4)
      }
      if !self.contentType.isEmpty {
        try visitor.visitSingularStringField(value: self.contentType, fieldNumber: 5)
      }
      try unknownFields.traverse(visitor: &visitor)
    }
  }

  public struct Value: SwiftProtobuf.Message {
    public static let protoMessageName: String = Tensorflow_Summary.protoMessageName + ".Value"

    /// This field is deprecated and will not be set.
    public var nodeName: String {
      get {return _storage._nodeName}
      set {_uniqueStorage()._nodeName = newValue}
    }

    /// Tag name for the data. Used by TensorBoard plugins to organize data. Tags
    /// are often organized by scope (which contains slashes to convey
    /// hierarchy). For example: foo/bar/0
    public var tag: String {
      get {return _storage._tag}
      set {_uniqueStorage()._tag = newValue}
    }

    /// Contains metadata on the summary value such as which plugins may use it.
    /// Take note that many summary values may lack a metadata field. This is
    /// because the FileWriter only keeps a metadata object on the first summary
    /// value with a certain tag for each tag. TensorBoard then remembers which
    /// tags are associated with which plugins. This saves space.
    public var metadata: Tensorflow_SummaryMetadata {
      get {return _storage._metadata ?? Tensorflow_SummaryMetadata()}
      set {_uniqueStorage()._metadata = newValue}
    }
    /// Returns true if `metadata` has been explicitly set.
    public var hasMetadata: Bool {return _storage._metadata != nil}
    /// Clears the value of `metadata`. Subsequent reads from it will return its default value.
    public mutating func clearMetadata() {_storage._metadata = nil}

    /// Value associated with the tag.
    public var value: OneOf_Value? {
      get {return _storage._value}
      set {_uniqueStorage()._value = newValue}
    }

    public var simpleValue: Float {
      get {
        if case .simpleValue(let v)? = _storage._value {return v}
        return 0
      }
      set {_uniqueStorage()._value = .simpleValue(newValue)}
    }

    public var obsoleteOldStyleHistogram: Data {
      get {
        if case .obsoleteOldStyleHistogram(let v)? = _storage._value {return v}
        return SwiftProtobuf.Internal.emptyData
      }
      set {_uniqueStorage()._value = .obsoleteOldStyleHistogram(newValue)}
    }

    public var image: Tensorflow_Summary.Image {
      get {
        if case .image(let v)? = _storage._value {return v}
        return Tensorflow_Summary.Image()
      }
      set {_uniqueStorage()._value = .image(newValue)}
    }

    public var histo: Tensorflow_HistogramProto {
      get {
        if case .histo(let v)? = _storage._value {return v}
        return Tensorflow_HistogramProto()
      }
      set {_uniqueStorage()._value = .histo(newValue)}
    }

    public var audio: Tensorflow_Summary.Audio {
      get {
        if case .audio(let v)? = _storage._value {return v}
        return Tensorflow_Summary.Audio()
      }
      set {_uniqueStorage()._value = .audio(newValue)}
    }

    public var tensor: Tensorflow_TensorProto {
      get {
        if case .tensor(let v)? = _storage._value {return v}
        return Tensorflow_TensorProto()
      }
      set {_uniqueStorage()._value = .tensor(newValue)}
    }

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    /// Value associated with the tag.
    public enum OneOf_Value: Equatable {
      case simpleValue(Float)
      case obsoleteOldStyleHistogram(Data)
      case image(Tensorflow_Summary.Image)
      case histo(Tensorflow_HistogramProto)
      case audio(Tensorflow_Summary.Audio)
      case tensor(Tensorflow_TensorProto)

      public static func ==(lhs: Tensorflow_Summary.Value.OneOf_Value, rhs: Tensorflow_Summary.Value.OneOf_Value) -> Bool {
        switch (lhs, rhs) {
        case (.simpleValue(let l), .simpleValue(let r)): return l == r
        case (.obsoleteOldStyleHistogram(let l), .obsoleteOldStyleHistogram(let r)): return l == r
        case (.image(let l), .image(let r)): return l == r
        case (.histo(let l), .histo(let r)): return l == r
        case (.audio(let l), .audio(let r)): return l == r
        case (.tensor(let l), .tensor(let r)): return l == r
        default: return false
        }
      }
    }

    public init() {}

    /// Used by the decoding initializers in the SwiftProtobuf library, not generally
    /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
    /// initializers are defined in the SwiftProtobuf library. See the Message and
    /// Message+*Additions` files.
    public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
      _ = _uniqueStorage()
      try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
        while let fieldNumber = try decoder.nextFieldNumber() {
          switch fieldNumber {
          case 1: try decoder.decodeSingularStringField(value: &_storage._tag)
          case 2:
            if _storage._value != nil {try decoder.handleConflictingOneOf()}
            var v: Float?
            try decoder.decodeSingularFloatField(value: &v)
            if let v = v {_storage._value = .simpleValue(v)}
          case 3:
            if _storage._value != nil {try decoder.handleConflictingOneOf()}
            var v: Data?
            try decoder.decodeSingularBytesField(value: &v)
            if let v = v {_storage._value = .obsoleteOldStyleHistogram(v)}
          case 4:
            var v: Tensorflow_Summary.Image?
            if let current = _storage._value {
              try decoder.handleConflictingOneOf()
              if case .image(let m) = current {v = m}
            }
            try decoder.decodeSingularMessageField(value: &v)
            if let v = v {_storage._value = .image(v)}
          case 5:
            var v: Tensorflow_HistogramProto?
            if let current = _storage._value {
              try decoder.handleConflictingOneOf()
              if case .histo(let m) = current {v = m}
            }
            try decoder.decodeSingularMessageField(value: &v)
            if let v = v {_storage._value = .histo(v)}
          case 6:
            var v: Tensorflow_Summary.Audio?
            if let current = _storage._value {
              try decoder.handleConflictingOneOf()
              if case .audio(let m) = current {v = m}
            }
            try decoder.decodeSingularMessageField(value: &v)
            if let v = v {_storage._value = .audio(v)}
          case 7: try decoder.decodeSingularStringField(value: &_storage._nodeName)
          case 8:
            var v: Tensorflow_TensorProto?
            if let current = _storage._value {
              try decoder.handleConflictingOneOf()
              if case .tensor(let m) = current {v = m}
            }
            try decoder.decodeSingularMessageField(value: &v)
            if let v = v {_storage._value = .tensor(v)}
          case 9: try decoder.decodeSingularMessageField(value: &_storage._metadata)
          default: break
          }
        }
      }
    }

    /// Used by the encoding methods of the SwiftProtobuf library, not generally
    /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
    /// other serializer methods are defined in the SwiftProtobuf library. See the
    /// `Message` and `Message+*Additions` files.
    public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
      try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
        if !_storage._tag.isEmpty {
          try visitor.visitSingularStringField(value: _storage._tag, fieldNumber: 1)
        }
        switch _storage._value {
        case .simpleValue(let v)?:
          try visitor.visitSingularFloatField(value: v, fieldNumber: 2)
        case .obsoleteOldStyleHistogram(let v)?:
          try visitor.visitSingularBytesField(value: v, fieldNumber: 3)
        case .image(let v)?:
          try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
        case .histo(let v)?:
          try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
        case .audio(let v)?:
          try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
        case nil: break
        default: break
        }
        if !_storage._nodeName.isEmpty {
          try visitor.visitSingularStringField(value: _storage._nodeName, fieldNumber: 7)
        }
        if case .tensor(let v)? = _storage._value {
          try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
        }
        if let v = _storage._metadata {
          try visitor.visitSingularMessageField(value: v, fieldNumber: 9)
        }
      }
      try unknownFields.traverse(visitor: &visitor)
    }

    fileprivate var _storage = _StorageClass.defaultInstance
  }

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &self.value)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.value.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.value, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "tensorflow"

extension Tensorflow_SummaryDescription: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "type_hint"),
  ]

  public func _protobuf_generated_isEqualTo(other: Tensorflow_SummaryDescription) -> Bool {
    if self.typeHint != other.typeHint {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Tensorflow_HistogramProto: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "min"),
    2: .same(proto: "max"),
    3: .same(proto: "num"),
    4: .same(proto: "sum"),
    5: .standard(proto: "sum_squares"),
    6: .standard(proto: "bucket_limit"),
    7: .same(proto: "bucket"),
  ]

  public func _protobuf_generated_isEqualTo(other: Tensorflow_HistogramProto) -> Bool {
    if self.min != other.min {return false}
    if self.max != other.max {return false}
    if self.num != other.num {return false}
    if self.sum != other.sum {return false}
    if self.sumSquares != other.sumSquares {return false}
    if self.bucketLimit != other.bucketLimit {return false}
    if self.bucket != other.bucket {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Tensorflow_SummaryMetadata: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "plugin_data"),
  ]

  public func _protobuf_generated_isEqualTo(other: Tensorflow_SummaryMetadata) -> Bool {
    if self.pluginData != other.pluginData {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Tensorflow_SummaryMetadata.PluginData: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "plugin_name"),
    2: .same(proto: "content"),
  ]

  public func _protobuf_generated_isEqualTo(other: Tensorflow_SummaryMetadata.PluginData) -> Bool {
    if self.pluginName != other.pluginName {return false}
    if self.content != other.content {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Tensorflow_Summary: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "value"),
  ]

  public func _protobuf_generated_isEqualTo(other: Tensorflow_Summary) -> Bool {
    if self.value != other.value {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Tensorflow_Summary.Image: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "height"),
    2: .same(proto: "width"),
    3: .same(proto: "colorspace"),
    4: .standard(proto: "encoded_image_string"),
  ]

  public func _protobuf_generated_isEqualTo(other: Tensorflow_Summary.Image) -> Bool {
    if self.height != other.height {return false}
    if self.width != other.width {return false}
    if self.colorspace != other.colorspace {return false}
    if self.encodedImageString != other.encodedImageString {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Tensorflow_Summary.Audio: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "sample_rate"),
    2: .standard(proto: "num_channels"),
    3: .standard(proto: "length_frames"),
    4: .standard(proto: "encoded_audio_string"),
    5: .standard(proto: "content_type"),
  ]

  public func _protobuf_generated_isEqualTo(other: Tensorflow_Summary.Audio) -> Bool {
    if self.sampleRate != other.sampleRate {return false}
    if self.numChannels != other.numChannels {return false}
    if self.lengthFrames != other.lengthFrames {return false}
    if self.encodedAudioString != other.encodedAudioString {return false}
    if self.contentType != other.contentType {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Tensorflow_Summary.Value: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    7: .standard(proto: "node_name"),
    1: .same(proto: "tag"),
    9: .same(proto: "metadata"),
    2: .standard(proto: "simple_value"),
    3: .standard(proto: "obsolete_old_style_histogram"),
    4: .same(proto: "image"),
    5: .same(proto: "histo"),
    6: .same(proto: "audio"),
    8: .same(proto: "tensor"),
  ]

  fileprivate class _StorageClass {
    var _nodeName: String = String()
    var _tag: String = String()
    var _metadata: Tensorflow_SummaryMetadata? = nil
    var _value: Tensorflow_Summary.Value.OneOf_Value?

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _nodeName = source._nodeName
      _tag = source._tag
      _metadata = source._metadata
      _value = source._value
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Tensorflow_Summary.Value) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_storage, other_storage) in
        if _storage._nodeName != other_storage._nodeName {return false}
        if _storage._tag != other_storage._tag {return false}
        if _storage._metadata != other_storage._metadata {return false}
        if _storage._value != other_storage._value {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}