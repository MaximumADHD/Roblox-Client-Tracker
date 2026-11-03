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
       45 LOADK                            R2 K9 ["PVHGenerateNotesTimeoutSeconds"]
       46 LOADN                            R3 20
       47 NAMECALL                         R0 R0 K3 ["DefineFastInt"]
       49 CALL                             R0 3 0
       50 GETIMPORT                        R0 K1 [game]
       52 LOADK                            R2 K10 ["PVHGenerateNotesQuotaMessage"]
       53 LOADB                            R3 0
       54 NAMECALL                         R0 R0 K11 ["DefineFastFlag"]
       56 CALL                             R0 3 0
       57 GETIMPORT                        R0 K1 [game]
       59 LOADK                            R2 K12 ["PVHGenerateNotes204NoContent"]
       60 LOADB                            R3 0
       61 NAMECALL                         R0 R0 K11 ["DefineFastFlag"]
       63 CALL                             R0 3 0
       64 GETIMPORT                        R0 K1 [game]
       66 LOADK                            R2 K13 ["PVHGenerateNotesDeprecate404"]
       67 LOADB                            R3 0
       68 NAMECALL                         R0 R0 K11 ["DefineFastFlag"]
       70 CALL                             R0 3 0
       71 DUPTABLE                         R0 K25 [{"FIntPVHMaxTitleChars", "FIntPVHMaxDescriptionChars", "FIntPVHMaxDescriptionLines", "FIntPVHMaxContributors", "FIntPVHMaxPlaces", "FIntPVHFirstPageDelayMs", "FIntPVHGenerateNotesTimeoutSeconds", "EngineFeaturePVHGenerateNotes", "FFlagPVHGenerateNotesQuotaMessage", "FFlagPVHGenerateNotes204NoContent", "FFlagPVHGenerateNotesDeprecate404"}]
       72 GETIMPORT                        R1 K1 [game]
       74 LOADK                            R3 K2 ["PVHMaxTitleChars"]
       75 NAMECALL                         R1 R1 K26 ["GetFastInt"]
       77 CALL                             R1 2 1
       78 SETTABLEKS                       R1 R0 K14 ["FIntPVHMaxTitleChars"]
       80 GETIMPORT                        R1 K1 [game]
       82 LOADK                            R3 K4 ["PVHMaxDescriptionChars"]
       83 NAMECALL                         R1 R1 K26 ["GetFastInt"]
       85 CALL                             R1 2 1
       86 SETTABLEKS                       R1 R0 K15 ["FIntPVHMaxDescriptionChars"]
       88 GETIMPORT                        R1 K1 [game]
       90 LOADK                            R3 K5 ["PVHMaxDescriptionLines"]
       91 NAMECALL                         R1 R1 K26 ["GetFastInt"]
       93 CALL                             R1 2 1
       94 SETTABLEKS                       R1 R0 K16 ["FIntPVHMaxDescriptionLines"]
       96 GETIMPORT                        R1 K1 [game]
       98 LOADK                            R3 K6 ["PVHMaxContributors"]
       99 NAMECALL                         R1 R1 K26 ["GetFastInt"]
      101 CALL                             R1 2 1
      102 SETTABLEKS                       R1 R0 K17 ["FIntPVHMaxContributors"]
      104 GETIMPORT                        R1 K1 [game]
      106 LOADK                            R3 K7 ["PVHMaxPlaces"]
      107 NAMECALL                         R1 R1 K26 ["GetFastInt"]
      109 CALL                             R1 2 1
      110 SETTABLEKS                       R1 R0 K18 ["FIntPVHMaxPlaces"]
      112 GETIMPORT                        R1 K1 [game]
      114 LOADK                            R3 K8 ["PVHFirstPageDelayMs"]
      115 NAMECALL                         R1 R1 K26 ["GetFastInt"]
      117 CALL                             R1 2 1
      118 SETTABLEKS                       R1 R0 K19 ["FIntPVHFirstPageDelayMs"]
      120 GETIMPORT                        R1 K1 [game]
      122 LOADK                            R3 K9 ["PVHGenerateNotesTimeoutSeconds"]
      123 NAMECALL                         R1 R1 K26 ["GetFastInt"]
      125 CALL                             R1 2 1
      126 SETTABLEKS                       R1 R0 K20 ["FIntPVHGenerateNotesTimeoutSeconds"]
      128 GETIMPORT                        R1 K1 [game]
      130 LOADK                            R3 K27 ["PVHGenerateNotes"]
      131 NAMECALL                         R1 R1 K28 ["GetEngineFeature"]
      133 CALL                             R1 2 1
      134 SETTABLEKS                       R1 R0 K21 ["EngineFeaturePVHGenerateNotes"]
      136 GETIMPORT                        R1 K1 [game]
      138 LOADK                            R3 K10 ["PVHGenerateNotesQuotaMessage"]
      139 NAMECALL                         R1 R1 K29 ["GetFastFlag"]
      141 CALL                             R1 2 1
      142 SETTABLEKS                       R1 R0 K22 ["FFlagPVHGenerateNotesQuotaMessage"]
      144 GETIMPORT                        R1 K1 [game]
      146 LOADK                            R3 K12 ["PVHGenerateNotes204NoContent"]
      147 NAMECALL                         R1 R1 K29 ["GetFastFlag"]
      149 CALL                             R1 2 1
      150 SETTABLEKS                       R1 R0 K23 ["FFlagPVHGenerateNotes204NoContent"]
      152 GETIMPORT                        R1 K1 [game]
      154 LOADK                            R3 K13 ["PVHGenerateNotesDeprecate404"]
      155 NAMECALL                         R1 R1 K29 ["GetFastFlag"]
      157 CALL                             R1 2 1
      158 SETTABLEKS                       R1 R0 K24 ["FFlagPVHGenerateNotesDeprecate404"]
      160 RETURN                           R0 1
