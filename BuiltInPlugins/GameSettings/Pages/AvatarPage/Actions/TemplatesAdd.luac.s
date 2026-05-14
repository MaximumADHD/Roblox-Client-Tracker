PROTO_0:
        0 DUPTABLE                         R0 K1 [{"templatesArrayToAdd"}]
        1 NEWTABLE                         R1 0 1
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K2 ["new"]
        6 CALL                             R2 0 -1
        7 SETLIST                          R1 R2 -1 [1]
        9 SETTABLEKS                       R1 R0 K0 ["templatesArrayToAdd"]
       11 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K1 [script]
        9 GETTABLEKS                       R1 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R1 K2 ["Parent"]
       13 GETTABLEKS                       R1 R1 K2 ["Parent"]
       15 GETTABLEKS                       R1 R1 K2 ["Parent"]
       17 GETIMPORT                        R2 K4 [require]
       19 GETTABLEKS                       R3 R1 K5 ["Packages"]
       21 GETTABLEKS                       R3 R3 K6 ["Framework"]
       23 CALL                             R2 1 1
       24 GETTABLEKS                       R2 R2 K7 ["Util"]
       26 GETTABLEKS                       R2 R2 K8 ["Action"]
       28 GETIMPORT                        R3 K4 [require]
       30 GETTABLEKS                       R4 R0 K7 ["Util"]
       32 GETTABLEKS                       R4 R4 K9 ["StateModelTemplate"]
       34 CALL                             R3 1 1
       35 MOVE                             R4 R2
       36 GETIMPORT                        R5 K1 [script]
       38 GETTABLEKS                       R5 R5 K10 ["Name"]
       40 DUPCLOSURE                       R6 K11 [PROTO_0]
       41 CAPTURE                          VAL R3
       42 CALL                             R4 2 -1
       43 RETURN                           R4 -1
