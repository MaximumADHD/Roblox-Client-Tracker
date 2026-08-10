PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 0
        4 SETTABLEKS                       R1 R0 K0 ["current"]
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["current"]
        7 JUMPIFNOT                        R1 ; [+1]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R4 R0 K1 ["AbsoluteCanvasSize"]
       11 GETTABLEKS                       R4 R4 K2 ["Y"]
       13 GETTABLEKS                       R5 R0 K3 ["CanvasPosition"]
       15 GETTABLEKS                       R5 R5 K2 ["Y"]
       17 SUB                              R3 R4 R5
       18 GETTABLEKS                       R4 R0 K4 ["AbsoluteSize"]
       20 GETTABLEKS                       R4 R4 K2 ["Y"]
       22 SUB                              R2 R3 R4
       23 LOADN                            R3 1
       24 JUMPIFLE                         R2 R3 ; [+2]
       26 LOADB                            R1 0 +1
       27 LOADB                            R1 1
       28 JUMPIF                           R1 ; [+1]
       29 RETURN                           R0 0
       30 GETUPVAL                         R2 0
       31 LOADB                            R3 0
       32 SETTABLEKS                       R3 R2 K0 ["current"]
       34 GETUPVAL                         R2 1
       35 LOADB                            R3 1
       36 SETTABLEKS                       R3 R2 K0 ["current"]
       38 GETIMPORT                        R2 K7 [task.spawn]
       40 NEWCLOSURE                       R3 P0
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          UPVAL U1
       43 CALL                             R2 1 0
       44 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useRef"]
        3 LOADB                            R4 1
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K0 ["useRef"]
        8 LOADB                            R5 0
        9 CALL                             R4 1 1
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K1 ["useEffect"]
       13 NEWCLOSURE                       R6 P0
       14 CAPTURE                          VAL R3
       15 MOVE                             R7 R2
       16 CALL                             R5 2 0
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K2 ["useCallback"]
       20 NEWCLOSURE                       R6 P1
       21 CAPTURE                          VAL R3
       22 CAPTURE                          VAL R4
       23 CAPTURE                          VAL R0
       24 GETUPVAL                         R7 1
       25 MOVE                             R8 R1
       26 MOVE                             R9 R2
       27 CALL                             R7 2 -1
       28 CALL                             R5 -1 -1
       29 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [script]
        9 LOADK                            R3 K4 ["AssetPicker"]
       10 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R0 K5 ["Parent"]
       15 GETIMPORT                        R3 K7 [require]
       17 GETTABLEKS                       R4 R2 K8 ["React"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K7 [require]
       22 GETTABLEKS                       R5 R1 K9 ["Util"]
       24 GETTABLEKS                       R5 R5 K10 ["mergedList"]
       26 CALL                             R4 1 1
       27 DUPCLOSURE                       R5 K11 [PROTO_3]
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R4
       30 RETURN                           R5 1
