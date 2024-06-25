(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (import "env" "buffer" (memory $mimport$10 80))
 (import "env" "cnvs_size" (global $gimport$0 i32))
 (import "env" "no_hit_color" (global $gimport$1 i32))
 (import "env" "hit_color" (global $gimport$2 i32))
 (import "env" "obj_start" (global $gimport$3 i32))
 (import "env" "obj_size" (global $gimport$4 i32))
 (import "env" "obj_cnt" (global $gimport$5 i32))
 (import "env" "x_offset" (global $gimport$6 i32))
 (import "env" "y_offset" (global $gimport$7 i32))
 (import "env" "xv_offset" (global $gimport$8 i32))
 (import "env" "yv_offset" (global $gimport$9 i32))
 (export "main" (func $1))
 (func $0 (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $4
   (i32.add
    (local.tee $3
     (local.get $0)
    )
    (global.get $gimport$4)
   )
  )
  (local.set $5
   (i32.add
    (global.get $gimport$4)
    (local.get $1)
   )
  )
  (loop $label$1
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.ge_u
       (local.get $3)
       (global.get $gimport$0)
      )
     )
     (br_if $label$3
      (i32.ge_u
       (local.get $1)
       (global.get $gimport$0)
      )
     )
     (i32.store
      (i32.shl
       (i32.add
        (i32.mul
         (local.get $1)
         (global.get $gimport$0)
        )
        (local.get $3)
       )
       (i32.const 2)
      )
      (local.get $2)
     )
    )
    (if
     (i32.ge_u
      (local.tee $3
       (i32.add
        (local.get $3)
        (i32.const 1)
       )
      )
      (local.get $4)
     )
     (block
      (local.set $3
       (local.get $0)
      )
      (br_if $label$2
       (i32.ge_u
        (local.tee $1
         (i32.add
          (local.get $1)
          (i32.const 1)
         )
        )
        (local.get $5)
       )
      )
     )
    )
    (br $label$1)
   )
  )
 )
 (func $1
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $1
   (i32.shl
    (i32.mul
     (global.get $gimport$0)
     (global.get $gimport$0)
    )
    (i32.const 2)
   )
  )
  (loop $label$1
   (i32.store
    (local.get $0)
    (i32.const -16777216)
   )
   (br_if $label$1
    (i32.gt_u
     (local.get $1)
     (local.tee $0
      (i32.add
       (local.get $0)
       (i32.const 4)
      )
     )
    )
   )
  )
  (loop $label$2
   (local.set $0
    (i32.and
     (i32.add
      (i32.load
       (i32.add
        (local.tee $1
         (i32.add
          (global.get $gimport$3)
          (i32.shl
           (local.get $3)
           (i32.const 4)
          )
         )
        )
        (global.get $gimport$9)
       )
      )
      (i32.load
       (local.tee $2
        (i32.add
         (local.get $1)
         (global.get $gimport$7)
        )
       )
      )
     )
     (i32.const 511)
    )
   )
   (i32.store
    (local.tee $4
     (i32.add
      (local.get $1)
      (global.get $gimport$6)
     )
    )
    (i32.and
     (i32.add
      (i32.load
       (local.get $4)
      )
      (i32.load
       (i32.add
        (local.get $1)
        (global.get $gimport$8)
       )
      )
     )
     (i32.const 511)
    )
   )
   (i32.store
    (local.get $2)
    (local.get $0)
   )
   (br_if $label$2
    (i32.lt_u
     (local.tee $3
      (i32.add
       (local.get $3)
       (i32.const 1)
      )
     )
     (global.get $gimport$5)
    )
   )
  )
  (local.set $3
   (i32.const 0)
  )
  (loop $label$3
   (local.set $0
    (i32.const 0)
   )
   (local.set $1
    (i32.load
     (i32.add
      (local.tee $2
       (i32.add
        (global.get $gimport$3)
        (i32.shl
         (local.get $3)
         (i32.const 4)
        )
       )
      )
      (global.get $gimport$6)
     )
    )
   )
   (local.set $4
    (i32.load
     (i32.add
      (local.get $2)
      (global.get $gimport$7)
     )
    )
   )
   (if
    (loop $label$4 (result i32)
     (if (result i32)
      (i32.lt_u
       (local.tee $0
        (select
         (i32.add
          (local.get $0)
          (i32.const 1)
         )
         (local.get $0)
         (i32.eq
          (local.get $0)
          (local.get $3)
         )
        )
       )
       (global.get $gimport$5)
      )
      (block (result i32)
       (if
        (i32.le_u
         (global.get $gimport$4)
         (select
          (i32.sub
           (i32.const 0)
           (local.tee $2
            (i32.sub
             (local.get $1)
             (i32.load
              (i32.add
               (global.get $gimport$6)
               (i32.add
                (global.get $gimport$3)
                (i32.shl
                 (local.get $0)
                 (i32.const 4)
                )
               )
              )
             )
            )
           )
          )
          (local.get $2)
          (i32.lt_s
           (local.get $2)
           (i32.const 0)
          )
         )
        )
        (block
         (local.set $0
          (i32.add
           (local.get $0)
           (i32.const 1)
          )
         )
         (br $label$4)
        )
       )
       (if
        (i32.le_u
         (global.get $gimport$4)
         (select
          (i32.sub
           (i32.const 0)
           (local.tee $2
            (i32.sub
             (local.get $4)
             (i32.load
              (i32.add
               (global.get $gimport$7)
               (i32.add
                (global.get $gimport$3)
                (i32.shl
                 (local.get $0)
                 (i32.const 4)
                )
               )
              )
             )
            )
           )
          )
          (local.get $2)
          (i32.lt_s
           (local.get $2)
           (i32.const 0)
          )
         )
        )
        (block
         (local.set $0
          (i32.add
           (local.get $0)
           (i32.const 1)
          )
         )
         (br $label$4)
        )
       )
       (i32.const 1)
      )
      (i32.const 0)
     )
    )
    (call $0
     (local.get $1)
     (local.get $4)
     (global.get $gimport$2)
    )
    (call $0
     (local.get $1)
     (local.get $4)
     (global.get $gimport$1)
    )
   )
   (br_if $label$3
    (i32.lt_u
     (local.tee $3
      (i32.add
       (local.get $3)
       (i32.const 1)
      )
     )
     (global.get $gimport$5)
    )
   )
  )
 )
)
