PROTO_0:
        0 DUPTABLE                         R1 K3 [{"id", "plugin", "connections"}]
        1 GETUPVAL                         R2 0
        2 NAMECALL                         R2 R2 K4 ["GenerateGUID"]
        4 CALL                             R2 1 1
        5 SETTABLEKS                       R2 R1 K0 ["id"]
        7 SETTABLEKS                       R0 R1 K1 ["plugin"]
        9 NEWTABLE                         R2 0 0
       11 SETTABLEKS                       R2 R1 K2 ["connections"]
       13 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 DUPTABLE                         R4 K1 [{"fromBridgeId"}]
        3 GETTABLEKS                       R5 R0 K2 ["id"]
        5 SETTABLEKS                       R5 R4 K0 ["fromBridgeId"]
        7 CALL                             R2 2 1
        8 GETTABLEKS                       R3 R0 K3 ["plugin"]
       10 LOADK                            R5 K4 ["DeveloperTools"]
       11 MOVE                             R6 R2
       12 NAMECALL                         R3 R3 K5 ["Invoke"]
       14 CALL                             R3 3 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["fromBridgeId"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["id"]
        5 JUMPIFEQ                         R1 R2 ; [+4]
        7 GETUPVAL                         R1 1
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 GETTABLEKS                       R3 R0 K0 ["plugin"]
        5 LOADK                            R5 K1 ["DeveloperTools"]
        6 MOVE                             R6 R2
        7 NAMECALL                         R3 R3 K2 ["OnInvoke"]
        9 CALL                             R3 3 1
       10 GETTABLEKS                       R5 R0 K3 ["connections"]
       12 FASTCALL2                        TABLE_INSERT R5 R3 ; [+3]
       14 MOVE                             R6 R3
       15 GETUPVAL                         R4 0
       16 CALL                             R4 2 0
       17 RETURN                           R0 0

PROTO_4:
        0 NAMECALL                         R1 R0 K0 ["Disconnect"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["connections"]
        3 DUPCLOSURE                       R3 K1 [PROTO_4]
        4 CALL                             R1 2 0
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
       20 GETTABLEKS                       R4 R3 K10 ["class"]
       22 GETTABLEKS                       R5 R3 K11 ["join"]
       24 GETTABLEKS                       R6 R3 K12 ["forEach"]
       26 GETIMPORT                        R7 K15 [table.insert]
       28 MOVE                             R8 R4
       29 LOADK                            R9 K16 ["PluginEventBridge"]
       30 DUPCLOSURE                       R10 K17 [PROTO_0]
       31 CAPTURE                          VAL R0
       32 CALL                             R8 2 1
       33 DUPCLOSURE                       R9 K18 [PROTO_1]
       34 CAPTURE                          VAL R5
       35 SETTABLEKS                       R9 R8 K19 ["send"]
       37 DUPCLOSURE                       R9 K20 [PROTO_3]
       38 CAPTURE                          VAL R7
       39 SETTABLEKS                       R9 R8 K21 ["connect"]
       41 DUPCLOSURE                       R9 K22 [PROTO_5]
       42 CAPTURE                          VAL R6
       43 SETTABLEKS                       R9 R8 K23 ["destroy"]
       45 RETURN                           R8 1
