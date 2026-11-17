PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["pageInfo"]
        5 JUMPIF                           R2 ; [+2]
        6 NEWTABLE                         R2 0 0
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K2 ["shouldDebugWarnings"]
       11 CALL                             R3 0 1
       12 JUMPIFNOT                        R3 ; [+7]
       13 GETTABLEKS                       R3 R2 K3 ["searchId"]
       15 JUMPIF                           R3 ; [+4]
       16 GETIMPORT                        R3 K5 [warn]
       18 LOADK                            R4 K6 ["no searchId in pageInfo, analytics won't be tracked for asset"]
       19 CALL                             R3 1 0
       20 DUPTABLE                         R3 K15 [{["category"] = "Studio", ["currentCategory"], ["page"], ["sort"], ["searchId"], ["searchKeyword"], ["toolboxTab"], ["isTopKeyword"]}]
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R4 R4 K16 ["getCategoryForPageInfo"]
       24 MOVE                             R5 R2
       25 CALL                             R4 1 1
       26 SETTABLEKS                       R4 R3 K9 ["currentCategory"]
       28 GETTABLEKS                       R4 R2 K17 ["targetPage"]
       30 SETTABLEKS                       R4 R3 K10 ["page"]
       32 GETUPVAL                         R4 1
       33 GETTABLEKS                       R4 R4 K18 ["getSortTypeForPageInfo"]
       35 MOVE                             R5 R2
       36 CALL                             R4 1 1
       37 SETTABLEKS                       R4 R3 K11 ["sort"]
       39 GETTABLEKS                       R4 R2 K3 ["searchId"]
       41 SETTABLEKS                       R4 R3 K3 ["searchId"]
       43 GETTABLEKS                       R4 R2 K19 ["searchTerm"]
       45 SETTABLEKS                       R4 R3 K12 ["searchKeyword"]
       47 GETUPVAL                         R4 1
       48 GETTABLEKS                       R4 R4 K20 ["getCurrentTab"]
       50 MOVE                             R5 R2
       51 CALL                             R4 1 1
       52 SETTABLEKS                       R4 R3 K13 ["toolboxTab"]
       54 GETTABLEKS                       R4 R2 K14 ["isTopKeyword"]
       56 SETTABLEKS                       R4 R3 K14 ["isTopKeyword"]
       58 RETURN                           R3 1

PROTO_1:
        0 DUPCLOSURE                       R0 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["PageInfoHelper"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R3 K6 ["Util"]
       24 GETTABLEKS                       R3 R3 K8 ["DebugFlags"]
       26 CALL                             R2 1 1
       27 DUPCLOSURE                       R3 K9 [PROTO_1]
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R1
       30 RETURN                           R3 1
