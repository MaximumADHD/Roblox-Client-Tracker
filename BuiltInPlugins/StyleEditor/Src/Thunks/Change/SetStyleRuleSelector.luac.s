PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Selector"]
        4 GETUPVAL                         R0 0
        5 GETUPVAL                         R1 1
        6 SETTABLEKS                       R1 R0 K1 ["Name"]
        8 GETIMPORT                        R0 K5 [Enum.FinishRecordingOperation.Commit]
       10 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+5]
        2 GETUPVAL                         R3 0
        3 LOADK                            R5 K0 ["StyleRule"]
        4 NAMECALL                         R3 R3 K1 ["IsA"]
        6 CALL                             R3 2 1
        7 FASTCALL2K                       ASSERT R3 K2 ; [+4]
        9 LOADK                            R4 K2 ["expecting valid StyleRule"]
       10 GETIMPORT                        R2 K4 [assert]
       12 CALL                             R2 2 0
       13 GETTABLEKS                       R2 R1 K5 ["recordChange"]
       15 DUPTABLE                         R3 K9 [{"Name", "DisplayName", "DoChange"}]
       16 LOADK                            R4 K10 ["StyleEditor/SetStyleRuleSelector"]
       17 SETTABLEKS                       R4 R3 K6 ["Name"]
       19 LOADK                            R4 K11 ["StyleEditor - Set StyleRule Selector"]
       20 SETTABLEKS                       R4 R3 K7 ["DisplayName"]
       22 NEWCLOSURE                       R4 P0
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          UPVAL U1
       25 SETTABLEKS                       R4 R3 K8 ["DoChange"]
       27 CALL                             R2 1 0
       28 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R4 R0 K5 ["Src"]
       15 GETTABLEKS                       R3 R4 K6 ["Reducers"]
       17 GETTABLEKS                       R2 R3 K7 ["RootReducer"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R5 R0 K5 ["Src"]
       24 GETTABLEKS                       R4 R5 K8 ["Thunks"]
       26 GETTABLEKS                       R3 R4 K9 ["Types"]
       28 CALL                             R2 1 1
       29 DUPCLOSURE                       R3 K10 [PROTO_2]
       30 RETURN                           R3 1
