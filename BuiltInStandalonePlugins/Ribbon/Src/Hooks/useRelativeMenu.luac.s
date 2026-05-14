PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 0
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Type"]
        2 JUMPIFNOTEQKS                    R1 K1 ["Separator"] ; [+2]
        4 RETURN                           R0 1
        5 GETUPVAL                         R1 0
        6 MOVE                             R2 R0
        7 DUPTABLE                         R3 K4 [{"Enabled", "OnSelect", "Type"}]
        8 LOADB                            R4 1
        9 SETTABLEKS                       R4 R3 K2 ["Enabled"]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R4 R3 K3 ["OnSelect"]
       16 LOADK                            R4 K5 ["Option"]
       17 SETTABLEKS                       R4 R3 K0 ["Type"]
       19 CALL                             R1 2 -1
       20 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CALL                             R0 2 1
        6 GETIMPORT                        R1 K2 [table.freeze]
        8 DUPTABLE                         R2 K5 [{"Type", "Children"}]
        9 LOADK                            R3 K6 ["Column"]
       10 SETTABLEKS                       R3 R2 K3 ["Type"]
       12 SETTABLEKS                       R0 R2 K4 ["Children"]
       14 CALL                             R1 1 1
       15 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 1
        4 SETLIST                          R2 R3 1 [1]
        6 GETUPVAL                         R3 2
        7 DUPTABLE                         R4 K3 [{"SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
        8 GETIMPORT                        R5 K6 [Vector2.new]
       10 LOADN                            R6 0
       11 LOADN                            R7 0
       12 CALL                             R5 2 1
       13 SETTABLEKS                       R5 R4 K0 ["SubjectAnchorPoint"]
       15 GETIMPORT                        R5 K6 [Vector2.new]
       17 LOADN                            R6 0
       18 LOADN                            R7 0
       19 CALL                             R5 2 1
       20 SETTABLEKS                       R5 R4 K1 ["TargetAnchorPoint"]
       22 SETTABLEKS                       R0 R4 K2 ["Offset"]
       24 CALL                             R1 3 0
       25 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 CALL                             R3 1 3
        3 GETUPVAL                         R6 2
        4 NEWCLOSURE                       R7 P0
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          VAL R2
        9 NEWTABLE                         R8 0 2
       11 MOVE                             R9 R1
       12 MOVE                             R10 R2
       13 SETLIST                          R8 R9 2 [1]
       15 CALL                             R6 2 1
       16 GETUPVAL                         R7 5
       17 NEWCLOSURE                       R8 P1
       18 CAPTURE                          VAL R3
       19 CAPTURE                          VAL R6
       20 CAPTURE                          VAL R0
       21 NEWTABLE                         R9 0 3
       23 MOVE                             R10 R3
       24 MOVE                             R11 R6
       25 MOVE                             R12 R0
       26 SETLIST                          R9 R10 3 [1]
       28 CALL                             R7 2 1
       29 MOVE                             R8 R7
       30 MOVE                             R9 R5
       31 RETURN                           R8 2

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
       16 GETTABLEKS                       R3 R1 K9 ["useMemo"]
       18 GETIMPORT                        R4 K5 [require]
       20 GETTABLEKS                       R5 R0 K6 ["Packages"]
       22 GETTABLEKS                       R5 R5 K10 ["Dash"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R4 K11 ["join"]
       27 GETTABLEKS                       R6 R4 K12 ["map"]
       29 GETIMPORT                        R7 K5 [require]
       31 GETTABLEKS                       R8 R0 K13 ["Src"]
       33 GETTABLEKS                       R8 R8 K14 ["Hooks"]
       35 GETTABLEKS                       R8 R8 K15 ["useMenu"]
       37 CALL                             R7 1 1
       38 GETIMPORT                        R8 K5 [require]
       40 GETTABLEKS                       R9 R0 K13 ["Src"]
       42 GETTABLEKS                       R9 R9 K16 ["Components"]
       44 GETTABLEKS                       R9 R9 K17 ["ControlsView"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K5 [require]
       49 GETTABLEKS                       R10 R0 K13 ["Src"]
       51 GETTABLEKS                       R10 R10 K18 ["Types"]
       53 CALL                             R9 1 1
       54 DUPCLOSURE                       R10 K19 [PROTO_4]
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R8
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R2
       61 RETURN                           R10 1
