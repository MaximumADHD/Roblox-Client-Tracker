PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETUPVAL                         R2 0
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K0 ["SECONDS_IN_MS"]
        9 DIV                              R1 R2 R3
       10 FASTCALL1                        MATH_FLOOR R1 ; [+2]
       11 GETIMPORT                        R0 K3 [math.floor]
       13 CALL                             R0 1 1
       14 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["fromRawValue"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 LOADB                            R0 1
        1 GETUPVAL                         R1 0
        2 JUMPIFEQKNIL                     R1 ; [+6]
        4 GETUPVAL                         R1 0
        5 JUMPIFEQKS                       R1 K0 [""] ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R2 2
        5 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R1 3
        9 GETTABLEKS                       R0 R1 K1 ["markNotificationRead"]
       11 GETUPVAL                         R2 4
       12 GETTABLEKS                       R1 R2 K2 ["Index"]
       14 CALL                             R0 1 0
       15 GETUPVAL                         R2 5
       16 GETTABLEKS                       R1 R2 K3 ["eventHandlers"]
       18 GETTABLEKS                       R0 R1 K4 ["notificationClicked"]
       20 GETUPVAL                         R2 4
       21 GETTABLEKS                       R1 R2 K5 ["Notification"]
       23 GETUPVAL                         R3 4
       24 GETTABLEKS                       R2 R3 K2 ["Index"]
       26 CALL                             R0 2 0
       27 GETUPVAL                         R0 6
       28 JUMPIF                           R0 ; [+9]
       29 GETUPVAL                         R0 0
       30 JUMPIF                           R0 ; [+7]
       31 GETUPVAL                         R2 3
       32 GETTABLEKS                       R1 R2 K6 ["notificationClient"]
       34 GETTABLEKS                       R0 R1 K1 ["markNotificationRead"]
       36 GETUPVAL                         R1 7
       37 CALL                             R0 1 0
       38 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 NOT                              R0 R1
        2 JUMPIFNOT                        R0 ; [+4]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["menuVisible"]
        6 NOT                              R0 R1
        7 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADK                            R3 K0 ["Notification"]
        3 LOADK                            R4 K1 ["notificationId"]
        4 CALL                             R1 3 1
        5 GETUPVAL                         R2 0
        6 MOVE                             R3 R0
        7 LOADK                            R4 K0 ["Notification"]
        8 LOADK                            R5 K2 ["creatorStreamNotificationContent"]
        9 LOADK                            R6 K3 ["title"]
       10 CALL                             R2 4 1
       11 GETUPVAL                         R3 0
       12 MOVE                             R4 R0
       13 LOADK                            R5 K0 ["Notification"]
       14 LOADK                            R6 K4 ["parameters"]
       15 CALL                             R3 3 1
       16 GETUPVAL                         R4 0
       17 MOVE                             R5 R0
       18 LOADK                            R6 K0 ["Notification"]
       19 LOADK                            R7 K2 ["creatorStreamNotificationContent"]
       20 LOADK                            R8 K5 ["body"]
       21 CALL                             R4 4 1
       22 GETUPVAL                         R5 0
       23 MOVE                             R6 R0
       24 LOADK                            R7 K0 ["Notification"]
       25 LOADK                            R8 K2 ["creatorStreamNotificationContent"]
       26 LOADK                            R9 K6 ["targetId"]
       27 CALL                             R5 4 1
       28 GETUPVAL                         R6 0
       29 MOVE                             R7 R0
       30 LOADK                            R8 K0 ["Notification"]
       31 LOADK                            R9 K2 ["creatorStreamNotificationContent"]
       32 LOADK                            R10 K7 ["targetType"]
       33 CALL                             R6 4 1
       34 GETUPVAL                         R7 0
       35 MOVE                             R8 R0
       36 LOADK                            R9 K0 ["Notification"]
       37 LOADK                            R10 K8 ["read"]
       38 CALL                             R7 3 1
       39 GETUPVAL                         R8 0
       40 MOVE                             R9 R0
       41 LOADK                            R10 K0 ["Notification"]
       42 LOADK                            R11 K2 ["creatorStreamNotificationContent"]
       43 LOADK                            R12 K9 ["clickAction"]
       44 CALL                             R8 4 1
       45 GETUPVAL                         R9 0
       46 MOVE                             R10 R0
       47 LOADK                            R11 K0 ["Notification"]
       48 LOADK                            R12 K10 ["createdUtcTimeInMs"]
       49 CALL                             R9 3 1
       50 GETUPVAL                         R11 1
       51 GETTABLEKS                       R10 R11 K11 ["useMemo"]
       53 NEWCLOSURE                       R11 P0
       54 CAPTURE                          VAL R9
       55 CAPTURE                          UPVAL U2
       56 NEWTABLE                         R12 0 1
       58 MOVE                             R13 R9
       59 SETLIST                          R12 R13 1 [1]
       61 CALL                             R10 2 1
       62 GETUPVAL                         R12 1
       63 GETTABLEKS                       R11 R12 K11 ["useMemo"]
       65 NEWCLOSURE                       R12 P1
       66 CAPTURE                          UPVAL U3
       67 CAPTURE                          VAL R6
       68 NEWTABLE                         R13 0 1
       70 MOVE                             R14 R6
       71 SETLIST                          R13 R14 1 [1]
       73 CALL                             R11 2 1
       74 GETUPVAL                         R13 1
       75 GETTABLEKS                       R12 R13 K12 ["useContext"]
       77 GETUPVAL                         R13 4
       78 CALL                             R12 1 1
       79 GETUPVAL                         R14 1
       80 GETTABLEKS                       R13 R14 K12 ["useContext"]
       82 GETUPVAL                         R14 5
       83 CALL                             R13 1 1
       84 GETUPVAL                         R14 6
       85 NAMECALL                         R14 R14 K13 ["use"]
       87 CALL                             R14 1 1
       88 GETUPVAL                         R15 7
       89 MOVE                             R16 R10
       90 CALL                             R15 1 1
       91 GETUPVAL                         R17 1
       92 GETTABLEKS                       R16 R17 K11 ["useMemo"]
       94 NEWCLOSURE                       R17 P2
       95 CAPTURE                          VAL R8
       96 NEWTABLE                         R18 0 1
       98 MOVE                             R19 R8
       99 SETLIST                          R18 R19 1 [1]
      101 CALL                             R16 2 1
      102 GETUPVAL                         R18 1
      103 GETTABLEKS                       R17 R18 K11 ["useMemo"]
      105 NEWCLOSURE                       R18 P3
      106 CAPTURE                          UPVAL U8
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R11
      109 NEWTABLE                         R19 0 2
      111 MOVE                             R20 R5
      112 MOVE                             R21 R11
      113 SETLIST                          R19 R20 2 [1]
      115 CALL                             R17 2 1
      116 GETUPVAL                         R19 1
      117 GETTABLEKS                       R18 R19 K11 ["useMemo"]
      119 NEWCLOSURE                       R19 P4
      120 CAPTURE                          UPVAL U9
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R11
      123 NEWTABLE                         R20 0 2
      125 MOVE                             R21 R5
      126 MOVE                             R22 R11
      127 SETLIST                          R20 R21 2 [1]
      129 CALL                             R18 2 1
      130 GETUPVAL                         R20 1
      131 GETTABLEKS                       R19 R20 K11 ["useMemo"]
      133 NEWCLOSURE                       R20 P5
      134 CAPTURE                          UPVAL U10
      135 CAPTURE                          VAL R2
      136 CAPTURE                          VAL R3
      137 NEWTABLE                         R21 0 2
      139 MOVE                             R22 R2
      140 MOVE                             R23 R3
      141 SETLIST                          R21 R22 2 [1]
      143 CALL                             R19 2 1
      144 GETUPVAL                         R21 1
      145 GETTABLEKS                       R20 R21 K11 ["useMemo"]
      147 NEWCLOSURE                       R21 P6
      148 CAPTURE                          UPVAL U11
      149 CAPTURE                          VAL R7
      150 CAPTURE                          VAL R16
      151 NEWTABLE                         R22 0 2
      153 MOVE                             R23 R7
      154 MOVE                             R24 R16
      155 SETLIST                          R22 R23 2 [1]
      157 CALL                             R20 2 1
      158 GETUPVAL                         R22 1
      159 GETTABLEKS                       R21 R22 K14 ["useCallback"]
      161 NEWCLOSURE                       R22 P7
      162 CAPTURE                          VAL R16
      163 CAPTURE                          UPVAL U12
      164 CAPTURE                          VAL R8
      165 CAPTURE                          VAL R12
      166 CAPTURE                          VAL R0
      167 CAPTURE                          VAL R14
      168 CAPTURE                          VAL R7
      169 CAPTURE                          VAL R1
      170 NEWTABLE                         R23 0 8
      172 MOVE                             R24 R8
      173 MOVE                             R25 R16
      174 MOVE                             R26 R1
      175 MOVE                             R27 R7
      176 GETTABLEKS                       R28 R0 K15 ["Index"]
      178 GETTABLEKS                       R29 R0 K0 ["Notification"]
      180 MOVE                             R30 R12
      181 MOVE                             R31 R14
      182 SETLIST                          R23 R24 8 [1]
      184 CALL                             R21 2 1
      185 GETUPVAL                         R23 1
      186 GETTABLEKS                       R22 R23 K11 ["useMemo"]
      188 NEWCLOSURE                       R23 P8
      189 CAPTURE                          VAL R16
      190 CAPTURE                          VAL R13
      191 NEWTABLE                         R24 0 2
      193 MOVE                             R25 R16
      194 GETTABLEKS                       R26 R13 K16 ["menuVisible"]
      196 SETLIST                          R24 R25 2 [1]
      198 CALL                             R22 2 1
      199 GETUPVAL                         R24 1
      200 GETTABLEKS                       R23 R24 K17 ["createElement"]
      202 LOADK                            R24 K18 ["Frame"]
      203 NEWTABLE                         R25 2 0
      205 GETTABLEKS                       R26 R0 K19 ["LayoutOrder"]
      207 SETTABLEKS                       R26 R25 K19 ["LayoutOrder"]
      209 GETUPVAL                         R27 1
      210 GETTABLEKS                       R26 R27 K20 ["Tag"]
      212 LOADK                            R27 K21 ["Component-InnerNotificationCard"]
      213 SETTABLE                         R27 R25 R26
      214 DUPTABLE                         R26 K23 [{"InnerCard"}]
      215 GETUPVAL                         R28 1
      216 GETTABLEKS                       R27 R28 K17 ["createElement"]
      218 LOADK                            R28 K24 ["TextButton"]
      219 NEWTABLE                         R29 8 0
      221 GETTABLEKS                       R30 R0 K19 ["LayoutOrder"]
      223 SETTABLEKS                       R30 R29 K19 ["LayoutOrder"]
      225 SETTABLEKS                       R22 R29 K25 ["Selectable"]
      227 LOADB                            R30 0
      228 SETTABLEKS                       R30 R29 K26 ["AutoButtonColor"]
      230 GETUPVAL                         R32 1
      231 GETTABLEKS                       R31 R32 K27 ["Event"]
      233 GETTABLEKS                       R30 R31 K28 ["MouseButton1Click"]
      235 SETTABLE                         R21 R29 R30
      236 GETUPVAL                         R31 1
      237 GETTABLEKS                       R30 R31 K20 ["Tag"]
      239 GETUPVAL                         R32 13
      240 GETTABLEKS                       R31 R32 K29 ["joinTags"]
      242 LOADK                            R32 K30 ["X-Left"]
      243 JUMPIFNOT                        R22 ; [+2]
      244 LOADK                            R33 K31 ["Plugin-NotificationCard-Hover"]
      245 JUMP                             ; [+1]
      246 LOADK                            R33 K32 ["Plugin-NotificationCard-HoverDisabled"]
      247 CALL                             R31 2 1
      248 SETTABLE                         R31 R29 R30
      249 DUPTABLE                         R30 K36 [{"Icon", "Content", "Status"}]
      250 GETUPVAL                         R32 1
      251 GETTABLEKS                       R31 R32 K17 ["createElement"]
      253 LOADK                            R32 K37 ["ImageLabel"]
      254 NEWTABLE                         R33 4 0
      256 SETTABLEKS                       R17 R33 K38 ["Image"]
      258 LOADN                            R34 1
      259 SETTABLEKS                       R34 R33 K19 ["LayoutOrder"]
      261 GETUPVAL                         R35 1
      262 GETTABLEKS                       R34 R35 K20 ["Tag"]
      264 GETUPVAL                         R36 13
      265 GETTABLEKS                       R35 R36 K29 ["joinTags"]
      267 LOADK                            R37 K39 ["%*"]
      268 MOVE                             R39 R18
      269 NAMECALL                         R37 R37 K40 ["format"]
      271 CALL                             R37 2 1
      272 MOVE                             R36 R37
      273 GETUPVAL                         R39 3
      274 GETTABLEKS                       R38 R39 K41 ["User"]
      276 JUMPIFNOTEQ                      R11 R38 ; [+3]
      278 LOADK                            R37 K42 ["Component-NotificationCard-User"]
      279 JUMP                             ; [+1]
      280 LOADNIL                          R37
      281 CALL                             R35 2 1
      282 SETTABLE                         R35 R33 R34
      283 CALL                             R31 2 1
      284 SETTABLEKS                       R31 R30 K33 ["Icon"]
      286 GETUPVAL                         R32 1
      287 GETTABLEKS                       R31 R32 K17 ["createElement"]
      289 GETUPVAL                         R32 14
      290 DUPTABLE                         R33 K45 [{"Subject", "Subline", "LayoutOrder"}]
      291 SETTABLEKS                       R19 R33 K43 ["Subject"]
      293 SETTABLEKS                       R4 R33 K44 ["Subline"]
      295 LOADN                            R34 2
      296 SETTABLEKS                       R34 R33 K19 ["LayoutOrder"]
      298 CALL                             R31 2 1
      299 SETTABLEKS                       R31 R30 K34 ["Content"]
      301 GETUPVAL                         R32 1
      302 GETTABLEKS                       R31 R32 K17 ["createElement"]
      304 GETUPVAL                         R32 15
      305 DUPTABLE                         R33 K48 [{"LayoutOrder", "ReadStatusIconTag", "ElapsedTime"}]
      306 LOADN                            R34 3
      307 SETTABLEKS                       R34 R33 K19 ["LayoutOrder"]
      309 SETTABLEKS                       R20 R33 K46 ["ReadStatusIconTag"]
      311 SETTABLEKS                       R15 R33 K47 ["ElapsedTime"]
      313 CALL                             R31 2 1
      314 SETTABLEKS                       R31 R30 K35 ["Status"]
      316 CALL                             R27 3 1
      317 SETTABLEKS                       R27 R26 K22 ["InnerCard"]
      319 CALL                             R23 3 -1
      320 RETURN                           R23 -1

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
       23 GETTABLEKS                       R3 R2 K8 ["Styling"]
       25 GETIMPORT                        R4 K10 [game]
       27 LOADK                            R6 K11 ["GuiService"]
       28 NAMECALL                         R4 R4 K12 ["GetService"]
       30 CALL                             R4 2 1
       31 GETIMPORT                        R5 K4 [require]
       33 GETIMPORT                        R8 K1 [script]
       35 GETTABLEKS                       R7 R8 K2 ["Parent"]
       37 GETTABLEKS                       R6 R7 K13 ["NotificationText"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K4 [require]
       42 GETIMPORT                        R9 K1 [script]
       44 GETTABLEKS                       R8 R9 K2 ["Parent"]
       46 GETTABLEKS                       R7 R8 K14 ["NotificationStatus"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K4 [require]
       51 GETTABLEKS                       R10 R0 K15 ["Src"]
       53 GETTABLEKS                       R9 R10 K16 ["Clients"]
       55 GETTABLEKS                       R8 R9 K17 ["NotificationClient"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K4 [require]
       60 GETTABLEKS                       R11 R0 K15 ["Src"]
       62 GETTABLEKS                       R10 R11 K18 ["Contexts"]
       64 GETTABLEKS                       R9 R10 K19 ["NotificationsContext"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K4 [require]
       69 GETTABLEKS                       R12 R0 K15 ["Src"]
       71 GETTABLEKS                       R11 R12 K18 ["Contexts"]
       73 GETTABLEKS                       R10 R11 K20 ["AnalyticsContext"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K4 [require]
       78 GETTABLEKS                       R13 R0 K15 ["Src"]
       80 GETTABLEKS                       R12 R13 K18 ["Contexts"]
       82 GETTABLEKS                       R11 R12 K21 ["MenuVisibleContext"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K4 [require]
       87 GETTABLEKS                       R14 R0 K15 ["Src"]
       89 GETTABLEKS                       R13 R14 K22 ["Enums"]
       91 GETTABLEKS                       R12 R13 K23 ["NotificationTargetType"]
       93 CALL                             R11 1 1
       94 GETIMPORT                        R12 K4 [require]
       96 GETTABLEKS                       R15 R0 K15 ["Src"]
       98 GETTABLEKS                       R14 R15 K24 ["Util"]
      100 GETTABLEKS                       R13 R14 K25 ["IconGetters"]
      102 CALL                             R12 1 1
      103 GETTABLEKS                       R13 R12 K26 ["getDynamicIconPath"]
      105 GETTABLEKS                       R14 R12 K27 ["getReadStatusIconTag"]
      107 GETTABLEKS                       R15 R12 K28 ["getStaticIconTag"]
      109 GETIMPORT                        R16 K4 [require]
      111 GETTABLEKS                       R19 R0 K15 ["Src"]
      113 GETTABLEKS                       R18 R19 K24 ["Util"]
      115 GETTABLEKS                       R17 R18 K29 ["interpolateNotificationSubject"]
      117 CALL                             R16 1 1
      118 GETIMPORT                        R17 K4 [require]
      120 GETTABLEKS                       R20 R0 K15 ["Src"]
      122 GETTABLEKS                       R19 R20 K24 ["Util"]
      124 GETTABLEKS                       R18 R19 K30 ["useRelativeTime"]
      126 CALL                             R17 1 1
      127 GETIMPORT                        R18 K4 [require]
      129 GETTABLEKS                       R21 R0 K15 ["Src"]
      131 GETTABLEKS                       R20 R21 K24 ["Util"]
      133 GETTABLEKS                       R19 R20 K31 ["optional"]
      135 CALL                             R18 1 1
      136 GETIMPORT                        R19 K4 [require]
      138 GETTABLEKS                       R22 R0 K15 ["Src"]
      140 GETTABLEKS                       R21 R22 K24 ["Util"]
      142 GETTABLEKS                       R20 R21 K32 ["TimeConstants"]
      144 CALL                             R19 1 1
      145 DUPCLOSURE                       R20 K33 [PROTO_9]
      146 CAPTURE                          VAL R18
      147 CAPTURE                          VAL R1
      148 CAPTURE                          VAL R19
      149 CAPTURE                          VAL R11
      150 CAPTURE                          VAL R8
      151 CAPTURE                          VAL R10
      152 CAPTURE                          VAL R9
      153 CAPTURE                          VAL R17
      154 CAPTURE                          VAL R13
      155 CAPTURE                          VAL R15
      156 CAPTURE                          VAL R16
      157 CAPTURE                          VAL R14
      158 CAPTURE                          VAL R4
      159 CAPTURE                          VAL R3
      160 CAPTURE                          VAL R5
      161 CAPTURE                          VAL R6
      162 RETURN                           R20 1
