MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["PVHMaxTitleChars"]
        4 LOADN                            R3 50
        5 NAMECALL                         R0 R0 K3 ["DefineFastInt"]
        7 CALL                             R0 3 0
        8 GETIMPORT                        R0 K1 [game]
       10 LOADK                            R2 K4 ["PVHMaxDescriptionChars"]
       11 LOADN                            R3 1000
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
       43 GETIMPORT                        R0 K1 [game]
       45 LOADK                            R2 K9 ["PVHZeroPlaceIdCheck2"]
       46 LOADB                            R3 0
       47 NAMECALL                         R0 R0 K10 ["DefineFastFlag"]
       49 CALL                             R0 3 0
       50 DUPTABLE                         R0 K19 [{"FIntPVHMaxTitleChars", "FIntPVHMaxDescriptionChars", "FIntPVHMaxDescriptionLines", "FIntPVHMaxContributors", "FIntPVHMaxPlaces", "FIntPVHFirstPageDelayMs", "FFlagPVHZeroPlaceIdCheck", "FFlagPluginQWidgetModalFocusKeyboard"}]
       51 GETIMPORT                        R1 K1 [game]
       53 LOADK                            R3 K2 ["PVHMaxTitleChars"]
       54 NAMECALL                         R1 R1 K20 ["GetFastInt"]
       56 CALL                             R1 2 1
       57 SETTABLEKS                       R1 R0 K11 ["FIntPVHMaxTitleChars"]
       59 GETIMPORT                        R1 K1 [game]
       61 LOADK                            R3 K4 ["PVHMaxDescriptionChars"]
       62 NAMECALL                         R1 R1 K20 ["GetFastInt"]
       64 CALL                             R1 2 1
       65 SETTABLEKS                       R1 R0 K12 ["FIntPVHMaxDescriptionChars"]
       67 GETIMPORT                        R1 K1 [game]
       69 LOADK                            R3 K5 ["PVHMaxDescriptionLines"]
       70 NAMECALL                         R1 R1 K20 ["GetFastInt"]
       72 CALL                             R1 2 1
       73 SETTABLEKS                       R1 R0 K13 ["FIntPVHMaxDescriptionLines"]
       75 GETIMPORT                        R1 K1 [game]
       77 LOADK                            R3 K6 ["PVHMaxContributors"]
       78 NAMECALL                         R1 R1 K20 ["GetFastInt"]
       80 CALL                             R1 2 1
       81 SETTABLEKS                       R1 R0 K14 ["FIntPVHMaxContributors"]
       83 GETIMPORT                        R1 K1 [game]
       85 LOADK                            R3 K7 ["PVHMaxPlaces"]
       86 NAMECALL                         R1 R1 K20 ["GetFastInt"]
       88 CALL                             R1 2 1
       89 SETTABLEKS                       R1 R0 K15 ["FIntPVHMaxPlaces"]
       91 GETIMPORT                        R1 K1 [game]
       93 LOADK                            R3 K8 ["PVHFirstPageDelayMs"]
       94 NAMECALL                         R1 R1 K20 ["GetFastInt"]
       96 CALL                             R1 2 1
       97 SETTABLEKS                       R1 R0 K16 ["FIntPVHFirstPageDelayMs"]
       99 GETIMPORT                        R1 K1 [game]
      101 LOADK                            R3 K9 ["PVHZeroPlaceIdCheck2"]
      102 NAMECALL                         R1 R1 K21 ["GetFastFlag"]
      104 CALL                             R1 2 1
      105 SETTABLEKS                       R1 R0 K17 ["FFlagPVHZeroPlaceIdCheck"]
      107 GETIMPORT                        R1 K1 [game]
      109 LOADK                            R3 K22 ["PluginQWidgetModalFocusKeyboard"]
      110 NAMECALL                         R1 R1 K23 ["GetEngineFeature"]
      112 CALL                             R1 2 1
      113 SETTABLEKS                       R1 R0 K18 ["FFlagPluginQWidgetModalFocusKeyboard"]
      115 RETURN                           R0 1
