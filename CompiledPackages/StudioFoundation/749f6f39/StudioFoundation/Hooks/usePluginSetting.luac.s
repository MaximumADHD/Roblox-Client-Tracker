PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetSetting"]
        4 CALL                             R0 2 1
        5 JUMPIFEQKNIL                     R0 ; [+11]
        7 GETUPVAL                         R2 2
        8 JUMPIFNOT                        R2 ; [+6]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R1 R2 K1 ["deserialize"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 1
       14 RETURN                           R1 1
       15 MOVE                             R1 R0
       16 RETURN                           R1 1
       17 GETUPVAL                         R1 3
       18 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 LOADB                            R1 0
        6 SETTABLEKS                       R1 R0 K0 ["current"]
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 1
       10 GETUPVAL                         R2 2
       11 GETUPVAL                         R4 3
       12 JUMPIFNOT                        R4 ; [+6]
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R3 R4 K1 ["serialize"]
       16 GETUPVAL                         R4 4
       17 CALL                             R3 1 1
       18 JUMP                             ; [+1]
       19 GETUPVAL                         R3 4
       20 NAMECALL                         R0 R0 K2 ["SetSetting"]
       22 CALL                             R0 3 0
       23 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R3 R3 K0 ["use"]
        3 CALL                             R3 1 1
        4 NAMECALL                         R3 R3 K1 ["get"]
        6 CALL                             R3 1 1
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K2 ["useRef"]
       10 LOADB                            R5 1
       11 CALL                             R4 1 1
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R5 R6 K3 ["useState"]
       15 NEWCLOSURE                       R6 P0
       16 CAPTURE                          VAL R3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R1
       20 CALL                             R5 1 2
       21 GETUPVAL                         R8 1
       22 GETTABLEKS                       R7 R8 K4 ["useEffect"]
       24 NEWCLOSURE                       R8 P1
       25 CAPTURE                          VAL R4
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R5
       30 NEWTABLE                         R9 0 1
       32 MOVE                             R10 R5
       33 SETLIST                          R9 R10 1 [1]
       35 CALL                             R7 2 0
       36 RETURN                           R5 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioFoundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Framework"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R5 R2 K9 ["ContextServices"]
       21 GETTABLEKS                       R4 R5 K10 ["Plugin"]
       23 DUPCLOSURE                       R5 K11 [PROTO_2]
       24 CAPTURE                          VAL R4
       25 CAPTURE                          VAL R3
       26 RETURN                           R5 1
