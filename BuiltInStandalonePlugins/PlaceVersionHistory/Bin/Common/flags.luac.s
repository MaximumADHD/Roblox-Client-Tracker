MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["EnablePlaceVersionHistory"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        7 CALL                             R0 3 0
        8 GETIMPORT                        R0 K1 [game]
       10 LOADK                            R2 K4 ["PVHMaxTitleChars"]
       11 LOADN                            R3 50
       12 NAMECALL                         R0 R0 K5 ["DefineFastInt"]
       14 CALL                             R0 3 0
       15 GETIMPORT                        R0 K1 [game]
       17 LOADK                            R2 K6 ["PVHMaxDescriptionChars"]
       18 LOADN                            R3 232
       19 NAMECALL                         R0 R0 K5 ["DefineFastInt"]
       21 CALL                             R0 3 0
       22 GETIMPORT                        R0 K1 [game]
       24 LOADK                            R2 K7 ["PVHMaxDescriptionLines"]
       25 LOADN                            R3 25
       26 NAMECALL                         R0 R0 K5 ["DefineFastInt"]
       28 CALL                             R0 3 0
       29 GETIMPORT                        R0 K1 [game]
       31 LOADK                            R2 K8 ["PVHMaxContributors"]
       32 LOADN                            R3 100
       33 NAMECALL                         R0 R0 K5 ["DefineFastInt"]
       35 CALL                             R0 3 0
       36 GETIMPORT                        R0 K1 [game]
       38 LOADK                            R2 K9 ["PVHMaxPlaces"]
       39 LOADN                            R3 100
       40 NAMECALL                         R0 R0 K5 ["DefineFastInt"]
       42 CALL                             R0 3 0
       43 GETIMPORT                        R0 K1 [game]
       45 LOADK                            R2 K10 ["PVHFirstPageDelayMs"]
       46 LOADN                            R3 200
       47 NAMECALL                         R0 R0 K5 ["DefineFastInt"]
       49 CALL                             R0 3 0
       50 DUPTABLE                         R0 K18 [{"FFlagEnablePlaceVersionHistory", "FIntPVHMaxTitleChars", "FIntPVHMaxDescriptionChars", "FIntPVHMaxDescriptionLines", "FIntPVHMaxContributors", "FIntPVHMaxPlaces", "FIntPVHFirstPageDelayMs"}]
       51 GETIMPORT                        R1 K1 [game]
       53 LOADK                            R3 K2 ["EnablePlaceVersionHistory"]
       54 NAMECALL                         R1 R1 K19 ["GetFastFlag"]
       56 CALL                             R1 2 1
       57 SETTABLEKS                       R1 R0 K11 ["FFlagEnablePlaceVersionHistory"]
       59 GETIMPORT                        R1 K1 [game]
       61 LOADK                            R3 K4 ["PVHMaxTitleChars"]
       62 NAMECALL                         R1 R1 K20 ["GetFastInt"]
       64 CALL                             R1 2 1
       65 SETTABLEKS                       R1 R0 K12 ["FIntPVHMaxTitleChars"]
       67 GETIMPORT                        R1 K1 [game]
       69 LOADK                            R3 K6 ["PVHMaxDescriptionChars"]
       70 NAMECALL                         R1 R1 K20 ["GetFastInt"]
       72 CALL                             R1 2 1
       73 SETTABLEKS                       R1 R0 K13 ["FIntPVHMaxDescriptionChars"]
       75 GETIMPORT                        R1 K1 [game]
       77 LOADK                            R3 K7 ["PVHMaxDescriptionLines"]
       78 NAMECALL                         R1 R1 K20 ["GetFastInt"]
       80 CALL                             R1 2 1
       81 SETTABLEKS                       R1 R0 K14 ["FIntPVHMaxDescriptionLines"]
       83 GETIMPORT                        R1 K1 [game]
       85 LOADK                            R3 K8 ["PVHMaxContributors"]
       86 NAMECALL                         R1 R1 K20 ["GetFastInt"]
       88 CALL                             R1 2 1
       89 SETTABLEKS                       R1 R0 K15 ["FIntPVHMaxContributors"]
       91 GETIMPORT                        R1 K1 [game]
       93 LOADK                            R3 K9 ["PVHMaxPlaces"]
       94 NAMECALL                         R1 R1 K20 ["GetFastInt"]
       96 CALL                             R1 2 1
       97 SETTABLEKS                       R1 R0 K16 ["FIntPVHMaxPlaces"]
       99 GETIMPORT                        R1 K1 [game]
      101 LOADK                            R3 K10 ["PVHFirstPageDelayMs"]
      102 NAMECALL                         R1 R1 K20 ["GetFastInt"]
      104 CALL                             R1 2 1
      105 SETTABLEKS                       R1 R0 K17 ["FIntPVHFirstPageDelayMs"]
      107 RETURN                           R0 1
