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
        7 DUPTABLE                         R3 K5 [{"Enabled", "Selected", "OnSelect", "Type"}]
        8 LOADB                            R4 1
        9 SETTABLEKS                       R4 R3 K2 ["Enabled"]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R6 R0 K6 ["Id"]
       14 JUMPIFEQ                         R5 R6 ; [+2]
       16 LOADB                            R4 0 +1
       17 LOADB                            R4 1
       18 SETTABLEKS                       R4 R3 K3 ["Selected"]
       20 NEWCLOSURE                       R4 P0
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R4 R3 K4 ["OnSelect"]
       25 LOADK                            R4 K7 ["Option"]
       26 SETTABLEKS                       R4 R3 K0 ["Type"]
       28 CALL                             R1 2 -1
       29 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K2 [table.freeze]
        9 DUPTABLE                         R2 K5 [{"Type", "Children"}]
       10 LOADK                            R3 K6 ["Column"]
       11 SETTABLEKS                       R3 R2 K3 ["Type"]
       13 SETTABLEKS                       R0 R2 K4 ["Children"]
       15 CALL                             R1 1 1
       16 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 1
        3 GETUPVAL                         R2 1
        4 SETLIST                          R1 R2 1 [1]
        6 GETUPVAL                         R2 2
        7 DUPTABLE                         R3 K2 [{"SubjectAnchorPoint", "TargetAnchorPoint"}]
        8 GETIMPORT                        R4 K5 [Vector2.new]
       10 LOADN                            R5 0
       11 LOADN                            R6 0
       12 CALL                             R4 2 1
       13 SETTABLEKS                       R4 R3 K0 ["SubjectAnchorPoint"]
       15 GETIMPORT                        R4 K5 [Vector2.new]
       17 LOADN                            R5 0
       18 LOADN                            R6 1
       19 CALL                             R4 2 1
       20 SETTABLEKS                       R4 R3 K1 ["TargetAnchorPoint"]
       22 CALL                             R0 3 0
       23 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 CALL                             R4 1 3
        3 GETUPVAL                         R7 2
        4 NEWCLOSURE                       R8 P0
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          VAL R2
        9 CAPTURE                          VAL R3
       10 NEWTABLE                         R9 0 3
       12 MOVE                             R10 R1
       13 MOVE                             R11 R2
       14 MOVE                             R12 R3
       15 SETLIST                          R9 R10 3 [1]
       17 CALL                             R7 2 1
       18 GETUPVAL                         R8 5
       19 NEWCLOSURE                       R9 P1
       20 CAPTURE                          VAL R4
       21 CAPTURE                          VAL R7
       22 CAPTURE                          VAL R0
       23 NEWTABLE                         R10 0 3
       25 MOVE                             R11 R4
       26 MOVE                             R12 R7
       27 MOVE                             R13 R0
       28 SETLIST                          R10 R11 3 [1]
       30 CALL                             R8 2 1
       31 MOVE                             R9 R8
       32 MOVE                             R10 R6
       33 RETURN                           R9 2

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
       20 GETTABLEKS                       R5 R0 K10 ["Src"]
       22 GETTABLEKS                       R5 R5 K11 ["Hooks"]
       24 GETTABLEKS                       R5 R5 K12 ["useMenu"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R0 K10 ["Src"]
       31 GETTABLEKS                       R6 R6 K13 ["Components"]
       33 GETTABLEKS                       R6 R6 K14 ["ControlsView"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R7 R0 K10 ["Src"]
       40 GETTABLEKS                       R7 R7 K15 ["Types"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R8 R0 K6 ["Packages"]
       47 GETTABLEKS                       R8 R8 K16 ["Dash"]
       49 CALL                             R7 1 1
       50 GETTABLEKS                       R8 R7 K17 ["join"]
       52 GETTABLEKS                       R9 R7 K18 ["map"]
       54 DUPCLOSURE                       R10 K19 [PROTO_4]
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R9
       59 CAPTURE                          VAL R8
       60 CAPTURE                          VAL R2
       61 RETURN                           R10 1
