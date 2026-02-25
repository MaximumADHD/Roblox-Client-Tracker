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
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["CanSwapBetweenViews"]
        8 JUMPIF                           R2 ; [+4]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K3 ["IsDefaultGridView"]
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
        8 GETUPVAL                         R3 0
        9 GETTABLEN                        R2 R3 1
       10 GETTABLEKS                       R1 R2 K0 ["id"]
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
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 JUMP                             ; [+6]
        5 GETUPVAL                         R0 2
        6 GETUPVAL                         R2 3
        7 CALL                             R2 0 -1
        8 NAMECALL                         R0 R0 K0 ["openLink"]
       10 CALL                             R0 -1 0
       11 GETUPVAL                         R0 4
       12 LOADK                            R1 K1 ["start_page_establish_trust"]
       13 LOADK                            R2 K2 ["start"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["LuaStartPageHasOSDeprecationAlertBeenClosed"]
        2 LOADB                            R3 1
        3 NAMECALL                         R0 R0 K1 ["SetSetting"]
        5 CALL                             R0 3 0
        6 GETUPVAL                         R0 1
        7 LOADB                            R1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["openLink"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQ                         R0 R1 ; [+42]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 DUPTABLE                         R4 K5 [{"telemetryType", "telemetrySubtype", "context", "from", "to"}]
        6 LOADK                            R5 K6 ["navigation"]
        7 SETTABLEKS                       R5 R4 K0 ["telemetryType"]
        9 LOADK                            R5 K7 ["tab"]
       10 SETTABLEKS                       R5 R4 K1 ["telemetrySubtype"]
       12 GETUPVAL                         R6 3
       13 GETTABLEKS                       R5 R6 K8 ["PageName"]
       15 SETTABLEKS                       R5 R4 K2 ["context"]
       17 GETUPVAL                         R8 3
       18 GETTABLEKS                       R7 R8 K9 ["Tabs"]
       20 GETUPVAL                         R8 0
       21 GETTABLE                         R6 R7 R8
       22 GETTABLEKS                       R5 R6 K10 ["Key"]
       24 SETTABLEKS                       R5 R4 K3 ["from"]
       26 GETUPVAL                         R8 3
       27 GETTABLEKS                       R7 R8 K9 ["Tabs"]
       29 GETTABLE                         R6 R7 R0
       30 GETTABLEKS                       R5 R6 K10 ["Key"]
       32 SETTABLEKS                       R5 R4 K4 ["to"]
       34 NAMECALL                         R1 R1 K11 ["log"]
       36 CALL                             R1 3 0
       37 GETUPVAL                         R2 4
       38 GETTABLEKS                       R1 R2 K12 ["restartAnimation"]
       40 CALL                             R1 0 0
       41 GETUPVAL                         R1 5
       42 MOVE                             R2 R0
       43 CALL                             R1 1 0
       44 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQ                         R0 R1 ; [+8]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["restartAnimation"]
        6 CALL                             R1 0 0
        7 GETUPVAL                         R1 2
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQ                         R0 R1 ; [+8]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["restartAnimation"]
        6 CALL                             R1 0 0
        7 GETUPVAL                         R1 2
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_18:
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

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
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
       17 GETUPVAL                         R9 5
       18 GETTABLEKS                       R8 R9 K7 ["Tabs"]
       20 GETUPVAL                         R9 6
       21 GETTABLE                         R7 R8 R9
       22 GETTABLEKS                       R6 R7 K8 ["FailedTitle"]
       24 SETTABLEKS                       R6 R5 K1 ["title"]
       26 CALL                             R3 2 -1
       27 CALL                             R1 -1 -1
       28 RETURN                           R1 -1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_21:
        0 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Plugin"]
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
       56 GETTABLEKS                       R20 R0 K4 ["Tabs"]
       58 GETTABLE                         R19 R20 R4
       59 GETTABLEKS                       R18 R19 K5 ["Dropdowns"]
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
       93 GETTABLEKS                       R25 R18 K9 ["DefaultSortIndex"]
       95 JUMPIFNOT                        R25 ; [+3]
       96 GETTABLEKS                       R24 R18 K9 ["DefaultSortIndex"]
       98 JUMP                             ; [+1]
       99 LOADN                            R24 1
      100 GETTABLE                         R23 R19 R24
      101 GETTABLEKS                       R22 R23 K10 ["id"]
      103 JUMP                             ; [+1]
      104 LOADNIL                          R22
      105 CALL                             R21 1 2
      106 GETUPVAL                         R23 3
      107 JUMPIFNOT                        R20 ; [+8]
      108 LENGTH                           R25 R20
      109 LOADN                            R26 0
      110 JUMPIFNOTLT                      R26 R25 ; [+5]
      112 GETTABLEN                        R25 R20 1
      113 GETTABLEKS                       R24 R25 K10 ["id"]
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
      204 GETUPVAL                         R35 9
      205 JUMPIFNOT                        R35 ; [+21]
      206 GETUPVAL                         R35 10
      207 JUMPIFNOT                        R35 ; [+19]
      208 GETUPVAL                         R36 11
      209 CALL                             R36 0 -1
      210 FASTCALL                         TABLE_UNPACK ; [+2]
      211 GETIMPORT                        R35 K15 [table.unpack]
      213 CALL                             R35 -1 5
      214 MOVE                             R27 R35
      215 MOVE                             R29 R36
      216 MOVE                             R30 R37
      217 MOVE                             R28 R38
      218 MOVE                             R31 R39
      219 GETUPVAL                         R35 12
      220 NEWTABLE                         R36 0 0
      222 CALL                             R35 1 3
      223 MOVE                             R32 R35
      224 MOVE                             R33 R36
      225 MOVE                             R34 R37
      226 JUMP                             ; [+10]
      227 GETUPVAL                         R35 10
      228 JUMPIFNOT                        R35 ; [+8]
      229 GETUPVAL                         R36 11
      230 CALL                             R36 0 -1
      231 FASTCALL                         TABLE_UNPACK ; [+2]
      232 GETIMPORT                        R35 K15 [table.unpack]
      234 CALL                             R35 -1 2
      235 MOVE                             R27 R35
      236 MOVE                             R28 R36
      237 NEWCLOSURE                       R35 P6
      238 CAPTURE                          VAL R2
      239 CAPTURE                          UPVAL U13
      240 CAPTURE                          UPVAL U14
      241 CAPTURE                          UPVAL U15
      242 GETUPVAL                         R37 16
      243 GETTABLEKS                       R36 R37 K16 ["createElement"]
      245 GETUPVAL                         R37 17
      246 DUPTABLE                         R38 K18 [{"tag"}]
      247 LOADK                            R39 K19 ["col size-full"]
      248 SETTABLEKS                       R39 R38 K17 ["tag"]
      250 DUPTABLE                         R39 K24 [{"VerifyAgeAlertBanner", "EstablishTrustBanner", "OSDeprecationBanner", "Content"}]
      251 GETUPVAL                         R41 10
      252 JUMPIFNOT                        R41 ; [+78]
      253 JUMPIFNOT                        R27 ; [+77]
      254 GETUPVAL                         R41 16
      255 GETTABLEKS                       R40 R41 K16 ["createElement"]
      257 GETUPVAL                         R41 18
      258 DUPTABLE                         R42 K31 [{"variant", "severity", "title", "description", "actions", "onClose"}]
      259 GETUPVAL                         R44 19
      260 GETTABLEKS                       R43 R44 K32 ["Emphasis"]
      262 SETTABLEKS                       R43 R42 K25 ["variant"]
      264 GETUPVAL                         R44 20
      265 GETTABLEKS                       R43 R44 K33 ["Info"]
      267 SETTABLEKS                       R43 R42 K26 ["severity"]
      269 LOADK                            R45 K0 ["Plugin"]
      270 LOADK                            R46 K34 ["VerifyAgeBanner.Title"]
      271 NAMECALL                         R43 R3 K35 ["getText"]
      273 CALL                             R43 3 1
      274 SETTABLEKS                       R43 R42 K27 ["title"]
      276 LOADK                            R45 K0 ["Plugin"]
      277 LOADK                            R46 K36 ["VerifyAgeBanner.Body"]
      278 NAMECALL                         R43 R3 K35 ["getText"]
      280 CALL                             R43 3 1
      281 SETTABLEKS                       R43 R42 K28 ["description"]
      283 NEWTABLE                         R43 0 2
      285 DUPTABLE                         R44 K39 [{"text", "variant", "onActivated"}]
      286 LOADK                            R47 K0 ["Plugin"]
      287 LOADK                            R48 K40 ["VerifyAgeBanner.SecondaryAction"]
      288 NAMECALL                         R45 R3 K35 ["getText"]
      290 CALL                             R45 3 1
      291 SETTABLEKS                       R45 R44 K37 ["text"]
      293 GETUPVAL                         R46 21
      294 GETTABLEKS                       R45 R46 K41 ["Utility"]
      296 SETTABLEKS                       R45 R44 K25 ["variant"]
      298 NEWCLOSURE                       R45 P7
      299 CAPTURE                          UPVAL U5
      300 CAPTURE                          UPVAL U22
      301 CAPTURE                          VAL R35
      302 SETTABLEKS                       R45 R44 K38 ["onActivated"]
      304 DUPTABLE                         R45 K39 [{"text", "variant", "onActivated"}]
      305 LOADK                            R48 K0 ["Plugin"]
      306 LOADK                            R49 K42 ["VerifyAgeBanner.PrimaryAction"]
      307 NAMECALL                         R46 R3 K35 ["getText"]
      309 CALL                             R46 3 1
      310 SETTABLEKS                       R46 R45 K37 ["text"]
      312 GETUPVAL                         R47 21
      313 GETTABLEKS                       R46 R47 K43 ["Standard"]
      315 SETTABLEKS                       R46 R45 K25 ["variant"]
      317 NEWCLOSURE                       R46 P8
      318 CAPTURE                          UPVAL U5
      319 CAPTURE                          UPVAL U23
      320 CAPTURE                          VAL R35
      321 SETTABLEKS                       R46 R45 K38 ["onActivated"]
      323 SETLIST                          R43 R44 2 [1]
      325 SETTABLEKS                       R43 R42 K29 ["actions"]
      327 SETTABLEKS                       R28 R42 K30 ["onClose"]
      329 CALL                             R40 2 1
      330 JUMP                             ; [+1]
      331 LOADNIL                          R40
      332 SETTABLEKS                       R40 R39 K20 ["VerifyAgeAlertBanner"]
      334 GETUPVAL                         R41 9
      335 JUMPIFNOT                        R41 ; [+81]
      336 JUMPIFNOT                        R29 ; [+80]
      337 JUMPIF                           R27 ; [+79]
      338 GETUPVAL                         R41 16
      339 GETTABLEKS                       R40 R41 K16 ["createElement"]
      341 GETUPVAL                         R41 18
      342 DUPTABLE                         R42 K31 [{"variant", "severity", "title", "description", "actions", "onClose"}]
      343 GETUPVAL                         R44 19
      344 GETTABLEKS                       R43 R44 K32 ["Emphasis"]
      346 SETTABLEKS                       R43 R42 K25 ["variant"]
      348 GETUPVAL                         R44 20
      349 GETTABLEKS                       R43 R44 K33 ["Info"]
      351 SETTABLEKS                       R43 R42 K26 ["severity"]
      353 LOADK                            R45 K21 ["EstablishTrustBanner"]
      354 LOADK                            R46 K44 ["Title"]
      355 NAMECALL                         R43 R3 K35 ["getText"]
      357 CALL                             R43 3 1
      358 SETTABLEKS                       R43 R42 K27 ["title"]
      360 LOADK                            R45 K21 ["EstablishTrustBanner"]
      361 LOADK                            R46 K45 ["Body"]
      362 NAMECALL                         R43 R3 K35 ["getText"]
      364 CALL                             R43 3 1
      365 SETTABLEKS                       R43 R42 K28 ["description"]
      367 NEWTABLE                         R43 0 2
      369 DUPTABLE                         R44 K39 [{"text", "variant", "onActivated"}]
      370 LOADK                            R47 K0 ["Plugin"]
      371 LOADK                            R48 K40 ["VerifyAgeBanner.SecondaryAction"]
      372 NAMECALL                         R45 R3 K35 ["getText"]
      374 CALL                             R45 3 1
      375 SETTABLEKS                       R45 R44 K37 ["text"]
      377 GETUPVAL                         R46 21
      378 GETTABLEKS                       R45 R46 K41 ["Utility"]
      380 SETTABLEKS                       R45 R44 K25 ["variant"]
      382 NEWCLOSURE                       R45 P9
      383 CAPTURE                          UPVAL U5
      384 CAPTURE                          UPVAL U24
      385 CAPTURE                          VAL R35
      386 SETTABLEKS                       R45 R44 K38 ["onActivated"]
      388 DUPTABLE                         R45 K39 [{"text", "variant", "onActivated"}]
      389 LOADK                            R48 K0 ["Plugin"]
      390 LOADK                            R49 K42 ["VerifyAgeBanner.PrimaryAction"]
      391 NAMECALL                         R46 R3 K35 ["getText"]
      393 CALL                             R46 3 1
      394 SETTABLEKS                       R46 R45 K37 ["text"]
      396 GETUPVAL                         R47 21
      397 GETTABLEKS                       R46 R47 K43 ["Standard"]
      399 SETTABLEKS                       R46 R45 K25 ["variant"]
      401 NEWCLOSURE                       R46 P10
      402 CAPTURE                          REF R30
      403 CAPTURE                          REF R32
      404 CAPTURE                          UPVAL U5
      405 CAPTURE                          UPVAL U25
      406 CAPTURE                          VAL R35
      407 SETTABLEKS                       R46 R45 K38 ["onActivated"]
      409 SETLIST                          R43 R44 2 [1]
      411 SETTABLEKS                       R43 R42 K29 ["actions"]
      413 SETTABLEKS                       R31 R42 K30 ["onClose"]
      415 CALL                             R40 2 1
      416 JUMP                             ; [+1]
      417 LOADNIL                          R40
      418 SETTABLEKS                       R40 R39 K21 ["EstablishTrustBanner"]
      420 JUMPIF                           R10 ; [+54]
      421 JUMPIF                           R12 ; [+1]
      422 JUMPIFNOT                        R14 ; [+52]
      423 GETUPVAL                         R41 16
      424 GETTABLEKS                       R40 R41 K16 ["createElement"]
      426 GETUPVAL                         R41 26
      427 DUPTABLE                         R42 K49 [{"title", "body", "onClose", "inlineAction", "LayoutOrder"}]
      428 JUMPIFNOT                        R12 ; [+6]
      429 LOADK                            R45 K0 ["Plugin"]
      430 LOADK                            R46 K50 ["OSDeprecationBanner.TitleWin"]
      431 NAMECALL                         R43 R3 K35 ["getText"]
      433 CALL                             R43 3 1
      434 JUMP                             ; [+5]
      435 LOADK                            R45 K0 ["Plugin"]
      436 LOADK                            R46 K51 ["OSDeprecationBanner.TitleMac"]
      437 NAMECALL                         R43 R3 K35 ["getText"]
      439 CALL                             R43 3 1
      440 SETTABLEKS                       R43 R42 K27 ["title"]
      442 LOADK                            R45 K0 ["Plugin"]
      443 LOADK                            R46 K52 ["OSDeprecationBanner.Body"]
      444 NAMECALL                         R43 R3 K35 ["getText"]
      446 CALL                             R43 3 1
      447 SETTABLEKS                       R43 R42 K46 ["body"]
      449 NEWCLOSURE                       R43 P11
      450 CAPTURE                          VAL R1
      451 CAPTURE                          VAL R11
      452 SETTABLEKS                       R43 R42 K30 ["onClose"]
      454 DUPTABLE                         R43 K54 [{"text", "onClick"}]
      455 LOADK                            R46 K0 ["Plugin"]
      456 LOADK                            R47 K55 ["OSDeprecationBanner.Action"]
      457 NAMECALL                         R44 R3 K35 ["getText"]
      459 CALL                             R44 3 1
      460 SETTABLEKS                       R44 R43 K37 ["text"]
      462 DUPCLOSURE                       R44 K56 [PROTO_14]
      463 CAPTURE                          UPVAL U5
      464 CAPTURE                          UPVAL U27
      465 SETTABLEKS                       R44 R43 K53 ["onClick"]
      467 SETTABLEKS                       R43 R42 K47 ["inlineAction"]
      469 MOVE                             R43 R26
      470 CALL                             R43 0 1
      471 SETTABLEKS                       R43 R42 K48 ["LayoutOrder"]
      473 CALL                             R40 2 1
      474 JUMP                             ; [+1]
      475 LOADNIL                          R40
      476 SETTABLEKS                       R40 R39 K22 ["OSDeprecationBanner"]
      478 GETUPVAL                         R41 16
      479 GETTABLEKS                       R40 R41 K16 ["createElement"]
      481 GETUPVAL                         R41 17
      482 DUPTABLE                         R42 K57 [{"tag", "LayoutOrder"}]
      483 LOADK                            R43 K58 ["size-full-0 auto-y col padding-x-xxlarge gap-xlarge padding-top-small"]
      484 SETTABLEKS                       R43 R42 K17 ["tag"]
      486 MOVE                             R43 R26
      487 CALL                             R43 0 1
      488 SETTABLEKS                       R43 R42 K48 ["LayoutOrder"]
      490 DUPTABLE                         R43 K62 [{"Header", "Controls", "PageComponent"}]
      491 GETUPVAL                         R45 16
      492 GETTABLEKS                       R44 R45 K16 ["createElement"]
      494 GETUPVAL                         R45 28
      495 DUPTABLE                         R46 K64 [{"title", "searchBar", "LayoutOrder"}]
      496 GETTABLEKS                       R49 R0 K4 ["Tabs"]
      498 GETTABLE                         R48 R49 R4
      499 GETTABLEKS                       R47 R48 K44 ["Title"]
      501 SETTABLEKS                       R47 R46 K27 ["title"]
      503 GETTABLEKS                       R48 R0 K65 ["HasSearchBar"]
      505 JUMPIFNOT                        R48 ; [+20]
      506 DUPTABLE                         R47 K70 [{"calculatedQuery", "setSearchQuery", "resultComponent", "type"}]
      507 SETTABLEKS                       R25 R47 K66 ["calculatedQuery"]
      509 SETTABLEKS                       R9 R47 K67 ["setSearchQuery"]
      511 GETTABLEKS                       R50 R0 K4 ["Tabs"]
      513 GETTABLE                         R49 R50 R4
      514 GETTABLEKS                       R48 R49 K61 ["PageComponent"]
      516 SETTABLEKS                       R48 R47 K68 ["resultComponent"]
      518 GETTABLEKS                       R50 R0 K4 ["Tabs"]
      520 GETTABLE                         R49 R50 R4
      521 GETTABLEKS                       R48 R49 K44 ["Title"]
      523 SETTABLEKS                       R48 R47 K69 ["type"]
      525 JUMP                             ; [+1]
      526 LOADNIL                          R47
      527 SETTABLEKS                       R47 R46 K63 ["searchBar"]
      529 MOVE                             R47 R26
      530 CALL                             R47 0 1
      531 SETTABLEKS                       R47 R46 K48 ["LayoutOrder"]
      533 CALL                             R44 2 1
      534 SETTABLEKS                       R44 R43 K59 ["Header"]
      536 GETUPVAL                         R45 16
      537 GETTABLEKS                       R44 R45 K16 ["createElement"]
      539 GETUPVAL                         R45 17
      540 DUPTABLE                         R46 K71 [{"LayoutOrder", "tag"}]
      541 MOVE                             R47 R26
      542 CALL                             R47 0 1
      543 SETTABLEKS                       R47 R46 K48 ["LayoutOrder"]
      545 LOADK                            R47 K72 ["size-full-0 auto-y row"]
      546 SETTABLEKS                       R47 R46 K17 ["tag"]
      548 DUPTABLE                         R47 K75 [{"Pills", "DropdownControls"}]
      549 GETTABLEKS                       R49 R0 K76 ["HideTabs"]
      551 JUMPIF                           R49 ; [+27]
      552 GETUPVAL                         R49 16
      553 GETTABLEKS                       R48 R49 K16 ["createElement"]
      555 GETUPVAL                         R49 29
      556 DUPTABLE                         R50 K80 [{"tabs", "defaultSelectedTab", "onTabSelected"}]
      557 GETTABLEKS                       R51 R0 K4 ["Tabs"]
      559 SETTABLEKS                       R51 R50 K77 ["tabs"]
      561 GETTABLEKS                       R53 R0 K4 ["Tabs"]
      563 GETTABLEN                        R52 R53 1
      564 GETTABLEKS                       R51 R52 K81 ["Key"]
      566 SETTABLEKS                       R51 R50 K78 ["defaultSelectedTab"]
      568 NEWCLOSURE                       R51 P13
      569 CAPTURE                          VAL R4
      570 CAPTURE                          VAL R2
      571 CAPTURE                          UPVAL U30
      572 CAPTURE                          VAL R0
      573 CAPTURE                          UPVAL U31
      574 CAPTURE                          VAL R5
      575 SETTABLEKS                       R51 R50 K79 ["onTabSelected"]
      577 CALL                             R48 2 1
      578 JUMP                             ; [+1]
      579 LOADNIL                          R48
      580 SETTABLEKS                       R48 R47 K73 ["Pills"]
      582 GETUPVAL                         R49 16
      583 GETTABLEKS                       R48 R49 K16 ["createElement"]
      585 GETUPVAL                         R49 17
      586 DUPTABLE                         R50 K71 [{"LayoutOrder", "tag"}]
      587 MOVE                             R51 R26
      588 CALL                             R51 0 1
      589 SETTABLEKS                       R51 R50 K48 ["LayoutOrder"]
      591 LOADK                            R51 K82 ["auto-xy row gap-medium align-x-right grow"]
      592 SETTABLEKS                       R51 R50 K17 ["tag"]
      594 DUPTABLE                         R51 K84 [{"GroupDropdown", "SortDropdown", "ToggleView"}]
      595 JUMPIFNOT                        R20 ; [+34]
      596 GETUPVAL                         R53 16
      597 GETTABLEKS                       R52 R53 K16 ["createElement"]
      599 GETUPVAL                         R54 32
      600 GETTABLEKS                       R53 R54 K85 ["Root"]
      602 GETUPVAL                         R55 33
      603 GETTABLEKS                       R54 R55 K86 ["join"]
      605 GETUPVAL                         R55 34
      606 DUPTABLE                         R56 K91 [{"LayoutOrder", "placeholder", "value", "items", "onItemChanged"}]
      607 LOADN                            R57 1
      608 SETTABLEKS                       R57 R56 K48 ["LayoutOrder"]
      610 LOADK                            R59 K0 ["Plugin"]
      611 LOADK                            R60 K92 ["GroupDropdown.Placeholder"]
      612 NAMECALL                         R57 R3 K35 ["getText"]
      614 CALL                             R57 3 1
      615 SETTABLEKS                       R57 R56 K87 ["placeholder"]
      617 SETTABLEKS                       R23 R56 K88 ["value"]
      619 SETTABLEKS                       R20 R56 K89 ["items"]
      621 NEWCLOSURE                       R57 P14
      622 CAPTURE                          VAL R23
      623 CAPTURE                          UPVAL U31
      624 CAPTURE                          VAL R24
      625 SETTABLEKS                       R57 R56 K90 ["onItemChanged"]
      627 CALL                             R54 2 -1
      628 CALL                             R52 -1 1
      629 JUMP                             ; [+1]
      630 LOADNIL                          R52
      631 SETTABLEKS                       R52 R51 K8 ["GroupDropdown"]
      633 JUMPIFNOT                        R19 ; [+34]
      634 GETUPVAL                         R53 16
      635 GETTABLEKS                       R52 R53 K16 ["createElement"]
      637 GETUPVAL                         R54 32
      638 GETTABLEKS                       R53 R54 K85 ["Root"]
      640 GETUPVAL                         R55 33
      641 GETTABLEKS                       R54 R55 K86 ["join"]
      643 GETUPVAL                         R55 34
      644 DUPTABLE                         R56 K91 [{"LayoutOrder", "placeholder", "value", "items", "onItemChanged"}]
      645 LOADN                            R57 2
      646 SETTABLEKS                       R57 R56 K48 ["LayoutOrder"]
      648 LOADK                            R59 K0 ["Plugin"]
      649 LOADK                            R60 K93 ["SortDropdown.Placeholder"]
      650 NAMECALL                         R57 R3 K35 ["getText"]
      652 CALL                             R57 3 1
      653 SETTABLEKS                       R57 R56 K87 ["placeholder"]
      655 SETTABLEKS                       R21 R56 K88 ["value"]
      657 SETTABLEKS                       R19 R56 K89 ["items"]
      659 NEWCLOSURE                       R57 P15
      660 CAPTURE                          VAL R21
      661 CAPTURE                          UPVAL U31
      662 CAPTURE                          VAL R22
      663 SETTABLEKS                       R57 R56 K90 ["onItemChanged"]
      665 CALL                             R54 2 -1
      666 CALL                             R52 -1 1
      667 JUMP                             ; [+1]
      668 LOADNIL                          R52
      669 SETTABLEKS                       R52 R51 K6 ["SortDropdown"]
      671 GETTABLEKS                       R53 R0 K94 ["CanSwapBetweenViews"]
      673 JUMPIFNOT                        R53 ; [+25]
      674 GETUPVAL                         R53 16
      675 GETTABLEKS                       R52 R53 K16 ["createElement"]
      677 GETUPVAL                         R53 35
      678 DUPTABLE                         R54 K96 [{"LayoutOrder", "id", "options", "onActivated"}]
      679 LOADN                            R55 3
      680 SETTABLEKS                       R55 R54 K48 ["LayoutOrder"]
      682 JUMPIFNOT                        R16 ; [+2]
      683 LOADK                            R55 K97 ["grid"]
      684 JUMP                             ; [+1]
      685 LOADK                            R55 K98 ["list"]
      686 SETTABLEKS                       R55 R54 K10 ["id"]
      688 GETUPVAL                         R55 36
      689 SETTABLEKS                       R55 R54 K95 ["options"]
      691 NEWCLOSURE                       R55 P16
      692 CAPTURE                          VAL R1
      693 CAPTURE                          VAL R16
      694 CAPTURE                          VAL R17
      695 SETTABLEKS                       R55 R54 K38 ["onActivated"]
      697 CALL                             R52 2 1
      698 JUMP                             ; [+1]
      699 LOADNIL                          R52
      700 SETTABLEKS                       R52 R51 K83 ["ToggleView"]
      702 CALL                             R48 3 1
      703 SETTABLEKS                       R48 R47 K74 ["DropdownControls"]
      705 CALL                             R44 3 1
      706 SETTABLEKS                       R44 R43 K60 ["Controls"]
      708 GETUPVAL                         R45 16
      709 GETTABLEKS                       R44 R45 K16 ["createElement"]
      711 GETUPVAL                         R45 37
      712 DUPTABLE                         R46 K71 [{"LayoutOrder", "tag"}]
      713 MOVE                             R47 R26
      714 CALL                             R47 0 1
      715 SETTABLEKS                       R47 R46 K48 ["LayoutOrder"]
      717 LOADK                            R47 K99 ["size-full fill"]
      718 SETTABLEKS                       R47 R46 K17 ["tag"]
      720 GETUPVAL                         R48 16
      721 GETTABLEKS                       R47 R48 K16 ["createElement"]
      723 GETTABLEKS                       R50 R0 K4 ["Tabs"]
      725 GETTABLE                         R49 R50 R4
      726 GETTABLEKS                       R48 R49 K61 ["PageComponent"]
      728 DUPTABLE                         R49 K108 [{"DisplayComponent", "Dropdowns", "NoContentDisplayComponent", "CanDisplayComponentAdjustQuery", "DisplayComponentHasAdjustedQuery", "InitialContentHasLoaded", "CellSize", "CellPadding", "BaseQuery"}]
      729 JUMPIFNOT                        R16 ; [+2]
      730 GETUPVAL                         R50 38
      731 JUMP                             ; [+1]
      732 GETUPVAL                         R50 39
      733 SETTABLEKS                       R50 R49 K100 ["DisplayComponent"]
      735 SETTABLEKS                       R18 R49 K5 ["Dropdowns"]
      737 NEWCLOSURE                       R50 P17
      738 CAPTURE                          UPVAL U16
      739 CAPTURE                          UPVAL U40
      740 CAPTURE                          UPVAL U7
      741 CAPTURE                          VAL R8
      742 CAPTURE                          VAL R3
      743 CAPTURE                          VAL R0
      744 CAPTURE                          VAL R4
      745 SETTABLEKS                       R50 R49 K101 ["NoContentDisplayComponent"]
      747 NOT                              R50 R16
      748 JUMPIFNOT                        R50 ; [+4]
      749 MOVE                             R50 R18
      750 JUMPIFNOT                        R50 ; [+2]
      751 GETTABLEKS                       R50 R18 K6 ["SortDropdown"]
      753 SETTABLEKS                       R50 R49 K102 ["CanDisplayComponentAdjustQuery"]
      755 JUMPIF                           R16 ; [+3]
      756 NEWCLOSURE                       R50 P18
      757 CAPTURE                          VAL R7
      758 JUMP                             ; [+1]
      759 LOADNIL                          R50
      760 SETTABLEKS                       R50 R49 K103 ["DisplayComponentHasAdjustedQuery"]
      762 DUPCLOSURE                       R50 K109 [PROTO_21]
      763 SETTABLEKS                       R50 R49 K104 ["InitialContentHasLoaded"]
      765 GETTABLEKS                       R50 R0 K105 ["CellSize"]
      767 SETTABLEKS                       R50 R49 K105 ["CellSize"]
      769 GETUPVAL                         R50 41
      770 SETTABLEKS                       R50 R49 K106 ["CellPadding"]
      772 SETTABLEKS                       R25 R49 K107 ["BaseQuery"]
      774 CALL                             R47 2 -1
      775 CALL                             R44 -1 1
      776 SETTABLEKS                       R44 R43 K61 ["PageComponent"]
      778 CALL                             R40 3 1
      779 SETTABLEKS                       R40 R39 K23 ["Content"]
      781 CALL                             R36 3 -1
      782 CLOSEUPVALS                      R20
      783 RETURN                           R36 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useState"]
       16 GETTABLEKS                       R3 R1 K9 ["useEffect"]
       18 GETIMPORT                        R4 K5 [require]
       20 GETTABLEKS                       R7 R0 K10 ["Src"]
       22 GETTABLEKS                       R6 R7 K11 ["Util"]
       24 GETTABLEKS                       R5 R6 K12 ["Services"]
       26 CALL                             R4 1 1
       27 GETTABLEKS                       R5 R4 K13 ["StartPageManager"]
       29 GETTABLEKS                       R6 R4 K14 ["StudioService"]
       31 GETTABLEKS                       R7 R4 K15 ["RbxAnalyticsService"]
       33 GETIMPORT                        R8 K5 [require]
       35 GETTABLEKS                       R11 R0 K10 ["Src"]
       37 GETTABLEKS                       R10 R11 K16 ["SharedFlags"]
       39 GETTABLEKS                       R9 R10 K17 ["getFFlagLuaStartPageVerifyAgeBanner"]
       41 CALL                             R8 1 1
       42 GETIMPORT                        R9 K5 [require]
       44 GETTABLEKS                       R12 R0 K10 ["Src"]
       46 GETTABLEKS                       R11 R12 K16 ["SharedFlags"]
       48 GETTABLEKS                       R10 R11 K18 ["getFFlagStartPageEstablishTrustBanner"]
       50 CALL                             R9 1 1
       51 CALL                             R9 0 1
       52 GETIMPORT                        R10 K5 [require]
       54 GETTABLEKS                       R13 R0 K10 ["Src"]
       56 GETTABLEKS                       R12 R13 K16 ["SharedFlags"]
       58 GETTABLEKS                       R11 R12 K19 ["getFStringLuaStartPageVerifyAgeLink"]
       60 CALL                             R10 1 1
       61 GETIMPORT                        R11 K5 [require]
       63 GETTABLEKS                       R14 R0 K10 ["Src"]
       65 GETTABLEKS                       R13 R14 K16 ["SharedFlags"]
       67 GETTABLEKS                       R12 R13 K20 ["getFStringLuaStartPageFAEDevForumLink"]
       69 CALL                             R11 1 1
       70 GETIMPORT                        R12 K5 [require]
       72 GETTABLEKS                       R15 R0 K10 ["Src"]
       74 GETTABLEKS                       R14 R15 K16 ["SharedFlags"]
       76 GETTABLEKS                       R13 R14 K21 ["getFStringStartPageEstablishTrustDevForumLink"]
       78 CALL                             R12 1 1
       79 GETIMPORT                        R13 K5 [require]
       81 GETTABLEKS                       R16 R0 K10 ["Src"]
       83 GETTABLEKS                       R15 R16 K16 ["SharedFlags"]
       85 GETTABLEKS                       R14 R15 K22 ["getFStringStartPageVerifyParentalConsentLink"]
       87 CALL                             R13 1 1
       88 GETIMPORT                        R14 K5 [require]
       90 GETTABLEKS                       R17 R0 K10 ["Src"]
       92 GETTABLEKS                       R16 R17 K11 ["Util"]
       94 GETTABLEKS                       R15 R16 K23 ["TypedDash"]
       96 CALL                             R14 1 1
       97 GETTABLEKS                       R15 R14 K24 ["map"]
       99 GETTABLEKS                       R16 R14 K25 ["join"]
      101 GETIMPORT                        R17 K5 [require]
      103 GETTABLEKS                       R19 R0 K6 ["Packages"]
      105 GETTABLEKS                       R18 R19 K26 ["Framework"]
      107 CALL                             R17 1 1
      108 GETTABLEKS                       R19 R17 K11 ["Util"]
      110 GETTABLEKS                       R18 R19 K27 ["counter"]
      112 GETTABLEKS                       R20 R17 K28 ["ContextServices"]
      114 GETTABLEKS                       R19 R20 K29 ["Localization"]
      116 GETTABLEKS                       R20 R17 K30 ["UI"]
      118 GETTABLEKS                       R21 R20 K31 ["Grid"]
      120 GETIMPORT                        R22 K5 [require]
      122 GETTABLEKS                       R26 R0 K10 ["Src"]
      124 GETTABLEKS                       R25 R26 K32 ["Foundation"]
      126 GETTABLEKS                       R24 R25 K33 ["Components"]
      128 GETTABLEKS                       R23 R24 K34 ["Alert"]
      130 CALL                             R22 1 1
      131 GETIMPORT                        R23 K5 [require]
      133 GETTABLEKS                       R27 R0 K10 ["Src"]
      135 GETTABLEKS                       R26 R27 K32 ["Foundation"]
      137 GETTABLEKS                       R25 R26 K33 ["Components"]
      139 GETTABLEKS                       R24 R25 K35 ["ToggleButton"]
      141 CALL                             R23 1 1
      142 GETIMPORT                        R24 K5 [require]
      144 GETTABLEKS                       R28 R0 K10 ["Src"]
      146 GETTABLEKS                       R27 R28 K32 ["Foundation"]
      148 GETTABLEKS                       R26 R27 K33 ["Components"]
      150 GETTABLEKS                       R25 R26 K36 ["PageHeader"]
      152 CALL                             R24 1 1
      153 GETIMPORT                        R25 K5 [require]
      155 GETTABLEKS                       R29 R0 K10 ["Src"]
      157 GETTABLEKS                       R28 R29 K32 ["Foundation"]
      159 GETTABLEKS                       R27 R28 K33 ["Components"]
      161 GETTABLEKS                       R26 R27 K37 ["Frame"]
      163 CALL                             R25 1 1
      164 GETIMPORT                        R26 K5 [require]
      166 GETTABLEKS                       R29 R0 K10 ["Src"]
      168 GETTABLEKS                       R28 R29 K11 ["Util"]
      170 GETTABLEKS                       R27 R28 K32 ["Foundation"]
      172 CALL                             R26 1 1
      173 GETTABLEKS                       R27 R26 K38 ["View"]
      175 GETTABLEKS                       R28 R26 K39 ["Dropdown"]
      177 GETTABLEKS                       R30 R26 K40 ["Enums"]
      179 GETTABLEKS                       R29 R30 K41 ["InputSize"]
      181 GETTABLEKS                       R31 R26 K40 ["Enums"]
      183 GETTABLEKS                       R30 R31 K42 ["IconName"]
      185 GETTABLEKS                       R31 R26 K43 ["SystemBanner"]
      187 GETTABLEKS                       R33 R26 K40 ["Enums"]
      189 GETTABLEKS                       R32 R33 K44 ["AlertVariant"]
      191 GETTABLEKS                       R34 R26 K40 ["Enums"]
      193 GETTABLEKS                       R33 R34 K45 ["AlertSeverity"]
      195 GETTABLEKS                       R35 R26 K40 ["Enums"]
      197 GETTABLEKS                       R34 R35 K46 ["ButtonVariant"]
      199 GETIMPORT                        R35 K5 [require]
      201 GETTABLEKS                       R39 R0 K10 ["Src"]
      203 GETTABLEKS                       R38 R39 K11 ["Util"]
      205 GETTABLEKS                       R37 R38 K47 ["Telemetry"]
      207 GETTABLEKS                       R36 R37 K48 ["TelemetryContext"]
      209 CALL                             R35 1 1
      210 GETIMPORT                        R36 K5 [require]
      212 GETTABLEKS                       R40 R0 K10 ["Src"]
      214 GETTABLEKS                       R39 R40 K11 ["Util"]
      216 GETTABLEKS                       R38 R39 K47 ["Telemetry"]
      218 GETTABLEKS                       R37 R38 K49 ["StartPageTelemetryEvent"]
      220 CALL                             R36 1 1
      221 GETIMPORT                        R37 K5 [require]
      223 GETTABLEKS                       R41 R0 K10 ["Src"]
      225 GETTABLEKS                       R40 R41 K11 ["Util"]
      227 GETTABLEKS                       R39 R40 K47 ["Telemetry"]
      229 GETTABLEKS                       R38 R39 K50 ["StudioSafetyUpsellClickedEvent"]
      231 CALL                             R37 1 1
      232 GETIMPORT                        R38 K5 [require]
      234 GETTABLEKS                       R41 R0 K10 ["Src"]
      236 GETTABLEKS                       R40 R41 K33 ["Components"]
      238 GETTABLEKS                       R39 R40 K51 ["Shimmer"]
      240 CALL                             R38 1 1
      241 GETIMPORT                        R39 K5 [require]
      243 GETTABLEKS                       R43 R0 K10 ["Src"]
      245 GETTABLEKS                       R42 R43 K32 ["Foundation"]
      247 GETTABLEKS                       R41 R42 K33 ["Components"]
      249 GETTABLEKS                       R40 R41 K52 ["PillTabs"]
      251 CALL                             R39 1 1
      252 GETIMPORT                        R40 K5 [require]
      254 GETTABLEKS                       R43 R0 K10 ["Src"]
      256 GETTABLEKS                       R42 R43 K33 ["Components"]
      258 GETTABLEKS                       R41 R42 K53 ["ExperiencesTable"]
      260 CALL                             R40 1 1
      261 GETIMPORT                        R41 K5 [require]
      263 GETTABLEKS                       R45 R0 K10 ["Src"]
      265 GETTABLEKS                       R44 R45 K32 ["Foundation"]
      267 GETTABLEKS                       R43 R44 K33 ["Components"]
      269 GETTABLEKS                       R42 R43 K54 ["NoResultsFound"]
      271 CALL                             R41 1 1
      272 GETIMPORT                        R42 K5 [require]
      274 GETTABLEKS                       R45 R0 K10 ["Src"]
      276 GETTABLEKS                       R44 R45 K55 ["Hooks"]
      278 GETTABLEKS                       R43 R44 K56 ["useShowVerifyAgeBanner"]
      280 CALL                             R42 1 1
      281 GETIMPORT                        R43 K5 [require]
      283 GETTABLEKS                       R46 R0 K10 ["Src"]
      285 GETTABLEKS                       R45 R46 K55 ["Hooks"]
      287 GETTABLEKS                       R44 R45 K57 ["useEstablishTrustDialog"]
      289 CALL                             R43 1 1
      290 GETTABLEKS                       R44 R17 K28 ["ContextServices"]
      292 GETIMPORT                        R45 K5 [require]
      294 GETTABLEKS                       R47 R0 K10 ["Src"]
      296 GETTABLEKS                       R46 R47 K58 ["Types"]
      298 CALL                             R45 1 1
      299 GETIMPORT                        R46 K5 [require]
      301 GETTABLEKS                       R49 R0 K10 ["Src"]
      303 GETTABLEKS                       R48 R49 K16 ["SharedFlags"]
      305 GETTABLEKS                       R47 R48 K59 ["getFStringLuaStartPageOSDeprecationLink"]
      307 CALL                             R46 1 1
      308 CALL                             R46 0 1
      309 GETIMPORT                        R47 K5 [require]
      311 GETTABLEKS                       R50 R0 K10 ["Src"]
      313 GETTABLEKS                       R49 R50 K16 ["SharedFlags"]
      315 GETTABLEKS                       R48 R49 K60 ["getFFlagLuaStartPageBuilderIcons"]
      317 CALL                             R47 1 1
      318 CALL                             R47 0 1
      319 GETIMPORT                        R48 K63 [UDim2.fromOffset]
      321 LOADN                            R49 16
      322 LOADN                            R50 16
      323 CALL                             R48 2 1
      324 DUPTABLE                         R49 K68 [{"label", "width", "size", "maxHeight"}]
      325 LOADK                            R50 K69 [""]
      326 SETTABLEKS                       R50 R49 K64 ["label"]
      328 GETIMPORT                        R50 K72 [UDim.new]
      330 LOADN                            R51 0
      331 LOADN                            R52 186
      332 CALL                             R50 2 1
      333 SETTABLEKS                       R50 R49 K65 ["width"]
      335 GETTABLEKS                       R50 R29 K73 ["Small"]
      337 SETTABLEKS                       R50 R49 K66 ["size"]
      339 LOADN                            R50 44
      340 SETTABLEKS                       R50 R49 K67 ["maxHeight"]
      342 NEWTABLE                         R50 0 2
      344 DUPTABLE                         R51 K77 [{"id", "icon", "name"}]
      345 LOADK                            R52 K78 ["grid"]
      346 SETTABLEKS                       R52 R51 K74 ["id"]
      348 LOADK                            R52 K79 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Large/Grid.png"]
      349 SETTABLEKS                       R52 R51 K75 ["icon"]
      351 JUMPIFNOT                        R47 ; [+3]
      352 GETTABLEKS                       R52 R30 K31 ["Grid"]
      354 JUMP                             ; [+1]
      355 LOADNIL                          R52
      356 SETTABLEKS                       R52 R51 K76 ["name"]
      358 DUPTABLE                         R52 K77 [{"id", "icon", "name"}]
      359 LOADK                            R53 K80 ["list"]
      360 SETTABLEKS                       R53 R52 K74 ["id"]
      362 LOADK                            R53 K81 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Large/Lilst.png"]
      363 SETTABLEKS                       R53 R52 K75 ["icon"]
      365 JUMPIFNOT                        R47 ; [+3]
      366 GETTABLEKS                       R53 R30 K82 ["ListBulleted"]
      368 JUMP                             ; [+1]
      369 LOADNIL                          R53
      370 SETTABLEKS                       R53 R52 K76 ["name"]
      372 SETLIST                          R50 R51 2 [1]
      374 DUPCLOSURE                       R51 K83 [PROTO_1]
      375 CAPTURE                          VAL R15
      376 DUPCLOSURE                       R52 K84 [PROTO_2]
      377 DUPCLOSURE                       R53 K85 [PROTO_22]
      378 CAPTURE                          VAL R44
      379 CAPTURE                          VAL R35
      380 CAPTURE                          VAL R19
      381 CAPTURE                          VAL R2
      382 CAPTURE                          VAL R3
      383 CAPTURE                          VAL R5
      384 CAPTURE                          VAL R15
      385 CAPTURE                          VAL R16
      386 CAPTURE                          VAL R18
      387 CAPTURE                          VAL R9
      388 CAPTURE                          VAL R8
      389 CAPTURE                          VAL R42
      390 CAPTURE                          VAL R43
      391 CAPTURE                          VAL R37
      392 CAPTURE                          VAL R6
      393 CAPTURE                          VAL R7
      394 CAPTURE                          VAL R1
      395 CAPTURE                          VAL R27
      396 CAPTURE                          VAL R31
      397 CAPTURE                          VAL R32
      398 CAPTURE                          VAL R33
      399 CAPTURE                          VAL R34
      400 CAPTURE                          VAL R11
      401 CAPTURE                          VAL R10
      402 CAPTURE                          VAL R12
      403 CAPTURE                          VAL R13
      404 CAPTURE                          VAL R22
      405 CAPTURE                          VAL R46
      406 CAPTURE                          VAL R24
      407 CAPTURE                          VAL R39
      408 CAPTURE                          VAL R36
      409 CAPTURE                          VAL R38
      410 CAPTURE                          VAL R28
      411 CAPTURE                          VAL R14
      412 CAPTURE                          VAL R49
      413 CAPTURE                          VAL R23
      414 CAPTURE                          VAL R50
      415 CAPTURE                          VAL R25
      416 CAPTURE                          VAL R21
      417 CAPTURE                          VAL R40
      418 CAPTURE                          VAL R41
      419 CAPTURE                          VAL R48
      420 RETURN                           R53 1
