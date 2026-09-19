PROTO_0:
        0 DUPTABLE                         R3 K4 [{"targetId", "toBridgeId", "debugInterface", "listeners"}]
        1 SETTABLEKS                       R1 R3 K0 ["targetId"]
        3 SETTABLEKS                       R2 R3 K1 ["toBridgeId"]
        5 SETTABLEKS                       R0 R3 K2 ["debugInterface"]
        7 NEWTABLE                         R4 0 0
        9 SETTABLEKS                       R4 R3 K3 ["listeners"]
       11 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["debugInterface"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["targetId"]
        6 NAMECALL                         R1 R1 K2 ["removeWorker"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R3 K2 [{"eventName", "onEvent"}]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K3 ["CloseTarget"]
        4 SETTABLEKS                       R4 R3 K0 ["eventName"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R4 R3 K1 ["onEvent"]
       10 NAMECALL                         R1 R0 K4 ["connect"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 DUPTABLE                         R4 K1 [{"targetId"}]
        3 GETTABLEKS                       R5 R0 K0 ["targetId"]
        5 SETTABLEKS                       R5 R4 K0 ["targetId"]
        7 CALL                             R2 2 1
        8 GETTABLEKS                       R3 R0 K2 ["debugInterface"]
       10 MOVE                             R5 R2
       11 NAMECALL                         R3 R3 K3 ["_connect"]
       13 CALL                             R3 2 0
       14 GETTABLEKS                       R4 R0 K4 ["listeners"]
       16 FASTCALL2                        TABLE_INSERT R4 R2 ; [+3]
       18 MOVE                             R5 R2
       19 GETUPVAL                         R3 1
       20 CALL                             R3 2 0
       21 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 DUPTABLE                         R4 K2 [{"fromTargetId", "toBridgeId"}]
        3 GETTABLEKS                       R5 R0 K3 ["targetId"]
        5 SETTABLEKS                       R5 R4 K0 ["fromTargetId"]
        7 GETTABLEKS                       R5 R0 K1 ["toBridgeId"]
        9 SETTABLEKS                       R5 R4 K1 ["toBridgeId"]
       11 CALL                             R2 2 1
       12 GETTABLEKS                       R3 R0 K4 ["debugInterface"]
       14 MOVE                             R5 R2
       15 NAMECALL                         R3 R3 K5 ["_send"]
       17 CALL                             R3 2 0
       18 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["debugInterface"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["_disconnect"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["listeners"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

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
       19 GETTABLEKS                       R4 R3 K7 ["class"]
       21 GETTABLEKS                       R5 R3 K8 ["forEach"]
       23 GETTABLEKS                       R6 R3 K9 ["join"]
       25 GETIMPORT                        R7 K12 [table.insert]
       27 MOVE                             R8 R4
       28 LOADK                            R9 K13 ["TargetWorker"]
       29 DUPCLOSURE                       R10 K14 [PROTO_0]
       30 CALL                             R8 2 1
       31 DUPCLOSURE                       R9 K15 [PROTO_2]
       32 CAPTURE                          VAL R2
       33 SETTABLEKS                       R9 R8 K16 ["connectEvents"]
       35 DUPCLOSURE                       R9 K17 [PROTO_3]
       36 CAPTURE                          VAL R6
       37 CAPTURE                          VAL R7
       38 SETTABLEKS                       R9 R8 K18 ["connect"]
       40 DUPCLOSURE                       R9 K19 [PROTO_4]
       41 CAPTURE                          VAL R6
       42 SETTABLEKS                       R9 R8 K20 ["send"]
       44 DUPCLOSURE                       R9 K21 [PROTO_6]
       45 CAPTURE                          VAL R5
       46 SETTABLEKS                       R9 R8 K22 ["destroy"]
       48 RETURN                           R8 1
