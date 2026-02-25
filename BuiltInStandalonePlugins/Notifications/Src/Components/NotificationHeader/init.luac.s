PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["setMenuVisible"]
        3 LOADB                            R4 0
        4 CALL                             R3 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 2
        6 CALL                             R0 0 0
        7 GETUPVAL                         R2 3
        8 GETTABLEKS                       R1 R2 K1 ["eventHandlers"]
       10 GETTABLEKS                       R0 R1 K2 ["settingsButtonClicked"]
       12 CALL                             R0 0 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["markAllNotificationsRead"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K1 ["notificationClient"]
        9 GETTABLEKS                       R0 R1 K0 ["markAllNotificationsRead"]
       11 CALL                             R0 0 0
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R1 R2 K2 ["eventHandlers"]
       15 GETTABLEKS                       R0 R1 K3 ["markAllAsRead"]
       17 CALL                             R0 0 0
       18 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["trayVisible"]
        3 JUMPIF                           R0 ; [+5]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["setMenuVisible"]
        7 LOADB                            R1 0
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["useContext"]
        7 GETUPVAL                         R3 2
        8 CALL                             R2 1 1
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K1 ["useContext"]
       12 GETUPVAL                         R4 3
       13 CALL                             R3 1 1
       14 GETUPVAL                         R4 4
       15 NAMECALL                         R4 R4 K0 ["use"]
       17 CALL                             R4 1 1
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R5 R6 K1 ["useContext"]
       21 GETUPVAL                         R6 5
       22 CALL                             R5 1 1
       23 GETUPVAL                         R7 1
       24 GETTABLEKS                       R6 R7 K2 ["useCallback"]
       26 NEWCLOSURE                       R7 P0
       27 CAPTURE                          VAL R3
       28 NEWTABLE                         R8 0 0
       30 CALL                             R6 2 1
       31 GETUPVAL                         R8 1
       32 GETTABLEKS                       R7 R8 K2 ["useCallback"]
       34 NEWCLOSURE                       R8 P1
       35 CAPTURE                          UPVAL U6
       36 CAPTURE                          UPVAL U7
       37 CAPTURE                          VAL R6
       38 CAPTURE                          VAL R4
       39 NEWTABLE                         R9 0 2
       41 MOVE                             R10 R6
       42 MOVE                             R11 R4
       43 SETLIST                          R9 R10 2 [1]
       45 CALL                             R7 2 1
       46 GETUPVAL                         R9 1
       47 GETTABLEKS                       R8 R9 K2 ["useCallback"]
       49 NEWCLOSURE                       R9 P2
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R4
       53 NEWTABLE                         R10 0 3
       55 MOVE                             R11 R6
       56 MOVE                             R12 R4
       57 GETTABLEKS                       R13 R5 K3 ["notificationClient"]
       59 SETLIST                          R10 R11 3 [1]
       61 CALL                             R8 2 1
       62 GETUPVAL                         R10 1
       63 GETTABLEKS                       R9 R10 K4 ["useEffect"]
       65 NEWCLOSURE                       R10 P3
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R3
       68 NEWTABLE                         R11 0 1
       70 GETTABLEKS                       R12 R2 K5 ["trayVisible"]
       72 SETLIST                          R11 R12 1 [1]
       74 CALL                             R9 2 0
       75 GETUPVAL                         R10 1
       76 GETTABLEKS                       R9 R10 K6 ["createElement"]
       78 LOADK                            R10 K7 ["Frame"]
       79 NEWTABLE                         R11 2 0
       81 GETTABLEKS                       R12 R0 K8 ["LayoutOrder"]
       83 SETTABLEKS                       R12 R11 K8 ["LayoutOrder"]
       85 GETUPVAL                         R13 1
       86 GETTABLEKS                       R12 R13 K9 ["Tag"]
       88 LOADK                            R13 K10 ["Component-NotificationHeader"]
       89 SETTABLE                         R13 R11 R12
       90 DUPTABLE                         R12 K14 [{"Title", "MoreOptionsFrame", "DropdownMenu"}]
       91 GETUPVAL                         R14 1
       92 GETTABLEKS                       R13 R14 K6 ["createElement"]
       94 LOADK                            R14 K15 ["TextLabel"]
       95 DUPTABLE                         R15 K17 [{"Text"}]
       96 LOADK                            R18 K18 ["Plugin"]
       97 LOADK                            R19 K19 ["Name"]
       98 NAMECALL                         R16 R1 K20 ["getText"]
      100 CALL                             R16 3 1
      101 SETTABLEKS                       R16 R15 K16 ["Text"]
      103 CALL                             R13 2 1
      104 SETTABLEKS                       R13 R12 K11 ["Title"]
      106 GETUPVAL                         R14 1
      107 GETTABLEKS                       R13 R14 K6 ["createElement"]
      109 LOADK                            R14 K7 ["Frame"]
      110 NEWTABLE                         R15 0 0
      112 DUPTABLE                         R16 K23 [{"MarkAllAsRead", "MoreOptionsButton"}]
      113 GETUPVAL                         R18 1
      114 GETTABLEKS                       R17 R18 K6 ["createElement"]
      116 LOADK                            R18 K24 ["TextButton"]
      117 NEWTABLE                         R19 4 0
      119 LOADN                            R20 2
      120 SETTABLEKS                       R20 R19 K8 ["LayoutOrder"]
      122 GETUPVAL                         R22 1
      123 GETTABLEKS                       R21 R22 K25 ["Event"]
      125 GETTABLEKS                       R20 R21 K26 ["MouseButton1Click"]
      127 SETTABLE                         R8 R19 R20
      128 LOADK                            R20 K27 ["Mark all as read"]
      129 SETTABLEKS                       R20 R19 K16 ["Text"]
      131 CALL                             R17 2 1
      132 SETTABLEKS                       R17 R16 K21 ["MarkAllAsRead"]
      134 GETUPVAL                         R18 1
      135 GETTABLEKS                       R17 R18 K6 ["createElement"]
      137 LOADK                            R18 K28 ["ImageButton"]
      138 NEWTABLE                         R19 4 0
      140 LOADN                            R20 1
      141 SETTABLEKS                       R20 R19 K8 ["LayoutOrder"]
      143 LOADB                            R20 0
      144 SETTABLEKS                       R20 R19 K29 ["AutoButtonColor"]
      146 GETUPVAL                         R22 1
      147 GETTABLEKS                       R21 R22 K25 ["Event"]
      149 GETTABLEKS                       R20 R21 K26 ["MouseButton1Click"]
      151 SETTABLE                         R7 R19 R20
      152 GETUPVAL                         R21 1
      153 GETTABLEKS                       R20 R21 K9 ["Tag"]
      155 LOADK                            R21 K30 ["Plugin-Icon-NotificationSettings"]
      156 SETTABLE                         R21 R19 R20
      157 CALL                             R17 2 1
      158 SETTABLEKS                       R17 R16 K22 ["MoreOptionsButton"]
      160 CALL                             R13 3 1
      161 SETTABLEKS                       R13 R12 K12 ["MoreOptionsFrame"]
      163 GETTABLEKS                       R14 R3 K31 ["menuVisible"]
      165 JUMPIFNOT                        R14 ; [+13]
      166 GETUPVAL                         R14 1
      167 GETTABLEKS                       R13 R14 K6 ["createElement"]
      169 GETUPVAL                         R14 8
      170 DUPTABLE                         R15 K35 [{"OnDropdownMenuFocusLost", "OnSettingsClicked", "OnMarkAllAsReadClicked"}]
      171 SETTABLEKS                       R6 R15 K32 ["OnDropdownMenuFocusLost"]
      173 SETTABLEKS                       R7 R15 K33 ["OnSettingsClicked"]
      175 SETTABLEKS                       R8 R15 K34 ["OnMarkAllAsReadClicked"]
      177 CALL                             R13 2 1
      178 JUMP                             ; [+1]
      179 LOADNIL                          R13
      180 SETTABLEKS                       R13 R12 K13 ["DropdownMenu"]
      182 CALL                             R9 3 -1
      183 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R4 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R3 R4 K9 ["Localization"]
       27 GETTABLEKS                       R6 R2 K10 ["RobloxAPI"]
       29 GETTABLEKS                       R5 R6 K11 ["Url"]
       31 GETTABLEKS                       R4 R5 K12 ["new"]
       33 CALL                             R4 0 1
       34 GETIMPORT                        R5 K14 [game]
       36 LOADK                            R7 K15 ["GuiService"]
       37 NAMECALL                         R5 R5 K16 ["GetService"]
       39 CALL                             R5 2 1
       40 GETIMPORT                        R6 K4 [require]
       42 GETTABLEKS                       R9 R0 K17 ["Src"]
       44 GETTABLEKS                       R8 R9 K18 ["Contexts"]
       46 GETTABLEKS                       R7 R8 K19 ["TrayVisibleContext"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K4 [require]
       51 GETTABLEKS                       R10 R0 K17 ["Src"]
       53 GETTABLEKS                       R9 R10 K18 ["Contexts"]
       55 GETTABLEKS                       R8 R9 K20 ["MenuVisibleContext"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K4 [require]
       60 GETTABLEKS                       R11 R0 K17 ["Src"]
       62 GETTABLEKS                       R10 R11 K18 ["Contexts"]
       64 GETTABLEKS                       R9 R10 K21 ["AnalyticsContext"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K4 [require]
       69 GETTABLEKS                       R12 R0 K17 ["Src"]
       71 GETTABLEKS                       R11 R12 K18 ["Contexts"]
       73 GETTABLEKS                       R10 R11 K22 ["NotificationsContext"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K4 [require]
       78 GETIMPORT                        R13 K1 [script]
       80 GETTABLEKS                       R12 R13 K2 ["Parent"]
       82 GETTABLEKS                       R11 R12 K23 ["NotificationMenu"]
       84 CALL                             R10 1 1
       85 GETTABLEKS                       R11 R4 K24 ["composeUrl"]
       87 GETTABLEKS                       R12 R4 K25 ["CREATOR_HUB_URL"]
       89 LOADK                            R13 K26 ["settings/notifications"]
       90 CALL                             R11 2 1
       91 DUPCLOSURE                       R12 K27 [PROTO_4]
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R1
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R5
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R10
      101 RETURN                           R12 1
