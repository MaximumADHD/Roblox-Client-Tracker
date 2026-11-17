PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["Dictionary"]
        7 GETTABLEKS                       R3 R3 K2 ["join"]
        9 MOVE                             R4 R0
       10 DUPTABLE                         R5 K6 [{["Style"] = "AssetPaletteTab", ["WrapperProps"]}]
       11 DUPTABLE                         R6 K9 [{["BackgroundTransparency"] = 1}]
       12 SETTABLEKS                       R6 R5 K5 ["WrapperProps"]
       14 CALL                             R3 2 -1
       15 CALL                             R1 -1 -1
       16 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["UI"]
       30 GETTABLEKS                       R5 R4 K11 ["SimpleTab"]
       32 GETTABLEKS                       R6 R2 K12 ["Wrappers"]
       34 GETTABLEKS                       R6 R6 K13 ["withForwardRef"]
       36 DUPCLOSURE                       R7 K14 [PROTO_0]
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R5
       39 CAPTURE                          VAL R1
       40 MOVE                             R8 R6
       41 MOVE                             R9 R7
       42 CALL                             R8 1 -1
       43 RETURN                           R8 -1
