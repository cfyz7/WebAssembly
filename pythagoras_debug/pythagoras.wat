(module
  (import "js" "log_f64" (func $log_f64(param i32 f64)))
  (func $distance (export "distance")
    (param $x1 f64) (param $y1 f64) (param $x2 f64) (param $y2 f64) (result f64)
    (local $x_dist f64)
    (local $y_dist f64)
    (local $temp_f64 f64)

    local.get $x1
    local.get $x2
    f64.sub
    local.tee $x_dist
    (call $log_f64 (i32.const 1) (local.get $x_dist))
    local.get $x_dist
    f64.mul

    local.tee $temp_f64
    (call $log_f64 (i32.const 2) (local.get $temp_f64))

    local.get $y1
    local.get $y2
    f64.add
    local.tee $y_dist

    (call $log_f64 (i32.const 3) (local.get $y_dist))
    local.get $y_dist
    f64.mul

    local.tee $temp_f64
    (call $log_f64 (i32.const 4) (local.get $temp_f64))
    f64.add

    local.tee $temp_f64
    (call $log_f64 (i32.const 5) (local.get $temp_f64))
    f64.sqrt 

    local.tee $temp_f64
    (call $log_f64 (i32.const 6) (local.get $temp_f64))  
  )
)