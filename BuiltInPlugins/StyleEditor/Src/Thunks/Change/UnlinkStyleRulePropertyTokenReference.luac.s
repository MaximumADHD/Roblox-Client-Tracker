PROTO_0:
        0 LOADNIL                          R2
        1 JUMPIFNOT                        R1 ; [+10]
        2 LENGTH                           R3 R1
        3 LOADN                            R4 0
        4 JUMPIFNOTLT                      R4 R3 ; [+7]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K0 ["allProperties"]
        9 GETTABLE                         R3 R4 R1
       10 GETTABLE                         R2 R3 R0
       11 JUMP                             ; [+10]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K1 ["getPossiblePropertyTypes"]
       15 MOVE                             R5 R0
       16 CALL                             R4 1 1
       17 GETTABLEN                        R3 R4 1
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K2 ["PropertySchemas"]
       21 GETTABLE                         R2 R4 R3
       22 JUMPIFNOTEQKNIL                  R2 ; [+2]
       24 LOADB                            R4 0 +1
       25 LOADB                            R4 1
       26 LOADK                            R6 K3 ["unknown schema for: %* (%*)"]
       27 MOVE                             R8 R0
       28 MOVE                             R9 R1
       29 NAMECALL                         R6 R6 K4 ["format"]
       31 CALL                             R6 3 1
       32 MOVE                             R5 R6
       33 FASTCALL2                        ASSERT R4 R5 ; [+3]
       35 GETIMPORT                        R3 K6 [assert]
       37 CALL                             R3 2 0
       38 GETTABLEKS                       R3 R2 K7 ["GetDefaultValue"]
       40 CALL                             R3 0 -1
       41 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetStyleInfo"]
        4 CALL                             R0 2 1
        5 GETTABLEKS                       R2 R0 K1 ["Properties"]
        7 GETUPVAL                         R3 2
        8 GETTABLE                         R1 R2 R3
        9 JUMPIF                           R1 ; [+3]
       10 GETIMPORT                        R2 K5 [Enum.FinishRecordingOperation.Cancel]
       12 RETURN                           R2 1
       13 GETTABLEKS                       R2 R1 K6 ["Value"]
       15 GETTABLEKS                       R3 R1 K7 ["Error"]
       17 JUMPIF                           R3 ; [+2]
       18 JUMPIFNOTEQKS                    R2 K8 ["$"] ; [+49]
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R3 R3 K9 ["findFirstClassSelector"]
       23 GETUPVAL                         R4 1
       24 CALL                             R3 1 1
       25 GETUPVAL                         R4 2
       26 LOADNIL                          R5
       27 JUMPIFNOT                        R3 ; [+10]
       28 LENGTH                           R6 R3
       29 LOADN                            R7 0
       30 JUMPIFNOTLT                      R7 R6 ; [+7]
       32 GETUPVAL                         R7 4
       33 GETTABLEKS                       R7 R7 K10 ["allProperties"]
       35 GETTABLE                         R6 R7 R3
       36 GETTABLE                         R5 R6 R4
       37 JUMP                             ; [+10]
       38 GETUPVAL                         R7 4
       39 GETTABLEKS                       R7 R7 K11 ["getPossiblePropertyTypes"]
       41 MOVE                             R8 R4
       42 CALL                             R7 1 1
       43 GETTABLEN                        R6 R7 1
       44 GETUPVAL                         R7 4
       45 GETTABLEKS                       R7 R7 K12 ["PropertySchemas"]
       47 GETTABLE                         R5 R7 R6
       48 JUMPIFNOTEQKNIL                  R5 ; [+2]
       50 LOADB                            R7 0 +1
       51 LOADB                            R7 1
       52 LOADK                            R9 K13 ["unknown schema for: %* (%*)"]
       53 MOVE                             R11 R4
       54 MOVE                             R12 R3
       55 NAMECALL                         R9 R9 K14 ["format"]
       57 CALL                             R9 3 1
       58 MOVE                             R8 R9
       59 FASTCALL2                        ASSERT R7 R8 ; [+3]
       61 GETIMPORT                        R6 K16 [assert]
       63 CALL                             R6 2 0
       64 GETTABLEKS                       R6 R5 K17 ["GetDefaultValue"]
       66 CALL                             R6 0 1
       67 MOVE                             R2 R6
       68 GETUPVAL                         R3 1
       69 GETUPVAL                         R5 2
       70 MOVE                             R6 R2
       71 NAMECALL                         R3 R3 K18 ["SetProperty"]
       73 CALL                             R3 3 0
       74 GETIMPORT                        R3 K20 [Enum.FinishRecordingOperation.Commit]
       76 RETURN                           R3 1

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["recordChange"]
        2 DUPTABLE                         R3 K6 [{["Name"] = "StyleEditor/UnlinkStyleRulePropertyTokenReference", ["DisplayName"] = "StyleEditor - Unlink Token from StyleRule Property", ["DoChange"]}]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 SETTABLEKS                       R4 R3 K5 ["DoChange"]
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StylingService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETTABLEKS                       R1 R1 K6 ["Parent"]
       17 GETIMPORT                        R2 K8 [require]
       19 GETTABLEKS                       R3 R1 K9 ["Src"]
       21 GETTABLEKS                       R3 R3 K10 ["Util"]
       23 GETTABLEKS                       R3 R3 K11 ["SelectorHelpers"]
       25 CALL                             R2 1 1
       26 GETIMPORT                        R3 K8 [require]
       28 GETTABLEKS                       R4 R1 K9 ["Src"]
       30 GETTABLEKS                       R4 R4 K10 ["Util"]
       32 GETTABLEKS                       R4 R4 K12 ["StyleSchema"]
       34 CALL                             R3 1 1
       35 GETIMPORT                        R4 K8 [require]
       37 GETTABLEKS                       R5 R1 K9 ["Src"]
       39 GETTABLEKS                       R5 R5 K13 ["Reducers"]
       41 GETTABLEKS                       R5 R5 K14 ["RootReducer"]
       43 CALL                             R4 1 1
       44 GETIMPORT                        R5 K8 [require]
       46 GETTABLEKS                       R6 R1 K9 ["Src"]
       48 GETTABLEKS                       R6 R6 K15 ["Thunks"]
       50 GETTABLEKS                       R6 R6 K16 ["Types"]
       52 CALL                             R5 1 1
       53 GETIMPORT                        R6 K8 [require]
       55 GETTABLEKS                       R7 R1 K9 ["Src"]
       57 GETTABLEKS                       R7 R7 K16 ["Types"]
       59 CALL                             R6 1 1
       60 DUPCLOSURE                       R7 K17 [PROTO_0]
       61 CAPTURE                          VAL R3
       62 DUPCLOSURE                       R8 K18 [PROTO_3]
       63 CAPTURE                          VAL R0
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R3
       66 RETURN                           R8 1
