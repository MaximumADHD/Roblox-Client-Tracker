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
       24 DUPTABLE                         R8 K14 [{["Image"] = "$ArrowRightImage", ["Size"]}]
       25 GETIMPORT                        R9 K17 [UDim2.fromOffset]
       27 LOADN                            R10 16
       28 LOADN                            R11 16
       29 CALL                             R9 2 1
       30 SETTABLEKS                       R9 R8 K13 ["Size"]
       32 CALL                             R6 2 1
       33 MOVE                             R7 R1
       34 LOADK                            R8 K18 [".Expanded > .Header > .Arrow"]
       35 DUPTABLE                         R9 K20 [{["Image"] = "$ArrowDownImage"}]
       36 CALL                             R7 2 1
       37 MOVE                             R8 R1
       38 LOADK                            R9 K21 [".compact"]
       39 NEWTABLE                         R10 0 0
       41 NEWTABLE                         R11 0 2
       43 MOVE                             R12 R1
       44 LOADK                            R13 K10 ["> .Header > .Arrow"]
       45 DUPTABLE                         R14 K25 [{["Image"] = "rbxasset://studio_svg_textures/Lua/Explorer/Light/Standard/collapsed.png", ["ImageColor3"] = "$SemanticColorContentMuted"}]
       46 CALL                             R12 2 1
       47 MOVE                             R13 R1
       48 LOADK                            R14 K18 [".Expanded > .Header > .Arrow"]
       49 DUPTABLE                         R15 K27 [{["Image"] = "rbxasset://studio_svg_textures/Lua/Explorer/Light/Standard/expanded.png"}]
       50 CALL                             R13 2 -1
       51 SETLIST                          R11 R12 -1 [1]
       53 CALL                             R8 3 -1
       54 SETLIST                          R5 R6 -1 [1]
       56 DUPTABLE                         R6 K32 [{["ArrowSize"] = 16, ["Spacing"] = 10}]
       57 CALL                             R2 4 -1
       58 RETURN                           R2 -1
