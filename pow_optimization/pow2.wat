(module
  (func (export "pow2")
    (param $p1 i32)
    (param $p2 i32)
    (result i32)
    local.get $p1
    i32.const 16
    i32.mul
    local.get $p2
    i32.const 8
    i32.div_u
    i32.add  
  )
  
  (func (export "pow2_reverse")
    (param $p1 i32)
    (param $p2 i32)
    (result i32)
    local.get $p2
    i32.const 8
    i32.div_u
    local.get $p1
    i32.const 16
    i32.mul
    i32.add
  )

  (func (export "pow2_mul_shift")
    (param $p1 i32)
    (param $p2 i32)
    (result i32)
    local.get $p1
    i32.const 16
    i32.shl
    local.get $p2
    i32.const 8
    i32.div_u
    i32.add
 )

  (func (export "pow2_mul_div_shift")
    (param $p1 i32)
    (param $p2 i32)
    (result i32)
    local.get $p2
    i32.const 3
    i32.shr_u
    local.get $p1
    i32.const 4
    i32.shl
    i32.add
  )

  (func (export "pow2_mul_div_nor")
    (param $p1 i32)
    (param $p2 i32)
    (result i32)
    local.get $p1
    i32.const 4
    i32.shl
    local.get $p2
    i32.const 3
    i32.shr_u
    i32.add
  )

  (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
  (export "pow2_opt" (func $0))
  (func $0 (param $0 i32) (param $1 i32) (result i32)
    (i32.add
      (i32.shl
        (local.get $0)
        (i32.const 4)
      )
      (i32.shr_u
        (local.get $1)
        (i32.const 3)
      )
   )
  )
)