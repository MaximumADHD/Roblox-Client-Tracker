PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETTABLEKS                       R0 R0 K1 ["applyDevice"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 1
        7 JUMPIFNOT                        R0 ; [+4]
        8 GETUPVAL                         R0 2
        9 GETUPVAL                         R1 1
       10 SETTABLEKS                       R1 R0 K0 ["current"]
       12 GETUPVAL                         R0 3
       13 LOADB                            R1 0
       14 SETTABLEKS                       R1 R0 K0 ["current"]
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 GETTABLEKS                       R2 R1 K1 ["isEnabled"]
        5 JUMPIFNOT                        R2 ; [+4]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K0 ["current"]
        9 JUMPIFNOT                        R2 ; [+1]
       10 RETURN                           R0 0
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K0 ["current"]
       14 JUMPIF                           R2 ; [+2]
       15 GETTABLEKS                       R2 R1 K2 ["selectedDeviceId"]
       17 GETUPVAL                         R3 3
       18 GETTABLEKS                       R3 R3 K3 ["getAdjacentDeviceId"]
       20 GETTABLEKS                       R4 R1 K4 ["menuGroups"]
       22 MOVE                             R5 R2
       23 MOVE                             R6 R0
       24 CALL                             R3 3 1
       25 JUMPIFNOTEQKNIL                  R3 ; [+2]
       27 RETURN                           R0 0
       28 GETUPVAL                         R4 1
       29 LOADB                            R5 1
       30 SETTABLEKS                       R5 R4 K0 ["current"]
       32 GETIMPORT                        R4 K7 [task.spawn]
       34 NEWCLOSURE                       R5 P0
       35 CAPTURE                          UPVAL U0
       36 CAPTURE                          VAL R3
       37 CAPTURE                          UPVAL U2
       38 CAPTURE                          UPVAL U1
       39 CALL                             R4 1 0
       40 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 SETTABLEKS                       R0 R1 K1 ["current"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useRef"]
       10 LOADB                            R3 0
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K0 ["useRef"]
       15 LOADNIL                          R4
       16 CALL                             R3 1 1
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K2 ["useEffect"]
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          VAL R3
       22 NEWTABLE                         R6 0 1
       24 GETTABLEKS                       R7 R0 K3 ["selectedDeviceId"]
       26 SETLIST                          R6 R7 1 [1]
       28 CALL                             R4 2 0
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R4 R4 K4 ["useCallback"]
       32 NEWCLOSURE                       R5 P1
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R3
       36 CAPTURE                          UPVAL U1
       37 NEWTABLE                         R6 0 0
       39 CALL                             R4 2 -1
       40 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DeviceSimulatorToolbar"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["DeviceModel"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K10 [PROTO_3]
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 RETURN                           R3 1
