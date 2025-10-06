#
# Copyright (C) YuqiaoZhang(HanetakaChou)
# 
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as published
# by the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Lesser General Public License for more details.
# 
# You should have received a copy of the GNU Lesser General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.
#

# https://developer.android.com/ndk/guides/android_mk

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := protobuf

LOCAL_SRC_FILES := \
	$(LOCAL_PATH)/../src/google/protobuf/any.cc \
	$(LOCAL_PATH)/../src/google/protobuf/any.pb.cc \
	$(LOCAL_PATH)/../src/google/protobuf/any_lite.cc \
	$(LOCAL_PATH)/../src/google/protobuf/api.pb.cc \
	$(LOCAL_PATH)/../src/google/protobuf/arena.cc \
	$(LOCAL_PATH)/../src/google/protobuf/arenastring.cc \
	$(LOCAL_PATH)/../src/google/protobuf/arenaz_sampler.cc \
	$(LOCAL_PATH)/../src/google/protobuf/arena_align.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/importer.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/parser.cc \
	$(LOCAL_PATH)/../src/google/protobuf/cpp_features.pb.cc \
	$(LOCAL_PATH)/../src/google/protobuf/descriptor.cc \
	$(LOCAL_PATH)/../src/google/protobuf/descriptor.pb.cc \
	$(LOCAL_PATH)/../src/google/protobuf/descriptor_database.cc \
	$(LOCAL_PATH)/../src/google/protobuf/duration.pb.cc \
	$(LOCAL_PATH)/../src/google/protobuf/dynamic_message.cc \
	$(LOCAL_PATH)/../src/google/protobuf/empty.pb.cc \
	$(LOCAL_PATH)/../src/google/protobuf/extension_set.cc \
	$(LOCAL_PATH)/../src/google/protobuf/extension_set_heavy.cc \
	$(LOCAL_PATH)/../src/google/protobuf/feature_resolver.cc \
	$(LOCAL_PATH)/../src/google/protobuf/field_mask.pb.cc \
	$(LOCAL_PATH)/../src/google/protobuf/generated_enum_util.cc \
	$(LOCAL_PATH)/../src/google/protobuf/generated_message_bases.cc \
	$(LOCAL_PATH)/../src/google/protobuf/generated_message_reflection.cc \
	$(LOCAL_PATH)/../src/google/protobuf/generated_message_tctable_full.cc \
	$(LOCAL_PATH)/../src/google/protobuf/generated_message_tctable_gen.cc \
	$(LOCAL_PATH)/../src/google/protobuf/generated_message_tctable_lite.cc \
	$(LOCAL_PATH)/../src/google/protobuf/generated_message_util.cc \
	$(LOCAL_PATH)/../src/google/protobuf/implicit_weak_message.cc \
	$(LOCAL_PATH)/../src/google/protobuf/inlined_string_field.cc \
	$(LOCAL_PATH)/../src/google/protobuf/internal_feature_helper.cc \
	$(LOCAL_PATH)/../src/google/protobuf/io/coded_stream.cc \
	$(LOCAL_PATH)/../src/google/protobuf/io/gzip_stream.cc \
	$(LOCAL_PATH)/../src/google/protobuf/io/io_win32.cc \
	$(LOCAL_PATH)/../src/google/protobuf/io/printer.cc \
	$(LOCAL_PATH)/../src/google/protobuf/io/strtod.cc \
	$(LOCAL_PATH)/../src/google/protobuf/io/tokenizer.cc \
	$(LOCAL_PATH)/../src/google/protobuf/io/zero_copy_sink.cc \
	$(LOCAL_PATH)/../src/google/protobuf/io/zero_copy_stream.cc \
	$(LOCAL_PATH)/../src/google/protobuf/io/zero_copy_stream_impl.cc \
	$(LOCAL_PATH)/../src/google/protobuf/io/zero_copy_stream_impl_lite.cc \
	$(LOCAL_PATH)/../src/google/protobuf/json/internal/lexer.cc \
	$(LOCAL_PATH)/../src/google/protobuf/json/internal/message_path.cc \
	$(LOCAL_PATH)/../src/google/protobuf/json/internal/parser.cc \
	$(LOCAL_PATH)/../src/google/protobuf/json/internal/unparser.cc \
	$(LOCAL_PATH)/../src/google/protobuf/json/internal/untyped_message.cc \
	$(LOCAL_PATH)/../src/google/protobuf/json/internal/writer.cc \
	$(LOCAL_PATH)/../src/google/protobuf/json/internal/zero_copy_buffered_stream.cc \
	$(LOCAL_PATH)/../src/google/protobuf/json/json.cc \
	$(LOCAL_PATH)/../src/google/protobuf/map.cc \
	$(LOCAL_PATH)/../src/google/protobuf/map_field.cc \
	$(LOCAL_PATH)/../src/google/protobuf/message.cc \
	$(LOCAL_PATH)/../src/google/protobuf/message_lite.cc \
	$(LOCAL_PATH)/../src/google/protobuf/micro_string.cc \
	$(LOCAL_PATH)/../src/google/protobuf/parse_context.cc \
	$(LOCAL_PATH)/../src/google/protobuf/port.cc \
	$(LOCAL_PATH)/../src/google/protobuf/raw_ptr.cc \
	$(LOCAL_PATH)/../src/google/protobuf/reflection_mode.cc \
	$(LOCAL_PATH)/../src/google/protobuf/reflection_ops.cc \
	$(LOCAL_PATH)/../src/google/protobuf/repeated_field.cc \
	$(LOCAL_PATH)/../src/google/protobuf/repeated_ptr_field.cc \
	$(LOCAL_PATH)/../src/google/protobuf/service.cc \
	$(LOCAL_PATH)/../src/google/protobuf/source_context.pb.cc \
	$(LOCAL_PATH)/../src/google/protobuf/struct.pb.cc \
	$(LOCAL_PATH)/../src/google/protobuf/stubs/common.cc \
	$(LOCAL_PATH)/../src/google/protobuf/text_format.cc \
	$(LOCAL_PATH)/../src/google/protobuf/timestamp.pb.cc \
	$(LOCAL_PATH)/../src/google/protobuf/type.pb.cc \
	$(LOCAL_PATH)/../src/google/protobuf/unknown_field_set.cc \
	$(LOCAL_PATH)/../src/google/protobuf/util/delimited_message_util.cc \
	$(LOCAL_PATH)/../src/google/protobuf/util/field_comparator.cc \
	$(LOCAL_PATH)/../src/google/protobuf/util/field_mask_util.cc \
	$(LOCAL_PATH)/../src/google/protobuf/util/message_differencer.cc \
	$(LOCAL_PATH)/../src/google/protobuf/util/time_util.cc \
	$(LOCAL_PATH)/../src/google/protobuf/util/type_resolver_util.cc \
	$(LOCAL_PATH)/../src/google/protobuf/wire_format.cc \
	$(LOCAL_PATH)/../src/google/protobuf/wire_format_lite.cc \
	$(LOCAL_PATH)/../src/google/protobuf/wrappers.pb.cc \
	$(LOCAL_PATH)/../third_party/utf8_range/utf8_range.c

