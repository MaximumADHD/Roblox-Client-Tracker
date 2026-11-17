PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETUPVAL                         R1 1
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 LENGTH                           R5 R1
        2 LOADN                            R6 0
        3 JUMPIFNOTLT                      R6 R5 ; [+3]
        5 GETTABLEN                        R4 R1 1
        6 JUMP                             ; [+1]
        7 LOADNIL                          R4
        8 CALL                             R3 1 2
        9 GETUPVAL                         R5 1
       10 NEWCLOSURE                       R6 P0
       11 CAPTURE                          VAL R4
       12 CAPTURE                          VAL R2
       13 NEWTABLE                         R7 0 2
       15 MOVE                             R8 R4
       16 MOVE                             R9 R2
       17 SETLIST                          R7 R8 2 [1]
       19 CALL                             R5 2 1
       20 GETUPVAL                         R6 2
       21 MOVE                             R7 R0
       22 MOVE                             R8 R1
       23 GETTABLEKS                       R9 R3 K0 ["Id"]
       25 MOVE                             R10 R5
       26 CALL                             R6 4 2
       27 MOVE                             R8 R3
       28 MOVE                             R9 R6
       29 MOVE                             R10 R7
       30 RETURN                           R8 3

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useCallback"]
       16 GETTABLEKS                       R3 R1 K9 ["useState"]
       18 GETIMPORT                        R4 K5 [require]
       20 GETTABLEKS                       R5 R0 K10 ["Src"]
       22 GETTABLEKS                       R5 R5 K11 ["Hooks"]
       24 GETTABLEKS                       R5 R5 K12 ["useSelectionMenuView"]
       26 CALL                             R4 1 1
       27 DUPCLOSURE                       R5 K13 [PROTO_1]
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R4
       31 RETURN                           R5 1
