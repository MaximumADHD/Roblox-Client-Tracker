PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["alignableObjects"]
        5 GETTABLEKS                       R3 R1 K2 ["alignmentMode"]
        7 GETTABLEKS                       R4 R1 K3 ["alignmentSpace"]
        9 GETTABLEKS                       R5 R1 K4 ["enabledAxes"]
       11 GETTABLEKS                       R6 R1 K5 ["relativeTo"]
       13 LOADNIL                          R7
       14 GETUPVAL                         R9 0
       15 GETTABLEKS                       R8 R9 K6 ["Active"]
       17 JUMPIFNOTEQ                      R6 R8 ; [+4]
       19 GETUPVAL                         R8 1
       20 GETTABLEKS                       R7 R8 K7 ["ActiveInstance"]
       22 GETUPVAL                         R8 2
       23 MOVE                             R9 R2
       24 MOVE                             R10 R4
       25 MOVE                             R11 R5
       26 MOVE                             R12 R3
       27 MOVE                             R13 R7
       28 CALL                             R8 5 0
       29 DUPTABLE                         R8 K12 [{"Mode", "Axes", "CoordinateSpace", "RelativeTo"}]
       30 SETTABLEKS                       R3 R8 K8 ["Mode"]
       32 SETTABLEKS                       R5 R8 K9 ["Axes"]
       34 SETTABLEKS                       R4 R8 K10 ["CoordinateSpace"]
       36 SETTABLEKS                       R6 R8 K11 ["RelativeTo"]
       38 GETUPVAL                         R9 3
       39 LOADK                            R11 K13 ["useAlignTool"]
       40 MOVE                             R12 R2
       41 MOVE                             R13 R8
       42 NAMECALL                         R9 R9 K14 ["report"]
       44 CALL                             R9 4 0
       45 GETUPVAL                         R9 4
       46 LOADK                            R11 K15 ["Align Objects"]
       47 NAMECALL                         R9 R9 K16 ["SetWaypoint"]
       49 CALL                             R9 2 0
       50 GETUPVAL                         R11 5
       51 LOADB                            R12 0
       52 CALL                             R11 1 -1
       53 NAMECALL                         R9 R0 K17 ["dispatch"]
       55 CALL                             R9 -1 0
       56 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ChangeHistoryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["Selection"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R5 K6 [script]
       15 GETTABLEKS                       R4 R5 K7 ["Parent"]
       17 GETTABLEKS                       R3 R4 K7 ["Parent"]
       19 GETTABLEKS                       R2 R3 K7 ["Parent"]
       21 GETIMPORT                        R3 K9 [require]
       23 GETTABLEKS                       R6 R2 K10 ["Src"]
       25 GETTABLEKS                       R5 R6 K11 ["Actions"]
       27 GETTABLEKS                       R4 R5 K12 ["SetAlignEnabled"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K9 [require]
       32 GETTABLEKS                       R7 R2 K10 ["Src"]
       34 GETTABLEKS                       R6 R7 K13 ["Utility"]
       36 GETTABLEKS                       R5 R6 K14 ["RelativeTo"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K9 [require]
       41 GETTABLEKS                       R8 R2 K10 ["Src"]
       43 GETTABLEKS                       R7 R8 K13 ["Utility"]
       45 GETTABLEKS                       R6 R7 K15 ["alignObjects"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K9 [require]
       50 GETTABLEKS                       R8 R2 K10 ["Src"]
       52 GETTABLEKS                       R7 R8 K16 ["Types"]
       54 CALL                             R6 1 1
       55 DUPCLOSURE                       R7 K17 [PROTO_1]
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R0
       60 CAPTURE                          VAL R3
       61 RETURN                           R7 1
