MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Styling"]
       13 GETTABLEKS                       R2 R2 K8 ["createStyleRule"]
       15 CALL                             R1 1 1
       16 MOVE                             R2 R1
       17 LOADK                            R3 K9 [".Component-ExpandablePane"]
       18 NEWTABLE                         R4 0 0
       20 NEWTABLE                         R5 0 3
       22 MOVE                             R6 R1
       23 LOADK                            R7 K10 ["> .Header > .Arrow"]
       24 DUPTABLE                         R8 K13 [{"Image", "Size"}]
       25 LOADK                            R9 K14 ["$ArrowRightImage"]
       26 SETTABLEKS                       R9 R8 K11 ["Image"]
       28 GETIMPORT                        R9 K17 [UDim2.fromOffset]
       30 LOADN                            R10 16
       31 LOADN                            R11 16
       32 CALL                             R9 2 1
       33 SETTABLEKS                       R9 R8 K12 ["Size"]
       35 CALL                             R6 2 1
       36 MOVE                             R7 R1
       37 LOADK                            R8 K18 [".Expanded > .Header > .Arrow"]
       38 DUPTABLE                         R9 K19 [{"Image"}]
       39 LOADK                            R10 K20 ["$ArrowDownImage"]
       40 SETTABLEKS                       R10 R9 K11 ["Image"]
       42 CALL                             R7 2 1
       43 MOVE                             R8 R1
       44 LOADK                            R9 K21 [".compact"]
       45 NEWTABLE                         R10 0 0
       47 NEWTABLE                         R11 0 2
       49 MOVE                             R12 R1
       50 LOADK                            R13 K10 ["> .Header > .Arrow"]
       51 DUPTABLE                         R14 K23 [{"Image", "ImageColor3"}]
       52 LOADK                            R15 K24 ["rbxasset://studio_svg_textures/Lua/Explorer/Light/Standard/collapsed.png"]
       53 SETTABLEKS                       R15 R14 K11 ["Image"]
       55 LOADK                            R15 K25 ["$SemanticColorContentMuted"]
       56 SETTABLEKS                       R15 R14 K22 ["ImageColor3"]
       58 CALL                             R12 2 1
       59 MOVE                             R13 R1
       60 LOADK                            R14 K18 [".Expanded > .Header > .Arrow"]
       61 DUPTABLE                         R15 K19 [{"Image"}]
       62 LOADK                            R16 K26 ["rbxasset://studio_svg_textures/Lua/Explorer/Light/Standard/expanded.png"]
       63 SETTABLEKS                       R16 R15 K11 ["Image"]
       65 CALL                             R13 2 -1
       66 SETLIST                          R11 R12 -1 [1]
       68 CALL                             R8 3 -1
       69 SETLIST                          R5 R6 -1 [1]
       71 DUPTABLE                         R6 K29 [{"ArrowSize", "Spacing"}]
       72 LOADN                            R7 16
       73 SETTABLEKS                       R7 R6 K27 ["ArrowSize"]
       75 LOADN                            R7 10
       76 SETTABLEKS                       R7 R6 K28 ["Spacing"]
       78 CALL                             R2 4 -1
       79 RETURN                           R2 -1
