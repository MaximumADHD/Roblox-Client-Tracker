PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["GetStyleRules"]
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["getSelectorCategory"]
        6 MOVE                             R4 R1
        7 CALL                             R3 1 1
        8 NEWTABLE                         R4 0 0
       10 LOADN                            R5 1
       11 LOADK                            R8 K2 ["StyleSheet"]
       12 NAMECALL                         R6 R0 K3 ["IsA"]
       14 CALL                             R6 2 1
       15 JUMPIFNOT                        R6 ; [+59]
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R7 R7 K4 ["CATEGORIES"]
       19 GETUPVAL                         R9 0
       20 GETTABLEKS                       R9 R9 K4 ["CATEGORIES"]
       22 LENGTH                           R8 R9
       23 GETTABLE                         R6 R7 R8
       24 JUMPIFEQ                         R3 R6 ; [+50]
       26 MOVE                             R6 R2
       27 LOADNIL                          R7
       28 LOADNIL                          R8
       29 FORGPREP                         R6
       30 GETUPVAL                         R11 0
       31 GETTABLEKS                       R11 R11 K1 ["getSelectorCategory"]
       33 GETTABLEKS                       R12 R10 K5 ["Selector"]
       35 CALL                             R11 1 1
       36 GETTABLE                         R12 R4 R11
       37 JUMPIFNOT                        R12 ; [+4]
       38 GETTABLE                         R12 R4 R11
       39 ADDK                             R12 R12 K6 [1]
       40 SETTABLE                         R12 R4 R11
       41 JUMP                             ; [+2]
       42 LOADN                            R12 1
       43 SETTABLE                         R12 R4 R11
       44 FORGLOOP                         R6 2 ; [-15]
       46 GETUPVAL                         R6 0
       47 GETTABLEKS                       R6 R6 K4 ["CATEGORIES"]
       49 LOADNIL                          R7
       50 LOADNIL                          R8
       51 FORGPREP                         R6
       52 GETTABLE                         R12 R4 R10
       53 ORK                              R11 R12 K7 [0]
       54 ADD                              R5 R5 R11
       55 JUMPIFEQ                         R10 R3 ; [+3]
       57 FORGLOOP                         R6 2 ; [-6]
       59 MOVE                             R6 R2
       60 LOADNIL                          R7
       61 LOADNIL                          R8
       62 FORGPREP                         R6
       63 GETTABLEKS                       R11 R10 K8 ["Priority"]
       65 JUMPIFNOTLE                      R5 R11 ; [+6]
       67 GETTABLEKS                       R11 R10 K8 ["Priority"]
       69 ADDK                             R11 R11 K6 [1]
       70 SETTABLEKS                       R11 R10 K8 ["Priority"]
       72 FORGLOOP                         R6 2 ; [-10]
       74 RETURN                           R5 1
       75 LENGTH                           R6 R2
       76 LOADN                            R7 0
       77 JUMPIFNOTLT                      R7 R6 ; [+7]
       79 LENGTH                           R7 R2
       80 GETTABLE                         R6 R2 R7
       81 GETTABLEKS                       R6 R6 K8 ["Priority"]
       83 ADDK                             R5 R6 K6 [1]
       84 RETURN                           R5 1
       85 LOADN                            R5 1
       86 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADN                            R2 1
        2 LOADN                            R3 1
        3 NAMECALL                         R0 R0 K0 ["sub"]
        5 CALL                             R0 3 1
        6 JUMPIFNOTEQKS                    R0 K1 [","] ; [+24]
        8 GETUPVAL                         R0 1
        9 LOADK                            R2 K2 ["StyleRule"]
       10 NAMECALL                         R0 R0 K3 ["IsA"]
       12 CALL                             R0 2 1
       13 JUMPIFNOT                        R0 ; [+17]
       14 GETUPVAL                         R0 1
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K4 ["Selector"]
       18 GETUPVAL                         R3 0
       19 CONCAT                           R1 R2 R3
       20 SETTABLEKS                       R1 R0 K4 ["Selector"]
       22 GETUPVAL                         R0 1
       23 GETUPVAL                         R1 1
       24 GETTABLEKS                       R1 R1 K4 ["Selector"]
       26 SETTABLEKS                       R1 R0 K5 ["Name"]
       28 GETUPVAL                         R0 1
       29 SETUPVAL                         R0 2
       30 JUMP                             ; [+33]
       31 GETIMPORT                        R0 K8 [Instance.new]
       33 LOADK                            R1 K2 ["StyleRule"]
       34 CALL                             R0 1 1
       35 SETUPVAL                         R0 2
       36 GETUPVAL                         R0 2
       37 GETUPVAL                         R1 0
       38 SETTABLEKS                       R1 R0 K5 ["Name"]
       40 GETUPVAL                         R0 2
       41 GETUPVAL                         R1 0
       42 SETTABLEKS                       R1 R0 K4 ["Selector"]
       44 GETUPVAL                         R0 2
       45 GETUPVAL                         R2 3
       46 JUMPIFNOT                        R2 ; [+7]
       47 GETUPVAL                         R1 4
       48 GETTABLEKS                       R1 R1 K9 ["calculatePriority"]
       50 GETUPVAL                         R2 1
       51 GETUPVAL                         R3 0
       52 CALL                             R1 2 1
       53 JUMP                             ; [+4]
       54 GETUPVAL                         R1 5
       55 GETUPVAL                         R2 1
       56 GETUPVAL                         R3 0
       57 CALL                             R1 2 1
       58 SETTABLEKS                       R1 R0 K10 ["Priority"]
       60 GETUPVAL                         R0 2
       61 GETUPVAL                         R1 1
       62 SETTABLEKS                       R1 R0 K11 ["Parent"]
       64 GETIMPORT                        R0 K15 [Enum.FinishRecordingOperation.Commit]
       66 RETURN                           R0 1

