MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R3 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".LayerViewCell"]
       20 DUPTABLE                         R5 K14 [{"BorderSizePixel", "BorderColor3", "ClipsDescendants"}]
       21 LOADN                            R6 1
       22 SETTABLEKS                       R6 R5 K11 ["BorderSizePixel"]
       24 LOADK                            R6 K15 ["$SecondaryHoverBackground"]
       25 SETTABLEKS                       R6 R5 K12 ["BorderColor3"]
       27 LOADB                            R6 1
       28 SETTABLEKS                       R6 R5 K13 ["ClipsDescendants"]
       30 NEWTABLE                         R6 0 2
       32 MOVE                             R7 R2
       33 LOADK                            R8 K16 [".Section"]
       34 DUPTABLE                         R9 K19 [{"BackgroundColor3", "BackgroundTransparency"}]
       35 LOADK                            R10 K15 ["$SecondaryHoverBackground"]
       36 SETTABLEKS                       R10 R9 K17 ["BackgroundColor3"]
       38 LOADN                            R10 0
       39 SETTABLEKS                       R10 R9 K18 ["BackgroundTransparency"]
       41 CALL                             R7 2 1
       42 MOVE                             R8 R2
       43 LOADK                            R9 K20 [">> .ActionIcon"]
       44 DUPTABLE                         R10 K22 [{"Size"}]
       45 GETIMPORT                        R11 K25 [UDim2.fromOffset]
       47 LOADN                            R12 12
       48 LOADN                            R13 12
       49 CALL                             R11 2 1
       50 SETTABLEKS                       R11 R10 K21 ["Size"]
       52 CALL                             R8 2 -1
       53 SETLIST                          R6 R7 -1 [1]
       55 DUPTABLE                         R7 K29 [{"Indent", "CellSpacing", "ActionIconSize"}]
       56 LOADN                            R8 20
       57 SETTABLEKS                       R8 R7 K26 ["Indent"]
       59 LOADN                            R8 5
       60 SETTABLEKS                       R8 R7 K27 ["CellSpacing"]
       62 LOADN                            R8 12
       63 SETTABLEKS                       R8 R7 K28 ["ActionIconSize"]
       65 CALL                             R3 4 -1
       66 RETURN                           R3 -1
