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
       24 GETUPVAL                         R2 3
       25 GETTABLEKS                       R2 R2 K10 ["getUserDesignSheets"]
       27 GETUPVAL                         R3 4
       28 CALL                             R2 1 3
       29 FORGPREP                         R2
       30 GETUPVAL                         R7 3
       31 GETTABLEKS                       R7 R7 K11 ["removeDerive"]
       33 MOVE                             R8 R6
       34 GETUPVAL                         R9 0
       35 CALL                             R7 2 0
       36 FORGLOOP                         R2 2 ; [-7]
       38 JUMP                             ; [+40]
       39 JUMPIFNOTEQKS                    R0 K12 ["Tokens"] ; [+39]
       41 GETUPVAL                         R1 4
       42 JUMPIFNOTEQKNIL                  R1 ; [+2]
       44 LOADB                            R3 0 +1
       45 LOADB                            R3 1
       46 FASTCALL2K                       ASSERT R3 K13 ; [+4]
       48 LOADK                            R4 K13 ["Source should not be nil"]
       49 GETIMPORT                        R2 K15 [assert]
       51 CALL                             R2 2 0
       52 NAMECALL                         R2 R1 K16 ["GetDescendants"]
       54 CALL                             R2 1 3
       55 FORGPREP                         R2
       56 LOADK                            R9 K17 ["StyleSheet"]
       57 NAMECALL                         R7 R6 K18 ["IsA"]
       59 CALL                             R7 2 1
       60 JUMPIFNOT                        R7 ; [+16]
       61 LOADK                            R9 K0 ["StyleCategory"]
       62 NAMECALL                         R7 R6 K1 ["GetAttribute"]
       64 CALL                             R7 2 1
       65 JUMPIFNOT                        R7 ; [+11]
       66 GETUPVAL                         R8 2
       67 MOVE                             R9 R7
       68 LOADK                            R10 K6 ["Themes"]
       69 CALL                             R8 2 1
       70 JUMPIFNOT                        R8 ; [+6]
       71 GETUPVAL                         R8 3
       72 GETTABLEKS                       R8 R8 K11 ["removeDerive"]
       74 MOVE                             R9 R6
       75 GETUPVAL                         R10 0
       76 CALL                             R8 2 0
       77 FORGLOOP                         R2 2 ; [-22]
       79 GETUPVAL                         R1 0
       80 LOADK                            R3 K0 ["StyleCategory"]
       81 LOADNIL                          R4
       82 NAMECALL                         R1 R1 K19 ["SetAttribute"]
       84 CALL                             R1 3 0
       85 GETIMPORT                        R1 K21 [Enum.FinishRecordingOperation.Commit]
       87 RETURN                           R1 1

PROTO_2:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K1 ["Window"]
        5 GETTABLEKS                       R3 R3 K2 ["Source"]
        7 GETTABLEKS                       R4 R1 K3 ["recordChange"]
        9 DUPTABLE                         R5 K9 [{["Name"] = "StyleEditor/ClearStyleSheetCategory", ["DisplayName"] = "StyleEditor - Clear StyleSheet Category", ["DoChange"]}]
       10 NEWCLOSURE                       R6 P0
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          VAL R3
       16 SETTABLEKS                       R6 R5 K8 ["DoChange"]
       18 CALL                             R4 1 0
       19 RETURN                           R0 0

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
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Dash"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K7 ["startsWith"]
       20 GETTABLEKS                       R3 R1 K8 ["filter"]
       22 GETIMPORT                        R4 K4 [require]
       24 GETTABLEKS                       R5 R0 K9 ["Src"]
       26 GETTABLEKS                       R5 R5 K10 ["Util"]
       28 GETTABLEKS                       R5 R5 K11 ["DesignHelpers"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K4 [require]
       33 GETTABLEKS                       R6 R0 K9 ["Src"]
       35 GETTABLEKS                       R6 R6 K12 ["Reducers"]
       37 GETTABLEKS                       R6 R6 K13 ["RootReducer"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K4 [require]
       42 GETTABLEKS                       R7 R0 K9 ["Src"]
       44 GETTABLEKS                       R7 R7 K14 ["Thunks"]
       46 GETTABLEKS                       R7 R7 K15 ["Types"]
       48 CALL                             R6 1 1
       49 DUPCLOSURE                       R7 K16 [PROTO_3]
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R4
       53 RETURN                           R7 1
