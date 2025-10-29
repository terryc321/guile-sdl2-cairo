Welcome to Node.js v20.19.4.
Type ".help" for more information.
> undefined
> >  enum at 2 : cairo_bool_t as int
 enum at 4 : ?? struct ??
 enum at 6 : ?? struct ??
 enum at 8 : ?? struct ??
;;; ENUM 10 err [object Object]
 enum at 12 : ?? struct ??
;;; ENUM 13 err [object Object]
;;; ENUM 15 err [object Object]
;;; ENUM 17 err [object Object]
;;; ENUM 19 err [object Object]
;;; ENUM 21 err [object Object]
;;; ENUM 23 err [object Object]
;;; ENUM 26 err [object Object]
;;; ENUM 27 err [object Object]
;;; ENUM 29 err [object Object]
;;; ENUM 43 err [object Object]
;;; ENUM 51 err [object Object]
;;; ENUM 54 err [object Object]
;;; ENUM 59 err [object Object]
;;; ENUM 62 err [object Object]
;;; ENUM 109 err [object Object]
;;; ENUM 111 err [object Object]
 enum at 117 : ?? struct ??
 enum at 119 : ?? struct ??
 enum at 120 : ?? struct ??
 enum at 123 : ?? struct ??
;;; ENUM 127 err [object Object]
 enum at 128 : ?? struct ??
 enum at 129 : ?? struct ??
;;; ENUM 131 err [object Object]
;;; ENUM 133 err [object Object]
;;; ENUM 135 err [object Object]
;;; ENUM 137 err [object Object]
;;; ENUM 139 err [object Object]
;;; ENUM 141 err [object Object]
 enum at 143 : ?? struct ??
;;; ENUM 190 err [object Object]
;;; ENUM 216 err [object Object]
;;; ENUM 217 err [object Object]
;;; ENUM 218 err [object Object]
;;; ENUM 219 err [object Object]
;;; ENUM 250 err [object Object]
;;; ENUM 252 err [object Object]
;;; ENUM 255 err [object Object]
;;; ENUM 264 err [object Object]
;;; ENUM 281 err [object Object]
;;; ENUM 283 err [object Object]
;;; ENUM 307 err [object Object]
;;; ENUM 343 err [object Object]
;;; ENUM 344 err [object Object]
;;; ENUM 345 err [object Object]
;;; ENUM 346 err [object Object]
;;; ENUM 347 err [object Object]
;;; ENUM 372 err [object Object]
;;; ENUM 387 err [object Object]
;;; ENUM 391 err [object Object]
 enum at 417 : ?? struct ??
;;; ENUM 419 err [object Object]
typedef BAD at 2 is [object Object]
typedef BAD at 4 is [object Object]
typedef BAD at 6 is [object Object]
typedef BAD at 8 is [object Object]
typedef BAD at 10 is [object Object]
typedef BAD at 12 is [object Object]
typedef BAD at 13 is [object Object]
typedef BAD at 15 is [object Object]
typedef at 17 : cairo_status_t is an int
typedef at 19 : cairo_content_t is an int
typedef at 21 : cairo_format_t is an int
typedef at 23 : cairo_dither_t is an int
typedef BAD at 26 is [object Object]
typedef BAD at 27 is [object Object]
typedef BAD at 29 is [object Object]
typedef at 43 : cairo_operator_t is an int
typedef at 51 : cairo_antialias_t is an int
typedef at 54 : cairo_fill_rule_t is an int
typedef at 59 : cairo_line_cap_t is an int
typedef at 62 : cairo_line_join_t is an int
typedef BAD at 109 is [object Object]
typedef BAD at 111 is [object Object]
typedef BAD at 117 is [object Object]
typedef BAD at 119 is [object Object]
typedef BAD at 120 is [object Object]
typedef BAD at 123 is [object Object]
typedef at 127 : cairo_text_cluster_flags_t is an int
typedef BAD at 128 is [object Object]
typedef BAD at 129 is [object Object]
typedef at 131 : cairo_font_slant_t is an int
typedef at 133 : cairo_font_weight_t is an int
typedef at 135 : cairo_subpixel_order_t is an int
typedef at 137 : cairo_hint_style_t is an int
typedef at 139 : cairo_hint_metrics_t is an int
typedef at 141 : cairo_color_mode_t is an int
typedef BAD at 143 is [object Object]
typedef at 190 : cairo_font_type_t is an int
typedef BAD at 216 is [object Object]
typedef BAD at 217 is [object Object]
typedef BAD at 218 is [object Object]
typedef BAD at 219 is [object Object]
typedef at 250 : cairo_path_data_type_t is an int
typedef BAD at 252 is [object Object]
typedef BAD at 255 is [object Object]
typedef at 264 : cairo_device_type_t is an int
typedef at 281 : cairo_surface_observer_mode_t is an int
typedef BAD at 283 is [object Object]
typedef at 307 : cairo_surface_type_t is an int
typedef BAD at 343 is [object Object]
typedef BAD at 344 is [object Object]
typedef BAD at 345 is [object Object]
typedef BAD at 346 is [object Object]
typedef BAD at 347 is [object Object]
typedef at 372 : cairo_pattern_type_t is an int
typedef at 387 : cairo_extend_t is an int
typedef at 391 : cairo_filter_t is an int
typedef BAD at 417 is [object Object]
typedef at 419 : cairo_region_overlap_t is an int

;; =================================== 

;; definition 24 bad.
{
  tag: 'function',
  name: 'cairo_pattern_set_dither',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:471:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'pattern', type: [Object] },
    { tag: 'parameter', name: 'dither', type: [Object] }
  ],
  'return-type': { tag: ':void' }
}


