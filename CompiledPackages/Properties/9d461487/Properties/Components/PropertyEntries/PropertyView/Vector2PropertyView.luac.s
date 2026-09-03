PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["value"]
        2 MOVE                             R3 R0
        3 CALL                             R1 2 1
        4 GETTABLEKS                       R2 R1 K1 ["type"]
        6 JUMPIFNOTEQKS                    R2 K2 ["error"] ; [+2]
        8 RETURN                           R1 1
        9 GETTABLEKS                       R2 R1 K0 ["value"]
       11 FASTCALL1                        TYPEOF R2 ; [+3]
       12 MOVE                             R6 R2
       13 GETIMPORT                        R5 K4 [typeof]
       15 CALL                             R5 1 1
       16 JUMPIFEQKS                       R5 K5 ["Vector2"] ; [+2]
       18 LOADB                            R4 0 +1
       19 LOADB                            R4 1
       20 FASTCALL2K                       ASSERT R4 K6 ; [+4]
       22 LOADK                            R5 K6 ["parseVector2ExpressionResults returned an ok value that wasn't a Vector2"]
       23 GETIMPORT                        R3 K8 [assert]
       25 CALL                             R3 2 0
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R3 R3 K9 ["ok"]
       29 MOVE                             R4 R2
       30 CALL                             R3 1 -1
       31 RETURN                           R3 -1

PROTO_1:
        0 NEWTABLE                         R0 0 2
        2 DUPTABLE                         R1 K3 [{[1] = "x", ["chip"]}]
        3 DUPTABLE                         R2 K5 [{"color"}]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K6 ["Vector"]
        7 GETTABLEKS                       R3 R3 K7 ["Chip"]
        9 GETTABLEKS                       R3 R3 K8 ["XColor"]
       11 SETTABLEKS                       R3 R2 K4 ["color"]
       13 SETTABLEKS                       R2 R1 K2 ["chip"]
       15 DUPTABLE                         R2 K10 [{[1] = "y", ["chip"]}]
       16 DUPTABLE                         R3 K5 [{"color"}]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K6 ["Vector"]
       20 GETTABLEKS                       R4 R4 K7 ["Chip"]
       22 GETTABLEKS                       R4 R4 K11 ["YColor"]
       24 SETTABLEKS                       R4 R3 K4 ["color"]
       26 SETTABLEKS                       R3 R2 K2 ["chip"]
       28 SETLIST                          R0 R1 2 [1]
       30 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useMemo"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R1
        7 NEWTABLE                         R4 0 1
        9 MOVE                             R5 R1
       10 SETLIST                          R4 R5 1 [1]
       12 CALL                             R2 2 1
       13 GETUPVAL                         R3 2
       14 GETUPVAL                         R4 3
       15 GETUPVAL                         R5 4
       16 GETTABLEKS                       R5 R5 K1 ["Dictionary"]
       18 GETTABLEKS                       R5 R5 K2 ["join"]
       20 MOVE                             R6 R0
       21 DUPTABLE                         R7 K5 [{"partConfigs", "predictFromExpressionResults"}]
       22 SETTABLEKS                       R2 R7 K3 ["partConfigs"]
       24 GETUPVAL                         R8 5
       25 SETTABLEKS                       R8 R7 K4 ["predictFromExpressionResults"]
       27 CALL                             R5 2 1
       28 CALL                             R3 2 -1
       29 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Guest"]
       13 GETTABLEKS                       R3 R3 K8 ["CapturableWarnings"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K9 ["Cryo"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Components"]
       25 GETTABLEKS                       R5 R5 K11 ["Util"]
       27 GETTABLEKS                       R5 R5 K12 ["Number"]
       29 GETTABLEKS                       R5 R5 K13 ["MultiNumberInput"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R0 K14 ["PropertyEditorTypes"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R1 K15 ["React"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K7 ["Guest"]
       46 GETTABLEKS                       R8 R8 K16 ["getValueAggregator"]
       48 GETTABLEKS                       R8 R8 K11 ["Util"]
       50 GETTABLEKS                       R8 R8 K17 ["parseVector2ExpressionResults"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K6 [require]
       55 GETTABLEKS                       R9 R0 K18 ["Hooks"]
       57 GETTABLEKS                       R9 R9 K19 ["useVisualValues"]
       59 CALL                             R8 1 1
       60 GETTABLEKS                       R9 R6 K20 ["createElement"]
       62 DUPCLOSURE                       R10 K21 [PROTO_0]
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R2
       65 DUPCLOSURE                       R11 K22 [PROTO_2]
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R10
       72 RETURN                           R11 1
