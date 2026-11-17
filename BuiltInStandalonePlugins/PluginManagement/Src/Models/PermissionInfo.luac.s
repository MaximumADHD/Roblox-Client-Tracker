PROTO_0:
        0 DUPTABLE                         R0 K5 [{[1], ["allowed"] = False, ["type"] = }]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["data"]
        5 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 1
        4 LOADB                            R1 1
        5 SETTABLEKS                       R1 R0 K1 ["allowed"]
        7 DUPTABLE                         R1 K4 [{["domain"] = "a"}]
        8 SETTABLEKS                       R1 R0 K5 ["data"]
       10 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R3 R0 K1 ["Type"]
        6 SETTABLEKS                       R3 R2 K2 ["type"]
        8 SETTABLEKS                       R1 R2 K3 ["index"]
       10 GETTABLEKS                       R3 R0 K4 ["Data"]
       12 JUMPIFNOT                        R3 ; [+15]
       13 GETTABLEKS                       R3 R0 K4 ["Data"]
       15 GETTABLEKS                       R3 R3 K5 ["Allowed"]
       17 SETTABLEKS                       R3 R2 K6 ["allowed"]
       19 DUPTABLE                         R3 K8 [{"domain"}]
       20 GETTABLEKS                       R4 R0 K4 ["Data"]
       22 GETTABLEKS                       R4 R4 K9 ["Domain"]
       24 SETTABLEKS                       R4 R3 K7 ["domain"]
       26 SETTABLEKS                       R3 R2 K10 ["data"]
       28 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["new"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["mock"]
       10 DUPCLOSURE                       R1 K4 [PROTO_2]
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K5 ["fromUserData"]
       14 RETURN                           R0 1
