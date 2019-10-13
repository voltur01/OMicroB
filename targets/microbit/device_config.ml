let default_arm_cxx_options = [ "-mcpu=cortex-m0"; "-mthumb";
                                "-fno-exceptions"; "-fno-unwind-tables";
                                "-fdata-sections"; "-ffunction-sections";
                                "-O"; "-g"; "-Wall" ]

(** Choose correct config according to name *)
let get_config name = match name with
  | _ -> get_config name

(** Get the names of all configs *)
let all_config_names () = [
  "microbit"
]@(all_config_names ())

(* | MICROBIT -> [ "-I"; Filename.concat libdir "targets/microbit";
      *                 Filename.concat libdir "targets/microbit/microbit.cma";
      *                 "-open"; "Microbit" ] *)


(******************************************************************************)
(* Compile a .c into a .arm_elf *)

(* let available_arm_elf = ref input_arm_elf
 * 
 * let microbitdir =
 *   if local then Filename.concat Config.builddir "src/byterun/microbit"
 *   else Filename.concat Config.includedir "microbit"
 * 
 * let conc_microbit s = Filename.concat microbitdir s
 * 
 * let () =
 *   if !device_config.typeD = MICROBIT && available_c <> None &&
 *      (flash || output_arm_elf <> None || output_hex <> None || no_output_requested) then (
 *     should_be_none_file input_arm_elf;
 *     should_be_none_file input_hex;
 * 
 *     let input_path = match available_c with
 *       | None -> error "no input file to generate a .arm_elf"
 *       | Some p -> p in
 * 
 *     let o_output_path = get_first_defined [
 *         output_arm_elf;
 *         output_hex;
 *         Some input_path;
 *       ] ".arm_o"
 * 
 *     and output_path = get_first_defined [
 *         output_arm_elf;
 *         output_hex;
 *         Some input_path;
 *       ] ".arm_elf" in
 * 
 *     available_arm_elf := Some output_path;
 * 
 *     let cmd = [ Config.arm_cxx ] @ default_arm_cxx_options in
 *     let cmd = cmd @ [ "-D__MICROBIT__" ] in
 *     let cmd = cmd @ [ "-I"; Filename.concat includedir "microbit" ] in
 *     let cmd = cmd @ [ "-o"; o_output_path ] @ [ "-c"; input_path ] in
 *     run cmd;
 * 
 *     let cmd = [ Config.arm_cxx ] @ default_arm_cxx_options in
 *     let cmd = cmd @ [ "--specs=nosys.specs" ] in
 *     let cmd = cmd @ [ "-D__MICROBIT__" ] in
 *     let cmd = cmd @ [ "-T"; conc_microbit "NRF51822.ld" ] in
 *     let cmd = cmd @ [ conc_microbit "startup.o";
 *                       o_output_path;
 *                       conc_microbit "microbitlib.o" ] in
 *     let cmd = cmd @ [ "-lnosys"; "-lstdc++"; "-lsupc++"; "-lm"; "-lc"; "-lgcc"; "-lstdc++"; "-lsupc++"; "-lm"; "-lc"; "-lgcc" ] in
 *     let cmd = cmd @ [ "-o" ; output_path ] in
 *     run cmd
 *   )
 * 
 * let available_arm_elf = !available_arm_elf
 * 
 * let () =
 *   if !device_config.typeD = MICROBIT && available_arm_elf <> None &&
 *      (flash || output_hex <> None || no_output_requested) then (
 * 
 *     should_be_none_file input_hex;
 * 
 *     let input_path = match available_arm_elf with
 *       | None -> error "no input file to generate a .hex"
 *       | Some p -> p in
 * 
 *     let output_path = get_first_defined [
 *         output_hex;
 *         Some input_path;
 *       ] ".hex" in
 * 
 *     available_hex := Some output_path;
 * 
 *     let cmd = [ Config.arm_objcopy; "-O"; "ihex"; input_path; output_path ] in
 *     run cmd
 *   ) *)
