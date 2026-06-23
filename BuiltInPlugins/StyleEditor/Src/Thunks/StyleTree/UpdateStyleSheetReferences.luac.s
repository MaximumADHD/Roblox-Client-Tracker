PROTO_0:
        0 LOADB                            R2 0
        1 GETTABLEKS                       R4 R0 K0 ["Parent"]
        3 JUMPIFEQKNIL                     R4 ; [+2]
        5 LOADB                            R3 0 +1
        6 LOADB                            R3 1
        7 LOADK                            R5 K1 ["Derive from "]
        8 GETTABLEKS                       R6 R0 K2 ["Name"]
       10 CONCAT                           R4 R5 R6
       11 JUMPIFNOTEQKNIL                  R1 ; [+2]
       13 LOADB                            R6 0 +1
       14 LOADB                            R6 1
       15 FASTCALL2K                       ASSERT R6 K3 ; [+4]
       17 LOADK                            R7 K3 ["Source should not be nil"]
       18 GETIMPORT                        R5 K5 [assert]
       20 CALL                             R5 2 0
       21 NAMECALL                         R5 R1 K6 ["GetDescendants"]
       23 CALL                             R5 1 3
       24 FORGPREP                         R5
       25 LOADK                            R12 K7 ["StyleDerive"]
       26 NAMECALL                         R10 R9 K8 ["IsA"]
       28 CALL                             R10 2 1
       29 JUMPIFNOT                        R10 ; [+20]
       30 GETTABLEKS                       R10 R9 K0 ["Parent"]
       32 JUMPIFNOT                        R10 ; [+17]
       33 MOVE                             R12 R1
       34 NAMECALL                         R10 R9 K9 ["IsDescendantOf"]
       36 CALL                             R10 2 1
       37 JUMPIFNOT                        R10 ; [+12]
       38 GETTABLEKS                       R10 R9 K10 ["StyleSheet"]
       40 JUMPIFNOTEQ                      R10 R0 ; [+9]
       42 JUMPIFNOT                        R3 ; [+4]
       43 LOADNIL                          R10
       44 SETTABLEKS                       R10 R9 K0 ["Parent"]
       46 JUMP                             ; [+2]
       47 SETTABLEKS                       R4 R9 K2 ["Name"]
       49 LOADB                            R2 1
       50 FORGLOOP                         R5 2 ; [-26]
       52 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 1
        4 JUMPIFNOT                        R0 ; [+3]
        5 GETIMPORT                        R0 K3 [Enum.FinishRecordingOperation.Append]
        7 RETURN                           R0 1
        8 GETIMPORT                        R0 K5 [Enum.FinishRecordingOperation.Cancel]
       10 RETURN                           R0 1

PROTO_2:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K1 ["Window"]
        5 GETTABLEKS                       R3 R3 K2 ["Source"]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K3 ["Parent"]
       10 JUMPIFNOTEQKNIL                  R4 ; [+12]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K4 ["createItemId"]
       15 GETUPVAL                         R5 0
       16 CALL                             R4 1 1
       17 GETUPVAL                         R7 2
       18 MOVE                             R8 R4
       19 CALL                             R7 1 -1
       20 NAMECALL                         R5 R0 K5 ["dispatch"]
       22 CALL                             R5 -1 0
       23 GETTABLEKS                       R4 R1 K6 ["recordChange"]
       25 DUPTABLE                         R5 K10 [{"Name", "DisplayName", "DoChange"}]
       26 LOADK                            R6 K11 ["StyleEditor/UpdateStyleSheetReferences"]
       27 SETTABLEKS                       R6 R5 K7 ["Name"]
       29 LOADK                            R6 K12 ["StyleEditor - Update StyleSheet References"]
       30 SETTABLEKS                       R6 R5 K8 ["DisplayName"]
       32 NEWCLOSURE                       R6 P0
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          UPVAL U0
       35 CAPTURE                          VAL R3
       36 SETTABLEKS                       R6 R5 K9 ["DoChange"]
       38 CALL                             R4 1 0
       39 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 RETURN                           R1 1

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
       17 GETTABLEKS                       R2 R2 K7 ["TreeTableHelpers"]
       19 CALL                             R1 1 1
       20 GETTABLEKS                       R2 R0 K5 ["Src"]
       22 GETTABLEKS                       R2 R2 K8 ["Actions"]
       24 GETIMPORT                        R3 K4 [require]
       26 GETTABLEKS                       R4 R2 K9 ["Window"]
       28 GETTABLEKS                       R4 R4 K10 ["DeselectItem"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K4 [require]
       33 GETTABLEKS                       R5 R0 K5 ["Src"]
       35 GETTABLEKS                       R5 R5 K11 ["Reducers"]
       37 GETTABLEKS                       R5 R5 K12 ["RootReducer"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K4 [require]
       42 GETTABLEKS                       R6 R0 K5 ["Src"]
       44 GETTABLEKS                       R6 R6 K13 ["Thunks"]
       46 GETTABLEKS                       R6 R6 K14 ["Types"]
       48 CALL                             R5 1 1
       49 DUPCLOSURE                       R6 K15 [PROTO_0]
       50 DUPCLOSURE                       R7 K16 [PROTO_3]
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R6
       54 RETURN                           R7 1
