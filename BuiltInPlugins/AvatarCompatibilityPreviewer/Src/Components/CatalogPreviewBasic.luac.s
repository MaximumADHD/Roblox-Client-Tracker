PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K4 [{"Image", "Style", "Size"}]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R5 R0 K5 ["Item"]
        8 CALL                             R4 1 1
        9 SETTABLEKS                       R4 R3 K1 ["Image"]
       11 DUPTABLE                         R4 K7 [{"Transparency"}]
       12 GETTABLEKS                       R5 R0 K6 ["Transparency"]
       14 SETTABLEKS                       R5 R4 K6 ["Transparency"]
       16 SETTABLEKS                       R4 R3 K2 ["Style"]
       18 GETIMPORT                        R4 K10 [UDim2.fromScale]
       20 LOADN                            R5 1
       21 LOADN                            R6 1
       22 CALL                             R4 2 1
       23 SETTABLEKS                       R4 R3 K3 ["Size"]
       25 CALL                             R1 2 -1
       26 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["getAssetThumbnail"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R1 K12 ["UI"]
       32 GETTABLEKS                       R4 R4 K13 ["Image"]
       34 DUPCLOSURE                       R5 K14 [PROTO_0]
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R3
       38 RETURN                           R5 1
