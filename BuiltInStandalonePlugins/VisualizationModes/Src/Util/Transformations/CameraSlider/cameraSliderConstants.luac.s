MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K7 [{"CAMERA_SPEED_MIN", "CAMERA_SPEED_MAX", "SLIDER_MIN", "SLIDER_MAX", "BASE", "SLIDER_OFFSET", "CAMERA_SPEED_OFFSET"}]
        2 LOADK                            R1 K8 [0.1]
        3 SETTABLEKS                       R1 R0 K0 ["CAMERA_SPEED_MIN"]
        5 LOADN                            R1 20
        6 SETTABLEKS                       R1 R0 K1 ["CAMERA_SPEED_MAX"]
        8 LOADN                            R1 0
        9 SETTABLEKS                       R1 R0 K2 ["SLIDER_MIN"]
       11 LOADN                            R1 1
       12 SETTABLEKS                       R1 R0 K3 ["SLIDER_MAX"]
       14 LOADK                            R1 K9 [82.4845]
       15 SETTABLEKS                       R1 R0 K4 ["BASE"]
       17 LOADK                            R1 K10 [-0.319469]
       18 SETTABLEKS                       R1 R0 K5 ["SLIDER_OFFSET"]
       20 LOADK                            R1 K11 [0.144219]
       21 SETTABLEKS                       R1 R0 K6 ["CAMERA_SPEED_OFFSET"]
       23 RETURN                           R0 1
