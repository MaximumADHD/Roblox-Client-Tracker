PROTO_0:
        0 LOADK                            R3 K0 ["StyleCategory"]
        1 NAMECALL                         R1 R0 K1 ["GetAttribute"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+2]
        5 LOADB                            R2 1
        6 RETURN                           R2 1
        7 GETUPVAL                         R3 0
        8 MOVE                             R4 R1
        9 LOADK                            R5 K2 ["Tokens"]
       10 CALL                             R3 2 1
       11 NOT                              R2 R3
       12 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["StyleCategory"]
        2 NAMECALL                         R0 R0 K1 ["GetAttribute"]
        4 CALL                             R0 2 1
        5 JUMPIF                           R0 ; [+3]
        6 GETIMPORT                        R1 K5 [Enum.FinishRecordingOperation.Cancel]
        8 RETURN                           R1 1
        9 JUMPIFNOTEQKS                    R0 K6 ["Themes"] ; [+29]
       11 GETUPVAL                         R1 1
       12 GETUPVAL                         R2 0
       13 NAMECALL                         R2 R2 K7 ["GetDerives"]
       15 CALL                             R2 1 1
       16 DUPCLOSURE                       R3 K8 [PROTO_0]
       17 CAPTURE                          UPVAL U2
       18 CALL                             R1 2 1
       19 GETUPVAL                         R2 0
       20 MOVE                             R4 R1
       21 NAMECALL                         R2 R2 K9 ["SetDerives"]
       23 CALL                             R2 2 0
       24 GETUPVAL                         R3 3
       25 GETTABLEKS                       R2 R3 K10 ["getUserDesignSheets"]
       27 GETUPVAL                         R3 4
       28 CALL                             R2 1 3
       29 FORGPREP                         R2
       30 GETUPVAL                         R8 3
       31 GETTABLEKS                       R7 R8 K11 ["removeDerive"]
       33 MOVE                             R8 R6
       34 GETUPVAL                         R9 0
       35 CALL                             R7 2 0
       36 FORGLOOP                         R2 2 ; [-7]
       38 JUMP                             ; [+44]
       39 JUMPIFNOTEQKS                    R0 K12 ["Tokens"] ; [+43]
       41 GETUPVAL                         R2 5
       42 JUMPIFNOT                        R2 ; [+2]
       43 GETUPVAL                         R1 4
       44 JUMP                             ; [+1]
       45 GETUPVAL                         R1 6
       46 JUMPIFNOTEQKNIL                  R1 ; [+2]
       48 LOADB                            R3 0 +1
       49 LOADB                            R3 1
       50 FASTCALL2K                       ASSERT R3 K13 ; [+4]
       52 LOADK                            R4 K13 ["Source should not be nil"]
       53 GETIMPORT                        R2 K15 [assert]
       55 CALL                             R2 2 0
       56 NAMECALL                         R2 R1 K16 ["GetDescendants"]
       58 CALL                             R2 1 3
       59 FORGPREP                         R2
       60 LOADK                            R9 K17 ["StyleSheet"]
       61 NAMECALL                         R7 R6 K18 ["IsA"]
       63 CALL                             R7 2 1
       64 JUMPIFNOT                        R7 ; [+16]
       65 LOADK                            R9 K0 ["StyleCategory"]
       66 NAMECALL                         R7 R6 K1 ["GetAttribute"]
       68 CALL                             R7 2 1
       69 JUMPIFNOT                        R7 ; [+11]
       70 GETUPVAL                         R8 2
       71 MOVE                             R9 R7
       72 LOADK                            R10 K6 ["Themes"]
       73 CALL                             R8 2 1
       74 JUMPIFNOT                        R8 ; [+6]
       75 GETUPVAL                         R9 3
       76 GETTABLEKS                       R8 R9 K11 ["removeDerive"]
       78 MOVE                             R9 R6
       79 GETUPVAL                         R10 0
       80 CALL                             R8 2 0
       81 FORGLOOP                         R2 2 ; [-22]
       83 GETUPVAL                         R1 0
       84 LOADK                            R3 K0 ["StyleCategory"]
       85 LOADNIL                          R4
       86 NAMECALL                         R1 R1 K19 ["SetAttribute"]
       88 CALL                             R1 3 0
       89 GETIMPORT                        R1 K21 [Enum.FinishRecordingOperation.Commit]
       91 RETURN                           R1 1

PROTO_2:
        0 LOADNIL                          R2
        1 GETUPVAL                         R3 0
        2 JUMPIFNOT                        R3 ; [+7]
        3 NAMECALL                         R3 R0 K0 ["getState"]
        5 CALL                             R3 1 1
        6 GETTABLEKS                       R4 R3 K1 ["Window"]
        8 GETTABLEKS                       R2 R4 K2 ["Source"]
       10 GETTABLEKS                       R3 R1 K3 ["recordChange"]
       12 DUPTABLE                         R4 K7 [{"Name", "DisplayName", "DoChange"}]
       13 LOADK                            R5 K8 ["StyleEditor/ClearStyleSheetCategory"]
       14 SETTABLEKS                       R5 R4 K4 ["Name"]
       16 LOADK                            R5 K9 ["StyleEditor - Clear StyleSheet Category"]
       17 SETTABLEKS                       R5 R4 K5 ["DisplayName"]
       19 NEWCLOSURE                       R5 P0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          UPVAL U4
       24 CAPTURE                          REF R2
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          UPVAL U5
       27 SETTABLEKS                       R5 R4 K6 ["DoChange"]
       29 CALL                             R3 1 0
       30 CLOSEUPVALS                      R2
       31 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 RETURN                           R1 1

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
       29 GETTABLEKS                       R5 R1 K12 ["Packages"]
       31 GETTABLEKS                       R4 R5 K13 ["Dash"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R3 K14 ["startsWith"]
       36 GETTABLEKS                       R5 R3 K15 ["filter"]
       38 GETIMPORT                        R6 K8 [require]
       40 GETTABLEKS                       R9 R1 K9 ["Src"]
       42 GETTABLEKS                       R8 R9 K16 ["Util"]
       44 GETTABLEKS                       R7 R8 K17 ["DesignHelpers"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K8 [require]
       49 GETTABLEKS                       R10 R1 K9 ["Src"]
       51 GETTABLEKS                       R9 R10 K18 ["Reducers"]
       53 GETTABLEKS                       R8 R9 K19 ["RootReducer"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K8 [require]
       58 GETTABLEKS                       R11 R1 K9 ["Src"]
       60 GETTABLEKS                       R10 R11 K20 ["Thunks"]
       62 GETTABLEKS                       R9 R10 K21 ["Types"]
       64 CALL                             R8 1 1
       65 DUPCLOSURE                       R9 K22 [PROTO_3]
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R0
       71 RETURN                           R9 1
