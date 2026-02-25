PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADNIL                          R3
        3 NAMECALL                         R0 R0 K0 ["SetProperty"]
        5 CALL                             R0 3 0
        6 GETUPVAL                         R0 0
        7 GETUPVAL                         R2 2
        8 GETUPVAL                         R3 3
        9 NAMECALL                         R0 R0 K0 ["SetProperty"]
       11 CALL                             R0 3 0
       12 GETIMPORT                        R0 K4 [Enum.FinishRecordingOperation.Commit]
       14 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 JUMPIFNOTEQ                      R2 R3 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R2 R3 K0 ["findFirstClassSelector"]
        8 GETUPVAL                         R3 3
        9 CALL                             R2 1 1
       10 GETUPVAL                         R4 4
       11 GETTABLEKS                       R3 R4 K1 ["getPropertySchema"]
       13 GETUPVAL                         R4 1
       14 MOVE                             R5 R2
       15 CALL                             R3 2 1
       16 JUMPIF                           R3 ; [+1]
       17 RETURN                           R0 0
       18 GETTABLEKS                       R4 R3 K2 ["GetDefaultValue"]
       20 CALL                             R4 0 1
       21 GETUPVAL                         R5 3
       22 GETUPVAL                         R7 0
       23 NAMECALL                         R5 R5 K3 ["GetPropertyResolved"]
       25 CALL                             R5 2 1
       26 GETUPVAL                         R6 3
       27 GETUPVAL                         R8 0
       28 NAMECALL                         R6 R6 K4 ["GetProperty"]
       30 CALL                             R6 2 1
       31 FASTCALL1                        TYPEOF R4 ; [+3]
       32 MOVE                             R9 R4
       33 GETIMPORT                        R8 K6 [typeof]
       35 CALL                             R8 1 1
       36 FASTCALL1                        TYPEOF R5 ; [+3]
       37 MOVE                             R10 R5
       38 GETIMPORT                        R9 K6 [typeof]
       40 CALL                             R9 1 1
       41 JUMPIFNOTEQ                      R8 R9 ; [+3]
       43 MOVE                             R7 R6
       44 JUMP                             ; [+1]
       45 MOVE                             R7 R4
       46 GETTABLEKS                       R8 R1 K7 ["recordChange"]
       48 DUPTABLE                         R9 K11 [{"Name", "DisplayName", "DoChange"}]
       49 LOADK                            R10 K12 ["StyleEditor/RenameStyleRuleProperty"]
       50 SETTABLEKS                       R10 R9 K8 ["Name"]
       52 LOADK                            R10 K13 ["StyleEditor - Rename StyleRule Property"]
       53 SETTABLEKS                       R10 R9 K9 ["DisplayName"]
       55 NEWCLOSURE                       R10 P0
       56 CAPTURE                          UPVAL U3
       57 CAPTURE                          UPVAL U0
       58 CAPTURE                          UPVAL U1
       59 CAPTURE                          VAL R7
       60 SETTABLEKS                       R10 R9 K10 ["DoChange"]
       62 CALL                             R8 1 0
       63 RETURN                           R0 0

PROTO_2:
        0 MOVE                             R4 R0
        1 JUMPIFNOT                        R4 ; [+4]
        2 LOADK                            R6 K0 ["StyleRule"]
        3 NAMECALL                         R4 R0 K1 ["IsA"]
        5 CALL                             R4 2 1
        6 FASTCALL2K                       ASSERT R4 K2 ; [+4]
        8 LOADK                            R5 K2 ["expecting valid StyleRule"]
        9 GETIMPORT                        R3 K4 [assert]
       11 CALL                             R3 2 0
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R2
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U1
       18 RETURN                           R3 1

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
       17 GETTABLEKS                       R2 R3 K7 ["SelectorHelpers"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R5 R0 K5 ["Src"]
       24 GETTABLEKS                       R4 R5 K6 ["Util"]
       26 GETTABLEKS                       R3 R4 K8 ["StyleSchema"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K4 [require]
       31 GETTABLEKS                       R6 R0 K5 ["Src"]
       33 GETTABLEKS                       R5 R6 K9 ["Reducers"]
       35 GETTABLEKS                       R4 R5 K10 ["RootReducer"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K4 [require]
       40 GETTABLEKS                       R7 R0 K5 ["Src"]
       42 GETTABLEKS                       R6 R7 K11 ["Thunks"]
       44 GETTABLEKS                       R5 R6 K12 ["Types"]
       46 CALL                             R4 1 1
       47 DUPCLOSURE                       R5 K13 [PROTO_2]
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R2
       50 RETURN                           R5 1
