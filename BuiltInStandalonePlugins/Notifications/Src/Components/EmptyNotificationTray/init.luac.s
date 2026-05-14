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
       33 JUMPIFNOT                        R0 ; [+142]
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
       51 DUPTABLE                         R7 K25 [{"LayoutOrder"}]
       52 LOADN                            R8 1
       53 SETTABLEKS                       R8 R7 K24 ["LayoutOrder"]
       55 CALL                             R5 2 1
       56 SETTABLEKS                       R5 R4 K19 ["ErrorImage"]
       58 GETUPVAL                         R5 1
       59 GETTABLEKS                       R5 R5 K3 ["createElement"]
       61 LOADK                            R6 K16 ["Frame"]
       62 NEWTABLE                         R7 8 0
       64 LOADN                            R8 2
       65 SETTABLEKS                       R8 R7 K24 ["LayoutOrder"]
       67 GETIMPORT                        R8 K9 [UDim2.new]
       69 LOADN                            R9 1
       70 LOADN                            R10 0
       71 LOADN                            R11 0
       72 LOADN                            R12 0
       73 CALL                             R8 4 1
       74 SETTABLEKS                       R8 R7 K26 ["Size"]
       76 GETIMPORT                        R8 K30 [Enum.AutomaticSize.Y]
       78 SETTABLEKS                       R8 R7 K28 ["AutomaticSize"]
       80 LOADN                            R8 1
       81 SETTABLEKS                       R8 R7 K31 ["BackgroundTransparency"]
       83 LOADN                            R8 0
       84 SETTABLEKS                       R8 R7 K32 ["BorderSizePixel"]
       86 GETUPVAL                         R8 1
       87 GETTABLEKS                       R8 R8 K17 ["Tag"]
       89 LOADK                            R9 K33 ["X-Column"]
       90 SETTABLE                         R9 R7 R8
       91 DUPTABLE                         R8 K36 [{"Mainline", "Subline"}]
       92 GETUPVAL                         R9 1
       93 GETTABLEKS                       R9 R9 K3 ["createElement"]
       95 LOADK                            R10 K37 ["TextLabel"]
       96 NEWTABLE                         R11 4 0
       98 LOADN                            R12 1
       99 SETTABLEKS                       R12 R11 K24 ["LayoutOrder"]
      101 GETUPVAL                         R12 3
      102 LOADK                            R14 K38 ["EmptyNotificationTray"]
      103 LOADK                            R15 K39 ["LoadErrorMain"]
      104 NAMECALL                         R12 R12 K40 ["getText"]
      106 CALL                             R12 3 1
      107 SETTABLEKS                       R12 R11 K41 ["Text"]
      109 GETUPVAL                         R12 1
      110 GETTABLEKS                       R12 R12 K17 ["Tag"]
      112 LOADK                            R13 K42 ["Component-EmptyNotificationTray-MainText"]
      113 SETTABLE                         R13 R11 R12
      114 CALL                             R9 2 1
      115 SETTABLEKS                       R9 R8 K34 ["Mainline"]
      117 GETUPVAL                         R9 1
      118 GETTABLEKS                       R9 R9 K3 ["createElement"]
      120 LOADK                            R10 K37 ["TextLabel"]
      121 NEWTABLE                         R11 4 0
      123 LOADN                            R12 2
      124 SETTABLEKS                       R12 R11 K24 ["LayoutOrder"]
      126 GETUPVAL                         R12 3
      127 LOADK                            R14 K38 ["EmptyNotificationTray"]
      128 LOADK                            R15 K43 ["LoadErrorSub"]
      129 NAMECALL                         R12 R12 K40 ["getText"]
      131 CALL                             R12 3 1
      132 SETTABLEKS                       R12 R11 K41 ["Text"]
      134 GETUPVAL                         R12 1
      135 GETTABLEKS                       R12 R12 K17 ["Tag"]
      137 LOADK                            R13 K44 ["Component-EmptyNotificationTray-SubText"]
      138 SETTABLE                         R13 R11 R12
      139 CALL                             R9 2 1
      140 SETTABLEKS                       R9 R8 K35 ["Subline"]
      142 CALL                             R5 3 1
      143 SETTABLEKS                       R5 R4 K20 ["TextContent"]
      145 GETUPVAL                         R5 1
      146 GETTABLEKS                       R5 R5 K3 ["createElement"]
      148 LOADK                            R6 K45 ["TextButton"]
      149 NEWTABLE                         R7 4 0
      151 LOADN                            R8 3
      152 SETTABLEKS                       R8 R7 K24 ["LayoutOrder"]
      154 GETUPVAL                         R8 3
      155 LOADK                            R10 K38 ["EmptyNotificationTray"]
      156 LOADK                            R11 K46 ["RefreshAction"]
      157 NAMECALL                         R8 R8 K40 ["getText"]
      159 CALL                             R8 3 1
      160 SETTABLEKS                       R8 R7 K41 ["Text"]
      162 GETUPVAL                         R8 1
      163 GETTABLEKS                       R8 R8 K47 ["Event"]
      165 GETTABLEKS                       R8 R8 K48 ["MouseButton1Click"]
      167 GETUPVAL                         R9 4
      168 SETTABLE                         R9 R7 R8
      169 CALL                             R5 2 1
      170 SETTABLEKS                       R5 R4 K21 ["RefreshButton"]
      172 CALL                             R1 3 1
      173 SETTABLEKS                       R1 R0 K14 ["ErrorState"]
      175 RETURN                           R0 1
      176 DUPTABLE                         R0 K50 [{"EmptyState"}]
      177 GETUPVAL                         R1 1
      178 GETTABLEKS                       R1 R1 K3 ["createElement"]
      180 LOADK                            R2 K16 ["Frame"]
      181 NEWTABLE                         R3 1 0
      183 GETUPVAL                         R4 1
      184 GETTABLEKS                       R4 R4 K17 ["Tag"]
      186 LOADK                            R5 K51 ["Component-EmptyNotificationTray-Centering"]
      187 SETTABLE                         R5 R3 R4
      188 DUPTABLE                         R4 K53 [{"EmptyImage", "TextLabel"}]
      189 GETUPVAL                         R5 1
      190 GETTABLEKS                       R5 R5 K3 ["createElement"]
      192 LOADK                            R6 K23 ["ImageLabel"]
      193 DUPTABLE                         R7 K25 [{"LayoutOrder"}]
      194 LOADN                            R8 1
      195 SETTABLEKS                       R8 R7 K24 ["LayoutOrder"]
      197 CALL                             R5 2 1
      198 SETTABLEKS                       R5 R4 K52 ["EmptyImage"]
      200 GETUPVAL                         R5 1
      201 GETTABLEKS                       R5 R5 K3 ["createElement"]
      203 LOADK                            R6 K37 ["TextLabel"]
      204 NEWTABLE                         R7 4 0
      206 LOADN                            R8 2
      207 SETTABLEKS                       R8 R7 K24 ["LayoutOrder"]
      209 GETUPVAL                         R8 3
      210 LOADK                            R10 K38 ["EmptyNotificationTray"]
      211 LOADK                            R11 K54 ["NoNewNotifications"]
      212 NAMECALL                         R8 R8 K40 ["getText"]
      214 CALL                             R8 3 1
      215 SETTABLEKS                       R8 R7 K41 ["Text"]
      217 GETUPVAL                         R8 1
      218 GETTABLEKS                       R8 R8 K17 ["Tag"]
      220 LOADK                            R9 K44 ["Component-EmptyNotificationTray-SubText"]
      221 SETTABLE                         R9 R7 R8
      222 CALL                             R5 2 1
      223 SETTABLEKS                       R5 R4 K37 ["TextLabel"]
      225 CALL                             R1 3 1
      226 SETTABLEKS                       R1 R0 K49 ["EmptyState"]
      228 RETURN                           R0 1

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