;; definition 24 from /usr/include/cairo/cairo.h:471:1
(define cairo-pattern-set-dither
   (foreign-library-function "libcairo" "cairo_pattern_set_dither" 
     #:return-type void       #:arg-types ('* ??type-tag?? ))

;; =================================== 
;; definition 33 bad.
{
  tag: 'function',
  name: 'cairo_get_reference_count',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:549:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [ { tag: 'parameter', name: 'cr', type: [Object] } ],
  'return-type': { tag: ':unsigned-int', 'bit-size': 32, 'bit-alignment': 32 }
}


;; definition 33 from /usr/include/cairo/cairo.h:549:1
(define cairo-get-reference-count
   (foreign-library-function "libcairo" "cairo_get_reference_count" 
     #:return-type ??ret??       #:arg-types ('* ))

;; =================================== 
;; definition 35 bad.
{
  tag: 'function',
  name: 'cairo_set_user_data',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:556:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'cr', type: [Object] },
    { tag: 'parameter', name: 'key', type: [Object] },
    { tag: 'parameter', name: 'user_data', type: [Object] },
    { tag: 'parameter', name: 'destroy', type: [Object] }
  ],
  'return-type': { tag: 'cairo_status_t' }
}


;; definition 35 from /usr/include/cairo/cairo.h:556:1
(define cairo-set-user-data
   (foreign-library-function "libcairo" "cairo_set_user_data" 
     #:return-type int       #:arg-types ('* '* '* ??type-tag?? ))

;; =================================== 
;; definition 39 bad.
{
  tag: 'function',
  name: 'cairo_push_group_with_content',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:571:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'cr', type: [Object] },
    { tag: 'parameter', name: 'content', type: [Object] }
  ],
  'return-type': { tag: ':void' }
}


;; definition 39 from /usr/include/cairo/cairo.h:571:1
(define cairo-push-group-with-content
   (foreign-library-function "libcairo" "cairo_push_group_with_content" 
     #:return-type void       #:arg-types ('* ??type-tag?? ))

;; =================================== 
;; definition 44 bad.
{
  tag: 'function',
  name: 'cairo_set_operator',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:699:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'cr', type: [Object] },
    { tag: 'parameter', name: 'op', type: [Object] }
  ],
  'return-type': { tag: ':void' }
}


;; definition 44 from /usr/include/cairo/cairo.h:699:1
(define cairo-set-operator
   (foreign-library-function "libcairo" "cairo_set_operator" 
     #:return-type void       #:arg-types ('* ??type-tag?? ))

;; =================================== 
;; definition 52 bad.
{
  tag: 'function',
  name: 'cairo_set_antialias',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:773:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'cr', type: [Object] },
    { tag: 'parameter', name: 'antialias', type: [Object] }
  ],
  'return-type': { tag: ':void' }
}


;; definition 52 from /usr/include/cairo/cairo.h:773:1
(define cairo-set-antialias
   (foreign-library-function "libcairo" "cairo_set_antialias" 
     #:return-type void       #:arg-types ('* ??type-tag?? ))

;; =================================== 
;; definition 55 bad.
{
  tag: 'function',
  name: 'cairo_set_fill_rule',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:808:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'cr', type: [Object] },
    { tag: 'parameter', name: 'fill_rule', type: [Object] }
  ],
  'return-type': { tag: ':void' }
}


;; definition 55 from /usr/include/cairo/cairo.h:808:1
(define cairo-set-fill-rule
   (foreign-library-function "libcairo" "cairo_set_fill_rule" 
     #:return-type void       #:arg-types ('* ??type-tag?? ))

;; =================================== 
;; definition 57 bad.
{
  tag: 'function',
  name: 'cairo_set_hairline',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:814:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'cr', type: [Object] },
    { tag: 'parameter', name: 'set_hairline', type: [Object] }
  ],
  'return-type': { tag: ':void' }
}


;; definition 57 from /usr/include/cairo/cairo.h:814:1
(define cairo-set-hairline
   (foreign-library-function "libcairo" "cairo_set_hairline" 
     #:return-type void       #:arg-types ('* ??type-tag?? ))

;; =================================== 
;; definition 60 bad.
{
  tag: 'function',
  name: 'cairo_set_line_cap',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:835:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'cr', type: [Object] },
    { tag: 'parameter', name: 'line_cap', type: [Object] }
  ],
  'return-type': { tag: ':void' }
}


;; definition 60 from /usr/include/cairo/cairo.h:835:1
(define cairo-set-line-cap
   (foreign-library-function "libcairo" "cairo_set_line_cap" 
     #:return-type void       #:arg-types ('* ??type-tag?? ))

;; =================================== 
;; definition 63 bad.
{
  tag: 'function',
  name: 'cairo_set_line_join',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:859:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'cr', type: [Object] },
    { tag: 'parameter', name: 'line_join', type: [Object] }
  ],
  'return-type': { tag: ':void' }
}


;; definition 63 from /usr/include/cairo/cairo.h:859:1
(define cairo-set-line-join
   (foreign-library-function "libcairo" "cairo_set_line_join" 
     #:return-type void       #:arg-types ('* ??type-tag?? ))

;; =================================== 
;; definition 150 bad.
{
  tag: 'function',
  name: 'cairo_font_options_hash',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:1484:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [ { tag: 'parameter', name: 'options', type: [Object] } ],
  'return-type': { tag: ':unsigned-long', 'bit-size': 64, 'bit-alignment': 64 }
}


;; definition 150 from /usr/include/cairo/cairo.h:1484:1
(define cairo-font-options-hash
   (foreign-library-function "libcairo" "cairo_font_options_hash" 
     #:return-type ??ret??       #:arg-types ('* ))

;; =================================== 
;; definition 151 bad.
{
  tag: 'function',
  name: 'cairo_font_options_set_antialias',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:1487:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'options', type: [Object] },
    { tag: 'parameter', name: 'antialias', type: [Object] }
  ],
  'return-type': { tag: ':void' }
}


;; definition 151 from /usr/include/cairo/cairo.h:1487:1
(define cairo-font-options-set-antialias
   (foreign-library-function "libcairo" "cairo_font_options_set_antialias" 
     #:return-type void       #:arg-types ('* ??type-tag?? ))

;; =================================== 
;; definition 153 bad.
{
  tag: 'function',
  name: 'cairo_font_options_set_subpixel_order',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:1493:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'options', type: [Object] },
    { tag: 'parameter', name: 'subpixel_order', type: [Object] }
  ],
  'return-type': { tag: ':void' }
}


;; definition 153 from /usr/include/cairo/cairo.h:1493:1
(define cairo-font-options-set-subpixel-order
   (foreign-library-function "libcairo" "cairo_font_options_set_subpixel_order" 
     #:return-type void       #:arg-types ('* ??type-tag?? ))

;; =================================== 
;; definition 155 bad.
{
  tag: 'function',
  name: 'cairo_font_options_set_hint_style',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:1499:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'options', type: [Object] },
    { tag: 'parameter', name: 'hint_style', type: [Object] }
  ],
  'return-type': { tag: ':void' }
}


;; definition 155 from /usr/include/cairo/cairo.h:1499:1
(define cairo-font-options-set-hint-style
   (foreign-library-function "libcairo" "cairo_font_options_set_hint_style" 
     #:return-type void       #:arg-types ('* ??type-tag?? ))

;; =================================== 
;; definition 157 bad.
{
  tag: 'function',
  name: 'cairo_font_options_set_hint_metrics',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:1505:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'options', type: [Object] },
    { tag: 'parameter', name: 'hint_metrics', type: [Object] }
  ],
  'return-type': { tag: ':void' }
}


;; definition 157 from /usr/include/cairo/cairo.h:1505:1
(define cairo-font-options-set-hint-metrics
   (foreign-library-function "libcairo" "cairo_font_options_set_hint_metrics" 
     #:return-type void       #:arg-types ('* ??type-tag?? ))

;; =================================== 
;; definition 161 bad.
{
  tag: 'function',
  name: 'cairo_font_options_set_color_mode',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:1520:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'options', type: [Object] },
    { tag: 'parameter', name: 'color_mode', type: [Object] }
  ],
  'return-type': { tag: ':void' }
}


;; definition 161 from /usr/include/cairo/cairo.h:1520:1
(define cairo-font-options-set-color-mode
   (foreign-library-function "libcairo" "cairo_font_options_set_color_mode" 
     #:return-type void       #:arg-types ('* ??type-tag?? ))

;; =================================== 
;; definition 163 bad.
{
  tag: 'function',
  name: 'cairo_font_options_get_color_palette',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:1527:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [ { tag: 'parameter', name: 'options', type: [Object] } ],
  'return-type': { tag: ':unsigned-int', 'bit-size': 32, 'bit-alignment': 32 }
}


;; definition 163 from /usr/include/cairo/cairo.h:1527:1
(define cairo-font-options-get-color-palette
   (foreign-library-function "libcairo" "cairo_font_options_get_color_palette" 
     #:return-type ??ret??       #:arg-types ('* ))

;; =================================== 
;; definition 164 bad.
{
  tag: 'function',
  name: 'cairo_font_options_set_color_palette',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:1530:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'options', type: [Object] },
    { tag: 'parameter', name: 'palette_index', type: [Object] }
  ],
  'return-type': { tag: ':void' }
}


;; definition 164 from /usr/include/cairo/cairo.h:1530:1
(define cairo-font-options-set-color-palette
   (foreign-library-function "libcairo" "cairo_font_options_set_color_palette" 
     #:return-type void       #:arg-types ('* ??type-tag?? ))

;; =================================== 
;; definition 165 bad.
{
  tag: 'function',
  name: 'cairo_font_options_set_custom_palette_color',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:1534:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'options', type: [Object] },
    { tag: 'parameter', name: 'index', type: [Object] },
    { tag: 'parameter', name: 'red', type: [Object] },
    { tag: 'parameter', name: 'green', type: [Object] },
    { tag: 'parameter', name: 'blue', type: [Object] },
    { tag: 'parameter', name: 'alpha', type: [Object] }
  ],
  'return-type': { tag: ':void' }
}


;; definition 165 from /usr/include/cairo/cairo.h:1534:1
(define cairo-font-options-set-custom-palette-color
   (foreign-library-function "libcairo" "cairo_font_options_set_custom_palette_color" 
     #:return-type void       #:arg-types ('* ??type-tag?? double double double double ))

;; =================================== 
;; definition 166 bad.
{
  tag: 'function',
  name: 'cairo_font_options_get_custom_palette_color',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:1540:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'options', type: [Object] },
    { tag: 'parameter', name: 'index', type: [Object] },
    { tag: 'parameter', name: 'red', type: [Object] },
    { tag: 'parameter', name: 'green', type: [Object] },
    { tag: 'parameter', name: 'blue', type: [Object] },
    { tag: 'parameter', name: 'alpha', type: [Object] }
  ],
  'return-type': { tag: 'cairo_status_t' }
}


;; definition 166 from /usr/include/cairo/cairo.h:1540:1
(define cairo-font-options-get-custom-palette-color
   (foreign-library-function "libcairo" "cairo_font_options_get_custom_palette_color" 
     #:return-type int       #:arg-types ('* ??type-tag?? '* '* '* '* ))

;; =================================== 
;; definition 167 bad.
{
  tag: 'function',
  name: 'cairo_select_font_face',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:1549:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'cr', type: [Object] },
    { tag: 'parameter', name: 'family', type: [Object] },
    { tag: 'parameter', name: 'slant', type: [Object] },
    { tag: 'parameter', name: 'weight', type: [Object] }
  ],
  'return-type': { tag: ':void' }
}


;; definition 167 from /usr/include/cairo/cairo.h:1549:1
(define cairo-select-font-face
   (foreign-library-function "libcairo" "cairo_select_font_face" 
     #:return-type void       #:arg-types ('* '* ??type-tag?? ??type-tag?? ))

;; =================================== 
;; definition 179 bad.
{
  tag: 'function',
  name: 'cairo_show_text_glyphs',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:1593:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'cr', type: [Object] },
    { tag: 'parameter', name: 'utf8', type: [Object] },
    { tag: 'parameter', name: 'utf8_len', type: [Object] },
    { tag: 'parameter', name: 'glyphs', type: [Object] },
    { tag: 'parameter', name: 'num_glyphs', type: [Object] },
    { tag: 'parameter', name: 'clusters', type: [Object] },
    { tag: 'parameter', name: 'num_clusters', type: [Object] },
    { tag: 'parameter', name: 'cluster_flags', type: [Object] }
  ],
  'return-type': { tag: ':void' }
}


;; definition 179 from /usr/include/cairo/cairo.h:1593:1
(define cairo-show-text-glyphs
   (foreign-library-function "libcairo" "cairo_show_text_glyphs" 
     #:return-type void       #:arg-types ('* '* int '* int '* int ??type-tag?? ))

;; =================================== 
;; definition 187 bad.
{
  tag: 'function',
  name: 'cairo_font_face_get_reference_count',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:1632:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [ { tag: 'parameter', name: 'font_face', type: [Object] } ],
  'return-type': { tag: ':unsigned-int', 'bit-size': 32, 'bit-alignment': 32 }
}


;; definition 187 from /usr/include/cairo/cairo.h:1632:1
(define cairo-font-face-get-reference-count
   (foreign-library-function "libcairo" "cairo_font_face_get_reference_count" 
     #:return-type ??ret??       #:arg-types ('* ))

;; =================================== 
;; definition 193 bad.
{
  tag: 'function',
  name: 'cairo_font_face_set_user_data',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:1695:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'font_face', type: [Object] },
    { tag: 'parameter', name: 'key', type: [Object] },
    { tag: 'parameter', name: 'user_data', type: [Object] },
    { tag: 'parameter', name: 'destroy', type: [Object] }
  ],
  'return-type': { tag: 'cairo_status_t' }
}


;; definition 193 from /usr/include/cairo/cairo.h:1695:1
(define cairo-font-face-set-user-data
   (foreign-library-function "libcairo" "cairo_font_face_set_user_data" 
     #:return-type int       #:arg-types ('* '* '* ??type-tag?? ))

;; =================================== 
;; definition 197 bad.
{
  tag: 'function',
  name: 'cairo_scaled_font_get_reference_count',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:1715:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [ { tag: 'parameter', name: 'scaled_font', type: [Object] } ],
  'return-type': { tag: ':unsigned-int', 'bit-size': 32, 'bit-alignment': 32 }
}


;; definition 197 from /usr/include/cairo/cairo.h:1715:1
(define cairo-scaled-font-get-reference-count
   (foreign-library-function "libcairo" "cairo_scaled_font_get_reference_count" 
     #:return-type ??ret??       #:arg-types ('* ))

;; =================================== 
;; definition 201 bad.
{
  tag: 'function',
  name: 'cairo_scaled_font_set_user_data',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:1728:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'scaled_font', type: [Object] },
    { tag: 'parameter', name: 'key', type: [Object] },
    { tag: 'parameter', name: 'user_data', type: [Object] },
    { tag: 'parameter', name: 'destroy', type: [Object] }
  ],
  'return-type': { tag: 'cairo_status_t' }
}


;; definition 201 from /usr/include/cairo/cairo.h:1728:1
(define cairo-scaled-font-set-user-data
   (foreign-library-function "libcairo" "cairo_scaled_font_set_user_data" 
     #:return-type int       #:arg-types ('* '* '* ??type-tag?? ))

;; =================================== 
;; definition 211 bad.
{
  tag: 'function',
  name: 'cairo_toy_font_face_create',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:1783:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'family', type: [Object] },
    { tag: 'parameter', name: 'slant', type: [Object] },
    { tag: 'parameter', name: 'weight', type: [Object] }
  ],
  'return-type': { tag: ':pointer', type: { tag: 'cairo_font_face_t' } }
}


;; definition 211 from /usr/include/cairo/cairo.h:1783:1
(define cairo-toy-font-face-create
   (foreign-library-function "libcairo" "cairo_toy_font_face_create" 
     #:return-type '*       #:arg-types ('* ??type-tag?? ??type-tag?? ))

;; =================================== 
;; definition 220 bad.
{
  tag: 'function',
  name: 'cairo_user_font_face_set_init_func',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2030:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'font_face', type: [Object] },
    { tag: 'parameter', name: 'init_func', type: [Object] }
  ],
  'return-type': { tag: ':void' }
}


;; definition 220 from /usr/include/cairo/cairo.h:2030:1
(define cairo-user-font-face-set-init-func
   (foreign-library-function "libcairo" "cairo_user_font_face_set_init_func" 
     #:return-type void       #:arg-types ('* ??type-tag?? ))

;; =================================== 
;; definition 221 bad.
{
  tag: 'function',
  name: 'cairo_user_font_face_set_render_glyph_func',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2034:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'font_face', type: [Object] },
    { tag: 'parameter', name: 'render_glyph_func', type: [Object] }
  ],
  'return-type': { tag: ':void' }
}


;; definition 221 from /usr/include/cairo/cairo.h:2034:1
(define cairo-user-font-face-set-render-glyph-func
   (foreign-library-function "libcairo" "cairo_user_font_face_set_render_glyph_func" 
     #:return-type void       #:arg-types ('* ??type-tag?? ))

;; =================================== 
;; definition 222 bad.
{
  tag: 'function',
  name: 'cairo_user_font_face_set_render_color_glyph_func',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2038:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'font_face', type: [Object] },
    { tag: 'parameter', name: 'render_glyph_func', type: [Object] }
  ],
  'return-type': { tag: ':void' }
}


;; definition 222 from /usr/include/cairo/cairo.h:2038:1
(define cairo-user-font-face-set-render-color-glyph-func
   (foreign-library-function "libcairo" "cairo_user_font_face_set_render_color_glyph_func" 
     #:return-type void       #:arg-types ('* ??type-tag?? ))

;; =================================== 
;; definition 223 bad.
{
  tag: 'function',
  name: 'cairo_user_font_face_set_text_to_glyphs_func',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2042:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'font_face', type: [Object] },
    { tag: 'parameter', name: 'text_to_glyphs_func', type: [Object] }
  ],
  'return-type': { tag: ':void' }
}


;; definition 223 from /usr/include/cairo/cairo.h:2042:1
(define cairo-user-font-face-set-text-to-glyphs-func
   (foreign-library-function "libcairo" "cairo_user_font_face_set_text_to_glyphs_func" 
     #:return-type void       #:arg-types ('* ??type-tag?? ))

;; =================================== 
;; definition 224 bad.
{
  tag: 'function',
  name: 'cairo_user_font_face_set_unicode_to_glyph_func',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2046:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'font_face', type: [Object] },
    { tag: 'parameter', name: 'unicode_to_glyph_func', type: [Object] }
  ],
  'return-type': { tag: ':void' }
}


;; definition 224 from /usr/include/cairo/cairo.h:2046:1
(define cairo-user-font-face-set-unicode-to-glyph-func
   (foreign-library-function "libcairo" "cairo_user_font_face_set_unicode_to_glyph_func" 
     #:return-type void       #:arg-types ('* ??type-tag?? ))

;; =================================== 
;; definition 225 bad.
{
  tag: 'function',
  name: 'cairo_user_font_face_get_init_func',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2052:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [ { tag: 'parameter', name: 'font_face', type: [Object] } ],
  'return-type': { tag: 'cairo_user_scaled_font_init_func_t' }
}


;; definition 225 from /usr/include/cairo/cairo.h:2052:1
(define cairo-user-font-face-get-init-func
   (foreign-library-function "libcairo" "cairo_user_font_face_get_init_func" 
     #:return-type ??ret??       #:arg-types ('* ))

;; =================================== 
;; definition 226 bad.
{
  tag: 'function',
  name: 'cairo_user_font_face_get_render_glyph_func',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2055:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [ { tag: 'parameter', name: 'font_face', type: [Object] } ],
  'return-type': { tag: 'cairo_user_scaled_font_render_glyph_func_t' }
}


;; definition 226 from /usr/include/cairo/cairo.h:2055:1
(define cairo-user-font-face-get-render-glyph-func
   (foreign-library-function "libcairo" "cairo_user_font_face_get_render_glyph_func" 
     #:return-type ??ret??       #:arg-types ('* ))

;; =================================== 
;; definition 227 bad.
{
  tag: 'function',
  name: 'cairo_user_font_face_get_render_color_glyph_func',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2058:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [ { tag: 'parameter', name: 'font_face', type: [Object] } ],
  'return-type': { tag: 'cairo_user_scaled_font_render_glyph_func_t' }
}


;; definition 227 from /usr/include/cairo/cairo.h:2058:1
(define cairo-user-font-face-get-render-color-glyph-func
   (foreign-library-function "libcairo" "cairo_user_font_face_get_render_color_glyph_func" 
     #:return-type ??ret??       #:arg-types ('* ))

;; =================================== 
;; definition 228 bad.
{
  tag: 'function',
  name: 'cairo_user_font_face_get_text_to_glyphs_func',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2061:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [ { tag: 'parameter', name: 'font_face', type: [Object] } ],
  'return-type': { tag: 'cairo_user_scaled_font_text_to_glyphs_func_t' }
}


;; definition 228 from /usr/include/cairo/cairo.h:2061:1
(define cairo-user-font-face-get-text-to-glyphs-func
   (foreign-library-function "libcairo" "cairo_user_font_face_get_text_to_glyphs_func" 
     #:return-type ??ret??       #:arg-types ('* ))

;; =================================== 
;; definition 229 bad.
{
  tag: 'function',
  name: 'cairo_user_font_face_get_unicode_to_glyph_func',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2064:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [ { tag: 'parameter', name: 'font_face', type: [Object] } ],
  'return-type': { tag: 'cairo_user_scaled_font_unicode_to_glyph_func_t' }
}


;; definition 229 from /usr/include/cairo/cairo.h:2064:1
(define cairo-user-font-face-get-unicode-to-glyph-func
   (foreign-library-function "libcairo" "cairo_user_font_face_get_unicode_to_glyph_func" 
     #:return-type ??ret??       #:arg-types ('* ))

;; =================================== 
;; definition 234 bad.
{
  tag: 'function',
  name: 'cairo_get_tolerance',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2081:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [ { tag: 'parameter', name: 'cr', type: [Object] } ],
  'return-type': { tag: ':double', 'bit-size': 64, 'bit-alignment': 64 }
}


;; definition 234 from /usr/include/cairo/cairo.h:2081:1
(define cairo-get-tolerance
   (foreign-library-function "libcairo" "cairo_get_tolerance" 
     #:return-type ??ret??       #:arg-types ('* ))

;; =================================== 
;; definition 239 bad.
{
  tag: 'function',
  name: 'cairo_get_line_width',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2096:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [ { tag: 'parameter', name: 'cr', type: [Object] } ],
  'return-type': { tag: ':double', 'bit-size': 64, 'bit-alignment': 64 }
}


;; definition 239 from /usr/include/cairo/cairo.h:2096:1
(define cairo-get-line-width
   (foreign-library-function "libcairo" "cairo_get_line_width" 
     #:return-type ??ret??       #:arg-types ('* ))

;; =================================== 
;; definition 243 bad.
{
  tag: 'function',
  name: 'cairo_get_miter_limit',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2108:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [ { tag: 'parameter', name: 'cr', type: [Object] } ],
  'return-type': { tag: ':double', 'bit-size': 64, 'bit-alignment': 64 }
}


;; definition 243 from /usr/include/cairo/cairo.h:2108:1
(define cairo-get-miter-limit
   (foreign-library-function "libcairo" "cairo_get_miter_limit" 
     #:return-type ??ret??       #:arg-types ('* ))

;; =================================== 
;; definition 261 bad.
{
  tag: 'function',
  name: 'cairo_status_to_string',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2270:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [ { tag: 'parameter', name: 'status', type: [Object] } ],
  'return-type': {
    tag: ':pointer',
    type: { tag: ':char', 'bit-size': 8, 'bit-alignment': 8 }
  }
}


;; definition 261 from /usr/include/cairo/cairo.h:2270:1
(define cairo-status-to-string
   (foreign-library-function "libcairo" "cairo_status_to_string" 
     #:return-type '*       #:arg-types (??type-tag?? ))

;; =================================== 
;; definition 272 bad.
{
  tag: 'function',
  name: 'cairo_device_get_reference_count',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2343:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [ { tag: 'parameter', name: 'device', type: [Object] } ],
  'return-type': { tag: ':unsigned-int', 'bit-size': 32, 'bit-alignment': 32 }
}


;; definition 272 from /usr/include/cairo/cairo.h:2343:1
(define cairo-device-get-reference-count
   (foreign-library-function "libcairo" "cairo_device_get_reference_count" 
     #:return-type ??ret??       #:arg-types ('* ))

;; =================================== 
;; definition 274 bad.
{
  tag: 'function',
  name: 'cairo_device_set_user_data',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2350:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'device', type: [Object] },
    { tag: 'parameter', name: 'key', type: [Object] },
    { tag: 'parameter', name: 'user_data', type: [Object] },
    { tag: 'parameter', name: 'destroy', type: [Object] }
  ],
  'return-type': { tag: 'cairo_status_t' }
}


;; definition 274 from /usr/include/cairo/cairo.h:2350:1
(define cairo-device-set-user-data
   (foreign-library-function "libcairo" "cairo_device_set_user_data" 
     #:return-type int       #:arg-types ('* '* '* ??type-tag?? ))

;; =================================== 
;; definition 275 bad.
{
  tag: 'function',
  name: 'cairo_surface_create_similar',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2359:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'other', type: [Object] },
    { tag: 'parameter', name: 'content', type: [Object] },
    { tag: 'parameter', name: 'width', type: [Object] },
    { tag: 'parameter', name: 'height', type: [Object] }
  ],
  'return-type': { tag: ':pointer', type: { tag: 'cairo_surface_t' } }
}


;; definition 275 from /usr/include/cairo/cairo.h:2359:1
(define cairo-surface-create-similar
   (foreign-library-function "libcairo" "cairo_surface_create_similar" 
     #:return-type '*       #:arg-types ('* ??type-tag?? int int ))

;; =================================== 
;; definition 276 bad.
{
  tag: 'function',
  name: 'cairo_surface_create_similar_image',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2365:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'other', type: [Object] },
    { tag: 'parameter', name: 'format', type: [Object] },
    { tag: 'parameter', name: 'width', type: [Object] },
    { tag: 'parameter', name: 'height', type: [Object] }
  ],
  'return-type': { tag: ':pointer', type: { tag: 'cairo_surface_t' } }
}


;; definition 276 from /usr/include/cairo/cairo.h:2365:1
(define cairo-surface-create-similar-image
   (foreign-library-function "libcairo" "cairo_surface_create_similar_image" 
     #:return-type '*       #:arg-types ('* ??type-tag?? int int ))

;; =================================== 
;; definition 282 bad.
{
  tag: 'function',
  name: 'cairo_surface_create_observer',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2400:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'target', type: [Object] },
    { tag: 'parameter', name: 'mode', type: [Object] }
  ],
  'return-type': { tag: ':pointer', type: { tag: 'cairo_surface_t' } }
}


;; definition 282 from /usr/include/cairo/cairo.h:2400:1
(define cairo-surface-create-observer
   (foreign-library-function "libcairo" "cairo_surface_create_observer" 
     #:return-type '*       #:arg-types ('* ??type-tag?? ))

;; =================================== 
;; definition 284 bad.
{
  tag: 'function',
  name: 'cairo_surface_observer_add_paint_callback',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2418:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'abstract_surface', type: [Object] },
    { tag: 'parameter', name: 'func', type: [Object] },
    { tag: 'parameter', name: 'data', type: [Object] }
  ],
  'return-type': { tag: 'cairo_status_t' }
}


;; definition 284 from /usr/include/cairo/cairo.h:2418:1
(define cairo-surface-observer-add-paint-callback
   (foreign-library-function "libcairo" "cairo_surface_observer_add_paint_callback" 
     #:return-type int       #:arg-types ('* ??type-tag?? '* ))

;; =================================== 
;; definition 285 bad.
{
  tag: 'function',
  name: 'cairo_surface_observer_add_mask_callback',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2423:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'abstract_surface', type: [Object] },
    { tag: 'parameter', name: 'func', type: [Object] },
    { tag: 'parameter', name: 'data', type: [Object] }
  ],
  'return-type': { tag: 'cairo_status_t' }
}


;; definition 285 from /usr/include/cairo/cairo.h:2423:1
(define cairo-surface-observer-add-mask-callback
   (foreign-library-function "libcairo" "cairo_surface_observer_add_mask_callback" 
     #:return-type int       #:arg-types ('* ??type-tag?? '* ))

;; =================================== 
;; definition 286 bad.
{
  tag: 'function',
  name: 'cairo_surface_observer_add_fill_callback',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2428:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'abstract_surface', type: [Object] },
    { tag: 'parameter', name: 'func', type: [Object] },
    { tag: 'parameter', name: 'data', type: [Object] }
  ],
  'return-type': { tag: 'cairo_status_t' }
}


;; definition 286 from /usr/include/cairo/cairo.h:2428:1
(define cairo-surface-observer-add-fill-callback
   (foreign-library-function "libcairo" "cairo_surface_observer_add_fill_callback" 
     #:return-type int       #:arg-types ('* ??type-tag?? '* ))

;; =================================== 
;; definition 287 bad.
{
  tag: 'function',
  name: 'cairo_surface_observer_add_stroke_callback',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2433:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'abstract_surface', type: [Object] },
    { tag: 'parameter', name: 'func', type: [Object] },
    { tag: 'parameter', name: 'data', type: [Object] }
  ],
  'return-type': { tag: 'cairo_status_t' }
}


;; definition 287 from /usr/include/cairo/cairo.h:2433:1
(define cairo-surface-observer-add-stroke-callback
   (foreign-library-function "libcairo" "cairo_surface_observer_add_stroke_callback" 
     #:return-type int       #:arg-types ('* ??type-tag?? '* ))

;; =================================== 
;; definition 288 bad.
{
  tag: 'function',
  name: 'cairo_surface_observer_add_glyphs_callback',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2438:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'abstract_surface', type: [Object] },
    { tag: 'parameter', name: 'func', type: [Object] },
    { tag: 'parameter', name: 'data', type: [Object] }
  ],
  'return-type': { tag: 'cairo_status_t' }
}


;; definition 288 from /usr/include/cairo/cairo.h:2438:1
(define cairo-surface-observer-add-glyphs-callback
   (foreign-library-function "libcairo" "cairo_surface_observer_add_glyphs_callback" 
     #:return-type int       #:arg-types ('* ??type-tag?? '* ))

;; =================================== 
;; definition 289 bad.
{
  tag: 'function',
  name: 'cairo_surface_observer_add_flush_callback',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2443:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'abstract_surface', type: [Object] },
    { tag: 'parameter', name: 'func', type: [Object] },
    { tag: 'parameter', name: 'data', type: [Object] }
  ],
  'return-type': { tag: 'cairo_status_t' }
}


;; definition 289 from /usr/include/cairo/cairo.h:2443:1
(define cairo-surface-observer-add-flush-callback
   (foreign-library-function "libcairo" "cairo_surface_observer_add_flush_callback" 
     #:return-type int       #:arg-types ('* ??type-tag?? '* ))

;; =================================== 
;; definition 290 bad.
{
  tag: 'function',
  name: 'cairo_surface_observer_add_finish_callback',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2448:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'abstract_surface', type: [Object] },
    { tag: 'parameter', name: 'func', type: [Object] },
    { tag: 'parameter', name: 'data', type: [Object] }
  ],
  'return-type': { tag: 'cairo_status_t' }
}


;; definition 290 from /usr/include/cairo/cairo.h:2448:1
(define cairo-surface-observer-add-finish-callback
   (foreign-library-function "libcairo" "cairo_surface_observer_add_finish_callback" 
     #:return-type int       #:arg-types ('* ??type-tag?? '* ))

;; =================================== 
;; definition 291 bad.
{
  tag: 'function',
  name: 'cairo_surface_observer_print',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2453:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'abstract_surface', type: [Object] },
    { tag: 'parameter', name: 'write_func', type: [Object] },
    { tag: 'parameter', name: 'closure', type: [Object] }
  ],
  'return-type': { tag: 'cairo_status_t' }
}


;; definition 291 from /usr/include/cairo/cairo.h:2453:1
(define cairo-surface-observer-print
   (foreign-library-function "libcairo" "cairo_surface_observer_print" 
     #:return-type int       #:arg-types ('* ??type-tag?? '* ))

;; =================================== 
;; definition 292 bad.
{
  tag: 'function',
  name: 'cairo_surface_observer_elapsed',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2457:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [ { tag: 'parameter', name: 'abstract_surface', type: [Object] } ],
  'return-type': { tag: ':double', 'bit-size': 64, 'bit-alignment': 64 }
}


;; definition 292 from /usr/include/cairo/cairo.h:2457:1
(define cairo-surface-observer-elapsed
   (foreign-library-function "libcairo" "cairo_surface_observer_elapsed" 
     #:return-type ??ret??       #:arg-types ('* ))

;; =================================== 
;; definition 293 bad.
{
  tag: 'function',
  name: 'cairo_device_observer_print',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2460:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'abstract_device', type: [Object] },
    { tag: 'parameter', name: 'write_func', type: [Object] },
    { tag: 'parameter', name: 'closure', type: [Object] }
  ],
  'return-type': { tag: 'cairo_status_t' }
}


;; definition 293 from /usr/include/cairo/cairo.h:2460:1
(define cairo-device-observer-print
   (foreign-library-function "libcairo" "cairo_device_observer_print" 
     #:return-type int       #:arg-types ('* ??type-tag?? '* ))

;; =================================== 
;; definition 294 bad.
{
  tag: 'function',
  name: 'cairo_device_observer_elapsed',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2465:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [ { tag: 'parameter', name: 'abstract_device', type: [Object] } ],
  'return-type': { tag: ':double', 'bit-size': 64, 'bit-alignment': 64 }
}


;; definition 294 from /usr/include/cairo/cairo.h:2465:1
(define cairo-device-observer-elapsed
   (foreign-library-function "libcairo" "cairo_device_observer_elapsed" 
     #:return-type ??ret??       #:arg-types ('* ))

;; =================================== 
;; definition 295 bad.
{
  tag: 'function',
  name: 'cairo_device_observer_paint_elapsed',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2468:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [ { tag: 'parameter', name: 'abstract_device', type: [Object] } ],
  'return-type': { tag: ':double', 'bit-size': 64, 'bit-alignment': 64 }
}


;; definition 295 from /usr/include/cairo/cairo.h:2468:1
(define cairo-device-observer-paint-elapsed
   (foreign-library-function "libcairo" "cairo_device_observer_paint_elapsed" 
     #:return-type ??ret??       #:arg-types ('* ))

;; =================================== 
;; definition 296 bad.
{
  tag: 'function',
  name: 'cairo_device_observer_mask_elapsed',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2471:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [ { tag: 'parameter', name: 'abstract_device', type: [Object] } ],
  'return-type': { tag: ':double', 'bit-size': 64, 'bit-alignment': 64 }
}


;; definition 296 from /usr/include/cairo/cairo.h:2471:1
(define cairo-device-observer-mask-elapsed
   (foreign-library-function "libcairo" "cairo_device_observer_mask_elapsed" 
     #:return-type ??ret??       #:arg-types ('* ))

;; =================================== 
;; definition 297 bad.
{
  tag: 'function',
  name: 'cairo_device_observer_fill_elapsed',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2474:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [ { tag: 'parameter', name: 'abstract_device', type: [Object] } ],
  'return-type': { tag: ':double', 'bit-size': 64, 'bit-alignment': 64 }
}


;; definition 297 from /usr/include/cairo/cairo.h:2474:1
(define cairo-device-observer-fill-elapsed
   (foreign-library-function "libcairo" "cairo_device_observer_fill_elapsed" 
     #:return-type ??ret??       #:arg-types ('* ))

;; =================================== 
;; definition 298 bad.
{
  tag: 'function',
  name: 'cairo_device_observer_stroke_elapsed',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2477:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [ { tag: 'parameter', name: 'abstract_device', type: [Object] } ],
  'return-type': { tag: ':double', 'bit-size': 64, 'bit-alignment': 64 }
}


;; definition 298 from /usr/include/cairo/cairo.h:2477:1
(define cairo-device-observer-stroke-elapsed
   (foreign-library-function "libcairo" "cairo_device_observer_stroke_elapsed" 
     #:return-type ??ret??       #:arg-types ('* ))

;; =================================== 
;; definition 299 bad.
{
  tag: 'function',
  name: 'cairo_device_observer_glyphs_elapsed',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2480:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [ { tag: 'parameter', name: 'abstract_device', type: [Object] } ],
  'return-type': { tag: ':double', 'bit-size': 64, 'bit-alignment': 64 }
}


;; definition 299 from /usr/include/cairo/cairo.h:2480:1
(define cairo-device-observer-glyphs-elapsed
   (foreign-library-function "libcairo" "cairo_device_observer_glyphs_elapsed" 
     #:return-type ??ret??       #:arg-types ('* ))

;; =================================== 
;; definition 304 bad.
{
  tag: 'function',
  name: 'cairo_surface_get_reference_count',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2495:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [ { tag: 'parameter', name: 'surface', type: [Object] } ],
  'return-type': { tag: ':unsigned-int', 'bit-size': 32, 'bit-alignment': 32 }
}


;; definition 304 from /usr/include/cairo/cairo.h:2495:1
(define cairo-surface-get-reference-count
   (foreign-library-function "libcairo" "cairo_surface_get_reference_count" 
     #:return-type ??ret??       #:arg-types ('* ))

;; =================================== 
;; definition 311 bad.
{
  tag: 'function',
  name: 'cairo_surface_write_to_png_stream',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2604:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'surface', type: [Object] },
    { tag: 'parameter', name: 'write_func', type: [Object] },
    { tag: 'parameter', name: 'closure', type: [Object] }
  ],
  'return-type': { tag: 'cairo_status_t' }
}


;; definition 311 from /usr/include/cairo/cairo.h:2604:1
(define cairo-surface-write-to-png-stream
   (foreign-library-function "libcairo" "cairo_surface_write_to_png_stream" 
     #:return-type int       #:arg-types ('* ??type-tag?? '* ))

;; =================================== 
;; definition 313 bad.
{
  tag: 'function',
  name: 'cairo_surface_set_user_data',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2615:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'surface', type: [Object] },
    { tag: 'parameter', name: 'key', type: [Object] },
    { tag: 'parameter', name: 'user_data', type: [Object] },
    { tag: 'parameter', name: 'destroy', type: [Object] }
  ],
  'return-type': { tag: 'cairo_status_t' }
}


;; definition 313 from /usr/include/cairo/cairo.h:2615:1
(define cairo-surface-set-user-data
   (foreign-library-function "libcairo" "cairo_surface_set_user_data" 
     #:return-type int       #:arg-types ('* '* '* ??type-tag?? ))

;; =================================== 
;; definition 315 bad.
{
  tag: 'function',
  name: 'cairo_surface_set_mime_data',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2640:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'surface', type: [Object] },
    { tag: 'parameter', name: 'mime_type', type: [Object] },
    { tag: 'parameter', name: 'data', type: [Object] },
    { tag: 'parameter', name: 'length', type: [Object] },
    { tag: 'parameter', name: 'destroy', type: [Object] },
    { tag: 'parameter', name: 'closure', type: [Object] }
  ],
  'return-type': { tag: 'cairo_status_t' }
}


;; definition 315 from /usr/include/cairo/cairo.h:2640:1
(define cairo-surface-set-mime-data
   (foreign-library-function "libcairo" "cairo_surface_set_mime_data" 
     #:return-type int       #:arg-types ('* '* '* ??type-tag?? ??type-tag?? '* ))

;; =================================== 
;; definition 330 bad.
{
  tag: 'function',
  name: 'cairo_image_surface_create',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2710:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'format', type: [Object] },
    { tag: 'parameter', name: 'width', type: [Object] },
    { tag: 'parameter', name: 'height', type: [Object] }
  ],
  'return-type': { tag: ':pointer', type: { tag: 'cairo_surface_t' } }
}


;; definition 330 from /usr/include/cairo/cairo.h:2710:1
(define cairo-image-surface-create
   (foreign-library-function "libcairo" "cairo_image_surface_create" 
     #:return-type '*       #:arg-types (??type-tag?? int int ))

;; =================================== 
;; definition 331 bad.
{
  tag: 'function',
  name: 'cairo_format_stride_for_width',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2715:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'format', type: [Object] },
    { tag: 'parameter', name: 'width', type: [Object] }
  ],
  'return-type': { tag: ':int', 'bit-size': 32, 'bit-alignment': 32 }
}


;; definition 331 from /usr/include/cairo/cairo.h:2715:1
(define cairo-format-stride-for-width
   (foreign-library-function "libcairo" "cairo_format_stride_for_width" 
     #:return-type int       #:arg-types (??type-tag?? int ))

;; =================================== 
;; definition 332 bad.
{
  tag: 'function',
  name: 'cairo_image_surface_create_for_data',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2719:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'data', type: [Object] },
    { tag: 'parameter', name: 'format', type: [Object] },
    { tag: 'parameter', name: 'width', type: [Object] },
    { tag: 'parameter', name: 'height', type: [Object] },
    { tag: 'parameter', name: 'stride', type: [Object] }
  ],
  'return-type': { tag: ':pointer', type: { tag: 'cairo_surface_t' } }
}


;; definition 332 from /usr/include/cairo/cairo.h:2719:1
(define cairo-image-surface-create-for-data
   (foreign-library-function "libcairo" "cairo_image_surface_create_for_data" 
     #:return-type '*       #:arg-types ('* ??type-tag?? int int int ))

;; =================================== 
;; definition 339 bad.
{
  tag: 'function',
  name: 'cairo_image_surface_create_from_png_stream',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2746:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'read_func', type: [Object] },
    { tag: 'parameter', name: 'closure', type: [Object] }
  ],
  'return-type': { tag: ':pointer', type: { tag: 'cairo_surface_t' } }
}


;; definition 339 from /usr/include/cairo/cairo.h:2746:1
(define cairo-image-surface-create-from-png-stream
   (foreign-library-function "libcairo" "cairo_image_surface_create_from_png_stream" 
     #:return-type '*       #:arg-types (??type-tag?? '* ))

;; =================================== 
;; definition 340 bad.
{
  tag: 'function',
  name: 'cairo_recording_surface_create',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2754:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'content', type: [Object] },
    { tag: 'parameter', name: 'extents', type: [Object] }
  ],
  'return-type': { tag: ':pointer', type: { tag: 'cairo_surface_t' } }
}


;; definition 340 from /usr/include/cairo/cairo.h:2754:1
(define cairo-recording-surface-create
   (foreign-library-function "libcairo" "cairo_recording_surface_create" 
     #:return-type '*       #:arg-types (??type-tag?? '* ))

;; =================================== 
;; definition 348 bad.
{
  tag: 'function',
  name: 'cairo_pattern_create_raster_source',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2872:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'user_data', type: [Object] },
    { tag: 'parameter', name: 'content', type: [Object] },
    { tag: 'parameter', name: 'width', type: [Object] },
    { tag: 'parameter', name: 'height', type: [Object] }
  ],
  'return-type': { tag: ':pointer', type: { tag: 'cairo_pattern_t' } }
}


;; definition 348 from /usr/include/cairo/cairo.h:2872:1
(define cairo-pattern-create-raster-source
   (foreign-library-function "libcairo" "cairo_pattern_create_raster_source" 
     #:return-type '*       #:arg-types ('* ??type-tag?? int int ))

;; =================================== 
;; definition 351 bad.
{
  tag: 'function',
  name: 'cairo_raster_source_pattern_set_acquire',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2884:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'pattern', type: [Object] },
    { tag: 'parameter', name: 'acquire', type: [Object] },
    { tag: 'parameter', name: 'release', type: [Object] }
  ],
  'return-type': { tag: ':void' }
}


;; definition 351 from /usr/include/cairo/cairo.h:2884:1
(define cairo-raster-source-pattern-set-acquire
   (foreign-library-function "libcairo" "cairo_raster_source_pattern_set_acquire" 
     #:return-type void       #:arg-types ('* ??type-tag?? ??type-tag?? ))

;; =================================== 
;; definition 353 bad.
{
  tag: 'function',
  name: 'cairo_raster_source_pattern_set_snapshot',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2893:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'pattern', type: [Object] },
    { tag: 'parameter', name: 'snapshot', type: [Object] }
  ],
  'return-type': { tag: ':void' }
}


;; definition 353 from /usr/include/cairo/cairo.h:2893:1
(define cairo-raster-source-pattern-set-snapshot
   (foreign-library-function "libcairo" "cairo_raster_source_pattern_set_snapshot" 
     #:return-type void       #:arg-types ('* ??type-tag?? ))

;; =================================== 
;; definition 354 bad.
{
  tag: 'function',
  name: 'cairo_raster_source_pattern_get_snapshot',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2897:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [ { tag: 'parameter', name: 'pattern', type: [Object] } ],
  'return-type': { tag: 'cairo_raster_source_snapshot_func_t' }
}


;; definition 354 from /usr/include/cairo/cairo.h:2897:1
(define cairo-raster-source-pattern-get-snapshot
   (foreign-library-function "libcairo" "cairo_raster_source_pattern_get_snapshot" 
     #:return-type ??ret??       #:arg-types ('* ))

;; =================================== 
;; definition 355 bad.
{
  tag: 'function',
  name: 'cairo_raster_source_pattern_set_copy',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2900:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'pattern', type: [Object] },
    { tag: 'parameter', name: 'copy', type: [Object] }
  ],
  'return-type': { tag: ':void' }
}


;; definition 355 from /usr/include/cairo/cairo.h:2900:1
(define cairo-raster-source-pattern-set-copy
   (foreign-library-function "libcairo" "cairo_raster_source_pattern_set_copy" 
     #:return-type void       #:arg-types ('* ??type-tag?? ))

;; =================================== 
;; definition 356 bad.
{
  tag: 'function',
  name: 'cairo_raster_source_pattern_get_copy',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2904:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [ { tag: 'parameter', name: 'pattern', type: [Object] } ],
  'return-type': { tag: 'cairo_raster_source_copy_func_t' }
}


;; definition 356 from /usr/include/cairo/cairo.h:2904:1
(define cairo-raster-source-pattern-get-copy
   (foreign-library-function "libcairo" "cairo_raster_source_pattern_get_copy" 
     #:return-type ??ret??       #:arg-types ('* ))

;; =================================== 
;; definition 357 bad.
{
  tag: 'function',
  name: 'cairo_raster_source_pattern_set_finish',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2907:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'pattern', type: [Object] },
    { tag: 'parameter', name: 'finish', type: [Object] }
  ],
  'return-type': { tag: ':void' }
}


;; definition 357 from /usr/include/cairo/cairo.h:2907:1
(define cairo-raster-source-pattern-set-finish
   (foreign-library-function "libcairo" "cairo_raster_source_pattern_set_finish" 
     #:return-type void       #:arg-types ('* ??type-tag?? ))

;; =================================== 
;; definition 358 bad.
{
  tag: 'function',
  name: 'cairo_raster_source_pattern_get_finish',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2911:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [ { tag: 'parameter', name: 'pattern', type: [Object] } ],
  'return-type': { tag: 'cairo_raster_source_finish_func_t' }
}


;; definition 358 from /usr/include/cairo/cairo.h:2911:1
(define cairo-raster-source-pattern-get-finish
   (foreign-library-function "libcairo" "cairo_raster_source_pattern_get_finish" 
     #:return-type ??ret??       #:arg-types ('* ))

;; =================================== 
;; definition 367 bad.
{
  tag: 'function',
  name: 'cairo_pattern_get_reference_count',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2943:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [ { tag: 'parameter', name: 'pattern', type: [Object] } ],
  'return-type': { tag: ':unsigned-int', 'bit-size': 32, 'bit-alignment': 32 }
}


;; definition 367 from /usr/include/cairo/cairo.h:2943:1
(define cairo-pattern-get-reference-count
   (foreign-library-function "libcairo" "cairo_pattern_get_reference_count" 
     #:return-type ??ret??       #:arg-types ('* ))

;; =================================== 
;; definition 370 bad.
{
  tag: 'function',
  name: 'cairo_pattern_set_user_data',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:2953:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'pattern', type: [Object] },
    { tag: 'parameter', name: 'key', type: [Object] },
    { tag: 'parameter', name: 'user_data', type: [Object] },
    { tag: 'parameter', name: 'destroy', type: [Object] }
  ],
  'return-type': { tag: 'cairo_status_t' }
}


;; definition 370 from /usr/include/cairo/cairo.h:2953:1
(define cairo-pattern-set-user-data
   (foreign-library-function "libcairo" "cairo_pattern_set_user_data" 
     #:return-type int       #:arg-types ('* '* '* ??type-tag?? ))

;; =================================== 
;; definition 381 bad.
{
  tag: 'function',
  name: 'cairo_mesh_pattern_set_control_point',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:3034:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'pattern', type: [Object] },
    { tag: 'parameter', name: 'point_num', type: [Object] },
    { tag: 'parameter', name: 'x', type: [Object] },
    { tag: 'parameter', name: 'y', type: [Object] }
  ],
  'return-type': { tag: ':void' }
}


;; definition 381 from /usr/include/cairo/cairo.h:3034:1
(define cairo-mesh-pattern-set-control-point
   (foreign-library-function "libcairo" "cairo_mesh_pattern_set_control_point" 
     #:return-type void       #:arg-types ('* ??type-tag?? double double ))

;; =================================== 
;; definition 382 bad.
{
  tag: 'function',
  name: 'cairo_mesh_pattern_set_corner_color_rgb',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:3039:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'pattern', type: [Object] },
    { tag: 'parameter', name: 'corner_num', type: [Object] },
    { tag: 'parameter', name: 'red', type: [Object] },
    { tag: 'parameter', name: 'green', type: [Object] },
    { tag: 'parameter', name: 'blue', type: [Object] }
  ],
  'return-type': { tag: ':void' }
}


;; definition 382 from /usr/include/cairo/cairo.h:3039:1
(define cairo-mesh-pattern-set-corner-color-rgb
   (foreign-library-function "libcairo" "cairo_mesh_pattern_set_corner_color_rgb" 
     #:return-type void       #:arg-types ('* ??type-tag?? double double double ))

;; =================================== 
;; definition 383 bad.
{
  tag: 'function',
  name: 'cairo_mesh_pattern_set_corner_color_rgba',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:3044:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'pattern', type: [Object] },
    { tag: 'parameter', name: 'corner_num', type: [Object] },
    { tag: 'parameter', name: 'red', type: [Object] },
    { tag: 'parameter', name: 'green', type: [Object] },
    { tag: 'parameter', name: 'blue', type: [Object] },
    { tag: 'parameter', name: 'alpha', type: [Object] }
  ],
  'return-type': { tag: ':void' }
}


;; definition 383 from /usr/include/cairo/cairo.h:3044:1
(define cairo-mesh-pattern-set-corner-color-rgba
   (foreign-library-function "libcairo" "cairo_mesh_pattern_set_corner_color_rgba" 
     #:return-type void       #:arg-types ('* ??type-tag?? double double double double ))

;; =================================== 
;; definition 388 bad.
{
  tag: 'function',
  name: 'cairo_pattern_set_extend',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:3090:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'pattern', type: [Object] },
    { tag: 'parameter', name: 'extend', type: [Object] }
  ],
  'return-type': { tag: ':void' }
}


;; definition 388 from /usr/include/cairo/cairo.h:3090:1
(define cairo-pattern-set-extend
   (foreign-library-function "libcairo" "cairo_pattern_set_extend" 
     #:return-type void       #:arg-types ('* ??type-tag?? ))

;; =================================== 
;; definition 392 bad.
{
  tag: 'function',
  name: 'cairo_pattern_set_filter',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:3125:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'pattern', type: [Object] },
    { tag: 'parameter', name: 'filter', type: [Object] }
  ],
  'return-type': { tag: ':void' }
}


;; definition 392 from /usr/include/cairo/cairo.h:3125:1
(define cairo-pattern-set-filter
   (foreign-library-function "libcairo" "cairo_pattern_set_filter" 
     #:return-type void       #:arg-types ('* ??type-tag?? ))

;; =================================== 
;; definition 401 bad.
{
  tag: 'function',
  name: 'cairo_mesh_pattern_get_path',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:3165:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'pattern', type: [Object] },
    { tag: 'parameter', name: 'patch_num', type: [Object] }
  ],
  'return-type': { tag: ':pointer', type: { tag: 'cairo_path_t' } }
}


;; definition 401 from /usr/include/cairo/cairo.h:3165:1
(define cairo-mesh-pattern-get-path
   (foreign-library-function "libcairo" "cairo_mesh_pattern_get_path" 
     #:return-type '*       #:arg-types ('* ??type-tag?? ))

;; =================================== 
;; definition 402 bad.
{
  tag: 'function',
  name: 'cairo_mesh_pattern_get_corner_color_rgba',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:3169:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'pattern', type: [Object] },
    { tag: 'parameter', name: 'patch_num', type: [Object] },
    { tag: 'parameter', name: 'corner_num', type: [Object] },
    { tag: 'parameter', name: 'red', type: [Object] },
    { tag: 'parameter', name: 'green', type: [Object] },
    { tag: 'parameter', name: 'blue', type: [Object] },
    { tag: 'parameter', name: 'alpha', type: [Object] }
  ],
  'return-type': { tag: 'cairo_status_t' }
}


;; definition 402 from /usr/include/cairo/cairo.h:3169:1
(define cairo-mesh-pattern-get-corner-color-rgba
   (foreign-library-function "libcairo" "cairo_mesh_pattern_get_corner_color_rgba" 
     #:return-type int       #:arg-types ('* ??type-tag?? ??type-tag?? '* '* '* '* ))

;; =================================== 
;; definition 403 bad.
{
  tag: 'function',
  name: 'cairo_mesh_pattern_get_control_point',
  ns: 0,
  location: '/usr/include/cairo/cairo.h:3176:1',
  variadic: false,
  inline: false,
  'storage-class': 'extern',
  parameters: [
    { tag: 'parameter', name: 'pattern', type: [Object] },
    { tag: 'parameter', name: 'patch_num', type: [Object] },
    { tag: 'parameter', name: 'point_num', type: [Object] },
    { tag: 'parameter', name: 'x', type: [Object] },
    { tag: 'parameter', name: 'y', type: [Object] }
  ],
  'return-type': { tag: 'cairo_status_t' }
}


;; definition 403 from /usr/include/cairo/cairo.h:3176:1
(define cairo-mesh-pattern-get-control-point
   (foreign-library-function "libcairo" "cairo_mesh_pattern_get_control_point" 
     #:return-type int       #:arg-types ('* ??type-tag?? ??type-tag?? '* '* ))

;; =================================== 

;; =================================== 

;; definition 0 ok !

;; definition 0 from /usr/include/cairo/cairo.h:97:1
(define cairo-version
   (foreign-library-function "libcairo" "cairo_version" 
     #:return-type int 
    #:arg-types (list)))

;; definition 1 ok !

;; definition 1 from /usr/include/cairo/cairo.h:100:1
(define cairo-version-string
   (foreign-library-function "libcairo" "cairo_version_string" 
     #:return-type '* 
    #:arg-types (list)))

;; definition 25 ok !

;; definition 25 from /usr/include/cairo/cairo.h:474:1
(define cairo-pattern-get-dither
   (foreign-library-function "libcairo" "cairo_pattern_get_dither" 
     #:return-type int       #:arg-types ('* ))

;; definition 30 ok !

;; definition 30 from /usr/include/cairo/cairo.h:540:1
(define cairo-create
   (foreign-library-function "libcairo" "cairo_create" 
     #:return-type '*       #:arg-types ('* ))

;; definition 31 ok !

;; definition 31 from /usr/include/cairo/cairo.h:543:1
(define cairo-reference
   (foreign-library-function "libcairo" "cairo_reference" 
     #:return-type '*       #:arg-types ('* ))

;; definition 32 ok !

;; definition 32 from /usr/include/cairo/cairo.h:546:1
(define cairo-destroy
   (foreign-library-function "libcairo" "cairo_destroy" 
     #:return-type void       #:arg-types ('* ))

;; definition 34 ok !

;; definition 34 from /usr/include/cairo/cairo.h:552:1
(define cairo-get-user-data
   (foreign-library-function "libcairo" "cairo_get_user_data" 
     #:return-type '*       #:arg-types ('* '* ))

;; definition 36 ok !

;; definition 36 from /usr/include/cairo/cairo.h:562:1
(define cairo-save
   (foreign-library-function "libcairo" "cairo_save" 
     #:return-type void       #:arg-types ('* ))

;; definition 37 ok !

;; definition 37 from /usr/include/cairo/cairo.h:565:1
(define cairo-restore
   (foreign-library-function "libcairo" "cairo_restore" 
     #:return-type void       #:arg-types ('* ))

;; definition 38 ok !

;; definition 38 from /usr/include/cairo/cairo.h:568:1
(define cairo-push-group
   (foreign-library-function "libcairo" "cairo_push_group" 
     #:return-type void       #:arg-types ('* ))

;; definition 40 ok !

;; definition 40 from /usr/include/cairo/cairo.h:574:1
(define cairo-pop-group
   (foreign-library-function "libcairo" "cairo_pop_group" 
     #:return-type '*       #:arg-types ('* ))

;; definition 41 ok !

;; definition 41 from /usr/include/cairo/cairo.h:577:1
(define cairo-pop-group-to-source
   (foreign-library-function "libcairo" "cairo_pop_group_to_source" 
     #:return-type void       #:arg-types ('* ))

;; definition 45 ok !

;; definition 45 from /usr/include/cairo/cairo.h:702:1
(define cairo-set-source
   (foreign-library-function "libcairo" "cairo_set_source" 
     #:return-type void       #:arg-types ('* '* ))

;; definition 46 ok !

;; definition 46 from /usr/include/cairo/cairo.h:705:1
(define cairo-set-source-rgb
   (foreign-library-function "libcairo" "cairo_set_source_rgb" 
     #:return-type void       #:arg-types ('* double double double ))

;; definition 47 ok !

;; definition 47 from /usr/include/cairo/cairo.h:708:1
(define cairo-set-source-rgba
   (foreign-library-function "libcairo" "cairo_set_source_rgba" 
     #:return-type void       #:arg-types ('* double double double double ))

;; definition 48 ok !

;; definition 48 from /usr/include/cairo/cairo.h:713:1
(define cairo-set-source-surface
   (foreign-library-function "libcairo" "cairo_set_source_surface" 
     #:return-type void       #:arg-types ('* '* double double ))

;; definition 49 ok !

;; definition 49 from /usr/include/cairo/cairo.h:719:1
(define cairo-set-tolerance
   (foreign-library-function "libcairo" "cairo_set_tolerance" 
     #:return-type void       #:arg-types ('* double ))

;; definition 56 ok !

;; definition 56 from /usr/include/cairo/cairo.h:811:1
(define cairo-set-line-width
   (foreign-library-function "libcairo" "cairo_set_line_width" 
     #:return-type void       #:arg-types ('* double ))

;; definition 64 ok !

;; definition 64 from /usr/include/cairo/cairo.h:862:1
(define cairo-set-dash
   (foreign-library-function "libcairo" "cairo_set_dash" 
     #:return-type void       #:arg-types ('* '* int double ))

;; definition 65 ok !

;; definition 65 from /usr/include/cairo/cairo.h:868:1
(define cairo-set-miter-limit
   (foreign-library-function "libcairo" "cairo_set_miter_limit" 
     #:return-type void       #:arg-types ('* double ))

;; definition 66 ok !

;; definition 66 from /usr/include/cairo/cairo.h:871:1
(define cairo-translate
   (foreign-library-function "libcairo" "cairo_translate" 
     #:return-type void       #:arg-types ('* double double ))

;; definition 67 ok !

;; definition 67 from /usr/include/cairo/cairo.h:874:1
(define cairo-scale
   (foreign-library-function "libcairo" "cairo_scale" 
     #:return-type void       #:arg-types ('* double double ))

;; definition 68 ok !

;; definition 68 from /usr/include/cairo/cairo.h:877:1
(define cairo-rotate
   (foreign-library-function "libcairo" "cairo_rotate" 
     #:return-type void       #:arg-types ('* double ))

;; definition 69 ok !

;; definition 69 from /usr/include/cairo/cairo.h:880:1
(define cairo-transform
   (foreign-library-function "libcairo" "cairo_transform" 
     #:return-type void       #:arg-types ('* '* ))

;; definition 70 ok !

;; definition 70 from /usr/include/cairo/cairo.h:884:1
(define cairo-set-matrix
   (foreign-library-function "libcairo" "cairo_set_matrix" 
     #:return-type void       #:arg-types ('* '* ))

;; definition 71 ok !

;; definition 71 from /usr/include/cairo/cairo.h:888:1
(define cairo-identity-matrix
   (foreign-library-function "libcairo" "cairo_identity_matrix" 
     #:return-type void       #:arg-types ('* ))

;; definition 72 ok !

;; definition 72 from /usr/include/cairo/cairo.h:891:1
(define cairo-user-to-device
   (foreign-library-function "libcairo" "cairo_user_to_device" 
     #:return-type void       #:arg-types ('* '* '* ))

;; definition 73 ok !

;; definition 73 from /usr/include/cairo/cairo.h:894:1
(define cairo-user-to-device-distance
   (foreign-library-function "libcairo" "cairo_user_to_device_distance" 
     #:return-type void       #:arg-types ('* '* '* ))

;; definition 74 ok !

;; definition 74 from /usr/include/cairo/cairo.h:897:1
(define cairo-device-to-user
   (foreign-library-function "libcairo" "cairo_device_to_user" 
     #:return-type void       #:arg-types ('* '* '* ))

;; definition 75 ok !

;; definition 75 from /usr/include/cairo/cairo.h:900:1
(define cairo-device-to-user-distance
   (foreign-library-function "libcairo" "cairo_device_to_user_distance" 
     #:return-type void       #:arg-types ('* '* '* ))

;; definition 76 ok !

;; definition 76 from /usr/include/cairo/cairo.h:904:1
(define cairo-new-path
   (foreign-library-function "libcairo" "cairo_new_path" 
     #:return-type void       #:arg-types ('* ))

;; definition 77 ok !

;; definition 77 from /usr/include/cairo/cairo.h:907:1
(define cairo-move-to
   (foreign-library-function "libcairo" "cairo_move_to" 
     #:return-type void       #:arg-types ('* double double ))

;; definition 78 ok !

;; definition 78 from /usr/include/cairo/cairo.h:910:1
(define cairo-new-sub-path
   (foreign-library-function "libcairo" "cairo_new_sub_path" 
     #:return-type void       #:arg-types ('* ))

;; definition 79 ok !

;; definition 79 from /usr/include/cairo/cairo.h:913:1
(define cairo-line-to
   (foreign-library-function "libcairo" "cairo_line_to" 
     #:return-type void       #:arg-types ('* double double ))

;; definition 80 ok !

;; definition 80 from /usr/include/cairo/cairo.h:916:1
(define cairo-curve-to
   (foreign-library-function "libcairo" "cairo_curve_to" 
     #:return-type void       #:arg-types ('* double double double double double double ))

;; definition 81 ok !

;; definition 81 from /usr/include/cairo/cairo.h:922:1
(define cairo-arc
   (foreign-library-function "libcairo" "cairo_arc" 
     #:return-type void       #:arg-types ('* double double double double double ))

;; definition 82 ok !

;; definition 82 from /usr/include/cairo/cairo.h:928:1
(define cairo-arc-negative
   (foreign-library-function "libcairo" "cairo_arc_negative" 
     #:return-type void       #:arg-types ('* double double double double double ))

;; definition 83 ok !

;; definition 83 from /usr/include/cairo/cairo.h:942:1
(define cairo-rel-move-to
   (foreign-library-function "libcairo" "cairo_rel_move_to" 
     #:return-type void       #:arg-types ('* double double ))

;; definition 84 ok !

;; definition 84 from /usr/include/cairo/cairo.h:945:1
(define cairo-rel-line-to
   (foreign-library-function "libcairo" "cairo_rel_line_to" 
     #:return-type void       #:arg-types ('* double double ))

;; definition 85 ok !

;; definition 85 from /usr/include/cairo/cairo.h:948:1
(define cairo-rel-curve-to
   (foreign-library-function "libcairo" "cairo_rel_curve_to" 
     #:return-type void       #:arg-types ('* double double double double double double ))

;; definition 86 ok !

;; definition 86 from /usr/include/cairo/cairo.h:954:1
(define cairo-rectangle
   (foreign-library-function "libcairo" "cairo_rectangle" 
     #:return-type void       #:arg-types ('* double double double double ))

;; definition 87 ok !

;; definition 87 from /usr/include/cairo/cairo.h:964:1
(define cairo-close-path
   (foreign-library-function "libcairo" "cairo_close_path" 
     #:return-type void       #:arg-types ('* ))

;; definition 88 ok !

;; definition 88 from /usr/include/cairo/cairo.h:967:1
(define cairo-path-extents
   (foreign-library-function "libcairo" "cairo_path_extents" 
     #:return-type void       #:arg-types ('* '* '* '* '* ))

;; definition 89 ok !

;; definition 89 from /usr/include/cairo/cairo.h:973:1
(define cairo-paint
   (foreign-library-function "libcairo" "cairo_paint" 
     #:return-type void       #:arg-types ('* ))

;; definition 90 ok !

;; definition 90 from /usr/include/cairo/cairo.h:976:1
(define cairo-paint-with-alpha
   (foreign-library-function "libcairo" "cairo_paint_with_alpha" 
     #:return-type void       #:arg-types ('* double ))

;; definition 91 ok !

;; definition 91 from /usr/include/cairo/cairo.h:980:1
(define cairo-mask
   (foreign-library-function "libcairo" "cairo_mask" 
     #:return-type void       #:arg-types ('* '* ))

;; definition 92 ok !

;; definition 92 from /usr/include/cairo/cairo.h:984:1
(define cairo-mask-surface
   (foreign-library-function "libcairo" "cairo_mask_surface" 
     #:return-type void       #:arg-types ('* '* double double ))

;; definition 93 ok !

;; definition 93 from /usr/include/cairo/cairo.h:990:1
(define cairo-stroke
   (foreign-library-function "libcairo" "cairo_stroke" 
     #:return-type void       #:arg-types ('* ))

;; definition 94 ok !

;; definition 94 from /usr/include/cairo/cairo.h:993:1
(define cairo-stroke-preserve
   (foreign-library-function "libcairo" "cairo_stroke_preserve" 
     #:return-type void       #:arg-types ('* ))

;; definition 95 ok !

;; definition 95 from /usr/include/cairo/cairo.h:996:1
(define cairo-fill
   (foreign-library-function "libcairo" "cairo_fill" 
     #:return-type void       #:arg-types ('* ))

;; definition 96 ok !

;; definition 96 from /usr/include/cairo/cairo.h:999:1
(define cairo-fill-preserve
   (foreign-library-function "libcairo" "cairo_fill_preserve" 
     #:return-type void       #:arg-types ('* ))

;; definition 97 ok !

;; definition 97 from /usr/include/cairo/cairo.h:1002:1
(define cairo-copy-page
   (foreign-library-function "libcairo" "cairo_copy_page" 
     #:return-type void       #:arg-types ('* ))

;; definition 98 ok !

;; definition 98 from /usr/include/cairo/cairo.h:1005:1
(define cairo-show-page
   (foreign-library-function "libcairo" "cairo_show_page" 
     #:return-type void       #:arg-types ('* ))

;; definition 99 ok !

;; definition 99 from /usr/include/cairo/cairo.h:1009:1
(define cairo-in-stroke
   (foreign-library-function "libcairo" "cairo_in_stroke" 
     #:return-type int       #:arg-types ('* double double ))

;; definition 100 ok !

;; definition 100 from /usr/include/cairo/cairo.h:1012:1
(define cairo-in-fill
   (foreign-library-function "libcairo" "cairo_in_fill" 
     #:return-type int       #:arg-types ('* double double ))

;; definition 101 ok !

;; definition 101 from /usr/include/cairo/cairo.h:1015:1
(define cairo-in-clip
   (foreign-library-function "libcairo" "cairo_in_clip" 
     #:return-type int       #:arg-types ('* double double ))

;; definition 102 ok !

;; definition 102 from /usr/include/cairo/cairo.h:1019:1
(define cairo-stroke-extents
   (foreign-library-function "libcairo" "cairo_stroke_extents" 
     #:return-type void       #:arg-types ('* '* '* '* '* ))

;; definition 103 ok !

;; definition 103 from /usr/include/cairo/cairo.h:1024:1
(define cairo-fill-extents
   (foreign-library-function "libcairo" "cairo_fill_extents" 
     #:return-type void       #:arg-types ('* '* '* '* '* ))

;; definition 104 ok !

;; definition 104 from /usr/include/cairo/cairo.h:1030:1
(define cairo-reset-clip
   (foreign-library-function "libcairo" "cairo_reset_clip" 
     #:return-type void       #:arg-types ('* ))

;; definition 105 ok !

;; definition 105 from /usr/include/cairo/cairo.h:1033:1
(define cairo-clip
   (foreign-library-function "libcairo" "cairo_clip" 
     #:return-type void       #:arg-types ('* ))

;; definition 106 ok !

;; definition 106 from /usr/include/cairo/cairo.h:1036:1
(define cairo-clip-preserve
   (foreign-library-function "libcairo" "cairo_clip_preserve" 
     #:return-type void       #:arg-types ('* ))

;; definition 107 ok !

;; definition 107 from /usr/include/cairo/cairo.h:1039:1
(define cairo-clip-extents
   (foreign-library-function "libcairo" "cairo_clip_extents" 
     #:return-type void       #:arg-types ('* '* '* '* '* ))

;; definition 112 ok !

;; definition 112 from /usr/include/cairo/cairo.h:1076:1
(define cairo-copy-clip-rectangle-list
   (foreign-library-function "libcairo" "cairo_copy_clip_rectangle_list" 
     #:return-type '*       #:arg-types ('* ))

;; definition 113 ok !

;; definition 113 from /usr/include/cairo/cairo.h:1079:1
(define cairo-rectangle-list-destroy
   (foreign-library-function "libcairo" "cairo_rectangle_list_destroy" 
     #:return-type void       #:arg-types ('* ))

;; definition 114 ok !

;; definition 114 from /usr/include/cairo/cairo.h:1089:1
(define cairo-tag-begin
   (foreign-library-function "libcairo" "cairo_tag_begin" 
     #:return-type void       #:arg-types ('* '* '* ))

;; definition 115 ok !

;; definition 115 from /usr/include/cairo/cairo.h:1092:1
(define cairo-tag-end
   (foreign-library-function "libcairo" "cairo_tag_end" 
     #:return-type void       #:arg-types ('* '* ))

;; definition 121 ok !

;; definition 121 from /usr/include/cairo/cairo.h:1169:1
(define cairo-glyph-allocate
   (foreign-library-function "libcairo" "cairo_glyph_allocate" 
     #:return-type '*       #:arg-types (int ))

;; definition 122 ok !

;; definition 122 from /usr/include/cairo/cairo.h:1172:1
(define cairo-glyph-free
   (foreign-library-function "libcairo" "cairo_glyph_free" 
     #:return-type void       #:arg-types ('* ))

;; definition 124 ok !

;; definition 124 from /usr/include/cairo/cairo.h:1200:1
(define cairo-text-cluster-allocate
   (foreign-library-function "libcairo" "cairo_text_cluster_allocate" 
     #:return-type '*       #:arg-types (int ))

;; definition 125 ok !

;; definition 125 from /usr/include/cairo/cairo.h:1203:1
(define cairo-text-cluster-free
   (foreign-library-function "libcairo" "cairo_text_cluster_free" 
     #:return-type void       #:arg-types ('* ))

;; definition 144 ok !

;; definition 144 from /usr/include/cairo/cairo.h:1465:1
(define cairo-font-options-create
   (foreign-library-function "libcairo" "cairo_font_options_create" 
     #:return-type '* 
    #:arg-types (list)))

;; definition 145 ok !

;; definition 145 from /usr/include/cairo/cairo.h:1468:1
(define cairo-font-options-copy
   (foreign-library-function "libcairo" "cairo_font_options_copy" 
     #:return-type '*       #:arg-types ('* ))

;; definition 146 ok !

;; definition 146 from /usr/include/cairo/cairo.h:1471:1
(define cairo-font-options-destroy
   (foreign-library-function "libcairo" "cairo_font_options_destroy" 
     #:return-type void       #:arg-types ('* ))

;; definition 147 ok !

;; definition 147 from /usr/include/cairo/cairo.h:1474:1
(define cairo-font-options-status
   (foreign-library-function "libcairo" "cairo_font_options_status" 
     #:return-type int       #:arg-types ('* ))

;; definition 148 ok !

;; definition 148 from /usr/include/cairo/cairo.h:1477:1
(define cairo-font-options-merge
   (foreign-library-function "libcairo" "cairo_font_options_merge" 
     #:return-type void       #:arg-types ('* '* ))

;; definition 149 ok !

;; definition 149 from /usr/include/cairo/cairo.h:1480:1
(define cairo-font-options-equal
   (foreign-library-function "libcairo" "cairo_font_options_equal" 
     #:return-type int       #:arg-types ('* '* ))

;; definition 152 ok !

;; definition 152 from /usr/include/cairo/cairo.h:1490:1
(define cairo-font-options-get-antialias
   (foreign-library-function "libcairo" "cairo_font_options_get_antialias" 
     #:return-type int       #:arg-types ('* ))

;; definition 154 ok !

;; definition 154 from /usr/include/cairo/cairo.h:1496:1
(define cairo-font-options-get-subpixel-order
   (foreign-library-function "libcairo" "cairo_font_options_get_subpixel_order" 
     #:return-type int       #:arg-types ('* ))

;; definition 156 ok !

;; definition 156 from /usr/include/cairo/cairo.h:1502:1
(define cairo-font-options-get-hint-style
   (foreign-library-function "libcairo" "cairo_font_options_get_hint_style" 
     #:return-type int       #:arg-types ('* ))

;; definition 158 ok !

;; definition 158 from /usr/include/cairo/cairo.h:1508:1
(define cairo-font-options-get-hint-metrics
   (foreign-library-function "libcairo" "cairo_font_options_get_hint_metrics" 
     #:return-type int       #:arg-types ('* ))

;; definition 159 ok !

;; definition 159 from /usr/include/cairo/cairo.h:1511:1
(define cairo-font-options-get-variations
   (foreign-library-function "libcairo" "cairo_font_options_get_variations" 
     #:return-type '*       #:arg-types ('* ))

;; definition 160 ok !

;; definition 160 from /usr/include/cairo/cairo.h:1514:1
(define cairo-font-options-set-variations
   (foreign-library-function "libcairo" "cairo_font_options_set_variations" 
     #:return-type void       #:arg-types ('* '* ))

;; definition 162 ok !

;; definition 162 from /usr/include/cairo/cairo.h:1524:1
(define cairo-font-options-get-color-mode
   (foreign-library-function "libcairo" "cairo_font_options_get_color_mode" 
     #:return-type int       #:arg-types ('* ))

;; definition 168 ok !

;; definition 168 from /usr/include/cairo/cairo.h:1555:1
(define cairo-set-font-size
   (foreign-library-function "libcairo" "cairo_set_font_size" 
     #:return-type void       #:arg-types ('* double ))

;; definition 169 ok !

;; definition 169 from /usr/include/cairo/cairo.h:1558:1
(define cairo-set-font-matrix
   (foreign-library-function "libcairo" "cairo_set_font_matrix" 
     #:return-type void       #:arg-types ('* '* ))

;; definition 170 ok !

;; definition 170 from /usr/include/cairo/cairo.h:1562:1
(define cairo-get-font-matrix
   (foreign-library-function "libcairo" "cairo_get_font_matrix" 
     #:return-type void       #:arg-types ('* '* ))

;; definition 171 ok !

;; definition 171 from /usr/include/cairo/cairo.h:1566:1
(define cairo-set-font-options
   (foreign-library-function "libcairo" "cairo_set_font_options" 
     #:return-type void       #:arg-types ('* '* ))

;; definition 172 ok !

;; definition 172 from /usr/include/cairo/cairo.h:1570:1
(define cairo-get-font-options
   (foreign-library-function "libcairo" "cairo_get_font_options" 
     #:return-type void       #:arg-types ('* '* ))

;; definition 173 ok !

;; definition 173 from /usr/include/cairo/cairo.h:1574:1
(define cairo-set-font-face
   (foreign-library-function "libcairo" "cairo_set_font_face" 
     #:return-type void       #:arg-types ('* '* ))

;; definition 174 ok !

;; definition 174 from /usr/include/cairo/cairo.h:1577:1
(define cairo-get-font-face
   (foreign-library-function "libcairo" "cairo_get_font_face" 
     #:return-type '*       #:arg-types ('* ))

;; definition 175 ok !

;; definition 175 from /usr/include/cairo/cairo.h:1580:1
(define cairo-set-scaled-font
   (foreign-library-function "libcairo" "cairo_set_scaled_font" 
     #:return-type void       #:arg-types ('* '* ))

;; definition 176 ok !

;; definition 176 from /usr/include/cairo/cairo.h:1584:1
(define cairo-get-scaled-font
   (foreign-library-function "libcairo" "cairo_get_scaled_font" 
     #:return-type '*       #:arg-types ('* ))

;; definition 177 ok !

;; definition 177 from /usr/include/cairo/cairo.h:1587:1
(define cairo-show-text
   (foreign-library-function "libcairo" "cairo_show_text" 
     #:return-type void       #:arg-types ('* '* ))

;; definition 178 ok !

;; definition 178 from /usr/include/cairo/cairo.h:1590:1
(define cairo-show-glyphs
   (foreign-library-function "libcairo" "cairo_show_glyphs" 
     #:return-type void       #:arg-types ('* '* int ))

;; definition 180 ok !

;; definition 180 from /usr/include/cairo/cairo.h:1603:1
(define cairo-text-path
   (foreign-library-function "libcairo" "cairo_text_path" 
     #:return-type void       #:arg-types ('* '* ))

;; definition 181 ok !

;; definition 181 from /usr/include/cairo/cairo.h:1606:1
(define cairo-glyph-path
   (foreign-library-function "libcairo" "cairo_glyph_path" 
     #:return-type void       #:arg-types ('* '* int ))

;; definition 182 ok !

;; definition 182 from /usr/include/cairo/cairo.h:1609:1
(define cairo-text-extents
   (foreign-library-function "libcairo" "cairo_text_extents" 
     #:return-type void       #:arg-types ('* '* '* ))

;; definition 183 ok !

;; definition 183 from /usr/include/cairo/cairo.h:1614:1
(define cairo-glyph-extents
   (foreign-library-function "libcairo" "cairo_glyph_extents" 
     #:return-type void       #:arg-types ('* '* int '* ))

;; definition 184 ok !

;; definition 184 from /usr/include/cairo/cairo.h:1620:1
(define cairo-font-extents
   (foreign-library-function "libcairo" "cairo_font_extents" 
     #:return-type void       #:arg-types ('* '* ))

;; definition 185 ok !

;; definition 185 from /usr/include/cairo/cairo.h:1626:1
(define cairo-font-face-reference
   (foreign-library-function "libcairo" "cairo_font_face_reference" 
     #:return-type '*       #:arg-types ('* ))

;; definition 186 ok !

;; definition 186 from /usr/include/cairo/cairo.h:1629:1
(define cairo-font-face-destroy
   (foreign-library-function "libcairo" "cairo_font_face_destroy" 
     #:return-type void       #:arg-types ('* ))

;; definition 188 ok !

;; definition 188 from /usr/include/cairo/cairo.h:1635:1
(define cairo-font-face-status
   (foreign-library-function "libcairo" "cairo_font_face_status" 
     #:return-type int       #:arg-types ('* ))

;; definition 191 ok !

;; definition 191 from /usr/include/cairo/cairo.h:1688:1
(define cairo-font-face-get-type
   (foreign-library-function "libcairo" "cairo_font_face_get_type" 
     #:return-type int       #:arg-types ('* ))

;; definition 192 ok !

;; definition 192 from /usr/include/cairo/cairo.h:1691:1
(define cairo-font-face-get-user-data
   (foreign-library-function "libcairo" "cairo_font_face_get_user_data" 
     #:return-type '*       #:arg-types ('* '* ))

;; definition 194 ok !

;; definition 194 from /usr/include/cairo/cairo.h:1703:1
(define cairo-scaled-font-create
   (foreign-library-function "libcairo" "cairo_scaled_font_create" 
     #:return-type '*       #:arg-types ('* '* '* '* ))

;; definition 195 ok !

;; definition 195 from /usr/include/cairo/cairo.h:1709:1
(define cairo-scaled-font-reference
   (foreign-library-function "libcairo" "cairo_scaled_font_reference" 
     #:return-type '*       #:arg-types ('* ))

;; definition 196 ok !

;; definition 196 from /usr/include/cairo/cairo.h:1712:1
(define cairo-scaled-font-destroy
   (foreign-library-function "libcairo" "cairo_scaled_font_destroy" 
     #:return-type void       #:arg-types ('* ))

;; definition 198 ok !

;; definition 198 from /usr/include/cairo/cairo.h:1718:1
(define cairo-scaled-font-status
   (foreign-library-function "libcairo" "cairo_scaled_font_status" 
     #:return-type int       #:arg-types ('* ))

;; definition 199 ok !

;; definition 199 from /usr/include/cairo/cairo.h:1721:1
(define cairo-scaled-font-get-type
   (foreign-library-function "libcairo" "cairo_scaled_font_get_type" 
     #:return-type int       #:arg-types ('* ))

;; definition 200 ok !

;; definition 200 from /usr/include/cairo/cairo.h:1724:1
(define cairo-scaled-font-get-user-data
   (foreign-library-function "libcairo" "cairo_scaled_font_get_user_data" 
     #:return-type '*       #:arg-types ('* '* ))

;; definition 202 ok !

;; definition 202 from /usr/include/cairo/cairo.h:1734:1
(define cairo-scaled-font-extents
   (foreign-library-function "libcairo" "cairo_scaled_font_extents" 
     #:return-type void       #:arg-types ('* '* ))

;; definition 203 ok !

;; definition 203 from /usr/include/cairo/cairo.h:1738:1
(define cairo-scaled-font-text-extents
   (foreign-library-function "libcairo" "cairo_scaled_font_text_extents" 
     #:return-type void       #:arg-types ('* '* '* ))

;; definition 204 ok !

;; definition 204 from /usr/include/cairo/cairo.h:1743:1
(define cairo-scaled-font-glyph-extents
   (foreign-library-function "libcairo" "cairo_scaled_font_glyph_extents" 
     #:return-type void       #:arg-types ('* '* int '* ))

;; definition 205 ok !

;; definition 205 from /usr/include/cairo/cairo.h:1749:1
(define cairo-scaled-font-text-to-glyphs
   (foreign-library-function "libcairo" "cairo_scaled_font_text_to_glyphs" 
     #:return-type int       #:arg-types ('* double double '* int '* '* '* '* '* ))

;; definition 206 ok !

;; definition 206 from /usr/include/cairo/cairo.h:1761:1
(define cairo-scaled-font-get-font-face
   (foreign-library-function "libcairo" "cairo_scaled_font_get_font_face" 
     #:return-type '*       #:arg-types ('* ))

;; definition 207 ok !

;; definition 207 from /usr/include/cairo/cairo.h:1764:1
(define cairo-scaled-font-get-font-matrix
   (foreign-library-function "libcairo" "cairo_scaled_font_get_font_matrix" 
     #:return-type void       #:arg-types ('* '* ))

;; definition 208 ok !

;; definition 208 from /usr/include/cairo/cairo.h:1768:1
(define cairo-scaled-font-get-ctm
   (foreign-library-function "libcairo" "cairo_scaled_font_get_ctm" 
     #:return-type void       #:arg-types ('* '* ))

;; definition 209 ok !

;; definition 209 from /usr/include/cairo/cairo.h:1772:1
(define cairo-scaled-font-get-scale-matrix
   (foreign-library-function "libcairo" "cairo_scaled_font_get_scale_matrix" 
     #:return-type void       #:arg-types ('* '* ))

;; definition 210 ok !

;; definition 210 from /usr/include/cairo/cairo.h:1776:1
(define cairo-scaled-font-get-font-options
   (foreign-library-function "libcairo" "cairo_scaled_font_get_font_options" 
     #:return-type void       #:arg-types ('* '* ))

;; definition 212 ok !

;; definition 212 from /usr/include/cairo/cairo.h:1788:1
(define cairo-toy-font-face-get-family
   (foreign-library-function "libcairo" "cairo_toy_font_face_get_family" 
     #:return-type '*       #:arg-types ('* ))

;; definition 213 ok !

;; definition 213 from /usr/include/cairo/cairo.h:1791:1
(define cairo-toy-font-face-get-slant
   (foreign-library-function "libcairo" "cairo_toy_font_face_get_slant" 
     #:return-type int       #:arg-types ('* ))

;; definition 214 ok !

;; definition 214 from /usr/include/cairo/cairo.h:1794:1
(define cairo-toy-font-face-get-weight
   (foreign-library-function "libcairo" "cairo_toy_font_face_get_weight" 
     #:return-type int       #:arg-types ('* ))

;; definition 215 ok !

;; definition 215 from /usr/include/cairo/cairo.h:1800:1
(define cairo-user-font-face-create
   (foreign-library-function "libcairo" "cairo_user_font_face_create" 
     #:return-type '* 
    #:arg-types (list)))

;; definition 230 ok !

;; definition 230 from /usr/include/cairo/cairo.h:2067:1
(define cairo-user-scaled-font-get-foreground-marker
   (foreign-library-function "libcairo" "cairo_user_scaled_font_get_foreground_marker" 
     #:return-type '*       #:arg-types ('* ))

;; definition 231 ok !

;; definition 231 from /usr/include/cairo/cairo.h:2070:1
(define cairo-user-scaled-font-get-foreground-source
   (foreign-library-function "libcairo" "cairo_user_scaled_font_get_foreground_source" 
     #:return-type '*       #:arg-types ('* ))

;; definition 232 ok !

;; definition 232 from /usr/include/cairo/cairo.h:2075:1
(define cairo-get-operator
   (foreign-library-function "libcairo" "cairo_get_operator" 
     #:return-type int       #:arg-types ('* ))

;; definition 233 ok !

;; definition 233 from /usr/include/cairo/cairo.h:2078:1
(define cairo-get-source
   (foreign-library-function "libcairo" "cairo_get_source" 
     #:return-type '*       #:arg-types ('* ))

;; definition 235 ok !

;; definition 235 from /usr/include/cairo/cairo.h:2084:1
(define cairo-get-antialias
   (foreign-library-function "libcairo" "cairo_get_antialias" 
     #:return-type int       #:arg-types ('* ))

;; definition 236 ok !

;; definition 236 from /usr/include/cairo/cairo.h:2087:1
(define cairo-has-current-point
   (foreign-library-function "libcairo" "cairo_has_current_point" 
     #:return-type int       #:arg-types ('* ))

;; definition 237 ok !

;; definition 237 from /usr/include/cairo/cairo.h:2090:1
(define cairo-get-current-point
   (foreign-library-function "libcairo" "cairo_get_current_point" 
     #:return-type void       #:arg-types ('* '* '* ))

;; definition 238 ok !

;; definition 238 from /usr/include/cairo/cairo.h:2093:1
(define cairo-get-fill-rule
   (foreign-library-function "libcairo" "cairo_get_fill_rule" 
     #:return-type int       #:arg-types ('* ))

;; definition 240 ok !

;; definition 240 from /usr/include/cairo/cairo.h:2099:1
(define cairo-get-hairline
   (foreign-library-function "libcairo" "cairo_get_hairline" 
     #:return-type int       #:arg-types ('* ))

;; definition 241 ok !

;; definition 241 from /usr/include/cairo/cairo.h:2102:1
(define cairo-get-line-cap
   (foreign-library-function "libcairo" "cairo_get_line_cap" 
     #:return-type int       #:arg-types ('* ))

;; definition 242 ok !

;; definition 242 from /usr/include/cairo/cairo.h:2105:1
(define cairo-get-line-join
   (foreign-library-function "libcairo" "cairo_get_line_join" 
     #:return-type int       #:arg-types ('* ))

;; definition 244 ok !

;; definition 244 from /usr/include/cairo/cairo.h:2111:1
(define cairo-get-dash-count
   (foreign-library-function "libcairo" "cairo_get_dash_count" 
     #:return-type int       #:arg-types ('* ))

;; definition 245 ok !

;; definition 245 from /usr/include/cairo/cairo.h:2114:1
(define cairo-get-dash
   (foreign-library-function "libcairo" "cairo_get_dash" 
     #:return-type void       #:arg-types ('* '* '* ))

;; definition 246 ok !

;; definition 246 from /usr/include/cairo/cairo.h:2117:1
(define cairo-get-matrix
   (foreign-library-function "libcairo" "cairo_get_matrix" 
     #:return-type void       #:arg-types ('* '* ))

;; definition 247 ok !

;; definition 247 from /usr/include/cairo/cairo.h:2120:1
(define cairo-get-target
   (foreign-library-function "libcairo" "cairo_get_target" 
     #:return-type '*       #:arg-types ('* ))

;; definition 248 ok !

;; definition 248 from /usr/include/cairo/cairo.h:2123:1
(define cairo-get-group-target
   (foreign-library-function "libcairo" "cairo_get_group_target" 
     #:return-type '*       #:arg-types ('* ))

;; definition 256 ok !

;; definition 256 from /usr/include/cairo/cairo.h:2252:1
(define cairo-copy-path
   (foreign-library-function "libcairo" "cairo_copy_path" 
     #:return-type '*       #:arg-types ('* ))

;; definition 257 ok !

;; definition 257 from /usr/include/cairo/cairo.h:2255:1
(define cairo-copy-path-flat
   (foreign-library-function "libcairo" "cairo_copy_path_flat" 
     #:return-type '*       #:arg-types ('* ))

;; definition 258 ok !

;; definition 258 from /usr/include/cairo/cairo.h:2258:1
(define cairo-append-path
   (foreign-library-function "libcairo" "cairo_append_path" 
     #:return-type void       #:arg-types ('* '* ))

;; definition 259 ok !

;; definition 259 from /usr/include/cairo/cairo.h:2262:1
(define cairo-path-destroy
   (foreign-library-function "libcairo" "cairo_path_destroy" 
     #:return-type void       #:arg-types ('* ))

;; definition 260 ok !

;; definition 260 from /usr/include/cairo/cairo.h:2267:1
(define cairo-status
   (foreign-library-function "libcairo" "cairo_status" 
     #:return-type int       #:arg-types ('* ))

;; definition 262 ok !

;; definition 262 from /usr/include/cairo/cairo.h:2275:1
(define cairo-device-reference
   (foreign-library-function "libcairo" "cairo_device_reference" 
     #:return-type '*       #:arg-types ('* ))

;; definition 265 ok !

;; definition 265 from /usr/include/cairo/cairo.h:2322:1
(define cairo-device-get-type
   (foreign-library-function "libcairo" "cairo_device_get_type" 
     #:return-type int       #:arg-types ('* ))

;; definition 266 ok !

;; definition 266 from /usr/include/cairo/cairo.h:2325:1
(define cairo-device-status
   (foreign-library-function "libcairo" "cairo_device_status" 
     #:return-type int       #:arg-types ('* ))

;; definition 267 ok !

;; definition 267 from /usr/include/cairo/cairo.h:2328:1
(define cairo-device-acquire
   (foreign-library-function "libcairo" "cairo_device_acquire" 
     #:return-type int       #:arg-types ('* ))

;; definition 268 ok !

;; definition 268 from /usr/include/cairo/cairo.h:2331:1
(define cairo-device-release
   (foreign-library-function "libcairo" "cairo_device_release" 
     #:return-type void       #:arg-types ('* ))

;; definition 269 ok !

;; definition 269 from /usr/include/cairo/cairo.h:2334:1
(define cairo-device-flush
   (foreign-library-function "libcairo" "cairo_device_flush" 
     #:return-type void       #:arg-types ('* ))

;; definition 270 ok !

;; definition 270 from /usr/include/cairo/cairo.h:2337:1
(define cairo-device-finish
   (foreign-library-function "libcairo" "cairo_device_finish" 
     #:return-type void       #:arg-types ('* ))

;; definition 271 ok !

;; definition 271 from /usr/include/cairo/cairo.h:2340:1
(define cairo-device-destroy
   (foreign-library-function "libcairo" "cairo_device_destroy" 
     #:return-type void       #:arg-types ('* ))

;; definition 273 ok !

;; definition 273 from /usr/include/cairo/cairo.h:2346:1
(define cairo-device-get-user-data
   (foreign-library-function "libcairo" "cairo_device_get_user_data" 
     #:return-type '*       #:arg-types ('* '* ))

;; definition 277 ok !

;; definition 277 from /usr/include/cairo/cairo.h:2371:1
(define cairo-surface-map-to-image
   (foreign-library-function "libcairo" "cairo_surface_map_to_image" 
     #:return-type '*       #:arg-types ('* '* ))

;; definition 278 ok !

;; definition 278 from /usr/include/cairo/cairo.h:2375:1
(define cairo-surface-unmap-image
   (foreign-library-function "libcairo" "cairo_surface_unmap_image" 
     #:return-type void       #:arg-types ('* '* ))

;; definition 279 ok !

;; definition 279 from /usr/include/cairo/cairo.h:2379:1
(define cairo-surface-create-for-rectangle
   (foreign-library-function "libcairo" "cairo_surface_create_for_rectangle" 
     #:return-type '*       #:arg-types ('* double double double double ))

;; definition 300 ok !

;; definition 300 from /usr/include/cairo/cairo.h:2483:1
(define cairo-surface-reference
   (foreign-library-function "libcairo" "cairo_surface_reference" 
     #:return-type '*       #:arg-types ('* ))

;; definition 301 ok !

;; definition 301 from /usr/include/cairo/cairo.h:2486:1
(define cairo-surface-finish
   (foreign-library-function "libcairo" "cairo_surface_finish" 
     #:return-type void       #:arg-types ('* ))

;; definition 302 ok !

;; definition 302 from /usr/include/cairo/cairo.h:2489:1
(define cairo-surface-destroy
   (foreign-library-function "libcairo" "cairo_surface_destroy" 
     #:return-type void       #:arg-types ('* ))

;; definition 303 ok !

;; definition 303 from /usr/include/cairo/cairo.h:2492:1
(define cairo-surface-get-device
   (foreign-library-function "libcairo" "cairo_surface_get_device" 
     #:return-type '*       #:arg-types ('* ))

;; definition 305 ok !

;; definition 305 from /usr/include/cairo/cairo.h:2498:1
(define cairo-surface-status
   (foreign-library-function "libcairo" "cairo_surface_status" 
     #:return-type int       #:arg-types ('* ))

;; definition 308 ok !

;; definition 308 from /usr/include/cairo/cairo.h:2592:1
(define cairo-surface-get-type
   (foreign-library-function "libcairo" "cairo_surface_get_type" 
     #:return-type int       #:arg-types ('* ))

;; definition 309 ok !

;; definition 309 from /usr/include/cairo/cairo.h:2595:1
(define cairo-surface-get-content
   (foreign-library-function "libcairo" "cairo_surface_get_content" 
     #:return-type int       #:arg-types ('* ))

;; definition 310 ok !

;; definition 310 from /usr/include/cairo/cairo.h:2600:1
(define cairo-surface-write-to-png
   (foreign-library-function "libcairo" "cairo_surface_write_to_png" 
     #:return-type int       #:arg-types ('* '* ))

;; definition 312 ok !

;; definition 312 from /usr/include/cairo/cairo.h:2611:1
(define cairo-surface-get-user-data
   (foreign-library-function "libcairo" "cairo_surface_get_user_data" 
     #:return-type '*       #:arg-types ('* '* ))

;; definition 314 ok !

;; definition 314 from /usr/include/cairo/cairo.h:2634:1
(define cairo-surface-get-mime-data
   (foreign-library-function "libcairo" "cairo_surface_get_mime_data" 
     #:return-type void       #:arg-types ('* '* '* '* ))

;; definition 316 ok !

;; definition 316 from /usr/include/cairo/cairo.h:2648:1
(define cairo-surface-supports-mime-type
   (foreign-library-function "libcairo" "cairo_surface_supports_mime_type" 
     #:return-type int       #:arg-types ('* '* ))

;; definition 317 ok !

;; definition 317 from /usr/include/cairo/cairo.h:2652:1
(define cairo-surface-get-font-options
   (foreign-library-function "libcairo" "cairo_surface_get_font_options" 
     #:return-type void       #:arg-types ('* '* ))

;; definition 318 ok !

;; definition 318 from /usr/include/cairo/cairo.h:2656:1
(define cairo-surface-flush
   (foreign-library-function "libcairo" "cairo_surface_flush" 
     #:return-type void       #:arg-types ('* ))

;; definition 319 ok !

;; definition 319 from /usr/include/cairo/cairo.h:2659:1
(define cairo-surface-mark-dirty
   (foreign-library-function "libcairo" "cairo_surface_mark_dirty" 
     #:return-type void       #:arg-types ('* ))

;; definition 320 ok !

;; definition 320 from /usr/include/cairo/cairo.h:2662:1
(define cairo-surface-mark-dirty-rectangle
   (foreign-library-function "libcairo" "cairo_surface_mark_dirty_rectangle" 
     #:return-type void       #:arg-types ('* int int int int ))

;; definition 321 ok !

;; definition 321 from /usr/include/cairo/cairo.h:2669:1
(define cairo-surface-set-device-scale
   (foreign-library-function "libcairo" "cairo_surface_set_device_scale" 
     #:return-type void       #:arg-types ('* double double ))

;; definition 322 ok !

;; definition 322 from /usr/include/cairo/cairo.h:2674:1
(define cairo-surface-get-device-scale
   (foreign-library-function "libcairo" "cairo_surface_get_device_scale" 
     #:return-type void       #:arg-types ('* '* '* ))

;; definition 323 ok !

;; definition 323 from /usr/include/cairo/cairo.h:2679:1
(define cairo-surface-set-device-offset
   (foreign-library-function "libcairo" "cairo_surface_set_device_offset" 
     #:return-type void       #:arg-types ('* double double ))

;; definition 324 ok !

;; definition 324 from /usr/include/cairo/cairo.h:2684:1
(define cairo-surface-get-device-offset
   (foreign-library-function "libcairo" "cairo_surface_get_device_offset" 
     #:return-type void       #:arg-types ('* '* '* ))

;; definition 325 ok !

;; definition 325 from /usr/include/cairo/cairo.h:2689:1
(define cairo-surface-set-fallback-resolution
   (foreign-library-function "libcairo" "cairo_surface_set_fallback_resolution" 
     #:return-type void       #:arg-types ('* double double ))

;; definition 326 ok !

;; definition 326 from /usr/include/cairo/cairo.h:2694:1
(define cairo-surface-get-fallback-resolution
   (foreign-library-function "libcairo" "cairo_surface_get_fallback_resolution" 
     #:return-type void       #:arg-types ('* '* '* ))

;; definition 327 ok !

;; definition 327 from /usr/include/cairo/cairo.h:2699:1
(define cairo-surface-copy-page
   (foreign-library-function "libcairo" "cairo_surface_copy_page" 
     #:return-type void       #:arg-types ('* ))

;; definition 328 ok !

;; definition 328 from /usr/include/cairo/cairo.h:2702:1
(define cairo-surface-show-page
   (foreign-library-function "libcairo" "cairo_surface_show_page" 
     #:return-type void       #:arg-types ('* ))

;; definition 329 ok !

;; definition 329 from /usr/include/cairo/cairo.h:2705:1
(define cairo-surface-has-show-text-glyphs
   (foreign-library-function "libcairo" "cairo_surface_has_show_text_glyphs" 
     #:return-type int       #:arg-types ('* ))

;; definition 333 ok !

;; definition 333 from /usr/include/cairo/cairo.h:2726:1
(define cairo-image-surface-get-data
   (foreign-library-function "libcairo" "cairo_image_surface_get_data" 
     #:return-type '*       #:arg-types ('* ))

;; definition 334 ok !

;; definition 334 from /usr/include/cairo/cairo.h:2729:1
(define cairo-image-surface-get-format
   (foreign-library-function "libcairo" "cairo_image_surface_get_format" 
     #:return-type int       #:arg-types ('* ))

;; definition 335 ok !

;; definition 335 from /usr/include/cairo/cairo.h:2732:1
(define cairo-image-surface-get-width
   (foreign-library-function "libcairo" "cairo_image_surface_get_width" 
     #:return-type int       #:arg-types ('* ))

;; definition 336 ok !

;; definition 336 from /usr/include/cairo/cairo.h:2735:1
(define cairo-image-surface-get-height
   (foreign-library-function "libcairo" "cairo_image_surface_get_height" 
     #:return-type int       #:arg-types ('* ))

;; definition 337 ok !

;; definition 337 from /usr/include/cairo/cairo.h:2738:1
(define cairo-image-surface-get-stride
   (foreign-library-function "libcairo" "cairo_image_surface_get_stride" 
     #:return-type int       #:arg-types ('* ))

;; definition 338 ok !

;; definition 338 from /usr/include/cairo/cairo.h:2743:1
(define cairo-image-surface-create-from-png
   (foreign-library-function "libcairo" "cairo_image_surface_create_from_png" 
     #:return-type '*       #:arg-types ('* ))

;; definition 341 ok !

;; definition 341 from /usr/include/cairo/cairo.h:2758:1
(define cairo-recording-surface-ink-extents
   (foreign-library-function "libcairo" "cairo_recording_surface_ink_extents" 
     #:return-type void       #:arg-types ('* '* '* '* '* ))

;; definition 342 ok !

;; definition 342 from /usr/include/cairo/cairo.h:2765:1
(define cairo-recording-surface-get-extents
   (foreign-library-function "libcairo" "cairo_recording_surface_get_extents" 
     #:return-type int       #:arg-types ('* '* ))

;; definition 349 ok !

;; definition 349 from /usr/include/cairo/cairo.h:2877:1
(define cairo-raster-source-pattern-set-callback-data
   (foreign-library-function "libcairo" "cairo_raster_source_pattern_set_callback_data" 
     #:return-type void       #:arg-types ('* '* ))

;; definition 350 ok !

;; definition 350 from /usr/include/cairo/cairo.h:2881:1
(define cairo-raster-source-pattern-get-callback-data
   (foreign-library-function "libcairo" "cairo_raster_source_pattern_get_callback_data" 
     #:return-type '*       #:arg-types ('* ))

;; definition 352 ok !

;; definition 352 from /usr/include/cairo/cairo.h:2889:1
(define cairo-raster-source-pattern-get-acquire
   (foreign-library-function "libcairo" "cairo_raster_source_pattern_get_acquire" 
     #:return-type void       #:arg-types ('* '* '* ))

;; definition 359 ok !

;; definition 359 from /usr/include/cairo/cairo.h:2916:1
(define cairo-pattern-create-rgb
   (foreign-library-function "libcairo" "cairo_pattern_create_rgb" 
     #:return-type '*       #:arg-types (double double double ))

;; definition 360 ok !

;; definition 360 from /usr/include/cairo/cairo.h:2919:1
(define cairo-pattern-create-rgba
   (foreign-library-function "libcairo" "cairo_pattern_create_rgba" 
     #:return-type '*       #:arg-types (double double double double ))

;; definition 361 ok !

;; definition 361 from /usr/include/cairo/cairo.h:2923:1
(define cairo-pattern-create-for-surface
   (foreign-library-function "libcairo" "cairo_pattern_create_for_surface" 
     #:return-type '*       #:arg-types ('* ))

;; definition 362 ok !

;; definition 362 from /usr/include/cairo/cairo.h:2926:1
(define cairo-pattern-create-linear
   (foreign-library-function "libcairo" "cairo_pattern_create_linear" 
     #:return-type '*       #:arg-types (double double double double ))

;; definition 363 ok !

;; definition 363 from /usr/include/cairo/cairo.h:2930:1
(define cairo-pattern-create-radial
   (foreign-library-function "libcairo" "cairo_pattern_create_radial" 
     #:return-type '*       #:arg-types (double double double double double double ))

;; definition 364 ok !

;; definition 364 from /usr/include/cairo/cairo.h:2934:1
(define cairo-pattern-create-mesh
   (foreign-library-function "libcairo" "cairo_pattern_create_mesh" 
     #:return-type '* 
    #:arg-types (list)))

;; definition 365 ok !

;; definition 365 from /usr/include/cairo/cairo.h:2937:1
(define cairo-pattern-reference
   (foreign-library-function "libcairo" "cairo_pattern_reference" 
     #:return-type '*       #:arg-types ('* ))

;; definition 366 ok !

;; definition 366 from /usr/include/cairo/cairo.h:2940:1
(define cairo-pattern-destroy
   (foreign-library-function "libcairo" "cairo_pattern_destroy" 
     #:return-type void       #:arg-types ('* ))

;; definition 368 ok !

;; definition 368 from /usr/include/cairo/cairo.h:2946:1
(define cairo-pattern-status
   (foreign-library-function "libcairo" "cairo_pattern_status" 
     #:return-type int       #:arg-types ('* ))

;; definition 369 ok !

;; definition 369 from /usr/include/cairo/cairo.h:2949:1
(define cairo-pattern-get-user-data
   (foreign-library-function "libcairo" "cairo_pattern_get_user_data" 
     #:return-type '*       #:arg-types ('* '* ))

;; definition 373 ok !

;; definition 373 from /usr/include/cairo/cairo.h:3000:1
(define cairo-pattern-get-type
   (foreign-library-function "libcairo" "cairo_pattern_get_type" 
     #:return-type int       #:arg-types ('* ))

;; definition 374 ok !

;; definition 374 from /usr/include/cairo/cairo.h:3003:1
(define cairo-pattern-add-color-stop-rgb
   (foreign-library-function "libcairo" "cairo_pattern_add_color_stop_rgb" 
     #:return-type void       #:arg-types ('* double double double double ))

;; definition 375 ok !

;; definition 375 from /usr/include/cairo/cairo.h:3008:1
(define cairo-pattern-add-color-stop-rgba
   (foreign-library-function "libcairo" "cairo_pattern_add_color_stop_rgba" 
     #:return-type void       #:arg-types ('* double double double double double ))

;; definition 376 ok !

;; definition 376 from /usr/include/cairo/cairo.h:3014:1
(define cairo-mesh-pattern-begin-patch
   (foreign-library-function "libcairo" "cairo_mesh_pattern_begin_patch" 
     #:return-type void       #:arg-types ('* ))

;; definition 377 ok !

;; definition 377 from /usr/include/cairo/cairo.h:3017:1
(define cairo-mesh-pattern-end-patch
   (foreign-library-function "libcairo" "cairo_mesh_pattern_end_patch" 
     #:return-type void       #:arg-types ('* ))

;; definition 378 ok !

;; definition 378 from /usr/include/cairo/cairo.h:3020:1
(define cairo-mesh-pattern-curve-to
   (foreign-library-function "libcairo" "cairo_mesh_pattern_curve_to" 
     #:return-type void       #:arg-types ('* double double double double double double ))

;; definition 379 ok !

;; definition 379 from /usr/include/cairo/cairo.h:3026:1
(define cairo-mesh-pattern-line-to
   (foreign-library-function "libcairo" "cairo_mesh_pattern_line_to" 
     #:return-type void       #:arg-types ('* double double ))

;; definition 380 ok !

;; definition 380 from /usr/include/cairo/cairo.h:3030:1
(define cairo-mesh-pattern-move-to
   (foreign-library-function "libcairo" "cairo_mesh_pattern_move_to" 
     #:return-type void       #:arg-types ('* double double ))

;; definition 384 ok !

;; definition 384 from /usr/include/cairo/cairo.h:3050:1
(define cairo-pattern-set-matrix
   (foreign-library-function "libcairo" "cairo_pattern_set_matrix" 
     #:return-type void       #:arg-types ('* '* ))

;; definition 385 ok !

;; definition 385 from /usr/include/cairo/cairo.h:3054:1
(define cairo-pattern-get-matrix
   (foreign-library-function "libcairo" "cairo_pattern_get_matrix" 
     #:return-type void       #:arg-types ('* '* ))

;; definition 389 ok !

;; definition 389 from /usr/include/cairo/cairo.h:3093:1
(define cairo-pattern-get-extend
   (foreign-library-function "libcairo" "cairo_pattern_get_extend" 
     #:return-type int       #:arg-types ('* ))

;; definition 393 ok !

;; definition 393 from /usr/include/cairo/cairo.h:3128:1
(define cairo-pattern-get-filter
   (foreign-library-function "libcairo" "cairo_pattern_get_filter" 
     #:return-type int       #:arg-types ('* ))

;; definition 394 ok !

;; definition 394 from /usr/include/cairo/cairo.h:3131:1
(define cairo-pattern-get-rgba
   (foreign-library-function "libcairo" "cairo_pattern_get_rgba" 
     #:return-type int       #:arg-types ('* '* '* '* '* ))

;; definition 395 ok !

;; definition 395 from /usr/include/cairo/cairo.h:3136:1
(define cairo-pattern-get-surface
   (foreign-library-function "libcairo" "cairo_pattern_get_surface" 
     #:return-type int       #:arg-types ('* '* ))

;; definition 396 ok !

;; definition 396 from /usr/include/cairo/cairo.h:3141:1
(define cairo-pattern-get-color-stop-rgba
   (foreign-library-function "libcairo" "cairo_pattern_get_color_stop_rgba" 
     #:return-type int       #:arg-types ('* int '* '* '* '* '* ))

;; definition 397 ok !

;; definition 397 from /usr/include/cairo/cairo.h:3147:1
(define cairo-pattern-get-color-stop-count
   (foreign-library-function "libcairo" "cairo_pattern_get_color_stop_count" 
     #:return-type int       #:arg-types ('* '* ))

;; definition 398 ok !

;; definition 398 from /usr/include/cairo/cairo.h:3151:1
(define cairo-pattern-get-linear-points
   (foreign-library-function "libcairo" "cairo_pattern_get_linear_points" 
     #:return-type int       #:arg-types ('* '* '* '* '* ))

;; definition 399 ok !

;; definition 399 from /usr/include/cairo/cairo.h:3156:1
(define cairo-pattern-get-radial-circles
   (foreign-library-function "libcairo" "cairo_pattern_get_radial_circles" 
     #:return-type int       #:arg-types ('* '* '* '* '* '* '* ))

;; definition 400 ok !

;; definition 400 from /usr/include/cairo/cairo.h:3161:1
(define cairo-mesh-pattern-get-patch-count
   (foreign-library-function "libcairo" "cairo_mesh_pattern_get_patch_count" 
     #:return-type int       #:arg-types ('* '* ))

;; definition 404 ok !

;; definition 404 from /usr/include/cairo/cairo.h:3184:1
(define cairo-matrix-init
   (foreign-library-function "libcairo" "cairo_matrix_init" 
     #:return-type void       #:arg-types ('* double double double double double double ))

;; definition 405 ok !

;; definition 405 from /usr/include/cairo/cairo.h:3190:1
(define cairo-matrix-init-identity
   (foreign-library-function "libcairo" "cairo_matrix_init_identity" 
     #:return-type void       #:arg-types ('* ))

;; definition 406 ok !

;; definition 406 from /usr/include/cairo/cairo.h:3193:1
(define cairo-matrix-init-translate
   (foreign-library-function "libcairo" "cairo_matrix_init_translate" 
     #:return-type void       #:arg-types ('* double double ))

;; definition 407 ok !

;; definition 407 from /usr/include/cairo/cairo.h:3197:1
(define cairo-matrix-init-scale
   (foreign-library-function "libcairo" "cairo_matrix_init_scale" 
     #:return-type void       #:arg-types ('* double double ))

;; definition 408 ok !

;; definition 408 from /usr/include/cairo/cairo.h:3201:1
(define cairo-matrix-init-rotate
   (foreign-library-function "libcairo" "cairo_matrix_init_rotate" 
     #:return-type void       #:arg-types ('* double ))

;; definition 409 ok !

;; definition 409 from /usr/include/cairo/cairo.h:3205:1
(define cairo-matrix-translate
   (foreign-library-function "libcairo" "cairo_matrix_translate" 
     #:return-type void       #:arg-types ('* double double ))

;; definition 410 ok !

;; definition 410 from /usr/include/cairo/cairo.h:3208:1
(define cairo-matrix-scale
   (foreign-library-function "libcairo" "cairo_matrix_scale" 
     #:return-type void       #:arg-types ('* double double ))

;; definition 411 ok !

;; definition 411 from /usr/include/cairo/cairo.h:3211:1
(define cairo-matrix-rotate
   (foreign-library-function "libcairo" "cairo_matrix_rotate" 
     #:return-type void       #:arg-types ('* double ))

;; definition 412 ok !

;; definition 412 from /usr/include/cairo/cairo.h:3214:1
(define cairo-matrix-invert
   (foreign-library-function "libcairo" "cairo_matrix_invert" 
     #:return-type int       #:arg-types ('* ))

;; definition 413 ok !

;; definition 413 from /usr/include/cairo/cairo.h:3217:1
(define cairo-matrix-multiply
   (foreign-library-function "libcairo" "cairo_matrix_multiply" 
     #:return-type void       #:arg-types ('* '* '* ))

;; definition 414 ok !

;; definition 414 from /usr/include/cairo/cairo.h:3222:1
(define cairo-matrix-transform-distance
   (foreign-library-function "libcairo" "cairo_matrix_transform_distance" 
     #:return-type void       #:arg-types ('* '* '* ))

;; definition 415 ok !

;; definition 415 from /usr/include/cairo/cairo.h:3226:1
(define cairo-matrix-transform-point
   (foreign-library-function "libcairo" "cairo_matrix_transform_point" 
     #:return-type void       #:arg-types ('* '* '* ))

;; definition 420 ok !

;; definition 420 from /usr/include/cairo/cairo.h:3264:1
(define cairo-region-create
   (foreign-library-function "libcairo" "cairo_region_create" 
     #:return-type '* 
    #:arg-types (list)))

;; definition 421 ok !

;; definition 421 from /usr/include/cairo/cairo.h:3267:1
(define cairo-region-create-rectangle
   (foreign-library-function "libcairo" "cairo_region_create_rectangle" 
     #:return-type '*       #:arg-types ('* ))

;; definition 422 ok !

;; definition 422 from /usr/include/cairo/cairo.h:3270:1
(define cairo-region-create-rectangles
   (foreign-library-function "libcairo" "cairo_region_create_rectangles" 
     #:return-type '*       #:arg-types ('* int ))

;; definition 423 ok !

;; definition 423 from /usr/include/cairo/cairo.h:3274:1
(define cairo-region-copy
   (foreign-library-function "libcairo" "cairo_region_copy" 
     #:return-type '*       #:arg-types ('* ))

;; definition 424 ok !

;; definition 424 from /usr/include/cairo/cairo.h:3277:1
(define cairo-region-reference
   (foreign-library-function "libcairo" "cairo_region_reference" 
     #:return-type '*       #:arg-types ('* ))

;; definition 425 ok !

;; definition 425 from /usr/include/cairo/cairo.h:3280:1
(define cairo-region-destroy
   (foreign-library-function "libcairo" "cairo_region_destroy" 
     #:return-type void       #:arg-types ('* ))

;; definition 426 ok !

;; definition 426 from /usr/include/cairo/cairo.h:3283:1
(define cairo-region-equal
   (foreign-library-function "libcairo" "cairo_region_equal" 
     #:return-type int       #:arg-types ('* '* ))

;; definition 427 ok !

;; definition 427 from /usr/include/cairo/cairo.h:3286:1
(define cairo-region-status
   (foreign-library-function "libcairo" "cairo_region_status" 
     #:return-type int       #:arg-types ('* ))

;; definition 428 ok !

;; definition 428 from /usr/include/cairo/cairo.h:3289:1
(define cairo-region-get-extents
   (foreign-library-function "libcairo" "cairo_region_get_extents" 
     #:return-type void       #:arg-types ('* '* ))

;; definition 429 ok !

;; definition 429 from /usr/include/cairo/cairo.h:3293:1
(define cairo-region-num-rectangles
   (foreign-library-function "libcairo" "cairo_region_num_rectangles" 
     #:return-type int       #:arg-types ('* ))

;; definition 430 ok !

;; definition 430 from /usr/include/cairo/cairo.h:3296:1
(define cairo-region-get-rectangle
   (foreign-library-function "libcairo" "cairo_region_get_rectangle" 
     #:return-type void       #:arg-types ('* int '* ))

;; definition 431 ok !

;; definition 431 from /usr/include/cairo/cairo.h:3301:1
(define cairo-region-is-empty
   (foreign-library-function "libcairo" "cairo_region_is_empty" 
     #:return-type int       #:arg-types ('* ))

;; definition 432 ok !

;; definition 432 from /usr/include/cairo/cairo.h:3304:1
(define cairo-region-contains-rectangle
   (foreign-library-function "libcairo" "cairo_region_contains_rectangle" 
     #:return-type int       #:arg-types ('* '* ))

;; definition 433 ok !

;; definition 433 from /usr/include/cairo/cairo.h:3308:1
(define cairo-region-contains-point
   (foreign-library-function "libcairo" "cairo_region_contains_point" 
     #:return-type int       #:arg-types ('* int int ))

;; definition 434 ok !

;; definition 434 from /usr/include/cairo/cairo.h:3311:1
(define cairo-region-translate
   (foreign-library-function "libcairo" "cairo_region_translate" 
     #:return-type void       #:arg-types ('* int int ))

;; definition 435 ok !

;; definition 435 from /usr/include/cairo/cairo.h:3314:1
(define cairo-region-subtract
   (foreign-library-function "libcairo" "cairo_region_subtract" 
     #:return-type int       #:arg-types ('* '* ))

;; definition 436 ok !

;; definition 436 from /usr/include/cairo/cairo.h:3317:1
(define cairo-region-subtract-rectangle
   (foreign-library-function "libcairo" "cairo_region_subtract_rectangle" 
     #:return-type int       #:arg-types ('* '* ))

;; definition 437 ok !

;; definition 437 from /usr/include/cairo/cairo.h:3321:1
(define cairo-region-intersect
   (foreign-library-function "libcairo" "cairo_region_intersect" 
     #:return-type int       #:arg-types ('* '* ))

;; definition 438 ok !

;; definition 438 from /usr/include/cairo/cairo.h:3324:1
(define cairo-region-intersect-rectangle
   (foreign-library-function "libcairo" "cairo_region_intersect_rectangle" 
     #:return-type int       #:arg-types ('* '* ))

;; definition 439 ok !

;; definition 439 from /usr/include/cairo/cairo.h:3328:1
(define cairo-region-union
   (foreign-library-function "libcairo" "cairo_region_union" 
     #:return-type int       #:arg-types ('* '* ))

;; definition 440 ok !

;; definition 440 from /usr/include/cairo/cairo.h:3331:1
(define cairo-region-union-rectangle
   (foreign-library-function "libcairo" "cairo_region_union_rectangle" 
     #:return-type int       #:arg-types ('* '* ))

;; definition 441 ok !

;; definition 441 from /usr/include/cairo/cairo.h:3335:1
(define cairo-region-xor
   (foreign-library-function "libcairo" "cairo_region_xor" 
     #:return-type int       #:arg-types ('* '* ))

;; definition 442 ok !

;; definition 442 from /usr/include/cairo/cairo.h:3338:1
(define cairo-region-xor-rectangle
   (foreign-library-function "libcairo" "cairo_region_xor_rectangle" 
     #:return-type int       #:arg-types ('* '* ))

;; definition 443 ok !

;; definition 443 from /usr/include/cairo/cairo.h:3343:1
(define cairo-debug-reset-static-data
   (foreign-library-function "libcairo" "cairo_debug_reset_static_data" 
     #:return-type void 
    #:arg-types (list)))


;; =================================== 

Outcome 256 good / 89 bad apples / total 345

;; =================================== 

undefined
> 