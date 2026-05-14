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
       43 GETIMPORT                        R0 K1 [game]
       45 LOADK                            R2 K9 ["PVHZeroPlaceIdCheck2"]
       46 LOADB                            R3 0
       47 NAMECALL                         R0 R0 K10 ["DefineFastFlag"]
       49 CALL                             R0 3 0
       50 GETIMPORT                        R0 K1 [game]
       52 LOADK                            R2 K11 ["PVHUpdatePageOnNotesEdit"]
       53 LOADB                            R3 0
       54 NAMECALL                         R0 R0 K10 ["DefineFastFlag"]
       56 CALL                             R0 3 0
       57 DUPTABLE                         R0 K22 [{"FIntPVHMaxTitleChars", "FIntPVHMaxDescriptionChars", "FIntPVHMaxDescriptionLines", "FIntPVHMaxContributors", "FIntPVHMaxPlaces", "FIntPVHFirstPageDelayMs", "FFlagPVHZeroPlaceIdCheck", "FFlagPVHUpdatePageOnNotesEdit", "FFlagPublishActionToast", "FFlagPluginQWidgetModalFocusKeyboard"}]
       58 GETIMPORT                        R1 K1 [game]
       60 LOADK                            R3 K2 ["PVHMaxTitleChars"]
       61 NAMECALL                         R1 R1 K23 ["GetFastInt"]
       63 CALL                             R1 2 1
       64 SETTABLEKS                       R1 R0 K12 ["FIntPVHMaxTitleChars"]
       66 GETIMPORT                        R1 K1 [game]
       68 LOADK                            R3 K4 ["PVHMaxDescriptionChars"]
       69 NAMECALL                         R1 R1 K23 ["GetFastInt"]
       71 CALL                             R1 2 1
       72 SETTABLEKS                       R1 R0 K13 ["FIntPVHMaxDescriptionChars"]
       74 GETIMPORT                        R1 K1 [game]
       76 LOADK                            R3 K5 ["PVHMaxDescriptionLines"]
       77 NAMECALL                         R1 R1 K23 ["GetFastInt"]
       79 CALL                             R1 2 1
       80 SETTABLEKS                       R1 R0 K14 ["FIntPVHMaxDescriptionLines"]
       82 GETIMPORT                        R1 K1 [game]
       84 LOADK                            R3 K6 ["PVHMaxContributors"]
       85 NAMECALL                         R1 R1 K23 ["GetFastInt"]
       87 CALL                             R1 2 1
       88 SETTABLEKS                       R1 R0 K15 ["FIntPVHMaxContributors"]
       90 GETIMPORT                        R1 K1 [game]
       92 LOADK                            R3 K7 ["PVHMaxPlaces"]
       93 NAMECALL                         R1 R1 K23 ["GetFastInt"]
       95 CALL                             R1 2 1
       96 SETTABLEKS                       R1 R0 K16 ["FIntPVHMaxPlaces"]
       98 GETIMPORT                        R1 K1 [game]
      100 LOADK                            R3 K8 ["PVHFirstPageDelayMs"]
      101 NAMECALL                         R1 R1 K23 ["GetFastInt"]
      103 CALL                             R1 2 1
      104 SETTABLEKS                       R1 R0 K17 ["FIntPVHFirstPageDelayMs"]
      106 GETIMPORT                        R1 K1 [game]
      108 LOADK                            R3 K9 ["PVHZeroPlaceIdCheck2"]
      109 NAMECALL                         R1 R1 K24 ["GetFastFlag"]
      111 CALL                             R1 2 1
      112 SETTABLEKS                       R1 R0 K18 ["FFlagPVHZeroPlaceIdCheck"]
      114 GETIMPORT                        R1 K1 [game]
      116 LOADK                            R3 K11 ["PVHUpdatePageOnNotesEdit"]
      117 NAMECALL                         R1 R1 K24 ["GetFastFlag"]
      119 CALL                             R1 2 1
      120 SETTABLEKS                       R1 R0 K19 ["FFlagPVHUpdatePageOnNotesEdit"]
      122 GETIMPORT                        R1 K1 [game]
      124 LOADK                            R3 K25 ["PublishActionToast"]
      125 NAMECALL                         R1 R1 K26 ["GetEngineFeature"]
      127 CALL                             R1 2 1
      128 SETTABLEKS                       R1 R0 K20 ["FFlagPublishActionToast"]
      130 GETIMPORT                        R1 K1 [game]
      132 LOADK                            R3 K27 ["PluginQWidgetModalFocusKeyboard"]
      133 NAMECALL                         R1 R1 K26 ["GetEngineFeature"]
      135 CALL                             R1 2 1
      136 SETTABLEKS                       R1 R0 K21 ["FFlagPluginQWidgetModalFocusKeyboard"]
      138 RETURN                           R0 1
