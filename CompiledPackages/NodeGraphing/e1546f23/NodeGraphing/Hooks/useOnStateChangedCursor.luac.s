PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hover"]
        3 JUMPIFEQ                         R0 R1 ; [+6]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["Pressed"]
        8 JUMPIFNOTEQ                      R0 R1 ; [+13]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K2 ["current"]
       13 JUMPIFNOT                        R1 ; [+1]
       14 RETURN                           R0 0
       15 GETUPVAL                         R1 1
       16 LOADB                            R2 1
       17 SETTABLEKS                       R2 R1 K2 ["current"]
       19 GETUPVAL                         R1 2
       20 CALL                             R1 0 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R1 1
       23 LOADB                            R2 0
       24 SETTABLEKS                       R2 R1 K2 ["current"]
       26 GETUPVAL                         R1 3
       27 CALL                             R1 0 0
       28 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 2
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["useRef"]
        6 LOADB                            R4 0
        7 CALL                             R3 1 1
        8 GETUPVAL                         R4 2
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          VAL R3
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R2
       14 NEWTABLE                         R6 0 3
       16 MOVE                             R7 R1
       17 MOVE                             R8 R2
       18 MOVE                             R9 R3
       19 SETLIST                          R6 R7 3 [1]
       21 CALL                             R4 2 1
       22 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K6 ["Parent"]
       27 GETTABLEKS                       R4 R4 K9 ["useCursor"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R1 K10 ["Enums"]
       32 GETTABLEKS                       R4 R4 K11 ["ControlState"]
       34 GETTABLEKS                       R5 R2 K12 ["useCallback"]
       36 DUPCLOSURE                       R6 K13 [PROTO_1]
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R4
       41 RETURN                           R6 1
