PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R0 K1 [require]
        2 GETIMPORT                        R1 K3 [script]
        4 GETTABLEKS                       R1 R1 K4 ["Kids"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Default"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R2 K3 [script]
       12 GETTABLEKS                       R2 R2 K5 ["enums"]
       14 CALL                             R1 1 1
       15 GETIMPORT                        R2 K1 [require]
       17 GETIMPORT                        R3 K3 [script]
       19 GETTABLEKS                       R3 R3 K6 ["types"]
       21 CALL                             R2 1 1
       22 DUPTABLE                         R3 K8 [{"Default", "Kids"}]
       23 DUPCLOSURE                       R4 K9 [PROTO_0]
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R4 R3 K4 ["Default"]
       27 DUPCLOSURE                       R4 K10 [PROTO_1]
       28 SETTABLEKS                       R4 R3 K7 ["Kids"]
       30 DUPTABLE                         R4 K14 [{"ColorMode", "Theme", "themes"}]
       31 GETTABLEKS                       R5 R1 K11 ["ColorMode"]
       33 SETTABLEKS                       R5 R4 K11 ["ColorMode"]
       35 GETTABLEKS                       R5 R1 K12 ["Theme"]
       37 SETTABLEKS                       R5 R4 K12 ["Theme"]
       39 SETTABLEKS                       R3 R4 K13 ["themes"]
       41 RETURN                           R4 1
