MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R5 R0 K2 ["UI"]
       20 GETTABLEKS                       R4 R5 K8 ["Components"]
       22 GETTABLEKS                       R3 R4 K9 ["ImageCarousel"]
       24 CALL                             R2 1 1
       25 NEWTABLE                         R3 0 3
       27 LOADK                            R4 K10 ["rbxasset://textures/ui/common/robux_color@2x.png"]
       28 LOADK                            R5 K11 ["rbxasset://textures/ui/Chat/Chat.png"]
       29 LOADK                            R6 K12 ["rbxasset://textures/ui/Chat/MessageCounter.png"]
       30 SETLIST                          R3 R4 3 [1]
       32 DUPTABLE                         R4 K14 [{"stories"}]
       33 DUPTABLE                         R5 K21 [{"AutoAdvanceOnHover", "AutoAdvanceOnHoverAndResetWhenHoveredOff", "AutoAdvanceOnlyIfNotHovered", "AutoAdvanceOnlyIfNotHoveredWithNav", "AlwaysAutoAdvance", "AlwaysAutoAdvanceWithoutAnimations"}]
       34 GETTABLEKS                       R6 R1 K22 ["createElement"]
       36 MOVE                             R7 R2
       37 DUPTABLE                         R8 K26 [{"AutoAdvanceTimer", "ImageStrings", "Size"}]
       38 LOADN                            R9 184
       39 SETTABLEKS                       R9 R8 K23 ["AutoAdvanceTimer"]
       41 SETTABLEKS                       R3 R8 K24 ["ImageStrings"]
       43 GETIMPORT                        R9 K29 [UDim2.fromOffset]
       45 LOADN                            R10 120
       46 LOADN                            R11 80
       47 CALL                             R9 2 1
       48 SETTABLEKS                       R9 R8 K25 ["Size"]
       50 CALL                             R6 2 1
       51 SETTABLEKS                       R6 R5 K15 ["AutoAdvanceOnHover"]
       53 GETTABLEKS                       R6 R1 K22 ["createElement"]
       55 MOVE                             R7 R2
       56 DUPTABLE                         R8 K31 [{"AutoAdvanceTimer", "ImageStrings", "ResetWhenHoveredOff", "Size"}]
       57 LOADN                            R9 184
       58 SETTABLEKS                       R9 R8 K23 ["AutoAdvanceTimer"]
       60 SETTABLEKS                       R3 R8 K24 ["ImageStrings"]
       62 LOADB                            R9 1
       63 SETTABLEKS                       R9 R8 K30 ["ResetWhenHoveredOff"]
       65 GETIMPORT                        R9 K29 [UDim2.fromOffset]
       67 LOADN                            R10 120
       68 LOADN                            R11 80
       69 CALL                             R9 2 1
       70 SETTABLEKS                       R9 R8 K25 ["Size"]
       72 CALL                             R6 2 1
       73 SETTABLEKS                       R6 R5 K16 ["AutoAdvanceOnHoverAndResetWhenHoveredOff"]
       75 GETTABLEKS                       R6 R1 K22 ["createElement"]
       77 MOVE                             R7 R2
       78 DUPTABLE                         R8 K33 [{"AutoAdvance", "AutoAdvanceTimer", "ImageStrings", "Size"}]
       79 LOADB                            R9 1
       80 SETTABLEKS                       R9 R8 K32 ["AutoAdvance"]
       82 LOADN                            R9 184
       83 SETTABLEKS                       R9 R8 K23 ["AutoAdvanceTimer"]
       85 SETTABLEKS                       R3 R8 K24 ["ImageStrings"]
       87 GETIMPORT                        R9 K29 [UDim2.fromOffset]
       89 LOADN                            R10 120
       90 LOADN                            R11 80
       91 CALL                             R9 2 1
       92 SETTABLEKS                       R9 R8 K25 ["Size"]
       94 CALL                             R6 2 1
       95 SETTABLEKS                       R6 R5 K17 ["AutoAdvanceOnlyIfNotHovered"]
       97 GETTABLEKS                       R6 R1 K22 ["createElement"]
       99 MOVE                             R7 R2
      100 DUPTABLE                         R8 K35 [{"AutoAdvance", "AutoAdvanceTimer", "ImageStrings", "ShowNavigationOnHover", "Size"}]
      101 LOADB                            R9 1
      102 SETTABLEKS                       R9 R8 K32 ["AutoAdvance"]
      104 LOADN                            R9 184
      105 SETTABLEKS                       R9 R8 K23 ["AutoAdvanceTimer"]
      107 SETTABLEKS                       R3 R8 K24 ["ImageStrings"]
      109 LOADB                            R9 1
      110 SETTABLEKS                       R9 R8 K34 ["ShowNavigationOnHover"]
      112 GETIMPORT                        R9 K29 [UDim2.fromOffset]
      114 LOADN                            R10 120
      115 LOADN                            R11 80
      116 CALL                             R9 2 1
      117 SETTABLEKS                       R9 R8 K25 ["Size"]
      119 CALL                             R6 2 1
      120 SETTABLEKS                       R6 R5 K18 ["AutoAdvanceOnlyIfNotHoveredWithNav"]
      122 GETTABLEKS                       R6 R1 K22 ["createElement"]
      124 MOVE                             R7 R2
      125 DUPTABLE                         R8 K37 [{"AutoAdvance", "AutoAdvanceTimer", "DisableHoverToggle", "ImageStrings", "Size"}]
      126 LOADB                            R9 1
      127 SETTABLEKS                       R9 R8 K32 ["AutoAdvance"]
      129 LOADN                            R9 184
      130 SETTABLEKS                       R9 R8 K23 ["AutoAdvanceTimer"]
      132 LOADB                            R9 1
      133 SETTABLEKS                       R9 R8 K36 ["DisableHoverToggle"]
      135 SETTABLEKS                       R3 R8 K24 ["ImageStrings"]
      137 GETIMPORT                        R9 K29 [UDim2.fromOffset]
      139 LOADN                            R10 120
      140 LOADN                            R11 80
      141 CALL                             R9 2 1
      142 SETTABLEKS                       R9 R8 K25 ["Size"]
      144 CALL                             R6 2 1
      145 SETTABLEKS                       R6 R5 K19 ["AlwaysAutoAdvance"]
      147 GETTABLEKS                       R6 R1 K22 ["createElement"]
      149 MOVE                             R7 R2
      150 DUPTABLE                         R8 K39 [{"AutoAdvance", "AutoAdvanceTimer", "DisableAnimations", "DisableHoverToggle", "ImageStrings", "Size"}]
      151 LOADB                            R9 1
      152 SETTABLEKS                       R9 R8 K32 ["AutoAdvance"]
      154 LOADN                            R9 184
      155 SETTABLEKS                       R9 R8 K23 ["AutoAdvanceTimer"]
      157 LOADB                            R9 1
      158 SETTABLEKS                       R9 R8 K38 ["DisableAnimations"]
      160 LOADB                            R9 1
      161 SETTABLEKS                       R9 R8 K36 ["DisableHoverToggle"]
      163 SETTABLEKS                       R3 R8 K24 ["ImageStrings"]
      165 GETIMPORT                        R9 K29 [UDim2.fromOffset]
      167 LOADN                            R10 120
      168 LOADN                            R11 80
      169 CALL                             R9 2 1
      170 SETTABLEKS                       R9 R8 K25 ["Size"]
      172 CALL                             R6 2 1
      173 SETTABLEKS                       R6 R5 K20 ["AlwaysAutoAdvanceWithoutAnimations"]
      175 SETTABLEKS                       R5 R4 K13 ["stories"]
      177 RETURN                           R4 1