PROTO_2:
        0 LOADNIL                          R2
        1 GETTABLEKS                       R3 R1 K0 ["recordChange"]
        3 DUPTABLE                         R4 K6 [{["Name"] = "StyleEditor/CreateStyleRule", ["DisplayName"] = "StyleEditor - Create StyleRule", ["DoChange"]}]
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          REF R2
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 SETTABLEKS                       R5 R4 K5 ["DoChange"]
       13 CALL                             R3 1 0
       14 GETUPVAL                         R3 5
       15 JUMPIFNOT                        R3 ; [+12]
       16 JUMPIFNOT                        R2 ; [+11]
       17 GETUPVAL                         R3 6
       18 GETTABLEKS                       R3 R3 K7 ["createItemId"]
       20 MOVE                             R4 R2
       21 CALL                             R3 1 1
       22 GETUPVAL                         R6 7
       23 MOVE                             R7 R3
       24 CALL                             R6 1 -1
       25 NAMECALL                         R4 R0 K8 ["dispatch"]
       27 CALL                             R4 -1 0
       28 CLOSEUPVALS                      R2
       29 RETURN                           R2 1

PROTO_3:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Util"]
       17 GETTABLEKS                       R2 R2 K7 ["DesignHelpers"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K5 ["Src"]
       24 GETTABLEKS                       R3 R3 K6 ["Util"]
       26 GETTABLEKS                       R3 R3 K8 ["StyleRuleHelpers"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K4 [require]
       31 GETTABLEKS                       R4 R0 K5 ["Src"]
       33 GETTABLEKS                       R4 R4 K6 ["Util"]
       35 GETTABLEKS                       R4 R4 K9 ["TreeTableHelpers"]
       37 CALL                             R3 1 1
       38 GETTABLEKS                       R4 R0 K5 ["Src"]
       40 GETTABLEKS                       R4 R4 K10 ["Actions"]
       42 GETIMPORT                        R5 K4 [require]
       44 GETTABLEKS                       R6 R4 K11 ["Window"]
       46 GETTABLEKS                       R6 R6 K12 ["SelectItem"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K4 [require]
       51 GETTABLEKS                       R7 R0 K5 ["Src"]
       53 GETTABLEKS                       R7 R7 K13 ["Reducers"]
       55 GETTABLEKS                       R7 R7 K14 ["RootReducer"]
       57 CALL                             R6 1 1
       58 GETIMPORT                        R7 K4 [require]
       60 GETTABLEKS                       R8 R0 K5 ["Src"]
       62 GETTABLEKS                       R8 R8 K15 ["Thunks"]
       64 GETTABLEKS                       R8 R8 K16 ["Types"]
       66 CALL                             R7 1 1
       67 GETIMPORT                        R8 K4 [require]
       69 GETTABLEKS                       R9 R0 K5 ["Src"]
       71 GETTABLEKS                       R9 R9 K17 ["Flags"]
       73 GETTABLEKS                       R9 R9 K18 ["getFFlagStyleQuery"]
       75 CALL                             R8 1 1
       76 CALL                             R8 0 1
       77 DUPCLOSURE                       R9 K19 [PROTO_0]
       78 CAPTURE                          VAL R1
       79 DUPCLOSURE                       R10 K20 [PROTO_3]
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R5
       85 RETURN                           R10 1
