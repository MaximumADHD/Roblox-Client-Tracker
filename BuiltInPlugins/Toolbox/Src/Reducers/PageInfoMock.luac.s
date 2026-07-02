PROTO_0:
        0 DUPTABLE                         R2 K17 [{[1], ["category"], ["categoryName"], ["searchTerm"] = "", ["sorts"], ["sortIndex"] = 1, ["sortType"], ["groups"], ["groupIndex"] = 0, ["groupId"] = 0, ["targetPage"] = 1, ["curentPage"] = 0, ["selectedBackgroundIndex"] = 1, ["hoveredBackgroundIndex"] = 0}]
        1 GETUPVAL                         R3 0
        2 SETTABLEKS                       R3 R2 K0 ["categories"]
        4 GETUPVAL                         R4 0
        5 GETTABLEN                        R3 R4 1
        6 GETTABLEKS                       R3 R3 K1 ["category"]
        8 SETTABLEKS                       R3 R2 K1 ["category"]
       10 GETUPVAL                         R4 0
       11 GETTABLEN                        R3 R4 1
       12 GETTABLEKS                       R3 R3 K18 ["name"]
       14 SETTABLEKS                       R3 R2 K2 ["categoryName"]
       16 GETUPVAL                         R3 1
       17 SETTABLEKS                       R3 R2 K5 ["sorts"]
       19 GETUPVAL                         R4 1
       20 GETTABLEN                        R3 R4 1
       21 GETTABLEKS                       R3 R3 K19 ["sort"]
       23 SETTABLEKS                       R3 R2 K8 ["sortType"]
       25 NEWTABLE                         R3 0 0
       27 SETTABLEKS                       R3 R2 K9 ["groups"]
       29 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 GETTABLEKS                       R2 R2 K7 ["Category"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R3 K6 ["Types"]
       24 GETTABLEKS                       R3 R3 K8 ["Sort"]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R3 R2 K9 ["SORT_OPTIONS"]
       29 GETTABLEKS                       R4 R1 K10 ["MARKETPLACE"]
       31 DUPCLOSURE                       R5 K11 [PROTO_0]
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R3
       34 RETURN                           R5 1
