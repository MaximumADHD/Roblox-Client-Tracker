PROTO_0:
        0 LOADK                            R0 K0 ["MockInfo"]
        1 RETURN                           R0 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 RETURN                           R0 1

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 RETURN                           R0 0

PROTO_8:
        0 RETURN                           R0 0

PROTO_9:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 DUPTABLE                         R1 K11 [{[1] = "MockError", ["Warning"] = "MockWarning", ["Info"] = "MockInfo", ["Debug"] = "MockDebug", ["Trace"] = "MockTrace", ["fromString"]}]
        4 DUPCLOSURE                       R2 K12 [PROTO_0]
        5 SETTABLEKS                       R2 R1 K10 ["fromString"]
        7 SETTABLEKS                       R1 R0 K13 ["Levels"]
        9 SETTABLEKS                       R0 R0 K14 ["__index"]
       11 DUPCLOSURE                       R1 K15 [PROTO_1]
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R1 R0 K16 ["new"]
       15 DUPCLOSURE                       R1 K17 [PROTO_2]
       16 SETTABLEKS                       R1 R0 K18 ["setParent"]
       18 DUPCLOSURE                       R1 K19 [PROTO_3]
       19 SETTABLEKS                       R1 R0 K20 ["setContext"]
       21 DUPCLOSURE                       R1 K21 [PROTO_4]
       22 SETTABLEKS                       R1 R0 K22 ["addSink"]
       24 DUPCLOSURE                       R1 K23 [PROTO_5]
       25 SETTABLEKS                       R1 R0 K24 ["error"]
       27 DUPCLOSURE                       R1 K25 [PROTO_6]
       28 SETTABLEKS                       R1 R0 K26 ["warning"]
       30 DUPCLOSURE                       R1 K27 [PROTO_7]
       31 SETTABLEKS                       R1 R0 K28 ["info"]
       33 DUPCLOSURE                       R1 K29 [PROTO_8]
       34 SETTABLEKS                       R1 R0 K30 ["debug"]
       36 DUPCLOSURE                       R1 K31 [PROTO_9]
       37 SETTABLEKS                       R1 R0 K32 ["trace"]
       39 RETURN                           R0 1
