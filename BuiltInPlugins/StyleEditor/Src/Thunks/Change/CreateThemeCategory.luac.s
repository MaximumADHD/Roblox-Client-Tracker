PROTO_0:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["Folder"]
        3 CALL                             R0 1 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 0
        6 LOADK                            R1 K3 ["Folder"]
        7 SETTABLEKS                       R1 R0 K4 ["Name"]
        9 GETUPVAL                         R1 1
       10 JUMPIFNOT                        R1 ; [+2]
       11 GETUPVAL                         R0 2
       12 JUMP                             ; [+1]
       13 GETUPVAL                         R0 3
       14 GETUPVAL                         R1 0
       15 GETUPVAL                         R3 4
       16 JUMPIFNOT                        R3 ; [+4]
       17 GETUPVAL                         R3 4
       18 GETTABLEKS                       R2 R3 K5 ["Parent"]
       20 JUMP                             ; [+1]
       21 MOVE                             R2 R0
       22 SETTABLEKS                       R2 R1 K5 ["Parent"]
       24 GETUPVAL                         R1 0
       25 LOADK                            R3 K6 ["StyleCategory"]
       26 LOADK                            R4 K7 ["Themes"]
       27 NAMECALL                         R1 R1 K8 ["SetAttribute"]
       29 CALL                             R1 3 0
       30 GETIMPORT                        R1 K12 [Enum.FinishRecordingOperation.Commit]
       32 RETURN                           R1 1

PROTO_1:
        0 LOADNIL                          R2
        1 GETUPVAL                         R3 0
        2 JUMPIFNOT                        R3 ; [+7]
        3 NAMECALL                         R3 R0 K0 ["getState"]
        5 CALL                             R3 1 1
        6 GETTABLEKS                       R4 R3 K1 ["Window"]
        8 GETTABLEKS                       R2 R4 K2 ["Source"]
       10 LOADNIL                          R3
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R4 R5 K3 ["getAUserDesignSheet"]
       14 MOVE                             R5 R2
       15 CALL                             R4 1 1
       16 GETTABLEKS                       R5 R1 K4 ["recordChange"]
       18 DUPTABLE                         R6 K8 [{"Name", "DisplayName", "DoChange"}]
       19 LOADK                            R7 K9 ["StyleEditor/CreateThemeCategory"]
       20 SETTABLEKS                       R7 R6 K5 ["Name"]
       22 LOADK                            R7 K10 ["StyleEditor - Create Theme Category"]
       23 SETTABLEKS                       R7 R6 K6 ["DisplayName"]
       25 NEWCLOSURE                       R7 P0
       26 CAPTURE                          REF R3
       27 CAPTURE                          UPVAL U0
       28 CAPTURE                          REF R2
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          VAL R4
       31 SETTABLEKS                       R7 R6 K7 ["DoChange"]
       33 CALL                             R5 1 0
       34 JUMPIFNOT                        R3 ; [+11]
       35 GETUPVAL                         R6 3
       36 GETTABLEKS                       R5 R6 K11 ["createItemId"]
       38 MOVE                             R6 R3
       39 CALL                             R5 1 1
       40 GETUPVAL                         R8 4
       41 MOVE                             R9 R5
       42 CALL                             R8 1 -1
       43 NAMECALL                         R6 R0 K12 ["dispatch"]
       45 CALL                             R6 -1 0
       46 CLOSEUPVALS                      R2
       47 RETURN                           R3 1

PROTO_2:
        0 DUPCLOSURE                       R0 K0 [PROTO_1]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ReplicatedStorage"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R5 K5 [script]
        9 GETTABLEKS                       R4 R5 K6 ["Parent"]
       11 GETTABLEKS                       R3 R4 K6 ["Parent"]
       13 GETTABLEKS                       R2 R3 K6 ["Parent"]
       15 GETTABLEKS                       R1 R2 K6 ["Parent"]
       17 GETIMPORT                        R2 K8 [require]
       19 GETTABLEKS                       R5 R1 K9 ["Src"]
       21 GETTABLEKS                       R4 R5 K10 ["Flags"]
       23 GETTABLEKS                       R3 R4 K11 ["getFFlagStyleEditorPluginStyleSheets"]
       25 CALL                             R2 1 1
       26 CALL                             R2 0 1
       27 GETIMPORT                        R3 K8 [require]
       29 GETTABLEKS                       R6 R1 K9 ["Src"]
       31 GETTABLEKS                       R5 R6 K12 ["Util"]
       33 GETTABLEKS                       R4 R5 K13 ["TreeTableHelpers"]
       35 CALL                             R3 1 1
       36 GETTABLEKS                       R5 R1 K9 ["Src"]
       38 GETTABLEKS                       R4 R5 K14 ["Actions"]
       40 GETIMPORT                        R5 K8 [require]
       42 GETTABLEKS                       R7 R4 K15 ["Window"]
       44 GETTABLEKS                       R6 R7 K16 ["SelectItem"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K8 [require]
       49 GETTABLEKS                       R9 R1 K9 ["Src"]
       51 GETTABLEKS                       R8 R9 K12 ["Util"]
       53 GETTABLEKS                       R7 R8 K17 ["DesignHelpers"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K8 [require]
       58 GETTABLEKS                       R10 R1 K9 ["Src"]
       60 GETTABLEKS                       R9 R10 K18 ["Reducers"]
       62 GETTABLEKS                       R8 R9 K19 ["RootReducer"]
       64 CALL                             R7 1 1
       65 GETIMPORT                        R8 K8 [require]
       67 GETTABLEKS                       R11 R1 K9 ["Src"]
       69 GETTABLEKS                       R10 R11 K20 ["Thunks"]
       71 GETTABLEKS                       R9 R10 K21 ["Types"]
       73 CALL                             R8 1 1
       74 DUPCLOSURE                       R9 K22 [PROTO_2]
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R0
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R5
       80 RETURN                           R9 1
