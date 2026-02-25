PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["pageInfo"]
        5 JUMPIF                           R2 ; [+2]
        6 NEWTABLE                         R2 0 0
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K2 ["shouldDebugWarnings"]
       11 CALL                             R3 0 1
       12 JUMPIFNOT                        R3 ; [+7]
       13 GETTABLEKS                       R3 R2 K3 ["searchId"]
       15 JUMPIF                           R3 ; [+4]
       16 GETIMPORT                        R3 K5 [warn]
       18 LOADK                            R4 K6 ["no searchId in pageInfo, analytics won't be tracked for asset"]
       19 CALL                             R3 1 0
       20 DUPTABLE                         R3 K14 [{"category", "currentCategory", "page", "sort", "searchId", "searchKeyword", "toolboxTab", "isTopKeyword"}]
       21 LOADK                            R4 K15 ["Studio"]
       22 SETTABLEKS                       R4 R3 K7 ["category"]
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R4 R5 K16 ["getCategoryForPageInfo"]
       27 MOVE                             R5 R2
       28 CALL                             R4 1 1
       29 SETTABLEKS                       R4 R3 K8 ["currentCategory"]
       31 GETTABLEKS                       R4 R2 K17 ["targetPage"]
       33 SETTABLEKS                       R4 R3 K9 ["page"]
       35 GETUPVAL                         R5 1
       36 GETTABLEKS                       R4 R5 K18 ["getSortTypeForPageInfo"]
       38 MOVE                             R5 R2
       39 CALL                             R4 1 1
       40 SETTABLEKS                       R4 R3 K10 ["sort"]
       42 GETTABLEKS                       R4 R2 K3 ["searchId"]
       44 SETTABLEKS                       R4 R3 K3 ["searchId"]
       46 GETTABLEKS                       R4 R2 K19 ["searchTerm"]
       48 SETTABLEKS                       R4 R3 K11 ["searchKeyword"]
       50 GETUPVAL                         R5 1
       51 GETTABLEKS                       R4 R5 K20 ["getCurrentTab"]
       53 MOVE                             R5 R2
       54 CALL                             R4 1 1
       55 SETTABLEKS                       R4 R3 K12 ["toolboxTab"]
       57 GETTABLEKS                       R4 R2 K13 ["isTopKeyword"]
       59 SETTABLEKS                       R4 R3 K13 ["isTopKeyword"]
       61 RETURN                           R3 1

PROTO_1:
        0 DUPCLOSURE                       R0 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Util"]
       15 GETTABLEKS                       R2 R3 K7 ["PageInfoHelper"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R5 R0 K5 ["Src"]
       22 GETTABLEKS                       R4 R5 K6 ["Util"]
       24 GETTABLEKS                       R3 R4 K8 ["DebugFlags"]
       26 CALL                             R2 1 1
       27 DUPCLOSURE                       R3 K9 [PROTO_1]
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R1
       30 RETURN                           R3 1
