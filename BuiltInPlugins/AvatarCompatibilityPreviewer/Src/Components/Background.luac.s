PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Background"]
        2 NAMECALL                         R0 R0 K1 ["use"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["createElement"]
        8 LOADK                            R2 K3 ["ImageLabel"]
        9 DUPTABLE                         R3 K10 [{["BackgroundTransparency"] = 1, ["Image"], ["Size"], ["ZIndex"] = -1}]
       10 GETTABLEKS                       R4 R0 K6 ["Image"]
       12 SETTABLEKS                       R4 R3 K6 ["Image"]
       14 GETIMPORT                        R4 K13 [UDim2.fromScale]
       16 LOADN                            R5 1
       17 LOADN                            R6 1
       18 CALL                             R4 2 1
       19 SETTABLEKS                       R4 R3 K7 ["Size"]
       21 CALL                             R1 2 -1
       22 RETURN                           R1 -1

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
       25 GETTABLEKS                       R4 R4 K10 ["Resources"]
       27 GETTABLEKS                       R4 R4 K11 ["Theme"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R1 K12 ["ContextServices"]
       32 GETTABLEKS                       R4 R4 K13 ["Stylizer"]
       34 DUPCLOSURE                       R5 K14 [PROTO_0]
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R2
       37 RETURN                           R5 1
