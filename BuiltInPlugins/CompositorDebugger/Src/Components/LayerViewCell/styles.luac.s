MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".LayerViewCell"]
       20 DUPTABLE                         R5 K17 [{["BorderSizePixel"] = 1, ["BorderColor3"] = "$SecondaryHoverBackground", ["ClipsDescendants"] = True}]
       21 NEWTABLE                         R6 0 2
       23 MOVE                             R7 R2
       24 LOADK                            R8 K18 [".Section"]
       25 DUPTABLE                         R9 K22 [{["BackgroundColor3"] = "$SecondaryHoverBackground", ["BackgroundTransparency"] = 0}]
       26 CALL                             R7 2 1
       27 MOVE                             R8 R2
       28 LOADK                            R9 K23 [">> .ActionIcon"]
       29 DUPTABLE                         R10 K25 [{"Size"}]
       30 GETIMPORT                        R11 K28 [UDim2.fromOffset]
       32 LOADN                            R12 12
       33 LOADN                            R13 12
       34 CALL                             R11 2 1
       35 SETTABLEKS                       R11 R10 K24 ["Size"]
       37 CALL                             R8 2 -1
       38 SETLIST                          R6 R7 -1 [1]
       40 DUPTABLE                         R7 K35 [{["Indent"] = 20, ["CellSpacing"] = 5, ["ActionIconSize"] = 12}]
       41 CALL                             R3 4 -1
       42 RETURN                           R3 -1
