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
       18 DUPTABLE                         R3 K19 [{["LoadingSpinnerImage"] = "rbxasset://studio_svg_textures/Lua/Dialog/Dark/Standard/Spinner.png", ["CancelButtonBorderSizePixel"] = 0, ["CancelButtonBorderColor3"] = "$Gray50", ["CancelButtonBorderTransparency"] = 1, ["SemanticColorBackdrop"]}]
       19 GETIMPORT                        R4 K22 [Color3.fromHex]
       21 LOADK                            R5 K23 ["#EEEEEE"]
       22 CALL                             R4 1 1
       23 SETTABLEKS                       R4 R3 K18 ["SemanticColorBackdrop"]
       25 MOVE                             R4 R2
       26 LOADK                            R5 K24 ["CancellableDialogDarkTheme"]
       27 NEWTABLE                         R6 0 0
       29 MOVE                             R7 R3
       30 CALL                             R4 3 -1
       31 RETURN                           R4 -1
