MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CancellableDialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleSheet"]
       18 DUPTABLE                         R3 K15 [{"LoadingSpinnerImage", "CancelButtonBorderSizePixel", "CancelButtonBorderColor3", "CancelButtonBorderTransparency", "SemanticColorBackdrop"}]
       19 LOADK                            R4 K16 ["rbxasset://studio_svg_textures/Lua/Dialog/Light/Standard/Spinner.png"]
       20 SETTABLEKS                       R4 R3 K10 ["LoadingSpinnerImage"]
       22 LOADN                            R4 1
       23 SETTABLEKS                       R4 R3 K11 ["CancelButtonBorderSizePixel"]
       25 LOADK                            R4 K17 ["$Gray50"]
       26 SETTABLEKS                       R4 R3 K12 ["CancelButtonBorderColor3"]
       28 LOADN                            R4 0
       29 SETTABLEKS                       R4 R3 K13 ["CancelButtonBorderTransparency"]
       31 GETIMPORT                        R4 K20 [Color3.fromHex]
       33 LOADK                            R5 K21 ["#000000"]
       34 CALL                             R4 1 1
       35 SETTABLEKS                       R4 R3 K14 ["SemanticColorBackdrop"]
       37 MOVE                             R4 R2
       38 LOADK                            R5 K22 ["CancellableDialogLightTheme"]
       39 NEWTABLE                         R6 0 0
       41 MOVE                             R7 R3
       42 CALL                             R4 3 -1
       43 RETURN                           R4 -1
