MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["Styling"]
       18 GETTABLEKS                       R2 R2 K8 ["createStyleSheet"]
       20 GETIMPORT                        R3 K4 [require]
       22 GETTABLEKS                       R4 R0 K9 ["Src"]
       24 GETTABLEKS                       R4 R4 K10 ["Resources"]
       26 GETTABLEKS                       R4 R4 K11 ["NotificationLuaIcons"]
       28 CALL                             R3 1 1
       29 DUPTABLE                         R4 K21 [{["NotificationScrollBarColor"], ["NotificationStatusDisabledIcon"] = "rbxasset://studio_svg_textures/Lua/Notifications/Light/Standard/NotificationBadgeDisabled.png", ["NotificationStatusUnreadIcon"] = "rbxasset://studio_svg_textures/Lua/Notifications/Light/Standard/NotificationBadgeUnread.png", ["NotificationEmptyTrayIcon"] = "rbxasset://studio_svg_textures/Lua/Notifications/Light/SI-Standard/Celebration.png", ["NotificationErrorIcon"] = "rbxasset://studio_svg_textures/Lua/Notifications/Light/SI-Standard/Oof.png"}]
       30 GETIMPORT                        R5 K24 [Color3.fromHex]
       32 LOADK                            R6 K25 ["#565656"]
       33 CALL                             R5 1 1
       34 SETTABLEKS                       R5 R4 K12 ["NotificationScrollBarColor"]
       36 GETIMPORT                        R5 K27 [ipairs]
       38 MOVE                             R6 R3
       39 CALL                             R5 1 3
       40 FORGPREP_INEXT                   R5
       41 LOADK                            R11 K28 ["%*Icon"]
       42 MOVE                             R13 R9
       43 NAMECALL                         R11 R11 K29 ["format"]
       45 CALL                             R11 2 1
       46 MOVE                             R10 R11
       47 LOADK                            R12 K30 ["rbxasset://studio_svg_textures/Lua/Notifications/Light/Large/%*.png"]
       48 MOVE                             R14 R9
       49 NAMECALL                         R12 R12 K29 ["format"]
       51 CALL                             R12 2 1
       52 MOVE                             R11 R12
       53 SETTABLE                         R11 R4 R10
       54 FORGLOOP                         R5 2 [inext] ; [-14]
       56 MOVE                             R5 R2
       57 LOADK                            R6 K31 ["NotificationsPluginLightTheme"]
       58 NEWTABLE                         R7 0 0
       60 MOVE                             R8 R4
       61 CALL                             R5 3 -1
       62 RETURN                           R5 -1
