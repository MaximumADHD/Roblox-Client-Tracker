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
        3 DUPTABLE                         R1 K6 [{"Error", "Warning", "Info", "Debug", "Trace", "fromString"}]
        4 LOADK                            R2 K7 ["MockError"]
        5 SETTABLEKS                       R2 R1 K0 ["Error"]
        7 LOADK                            R2 K8 ["MockWarning"]
        8 SETTABLEKS                       R2 R1 K1 ["Warning"]
       10 LOADK                            R2 K9 ["MockInfo"]
       11 SETTABLEKS                       R2 R1 K2 ["Info"]
       13 LOADK                            R2 K10 ["MockDebug"]
       14 SETTABLEKS                       R2 R1 K3 ["Debug"]
       16 LOADK                            R2 K11 ["MockTrace"]
       17 SETTABLEKS                       R2 R1 K4 ["Trace"]
       19 DUPCLOSURE                       R2 K12 [PROTO_0]
       20 SETTABLEKS                       R2 R1 K5 ["fromString"]
       22 SETTABLEKS                       R1 R0 K13 ["Levels"]
       24 SETTABLEKS                       R0 R0 K14 ["__index"]
       26 DUPCLOSURE                       R1 K15 [PROTO_1]
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R1 R0 K16 ["new"]
       30 DUPCLOSURE                       R1 K17 [PROTO_2]
       31 SETTABLEKS                       R1 R0 K18 ["setParent"]
       33 DUPCLOSURE                       R1 K19 [PROTO_3]
       34 SETTABLEKS                       R1 R0 K20 ["setContext"]
       36 DUPCLOSURE                       R1 K21 [PROTO_4]
       37 SETTABLEKS                       R1 R0 K22 ["addSink"]
       39 DUPCLOSURE                       R1 K23 [PROTO_5]
       40 SETTABLEKS                       R1 R0 K24 ["error"]
       42 DUPCLOSURE                       R1 K25 [PROTO_6]
       43 SETTABLEKS                       R1 R0 K26 ["warning"]
       45 DUPCLOSURE                       R1 K27 [PROTO_7]
       46 SETTABLEKS                       R1 R0 K28 ["info"]
       48 DUPCLOSURE                       R1 K29 [PROTO_8]
       49 SETTABLEKS                       R1 R0 K30 ["debug"]
       51 DUPCLOSURE                       R1 K31 [PROTO_9]
       52 SETTABLEKS                       R1 R0 K32 ["trace"]
       54 RETURN                           R0 1