LOCAL_CFLAGS :=

ifeq (armeabi-v7a,$(TARGET_ARCH_ABI))
LOCAL_ARM_MODE := arm
LOCAL_ARM_NEON := true
else ifeq (arm64-v8a,$(TARGET_ARCH_ABI))
LOCAL_CFLAGS +=
else ifeq (x86,$(TARGET_ARCH_ABI))
LOCAL_CFLAGS += -mf16c
LOCAL_CFLAGS += -mfma
LOCAL_CFLAGS += -mavx2
else ifeq (x86_64,$(TARGET_ARCH_ABI))
LOCAL_CFLAGS += -mf16c
LOCAL_CFLAGS += -mfma
LOCAL_CFLAGS += -mavx2
else
LOCAL_CFLAGS +=
endif

LOCAL_CFLAGS += -Wall
LOCAL_CFLAGS += -Werror=return-type

LOCAL_CFLAGS += -DGOOGLE_PROTOBUF_CMAKE_BUILD=1

LOCAL_C_INCLUDES :=
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../src
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../third_party/utf8_range
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../abseil-cpp

LOCAL_CPPFLAGS := 
LOCAL_CPPFLAGS += -std=c++20

LOCAL_CPP_FEATURES := 
LOCAL_CPP_FEATURES += rtti

include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE := protoc

