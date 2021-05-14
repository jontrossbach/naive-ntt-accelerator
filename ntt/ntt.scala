// import chisel3.util.{HasBlackBoxResource}
// addResource("/vsrc/Sha3BlackBox.v")
// Use the above to wrap into chisel
//
// https://github.com/IBM/rocc-software
// And use the above repo headers style to HLS your function


import chisel3._
import chisel3.util._
import chisel3.experimental._ // To enable experimental features

class IBUFDS extends BlackBox(Map("DIFF_TERM" -> "TRUE",
                                  "IOSTANDARD" -> "DEFAULT")) {
  val io = IO(new Bundle {
    val O = Output(Clock())
    val I = Input(Clock())
    val IB = Input(Clock())
  })
}

class Top extends Module {
  val io = IO(new Bundle {})
  val ibufds = Module(new IBUFDS)
  // connecting one of IBUFDS's input clock ports to Top's clock signal
  ibufds.io.I := clock
}

