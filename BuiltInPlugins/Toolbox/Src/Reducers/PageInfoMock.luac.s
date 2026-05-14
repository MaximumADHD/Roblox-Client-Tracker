PROTO_0:
        0 DUPTABLE                         R2 K14 [{"categories", "category", "categoryName", "searchTerm", "sorts", "sortIndex", "sortType", "groups", "groupIndex", "groupId", "targetPage", "curentPage", "selectedBackgroundIndex", "hoveredBackgroundIndex"}]
        1 GETUPVAL                         R3 0
        2 SETTABLEKS                       R3 R2 K0 ["categories"]
        4 GETUPVAL                         R4 0
        5 GETTABLEN                        R3 R4 1
        6 GETTABLEKS                       R3 R3 K1 ["category"]
        8 SETTABLEKS                       R3 R2 K1 ["category"]
       10 GETUPVAL                         R4 0
       11 GETTABLEN                        R3 R4 1
       12 GETTABLEKS                       R3 R3 K15 ["name"]
       14 SETTABLEKS                       R3 R2 K2 ["categoryName"]
       16 LOADK                            R3 K16 [""]
       17 SETTABLEKS                       R3 R2 K3 ["searchTerm"]
       19 GETUPVAL                         R3 1
       20 SETTABLEKS                       R3 R2 K4 ["sorts"]
       22 LOADN                            R3 1
       23 SETTABLEKS                       R3 R2 K5 ["sortIndex"]
       25 GETUPVAL                         R4 1
       26 GETTABLEN                        R3 R4 1
       27 GETTABLEKS                       R3 R3 K17 ["sort"]
       29 SETTABLEKS                       R3 R2 K6 ["sortType"]
       31 NEWTABLE                         R3 0 0
       33 SETTABLEKS                       R3 R2 K7 ["groups"]
       35 LOADN                            R3 0
       36 SETTABLEKS                       R3 R2 K8 ["groupIndex"]
       38 LOADN                            R3 0
       39 SETTABLEKS                       R3 R2 K9 ["groupId"]
       41 LOADN                            R3 1
       42 SETTABLEKS                       R3 R2 K10 ["targetPage"]
       44 LOADN                            R3 0
       45 SETTABLEKS                       R3 R2 K11 ["curentPage"]
       47 LOADN                            R3 1
       48 SETTABLEKS                       R3 R2 K12 ["selectedBackgroundIndex"]
       50 LOADN                            R3 0
       51 SETTABLEKS                       R3 R2 K13 ["hoveredBackgroundIndex"]
       53 RETURN                           R2 1

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
