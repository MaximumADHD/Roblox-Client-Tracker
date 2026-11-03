MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["Components"]
       22 GETTABLEKS                       R3 R3 K9 ["ImageCarousel"]
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
       37 DUPTABLE                         R8 K27 [{["AutoAdvanceTimer"] = 3000, ["ImageStrings"], ["Size"]}]
       38 SETTABLEKS                       R3 R8 K25 ["ImageStrings"]
       40 GETIMPORT                        R9 K30 [UDim2.fromOffset]
       42 LOADN                            R10 120
       43 LOADN                            R11 80
       44 CALL                             R9 2 1
       45 SETTABLEKS                       R9 R8 K26 ["Size"]
       47 CALL                             R6 2 1
       48 SETTABLEKS                       R6 R5 K15 ["AutoAdvanceOnHover"]
       50 GETTABLEKS                       R6 R1 K22 ["createElement"]
       52 MOVE                             R7 R2
       53 DUPTABLE                         R8 K33 [{["AutoAdvanceTimer"] = 3000, ["ImageStrings"], ["ResetWhenHoveredOff"] = True, ["Size"]}]
       54 SETTABLEKS                       R3 R8 K25 ["ImageStrings"]
       56 GETIMPORT                        R9 K30 [UDim2.fromOffset]
       58 LOADN                            R10 120
       59 LOADN                            R11 80
       60 CALL                             R9 2 1
       61 SETTABLEKS                       R9 R8 K26 ["Size"]
       63 CALL                             R6 2 1
       64 SETTABLEKS                       R6 R5 K16 ["AutoAdvanceOnHoverAndResetWhenHoveredOff"]
       66 GETTABLEKS                       R6 R1 K22 ["createElement"]
       68 MOVE                             R7 R2
       69 DUPTABLE                         R8 K35 [{["AutoAdvance"] = True, ["AutoAdvanceTimer"] = 3000, ["ImageStrings"], ["Size"]}]
       70 SETTABLEKS                       R3 R8 K25 ["ImageStrings"]
       72 GETIMPORT                        R9 K30 [UDim2.fromOffset]
       74 LOADN                            R10 120
       75 LOADN                            R11 80
       76 CALL                             R9 2 1
       77 SETTABLEKS                       R9 R8 K26 ["Size"]
       79 CALL                             R6 2 1
       80 SETTABLEKS                       R6 R5 K17 ["AutoAdvanceOnlyIfNotHovered"]
       82 GETTABLEKS                       R6 R1 K22 ["createElement"]
       84 MOVE                             R7 R2
       85 DUPTABLE                         R8 K37 [{["AutoAdvance"] = True, ["AutoAdvanceTimer"] = 3000, ["ImageStrings"], ["ShowNavigationOnHover"] = True, ["Size"]}]
       86 SETTABLEKS                       R3 R8 K25 ["ImageStrings"]
       88 GETIMPORT                        R9 K30 [UDim2.fromOffset]
       90 LOADN                            R10 120
       91 LOADN                            R11 80
       92 CALL                             R9 2 1
       93 SETTABLEKS                       R9 R8 K26 ["Size"]
       95 CALL                             R6 2 1
       96 SETTABLEKS                       R6 R5 K18 ["AutoAdvanceOnlyIfNotHoveredWithNav"]
       98 GETTABLEKS                       R6 R1 K22 ["createElement"]
      100 MOVE                             R7 R2
      101 DUPTABLE                         R8 K39 [{["AutoAdvance"] = True, ["AutoAdvanceTimer"] = 3000, ["DisableHoverToggle"] = True, ["ImageStrings"], ["Size"]}]
      102 SETTABLEKS                       R3 R8 K25 ["ImageStrings"]
      104 GETIMPORT                        R9 K30 [UDim2.fromOffset]
      106 LOADN                            R10 120
      107 LOADN                            R11 80
      108 CALL                             R9 2 1
      109 SETTABLEKS                       R9 R8 K26 ["Size"]
      111 CALL                             R6 2 1
      112 SETTABLEKS                       R6 R5 K19 ["AlwaysAutoAdvance"]
      114 GETTABLEKS                       R6 R1 K22 ["createElement"]
      116 MOVE                             R7 R2
      117 DUPTABLE                         R8 K41 [{["AutoAdvance"] = True, ["AutoAdvanceTimer"] = 3000, ["DisableAnimations"] = True, ["DisableHoverToggle"] = True, ["ImageStrings"], ["Size"]}]
      118 SETTABLEKS                       R3 R8 K25 ["ImageStrings"]
      120 GETIMPORT                        R9 K30 [UDim2.fromOffset]
      122 LOADN                            R10 120
      123 LOADN                            R11 80
      124 CALL                             R9 2 1
      125 SETTABLEKS                       R9 R8 K26 ["Size"]
      127 CALL                             R6 2 1
      128 SETTABLEKS                       R6 R5 K20 ["AlwaysAutoAdvanceWithoutAnimations"]
      130 SETTABLEKS                       R5 R4 K13 ["stories"]
      132 RETURN                           R4 1
