MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [script]
        7 LOADK                            R2 K4 ["DeviceSimulatorToolbar"]
        8 NAMECALL                         R0 R0 K5 ["FindFirstAncestor"]
       10 CALL                             R0 2 1
       11 GETIMPORT                        R1 K7 [require]
       13 GETTABLEKS                       R2 R0 K8 ["Bin"]
       15 GETTABLEKS                       R2 R2 K9 ["Common"]
       17 GETTABLEKS                       R2 R2 K10 ["defineLuaFlags"]
       19 CALL                             R1 1 1
       20 GETTABLEKS                       R2 R1 K11 ["getFFlagEnableDeviceSimulatorToolbar"]
       22 CALL                             R2 0 1
       23 JUMPIF                           R2 ; [+1]
       24 RETURN                           R0 0
       25 GETIMPORT                        R2 K7 [require]
       27 GETTABLEKS                       R3 R0 K12 ["Packages"]
       29 GETTABLEKS                       R3 R3 K13 ["TestLoader"]
       31 CALL                             R2 1 1
       32 GETTABLEKS                       R3 R2 K14 ["launch"]
       34 LOADK                            R4 K4 ["DeviceSimulatorToolbar"]
       35 GETTABLEKS                       R5 R0 K15 ["Src"]
       37 CALL                             R3 2 0
       38 GETTABLEKS                       R3 R2 K16 ["isCli"]
       40 CALL                             R3 0 1
       41 JUMPIFNOT                        R3 ; [+1]
       42 RETURN                           R0 0
       43 RETURN                           R0 0
