MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 GETIMPORT                        R1 K3 [Enum.InputActionType.Direction1D]
        5 NEWTABLE                         R2 0 2
        7 LOADK                            R3 K4 ["up"]
        8 LOADK                            R4 K5 ["down"]
        9 SETLIST                          R2 R3 2 [1]
       11 SETTABLE                         R2 R0 R1
       12 GETIMPORT                        R1 K7 [Enum.InputActionType.Direction2D]
       14 NEWTABLE                         R2 0 4
       16 LOADK                            R3 K4 ["up"]
       17 LOADK                            R4 K8 ["left"]
       18 LOADK                            R5 K5 ["down"]
       19 LOADK                            R6 K9 ["right"]
       20 SETLIST                          R2 R3 4 [1]
       22 SETTABLE                         R2 R0 R1
       23 GETIMPORT                        R1 K11 [Enum.InputActionType.Direction3D]
       25 NEWTABLE                         R2 0 6
       27 LOADK                            R3 K4 ["up"]
       28 LOADK                            R4 K8 ["left"]
       29 LOADK                            R5 K12 ["forward"]
       30 LOADK                            R6 K5 ["down"]
       31 LOADK                            R7 K9 ["right"]
       32 LOADK                            R8 K13 ["backward"]
       33 SETLIST                          R2 R3 6 [1]
       35 SETTABLE                         R2 R0 R1
       36 RETURN                           R0 1
