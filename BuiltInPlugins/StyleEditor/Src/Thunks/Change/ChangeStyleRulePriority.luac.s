PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["changeStyleRulePriority"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 GETIMPORT                        R0 K4 [Enum.FinishRecordingOperation.Commit]
        8 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["recordChange"]
        2 DUPTABLE                         R3 K4 [{"Name", "DisplayName", "DoChange"}]
        3 LOADK                            R4 K5 ["StyleEditor/IncreaseStyleRulePriority"]
        4 SETTABLEKS                       R4 R3 K1 ["Name"]
        6 LOADK                            R5 K6 ["StyleEditor - %* StyleRule Priority"]
        7 GETUPVAL                         R8 0
        8 JUMPIFNOT                        R8 ; [+2]
        9 LOADK                            R7 K7 ["Increase"]
       10 JUMP                             ; [+1]
       11 LOADK                            R7 K8 ["Decrease"]
       12 NAMECALL                         R5 R5 K9 ["format"]
       14 CALL                             R5 2 1
       15 MOVE                             R4 R5
       16 SETTABLEKS                       R4 R3 K2 ["DisplayName"]
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          UPVAL U0
       22 SETTABLEKS                       R4 R3 K3 ["DoChange"]
       24 CALL                             R2 1 0
       25 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 RETURN                           R2 1

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
       17 GETTABLEKS                       R2 R3 K7 ["StyleRuleHelpers"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R5 R0 K5 ["Src"]
       24 GETTABLEKS                       R4 R5 K8 ["Thunks"]
       26 GETTABLEKS                       R3 R4 K9 ["Types"]
       28 CALL                             R2 1 1
       29 DUPCLOSURE                       R3 K10 [PROTO_2]
       30 CAPTURE                          VAL R1
       31 RETURN                           R3 1
