PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["FindFirstChild"]
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+7]
        6 LOADK                            R3 K1 ["Folder"]
        7 NAMECALL                         R1 R0 K2 ["IsA"]
        9 CALL                             R1 2 1
       10 JUMPIFNOT                        R1 ; [+2]
       11 SETUPVAL                         R0 2
       12 JUMP                             ; [+13]
       13 GETIMPORT                        R1 K5 [Instance.new]
       15 LOADK                            R2 K1 ["Folder"]
       16 CALL                             R1 1 1
       17 SETUPVAL                         R1 2
       18 GETUPVAL                         R1 2
       19 GETUPVAL                         R2 1
       20 SETTABLEKS                       R2 R1 K6 ["Name"]
       22 GETUPVAL                         R1 2
       23 GETUPVAL                         R2 0
       24 SETTABLEKS                       R2 R1 K7 ["Parent"]
       26 GETUPVAL                         R2 3
       27 GETTABLEKS                       R1 R2 K8 ["getAvailablePseudoSelector"]
       29 GETUPVAL                         R2 0
       30 LOADK                            R3 K9 ["StyleQuery"]
       31 CALL                             R1 2 1
       32 GETIMPORT                        R2 K5 [Instance.new]
       34 LOADK                            R3 K10 ["StyleRule"]
       35 CALL                             R2 1 1
       36 SETTABLEKS                       R1 R2 K11 ["Selector"]
       38 SETTABLEKS                       R1 R2 K6 ["Name"]
       40 GETUPVAL                         R4 4
       41 GETTABLEKS                       R3 R4 K12 ["calculatePriority"]
       43 GETUPVAL                         R4 0
       44 MOVE                             R5 R1
       45 CALL                             R3 2 1
       46 SETTABLEKS                       R3 R2 K13 ["Priority"]
       48 GETUPVAL                         R3 2
       49 SETTABLEKS                       R3 R2 K7 ["Parent"]
       51 GETIMPORT                        R3 K16 [string.match]
       53 MOVE                             R4 R1
       54 LOADK                            R5 K17 ["#(.*)"]
       55 CALL                             R3 2 1
       56 LOADK                            R5 K18 ["%*%*"]
       57 GETUPVAL                         R9 5
       58 GETTABLEKS                       R8 R9 K19 ["SelectorSyntax"]
       60 GETTABLEKS                       R7 R8 K20 ["Query"]
       62 MOVE                             R8 R3
       63 JUMPIF                           R8 ; [+3]
       64 GETUPVAL                         R9 6
       65 GETTABLEKS                       R8 R9 K21 ["ClassName"]
       67 NAMECALL                         R5 R5 K22 ["format"]
       69 CALL                             R5 3 1
       70 MOVE                             R4 R5
       71 GETIMPORT                        R5 K5 [Instance.new]
       73 LOADK                            R6 K10 ["StyleRule"]
       74 CALL                             R5 1 1
       75 SETTABLEKS                       R4 R5 K11 ["Selector"]
       77 SETTABLEKS                       R4 R5 K6 ["Name"]
       79 GETUPVAL                         R7 4
       80 GETTABLEKS                       R6 R7 K12 ["calculatePriority"]
       82 GETUPVAL                         R7 0
       83 MOVE                             R8 R4
       84 CALL                             R6 2 1
       85 SETTABLEKS                       R6 R5 K13 ["Priority"]
       87 GETUPVAL                         R6 2
       88 SETTABLEKS                       R6 R5 K7 ["Parent"]
       90 GETIMPORT                        R6 K26 [Enum.FinishRecordingOperation.Commit]
       92 RETURN                           R6 1

PROTO_1:
        0 LOADNIL                          R2
        1 GETTABLEKS                       R3 R1 K0 ["Localization"]
        3 LOADK                            R6 K1 ["Categories"]
        4 LOADK                            R7 K2 ["Queries"]
        5 NAMECALL                         R4 R3 K3 ["getText"]
        7 CALL                             R4 3 1
        8 GETTABLEKS                       R5 R1 K4 ["recordChange"]
       10 DUPTABLE                         R6 K8 [{"Name", "DisplayName", "DoChange"}]
       11 LOADK                            R7 K9 ["StyleEditor/CreateStyleQuery"]
       12 SETTABLEKS                       R7 R6 K5 ["Name"]
       14 LOADK                            R7 K10 ["StyleEditor - Create StyleQuery"]
       15 SETTABLEKS                       R7 R6 K6 ["DisplayName"]
       17 NEWCLOSURE                       R7 P0
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          VAL R4
       20 CAPTURE                          REF R2
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U4
       25 SETTABLEKS                       R7 R6 K7 ["DoChange"]
       27 CALL                             R5 1 0
       28 JUMPIFNOT                        R2 ; [+11]
       29 GETUPVAL                         R6 5
       30 GETTABLEKS                       R5 R6 K11 ["createItemId"]
       32 MOVE                             R6 R2
       33 CALL                             R5 1 1
       34 GETUPVAL                         R8 6
       35 MOVE                             R9 R5
       36 CALL                             R8 1 -1
       37 NAMECALL                         R6 R0 K12 ["dispatch"]
       39 CALL                             R6 -1 0
       40 CLOSEUPVALS                      R2
       41 RETURN                           R2 1

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 RETURN                           R1 1

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
       17 GETTABLEKS                       R2 R3 K7 ["MenuHelpers"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R5 R0 K5 ["Src"]
       24 GETTABLEKS                       R4 R5 K6 ["Util"]
       26 GETTABLEKS                       R3 R4 K8 ["SelectorHelpers"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K4 [require]
       31 GETTABLEKS                       R6 R0 K5 ["Src"]
       33 GETTABLEKS                       R5 R6 K6 ["Util"]
       35 GETTABLEKS                       R4 R5 K9 ["StyleQueryHelpers"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K4 [require]
       40 GETTABLEKS                       R7 R0 K5 ["Src"]
       42 GETTABLEKS                       R6 R7 K6 ["Util"]
       44 GETTABLEKS                       R5 R6 K10 ["StyleRuleHelpers"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K4 [require]
       49 GETTABLEKS                       R8 R0 K5 ["Src"]
       51 GETTABLEKS                       R7 R8 K6 ["Util"]
       53 GETTABLEKS                       R6 R7 K11 ["TreeTableHelpers"]
       55 CALL                             R5 1 1
       56 GETTABLEKS                       R7 R0 K5 ["Src"]
       58 GETTABLEKS                       R6 R7 K12 ["Actions"]
       60 GETIMPORT                        R7 K4 [require]
       62 GETTABLEKS                       R9 R6 K13 ["Window"]
       64 GETTABLEKS                       R8 R9 K14 ["SelectItem"]
       66 CALL                             R7 1 1
       67 GETIMPORT                        R8 K4 [require]
       69 GETTABLEKS                       R11 R0 K5 ["Src"]
       71 GETTABLEKS                       R10 R11 K15 ["Reducers"]
       73 GETTABLEKS                       R9 R10 K16 ["RootReducer"]
       75 CALL                             R8 1 1
       76 GETIMPORT                        R9 K4 [require]
       78 GETTABLEKS                       R12 R0 K5 ["Src"]
       80 GETTABLEKS                       R11 R12 K17 ["Thunks"]
       82 GETTABLEKS                       R10 R11 K18 ["Types"]
       84 CALL                             R9 1 1
       85 DUPCLOSURE                       R10 K19 [PROTO_2]
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R7
       92 RETURN                           R10 1
