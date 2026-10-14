PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R1
        9 GETTABLEKS                       R4 R0 K2 ["reloadRequiredSignal"]
       11 CALL                             R2 2 1
       12 GETTABLEKS                       R3 R2 K3 ["isVisible"]
       14 JUMPIF                           R3 ; [+2]
       15 LOADNIL                          R3
       16 RETURN                           R3 1
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R3 R3 K4 ["createElement"]
       20 GETUPVAL                         R4 3
       21 DUPTABLE                         R5 K6 [{"overlayGui"}]
       22 GETTABLEKS                       R6 R0 K5 ["overlayGui"]
       24 SETTABLEKS                       R6 R5 K5 ["overlayGui"]
       26 DUPTABLE                         R6 K8 [{"Dialog"}]
       27 GETUPVAL                         R7 2
       28 GETTABLEKS                       R7 R7 K4 ["createElement"]
       30 GETUPVAL                         R8 4
       31 DUPTABLE                         R9 K12 [{"isRestarting", "onClose", "onRestart"}]
       32 GETTABLEKS                       R10 R2 K9 ["isRestarting"]
       34 SETTABLEKS                       R10 R9 K9 ["isRestarting"]
       36 GETTABLEKS                       R10 R2 K13 ["close"]
       38 SETTABLEKS                       R10 R9 K10 ["onClose"]
       40 GETTABLEKS                       R10 R2 K14 ["restart"]
       42 SETTABLEKS                       R10 R9 K11 ["onRestart"]
       44 CALL                             R7 2 1
       45 SETTABLEKS                       R7 R6 K7 ["Dialog"]
       47 CALL                             R3 3 -1
       48 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
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
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["StudioFoundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K10 ["ContextServices"]
       30 GETTABLEKS                       R4 R4 K11 ["Plugin"]
       32 GETTABLEKS                       R5 R3 K12 ["Components"]
       34 GETTABLEKS                       R5 R5 K13 ["FoundationProviderAdapter"]
       36 GETIMPORT                        R6 K5 [require]
       38 GETIMPORT                        R7 K1 [script]
       40 GETTABLEKS                       R7 R7 K14 ["Parent"]
       42 GETTABLEKS                       R7 R7 K15 ["Dialog"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K16 ["Src"]
       49 GETTABLEKS                       R8 R8 K17 ["Hooks"]
       51 GETTABLEKS                       R8 R8 K18 ["useExpandedTerrainRestart"]
       53 CALL                             R7 1 1
       54 DUPCLOSURE                       R8 K19 [PROTO_0]
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R6
       60 RETURN                           R8 1
