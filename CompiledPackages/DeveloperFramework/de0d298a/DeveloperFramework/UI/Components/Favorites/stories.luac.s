PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R0 K3 [{"LowCount", "Favorited", "HighCount"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K4 ["createElement"]
        4 GETUPVAL                         R2 1
        5 DUPTABLE                         R3 K10 [{["Count"] = 5, ["IsFavorited"] = False, ["OnClick"]}]
        6 DUPCLOSURE                       R4 K11 [PROTO_0]
        7 SETTABLEKS                       R4 R3 K9 ["OnClick"]
        9 CALL                             R1 2 1
       10 SETTABLEKS                       R1 R0 K0 ["LowCount"]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K4 ["createElement"]
       15 GETUPVAL                         R2 1
       16 DUPTABLE                         R3 K14 [{["Count"] = 10, ["IsFavorited"] = True, ["OnClick"]}]
       17 DUPCLOSURE                       R4 K15 [PROTO_1]
       18 SETTABLEKS                       R4 R3 K9 ["OnClick"]
       20 CALL                             R1 2 1
       21 SETTABLEKS                       R1 R0 K1 ["Favorited"]
       23 GETUPVAL                         R1 0
       24 GETTABLEKS                       R1 R1 K4 ["createElement"]
       26 GETUPVAL                         R2 1
       27 DUPTABLE                         R3 K17 [{["Count"] = 10500, ["IsFavorited"] = False, ["OnClick"]}]
       28 DUPCLOSURE                       R4 K18 [PROTO_2]
       29 SETTABLEKS                       R4 R3 K9 ["OnClick"]
       31 CALL                             R1 2 1
       32 SETTABLEKS                       R1 R0 K2 ["HighCount"]
       34 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETIMPORT                        R3 K1 [script]
       20 GETTABLEKS                       R3 R3 K4 ["Parent"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K8 [PROTO_3]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 RETURN                           R3 1
