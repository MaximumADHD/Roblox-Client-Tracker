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
       29 DUPTABLE                         R4 K17 [{"NotificationScrollBarColor", "NotificationStatusDisabledIcon", "NotificationStatusUnreadIcon", "NotificationEmptyTrayIcon", "NotificationErrorIcon"}]
       30 GETIMPORT                        R5 K20 [Color3.fromHex]
       32 LOADK                            R6 K21 ["#565656"]
       33 CALL                             R5 1 1
       34 SETTABLEKS                       R5 R4 K12 ["NotificationScrollBarColor"]
       36 LOADK                            R5 K22 ["rbxasset://studio_svg_textures/Lua/Notifications/Light/Standard/NotificationBadgeDisabled.png"]
       37 SETTABLEKS                       R5 R4 K13 ["NotificationStatusDisabledIcon"]
       39 LOADK                            R5 K23 ["rbxasset://studio_svg_textures/Lua/Notifications/Light/Standard/NotificationBadgeUnread.png"]
       40 SETTABLEKS                       R5 R4 K14 ["NotificationStatusUnreadIcon"]
       42 LOADK                            R5 K24 ["rbxasset://studio_svg_textures/Lua/Notifications/Light/SI-Standard/Celebration.png"]
       43 SETTABLEKS                       R5 R4 K15 ["NotificationEmptyTrayIcon"]
       45 LOADK                            R5 K25 ["rbxasset://studio_svg_textures/Lua/Notifications/Light/SI-Standard/Oof.png"]
       46 SETTABLEKS                       R5 R4 K16 ["NotificationErrorIcon"]
       48 GETIMPORT                        R5 K27 [ipairs]
       50 MOVE                             R6 R3
       51 CALL                             R5 1 3
       52 FORGPREP_INEXT                   R5
       53 LOADK                            R11 K28 ["%*Icon"]
       54 MOVE                             R13 R9
       55 NAMECALL                         R11 R11 K29 ["format"]
       57 CALL                             R11 2 1
       58 MOVE                             R10 R11
       59 LOADK                            R12 K30 ["rbxasset://studio_svg_textures/Lua/Notifications/Light/Large/%*.png"]
       60 MOVE                             R14 R9
       61 NAMECALL                         R12 R12 K29 ["format"]
       63 CALL                             R12 2 1
       64 MOVE                             R11 R12
       65 SETTABLE                         R11 R4 R10
       66 FORGLOOP                         R5 2 [inext] ; [-14]
       68 MOVE                             R5 R2
       69 LOADK                            R6 K31 ["NotificationsPluginLightTheme"]
       70 NEWTABLE                         R7 0 0
       72 MOVE                             R8 R4
       73 CALL                             R5 3 -1
       74 RETURN                           R5 -1
