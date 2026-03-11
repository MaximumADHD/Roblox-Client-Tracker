PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K9 [{"LayoutOrder", "id", "name", "creator", "creatorHasVerifiedBadge", "price", "rowState", "onRowStateChanged"}]
        5 GETTABLEKS                       R4 R0 K1 ["LayoutOrder"]
        7 SETTABLEKS                       R4 R3 K1 ["LayoutOrder"]
        9 GETTABLEKS                       R4 R0 K10 ["bundleId"]
       11 SETTABLEKS                       R4 R3 K2 ["id"]
       13 GETTABLEKS                       R4 R0 K3 ["name"]
       15 SETTABLEKS                       R4 R3 K3 ["name"]
       17 GETTABLEKS                       R4 R0 K4 ["creator"]
       19 SETTABLEKS                       R4 R3 K4 ["creator"]
       21 GETTABLEKS                       R4 R0 K5 ["creatorHasVerifiedBadge"]
       23 SETTABLEKS                       R4 R3 K5 ["creatorHasVerifiedBadge"]
       25 GETTABLEKS                       R4 R0 K6 ["price"]
       27 SETTABLEKS                       R4 R3 K6 ["price"]
       29 GETTABLEKS                       R4 R0 K7 ["rowState"]
       31 SETTABLEKS                       R4 R3 K7 ["rowState"]
       33 GETTABLEKS                       R4 R0 K8 ["onRowStateChanged"]
       35 SETTABLEKS                       R4 R3 K8 ["onRowStateChanged"]
       37 CALL                             R1 2 -1
       38 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R5 K1 [script]
       18 GETTABLEKS                       R4 R5 K8 ["Parent"]
       20 GETTABLEKS                       R3 R4 K9 ["ItemRow"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K10 ["Src"]
       27 GETTABLEKS                       R4 R5 K11 ["Types"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K12 [PROTO_0]
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R2
       33 RETURN                           R4 1
