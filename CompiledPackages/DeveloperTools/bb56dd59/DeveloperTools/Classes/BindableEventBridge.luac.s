PROTO_0:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["GenerateGUID"]
        3 CALL                             R2 1 1
        4 DUPTABLE                         R3 K4 [{"id", "connections", "noCreate"}]
        5 SETTABLEKS                       R2 R3 K1 ["id"]
        7 NEWTABLE                         R4 0 0
        9 SETTABLEKS                       R4 R3 K2 ["connections"]
       11 SETTABLEKS                       R1 R3 K3 ["noCreate"]
       13 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["noCreate"]
        2 JUMPIFNOT                        R2 ; [+2]
        3 LOADNIL                          R2
        4 RETURN                           R2 1
        5 GETIMPORT                        R2 K3 [Instance.new]
        7 LOADK                            R3 K4 ["BindableEvent"]
        8 CALL                             R2 1 1
        9 LOADK                            R3 K5 ["DeveloperTools"]
       10 SETTABLEKS                       R3 R2 K6 ["Name"]
       12 SETTABLEKS                       R1 R2 K7 ["Parent"]
       14 RETURN                           R2 1

PROTO_2:
        0 LOADK                            R4 K0 ["DeveloperTools"]
        1 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+4]
        5 MOVE                             R4 R1
        6 NAMECALL                         R2 R0 K2 ["_createEvent"]
        8 CALL                             R2 2 1
        9 SETTABLEKS                       R2 R0 K3 ["event"]
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 DUPTABLE                         R4 K1 [{"fromBridgeId"}]
        3 GETTABLEKS                       R5 R0 K2 ["id"]
        5 SETTABLEKS                       R5 R4 K0 ["fromBridgeId"]
        7 CALL                             R2 2 1
        8 GETTABLEKS                       R3 R0 K3 ["event"]
       10 JUMPIFNOT                        R3 ; [+6]
       11 GETTABLEKS                       R3 R0 K3 ["event"]
       13 MOVE                             R5 R2
       14 NAMECALL                         R3 R3 K4 ["Fire"]
       16 CALL                             R3 2 0
       17 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["fromBridgeId"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["id"]
        5 JUMPIFEQ                         R1 R2 ; [+4]
        7 GETUPVAL                         R1 1
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 GETTABLEKS                       R3 R0 K0 ["event"]
        5 JUMPIFNOT                        R3 ; [+16]
        6 GETTABLEKS                       R4 R0 K0 ["event"]
        8 GETTABLEKS                       R3 R4 K1 ["Event"]
       10 MOVE                             R5 R2
       11 NAMECALL                         R3 R3 K2 ["Connect"]
       13 CALL                             R3 2 1
       14 GETTABLEKS                       R5 R0 K3 ["connections"]
       16 FASTCALL2                        TABLE_INSERT R5 R3 ; [+3]
       18 MOVE                             R6 R3
       19 GETUPVAL                         R4 0
       20 CALL                             R4 2 0
       21 RETURN                           R3 1
       22 LOADNIL                          R3
       23 RETURN                           R3 1

PROTO_6:
        0 NAMECALL                         R1 R0 K0 ["Disconnect"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["connections"]
        3 DUPCLOSURE                       R3 K1 [PROTO_6]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R3 K5 [script]
        9 GETTABLEKS                       R2 R3 K6 ["Parent"]
       11 GETTABLEKS                       R1 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R1 K6 ["Parent"]
       15 GETIMPORT                        R3 K8 [require]
       17 GETTABLEKS                       R4 R2 K9 ["Dash"]
       19 CALL                             R3 1 1
       20 GETTABLEKS                       R4 R3 K10 ["join"]
       22 GETTABLEKS                       R5 R3 K11 ["class"]
       24 GETTABLEKS                       R6 R3 K12 ["forEach"]
       26 GETIMPORT                        R7 K15 [table.insert]
       28 MOVE                             R8 R5
       29 LOADK                            R9 K16 ["BindableEventBridge"]
       30 DUPCLOSURE                       R10 K17 [PROTO_0]
       31 CAPTURE                          VAL R0
       32 CALL                             R8 2 1
       33 DUPCLOSURE                       R9 K18 [PROTO_1]
       34 SETTABLEKS                       R9 R8 K19 ["_createEvent"]
       36 DUPCLOSURE                       R9 K20 [PROTO_2]
       37 SETTABLEKS                       R9 R8 K21 ["_init"]
       39 DUPCLOSURE                       R9 K22 [PROTO_3]
       40 CAPTURE                          VAL R4
       41 SETTABLEKS                       R9 R8 K23 ["send"]
       43 DUPCLOSURE                       R9 K24 [PROTO_5]
       44 CAPTURE                          VAL R7
       45 SETTABLEKS                       R9 R8 K25 ["connect"]
       47 DUPCLOSURE                       R9 K26 [PROTO_7]
       48 CAPTURE                          VAL R6
       49 SETTABLEKS                       R9 R8 K27 ["destroy"]
       51 RETURN                           R8 1
