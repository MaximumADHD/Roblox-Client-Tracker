PROTO_0:
        0 LOADB                            R2 0
        1 GETUPVAL                         R4 0
        2 JUMPIFNOT                        R4 ; [+2]
        3 MOVE                             R3 R1
        4 JUMP                             ; [+1]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R5 R0 K0 ["Parent"]
        8 JUMPIFEQKNIL                     R5 ; [+2]
       10 LOADB                            R4 0 +1
       11 LOADB                            R4 1
       12 LOADK                            R6 K1 ["Derive from "]
       13 GETTABLEKS                       R7 R0 K2 ["Name"]
       15 CONCAT                           R5 R6 R7
       16 JUMPIFNOTEQKNIL                  R3 ; [+2]
       18 LOADB                            R7 0 +1
       19 LOADB                            R7 1
       20 FASTCALL2K                       ASSERT R7 K3 ; [+4]
       22 LOADK                            R8 K3 ["Source should not be nil"]
       23 GETIMPORT                        R6 K5 [assert]
       25 CALL                             R6 2 0
       26 NAMECALL                         R6 R3 K6 ["GetDescendants"]
       28 CALL                             R6 1 3
       29 FORGPREP                         R6
       30 LOADK                            R13 K7 ["StyleDerive"]
       31 NAMECALL                         R11 R10 K8 ["IsA"]
       33 CALL                             R11 2 1
       34 JUMPIFNOT                        R11 ; [+27]
       35 GETTABLEKS                       R11 R10 K0 ["Parent"]
       37 JUMPIFNOT                        R11 ; [+24]
       38 GETUPVAL                         R12 0
       39 JUMPIFNOT                        R12 ; [+5]
       40 MOVE                             R13 R3
       41 NAMECALL                         R11 R10 K9 ["IsDescendantOf"]
       43 CALL                             R11 2 1
       44 JUMP                             ; [+4]
       45 LOADK                            R13 K10 ["ReplicatedStorage"]
       46 NAMECALL                         R11 R10 K11 ["FindFirstAncestorWhichIsA"]
       48 CALL                             R11 2 1
       49 JUMPIFNOT                        R11 ; [+12]
       50 GETTABLEKS                       R11 R10 K12 ["StyleSheet"]
       52 JUMPIFNOTEQ                      R11 R0 ; [+9]
       54 JUMPIFNOT                        R4 ; [+4]
       55 LOADNIL                          R11
       56 SETTABLEKS                       R11 R10 K0 ["Parent"]
       58 JUMP                             ; [+2]
       59 SETTABLEKS                       R5 R10 K2 ["Name"]
       61 LOADB                            R2 1
       62 FORGLOOP                         R6 2 ; [-33]
       64 RETURN                           R2 1

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
        0 LOADNIL                          R2
        1 GETUPVAL                         R3 0
        2 JUMPIFNOT                        R3 ; [+7]
        3 NAMECALL                         R3 R0 K0 ["getState"]
        5 CALL                             R3 1 1
        6 GETTABLEKS                       R4 R3 K1 ["Window"]
        8 GETTABLEKS                       R2 R4 K2 ["Source"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K3 ["Parent"]
       13 JUMPIFNOTEQKNIL                  R3 ; [+12]
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R3 R3 K4 ["createItemId"]
       18 GETUPVAL                         R4 1
       19 CALL                             R3 1 1
       20 GETUPVAL                         R6 3
       21 MOVE                             R7 R3
       22 CALL                             R6 1 -1
       23 NAMECALL                         R4 R0 K5 ["dispatch"]
       25 CALL                             R4 -1 0
       26 GETTABLEKS                       R3 R1 K6 ["recordChange"]
       28 DUPTABLE                         R4 K10 [{"Name", "DisplayName", "DoChange"}]
       29 LOADK                            R5 K11 ["StyleEditor/UpdateStyleSheetReferences"]
       30 SETTABLEKS                       R5 R4 K7 ["Name"]
       32 LOADK                            R5 K12 ["StyleEditor - Update StyleSheet References"]
       33 SETTABLEKS                       R5 R4 K8 ["DisplayName"]
       35 NEWCLOSURE                       R5 P0
       36 CAPTURE                          UPVAL U4
       37 CAPTURE                          UPVAL U1
       38 CAPTURE                          REF R2
       39 SETTABLEKS                       R5 R4 K9 ["DoChange"]
       41 CALL                             R3 1 0
       42 CLOSEUPVALS                      R2
       43 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ReplicatedStorage"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETTABLEKS                       R1 R1 K6 ["Parent"]
       17 GETIMPORT                        R2 K8 [require]
       19 GETTABLEKS                       R3 R1 K9 ["Src"]
       21 GETTABLEKS                       R3 R3 K10 ["Flags"]
       23 GETTABLEKS                       R3 R3 K11 ["getFFlagStyleEditorPluginStyleSheets"]
       25 CALL                             R2 1 1
       26 CALL                             R2 0 1
       27 GETIMPORT                        R3 K8 [require]
       29 GETTABLEKS                       R4 R1 K9 ["Src"]
       31 GETTABLEKS                       R4 R4 K12 ["Util"]
       33 GETTABLEKS                       R4 R4 K13 ["TreeTableHelpers"]
       35 CALL                             R3 1 1
       36 GETTABLEKS                       R4 R1 K9 ["Src"]
       38 GETTABLEKS                       R4 R4 K14 ["Actions"]
       40 GETIMPORT                        R5 K8 [require]
       42 GETTABLEKS                       R6 R4 K15 ["Window"]
       44 GETTABLEKS                       R6 R6 K16 ["DeselectItem"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K8 [require]
       49 GETTABLEKS                       R7 R1 K9 ["Src"]
       51 GETTABLEKS                       R7 R7 K17 ["Reducers"]
       53 GETTABLEKS                       R7 R7 K18 ["RootReducer"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K8 [require]
       58 GETTABLEKS                       R8 R1 K9 ["Src"]
       60 GETTABLEKS                       R8 R8 K19 ["Thunks"]
       62 GETTABLEKS                       R8 R8 K20 ["Types"]
       64 CALL                             R7 1 1
       65 DUPCLOSURE                       R8 K21 [PROTO_0]
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R0
       68 DUPCLOSURE                       R9 K22 [PROTO_3]
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R8
       73 RETURN                           R9 1
