MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DeviceSimulatorToolbar"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dev"]
       13 GETTABLEKS                       R2 R2 K8 ["JestGlobals"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Bin"]
       20 GETTABLEKS                       R3 R3 K10 ["Common"]
       22 GETTABLEKS                       R3 R3 K11 ["defineLuaFlags"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R1 K12 ["describe"]
       27 GETTABLEKS                       R5 R2 K13 ["getFFlagEnableDeviceSimulatorRegistry"]
       29 CALL                             R5 0 1
       30 JUMPIFNOT                        R5 ; [+2]
       31 MOVE                             R4 R3
       32 RETURN                           R4 1
       33 GETTABLEKS                       R4 R3 K14 ["skip"]
       35 RETURN                           R4 1
