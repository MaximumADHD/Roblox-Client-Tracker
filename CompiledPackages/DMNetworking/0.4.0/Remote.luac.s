PROTO_0:
        0 PREPVARARGS                      2
        1 GETTABLEKS                       R2 R0 K0 ["_net"]
        3 GETTABLEKS                       R4 R0 K1 ["_key"]
        5 MOVE                             R5 R1
        6 GETVARARGS                       R6 -1
        7 NAMECALL                         R2 R2 K2 ["Fire"]
        9 CALL                             R2 -1 -1
       10 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["_net"]
        2 GETTABLEKS                       R4 R0 K1 ["_key"]
        4 MOVE                             R5 R1
        5 NAMECALL                         R2 R2 K2 ["OnFire"]
        7 CALL                             R2 3 1
        8 DUPTABLE                         R3 K4 [{"Disconnect"}]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R2
       11 SETTABLEKS                       R4 R3 K3 ["Disconnect"]
       13 RETURN                           R3 1

PROTO_3:
        0 DUPTABLE                         R2 K4 [{"_net", "_key", "Fire", "Connect"}]
        1 SETTABLEKS                       R0 R2 K0 ["_net"]
        3 SETTABLEKS                       R1 R2 K1 ["_key"]
        5 DUPCLOSURE                       R3 K5 [PROTO_0]
        6 SETTABLEKS                       R3 R2 K2 ["Fire"]
        8 DUPCLOSURE                       R3 K6 [PROTO_2]
        9 SETTABLEKS                       R3 R2 K3 ["Connect"]
       11 RETURN                           R2 1

PROTO_4:
        0 PREPVARARGS                      2
        1 GETTABLEKS                       R2 R0 K0 ["_net"]
        3 GETTABLEKS                       R4 R0 K1 ["_key"]
        5 MOVE                             R5 R1
        6 GETVARARGS                       R6 -1
        7 NAMECALL                         R2 R2 K2 ["InvokeAsync"]
        9 CALL                             R2 -1 -1
       10 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["_net"]
        2 GETTABLEKS                       R4 R0 K1 ["_key"]
        4 MOVE                             R5 R1
        5 NAMECALL                         R2 R2 K2 ["OnInvoke"]
        7 CALL                             R2 3 1
        8 DUPTABLE                         R3 K4 [{"Disconnect"}]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R2
       11 SETTABLEKS                       R4 R3 K3 ["Disconnect"]
       13 RETURN                           R3 1

PROTO_7:
        0 DUPTABLE                         R2 K4 [{"_net", "_key", "InvokeAsync", "Connect"}]
        1 SETTABLEKS                       R0 R2 K0 ["_net"]
        3 SETTABLEKS                       R1 R2 K1 ["_key"]
        5 DUPCLOSURE                       R3 K5 [PROTO_4]
        6 SETTABLEKS                       R3 R2 K2 ["InvokeAsync"]
        8 DUPCLOSURE                       R3 K6 [PROTO_6]
        9 SETTABLEKS                       R3 R2 K3 ["Connect"]
       11 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DMNetworking"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 NEWTABLE                         R2 2 0
       14 DUPCLOSURE                       R3 K7 [PROTO_3]
       15 SETTABLEKS                       R3 R2 K8 ["event"]
       17 DUPCLOSURE                       R3 K9 [PROTO_7]
       18 SETTABLEKS                       R3 R2 K10 ["invoke"]
       20 RETURN                           R2 1
