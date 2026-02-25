PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Name"]
        4 GETIMPORT                        R0 K4 [Enum.FinishRecordingOperation.Commit]
        6 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R6 2
        4 GETTABLEKS                       R5 R6 K0 ["path"]
        6 LOADN                            R6 1
        7 NAMECALL                         R1 R1 K1 ["updateCell"]
        9 CALL                             R1 5 1
       10 MOVE                             R0 R1
       11 GETUPVAL                         R1 3
       12 GETTABLEKS                       R2 R0 K2 ["Items"]
       14 CALL                             R1 1 1
       15 SETTABLEKS                       R1 R0 K2 ["Items"]
       17 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["tableItems"]
        3 GETTABLEKS                       R4 R0 K1 ["path"]
        5 NAMECALL                         R1 R1 K2 ["getChild"]
        7 CALL                             R1 3 1
        8 GETTABLEKS                       R2 R1 K3 ["Instance"]
       10 JUMPIF                           R2 ; [+5]
       11 GETIMPORT                        R3 K5 [warn]
       13 LOADK                            R4 K6 ["Edited row does not have a valid Instance associated"]
       14 CALL                             R3 1 0
       15 RETURN                           R0 0
       16 JUMPIFNOT                        R2 ; [+55]
       17 GETTABLEKS                       R3 R0 K7 ["newValue"]
       19 GETTABLEKS                       R4 R2 K8 ["Name"]
       21 JUMPIFEQ                         R4 R3 ; [+29]
       23 LOADK                            R6 K9 ["StyleRule"]
       24 NAMECALL                         R4 R2 K10 ["IsA"]
       26 CALL                             R4 2 1
       27 JUMPIFNOT                        R4 ; [+8]
       28 GETTABLEKS                       R4 R0 K11 ["dispatch"]
       30 GETUPVAL                         R5 1
       31 MOVE                             R6 R2
       32 MOVE                             R7 R3
       33 CALL                             R5 2 -1
       34 CALL                             R4 -1 0
       35 RETURN                           R0 0
       36 GETUPVAL                         R4 2
       37 DUPTABLE                         R5 K14 [{"Name", "DisplayName", "DoChange"}]
       38 LOADK                            R6 K15 ["StyleEditor.EditInstanceName"]
       39 SETTABLEKS                       R6 R5 K8 ["Name"]
       41 LOADK                            R6 K16 ["Style Editor - Edit Instance Name"]
       42 SETTABLEKS                       R6 R5 K12 ["DisplayName"]
       44 NEWCLOSURE                       R6 P0
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R3
       47 SETTABLEKS                       R6 R5 K13 ["DoChange"]
       49 CALL                             R4 1 0
       50 RETURN                           R0 0
       51 DUPTABLE                         R4 K18 [{"Schema"}]
       52 GETUPVAL                         R5 3
       53 GETTABLEKS                       R7 R1 K8 ["Name"]
       55 GETTABLEKS                       R6 R7 K17 ["Schema"]
       57 DUPTABLE                         R7 K20 [{"Editing"}]
       58 LOADB                            R8 0
       59 SETTABLEKS                       R8 R7 K19 ["Editing"]
       61 CALL                             R5 2 1
       62 SETTABLEKS                       R5 R4 K17 ["Schema"]
       64 GETTABLEKS                       R5 R0 K21 ["setState"]
       66 NEWCLOSURE                       R6 P1
       67 CAPTURE                          UPVAL U0
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R0
       70 CAPTURE                          UPVAL U4
       71 CALL                             R5 1 0
       72 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ChangeHistoryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R5 K5 [script]
        9 GETTABLEKS                       R4 R5 K6 ["Parent"]
       11 GETTABLEKS                       R3 R4 K6 ["Parent"]
       13 GETTABLEKS                       R2 R3 K6 ["Parent"]
       15 GETTABLEKS                       R1 R2 K6 ["Parent"]
       17 GETTABLEKS                       R3 R1 K7 ["Src"]
       19 GETTABLEKS                       R2 R3 K8 ["Thunks"]
       21 GETIMPORT                        R3 K10 [require]
       23 GETTABLEKS                       R5 R2 K11 ["Change"]
       25 GETTABLEKS                       R4 R5 K12 ["SetStyleRuleSelector"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K10 [require]
       30 GETTABLEKS                       R7 R1 K7 ["Src"]
       32 GETTABLEKS                       R6 R7 K13 ["Util"]
       34 GETTABLEKS                       R5 R6 K14 ["StyleSchema"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K10 [require]
       39 GETTABLEKS                       R8 R1 K7 ["Src"]
       41 GETTABLEKS                       R7 R8 K13 ["Util"]
       43 GETTABLEKS                       R6 R7 K15 ["recordChange"]
       45 CALL                             R5 1 1
       46 MOVE                             R6 R0
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K10 [require]
       50 GETTABLEKS                       R8 R1 K16 ["Packages"]
       52 GETTABLEKS                       R7 R8 K17 ["Dash"]
       54 CALL                             R6 1 1
       55 GETTABLEKS                       R7 R6 K18 ["copy"]
       57 GETTABLEKS                       R8 R6 K19 ["join"]
       59 GETIMPORT                        R9 K10 [require]
       61 GETIMPORT                        R12 K5 [script]
       63 GETTABLEKS                       R11 R12 K6 ["Parent"]
       65 GETTABLEKS                       R10 R11 K20 ["Tree"]
       67 CALL                             R9 1 1
       68 GETTABLEKS                       R10 R9 K21 ["EditTree"]
       70 DUPCLOSURE                       R11 K22 [PROTO_2]
       71 CAPTURE                          VAL R10
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R7
       76 RETURN                           R11 1
