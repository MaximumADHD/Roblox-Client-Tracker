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
        7 DUPTABLE                         R3 K7 [{["Enabled"] = True, ["Selected"], ["OnSelect"], [4] = "Option"}]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R6 R0 K8 ["Id"]
       11 JUMPIFEQ                         R5 R6 ; [+2]
       13 LOADB                            R4 0 +1
       14 LOADB                            R4 1
       15 SETTABLEKS                       R4 R3 K4 ["Selected"]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R4 R3 K5 ["OnSelect"]
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K2 [table.freeze]
        9 DUPTABLE                         R2 K6 [{["Type"] = "Column", ["Children"]}]
       10 SETTABLEKS                       R0 R2 K5 ["Children"]
       12 CALL                             R1 1 1
       13 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 NEWTABLE                         R3 0 1
        3 GETUPVAL                         R4 1
        4 SETLIST                          R3 R4 1 [1]
        6 GETUPVAL                         R4 2
        7 DUPTABLE                         R5 K2 [{"SubjectAnchorPoint", "TargetAnchorPoint"}]
        8 GETIMPORT                        R6 K5 [Vector2.new]
       10 LOADN                            R7 0
       11 LOADN                            R8 0
       12 CALL                             R6 2 1
       13 SETTABLEKS                       R6 R5 K0 ["SubjectAnchorPoint"]
       15 GETIMPORT                        R6 K5 [Vector2.new]
       17 LOADN                            R7 0
       18 LOADN                            R8 1
       19 CALL                             R6 2 1
       20 SETTABLEKS                       R6 R5 K1 ["TargetAnchorPoint"]
       22 LOADNIL                          R6
       23 GETUPVAL                         R8 3
       24 CALL                             R8 0 1
       25 JUMPIFNOT                        R8 ; [+2]
       26 MOVE                             R7 R1
       27 JUMP                             ; [+1]
       28 LOADNIL                          R7
       29 CALL                             R2 5 0
       30 RETURN                           R0 0

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
       23 CAPTURE                          UPVAL U6
       24 NEWTABLE                         R10 0 3
       26 MOVE                             R11 R4
       27 MOVE                             R12 R7
       28 MOVE                             R13 R0
       29 SETLIST                          R10 R11 3 [1]
       31 CALL                             R8 2 1
       32 MOVE                             R9 R8
       33 MOVE                             R10 R6
       34 RETURN                           R9 2

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
       54 GETIMPORT                        R10 K5 [require]
       56 GETTABLEKS                       R11 R0 K10 ["Src"]
       58 GETTABLEKS                       R11 R11 K19 ["SharedFlags"]
       60 GETTABLEKS                       R11 R11 K20 ["getFFlagRibbonDropdownMinWidth"]
       62 CALL                             R10 1 1
       63 DUPCLOSURE                       R11 K21 [PROTO_4]
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R10
       71 RETURN                           R11 1
