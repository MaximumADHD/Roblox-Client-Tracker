PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Background"]
        2 NAMECALL                         R0 R0 K1 ["use"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K2 ["createElement"]
        8 LOADK                            R2 K3 ["ImageLabel"]
        9 DUPTABLE                         R3 K8 [{"BackgroundTransparency", "Image", "Size", "ZIndex"}]
       10 LOADN                            R4 1
       11 SETTABLEKS                       R4 R3 K4 ["BackgroundTransparency"]
       13 GETTABLEKS                       R4 R0 K5 ["Image"]
       15 SETTABLEKS                       R4 R3 K5 ["Image"]
       17 GETIMPORT                        R4 K11 [UDim2.fromScale]
       19 LOADN                            R5 1
       20 LOADN                            R6 1
       21 CALL                             R4 2 1
       22 SETTABLEKS                       R4 R3 K6 ["Size"]
       24 LOADN                            R4 255
       25 SETTABLEKS                       R4 R3 K7 ["ZIndex"]
       27 CALL                             R1 2 -1
       28 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Resources"]
       27 GETTABLEKS                       R4 R5 K11 ["Theme"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R5 R1 K12 ["ContextServices"]
       32 GETTABLEKS                       R4 R5 K13 ["Stylizer"]
       34 DUPCLOSURE                       R5 K14 [PROTO_0]
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R2
       37 RETURN                           R5 1
