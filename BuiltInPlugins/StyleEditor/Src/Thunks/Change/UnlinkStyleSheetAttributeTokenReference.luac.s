PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetStyleSheetInfo"]
        4 CALL                             R0 2 1
        5 GETTABLEKS                       R2 R0 K1 ["Variables"]
        7 GETUPVAL                         R3 2
        8 GETTABLE                         R1 R2 R3
        9 JUMPIFEQKNIL                     R1 ; [+3]
       11 JUMPIFNOTEQKS                    R1 K2 ["$"] ; [+2]
       13 LOADK                            R1 K3 [""]
       14 GETUPVAL                         R2 1
       15 GETUPVAL                         R4 2
       16 MOVE                             R5 R1
       17 NAMECALL                         R2 R2 K4 ["SetAttribute"]
       19 CALL                             R2 3 0
       20 GETIMPORT                        R2 K8 [Enum.FinishRecordingOperation.Commit]
       22 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["recordChange"]
        2 DUPTABLE                         R3 K6 [{["Name"] = "StyleEditor/UnlinkStyleSheetAttributeTokenReference", ["DisplayName"] = "StyleEditor - Unlink StyleSheet Token", ["DoChange"]}]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 SETTABLEKS                       R4 R3 K5 ["DoChange"]
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 RETURN                           R2 1

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
       21 GETTABLEKS                       R3 R3 K10 ["Reducers"]
       23 GETTABLEKS                       R3 R3 K11 ["RootReducer"]
       25 CALL                             R2 1 1
       26 GETIMPORT                        R3 K8 [require]
       28 GETTABLEKS                       R4 R1 K9 ["Src"]
       30 GETTABLEKS                       R4 R4 K12 ["Thunks"]
       32 GETTABLEKS                       R4 R4 K13 ["Types"]
       34 CALL                             R3 1 1
       35 GETIMPORT                        R4 K8 [require]
       37 GETTABLEKS                       R5 R1 K9 ["Src"]
       39 GETTABLEKS                       R5 R5 K13 ["Types"]
       41 CALL                             R4 1 1
       42 DUPCLOSURE                       R5 K14 [PROTO_2]
       43 CAPTURE                          VAL R0
       44 RETURN                           R5 1
