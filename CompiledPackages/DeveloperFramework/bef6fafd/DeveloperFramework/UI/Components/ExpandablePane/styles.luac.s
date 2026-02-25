MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Styling"]
       13 GETTABLEKS                       R2 R3 K8 ["createStyleRule"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R4 R0 K9 ["SharedFlags"]
       20 GETTABLEKS                       R3 R4 K10 ["getFFlagDevFrameworkCompactTreeTable"]
       22 CALL                             R2 1 1
       23 CALL                             R2 0 1
       24 MOVE                             R3 R1
       25 LOADK                            R4 K11 [".Component-ExpandablePane"]
       26 NEWTABLE                         R5 0 0
       28 NEWTABLE                         R6 0 3
       30 MOVE                             R7 R1
       31 LOADK                            R8 K12 ["> .Header > .Arrow"]
       32 DUPTABLE                         R9 K15 [{"Image", "Size"}]
       33 LOADK                            R10 K16 ["$ArrowRightImage"]
       34 SETTABLEKS                       R10 R9 K13 ["Image"]
       36 GETIMPORT                        R10 K19 [UDim2.fromOffset]
       38 LOADN                            R11 16
       39 LOADN                            R12 16
       40 CALL                             R10 2 1
       41 SETTABLEKS                       R10 R9 K14 ["Size"]
       43 CALL                             R7 2 1
       44 MOVE                             R8 R1
       45 LOADK                            R9 K20 [".Expanded > .Header > .Arrow"]
       46 DUPTABLE                         R10 K21 [{"Image"}]
       47 LOADK                            R11 K22 ["$ArrowDownImage"]
       48 SETTABLEKS                       R11 R10 K13 ["Image"]
       50 CALL                             R8 2 1
       51 JUMPIFNOT                        R2 ; [+27]
       52 MOVE                             R9 R1
       53 LOADK                            R10 K23 [".compact"]
       54 NEWTABLE                         R11 0 0
       56 NEWTABLE                         R12 0 2
       58 MOVE                             R13 R1
       59 LOADK                            R14 K12 ["> .Header > .Arrow"]
       60 DUPTABLE                         R15 K25 [{"Image", "ImageColor3"}]
       61 LOADK                            R16 K26 ["rbxasset://studio_svg_textures/Lua/Explorer/Light/Standard/collapsed.png"]
       62 SETTABLEKS                       R16 R15 K13 ["Image"]
       64 LOADK                            R16 K27 ["$SemanticColorContentMuted"]
       65 SETTABLEKS                       R16 R15 K24 ["ImageColor3"]
       67 CALL                             R13 2 1
       68 MOVE                             R14 R1
       69 LOADK                            R15 K20 [".Expanded > .Header > .Arrow"]
       70 DUPTABLE                         R16 K21 [{"Image"}]
       71 LOADK                            R17 K28 ["rbxasset://studio_svg_textures/Lua/Explorer/Light/Standard/expanded.png"]
       72 SETTABLEKS                       R17 R16 K13 ["Image"]
       74 CALL                             R14 2 -1
       75 SETLIST                          R12 R13 -1 [1]
       77 CALL                             R9 3 1
       78 JUMP                             ; [+1]
       79 LOADNIL                          R9
       80 SETLIST                          R6 R7 3 [1]
       82 DUPTABLE                         R7 K31 [{"ArrowSize", "Spacing"}]
       83 LOADN                            R8 16
       84 SETTABLEKS                       R8 R7 K29 ["ArrowSize"]
       86 LOADN                            R8 10
       87 SETTABLEKS                       R8 R7 K30 ["Spacing"]
       89 CALL                             R3 4 -1
       90 RETURN                           R3 -1
