PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["GetStyleRules"]
        2 CALL                             R2 1 1
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K1 ["getSelectorCategory"]
        6 MOVE                             R4 R1
        7 CALL                             R3 1 1
        8 NEWTABLE                         R4 0 0
       10 LOADN                            R5 1
       11 LOADK                            R8 K2 ["StyleSheet"]
       12 NAMECALL                         R6 R0 K3 ["IsA"]
       14 CALL                             R6 2 1
       15 JUMPIFNOT                        R6 ; [+59]
       16 GETUPVAL                         R8 0
       17 GETTABLEKS                       R7 R8 K4 ["CATEGORIES"]
       19 GETUPVAL                         R10 0
       20 GETTABLEKS                       R9 R10 K4 ["CATEGORIES"]
       22 LENGTH                           R8 R9
       23 GETTABLE                         R6 R7 R8
       24 JUMPIFEQ                         R3 R6 ; [+50]
       26 MOVE                             R6 R2
       27 LOADNIL                          R7
       28 LOADNIL                          R8
       29 FORGPREP                         R6
       30 GETUPVAL                         R12 0
       31 GETTABLEKS                       R11 R12 K1 ["getSelectorCategory"]
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
       46 GETUPVAL                         R9 0
       47 GETTABLEKS                       R6 R9 K4 ["CATEGORIES"]
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
       79 LENGTH                           R8 R2
       80 GETTABLE                         R7 R2 R8
       81 GETTABLEKS                       R6 R7 K8 ["Priority"]
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
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R2 R4 K4 ["Selector"]
       18 GETUPVAL                         R3 0
       19 CONCAT                           R1 R2 R3
       20 SETTABLEKS                       R1 R0 K4 ["Selector"]
       22 GETUPVAL                         R0 1
       23 GETUPVAL                         R2 1
       24 GETTABLEKS                       R1 R2 K4 ["Selector"]
       26 SETTABLEKS                       R1 R0 K5 ["Name"]
       28 GETUPVAL                         R0 1
       29 SETUPVAL                         R0 2
       30 JUMP                             ; [+24]
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
       45 GETUPVAL                         R1 3
       46 GETUPVAL                         R2 1
       47 GETUPVAL                         R3 0
       48 CALL                             R1 2 1
       49 SETTABLEKS                       R1 R0 K9 ["Priority"]
       51 GETUPVAL                         R0 2
       52 GETUPVAL                         R1 1
       53 SETTABLEKS                       R1 R0 K10 ["Parent"]
       55 GETIMPORT                        R0 K14 [Enum.FinishRecordingOperation.Commit]
       57 RETURN                           R0 1

PROTO_2:
        0 LOADNIL                          R2
        1 GETTABLEKS                       R3 R1 K0 ["recordChange"]
        3 DUPTABLE                         R4 K4 [{"Name", "DisplayName", "DoChange"}]
        4 LOADK                            R5 K5 ["StyleEditor/CreateStyleRule"]
        5 SETTABLEKS                       R5 R4 K1 ["Name"]
        7 LOADK                            R5 K6 ["StyleEditor - Create StyleRule"]
        8 SETTABLEKS                       R5 R4 K2 ["DisplayName"]
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          REF R2
       14 CAPTURE                          UPVAL U2
       15 SETTABLEKS                       R5 R4 K3 ["DoChange"]
       17 CALL                             R3 1 0
       18 GETUPVAL                         R3 3
       19 JUMPIFNOT                        R3 ; [+12]
       20 JUMPIFNOT                        R2 ; [+11]
       21 GETUPVAL                         R4 4
       22 GETTABLEKS                       R3 R4 K7 ["createItemId"]
       24 MOVE                             R4 R2
       25 CALL                             R3 1 1
       26 GETUPVAL                         R6 5
       27 MOVE                             R7 R3
       28 CALL                             R6 1 -1
       29 NAMECALL                         R4 R0 K8 ["dispatch"]
       31 CALL                             R4 -1 0
       32 CLOSEUPVALS                      R2
       33 RETURN                           R2 1

PROTO_3:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R2
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R4 R0 K5 ["Src"]
       15 GETTABLEKS                       R3 R4 K6 ["Util"]
       17 GETTABLEKS                       R2 R3 K7 ["DesignHelpers"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R5 R0 K5 ["Src"]
       24 GETTABLEKS                       R4 R5 K6 ["Util"]
       26 GETTABLEKS                       R3 R4 K8 ["TreeTableHelpers"]
       28 CALL                             R2 1 1
       29 GETTABLEKS                       R4 R0 K5 ["Src"]
       31 GETTABLEKS                       R3 R4 K9 ["Actions"]
       33 GETIMPORT                        R4 K4 [require]
       35 GETTABLEKS                       R6 R3 K10 ["Window"]
       37 GETTABLEKS                       R5 R6 K11 ["SelectItem"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K4 [require]
       42 GETTABLEKS                       R8 R0 K5 ["Src"]
       44 GETTABLEKS                       R7 R8 K12 ["Reducers"]
       46 GETTABLEKS                       R6 R7 K13 ["RootReducer"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K4 [require]
       51 GETTABLEKS                       R9 R0 K5 ["Src"]
       53 GETTABLEKS                       R8 R9 K14 ["Thunks"]
       55 GETTABLEKS                       R7 R8 K15 ["Types"]
       57 CALL                             R6 1 1
       58 DUPCLOSURE                       R7 K16 [PROTO_0]
       59 CAPTURE                          VAL R1
       60 DUPCLOSURE                       R8 K17 [PROTO_3]
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R4
       64 RETURN                           R8 1
