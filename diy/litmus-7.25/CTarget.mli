(****************************************************************************)
(*                           the diy toolsuite                              *)
(*                                                                          *)
(* Jade Alglave, University College London, UK.                             *)
(* Luc Maranget, INRIA Paris-Rocquencourt, France.                          *)
(*                                                                          *)
(* Copyright 2014-present Institut National de Recherche en Informatique et *)
(* en Automatique and the authors. All rights reserved.                     *)
(*                                                                          *)
(* This software is governed by the CeCILL-B license under French law and   *)
(* abiding by the rules of distribution of free software. You can use,      *)
(* modify and/ or redistribute the software under the terms of the CeCILL-B *)
(* license as circulated by CEA, CNRS and INRIA at the following URL        *)
(* "http://www.cecill.info". We also give a copy in LICENSE.txt.            *)
(****************************************************************************)

(* C target, a simplified template *)

type arch_reg = string

type t =
  { inputs : (string * CType.t) list ;
    finals : arch_reg list ;
    code : string ; }

   
val fmt_reg : arch_reg -> string
val dump_out_reg : int -> arch_reg -> string
val compile_out_reg : int -> arch_reg -> string
val compile_presi_out_reg : int -> arch_reg -> string
val compile_presi_out_ptr_reg : int -> arch_reg -> string
val get_addrs : t -> string list
