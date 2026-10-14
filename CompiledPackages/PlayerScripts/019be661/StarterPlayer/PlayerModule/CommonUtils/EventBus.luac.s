PROTO_0:
        0 NEWTABLE                         R1 1 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 NEWTABLE                         R1 0 0
       10 SETTABLEKS                       R1 R0 K2 ["_events"]
       12 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["_events"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIF                           R2 ; [+9]
        4 GETIMPORT                        R2 K3 [Instance.new]
        6 LOADK                            R3 K4 ["BindableEvent"]
        7 CALL                             R2 1 1
        8 SETTABLEKS                       R1 R2 K5 ["Name"]
       10 GETTABLEKS                       R3 R0 K0 ["_events"]
       12 SETTABLE                         R2 R3 R1
       13 GETTABLEKS                       R3 R0 K0 ["_events"]
       15 GETTABLE                         R2 R3 R1
       16 RETURN                           R2 1

PROTO_2:
        0 PREPVARARGS                      2
        1 MOVE                             R4 R1
        2 NAMECALL                         R2 R0 K0 ["_getOrCreate"]
        4 CALL                             R2 2 1
        5 GETVARARGS                       R5 -1
        6 NAMECALL                         R3 R2 K1 ["Fire"]
        8 CALL                             R3 -1 0
        9 RETURN                           R0 0

PROTO_3:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["_getOrCreate"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R2 K1 ["Event"]
        6 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_1]
       10 SETTABLEKS                       R1 R0 K4 ["_getOrCreate"]
       12 DUPCLOSURE                       R1 K5 [PROTO_2]
       13 SETTABLEKS                       R1 R0 K6 ["publish"]
       15 DUPCLOSURE                       R1 K7 [PROTO_3]
       16 SETTABLEKS                       R1 R0 K8 ["subscribe"]
       18 RETURN                           R0 1
