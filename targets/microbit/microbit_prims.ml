[@@@ocaml.warning "-32"] (* unused value *)
[@@@ocaml.warning "-60"] (* unused module *)
external button_is_pressed: int -> bool = "caml_microbit_button_is_pressed" [@@noalloc]

external pin_mode: int -> int -> unit = "caml_microbit_pin_mode" [@@noalloc]
external digital_write: int -> int -> unit = "caml_microbit_digital_write" [@@noalloc]
external digital_read: int -> bool = "caml_microbit_digital_read" [@@noalloc]
external analog_write: int -> int -> unit = "caml_microbit_analog_write" [@@noalloc]
external analog_read: int -> int = "caml_microbit_analog_read" [@@noalloc]

external delay: int -> unit = "caml_delay" [@@noalloc]
external millis : unit -> int = "caml_millis" [@@noalloc]

external print_string: string -> unit = "caml_microbit_print_string" [@@noalloc]
external clear_screen: unit -> unit = "caml_microbit_clear_screen" [@@noalloc]
external print_image: bytes -> unit = "caml_microbit_print_image" [@@noalloc]
external write_pixel: int -> int -> bool -> unit = "caml_microbit_write_pixel" [@@noalloc]

external serial_write: char -> unit = "caml_microbit_serial_write" [@@noalloc]
external serial_write_string: string -> unit = "caml_microbit_serial_write_string" [@@noalloc]
external serial_read: unit -> char = "caml_microbit_serial_read" [@@noalloc]
external serial_read_string: unit -> string = "caml_microbit_serial_read_string"

external accelerometer_x: unit -> int = "caml_microbit_accelerometer_x" [@@noalloc]
external accelerometer_y: unit -> int = "caml_microbit_accelerometer_y" [@@noalloc]
external accelerometer_z: unit -> int = "caml_microbit_accelerometer_z" [@@noalloc]
external accelerometer_pitch: unit -> int = "caml_microbit_accelerometer_pitch" [@@noalloc]
external accelerometer_roll: unit -> int = "caml_microbit_accelerometer_roll" [@@noalloc]

external compass_calibrate: unit -> unit = "caml_microbit_compass_calibrate" [@@noalloc]
external compass_heading: unit -> int = "caml_microbit_compass_heading" [@@noalloc]

external radio_init: unit -> unit = "caml_microbit_radio_init"
external radio_send: string -> unit = "caml_microbit_radio_send"
external radio_recv: unit -> string = "caml_microbit_radio_recv"

external i2c_init: unit -> unit = "caml_microbit_i2c_init"
external i2c__write: int -> bytes -> unit = "caml_microbit_i2c_write"
external i2c_read: int -> bytes = "caml_microbit_i2c_read"

external spi_init_master: unit -> unit = "caml_microbit_spi_init_master"
external spi_transmit: char -> char = "caml_microbit_spi_transmit" [@@noalloc]