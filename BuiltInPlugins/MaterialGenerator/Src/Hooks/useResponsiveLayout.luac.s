PROTO_0:
        0 LOADB                            R1 0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R4 R0 K1 ["minWidth"]
        4 ORK                              R3 R4 K0 [0]
        5 JUMPIFNOTLE                      R3 R2 ; [+23]
        7 LOADB                            R1 0
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R4 R0 K3 ["maxWidth"]
       11 ORK                              R3 R4 K2 [∞]
       12 JUMPIFNOTLE                      R2 R3 ; [+16]
       14 LOADB                            R1 0
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R4 R0 K4 ["minHeight"]
       18 ORK                              R3 R4 K0 [0]
       19 JUMPIFNOTLE                      R3 R2 ; [+9]
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R4 R0 K5 ["maxHeight"]
       24 ORK                              R3 R4 K2 [∞]
       25 JUMPIFLE                         R2 R3 ; [+2]
       27 LOADB                            R1 0 +1
       28 LOADB                            R1 1
       29 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["X"]
        2 GETTABLEKS                       R3 R1 K1 ["Y"]
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R2
        6 CAPTURE                          VAL R3
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R5 R6 K2 ["last"]
       10 MOVE                             R6 R0
       11 MOVE                             R7 R4
       12 CALL                             R5 2 1
       13 JUMPIFNOT                        R5 ; [+3]
       14 GETTABLEKS                       R6 R5 K3 ["value"]
       16 RETURN                           R6 1
       17 LOADNIL                          R6
       18 RETURN                           R6 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K2 [Vector2.new]
        3 LOADN                            R3 0
        4 LOADN                            R4 0
        5 CALL                             R2 2 1
        6 GETTABLEKS                       R3 R2 K3 ["X"]
        8 GETTABLEKS                       R4 R2 K4 ["Y"]
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          VAL R3
       12 CAPTURE                          VAL R4
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R6 R7 K5 ["last"]
       16 MOVE                             R7 R1
       17 MOVE                             R8 R5
       18 CALL                             R6 2 1
       19 JUMPIFNOT                        R6 ; [+3]
       20 GETTABLEKS                       R0 R6 K6 ["value"]
       22 RETURN                           R0 1
       23 LOADNIL                          R0
       24 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R4 R0 K0 ["AbsoluteSize"]
        4 GETTABLEKS                       R5 R4 K1 ["X"]
        6 GETTABLEKS                       R6 R4 K2 ["Y"]
        8 NEWCLOSURE                       R7 P0
        9 CAPTURE                          VAL R5
       10 CAPTURE                          VAL R6
       11 GETUPVAL                         R9 2
       12 GETTABLEKS                       R8 R9 K3 ["last"]
       14 MOVE                             R9 R3
       15 MOVE                             R10 R7
       16 CALL                             R8 2 1
       17 JUMPIFNOT                        R8 ; [+3]
       18 GETTABLEKS                       R2 R8 K4 ["value"]
       20 JUMP                             ; [+1]
       21 LOADNIL                          R2
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R0 1 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["Change"]
        5 GETTABLEKS                       R1 R2 K1 ["AbsoluteSize"]
        7 GETUPVAL                         R2 1
        8 SETTABLE                         R2 R0 R1
        9 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CALL                             R1 1 2
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K1 ["useCallback"]
       10 NEWCLOSURE                       R4 P1
       11 CAPTURE                          VAL R2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U1
       14 NEWTABLE                         R5 0 1
       16 MOVE                             R6 R0
       17 SETLIST                          R5 R6 1 [1]
       19 CALL                             R3 2 1
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R4 R5 K2 ["useMemo"]
       23 NEWCLOSURE                       R5 P2
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          VAL R3
       26 NEWTABLE                         R6 0 1
       28 MOVE                             R7 R3
       29 SETLIST                          R6 R7 1 [1]
       31 CALL                             R4 2 1
       32 MOVE                             R5 R4
       33 MOVE                             R6 R1
       34 RETURN                           R5 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["ReactRoblox"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R6 K11 ["Types"]
       34 CALL                             R4 1 1
       35 DUPCLOSURE                       R5 K12 [PROTO_1]
       36 CAPTURE                          VAL R1
       37 DUPCLOSURE                       R6 K13 [PROTO_5]
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R3
       41 RETURN                           R6 1
