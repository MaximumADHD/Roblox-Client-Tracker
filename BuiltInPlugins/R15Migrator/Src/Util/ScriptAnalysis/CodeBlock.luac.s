PROTO_0:
        0 DUPTABLE                         R3 K6 [{"StartIndex", "EndIndex", "Issues", "Children", "Lines", "Variables"}]
        1 SETTABLEKS                       R0 R3 K0 ["StartIndex"]
        3 SETTABLEKS                       R1 R3 K1 ["EndIndex"]
        5 NEWTABLE                         R4 0 0
        7 SETTABLEKS                       R4 R3 K2 ["Issues"]
        9 NEWTABLE                         R4 0 0
       11 SETTABLEKS                       R4 R3 K3 ["Children"]
       13 NEWTABLE                         R4 0 0
       15 SETTABLEKS                       R4 R3 K4 ["Lines"]
       17 NEWTABLE                         R4 0 0
       19 SETTABLEKS                       R4 R3 K5 ["Variables"]
       21 GETUPVAL                         R4 0
       22 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       24 GETIMPORT                        R2 K8 [setmetatable]
       26 CALL                             R2 2 1
       27 RETURN                           R2 1

PROTO_1:
        0 SETTABLEKS                       R1 R0 K0 ["Parent"]
        2 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["Children"]
        2 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
        4 MOVE                             R4 R1
        5 GETIMPORT                        R2 K3 [table.insert]
        7 CALL                             R2 2 0
        8 SETTABLEKS                       R0 R1 K4 ["Parent"]
       10 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R5 R0 K0 ["Variables"]
        2 DUPTABLE                         R6 K4 [{"Value", "LineNo", "StartIndex"}]
        3 SETTABLEKS                       R2 R6 K1 ["Value"]
        5 SETTABLEKS                       R3 R6 K2 ["LineNo"]
        7 SETTABLEKS                       R4 R6 K3 ["StartIndex"]
        9 SETTABLE                         R6 R5 R1
       10 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R4 R0 K0 ["Variables"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOT                        R3 ; [+5]
        4 GETTABLEKS                       R4 R0 K0 ["Variables"]
        6 GETTABLE                         R3 R4 R1
        7 SETTABLEKS                       R2 R3 K1 ["Value"]
        9 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["Variables"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOT                        R2 ; [+17]
        4 GETTABLEKS                       R4 R0 K0 ["Variables"]
        6 GETTABLE                         R3 R4 R1
        7 GETTABLEKS                       R2 R3 K1 ["Value"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K2 ["IsHumanoidName"]
       12 MOVE                             R4 R1
       13 CALL                             R3 1 1
       14 JUMPIF                           R3 ; [+5]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K2 ["IsHumanoidName"]
       18 MOVE                             R4 R2
       19 CALL                             R3 1 1
       20 RETURN                           R3 1
       21 LOADB                            R2 0
       22 RETURN                           R2 1

PROTO_6:
        0 PREPVARARGS                      1
        1 GETTABLEKS                       R2 R0 K0 ["Issues"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K1 ["new"]
        6 GETVARARGS                       R4 -1
        7 CALL                             R3 -1 -1
        8 FASTCALL                         TABLE_INSERT ; [+2]
        9 GETIMPORT                        R1 K4 [table.insert]
       11 CALL                             R1 -1 0
       12 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Issue"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K4 [require]
       12 GETTABLEKS                       R3 R0 K6 ["R6Info"]
       14 CALL                             R2 1 1
       15 NEWTABLE                         R3 8 0
       17 SETTABLEKS                       R3 R3 K7 ["__index"]
       19 DUPCLOSURE                       R4 K8 [PROTO_0]
       20 CAPTURE                          VAL R3
       21 SETTABLEKS                       R4 R3 K9 ["new"]
       23 DUPCLOSURE                       R4 K10 [PROTO_1]
       24 DUPCLOSURE                       R5 K11 [PROTO_2]
       25 SETTABLEKS                       R5 R3 K12 ["AddChild"]
       27 DUPCLOSURE                       R5 K13 [PROTO_3]
       28 SETTABLEKS                       R5 R3 K14 ["AddVariable"]
       30 DUPCLOSURE                       R5 K15 [PROTO_4]
       31 SETTABLEKS                       R5 R3 K16 ["SetVariableValue"]
       33 DUPCLOSURE                       R5 K17 [PROTO_5]
       34 CAPTURE                          VAL R2
       35 SETTABLEKS                       R5 R3 K18 ["IsHumanoidVariable"]
       37 DUPCLOSURE                       R5 K19 [PROTO_6]
       38 CAPTURE                          VAL R1
       39 SETTABLEKS                       R5 R3 K20 ["AddIssue"]
       41 RETURN                           R3 1
