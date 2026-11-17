MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ModerationDialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleSheet"]
       18 DUPTABLE                         R3 K12 [{["CheckboxHoveredImage"] = "rbxasset://textures/DeveloperFramework/checkbox_unchecked_hover_light.png"}]
       19 MOVE                             R4 R2
       20 LOADK                            R5 K13 ["ModerationDialogLightTheme"]
       21 NEWTABLE                         R6 0 0
       23 MOVE                             R7 R3
       24 CALL                             R4 3 -1
       25 RETURN                           R4 -1
