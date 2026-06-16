PROTO_0:
        0 DUPTABLE                         R3 K5 [{"routerId", "sourceName", "plugin", "bridges", "outboundBridgeIds"}]
        1 GETUPVAL                         R4 0
        2 NAMECALL                         R4 R4 K6 ["GenerateGUID"]
        4 CALL                             R4 1 1
        5 SETTABLEKS                       R4 R3 K0 ["routerId"]
        7 SETTABLEKS                       R0 R3 K1 ["sourceName"]
        9 SETTABLEKS                       R1 R3 K2 ["plugin"]
       11 SETTABLEKS                       R2 R3 K3 ["bridges"]
       13 NEWTABLE                         R4 0 0
       15 SETTABLEKS                       R4 R3 K4 ["outboundBridgeIds"]
       17 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R1 R0 K0 ["send"]
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["fromRouter"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["outboundBridgeIds"]
        7 GETTABLEKS                       R2 R0 K2 ["fromBridgeId"]
        9 LOADB                            R3 1
       10 SETTABLE                         R3 R1 R2
       11 GETUPVAL                         R1 1
       12 MOVE                             R2 R0
       13 DUPTABLE                         R3 K4 [{"sourceName"}]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K3 ["sourceName"]
       17 SETTABLEKS                       R4 R3 K3 ["sourceName"]
       19 CALL                             R1 2 1
       20 GETUPVAL                         R2 2
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K5 ["bridges"]
       24 NEWCLOSURE                       R4 P0
       25 CAPTURE                          VAL R1
       26 CALL                             R2 2 0
       27 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 DUPTABLE                         R3 K1 [{"fromRouter"}]
        3 LOADB                            R4 1
        4 SETTABLEKS                       R4 R3 K0 ["fromRouter"]
        6 CALL                             R1 2 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["plugin"]
       10 LOADK                            R4 K3 ["DeveloperTools"]
       11 MOVE                             R5 R1
       12 NAMECALL                         R2 R2 K4 ["Invoke"]
       14 CALL                             R2 3 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R1 R0 K0 ["connect"]
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["plugin"]
        2 LOADK                            R3 K1 ["DeveloperTools"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 NAMECALL                         R1 R1 K2 ["OnInvoke"]
        9 CALL                             R1 3 1
       10 SETTABLEKS                       R1 R0 K3 ["connection"]
       12 NEWCLOSURE                       R1 P1
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          VAL R0
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R3 R0 K4 ["bridges"]
       18 NEWCLOSURE                       R4 P2
       19 CAPTURE                          VAL R1
       20 CALL                             R2 2 0
       21 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["connection"]
        2 NAMECALL                         R1 R1 K1 ["Disconnect"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R2 R1 K6 ["Parent"]
       15 GETIMPORT                        R3 K8 [require]
       17 GETTABLEKS                       R4 R2 K9 ["Dash"]
       19 CALL                             R3 1 1
       20 GETTABLEKS                       R4 R3 K10 ["join"]
       22 GETTABLEKS                       R5 R3 K11 ["class"]
       24 GETTABLEKS                       R6 R3 K12 ["forEach"]
       26 MOVE                             R7 R5
       27 LOADK                            R8 K13 ["PluginEventRouter"]
       28 DUPCLOSURE                       R9 K14 [PROTO_0]
       29 CAPTURE                          VAL R0
       30 CALL                             R7 2 1
       31 DUPCLOSURE                       R8 K15 [PROTO_5]
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R6
       34 SETTABLEKS                       R8 R7 K16 ["_init"]
       36 DUPCLOSURE                       R8 K17 [PROTO_6]
       37 SETTABLEKS                       R8 R7 K18 ["destroy"]
       39 RETURN                           R7 1
