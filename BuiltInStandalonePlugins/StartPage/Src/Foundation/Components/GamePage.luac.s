PROTO_0:
        0 DUPTABLE                         R1 K3 [{"id", "text", "query"}]
        1 GETTABLEKS                       R2 R0 K4 ["Key"]
        3 SETTABLEKS                       R2 R1 K0 ["id"]
        5 GETTABLEKS                       R2 R0 K5 ["DropdownLabel"]
        7 SETTABLEKS                       R2 R1 K1 ["text"]
        9 GETTABLEKS                       R2 R0 K6 ["Query"]
       11 SETTABLEKS                       R2 R1 K2 ["query"]
       13 RETURN                           R1 1

PROTO_1:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETUPVAL                         R1 0
        3 MOVE                             R2 R0
        4 DUPCLOSURE                       R3 K0 [PROTO_0]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_2:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLEKS                       R7 R6 K0 ["id"]
        6 JUMPIFNOTEQ                      R7 R1 ; [+2]
        8 RETURN                           R6 1
        9 FORGLOOP                         R2 2 ; [-6]
       11 LOADNIL                          R2
       12 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["LuaStartPageHasOSDeprecationAlertBeenClosed"]
        2 NAMECALL                         R0 R0 K1 ["GetSetting"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["shouldShowWinOSDeprecationWarning"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["shouldShowMacOSDeprecationWarning"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["LuaStartPageIsOnGridView"]
        2 NAMECALL                         R0 R0 K1 ["GetSetting"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["CanSwapBetweenViews"]
        8 JUMPIF                           R2 ; [+4]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K3 ["IsDefaultGridView"]
       12 JUMPIF                           R1 ; [+4]
       13 LOADB                            R1 1
       14 JUMPIFEQKNIL                     R0 ; [+2]
       16 MOVE                             R1 R0
       17 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+11]
        2 GETUPVAL                         R1 0
        3 LENGTH                           R0 R1
        4 LOADN                            R1 0
        5 JUMPIFNOTLT                      R1 R0 ; [+7]
        7 GETUPVAL                         R0 1
        8 GETUPVAL                         R2 0
        9 GETTABLEN                        R1 R2 1
       10 GETTABLEKS                       R1 R1 K0 ["id"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 DUPTABLE                         R5 K5 [{"telemetryType", "upsellEntrySurface", "userId", "studioSid", "action"}]
        3 LOADK                            R6 K6 ["click"]
        4 SETTABLEKS                       R6 R5 K0 ["telemetryType"]
        6 SETTABLEKS                       R0 R5 K1 ["upsellEntrySurface"]
        8 GETUPVAL                         R6 2
        9 NAMECALL                         R6 R6 K7 ["GetUserId"]
       11 CALL                             R6 1 1
       12 SETTABLEKS                       R6 R5 K2 ["userId"]
       14 GETUPVAL                         R6 3
       15 NAMECALL                         R6 R6 K8 ["GetSessionId"]
       17 CALL                             R6 1 1
       18 SETTABLEKS                       R6 R5 K3 ["studioSid"]
       20 SETTABLEKS                       R1 R5 K4 ["action"]
       22 NAMECALL                         R2 R2 K9 ["log"]
       24 CALL                             R2 3 0
       25 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 CALL                             R2 0 -1
        3 NAMECALL                         R0 R0 K0 ["openLink"]
        5 CALL                             R0 -1 0
        6 GETUPVAL                         R0 2
        7 LOADK                            R1 K1 ["start_page"]
        8 LOADK                            R2 K2 ["view_details"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 CALL                             R2 0 -1
        3 NAMECALL                         R0 R0 K0 ["openLink"]
        5 CALL                             R0 -1 0
        6 GETUPVAL                         R0 2
        7 LOADK                            R1 K1 ["start_page"]
        8 LOADK                            R2 K2 ["start"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 CALL                             R2 0 -1
        3 NAMECALL                         R0 R0 K0 ["openLink"]
        5 CALL                             R0 -1 0
        6 GETUPVAL                         R0 2
        7 LOADK                            R1 K1 ["start_page_establish_trust"]
        8 LOADK                            R2 K2 ["view_details"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+3]
        4 GETUPVAL                         R0 2
        5 CALL                             R0 0 0
        6 JUMP                             ; [+6]
        7 GETUPVAL                         R0 3
        8 GETUPVAL                         R2 4
        9 CALL                             R2 0 -1
       10 NAMECALL                         R0 R0 K0 ["openLink"]
       12 CALL                             R0 -1 0
       13 GETUPVAL                         R0 5
       14 LOADK                            R1 K1 ["start_page_establish_trust"]
       15 LOADK                            R2 K2 ["start"]
       16 CALL                             R0 2 0
       17 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 CALL                             R2 0 -1
        3 NAMECALL                         R0 R0 K0 ["openLink"]
        5 CALL                             R0 -1 0
        6 GETUPVAL                         R0 2
        7 LOADK                            R1 K1 ["start_page_age_reverification"]
        8 LOADK                            R2 K2 ["view_details"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 CALL                             R2 0 -1
        3 NAMECALL                         R0 R0 K0 ["openLink"]
        5 CALL                             R0 -1 0
        6 GETUPVAL                         R0 2
        7 LOADK                            R1 K1 ["start_page_age_reverification"]
        8 LOADK                            R2 K2 ["start"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["LuaStartPageHasOSDeprecationAlertBeenClosed"]
        2 LOADB                            R3 1
        3 NAMECALL                         R0 R0 K1 ["SetSetting"]
        5 CALL                             R0 3 0
        6 GETUPVAL                         R0 1
        7 LOADB                            R1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["openLink"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQ                         R0 R1 ; [+42]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 DUPTABLE                         R4 K5 [{"telemetryType", "telemetrySubtype", "context", "from", "to"}]
        6 LOADK                            R5 K6 ["navigation"]
        7 SETTABLEKS                       R5 R4 K0 ["telemetryType"]
        9 LOADK                            R5 K7 ["tab"]
       10 SETTABLEKS                       R5 R4 K1 ["telemetrySubtype"]
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R5 R5 K8 ["PageName"]
       15 SETTABLEKS                       R5 R4 K2 ["context"]
       17 GETUPVAL                         R6 3
       18 GETTABLEKS                       R6 R6 K9 ["Tabs"]
       20 GETUPVAL                         R7 0
       21 GETTABLE                         R5 R6 R7
       22 GETTABLEKS                       R5 R5 K10 ["Key"]
       24 SETTABLEKS                       R5 R4 K3 ["from"]
       26 GETUPVAL                         R6 3
       27 GETTABLEKS                       R6 R6 K9 ["Tabs"]
       29 GETTABLE                         R5 R6 R0
       30 GETTABLEKS                       R5 R5 K10 ["Key"]
       32 SETTABLEKS                       R5 R4 K4 ["to"]
       34 NAMECALL                         R1 R1 K11 ["log"]
       36 CALL                             R1 3 0
       37 GETUPVAL                         R1 4
       38 GETTABLEKS                       R1 R1 K12 ["restartAnimation"]
       40 CALL                             R1 0 0
       41 GETUPVAL                         R1 5
       42 MOVE                             R2 R0
       43 CALL                             R1 1 0
       44 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQ                         R0 R1 ; [+8]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["restartAnimation"]
        6 CALL                             R1 0 0
        7 GETUPVAL                         R1 2
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQ                         R0 R1 ; [+8]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["restartAnimation"]
        6 CALL                             R1 0 0
        7 GETUPVAL                         R1 2
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["LuaStartPageIsOnGridView"]
        2 GETUPVAL                         R5 1
        3 NOT                              R4 R5
        4 NAMECALL                         R1 R1 K1 ["SetSetting"]
        6 CALL                             R1 3 0
        7 GETUPVAL                         R1 2
        8 JUMPIFEQKS                       R0 K2 ["grid"] ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 MOVE                             R4 R0
        6 DUPTABLE                         R5 K2 [{"title"}]
        7 GETUPVAL                         R7 3
        8 JUMPIFEQKS                       R7 K3 [""] ; [+8]
       10 GETUPVAL                         R6 4
       11 LOADK                            R8 K4 ["Plugin"]
       12 LOADK                            R9 K5 ["NoSearchResultsToDisplay"]
       13 NAMECALL                         R6 R6 K6 ["getText"]
       15 CALL                             R6 3 1
       16 JUMP                             ; [+7]
       17 GETUPVAL                         R7 5
       18 GETTABLEKS                       R7 R7 K7 ["Tabs"]
       20 GETUPVAL                         R8 6
       21 GETTABLE                         R6 R7 R8
       22 GETTABLEKS                       R6 R6 K8 ["FailedTitle"]
       24 SETTABLEKS                       R6 R5 K1 ["title"]
       26 CALL                             R3 2 -1
       27 CALL                             R1 -1 -1
       28 RETURN                           R1 -1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_23:
        0 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Plugin"]
        3 NAMECALL                         R1 R1 K1 ["use"]
        5 CALL                             R1 1 1
        6 NAMECALL                         R1 R1 K2 ["get"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 1
       10 NAMECALL                         R2 R2 K1 ["use"]
       12 CALL                             R2 1 1
       13 GETUPVAL                         R3 2
       14 NAMECALL                         R3 R3 K1 ["use"]
       16 CALL                             R3 1 1
       17 GETUPVAL                         R4 3
       18 LOADN                            R5 1
       19 CALL                             R4 1 2
       20 GETUPVAL                         R6 3
       21 NEWTABLE                         R7 0 0
       23 CALL                             R6 1 2
       24 GETUPVAL                         R8 3
       25 LOADK                            R9 K3 [""]
       26 CALL                             R8 1 2
       27 GETUPVAL                         R10 3
       28 NEWCLOSURE                       R11 P0
       29 CAPTURE                          VAL R1
       30 CALL                             R10 1 2
       31 GETUPVAL                         R12 3
       32 LOADB                            R13 0
       33 CALL                             R12 1 2
       34 GETUPVAL                         R14 4
       35 NEWCLOSURE                       R15 P1
       36 CAPTURE                          VAL R13
       37 CAPTURE                          UPVAL U5
       38 NEWTABLE                         R16 0 0
       40 CALL                             R14 2 0
       41 GETUPVAL                         R14 3
       42 LOADB                            R15 0
       43 CALL                             R14 1 2
       44 GETUPVAL                         R16 4
       45 NEWCLOSURE                       R17 P2
       46 CAPTURE                          VAL R15
       47 CAPTURE                          UPVAL U5
       48 NEWTABLE                         R18 0 0
       50 CALL                             R16 2 0
       51 GETUPVAL                         R16 3
       52 NEWCLOSURE                       R17 P3
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R0
       55 CALL                             R16 1 2
       56 GETTABLEKS                       R19 R0 K4 ["Tabs"]
       58 GETTABLE                         R18 R19 R4
       59 GETTABLEKS                       R18 R18 K5 ["Dropdowns"]
       61 LOADNIL                          R19
       62 LOADNIL                          R20
       63 JUMPIFNOT                        R18 ; [+23]
       64 JUMPIFNOT                        R16 ; [+11]
       65 GETTABLEKS                       R21 R18 K6 ["SortDropdown"]
       67 JUMPIF                           R21 ; [+2]
       68 LOADNIL                          R19
       69 JUMP                             ; [+7]
       70 GETUPVAL                         R22 6
       71 MOVE                             R23 R21
       72 DUPCLOSURE                       R24 K7 [PROTO_0]
       73 CALL                             R22 2 1
       74 MOVE                             R19 R22
       75 JUMP                             ; [+1]
       76 LOADNIL                          R19
       77 GETTABLEKS                       R21 R18 K8 ["GroupDropdown"]
       79 JUMPIF                           R21 ; [+2]
       80 LOADNIL                          R20
       81 JUMP                             ; [+5]
       82 GETUPVAL                         R22 6
       83 MOVE                             R23 R21
       84 DUPCLOSURE                       R24 K7 [PROTO_0]
       85 CALL                             R22 2 1
       86 MOVE                             R20 R22
       87 GETUPVAL                         R21 3
       88 JUMPIFNOT                        R19 ; [+15]
       89 LENGTH                           R23 R19
       90 LOADN                            R24 0
       91 JUMPIFNOTLT                      R24 R23 ; [+12]
       93 GETTABLEKS                       R24 R18 K9 ["DefaultSortIndex"]
       95 JUMPIFNOT                        R24 ; [+3]
       96 GETTABLEKS                       R23 R18 K9 ["DefaultSortIndex"]
       98 JUMP                             ; [+1]
       99 LOADN                            R23 1
      100 GETTABLE                         R22 R19 R23
      101 GETTABLEKS                       R22 R22 K10 ["id"]
      103 JUMP                             ; [+1]
      104 LOADNIL                          R22
      105 CALL                             R21 1 2
      106 GETUPVAL                         R23 3
      107 JUMPIFNOT                        R20 ; [+8]
      108 LENGTH                           R25 R20
      109 LOADN                            R26 0
      110 JUMPIFNOTLT                      R26 R25 ; [+5]
      112 GETTABLEN                        R24 R20 1
      113 GETTABLEKS                       R24 R24 K10 ["id"]
      115 JUMP                             ; [+1]
      116 LOADNIL                          R24
      117 CALL                             R23 1 2
      118 GETUPVAL                         R25 4
      119 NEWCLOSURE                       R26 P5
      120 CAPTURE                          REF R20
      121 CAPTURE                          VAL R24
      122 NEWTABLE                         R27 0 1
      124 MOVE                             R28 R4
      125 SETLIST                          R27 R28 1 [1]
      127 CALL                             R25 2 0
      128 NEWTABLE                         R25 1 0
      130 JUMPIFNOT                        R18 ; [+54]
      131 JUMPIFNOT                        R19 ; [+26]
      132 LENGTH                           R26 R19
      133 LOADN                            R27 0
      134 JUMPIFNOTLT                      R27 R26 ; [+23]
      136 JUMPIFNOT                        R21 ; [+21]
      137 MOVE                             R27 R19
      138 MOVE                             R28 R27
      139 LOADNIL                          R29
      140 LOADNIL                          R30
      141 FORGPREP                         R28
      142 GETTABLEKS                       R33 R32 K10 ["id"]
      144 JUMPIFNOTEQ                      R33 R21 ; [+3]
      146 MOVE                             R26 R32
      147 JUMP                             ; [+3]
      148 FORGLOOP                         R28 2 ; [-7]
      150 LOADNIL                          R26
      151 JUMPIFNOT                        R26 ; [+6]
      152 GETUPVAL                         R27 7
      153 MOVE                             R28 R25
      154 GETTABLEKS                       R29 R26 K11 ["query"]
      156 CALL                             R27 2 1
      157 MOVE                             R25 R27
      158 JUMPIFNOT                        R20 ; [+26]
      159 LENGTH                           R26 R20
      160 LOADN                            R27 0
      161 JUMPIFNOTLT                      R27 R26 ; [+23]
      163 JUMPIFNOT                        R23 ; [+21]
      164 MOVE                             R27 R20
      165 MOVE                             R28 R27
      166 LOADNIL                          R29
      167 LOADNIL                          R30
      168 FORGPREP                         R28
      169 GETTABLEKS                       R33 R32 K10 ["id"]
      171 JUMPIFNOTEQ                      R33 R23 ; [+3]
      173 MOVE                             R26 R32
      174 JUMP                             ; [+3]
      175 FORGLOOP                         R28 2 ; [-7]
      177 LOADNIL                          R26
      178 JUMPIFNOT                        R26 ; [+6]
      179 GETUPVAL                         R27 7
      180 MOVE                             R28 R25
      181 GETTABLEKS                       R29 R26 K11 ["query"]
      183 CALL                             R27 2 1
      184 MOVE                             R25 R27
      185 JUMPIFNOT                        R8 ; [+2]
      186 SETTABLEKS                       R8 R25 K12 ["search"]
      188 JUMPIFNOT                        R6 ; [+5]
      189 GETUPVAL                         R26 7
      190 MOVE                             R27 R25
      191 MOVE                             R28 R6
      192 CALL                             R26 2 1
      193 MOVE                             R25 R26
      194 GETUPVAL                         R26 8
      195 CALL                             R26 0 1
      196 LOADNIL                          R27
      197 LOADNIL                          R28
      198 LOADNIL                          R29
      199 LOADNIL                          R30
      200 LOADNIL                          R31
      201 LOADNIL                          R32
      202 LOADNIL                          R33
      203 LOADNIL                          R34
      204 LOADNIL                          R35
      205 LOADNIL                          R36
      206 GETUPVAL                         R37 9
      207 JUMPIFNOT                        R37 ; [+23]
      208 GETUPVAL                         R37 10
      209 JUMPIFNOT                        R37 ; [+21]
      210 GETUPVAL                         R38 11
      211 CALL                             R38 0 -1
      212 FASTCALL                         TABLE_UNPACK ; [+2]
      213 GETIMPORT                        R37 K15 [table.unpack]
      215 CALL                             R37 -1 7
      216 MOVE                             R27 R37
      217 MOVE                             R29 R38
      218 MOVE                             R30 R39
      219 MOVE                             R32 R40
      220 MOVE                             R28 R41
      221 MOVE                             R31 R42
      222 MOVE                             R33 R43
      223 GETUPVAL                         R37 12
      224 NEWTABLE                         R38 0 0
      226 CALL                             R37 1 3
      227 MOVE                             R34 R37
      228 MOVE                             R35 R38
      229 MOVE                             R36 R39
      230 JUMP                             ; [+12]
      231 GETUPVAL                         R37 10
      232 JUMPIFNOT                        R37 ; [+10]
      233 GETUPVAL                         R38 11
      234 CALL                             R38 0 -1
      235 FASTCALL                         TABLE_UNPACK ; [+2]
      236 GETIMPORT                        R37 K15 [table.unpack]
      238 CALL                             R37 -1 4
      239 MOVE                             R27 R37
      240 MOVE                             R32 R38
      241 MOVE                             R28 R39
      242 MOVE                             R33 R40
      243 NEWCLOSURE                       R37 P6
      244 CAPTURE                          VAL R2
      245 CAPTURE                          UPVAL U13
      246 CAPTURE                          UPVAL U14
      247 CAPTURE                          UPVAL U15
      248 GETUPVAL                         R38 16
      249 GETTABLEKS                       R38 R38 K16 ["createElement"]
      251 GETUPVAL                         R39 17
      252 DUPTABLE                         R40 K18 [{"tag"}]
      253 LOADK                            R41 K19 ["col size-full"]
      254 SETTABLEKS                       R41 R40 K17 ["tag"]
      256 DUPTABLE                         R41 K25 [{"VerifyAgeAlertBanner", "EstablishTrustBanner", "FAEReverificationBanner", "OSDeprecationBanner", "Content"}]
      257 GETUPVAL                         R43 10
      258 JUMPIFNOT                        R43 ; [+78]
      259 JUMPIFNOT                        R27 ; [+77]
      260 GETUPVAL                         R42 16
      261 GETTABLEKS                       R42 R42 K16 ["createElement"]
      263 GETUPVAL                         R43 18
      264 DUPTABLE                         R44 K32 [{"variant", "severity", "title", "description", "actions", "onClose"}]
      265 GETUPVAL                         R45 19
      266 GETTABLEKS                       R45 R45 K33 ["Emphasis"]
      268 SETTABLEKS                       R45 R44 K26 ["variant"]
      270 GETUPVAL                         R45 20
      271 GETTABLEKS                       R45 R45 K34 ["Info"]
      273 SETTABLEKS                       R45 R44 K27 ["severity"]
      275 LOADK                            R47 K0 ["Plugin"]
      276 LOADK                            R48 K35 ["VerifyAgeBanner.Title"]
      277 NAMECALL                         R45 R3 K36 ["getText"]
      279 CALL                             R45 3 1
      280 SETTABLEKS                       R45 R44 K28 ["title"]
      282 LOADK                            R47 K0 ["Plugin"]
      283 LOADK                            R48 K37 ["VerifyAgeBanner.Body"]
      284 NAMECALL                         R45 R3 K36 ["getText"]
      286 CALL                             R45 3 1
      287 SETTABLEKS                       R45 R44 K29 ["description"]
      289 NEWTABLE                         R45 0 2
      291 DUPTABLE                         R46 K40 [{"text", "variant", "onActivated"}]
      292 LOADK                            R49 K0 ["Plugin"]
      293 LOADK                            R50 K41 ["VerifyAgeBanner.SecondaryAction"]
      294 NAMECALL                         R47 R3 K36 ["getText"]
      296 CALL                             R47 3 1
      297 SETTABLEKS                       R47 R46 K38 ["text"]
      299 GETUPVAL                         R47 21
      300 GETTABLEKS                       R47 R47 K42 ["Utility"]
      302 SETTABLEKS                       R47 R46 K26 ["variant"]
      304 NEWCLOSURE                       R47 P7
      305 CAPTURE                          UPVAL U5
      306 CAPTURE                          UPVAL U22
      307 CAPTURE                          VAL R37
      308 SETTABLEKS                       R47 R46 K39 ["onActivated"]
      310 DUPTABLE                         R47 K40 [{"text", "variant", "onActivated"}]
      311 LOADK                            R50 K0 ["Plugin"]
      312 LOADK                            R51 K43 ["VerifyAgeBanner.PrimaryAction"]
      313 NAMECALL                         R48 R3 K36 ["getText"]
      315 CALL                             R48 3 1
      316 SETTABLEKS                       R48 R47 K38 ["text"]
      318 GETUPVAL                         R48 21
      319 GETTABLEKS                       R48 R48 K44 ["Standard"]
      321 SETTABLEKS                       R48 R47 K26 ["variant"]
      323 NEWCLOSURE                       R48 P8
      324 CAPTURE                          UPVAL U5
      325 CAPTURE                          UPVAL U23
      326 CAPTURE                          VAL R37
      327 SETTABLEKS                       R48 R47 K39 ["onActivated"]
      329 SETLIST                          R45 R46 2 [1]
      331 SETTABLEKS                       R45 R44 K30 ["actions"]
      333 SETTABLEKS                       R28 R44 K31 ["onClose"]
      335 CALL                             R42 2 1
      336 JUMP                             ; [+1]
      337 LOADNIL                          R42
      338 SETTABLEKS                       R42 R41 K20 ["VerifyAgeAlertBanner"]
      340 GETUPVAL                         R43 9
      341 JUMPIFNOT                        R43 ; [+75]
      342 JUMPIFNOT                        R29 ; [+74]
      343 JUMPIF                           R27 ; [+73]
      344 GETUPVAL                         R42 16
      345 GETTABLEKS                       R42 R42 K16 ["createElement"]
      347 GETUPVAL                         R43 18
      348 DUPTABLE                         R44 K45 [{"variant", "severity", "title", "actions", "onClose"}]
      349 GETUPVAL                         R45 19
      350 GETTABLEKS                       R45 R45 K44 ["Standard"]
      352 SETTABLEKS                       R45 R44 K26 ["variant"]
      354 GETUPVAL                         R45 20
      355 GETTABLEKS                       R45 R45 K46 ["Warning"]
      357 SETTABLEKS                       R45 R44 K27 ["severity"]
      359 LOADK                            R47 K21 ["EstablishTrustBanner"]
      360 LOADK                            R48 K47 ["Title"]
      361 NAMECALL                         R45 R3 K36 ["getText"]
      363 CALL                             R45 3 1
      364 SETTABLEKS                       R45 R44 K28 ["title"]
      366 NEWTABLE                         R45 0 2
      368 DUPTABLE                         R46 K40 [{"text", "variant", "onActivated"}]
      369 LOADK                            R49 K0 ["Plugin"]
      370 LOADK                            R50 K41 ["VerifyAgeBanner.SecondaryAction"]
      371 NAMECALL                         R47 R3 K36 ["getText"]
      373 CALL                             R47 3 1
      374 SETTABLEKS                       R47 R46 K38 ["text"]
      376 GETUPVAL                         R47 21
      377 GETTABLEKS                       R47 R47 K42 ["Utility"]
      379 SETTABLEKS                       R47 R46 K26 ["variant"]
      381 NEWCLOSURE                       R47 P9
      382 CAPTURE                          UPVAL U5
      383 CAPTURE                          UPVAL U24
      384 CAPTURE                          VAL R37
      385 SETTABLEKS                       R47 R46 K39 ["onActivated"]
      387 DUPTABLE                         R47 K40 [{"text", "variant", "onActivated"}]
      388 LOADK                            R50 K0 ["Plugin"]
      389 LOADK                            R51 K43 ["VerifyAgeBanner.PrimaryAction"]
      390 NAMECALL                         R48 R3 K36 ["getText"]
      392 CALL                             R48 3 1
      393 SETTABLEKS                       R48 R47 K38 ["text"]
      395 GETUPVAL                         R48 21
      396 GETTABLEKS                       R48 R48 K44 ["Standard"]
      398 SETTABLEKS                       R48 R47 K26 ["variant"]
      400 NEWCLOSURE                       R48 P10
      401 CAPTURE                          REF R30
      402 CAPTURE                          UPVAL U25
      403 CAPTURE                          REF R34
      404 CAPTURE                          UPVAL U5
      405 CAPTURE                          UPVAL U26
      406 CAPTURE                          VAL R37
      407 SETTABLEKS                       R48 R47 K39 ["onActivated"]
      409 SETLIST                          R45 R46 2 [1]
      411 SETTABLEKS                       R45 R44 K30 ["actions"]
      413 SETTABLEKS                       R31 R44 K31 ["onClose"]
      415 CALL                             R42 2 1
      416 JUMP                             ; [+1]
      417 LOADNIL                          R42
      418 SETTABLEKS                       R42 R41 K21 ["EstablishTrustBanner"]
      420 GETUPVAL                         R43 27
      421 JUMPIFNOT                        R43 ; [+75]
      422 JUMPIFNOT                        R32 ; [+74]
      423 JUMPIF                           R27 ; [+73]
      424 GETUPVAL                         R43 9
      425 JUMPIFNOT                        R43 ; [+1]
      426 JUMPIF                           R29 ; [+70]
      427 GETUPVAL                         R42 16
      428 GETTABLEKS                       R42 R42 K16 ["createElement"]
      430 GETUPVAL                         R43 18
      431 DUPTABLE                         R44 K45 [{"variant", "severity", "title", "actions", "onClose"}]
      432 GETUPVAL                         R45 19
      433 GETTABLEKS                       R45 R45 K44 ["Standard"]
      435 SETTABLEKS                       R45 R44 K26 ["variant"]
      437 GETUPVAL                         R45 20
      438 GETTABLEKS                       R45 R45 K34 ["Info"]
      440 SETTABLEKS                       R45 R44 K27 ["severity"]
      442 LOADK                            R47 K48 ["AgeReverificationBanner"]
      443 LOADK                            R48 K47 ["Title"]
      444 NAMECALL                         R45 R3 K36 ["getText"]
      446 CALL                             R45 3 1
      447 SETTABLEKS                       R45 R44 K28 ["title"]
      449 NEWTABLE                         R45 0 2
      451 DUPTABLE                         R46 K40 [{"text", "variant", "onActivated"}]
      452 LOADK                            R49 K0 ["Plugin"]
      453 LOADK                            R50 K41 ["VerifyAgeBanner.SecondaryAction"]
      454 NAMECALL                         R47 R3 K36 ["getText"]
      456 CALL                             R47 3 1
      457 SETTABLEKS                       R47 R46 K38 ["text"]
      459 GETUPVAL                         R47 21
      460 GETTABLEKS                       R47 R47 K42 ["Utility"]
      462 SETTABLEKS                       R47 R46 K26 ["variant"]
      464 NEWCLOSURE                       R47 P11
      465 CAPTURE                          UPVAL U5
      466 CAPTURE                          UPVAL U28
      467 CAPTURE                          VAL R37
      468 SETTABLEKS                       R47 R46 K39 ["onActivated"]
      470 DUPTABLE                         R47 K40 [{"text", "variant", "onActivated"}]
      471 LOADK                            R50 K48 ["AgeReverificationBanner"]
      472 LOADK                            R51 K49 ["PrimaryAction"]
      473 NAMECALL                         R48 R3 K36 ["getText"]
      475 CALL                             R48 3 1
      476 SETTABLEKS                       R48 R47 K38 ["text"]
      478 GETUPVAL                         R48 21
      479 GETTABLEKS                       R48 R48 K44 ["Standard"]
      481 SETTABLEKS                       R48 R47 K26 ["variant"]
      483 NEWCLOSURE                       R48 P12
      484 CAPTURE                          UPVAL U5
      485 CAPTURE                          UPVAL U29
      486 CAPTURE                          VAL R37
      487 SETTABLEKS                       R48 R47 K39 ["onActivated"]
      489 SETLIST                          R45 R46 2 [1]
      491 SETTABLEKS                       R45 R44 K30 ["actions"]
      493 SETTABLEKS                       R33 R44 K31 ["onClose"]
      495 CALL                             R42 2 1
      496 JUMP                             ; [+1]
      497 LOADNIL                          R42
      498 SETTABLEKS                       R42 R41 K22 ["FAEReverificationBanner"]
      500 JUMPIF                           R10 ; [+54]
      501 JUMPIF                           R12 ; [+1]
      502 JUMPIFNOT                        R14 ; [+52]
      503 GETUPVAL                         R42 16
      504 GETTABLEKS                       R42 R42 K16 ["createElement"]
      506 GETUPVAL                         R43 30
      507 DUPTABLE                         R44 K53 [{"title", "body", "onClose", "inlineAction", "LayoutOrder"}]
      508 JUMPIFNOT                        R12 ; [+6]
      509 LOADK                            R47 K0 ["Plugin"]
      510 LOADK                            R48 K54 ["OSDeprecationBanner.TitleWin"]
      511 NAMECALL                         R45 R3 K36 ["getText"]
      513 CALL                             R45 3 1
      514 JUMP                             ; [+5]
      515 LOADK                            R47 K0 ["Plugin"]
      516 LOADK                            R48 K55 ["OSDeprecationBanner.TitleMac"]
      517 NAMECALL                         R45 R3 K36 ["getText"]
      519 CALL                             R45 3 1
      520 SETTABLEKS                       R45 R44 K28 ["title"]
      522 LOADK                            R47 K0 ["Plugin"]
      523 LOADK                            R48 K56 ["OSDeprecationBanner.Body"]
      524 NAMECALL                         R45 R3 K36 ["getText"]
      526 CALL                             R45 3 1
      527 SETTABLEKS                       R45 R44 K50 ["body"]
      529 NEWCLOSURE                       R45 P13
      530 CAPTURE                          VAL R1
      531 CAPTURE                          VAL R11
      532 SETTABLEKS                       R45 R44 K31 ["onClose"]
      534 DUPTABLE                         R45 K58 [{"text", "onClick"}]
      535 LOADK                            R48 K0 ["Plugin"]
      536 LOADK                            R49 K59 ["OSDeprecationBanner.Action"]
      537 NAMECALL                         R46 R3 K36 ["getText"]
      539 CALL                             R46 3 1
      540 SETTABLEKS                       R46 R45 K38 ["text"]
      542 DUPCLOSURE                       R46 K60 [PROTO_16]
      543 CAPTURE                          UPVAL U5
      544 CAPTURE                          UPVAL U31
      545 SETTABLEKS                       R46 R45 K57 ["onClick"]
      547 SETTABLEKS                       R45 R44 K51 ["inlineAction"]
      549 MOVE                             R45 R26
      550 CALL                             R45 0 1
      551 SETTABLEKS                       R45 R44 K52 ["LayoutOrder"]
      553 CALL                             R42 2 1
      554 JUMP                             ; [+1]
      555 LOADNIL                          R42
      556 SETTABLEKS                       R42 R41 K23 ["OSDeprecationBanner"]
      558 GETUPVAL                         R42 16
      559 GETTABLEKS                       R42 R42 K16 ["createElement"]
      561 GETUPVAL                         R43 17
      562 DUPTABLE                         R44 K61 [{"tag", "LayoutOrder"}]
      563 LOADK                            R45 K62 ["size-full-0 auto-y col padding-x-xxlarge gap-xlarge padding-top-small"]
      564 SETTABLEKS                       R45 R44 K17 ["tag"]
      566 MOVE                             R45 R26
      567 CALL                             R45 0 1
      568 SETTABLEKS                       R45 R44 K52 ["LayoutOrder"]
      570 DUPTABLE                         R45 K66 [{"Header", "Controls", "PageComponent"}]
      571 GETUPVAL                         R46 16
      572 GETTABLEKS                       R46 R46 K16 ["createElement"]
      574 GETUPVAL                         R47 32
      575 DUPTABLE                         R48 K68 [{"title", "searchBar", "LayoutOrder"}]
      576 GETTABLEKS                       R50 R0 K4 ["Tabs"]
      578 GETTABLE                         R49 R50 R4
      579 GETTABLEKS                       R49 R49 K47 ["Title"]
      581 SETTABLEKS                       R49 R48 K28 ["title"]
      583 GETTABLEKS                       R50 R0 K69 ["HasSearchBar"]
      585 JUMPIFNOT                        R50 ; [+20]
      586 DUPTABLE                         R49 K74 [{"calculatedQuery", "setSearchQuery", "resultComponent", "type"}]
      587 SETTABLEKS                       R25 R49 K70 ["calculatedQuery"]
      589 SETTABLEKS                       R9 R49 K71 ["setSearchQuery"]
      591 GETTABLEKS                       R51 R0 K4 ["Tabs"]
      593 GETTABLE                         R50 R51 R4
      594 GETTABLEKS                       R50 R50 K65 ["PageComponent"]
      596 SETTABLEKS                       R50 R49 K72 ["resultComponent"]
      598 GETTABLEKS                       R51 R0 K4 ["Tabs"]
      600 GETTABLE                         R50 R51 R4
      601 GETTABLEKS                       R50 R50 K47 ["Title"]
      603 SETTABLEKS                       R50 R49 K73 ["type"]
      605 JUMP                             ; [+1]
      606 LOADNIL                          R49
      607 SETTABLEKS                       R49 R48 K67 ["searchBar"]
      609 MOVE                             R49 R26
      610 CALL                             R49 0 1
      611 SETTABLEKS                       R49 R48 K52 ["LayoutOrder"]
      613 CALL                             R46 2 1
      614 SETTABLEKS                       R46 R45 K63 ["Header"]
      616 GETUPVAL                         R46 16
      617 GETTABLEKS                       R46 R46 K16 ["createElement"]
      619 GETUPVAL                         R47 17
      620 DUPTABLE                         R48 K75 [{"LayoutOrder", "tag"}]
      621 MOVE                             R49 R26
      622 CALL                             R49 0 1
      623 SETTABLEKS                       R49 R48 K52 ["LayoutOrder"]
      625 LOADK                            R49 K76 ["size-full-0 auto-y row"]
      626 SETTABLEKS                       R49 R48 K17 ["tag"]
      628 DUPTABLE                         R49 K79 [{"Pills", "DropdownControls"}]
      629 GETTABLEKS                       R51 R0 K80 ["HideTabs"]
      631 JUMPIF                           R51 ; [+27]
      632 GETUPVAL                         R50 16
      633 GETTABLEKS                       R50 R50 K16 ["createElement"]
      635 GETUPVAL                         R51 33
      636 DUPTABLE                         R52 K84 [{"tabs", "defaultSelectedTab", "onTabSelected"}]
      637 GETTABLEKS                       R53 R0 K4 ["Tabs"]
      639 SETTABLEKS                       R53 R52 K81 ["tabs"]
      641 GETTABLEKS                       R54 R0 K4 ["Tabs"]
      643 GETTABLEN                        R53 R54 1
      644 GETTABLEKS                       R53 R53 K85 ["Key"]
      646 SETTABLEKS                       R53 R52 K82 ["defaultSelectedTab"]
      648 NEWCLOSURE                       R53 P15
      649 CAPTURE                          VAL R4
      650 CAPTURE                          VAL R2
      651 CAPTURE                          UPVAL U34
      652 CAPTURE                          VAL R0
      653 CAPTURE                          UPVAL U35
      654 CAPTURE                          VAL R5
      655 SETTABLEKS                       R53 R52 K83 ["onTabSelected"]
      657 CALL                             R50 2 1
      658 JUMP                             ; [+1]
      659 LOADNIL                          R50
      660 SETTABLEKS                       R50 R49 K77 ["Pills"]
      662 GETUPVAL                         R50 16
      663 GETTABLEKS                       R50 R50 K16 ["createElement"]
      665 GETUPVAL                         R51 17
      666 DUPTABLE                         R52 K75 [{"LayoutOrder", "tag"}]
      667 MOVE                             R53 R26
      668 CALL                             R53 0 1
      669 SETTABLEKS                       R53 R52 K52 ["LayoutOrder"]
      671 LOADK                            R53 K86 ["auto-xy row gap-medium align-x-right grow"]
      672 SETTABLEKS                       R53 R52 K17 ["tag"]
      674 DUPTABLE                         R53 K88 [{"GroupDropdown", "SortDropdown", "ToggleView"}]
      675 JUMPIFNOT                        R20 ; [+34]
      676 GETUPVAL                         R54 16
      677 GETTABLEKS                       R54 R54 K16 ["createElement"]
      679 GETUPVAL                         R55 36
      680 GETTABLEKS                       R55 R55 K89 ["Root"]
      682 GETUPVAL                         R56 37
      683 GETTABLEKS                       R56 R56 K90 ["join"]
      685 GETUPVAL                         R57 38
      686 DUPTABLE                         R58 K95 [{"LayoutOrder", "placeholder", "value", "items", "onItemChanged"}]
      687 LOADN                            R59 1
      688 SETTABLEKS                       R59 R58 K52 ["LayoutOrder"]
      690 LOADK                            R61 K0 ["Plugin"]
      691 LOADK                            R62 K96 ["GroupDropdown.Placeholder"]
      692 NAMECALL                         R59 R3 K36 ["getText"]
      694 CALL                             R59 3 1
      695 SETTABLEKS                       R59 R58 K91 ["placeholder"]
      697 SETTABLEKS                       R23 R58 K92 ["value"]
      699 SETTABLEKS                       R20 R58 K93 ["items"]
      701 NEWCLOSURE                       R59 P16
      702 CAPTURE                          VAL R23
      703 CAPTURE                          UPVAL U35
      704 CAPTURE                          VAL R24
      705 SETTABLEKS                       R59 R58 K94 ["onItemChanged"]
      707 CALL                             R56 2 -1
      708 CALL                             R54 -1 1
      709 JUMP                             ; [+1]
      710 LOADNIL                          R54
      711 SETTABLEKS                       R54 R53 K8 ["GroupDropdown"]
      713 JUMPIFNOT                        R19 ; [+34]
      714 GETUPVAL                         R54 16
      715 GETTABLEKS                       R54 R54 K16 ["createElement"]
      717 GETUPVAL                         R55 36
      718 GETTABLEKS                       R55 R55 K89 ["Root"]
      720 GETUPVAL                         R56 37
      721 GETTABLEKS                       R56 R56 K90 ["join"]
      723 GETUPVAL                         R57 38
      724 DUPTABLE                         R58 K95 [{"LayoutOrder", "placeholder", "value", "items", "onItemChanged"}]
      725 LOADN                            R59 2
      726 SETTABLEKS                       R59 R58 K52 ["LayoutOrder"]
      728 LOADK                            R61 K0 ["Plugin"]
      729 LOADK                            R62 K97 ["SortDropdown.Placeholder"]
      730 NAMECALL                         R59 R3 K36 ["getText"]
      732 CALL                             R59 3 1
      733 SETTABLEKS                       R59 R58 K91 ["placeholder"]
      735 SETTABLEKS                       R21 R58 K92 ["value"]
      737 SETTABLEKS                       R19 R58 K93 ["items"]
      739 NEWCLOSURE                       R59 P17
      740 CAPTURE                          VAL R21
      741 CAPTURE                          UPVAL U35
      742 CAPTURE                          VAL R22
      743 SETTABLEKS                       R59 R58 K94 ["onItemChanged"]
      745 CALL                             R56 2 -1
      746 CALL                             R54 -1 1
      747 JUMP                             ; [+1]
      748 LOADNIL                          R54
      749 SETTABLEKS                       R54 R53 K6 ["SortDropdown"]
      751 GETTABLEKS                       R55 R0 K98 ["CanSwapBetweenViews"]
      753 JUMPIFNOT                        R55 ; [+25]
      754 GETUPVAL                         R54 16
      755 GETTABLEKS                       R54 R54 K16 ["createElement"]
      757 GETUPVAL                         R55 39
      758 DUPTABLE                         R56 K100 [{"LayoutOrder", "id", "options", "onActivated"}]
      759 LOADN                            R57 3
      760 SETTABLEKS                       R57 R56 K52 ["LayoutOrder"]
      762 JUMPIFNOT                        R16 ; [+2]
      763 LOADK                            R57 K101 ["grid"]
      764 JUMP                             ; [+1]
      765 LOADK                            R57 K102 ["list"]
      766 SETTABLEKS                       R57 R56 K10 ["id"]
      768 GETUPVAL                         R57 40
      769 SETTABLEKS                       R57 R56 K99 ["options"]
      771 NEWCLOSURE                       R57 P18
      772 CAPTURE                          VAL R1
      773 CAPTURE                          VAL R16
      774 CAPTURE                          VAL R17
      775 SETTABLEKS                       R57 R56 K39 ["onActivated"]
      777 CALL                             R54 2 1
      778 JUMP                             ; [+1]
      779 LOADNIL                          R54
      780 SETTABLEKS                       R54 R53 K87 ["ToggleView"]
      782 CALL                             R50 3 1
      783 SETTABLEKS                       R50 R49 K78 ["DropdownControls"]
      785 CALL                             R46 3 1
      786 SETTABLEKS                       R46 R45 K64 ["Controls"]
      788 GETUPVAL                         R46 16
      789 GETTABLEKS                       R46 R46 K16 ["createElement"]
      791 GETUPVAL                         R47 41
      792 DUPTABLE                         R48 K75 [{"LayoutOrder", "tag"}]
      793 MOVE                             R49 R26
      794 CALL                             R49 0 1
      795 SETTABLEKS                       R49 R48 K52 ["LayoutOrder"]
      797 LOADK                            R49 K103 ["size-full fill"]
      798 SETTABLEKS                       R49 R48 K17 ["tag"]
      800 GETUPVAL                         R49 16
      801 GETTABLEKS                       R49 R49 K16 ["createElement"]
      803 GETTABLEKS                       R51 R0 K4 ["Tabs"]
      805 GETTABLE                         R50 R51 R4
      806 GETTABLEKS                       R50 R50 K65 ["PageComponent"]
      808 DUPTABLE                         R51 K112 [{"DisplayComponent", "Dropdowns", "NoContentDisplayComponent", "CanDisplayComponentAdjustQuery", "DisplayComponentHasAdjustedQuery", "InitialContentHasLoaded", "CellSize", "CellPadding", "BaseQuery"}]
      809 JUMPIFNOT                        R16 ; [+2]
      810 GETUPVAL                         R52 42
      811 JUMP                             ; [+1]
      812 GETUPVAL                         R52 43
      813 SETTABLEKS                       R52 R51 K104 ["DisplayComponent"]
      815 SETTABLEKS                       R18 R51 K5 ["Dropdowns"]
      817 NEWCLOSURE                       R52 P19
      818 CAPTURE                          UPVAL U16
      819 CAPTURE                          UPVAL U44
      820 CAPTURE                          UPVAL U7
      821 CAPTURE                          VAL R8
      822 CAPTURE                          VAL R3
      823 CAPTURE                          VAL R0
      824 CAPTURE                          VAL R4
      825 SETTABLEKS                       R52 R51 K105 ["NoContentDisplayComponent"]
      827 NOT                              R52 R16
      828 JUMPIFNOT                        R52 ; [+4]
      829 MOVE                             R52 R18
      830 JUMPIFNOT                        R52 ; [+2]
      831 GETTABLEKS                       R52 R18 K6 ["SortDropdown"]
      833 SETTABLEKS                       R52 R51 K106 ["CanDisplayComponentAdjustQuery"]
      835 JUMPIF                           R16 ; [+3]
      836 NEWCLOSURE                       R52 P20
      837 CAPTURE                          VAL R7
      838 JUMP                             ; [+1]
      839 LOADNIL                          R52
      840 SETTABLEKS                       R52 R51 K107 ["DisplayComponentHasAdjustedQuery"]
      842 DUPCLOSURE                       R52 K113 [PROTO_23]
      843 SETTABLEKS                       R52 R51 K108 ["InitialContentHasLoaded"]
      845 GETTABLEKS                       R52 R0 K109 ["CellSize"]
      847 SETTABLEKS                       R52 R51 K109 ["CellSize"]
      849 GETUPVAL                         R52 45
      850 SETTABLEKS                       R52 R51 K110 ["CellPadding"]
      852 SETTABLEKS                       R25 R51 K111 ["BaseQuery"]
      854 CALL                             R49 2 -1
      855 CALL                             R46 -1 1
      856 SETTABLEKS                       R46 R45 K65 ["PageComponent"]
      858 CALL                             R42 3 1
      859 SETTABLEKS                       R42 R41 K24 ["Content"]
      861 CALL                             R38 3 -1
      862 CLOSEUPVALS                      R20
      863 RETURN                           R38 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useState"]
       16 GETTABLEKS                       R3 R1 K9 ["useEffect"]
       18 GETIMPORT                        R4 K5 [require]
       20 GETTABLEKS                       R5 R0 K10 ["Src"]
       22 GETTABLEKS                       R5 R5 K11 ["Util"]
       24 GETTABLEKS                       R5 R5 K12 ["Services"]
       26 CALL                             R4 1 1
       27 GETTABLEKS                       R5 R4 K13 ["StartPageManager"]
       29 GETTABLEKS                       R6 R4 K14 ["StudioService"]
       31 GETTABLEKS                       R7 R4 K15 ["RbxAnalyticsService"]
       33 GETIMPORT                        R8 K5 [require]
       35 GETTABLEKS                       R9 R0 K10 ["Src"]
       37 GETTABLEKS                       R9 R9 K16 ["SharedFlags"]
       39 GETTABLEKS                       R9 R9 K17 ["getFFlagLuaStartPageVerifyAgeBanner"]
       41 CALL                             R8 1 1
       42 GETIMPORT                        R9 K5 [require]
       44 GETTABLEKS                       R10 R0 K10 ["Src"]
       46 GETTABLEKS                       R10 R10 K16 ["SharedFlags"]
       48 GETTABLEKS                       R10 R10 K18 ["getFFlagStartPageEstablishTrustBanner"]
       50 CALL                             R9 1 1
       51 CALL                             R9 0 1
       52 GETIMPORT                        R10 K5 [require]
       54 GETTABLEKS                       R11 R0 K10 ["Src"]
       56 GETTABLEKS                       R11 R11 K16 ["SharedFlags"]
       58 GETTABLEKS                       R11 R11 K19 ["getFFlagStartPageFAEReverification"]
       60 CALL                             R10 1 1
       61 CALL                             R10 0 1
       62 GETIMPORT                        R11 K5 [require]
       64 GETTABLEKS                       R12 R0 K10 ["Src"]
       66 GETTABLEKS                       R12 R12 K16 ["SharedFlags"]
       68 GETTABLEKS                       R12 R12 K20 ["getFFlagStartPageTrustedConnectionShowUpsellDialog"]
       70 CALL                             R11 1 1
       71 CALL                             R11 0 1
       72 GETIMPORT                        R12 K5 [require]
       74 GETTABLEKS                       R13 R0 K10 ["Src"]
       76 GETTABLEKS                       R13 R13 K16 ["SharedFlags"]
       78 GETTABLEKS                       R13 R13 K21 ["getFStringLuaStartPageCAEDevForumLink"]
       80 CALL                             R12 1 1
       81 GETIMPORT                        R13 K5 [require]
       83 GETTABLEKS                       R14 R0 K10 ["Src"]
       85 GETTABLEKS                       R14 R14 K16 ["SharedFlags"]
       87 GETTABLEKS                       R14 R14 K22 ["getFStringReVerifyAgeLink"]
       89 CALL                             R13 1 1
       90 GETIMPORT                        R14 K5 [require]
       92 GETTABLEKS                       R15 R0 K10 ["Src"]
       94 GETTABLEKS                       R15 R15 K16 ["SharedFlags"]
       96 GETTABLEKS                       R15 R15 K23 ["getFStringLuaStartPageVerifyAgeLink"]
       98 CALL                             R14 1 1
       99 GETIMPORT                        R15 K5 [require]
      101 GETTABLEKS                       R16 R0 K10 ["Src"]
      103 GETTABLEKS                       R16 R16 K16 ["SharedFlags"]
      105 GETTABLEKS                       R16 R16 K24 ["getFStringLuaStartPageFAEDevForumLink"]
      107 CALL                             R15 1 1
      108 GETIMPORT                        R16 K5 [require]
      110 GETTABLEKS                       R17 R0 K10 ["Src"]
      112 GETTABLEKS                       R17 R17 K16 ["SharedFlags"]
      114 GETTABLEKS                       R17 R17 K25 ["getFStringStartPageEstablishTrustDevForumLink"]
      116 CALL                             R16 1 1
      117 GETIMPORT                        R17 K5 [require]
      119 GETTABLEKS                       R18 R0 K10 ["Src"]
      121 GETTABLEKS                       R18 R18 K16 ["SharedFlags"]
      123 GETTABLEKS                       R18 R18 K26 ["getFStringStartPageImpactedExperiencesLink"]
      125 CALL                             R17 1 1
      126 GETIMPORT                        R18 K5 [require]
      128 GETTABLEKS                       R19 R0 K10 ["Src"]
      130 GETTABLEKS                       R19 R19 K11 ["Util"]
      132 GETTABLEKS                       R19 R19 K27 ["TypedDash"]
      134 CALL                             R18 1 1
      135 GETTABLEKS                       R19 R18 K28 ["map"]
      137 GETTABLEKS                       R20 R18 K29 ["join"]
      139 GETIMPORT                        R21 K5 [require]
      141 GETTABLEKS                       R22 R0 K6 ["Packages"]
      143 GETTABLEKS                       R22 R22 K30 ["Framework"]
      145 CALL                             R21 1 1
      146 GETTABLEKS                       R22 R21 K11 ["Util"]
      148 GETTABLEKS                       R22 R22 K31 ["counter"]
      150 GETTABLEKS                       R23 R21 K32 ["ContextServices"]
      152 GETTABLEKS                       R23 R23 K33 ["Localization"]
      154 GETTABLEKS                       R24 R21 K34 ["UI"]
      156 GETTABLEKS                       R25 R24 K35 ["Grid"]
      158 GETIMPORT                        R26 K5 [require]
      160 GETTABLEKS                       R27 R0 K10 ["Src"]
      162 GETTABLEKS                       R27 R27 K36 ["Foundation"]
      164 GETTABLEKS                       R27 R27 K37 ["Components"]
      166 GETTABLEKS                       R27 R27 K38 ["Alert"]
      168 CALL                             R26 1 1
      169 GETIMPORT                        R27 K5 [require]
      171 GETTABLEKS                       R28 R0 K10 ["Src"]
      173 GETTABLEKS                       R28 R28 K36 ["Foundation"]
      175 GETTABLEKS                       R28 R28 K37 ["Components"]
      177 GETTABLEKS                       R28 R28 K39 ["ToggleButton"]
      179 CALL                             R27 1 1
      180 GETIMPORT                        R28 K5 [require]
      182 GETTABLEKS                       R29 R0 K10 ["Src"]
      184 GETTABLEKS                       R29 R29 K36 ["Foundation"]
      186 GETTABLEKS                       R29 R29 K37 ["Components"]
      188 GETTABLEKS                       R29 R29 K40 ["PageHeader"]
      190 CALL                             R28 1 1
      191 GETIMPORT                        R29 K5 [require]
      193 GETTABLEKS                       R30 R0 K10 ["Src"]
      195 GETTABLEKS                       R30 R30 K36 ["Foundation"]
      197 GETTABLEKS                       R30 R30 K37 ["Components"]
      199 GETTABLEKS                       R30 R30 K41 ["Frame"]
      201 CALL                             R29 1 1
      202 GETIMPORT                        R30 K5 [require]
      204 GETTABLEKS                       R31 R0 K10 ["Src"]
      206 GETTABLEKS                       R31 R31 K11 ["Util"]
      208 GETTABLEKS                       R31 R31 K36 ["Foundation"]
      210 CALL                             R30 1 1
      211 GETTABLEKS                       R31 R30 K42 ["View"]
      213 GETTABLEKS                       R32 R30 K43 ["Dropdown"]
      215 GETTABLEKS                       R33 R30 K44 ["Enums"]
      217 GETTABLEKS                       R33 R33 K45 ["InputSize"]
      219 GETTABLEKS                       R34 R30 K44 ["Enums"]
      221 GETTABLEKS                       R34 R34 K46 ["IconName"]
      223 GETTABLEKS                       R35 R30 K47 ["SystemBanner"]
      225 GETTABLEKS                       R36 R30 K44 ["Enums"]
      227 GETTABLEKS                       R36 R36 K48 ["AlertVariant"]
      229 GETTABLEKS                       R37 R30 K44 ["Enums"]
      231 GETTABLEKS                       R37 R37 K49 ["AlertSeverity"]
      233 GETTABLEKS                       R38 R30 K44 ["Enums"]
      235 GETTABLEKS                       R38 R38 K50 ["ButtonVariant"]
      237 GETIMPORT                        R39 K5 [require]
      239 GETTABLEKS                       R40 R0 K10 ["Src"]
      241 GETTABLEKS                       R40 R40 K11 ["Util"]
      243 GETTABLEKS                       R40 R40 K51 ["Telemetry"]
      245 GETTABLEKS                       R40 R40 K52 ["TelemetryContext"]
      247 CALL                             R39 1 1
      248 GETIMPORT                        R40 K5 [require]
      250 GETTABLEKS                       R41 R0 K10 ["Src"]
      252 GETTABLEKS                       R41 R41 K11 ["Util"]
      254 GETTABLEKS                       R41 R41 K51 ["Telemetry"]
      256 GETTABLEKS                       R41 R41 K53 ["StartPageTelemetryEvent"]
      258 CALL                             R40 1 1
      259 GETIMPORT                        R41 K5 [require]
      261 GETTABLEKS                       R42 R0 K10 ["Src"]
      263 GETTABLEKS                       R42 R42 K11 ["Util"]
      265 GETTABLEKS                       R42 R42 K51 ["Telemetry"]
      267 GETTABLEKS                       R42 R42 K54 ["StudioSafetyUpsellClickedEvent"]
      269 CALL                             R41 1 1
      270 GETIMPORT                        R42 K5 [require]
      272 GETTABLEKS                       R43 R0 K10 ["Src"]
      274 GETTABLEKS                       R43 R43 K37 ["Components"]
      276 GETTABLEKS                       R43 R43 K55 ["Shimmer"]
      278 CALL                             R42 1 1
      279 GETIMPORT                        R43 K5 [require]
      281 GETTABLEKS                       R44 R0 K10 ["Src"]
      283 GETTABLEKS                       R44 R44 K36 ["Foundation"]
      285 GETTABLEKS                       R44 R44 K37 ["Components"]
      287 GETTABLEKS                       R44 R44 K56 ["PillTabs"]
      289 CALL                             R43 1 1
      290 GETIMPORT                        R44 K5 [require]
      292 GETTABLEKS                       R45 R0 K10 ["Src"]
      294 GETTABLEKS                       R45 R45 K37 ["Components"]
      296 GETTABLEKS                       R45 R45 K57 ["ExperiencesTable"]
      298 CALL                             R44 1 1
      299 GETIMPORT                        R45 K5 [require]
      301 GETTABLEKS                       R46 R0 K10 ["Src"]
      303 GETTABLEKS                       R46 R46 K36 ["Foundation"]
      305 GETTABLEKS                       R46 R46 K37 ["Components"]
      307 GETTABLEKS                       R46 R46 K58 ["NoResultsFound"]
      309 CALL                             R45 1 1
      310 GETIMPORT                        R46 K5 [require]
      312 GETTABLEKS                       R47 R0 K10 ["Src"]
      314 GETTABLEKS                       R47 R47 K59 ["Hooks"]
      316 GETTABLEKS                       R47 R47 K60 ["useShowVerifyAgeBanner"]
      318 CALL                             R46 1 1
      319 GETIMPORT                        R47 K5 [require]
      321 GETTABLEKS                       R48 R0 K10 ["Src"]
      323 GETTABLEKS                       R48 R48 K59 ["Hooks"]
      325 GETTABLEKS                       R48 R48 K61 ["useEstablishTrustDialog"]
      327 CALL                             R47 1 1
      328 GETTABLEKS                       R48 R21 K32 ["ContextServices"]
      330 GETIMPORT                        R49 K5 [require]
      332 GETTABLEKS                       R50 R0 K10 ["Src"]
      334 GETTABLEKS                       R50 R50 K62 ["Types"]
      336 CALL                             R49 1 1
      337 GETIMPORT                        R50 K5 [require]
      339 GETTABLEKS                       R51 R0 K10 ["Src"]
      341 GETTABLEKS                       R51 R51 K16 ["SharedFlags"]
      343 GETTABLEKS                       R51 R51 K63 ["getFStringLuaStartPageOSDeprecationLink"]
      345 CALL                             R50 1 1
      346 CALL                             R50 0 1
      347 GETIMPORT                        R51 K5 [require]
      349 GETTABLEKS                       R52 R0 K10 ["Src"]
      351 GETTABLEKS                       R52 R52 K16 ["SharedFlags"]
      353 GETTABLEKS                       R52 R52 K64 ["getFFlagLuaStartPageBuilderIcons"]
      355 CALL                             R51 1 1
      356 CALL                             R51 0 1
      357 GETIMPORT                        R52 K67 [UDim2.fromOffset]
      359 LOADN                            R53 16
      360 LOADN                            R54 16
      361 CALL                             R52 2 1
      362 DUPTABLE                         R53 K72 [{"label", "width", "size", "maxHeight"}]
      363 LOADK                            R54 K73 [""]
      364 SETTABLEKS                       R54 R53 K68 ["label"]
      366 GETIMPORT                        R54 K76 [UDim.new]
      368 LOADN                            R55 0
      369 LOADN                            R56 186
      370 CALL                             R54 2 1
      371 SETTABLEKS                       R54 R53 K69 ["width"]
      373 GETTABLEKS                       R54 R33 K77 ["Small"]
      375 SETTABLEKS                       R54 R53 K70 ["size"]
      377 LOADN                            R54 44
      378 SETTABLEKS                       R54 R53 K71 ["maxHeight"]
      380 NEWTABLE                         R54 0 2
      382 DUPTABLE                         R55 K81 [{"id", "icon", "name"}]
      383 LOADK                            R56 K82 ["grid"]
      384 SETTABLEKS                       R56 R55 K78 ["id"]
      386 LOADK                            R56 K83 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Large/Grid.png"]
      387 SETTABLEKS                       R56 R55 K79 ["icon"]
      389 JUMPIFNOT                        R51 ; [+3]
      390 GETTABLEKS                       R56 R34 K35 ["Grid"]
      392 JUMP                             ; [+1]
      393 LOADNIL                          R56
      394 SETTABLEKS                       R56 R55 K80 ["name"]
      396 DUPTABLE                         R56 K81 [{"id", "icon", "name"}]
      397 LOADK                            R57 K84 ["list"]
      398 SETTABLEKS                       R57 R56 K78 ["id"]
      400 LOADK                            R57 K85 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Large/Lilst.png"]
      401 SETTABLEKS                       R57 R56 K79 ["icon"]
      403 JUMPIFNOT                        R51 ; [+3]
      404 GETTABLEKS                       R57 R34 K86 ["ListBulleted"]
      406 JUMP                             ; [+1]
      407 LOADNIL                          R57
      408 SETTABLEKS                       R57 R56 K80 ["name"]
      410 SETLIST                          R54 R55 2 [1]
      412 DUPCLOSURE                       R55 K87 [PROTO_1]
      413 CAPTURE                          VAL R19
      414 DUPCLOSURE                       R56 K88 [PROTO_2]
      415 DUPCLOSURE                       R57 K89 [PROTO_24]
      416 CAPTURE                          VAL R48
      417 CAPTURE                          VAL R39
      418 CAPTURE                          VAL R23
      419 CAPTURE                          VAL R2
      420 CAPTURE                          VAL R3
      421 CAPTURE                          VAL R5
      422 CAPTURE                          VAL R19
      423 CAPTURE                          VAL R20
      424 CAPTURE                          VAL R22
      425 CAPTURE                          VAL R9
      426 CAPTURE                          VAL R8
      427 CAPTURE                          VAL R46
      428 CAPTURE                          VAL R47
      429 CAPTURE                          VAL R41
      430 CAPTURE                          VAL R6
      431 CAPTURE                          VAL R7
      432 CAPTURE                          VAL R1
      433 CAPTURE                          VAL R31
      434 CAPTURE                          VAL R35
      435 CAPTURE                          VAL R36
      436 CAPTURE                          VAL R37
      437 CAPTURE                          VAL R38
      438 CAPTURE                          VAL R15
      439 CAPTURE                          VAL R14
      440 CAPTURE                          VAL R16
      441 CAPTURE                          VAL R11
      442 CAPTURE                          VAL R17
      443 CAPTURE                          VAL R10
      444 CAPTURE                          VAL R12
      445 CAPTURE                          VAL R13
      446 CAPTURE                          VAL R26
      447 CAPTURE                          VAL R50
      448 CAPTURE                          VAL R28
      449 CAPTURE                          VAL R43
      450 CAPTURE                          VAL R40
      451 CAPTURE                          VAL R42
      452 CAPTURE                          VAL R32
      453 CAPTURE                          VAL R18
      454 CAPTURE                          VAL R53
      455 CAPTURE                          VAL R27
      456 CAPTURE                          VAL R54
      457 CAPTURE                          VAL R29
      458 CAPTURE                          VAL R25
      459 CAPTURE                          VAL R44
      460 CAPTURE                          VAL R45
      461 CAPTURE                          VAL R52
      462 RETURN                           R57 1
