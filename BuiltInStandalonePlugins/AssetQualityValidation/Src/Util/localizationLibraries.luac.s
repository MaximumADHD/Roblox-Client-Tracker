MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetQualityValidation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Resources"]
       11 GETTABLEKS                       R1 R1 K6 ["Localization"]
       13 DUPTABLE                         R2 K8 [{"Common"}]
       14 DUPTABLE                         R3 K11 [{"stringResourceTable", "translationResourceTable"}]
       15 GETTABLEKS                       R4 R1 K12 ["SourceStrings"]
       17 SETTABLEKS                       R4 R3 K9 ["stringResourceTable"]
       19 GETTABLEKS                       R4 R1 K13 ["LocalizedStrings"]
       21 SETTABLEKS                       R4 R3 K10 ["translationResourceTable"]
       23 SETTABLEKS                       R3 R2 K7 ["Common"]
       25 RETURN                           R2 1
