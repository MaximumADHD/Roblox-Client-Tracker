PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+2]
        5 LOADK                            R1 K1 [""]
        6 RETURN                           R1 1
        7 GETIMPORT                        R1 K3 [pcall]
        9 GETIMPORT                        R2 K5 [tostring]
       11 MOVE                             R3 R0
       12 CALL                             R1 2 2
       13 JUMPIFNOT                        R1 ; [+1]
       14 RETURN                           R2 1
       15 LOADK                            R3 K6 ["<unable to format callback error>"]
       16 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETIMPORT                        R1 K3 [task.spawn]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_2:
        0 PREPVARARGS                      2
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        4 CALL                             R2 0 1
        5 JUMPIF                           R2 ; [+3]
        6 LOADB                            R2 1
        7 LOADNIL                          R3
        8 RETURN                           R2 2
        9 JUMPIFNOTEQKNIL                  R1 ; [+4]
       11 LOADB                            R2 1
       12 LOADNIL                          R3
       13 RETURN                           R2 2
       14 GETIMPORT                        R2 K2 [pcall]
       16 MOVE                             R3 R1
       17 GETVARARGS                       R4 -1
       18 CALL                             R2 -1 2
       19 JUMPIF                           R2 ; [+17]
       20 GETIMPORT                        R4 K4 [warn]
       22 LOADK                            R6 K5 ["Device Simulator callback failed for %*: %*"]
       23 MOVE                             R8 R0
       24 GETUPVAL                         R9 1
       25 GETTABLEKS                       R9 R9 K6 ["formatError"]
       27 MOVE                             R10 R3
       28 CALL                             R9 1 1
       29 NAMECALL                         R6 R6 K7 ["format"]
       31 CALL                             R6 3 1
       32 MOVE                             R5 R6
       33 CALL                             R4 1 0
       34 LOADB                            R4 0
       35 LOADNIL                          R5
       36 RETURN                           R4 2
       37 LOADB                            R4 1
       38 MOVE                             R5 R3
       39 RETURN                           R4 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DeviceSimulatorToolbar"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["defineLuaFlags"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 4 0
       18 DUPCLOSURE                       R3 K9 [PROTO_0]
       19 CAPTURE                          VAL R1
       20 SETTABLEKS                       R3 R2 K10 ["formatError"]
       22 DUPCLOSURE                       R3 K11 [PROTO_1]
       23 CAPTURE                          VAL R1
       24 SETTABLEKS                       R3 R2 K12 ["defaultSpawn"]
       26 DUPCLOSURE                       R3 K13 [PROTO_2]
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R2
       29 SETTABLEKS                       R3 R2 K14 ["safeCall"]
       31 RETURN                           R2 1