LOCAL_SRC_FILES := \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/code_generator.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/code_generator_lite.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/command_line_interface.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/cpp/enum.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/cpp/extension.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/cpp/field.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/cpp/field_chunk.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/cpp/field_generators/cord_field.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/cpp/field_generators/enum_field.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/cpp/field_generators/map_field.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/cpp/field_generators/message_field.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/cpp/field_generators/primitive_field.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/cpp/field_generators/string_field.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/cpp/field_generators/string_view_field.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/cpp/file.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/cpp/generator.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/cpp/helpers.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/cpp/ifndef_guard.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/cpp/message.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/cpp/message_layout_helper.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/cpp/namespace_printer.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/cpp/parse_function_generator.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/cpp/service.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/cpp/tracker.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/csharp/csharp_doc_comment.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/csharp/csharp_enum.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/csharp/csharp_enum_field.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/csharp/csharp_field_base.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/csharp/csharp_generator.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/csharp/csharp_helpers.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/csharp/csharp_map_field.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/csharp/csharp_message.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/csharp/csharp_message_field.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/csharp/csharp_primitive_field.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/csharp/csharp_reflection_class.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/csharp/csharp_repeated_enum_field.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/csharp/csharp_repeated_message_field.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/csharp/csharp_repeated_primitive_field.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/csharp/csharp_source_generator_base.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/csharp/csharp_wrapper_field.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/csharp/names.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/java/context.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/java/doc_comment.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/java/field_common.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/java/file.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/java/full/enum.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/java/full/enum_field.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/java/full/extension.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/java/full/generator_factory.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/java/full/make_field_gens.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/java/full/map_field.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/java/full/message.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/java/full/message_builder.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/java/full/message_field.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/java/full/primitive_field.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/java/full/service.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/java/full/string_field.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/java/generator.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/java/helpers.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/java/internal_helpers.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/java/java_features.pb.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/java/lite/enum.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/java/lite/enum_field.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/java/lite/extension.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/java/lite/generator_factory.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/java/lite/make_field_gens.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/java/lite/map_field.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/java/lite/message.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/java/lite/message_builder.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/java/lite/message_field.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/java/lite/primitive_field.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/java/lite/string_field.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/java/message_serialization.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/java/names.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/java/name_resolver.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/java/shared_code_generator.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/kotlin/field.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/kotlin/file.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/kotlin/generator.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/kotlin/message.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/main.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/objectivec/enum.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/objectivec/enum_field.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/objectivec/extension.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/objectivec/field.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/objectivec/file.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/objectivec/generator.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/objectivec/helpers.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/objectivec/import_writer.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/objectivec/line_consumer.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/objectivec/map_field.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/objectivec/message.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/objectivec/message_field.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/objectivec/names.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/objectivec/oneof.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/objectivec/primitive_field.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/objectivec/tf_decode_data.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/php/names.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/php/php_generator.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/plugin.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/plugin.pb.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/python/generator.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/python/helpers.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/python/pyi_generator.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/retention.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/ruby/ruby_generator.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/rust/accessors/accessors.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/rust/accessors/accessor_case.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/rust/accessors/default_value.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/rust/accessors/map.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/rust/accessors/repeated_field.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/rust/accessors/singular_cord.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/rust/accessors/singular_message.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/rust/accessors/singular_scalar.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/rust/accessors/singular_string.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/rust/accessors/unsupported_field.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/rust/accessors/with_presence.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/rust/context.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/rust/crate_mapping.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/rust/enum.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/rust/generator.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/rust/message.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/rust/naming.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/rust/oneof.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/rust/relative_path.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/rust/rust_field_type.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/rust/rust_keywords.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/rust/upb_helpers.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/subprocess.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/versions.cc \
	$(LOCAL_PATH)/../src/google/protobuf/compiler/zip_writer.cc \
	$(LOCAL_PATH)/../upb/base/status.c \
	$(LOCAL_PATH)/../upb/hash/common.c \
	$(LOCAL_PATH)/../upb/json/decode.c \
	$(LOCAL_PATH)/../upb/json/encode.c \
	$(LOCAL_PATH)/../upb/lex/atoi.c \
	$(LOCAL_PATH)/../upb/lex/round_trip.c \
	$(LOCAL_PATH)/../upb/lex/strtod.c \
	$(LOCAL_PATH)/../upb/lex/unicode.c \
	$(LOCAL_PATH)/../upb/mem/alloc.c \
	$(LOCAL_PATH)/../upb/mem/arena.c \
	$(LOCAL_PATH)/../upb/message/accessors.c \
	$(LOCAL_PATH)/../upb/message/array.c \
	$(LOCAL_PATH)/../upb/message/compare.c \
	$(LOCAL_PATH)/../upb/message/compat.c \
	$(LOCAL_PATH)/../upb/message/copy.c \
	$(LOCAL_PATH)/../upb/message/internal/compare_unknown.c \
	$(LOCAL_PATH)/../upb/message/internal/extension.c \
	$(LOCAL_PATH)/../upb/message/internal/iterator.c \
	$(LOCAL_PATH)/../upb/message/internal/message.c \
	$(LOCAL_PATH)/../upb/message/map.c \
	$(LOCAL_PATH)/../upb/message/map_sorter.c \
	$(LOCAL_PATH)/../upb/message/merge.c \
	$(LOCAL_PATH)/../upb/message/message.c \
	$(LOCAL_PATH)/../upb/mini_descriptor/build_enum.c \
	$(LOCAL_PATH)/../upb/mini_descriptor/decode.c \
	$(LOCAL_PATH)/../upb/mini_descriptor/internal/base92.c \
	$(LOCAL_PATH)/../upb/mini_descriptor/internal/encode.c \
	$(LOCAL_PATH)/../upb/mini_descriptor/link.c \
	$(LOCAL_PATH)/../upb/mini_table/extension_registry.c \
	$(LOCAL_PATH)/../upb/mini_table/internal/message.c \
	$(LOCAL_PATH)/../upb/mini_table/message.c \
	$(LOCAL_PATH)/../upb/reflection/cmake/google/protobuf/descriptor.upb_minitable.c \
	$(LOCAL_PATH)/../upb/reflection/def_pool.c \
	$(LOCAL_PATH)/../upb/reflection/def_type.c \
	$(LOCAL_PATH)/../upb/reflection/desc_state.c \
	$(LOCAL_PATH)/../upb/reflection/enum_def.c \
	$(LOCAL_PATH)/../upb/reflection/enum_reserved_range.c \
	$(LOCAL_PATH)/../upb/reflection/enum_value_def.c \
	$(LOCAL_PATH)/../upb/reflection/extension_range.c \
	$(LOCAL_PATH)/../upb/reflection/field_def.c \
	$(LOCAL_PATH)/../upb/reflection/file_def.c \
	$(LOCAL_PATH)/../upb/reflection/internal/def_builder.c \
	$(LOCAL_PATH)/../upb/reflection/internal/strdup2.c \
	$(LOCAL_PATH)/../upb/reflection/message.c \
	$(LOCAL_PATH)/../upb/reflection/message_def.c \
	$(LOCAL_PATH)/../upb/reflection/message_reserved_range.c \
	$(LOCAL_PATH)/../upb/reflection/method_def.c \
	$(LOCAL_PATH)/../upb/reflection/oneof_def.c \
	$(LOCAL_PATH)/../upb/reflection/service_def.c \
	$(LOCAL_PATH)/../upb/text/debug_string.c \
	$(LOCAL_PATH)/../upb/text/encode.c \
	$(LOCAL_PATH)/../upb/text/internal/encode.c \
	$(LOCAL_PATH)/../upb/util/def_to_proto.c \
	$(LOCAL_PATH)/../upb/util/required_fields.c \
	$(LOCAL_PATH)/../upb/wire/byte_size.c \
	$(LOCAL_PATH)/../upb/wire/decode.c \
	$(LOCAL_PATH)/../upb/wire/decode_fast/select.c \
	$(LOCAL_PATH)/../upb/wire/encode.c \
	$(LOCAL_PATH)/../upb/wire/eps_copy_input_stream.c \
	$(LOCAL_PATH)/../upb/wire/internal/decoder.c \
	$(LOCAL_PATH)/../upb/wire/reader.c \
	$(LOCAL_PATH)/../upb_generator/common.cc \
	$(LOCAL_PATH)/../upb_generator/common/names.cc \
	$(LOCAL_PATH)/../upb_generator/file_layout.cc \
	$(LOCAL_PATH)/../upb_generator/minitable/names.cc \
	$(LOCAL_PATH)/../upb_generator/minitable/names_internal.cc \
	$(LOCAL_PATH)/../upb_generator/plugin.cc

