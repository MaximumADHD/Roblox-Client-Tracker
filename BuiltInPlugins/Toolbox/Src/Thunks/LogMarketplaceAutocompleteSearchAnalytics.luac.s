PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["pageInfo"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K2 ["getCurrentTab"]
        8 MOVE                             R4 R2
        9 CALL                             R3 1 1
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K3 ["getSortTypeForPageInfo"]
       13 MOVE                             R5 R2
       14 CALL                             R4 1 1
       15 GETTABLEKS                       R5 R2 K4 ["creator"]
       17 JUMPIFNOT                        R5 ; [+3]
       18 GETTABLEKS                       R6 R5 K5 ["Id"]
       20 JUMPIF                           R6 ; [+1]
       21 LOADNIL                          R6
       22 GETTABLEKS                       R8 R2 K7 ["searchId"]
       24 ORK                              R7 R8 K6 [""]
       25 DUPTABLE                         R8 K12 [{"assetType", "creatorID", "searchId", "sort", "toolboxTab"}]
       26 GETUPVAL                         R9 1
       27 SETTABLEKS                       R9 R8 K8 ["assetType"]
       29 SETTABLEKS                       R6 R8 K9 ["creatorID"]
       31 SETTABLEKS                       R7 R8 K7 ["searchId"]
       33 SETTABLEKS                       R4 R8 K10 ["sort"]
       35 SETTABLEKS                       R3 R8 K11 ["toolboxTab"]
       37 GETUPVAL                         R10 2
       38 GETTABLEKS                       R9 R10 K13 ["marketplaceAutocompleteSearch"]
       40 GETUPVAL                         R10 3
       41 GETUPVAL                         R11 4
       42 GETUPVAL                         R12 5
       43 GETUPVAL                         R13 6
       44 GETUPVAL                         R14 7
       45 MOVE                             R15 R8
       46 CALL                             R9 6 0
       47 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R7 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R2
        6 CAPTURE                          VAL R3
        7 CAPTURE                          VAL R4
        8 CAPTURE                          VAL R5
        9 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R2 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R2 K5 ["Util"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R4 R1 K8 ["Analytics"]
       15 GETTABLEKS                       R3 R4 K8 ["Analytics"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K7 [require]
       20 GETTABLEKS                       R6 R0 K4 ["Src"]
       22 GETTABLEKS                       R5 R6 K9 ["Types"]
       24 GETTABLEKS                       R4 R5 K10 ["AnalyticsTypes"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K7 [require]
       29 GETTABLEKS                       R5 R1 K11 ["PageInfoHelper"]
       31 CALL                             R4 1 1
       32 DUPCLOSURE                       R5 K12 [PROTO_1]
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R2
       35 RETURN                           R5 1
