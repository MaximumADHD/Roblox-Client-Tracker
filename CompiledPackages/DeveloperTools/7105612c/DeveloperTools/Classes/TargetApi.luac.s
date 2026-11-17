PROTO_0:
        0 DUPTABLE                         R3 K3 [{"debugInterface", "bridgeId", "targetId"}]
        1 SETTABLEKS                       R0 R3 K0 ["debugInterface"]
        3 SETTABLEKS                       R1 R3 K1 ["bridgeId"]
        5 SETTABLEKS                       R2 R3 K2 ["targetId"]
        7 RETURN                           R3 1

PROTO_1:
        0 DUPTABLE                         R3 K1 [{"eventName"}]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K2 ["CloseTarget"]
        4 SETTABLEKS                       R4 R3 K0 ["eventName"]
        6 NAMECALL                         R1 R0 K3 ["_send"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 DUPTABLE                         R4 K2 [{"toBridgeId", "toTargetId"}]
        3 GETTABLEKS                       R5 R0 K3 ["bridgeId"]
        5 SETTABLEKS                       R5 R4 K0 ["toBridgeId"]
        7 GETTABLEKS                       R5 R0 K4 ["targetId"]
        9 SETTABLEKS                       R5 R4 K1 ["toTargetId"]
       11 CALL                             R2 2 1
       12 GETTABLEKS                       R3 R0 K5 ["debugInterface"]
       14 MOVE                             R5 R2
       15 NAMECALL                         R3 R3 K6 ["_send"]
       17 CALL                             R3 2 0
       18 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 DUPTABLE                         R4 K1 [{"fromTargetId"}]
        3 GETTABLEKS                       R5 R0 K2 ["targetId"]
        5 SETTABLEKS                       R5 R4 K0 ["fromTargetId"]
        7 CALL                             R2 2 1
        8 GETTABLEKS                       R3 R0 K3 ["debugInterface"]
       10 MOVE                             R5 R2
       11 NAMECALL                         R3 R3 K4 ["_connect"]
       13 CALL                             R3 2 0
       14 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R3 K1 [{"eventName"}]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K2 ["AttachTarget"]
        4 SETTABLEKS                       R4 R3 K0 ["eventName"]
        6 NAMECALL                         R1 R0 K3 ["_send"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["EventName"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R4 R1 K6 ["Dash"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K7 ["join"]
       21 GETTABLEKS                       R5 R3 K8 ["class"]
       23 MOVE                             R6 R5
       24 LOADK                            R7 K9 ["TargetApi"]
       25 DUPCLOSURE                       R8 K10 [PROTO_0]
       26 CALL                             R6 2 1
       27 DUPCLOSURE                       R7 K11 [PROTO_1]
       28 CAPTURE                          VAL R2
       29 SETTABLEKS                       R7 R6 K12 ["close"]
       31 DUPCLOSURE                       R7 K13 [PROTO_2]
       32 CAPTURE                          VAL R4
       33 SETTABLEKS                       R7 R6 K14 ["_send"]
       35 DUPCLOSURE                       R7 K15 [PROTO_3]
       36 CAPTURE                          VAL R4
       37 SETTABLEKS                       R7 R6 K16 ["_connect"]
       39 DUPCLOSURE                       R7 K17 [PROTO_4]
       40 CAPTURE                          VAL R2
       41 SETTABLEKS                       R7 R6 K18 ["attach"]
       43 RETURN                           R6 1
