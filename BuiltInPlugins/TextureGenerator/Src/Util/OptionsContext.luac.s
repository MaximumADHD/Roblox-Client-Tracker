MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TextureGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Util"]
       20 GETTABLEKS                       R3 R4 K10 ["createUnimplemented"]
       22 CALL                             R2 1 1
       23 DUPTABLE                         R3 K35 [{"promptText", "randomizeSeed", "seed", "rotation", "smartUVUnwrap", "promptMasking", "validRotation", "validSeed", "artStyle", "strength", "artStyleExpanded", "optionsExapnded", "setPromptText", "setRandomizeSeed", "setSeed", "setRotation", "setSmartUVUnwrap", "setPromptMasking", "setValidRotation", "setValidSeed", "setArtStyle", "setStrength", "setArtStyleExpanded", "setOptionsExpanded"}]
       24 LOADK                            R4 K36 [""]
       25 SETTABLEKS                       R4 R3 K11 ["promptText"]
       27 LOADB                            R4 1
       28 SETTABLEKS                       R4 R3 K12 ["randomizeSeed"]
       30 LOADN                            R4 0
       31 SETTABLEKS                       R4 R3 K13 ["seed"]
       33 GETIMPORT                        R4 K39 [CFrame.new]
       35 CALL                             R4 0 1
       36 SETTABLEKS                       R4 R3 K14 ["rotation"]
       38 LOADB                            R4 0
       39 SETTABLEKS                       R4 R3 K15 ["smartUVUnwrap"]
       41 LOADB                            R4 0
       42 SETTABLEKS                       R4 R3 K16 ["promptMasking"]
       44 LOADB                            R4 1
       45 SETTABLEKS                       R4 R3 K17 ["validRotation"]
       47 LOADB                            R4 1
       48 SETTABLEKS                       R4 R3 K18 ["validSeed"]
       50 LOADK                            R4 K36 [""]
       51 SETTABLEKS                       R4 R3 K19 ["artStyle"]
       53 LOADK                            R4 K40 [0.5]
       54 SETTABLEKS                       R4 R3 K20 ["strength"]
       56 LOADB                            R4 0
       57 SETTABLEKS                       R4 R3 K21 ["artStyleExpanded"]
       59 NEWTABLE                         R4 0 0
       61 SETTABLEKS                       R4 R3 K22 ["optionsExapnded"]
       63 MOVE                             R4 R2
       64 LOADK                            R5 K23 ["setPromptText"]
       65 CALL                             R4 1 1
       66 SETTABLEKS                       R4 R3 K23 ["setPromptText"]
       68 MOVE                             R4 R2
       69 LOADK                            R5 K24 ["setRandomizeSeed"]
       70 CALL                             R4 1 1
       71 SETTABLEKS                       R4 R3 K24 ["setRandomizeSeed"]
       73 MOVE                             R4 R2
       74 LOADK                            R5 K25 ["setSeed"]
       75 CALL                             R4 1 1
       76 SETTABLEKS                       R4 R3 K25 ["setSeed"]
       78 MOVE                             R4 R2
       79 LOADK                            R5 K26 ["setRotation"]
       80 CALL                             R4 1 1
       81 SETTABLEKS                       R4 R3 K26 ["setRotation"]
       83 MOVE                             R4 R2
       84 LOADK                            R5 K27 ["setSmartUVUnwrap"]
       85 CALL                             R4 1 1
       86 SETTABLEKS                       R4 R3 K27 ["setSmartUVUnwrap"]
       88 MOVE                             R4 R2
       89 LOADK                            R5 K28 ["setPromptMasking"]
       90 CALL                             R4 1 1
       91 SETTABLEKS                       R4 R3 K28 ["setPromptMasking"]
       93 MOVE                             R4 R2
       94 LOADK                            R5 K29 ["setValidRotation"]
       95 CALL                             R4 1 1
       96 SETTABLEKS                       R4 R3 K29 ["setValidRotation"]
       98 MOVE                             R4 R2
       99 LOADK                            R5 K30 ["setValidSeed"]
      100 CALL                             R4 1 1
      101 SETTABLEKS                       R4 R3 K30 ["setValidSeed"]
      103 MOVE                             R4 R2
      104 LOADK                            R5 K31 ["setArtStyle"]
      105 CALL                             R4 1 1
      106 SETTABLEKS                       R4 R3 K31 ["setArtStyle"]
      108 MOVE                             R4 R2
      109 LOADK                            R5 K32 ["setStrength"]
      110 CALL                             R4 1 1
      111 SETTABLEKS                       R4 R3 K32 ["setStrength"]
      113 MOVE                             R4 R2
      114 LOADK                            R5 K33 ["setArtStyleExpanded"]
      115 CALL                             R4 1 1
      116 SETTABLEKS                       R4 R3 K33 ["setArtStyleExpanded"]
      118 MOVE                             R4 R2
      119 LOADK                            R5 K34 ["setOptionsExpanded"]
      120 CALL                             R4 1 1
      121 SETTABLEKS                       R4 R3 K34 ["setOptionsExpanded"]
      123 GETTABLEKS                       R4 R1 K41 ["createContext"]
      125 MOVE                             R5 R3
      126 CALL                             R4 1 1
      127 RETURN                           R4 1
