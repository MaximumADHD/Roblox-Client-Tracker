PROTO_0:
        0 NEWTABLE                         R1 1 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 NEWTABLE                         R1 0 0
       10 SETTABLEKS                       R1 R0 K2 ["_connections"]
       12 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R4 R0 K0 ["_connections"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOT                        R3 ; [+4]
        4 GETTABLEKS                       R4 R0 K0 ["_connections"]
        6 GETTABLE                         R3 R4 R1
        7 CALL                             R3 0 0
        8 GETTABLEKS                       R3 R0 K0 ["_connections"]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R2
       12 SETTABLE                         R4 R3 R1
       13 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R4 R0 K0 ["_connections"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOT                        R3 ; [+4]
        4 GETTABLEKS                       R4 R0 K0 ["_connections"]
        6 GETTABLE                         R3 R4 R1
        7 CALL                             R3 0 0
        8 GETTABLEKS                       R3 R0 K0 ["_connections"]
       10 SETTABLE                         R2 R3 R1
       11 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["_connections"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOT                        R2 ; [+8]
        4 GETTABLEKS                       R3 R0 K0 ["_connections"]
        6 GETTABLE                         R2 R3 R1
        7 CALL                             R2 0 0
        8 GETTABLEKS                       R2 R0 K0 ["_connections"]
       10 LOADNIL                          R3
       11 SETTABLE                         R3 R2 R1
       12 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K1 [pairs]
        2 GETTABLEKS                       R2 R0 K2 ["_connections"]
        4 CALL                             R1 1 3
        5 FORGPREP_NEXT                    R1
        6 MOVE                             R6 R5
        7 CALL                             R6 0 0
        8 FORGLOOP                         R1 2 ; [-3]
       10 NEWTABLE                         R1 0 0
       12 SETTABLEKS                       R1 R0 K2 ["_connections"]
       14 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_2]
       10 SETTABLEKS                       R1 R0 K4 ["trackConnection"]
       12 DUPCLOSURE                       R1 K5 [PROTO_3]
       13 SETTABLEKS                       R1 R0 K6 ["trackBoundFunction"]
       15 DUPCLOSURE                       R1 K7 [PROTO_4]
       16 SETTABLEKS                       R1 R0 K8 ["disconnect"]
       18 DUPCLOSURE                       R1 K9 [PROTO_5]
       19 SETTABLEKS                       R1 R0 K10 ["disconnectAll"]
       21 RETURN                           R0 1
