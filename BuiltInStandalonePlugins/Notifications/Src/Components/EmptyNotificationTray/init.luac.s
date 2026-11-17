PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnRetry"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Loading"]
        3 JUMPIFNOT                        R0 ; [+26]
        4 DUPTABLE                         R0 K2 [{"LoadingContent"}]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K3 ["createElement"]
        8 GETUPVAL                         R2 2
        9 DUPTABLE                         R3 K6 [{"Position", "AnchorPoint"}]
       10 GETIMPORT                        R4 K9 [UDim2.new]
       12 LOADK                            R5 K10 [0.5]
       13 LOADN                            R6 0
       14 LOADK                            R7 K10 [0.5]
       15 LOADN                            R8 0
       16 CALL                             R4 4 1
       17 SETTABLEKS                       R4 R3 K4 ["Position"]
       19 GETIMPORT                        R4 K12 [Vector2.new]
       21 LOADK                            R5 K10 [0.5]
       22 LOADK                            R6 K10 [0.5]
       23 CALL                             R4 2 1
       24 SETTABLEKS                       R4 R3 K5 ["AnchorPoint"]
       26 CALL                             R1 2 1
       27 SETTABLEKS                       R1 R0 K1 ["LoadingContent"]
       29 RETURN                           R0 1
       30 GETUPVAL                         R0 0
       31 GETTABLEKS                       R0 R0 K13 ["OnLoadError"]
       33 JUMPIFNOT                        R0 ; [+139]
       34 DUPTABLE                         R0 K15 [{"ErrorState"}]
       35 GETUPVAL                         R1 1
       36 GETTABLEKS                       R1 R1 K3 ["createElement"]
       38 LOADK                            R2 K16 ["Frame"]
       39 NEWTABLE                         R3 1 0
       41 GETUPVAL                         R4 1
       42 GETTABLEKS                       R4 R4 K17 ["Tag"]
       44 LOADK                            R5 K18 ["Component-EmptyNotificationTray-Centering Component-EmptyNotificationTray-ErrorLayout"]
       45 SETTABLE                         R5 R3 R4
       46 DUPTABLE                         R4 K22 [{"ErrorImage", "TextContent", "RefreshButton"}]
       47 GETUPVAL                         R5 1
       48 GETTABLEKS                       R5 R5 K3 ["createElement"]
       50 LOADK                            R6 K23 ["ImageLabel"]
       51 DUPTABLE                         R7 K26 [{["LayoutOrder"] = 1}]
       52 CALL                             R5 2 1
       53 SETTABLEKS                       R5 R4 K19 ["ErrorImage"]
       55 GETUPVAL                         R5 1
       56 GETTABLEKS                       R5 R5 K3 ["createElement"]
       58 LOADK                            R6 K16 ["Frame"]
       59 NEWTABLE                         R7 8 0
       61 LOADN                            R8 2
       62 SETTABLEKS                       R8 R7 K24 ["LayoutOrder"]
       64 GETIMPORT                        R8 K9 [UDim2.new]
       66 LOADN                            R9 1
       67 LOADN                            R10 0
       68 LOADN                            R11 0
       69 LOADN                            R12 0
       70 CALL                             R8 4 1
       71 SETTABLEKS                       R8 R7 K27 ["Size"]
       73 GETIMPORT                        R8 K31 [Enum.AutomaticSize.Y]
       75 SETTABLEKS                       R8 R7 K29 ["AutomaticSize"]
       77 LOADN                            R8 1
       78 SETTABLEKS                       R8 R7 K32 ["BackgroundTransparency"]
       80 LOADN                            R8 0
       81 SETTABLEKS                       R8 R7 K33 ["BorderSizePixel"]
       83 GETUPVAL                         R8 1
       84 GETTABLEKS                       R8 R8 K17 ["Tag"]
       86 LOADK                            R9 K34 ["X-Column"]
       87 SETTABLE                         R9 R7 R8
       88 DUPTABLE                         R8 K37 [{"Mainline", "Subline"}]
       89 GETUPVAL                         R9 1
       90 GETTABLEKS                       R9 R9 K3 ["createElement"]
       92 LOADK                            R10 K38 ["TextLabel"]
       93 NEWTABLE                         R11 4 0
       95 LOADN                            R12 1
       96 SETTABLEKS                       R12 R11 K24 ["LayoutOrder"]
       98 GETUPVAL                         R12 3
       99 LOADK                            R14 K39 ["EmptyNotificationTray"]
      100 LOADK                            R15 K40 ["LoadErrorMain"]
      101 NAMECALL                         R12 R12 K41 ["getText"]
      103 CALL                             R12 3 1
      104 SETTABLEKS                       R12 R11 K42 ["Text"]
      106 GETUPVAL                         R12 1
      107 GETTABLEKS                       R12 R12 K17 ["Tag"]
      109 LOADK                            R13 K43 ["Component-EmptyNotificationTray-MainText"]
      110 SETTABLE                         R13 R11 R12
      111 CALL                             R9 2 1
      112 SETTABLEKS                       R9 R8 K35 ["Mainline"]
      114 GETUPVAL                         R9 1
      115 GETTABLEKS                       R9 R9 K3 ["createElement"]
      117 LOADK                            R10 K38 ["TextLabel"]
      118 NEWTABLE                         R11 4 0
      120 LOADN                            R12 2
      121 SETTABLEKS                       R12 R11 K24 ["LayoutOrder"]
      123 GETUPVAL                         R12 3
      124 LOADK                            R14 K39 ["EmptyNotificationTray"]
      125 LOADK                            R15 K44 ["LoadErrorSub"]
      126 NAMECALL                         R12 R12 K41 ["getText"]
      128 CALL                             R12 3 1
      129 SETTABLEKS                       R12 R11 K42 ["Text"]
      131 GETUPVAL                         R12 1
      132 GETTABLEKS                       R12 R12 K17 ["Tag"]
      134 LOADK                            R13 K45 ["Component-EmptyNotificationTray-SubText"]
      135 SETTABLE                         R13 R11 R12
      136 CALL                             R9 2 1
      137 SETTABLEKS                       R9 R8 K36 ["Subline"]
      139 CALL                             R5 3 1
      140 SETTABLEKS                       R5 R4 K20 ["TextContent"]
      142 GETUPVAL                         R5 1
      143 GETTABLEKS                       R5 R5 K3 ["createElement"]
      145 LOADK                            R6 K46 ["TextButton"]
      146 NEWTABLE                         R7 4 0
      148 LOADN                            R8 3
      149 SETTABLEKS                       R8 R7 K24 ["LayoutOrder"]
      151 GETUPVAL                         R8 3
      152 LOADK                            R10 K39 ["EmptyNotificationTray"]
      153 LOADK                            R11 K47 ["RefreshAction"]
      154 NAMECALL                         R8 R8 K41 ["getText"]
      156 CALL                             R8 3 1
      157 SETTABLEKS                       R8 R7 K42 ["Text"]
      159 GETUPVAL                         R8 1
      160 GETTABLEKS                       R8 R8 K48 ["Event"]
      162 GETTABLEKS                       R8 R8 K49 ["MouseButton1Click"]
      164 GETUPVAL                         R9 4
      165 SETTABLE                         R9 R7 R8
      166 CALL                             R5 2 1
      167 SETTABLEKS                       R5 R4 K21 ["RefreshButton"]
      169 CALL                             R1 3 1
      170 SETTABLEKS                       R1 R0 K14 ["ErrorState"]
      172 RETURN                           R0 1
      173 DUPTABLE                         R0 K51 [{"EmptyState"}]
      174 GETUPVAL                         R1 1
      175 GETTABLEKS                       R1 R1 K3 ["createElement"]
      177 LOADK                            R2 K16 ["Frame"]
      178 NEWTABLE                         R3 1 0
      180 GETUPVAL                         R4 1
      181 GETTABLEKS                       R4 R4 K17 ["Tag"]
      183 LOADK                            R5 K52 ["Component-EmptyNotificationTray-Centering"]
      184 SETTABLE                         R5 R3 R4
      185 DUPTABLE                         R4 K54 [{"EmptyImage", "TextLabel"}]
      186 GETUPVAL                         R5 1
      187 GETTABLEKS                       R5 R5 K3 ["createElement"]
      189 LOADK                            R6 K23 ["ImageLabel"]
      190 DUPTABLE                         R7 K26 [{["LayoutOrder"] = 1}]
      191 CALL                             R5 2 1
      192 SETTABLEKS                       R5 R4 K53 ["EmptyImage"]
      194 GETUPVAL                         R5 1
      195 GETTABLEKS                       R5 R5 K3 ["createElement"]
      197 LOADK                            R6 K38 ["TextLabel"]
      198 NEWTABLE                         R7 4 0
      200 LOADN                            R8 2
      201 SETTABLEKS                       R8 R7 K24 ["LayoutOrder"]
      203 GETUPVAL                         R8 3
      204 LOADK                            R10 K39 ["EmptyNotificationTray"]
      205 LOADK                            R11 K55 ["NoNewNotifications"]
      206 NAMECALL                         R8 R8 K41 ["getText"]
      208 CALL                             R8 3 1
      209 SETTABLEKS                       R8 R7 K42 ["Text"]
      211 GETUPVAL                         R8 1
      212 GETTABLEKS                       R8 R8 K17 ["Tag"]
      214 LOADK                            R9 K45 ["Component-EmptyNotificationTray-SubText"]
      215 SETTABLE                         R9 R7 R8
      216 CALL                             R5 2 1
      217 SETTABLEKS                       R5 R4 K38 ["TextLabel"]
      219 CALL                             R1 3 1
      220 SETTABLEKS                       R1 R0 K50 ["EmptyState"]
      222 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useCallback"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R0
        9 NEWTABLE                         R4 0 1
       11 GETTABLEKS                       R5 R0 K2 ["OnRetry"]
       13 SETLIST                          R4 R5 1 [1]
       15 CALL                             R2 2 1
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K3 ["useMemo"]
       19 NEWCLOSURE                       R4 P1
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R2
       25 NEWTABLE                         R5 0 2
       27 GETTABLEKS                       R6 R0 K4 ["Loading"]
       29 GETTABLEKS                       R7 R0 K5 ["OnLoadError"]
       31 SETLIST                          R5 R6 2 [1]
       33 CALL                             R3 2 1
       34 GETUPVAL                         R4 1
       35 GETTABLEKS                       R4 R4 K6 ["createElement"]
       37 LOADK                            R5 K7 ["Frame"]
       38 NEWTABLE                         R6 2 0
       40 GETTABLEKS                       R7 R0 K8 ["LayoutOrder"]
       42 SETTABLEKS                       R7 R6 K8 ["LayoutOrder"]
       44 GETUPVAL                         R7 1
       45 GETTABLEKS                       R7 R7 K9 ["Tag"]
       47 LOADK                            R8 K10 ["Component-EmptyNotificationTray"]
       48 SETTABLE                         R8 R6 R7
       49 MOVE                             R7 R3
       50 CALL                             R4 3 -1
       51 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R3 R3 K9 ["Localization"]
       27 GETTABLEKS                       R4 R2 K10 ["UI"]
       29 GETTABLEKS                       R5 R4 K11 ["LoadingIndicator"]
       31 DUPCLOSURE                       R6 K12 [PROTO_2]
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R5
       35 RETURN                           R6 1
