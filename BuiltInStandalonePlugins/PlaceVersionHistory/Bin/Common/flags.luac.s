MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["PVHMaxTitleChars"]
        4 LOADN                            R3 50
        5 NAMECALL                         R0 R0 K3 ["DefineFastInt"]
        7 CALL                             R0 3 0
        8 GETIMPORT                        R0 K1 [game]
       10 LOADK                            R2 K4 ["PVHMaxDescriptionChars"]
       11 LOADN                            R3 232
       12 NAMECALL                         R0 R0 K3 ["DefineFastInt"]
       14 CALL                             R0 3 0
       15 GETIMPORT                        R0 K1 [game]
       17 LOADK                            R2 K5 ["PVHMaxDescriptionLines"]
       18 LOADN                            R3 25
       19 NAMECALL                         R0 R0 K3 ["DefineFastInt"]
       21 CALL                             R0 3 0
       22 GETIMPORT                        R0 K1 [game]
       24 LOADK                            R2 K6 ["PVHMaxContributors"]
       25 LOADN                            R3 100
       26 NAMECALL                         R0 R0 K3 ["DefineFastInt"]
       28 CALL                             R0 3 0
       29 GETIMPORT                        R0 K1 [game]
       31 LOADK                            R2 K7 ["PVHMaxPlaces"]
       32 LOADN                            R3 100
       33 NAMECALL                         R0 R0 K3 ["DefineFastInt"]
       35 CALL                             R0 3 0
       36 GETIMPORT                        R0 K1 [game]
       38 LOADK                            R2 K8 ["PVHFirstPageDelayMs"]
       39 LOADN                            R3 200
       40 NAMECALL                         R0 R0 K3 ["DefineFastInt"]
       42 CALL                             R0 3 0
       43 DUPTABLE                         R0 K16 [{"FFlagEnablePlaceVersionHistory", "FIntPVHMaxTitleChars", "FIntPVHMaxDescriptionChars", "FIntPVHMaxDescriptionLines", "FIntPVHMaxContributors", "FIntPVHMaxPlaces", "FIntPVHFirstPageDelayMs"}]
       44 GETIMPORT                        R1 K1 [game]
       46 LOADK                            R3 K17 ["PlaceVersionHistory"]
       47 NAMECALL                         R1 R1 K18 ["GetEngineFeature"]
       49 CALL                             R1 2 1
       50 SETTABLEKS                       R1 R0 K9 ["FFlagEnablePlaceVersionHistory"]
       52 GETIMPORT                        R1 K1 [game]
       54 LOADK                            R3 K2 ["PVHMaxTitleChars"]
       55 NAMECALL                         R1 R1 K19 ["GetFastInt"]
       57 CALL                             R1 2 1
       58 SETTABLEKS                       R1 R0 K10 ["FIntPVHMaxTitleChars"]
       60 GETIMPORT                        R1 K1 [game]
       62 LOADK                            R3 K4 ["PVHMaxDescriptionChars"]
       63 NAMECALL                         R1 R1 K19 ["GetFastInt"]
       65 CALL                             R1 2 1
       66 SETTABLEKS                       R1 R0 K11 ["FIntPVHMaxDescriptionChars"]
       68 GETIMPORT                        R1 K1 [game]
       70 LOADK                            R3 K5 ["PVHMaxDescriptionLines"]
       71 NAMECALL                         R1 R1 K19 ["GetFastInt"]
       73 CALL                             R1 2 1
       74 SETTABLEKS                       R1 R0 K12 ["FIntPVHMaxDescriptionLines"]
       76 GETIMPORT                        R1 K1 [game]
       78 LOADK                            R3 K6 ["PVHMaxContributors"]
       79 NAMECALL                         R1 R1 K19 ["GetFastInt"]
       81 CALL                             R1 2 1
       82 SETTABLEKS                       R1 R0 K13 ["FIntPVHMaxContributors"]
       84 GETIMPORT                        R1 K1 [game]
       86 LOADK                            R3 K7 ["PVHMaxPlaces"]
       87 NAMECALL                         R1 R1 K19 ["GetFastInt"]
       89 CALL                             R1 2 1
       90 SETTABLEKS                       R1 R0 K14 ["FIntPVHMaxPlaces"]
       92 GETIMPORT                        R1 K1 [game]
       94 LOADK                            R3 K8 ["PVHFirstPageDelayMs"]
       95 NAMECALL                         R1 R1 K19 ["GetFastInt"]
       97 CALL                             R1 2 1
       98 SETTABLEKS                       R1 R0 K15 ["FIntPVHFirstPageDelayMs"]
      100 RETURN                           R0 1