LOCAL_CFLAGS :=

ifeq (armeabi-v7a,$(TARGET_ARCH_ABI))
LOCAL_ARM_MODE := arm
LOCAL_ARM_NEON := true
else ifeq (arm64-v8a,$(TARGET_ARCH_ABI))
LOCAL_CFLAGS +=
else ifeq (x86,$(TARGET_ARCH_ABI))
LOCAL_CFLAGS += -mavx2
else ifeq (x86_64,$(TARGET_ARCH_ABI))
LOCAL_CFLAGS += -mavx2
else
LOCAL_CFLAGS +=
endif

LOCAL_CFLAGS += -Wall
LOCAL_CFLAGS += -Werror=return-type

LOCAL_CFLAGS += -DGOOGLE_PROTOBUF_CMAKE_BUILD=1

LOCAL_C_INCLUDES :=
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../src
LOCAL_C_INCLUDES += $(LOCAL_PATH)/..
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../upb/reflection/cmake
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../third_party/utf8_range
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../abseil-cpp

LOCAL_CPPFLAGS := 
LOCAL_CPPFLAGS += -std=c++20

LOCAL_CPP_FEATURES := 
LOCAL_CPP_FEATURES += rtti

LOCAL_LDFLAGS :=
LOCAL_LDFLAGS += -Wl,--enable-new-dtags
LOCAL_LDFLAGS += -Wl,-rpath,\$$ORIGIN
LOCAL_LDFLAGS += -Wl,--version-script,$(LOCAL_PATH)/protoc.map

LOCAL_STATIC_LIBRARIES :=
LOCAL_STATIC_LIBRARIES += protobuf
LOCAL_STATIC_LIBRARIES += abseil-cpp

include $(BUILD_EXECUTABLE)
