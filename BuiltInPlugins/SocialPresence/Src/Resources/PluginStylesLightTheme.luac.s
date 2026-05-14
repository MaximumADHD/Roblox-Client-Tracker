MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SocialPresence"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleSheet"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R0 K10 ["Bin"]
       22 GETTABLEKS                       R4 R4 K11 ["defineLuaFlags"]
       24 CALL                             R3 1 1
       25 DUPTABLE                         R4 K14 [{"ActivityRingImage", "AddCollaboratorIcon"}]
       26 LOADK                            R5 K15 ["rbxasset://studio_svg_textures/Lua/SocialPresence/Light/Large/ActivityRing.png"]
       27 SETTABLEKS                       R5 R4 K12 ["ActivityRingImage"]
       29 GETTABLEKS                       R6 R3 K16 ["getFFlagFixOldRibbonCollaborateIcon"]
       31 CALL                             R6 0 1
       32 JUMPIFNOT                        R6 ; [+2]
       33 LOADK                            R5 K17 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/AddCollaborator.png"]
       34 JUMP                             ; [+1]
       35 LOADK                            R5 K18 ["rbxasset://studio_svg_textures/Shared/WidgetIcons/Light/Standard/AddCollaborator.png"]
       36 SETTABLEKS                       R5 R4 K13 ["AddCollaboratorIcon"]
       38 MOVE                             R5 R2
       39 LOADK                            R6 K19 ["SocialPresenceLightTheme"]
       40 NEWTABLE                         R7 0 0
       42 MOVE                             R8 R4
       43 CALL                             R5 3 -1
       44 RETURN                           R5 -1
