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
        2 DUPTABLE                         R5 K6 [{[1] = "click", ["upsellEntrySurface"], ["userId"], ["studioSid"], ["action"]}]
        3 SETTABLEKS                       R0 R5 K2 ["upsellEntrySurface"]
        5 GETUPVAL                         R6 2
        6 NAMECALL                         R6 R6 K7 ["GetUserId"]
        8 CALL                             R6 1 1
        9 SETTABLEKS                       R6 R5 K3 ["userId"]
       11 GETUPVAL                         R6 3
       12 NAMECALL                         R6 R6 K8 ["GetSessionId"]
       14 CALL                             R6 1 1
       15 SETTABLEKS                       R6 R5 K4 ["studioSid"]
       17 SETTABLEKS                       R1 R5 K5 ["action"]
       19 NAMECALL                         R2 R2 K9 ["log"]
       21 CALL                             R2 3 0
       22 RETURN                           R0 0

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
        1 JUMPIFEQ                         R0 R1 ; [+36]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 DUPTABLE                         R4 K7 [{[1] = "navigation", ["telemetrySubtype"] = "tab", ["context"], ["from"], ["to"]}]
        6 GETUPVAL                         R5 3
        7 GETTABLEKS                       R5 R5 K8 ["PageName"]
        9 SETTABLEKS                       R5 R4 K4 ["context"]
       11 GETUPVAL                         R6 3
       12 GETTABLEKS                       R6 R6 K9 ["Tabs"]
       14 GETUPVAL                         R7 0
       15 GETTABLE                         R5 R6 R7
       16 GETTABLEKS                       R5 R5 K10 ["Key"]
       18 SETTABLEKS                       R5 R4 K5 ["from"]
       20 GETUPVAL                         R6 3
       21 GETTABLEKS                       R6 R6 K9 ["Tabs"]
       23 GETTABLE                         R5 R6 R0
       24 GETTABLEKS                       R5 R5 K10 ["Key"]
       26 SETTABLEKS                       R5 R4 K6 ["to"]
       28 NAMECALL                         R1 R1 K11 ["log"]
       30 CALL                             R1 3 0
       31 GETUPVAL                         R1 4
       32 GETTABLEKS                       R1 R1 K12 ["restartAnimation"]
       34 CALL                             R1 0 0
       35 GETUPVAL                         R1 5
       36 MOVE                             R2 R0
       37 CALL                             R1 1 0
       38 RETURN                           R0 0

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
      252 DUPTABLE                         R40 K19 [{["tag"] = "col size-full"}]
      253 DUPTABLE                         R41 K25 [{"VerifyAgeAlertBanner", "EstablishTrustBanner", "FAEReverificationBanner", "OSDeprecationBanner", "Content"}]
      254 GETUPVAL                         R43 10
      255 JUMPIFNOT                        R43 ; [+78]
      256 JUMPIFNOT                        R27 ; [+77]
      257 GETUPVAL                         R42 16
      258 GETTABLEKS                       R42 R42 K16 ["createElement"]
      260 GETUPVAL                         R43 18
      261 DUPTABLE                         R44 K32 [{"variant", "severity", "title", "description", "actions", "onClose"}]
      262 GETUPVAL                         R45 19
      263 GETTABLEKS                       R45 R45 K33 ["Emphasis"]
      265 SETTABLEKS                       R45 R44 K26 ["variant"]
      267 GETUPVAL                         R45 20
      268 GETTABLEKS                       R45 R45 K34 ["Info"]
      270 SETTABLEKS                       R45 R44 K27 ["severity"]
      272 LOADK                            R47 K0 ["Plugin"]
      273 LOADK                            R48 K35 ["VerifyAgeBanner.Title"]
      274 NAMECALL                         R45 R3 K36 ["getText"]
      276 CALL                             R45 3 1
      277 SETTABLEKS                       R45 R44 K28 ["title"]
      279 LOADK                            R47 K0 ["Plugin"]
      280 LOADK                            R48 K37 ["VerifyAgeBanner.Body"]
      281 NAMECALL                         R45 R3 K36 ["getText"]
      283 CALL                             R45 3 1
      284 SETTABLEKS                       R45 R44 K29 ["description"]
      286 NEWTABLE                         R45 0 2
      288 DUPTABLE                         R46 K40 [{"text", "variant", "onActivated"}]
      289 LOADK                            R49 K0 ["Plugin"]
      290 LOADK                            R50 K41 ["VerifyAgeBanner.SecondaryAction"]
      291 NAMECALL                         R47 R3 K36 ["getText"]
      293 CALL                             R47 3 1
      294 SETTABLEKS                       R47 R46 K38 ["text"]
      296 GETUPVAL                         R47 21
      297 GETTABLEKS                       R47 R47 K42 ["Utility"]
      299 SETTABLEKS                       R47 R46 K26 ["variant"]
      301 NEWCLOSURE                       R47 P7
      302 CAPTURE                          UPVAL U5
      303 CAPTURE                          UPVAL U22
      304 CAPTURE                          VAL R37
      305 SETTABLEKS                       R47 R46 K39 ["onActivated"]
      307 DUPTABLE                         R47 K40 [{"text", "variant", "onActivated"}]
      308 LOADK                            R50 K0 ["Plugin"]
      309 LOADK                            R51 K43 ["VerifyAgeBanner.PrimaryAction"]
      310 NAMECALL                         R48 R3 K36 ["getText"]
      312 CALL                             R48 3 1
      313 SETTABLEKS                       R48 R47 K38 ["text"]
      315 GETUPVAL                         R48 21
      316 GETTABLEKS                       R48 R48 K44 ["Standard"]
      318 SETTABLEKS                       R48 R47 K26 ["variant"]
      320 NEWCLOSURE                       R48 P8
      321 CAPTURE                          UPVAL U5
      322 CAPTURE                          UPVAL U23
      323 CAPTURE                          VAL R37
      324 SETTABLEKS                       R48 R47 K39 ["onActivated"]
      326 SETLIST                          R45 R46 2 [1]
      328 SETTABLEKS                       R45 R44 K30 ["actions"]
      330 SETTABLEKS                       R28 R44 K31 ["onClose"]
      332 CALL                             R42 2 1
      333 JUMP                             ; [+1]
      334 LOADNIL                          R42
      335 SETTABLEKS                       R42 R41 K20 ["VerifyAgeAlertBanner"]
      337 GETUPVAL                         R43 9
      338 JUMPIFNOT                        R43 ; [+75]
      339 JUMPIFNOT                        R29 ; [+74]
      340 JUMPIF                           R27 ; [+73]
      341 GETUPVAL                         R42 16
      342 GETTABLEKS                       R42 R42 K16 ["createElement"]
      344 GETUPVAL                         R43 18
      345 DUPTABLE                         R44 K45 [{"variant", "severity", "title", "actions", "onClose"}]
      346 GETUPVAL                         R45 19
      347 GETTABLEKS                       R45 R45 K44 ["Standard"]
      349 SETTABLEKS                       R45 R44 K26 ["variant"]
      351 GETUPVAL                         R45 20
      352 GETTABLEKS                       R45 R45 K46 ["Warning"]
      354 SETTABLEKS                       R45 R44 K27 ["severity"]
      356 LOADK                            R47 K21 ["EstablishTrustBanner"]
      357 LOADK                            R48 K47 ["Title"]
      358 NAMECALL                         R45 R3 K36 ["getText"]
      360 CALL                             R45 3 1
      361 SETTABLEKS                       R45 R44 K28 ["title"]
      363 NEWTABLE                         R45 0 2
      365 DUPTABLE                         R46 K40 [{"text", "variant", "onActivated"}]
      366 LOADK                            R49 K0 ["Plugin"]
      367 LOADK                            R50 K41 ["VerifyAgeBanner.SecondaryAction"]
      368 NAMECALL                         R47 R3 K36 ["getText"]
      370 CALL                             R47 3 1
      371 SETTABLEKS                       R47 R46 K38 ["text"]
      373 GETUPVAL                         R47 21
      374 GETTABLEKS                       R47 R47 K42 ["Utility"]
      376 SETTABLEKS                       R47 R46 K26 ["variant"]
      378 NEWCLOSURE                       R47 P9
      379 CAPTURE                          UPVAL U5
      380 CAPTURE                          UPVAL U24
      381 CAPTURE                          VAL R37
      382 SETTABLEKS                       R47 R46 K39 ["onActivated"]
      384 DUPTABLE                         R47 K40 [{"text", "variant", "onActivated"}]
      385 LOADK                            R50 K0 ["Plugin"]
      386 LOADK                            R51 K43 ["VerifyAgeBanner.PrimaryAction"]
      387 NAMECALL                         R48 R3 K36 ["getText"]
      389 CALL                             R48 3 1
      390 SETTABLEKS                       R48 R47 K38 ["text"]
      392 GETUPVAL                         R48 21
      393 GETTABLEKS                       R48 R48 K44 ["Standard"]
      395 SETTABLEKS                       R48 R47 K26 ["variant"]
      397 NEWCLOSURE                       R48 P10
      398 CAPTURE                          REF R30
      399 CAPTURE                          UPVAL U25
      400 CAPTURE                          REF R34
      401 CAPTURE                          UPVAL U5
      402 CAPTURE                          UPVAL U26
      403 CAPTURE                          VAL R37
      404 SETTABLEKS                       R48 R47 K39 ["onActivated"]
      406 SETLIST                          R45 R46 2 [1]
      408 SETTABLEKS                       R45 R44 K30 ["actions"]
      410 SETTABLEKS                       R31 R44 K31 ["onClose"]
      412 CALL                             R42 2 1
      413 JUMP                             ; [+1]
      414 LOADNIL                          R42
      415 SETTABLEKS                       R42 R41 K21 ["EstablishTrustBanner"]
      417 GETUPVAL                         R43 27
      418 JUMPIFNOT                        R43 ; [+75]
      419 JUMPIFNOT                        R32 ; [+74]
      420 JUMPIF                           R27 ; [+73]
      421 GETUPVAL                         R43 9
      422 JUMPIFNOT                        R43 ; [+1]
      423 JUMPIF                           R29 ; [+70]
      424 GETUPVAL                         R42 16
      425 GETTABLEKS                       R42 R42 K16 ["createElement"]
      427 GETUPVAL                         R43 18
      428 DUPTABLE                         R44 K45 [{"variant", "severity", "title", "actions", "onClose"}]
      429 GETUPVAL                         R45 19
      430 GETTABLEKS                       R45 R45 K44 ["Standard"]
      432 SETTABLEKS                       R45 R44 K26 ["variant"]
      434 GETUPVAL                         R45 20
      435 GETTABLEKS                       R45 R45 K34 ["Info"]
      437 SETTABLEKS                       R45 R44 K27 ["severity"]
      439 LOADK                            R47 K48 ["AgeReverificationBanner"]
      440 LOADK                            R48 K47 ["Title"]
      441 NAMECALL                         R45 R3 K36 ["getText"]
      443 CALL                             R45 3 1
      444 SETTABLEKS                       R45 R44 K28 ["title"]
      446 NEWTABLE                         R45 0 2
      448 DUPTABLE                         R46 K40 [{"text", "variant", "onActivated"}]
      449 LOADK                            R49 K0 ["Plugin"]
      450 LOADK                            R50 K41 ["VerifyAgeBanner.SecondaryAction"]
      451 NAMECALL                         R47 R3 K36 ["getText"]
      453 CALL                             R47 3 1
      454 SETTABLEKS                       R47 R46 K38 ["text"]
      456 GETUPVAL                         R47 21
      457 GETTABLEKS                       R47 R47 K42 ["Utility"]
      459 SETTABLEKS                       R47 R46 K26 ["variant"]
      461 NEWCLOSURE                       R47 P11
      462 CAPTURE                          UPVAL U5
      463 CAPTURE                          UPVAL U28
      464 CAPTURE                          VAL R37
      465 SETTABLEKS                       R47 R46 K39 ["onActivated"]
      467 DUPTABLE                         R47 K40 [{"text", "variant", "onActivated"}]
      468 LOADK                            R50 K48 ["AgeReverificationBanner"]
      469 LOADK                            R51 K49 ["PrimaryAction"]
      470 NAMECALL                         R48 R3 K36 ["getText"]
      472 CALL                             R48 3 1
      473 SETTABLEKS                       R48 R47 K38 ["text"]
      475 GETUPVAL                         R48 21
      476 GETTABLEKS                       R48 R48 K44 ["Standard"]
      478 SETTABLEKS                       R48 R47 K26 ["variant"]
      480 NEWCLOSURE                       R48 P12
      481 CAPTURE                          UPVAL U5
      482 CAPTURE                          UPVAL U29
      483 CAPTURE                          VAL R37
      484 SETTABLEKS                       R48 R47 K39 ["onActivated"]
      486 SETLIST                          R45 R46 2 [1]
      488 SETTABLEKS                       R45 R44 K30 ["actions"]
      490 SETTABLEKS                       R33 R44 K31 ["onClose"]
      492 CALL                             R42 2 1
      493 JUMP                             ; [+1]
      494 LOADNIL                          R42
      495 SETTABLEKS                       R42 R41 K22 ["FAEReverificationBanner"]
      497 JUMPIF                           R10 ; [+54]
      498 JUMPIF                           R12 ; [+1]
      499 JUMPIFNOT                        R14 ; [+52]
      500 GETUPVAL                         R42 16
      501 GETTABLEKS                       R42 R42 K16 ["createElement"]
      503 GETUPVAL                         R43 30
      504 DUPTABLE                         R44 K53 [{"title", "body", "onClose", "inlineAction", "LayoutOrder"}]
      505 JUMPIFNOT                        R12 ; [+6]
      506 LOADK                            R47 K0 ["Plugin"]
      507 LOADK                            R48 K54 ["OSDeprecationBanner.TitleWin"]
      508 NAMECALL                         R45 R3 K36 ["getText"]
      510 CALL                             R45 3 1
      511 JUMP                             ; [+5]
      512 LOADK                            R47 K0 ["Plugin"]
      513 LOADK                            R48 K55 ["OSDeprecationBanner.TitleMac"]
      514 NAMECALL                         R45 R3 K36 ["getText"]
      516 CALL                             R45 3 1
      517 SETTABLEKS                       R45 R44 K28 ["title"]
      519 LOADK                            R47 K0 ["Plugin"]
      520 LOADK                            R48 K56 ["OSDeprecationBanner.Body"]
      521 NAMECALL                         R45 R3 K36 ["getText"]
      523 CALL                             R45 3 1
      524 SETTABLEKS                       R45 R44 K50 ["body"]
      526 NEWCLOSURE                       R45 P13
      527 CAPTURE                          VAL R1
      528 CAPTURE                          VAL R11
      529 SETTABLEKS                       R45 R44 K31 ["onClose"]
      531 DUPTABLE                         R45 K58 [{"text", "onClick"}]
      532 LOADK                            R48 K0 ["Plugin"]
      533 LOADK                            R49 K59 ["OSDeprecationBanner.Action"]
      534 NAMECALL                         R46 R3 K36 ["getText"]
      536 CALL                             R46 3 1
      537 SETTABLEKS                       R46 R45 K38 ["text"]
      539 DUPCLOSURE                       R46 K60 [PROTO_16]
      540 CAPTURE                          UPVAL U5
      541 CAPTURE                          UPVAL U31
      542 SETTABLEKS                       R46 R45 K57 ["onClick"]
      544 SETTABLEKS                       R45 R44 K51 ["inlineAction"]
      546 MOVE                             R45 R26
      547 CALL                             R45 0 1
      548 SETTABLEKS                       R45 R44 K52 ["LayoutOrder"]
      550 CALL                             R42 2 1
      551 JUMP                             ; [+1]
      552 LOADNIL                          R42
      553 SETTABLEKS                       R42 R41 K23 ["OSDeprecationBanner"]
      555 GETUPVAL                         R42 16
      556 GETTABLEKS                       R42 R42 K16 ["createElement"]
      558 GETUPVAL                         R43 17
      559 DUPTABLE                         R44 K62 [{["tag"] = "col gap-xlarge size-full-0 auto-y padding-x-xxlarge padding-top-small", ["LayoutOrder"]}]
      560 MOVE                             R45 R26
      561 CALL                             R45 0 1
      562 SETTABLEKS                       R45 R44 K52 ["LayoutOrder"]
      564 DUPTABLE                         R45 K66 [{"Header", "Controls", "PageComponent"}]
      565 GETUPVAL                         R46 16
      566 GETTABLEKS                       R46 R46 K16 ["createElement"]
      568 GETUPVAL                         R47 32
      569 DUPTABLE                         R48 K68 [{"title", "searchBar", "LayoutOrder"}]
      570 GETTABLEKS                       R50 R0 K4 ["Tabs"]
      572 GETTABLE                         R49 R50 R4
      573 GETTABLEKS                       R49 R49 K47 ["Title"]
      575 SETTABLEKS                       R49 R48 K28 ["title"]
      577 GETTABLEKS                       R50 R0 K69 ["HasSearchBar"]
      579 JUMPIFNOT                        R50 ; [+20]
      580 DUPTABLE                         R49 K74 [{"calculatedQuery", "setSearchQuery", "resultComponent", "type"}]
      581 SETTABLEKS                       R25 R49 K70 ["calculatedQuery"]
      583 SETTABLEKS                       R9 R49 K71 ["setSearchQuery"]
      585 GETTABLEKS                       R51 R0 K4 ["Tabs"]
      587 GETTABLE                         R50 R51 R4
      588 GETTABLEKS                       R50 R50 K65 ["PageComponent"]
      590 SETTABLEKS                       R50 R49 K72 ["resultComponent"]
      592 GETTABLEKS                       R51 R0 K4 ["Tabs"]
      594 GETTABLE                         R50 R51 R4
      595 GETTABLEKS                       R50 R50 K47 ["Title"]
      597 SETTABLEKS                       R50 R49 K73 ["type"]
      599 JUMP                             ; [+1]
      600 LOADNIL                          R49
      601 SETTABLEKS                       R49 R48 K67 ["searchBar"]
      603 MOVE                             R49 R26
      604 CALL                             R49 0 1
      605 SETTABLEKS                       R49 R48 K52 ["LayoutOrder"]
      607 CALL                             R46 2 1
      608 SETTABLEKS                       R46 R45 K63 ["Header"]
      610 GETUPVAL                         R46 16
      611 GETTABLEKS                       R46 R46 K16 ["createElement"]
      613 GETUPVAL                         R47 17
      614 DUPTABLE                         R48 K76 [{["LayoutOrder"], ["tag"] = "row size-full-0 auto-y"}]
      615 MOVE                             R49 R26
      616 CALL                             R49 0 1
      617 SETTABLEKS                       R49 R48 K52 ["LayoutOrder"]
      619 DUPTABLE                         R49 K79 [{"Pills", "DropdownControls"}]
      620 GETTABLEKS                       R51 R0 K80 ["HideTabs"]
      622 JUMPIF                           R51 ; [+27]
      623 GETUPVAL                         R50 16
      624 GETTABLEKS                       R50 R50 K16 ["createElement"]
      626 GETUPVAL                         R51 33
      627 DUPTABLE                         R52 K84 [{"tabs", "defaultSelectedTab", "onTabSelected"}]
      628 GETTABLEKS                       R53 R0 K4 ["Tabs"]
      630 SETTABLEKS                       R53 R52 K81 ["tabs"]
      632 GETTABLEKS                       R54 R0 K4 ["Tabs"]
      634 GETTABLEN                        R53 R54 1
      635 GETTABLEKS                       R53 R53 K85 ["Key"]
      637 SETTABLEKS                       R53 R52 K82 ["defaultSelectedTab"]
      639 NEWCLOSURE                       R53 P15
      640 CAPTURE                          VAL R4
      641 CAPTURE                          VAL R2
      642 CAPTURE                          UPVAL U34
      643 CAPTURE                          VAL R0
      644 CAPTURE                          UPVAL U35
      645 CAPTURE                          VAL R5
      646 SETTABLEKS                       R53 R52 K83 ["onTabSelected"]
      648 CALL                             R50 2 1
      649 JUMP                             ; [+1]
      650 LOADNIL                          R50
      651 SETTABLEKS                       R50 R49 K77 ["Pills"]
      653 GETUPVAL                         R50 16
      654 GETTABLEKS                       R50 R50 K16 ["createElement"]
      656 GETUPVAL                         R51 17
      657 DUPTABLE                         R52 K87 [{["LayoutOrder"], ["tag"] = "row align-x-right grow gap-medium auto-xy"}]
      658 MOVE                             R53 R26
      659 CALL                             R53 0 1
      660 SETTABLEKS                       R53 R52 K52 ["LayoutOrder"]
      662 DUPTABLE                         R53 K89 [{"GroupDropdown", "SortDropdown", "ToggleView"}]
      663 JUMPIFNOT                        R20 ; [+31]
      664 GETUPVAL                         R54 16
      665 GETTABLEKS                       R54 R54 K16 ["createElement"]
      667 GETUPVAL                         R55 36
      668 GETTABLEKS                       R55 R55 K90 ["Root"]
      670 GETUPVAL                         R56 37
      671 GETTABLEKS                       R56 R56 K91 ["join"]
      673 GETUPVAL                         R57 38
      674 DUPTABLE                         R58 K97 [{["LayoutOrder"] = 1, ["placeholder"], ["value"], ["items"], ["onItemChanged"]}]
      675 LOADK                            R61 K0 ["Plugin"]
      676 LOADK                            R62 K98 ["GroupDropdown.Placeholder"]
      677 NAMECALL                         R59 R3 K36 ["getText"]
      679 CALL                             R59 3 1
      680 SETTABLEKS                       R59 R58 K93 ["placeholder"]
      682 SETTABLEKS                       R23 R58 K94 ["value"]
      684 SETTABLEKS                       R20 R58 K95 ["items"]
      686 NEWCLOSURE                       R59 P16
      687 CAPTURE                          VAL R23
      688 CAPTURE                          UPVAL U35
      689 CAPTURE                          VAL R24
      690 SETTABLEKS                       R59 R58 K96 ["onItemChanged"]
      692 CALL                             R56 2 -1
      693 CALL                             R54 -1 1
      694 JUMP                             ; [+1]
      695 LOADNIL                          R54
      696 SETTABLEKS                       R54 R53 K8 ["GroupDropdown"]
      698 JUMPIFNOT                        R19 ; [+31]
      699 GETUPVAL                         R54 16
      700 GETTABLEKS                       R54 R54 K16 ["createElement"]
      702 GETUPVAL                         R55 36
      703 GETTABLEKS                       R55 R55 K90 ["Root"]
      705 GETUPVAL                         R56 37
      706 GETTABLEKS                       R56 R56 K91 ["join"]
      708 GETUPVAL                         R57 38
      709 DUPTABLE                         R58 K100 [{["LayoutOrder"] = 2, ["placeholder"], ["value"], ["items"], ["onItemChanged"]}]
      710 LOADK                            R61 K0 ["Plugin"]
      711 LOADK                            R62 K101 ["SortDropdown.Placeholder"]
      712 NAMECALL                         R59 R3 K36 ["getText"]
      714 CALL                             R59 3 1
      715 SETTABLEKS                       R59 R58 K93 ["placeholder"]
      717 SETTABLEKS                       R21 R58 K94 ["value"]
      719 SETTABLEKS                       R19 R58 K95 ["items"]
      721 NEWCLOSURE                       R59 P17
      722 CAPTURE                          VAL R21
      723 CAPTURE                          UPVAL U35
      724 CAPTURE                          VAL R22
      725 SETTABLEKS                       R59 R58 K96 ["onItemChanged"]
      727 CALL                             R56 2 -1
      728 CALL                             R54 -1 1
      729 JUMP                             ; [+1]
      730 LOADNIL                          R54
      731 SETTABLEKS                       R54 R53 K6 ["SortDropdown"]
      733 GETTABLEKS                       R55 R0 K102 ["CanSwapBetweenViews"]
      735 JUMPIFNOT                        R55 ; [+22]
      736 GETUPVAL                         R54 16
      737 GETTABLEKS                       R54 R54 K16 ["createElement"]
      739 GETUPVAL                         R55 39
      740 DUPTABLE                         R56 K105 [{["LayoutOrder"] = 3, ["id"], ["options"], ["onActivated"]}]
      741 JUMPIFNOT                        R16 ; [+2]
      742 LOADK                            R57 K106 ["grid"]
      743 JUMP                             ; [+1]
      744 LOADK                            R57 K107 ["list"]
      745 SETTABLEKS                       R57 R56 K10 ["id"]
      747 GETUPVAL                         R57 40
      748 SETTABLEKS                       R57 R56 K104 ["options"]
      750 NEWCLOSURE                       R57 P18
      751 CAPTURE                          VAL R1
      752 CAPTURE                          VAL R16
      753 CAPTURE                          VAL R17
      754 SETTABLEKS                       R57 R56 K39 ["onActivated"]
      756 CALL                             R54 2 1
      757 JUMP                             ; [+1]
      758 LOADNIL                          R54
      759 SETTABLEKS                       R54 R53 K88 ["ToggleView"]
      761 CALL                             R50 3 1
      762 SETTABLEKS                       R50 R49 K78 ["DropdownControls"]
      764 CALL                             R46 3 1
      765 SETTABLEKS                       R46 R45 K64 ["Controls"]
      767 GETUPVAL                         R46 16
      768 GETTABLEKS                       R46 R46 K16 ["createElement"]
      770 GETUPVAL                         R47 41
      771 DUPTABLE                         R48 K109 [{["LayoutOrder"], ["tag"] = "fill size-full"}]
      772 MOVE                             R49 R26
      773 CALL                             R49 0 1
      774 SETTABLEKS                       R49 R48 K52 ["LayoutOrder"]
      776 GETUPVAL                         R49 16
      777 GETTABLEKS                       R49 R49 K16 ["createElement"]
      779 GETTABLEKS                       R51 R0 K4 ["Tabs"]
      781 GETTABLE                         R50 R51 R4
      782 GETTABLEKS                       R50 R50 K65 ["PageComponent"]
      784 DUPTABLE                         R51 K118 [{"DisplayComponent", "Dropdowns", "NoContentDisplayComponent", "CanDisplayComponentAdjustQuery", "DisplayComponentHasAdjustedQuery", "InitialContentHasLoaded", "CellSize", "CellPadding", "BaseQuery"}]
      785 JUMPIFNOT                        R16 ; [+2]
      786 GETUPVAL                         R52 42
      787 JUMP                             ; [+1]
      788 GETUPVAL                         R52 43
      789 SETTABLEKS                       R52 R51 K110 ["DisplayComponent"]
      791 SETTABLEKS                       R18 R51 K5 ["Dropdowns"]
      793 NEWCLOSURE                       R52 P19
      794 CAPTURE                          UPVAL U16
      795 CAPTURE                          UPVAL U44
      796 CAPTURE                          UPVAL U7
      797 CAPTURE                          VAL R8
      798 CAPTURE                          VAL R3
      799 CAPTURE                          VAL R0
      800 CAPTURE                          VAL R4
      801 SETTABLEKS                       R52 R51 K111 ["NoContentDisplayComponent"]
      803 NOT                              R52 R16
      804 JUMPIFNOT                        R52 ; [+4]
      805 MOVE                             R52 R18
      806 JUMPIFNOT                        R52 ; [+2]
      807 GETTABLEKS                       R52 R18 K6 ["SortDropdown"]
      809 SETTABLEKS                       R52 R51 K112 ["CanDisplayComponentAdjustQuery"]
      811 JUMPIF                           R16 ; [+3]
      812 NEWCLOSURE                       R52 P20
      813 CAPTURE                          VAL R7
      814 JUMP                             ; [+1]
      815 LOADNIL                          R52
      816 SETTABLEKS                       R52 R51 K113 ["DisplayComponentHasAdjustedQuery"]
      818 DUPCLOSURE                       R52 K119 [PROTO_23]
      819 SETTABLEKS                       R52 R51 K114 ["InitialContentHasLoaded"]
      821 GETTABLEKS                       R52 R0 K115 ["CellSize"]
      823 SETTABLEKS                       R52 R51 K115 ["CellSize"]
      825 GETUPVAL                         R52 45
      826 SETTABLEKS                       R52 R51 K116 ["CellPadding"]
      828 SETTABLEKS                       R25 R51 K117 ["BaseQuery"]
      830 CALL                             R49 2 -1
      831 CALL                             R46 -1 1
      832 SETTABLEKS                       R46 R45 K65 ["PageComponent"]
      834 CALL                             R42 3 1
      835 SETTABLEKS                       R42 R41 K24 ["Content"]
      837 CALL                             R38 3 -1
      838 CLOSEUPVALS                      R20
      839 RETURN                           R38 -1

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
      362 DUPTABLE                         R53 K74 [{["label"] = "", ["width"], ["size"], ["maxHeight"] = 300}]
      363 GETIMPORT                        R54 K77 [UDim.new]
      365 LOADN                            R55 0
      366 LOADN                            R56 186
      367 CALL                             R54 2 1
      368 SETTABLEKS                       R54 R53 K70 ["width"]
      370 GETTABLEKS                       R54 R33 K78 ["Small"]
      372 SETTABLEKS                       R54 R53 K71 ["size"]
      374 NEWTABLE                         R54 0 2
      376 DUPTABLE                         R55 K84 [{["id"] = "grid", ["icon"] = "rbxasset://studio_svg_textures/Lua/StartPage/Dark/Large/Grid.png", ["name"]}]
      377 JUMPIFNOT                        R51 ; [+3]
      378 GETTABLEKS                       R56 R34 K35 ["Grid"]
      380 JUMP                             ; [+1]
      381 LOADNIL                          R56
      382 SETTABLEKS                       R56 R55 K83 ["name"]
      384 DUPTABLE                         R56 K87 [{["id"] = "list", ["icon"] = "rbxasset://studio_svg_textures/Lua/StartPage/Dark/Large/Lilst.png", ["name"]}]
      385 JUMPIFNOT                        R51 ; [+3]
      386 GETTABLEKS                       R57 R34 K88 ["ListBulleted"]
      388 JUMP                             ; [+1]
      389 LOADNIL                          R57
      390 SETTABLEKS                       R57 R56 K83 ["name"]
      392 SETLIST                          R54 R55 2 [1]
      394 DUPCLOSURE                       R55 K89 [PROTO_1]
      395 CAPTURE                          VAL R19
      396 DUPCLOSURE                       R56 K90 [PROTO_2]
      397 DUPCLOSURE                       R57 K91 [PROTO_24]
      398 CAPTURE                          VAL R48
      399 CAPTURE                          VAL R39
      400 CAPTURE                          VAL R23
      401 CAPTURE                          VAL R2
      402 CAPTURE                          VAL R3
      403 CAPTURE                          VAL R5
      404 CAPTURE                          VAL R19
      405 CAPTURE                          VAL R20
      406 CAPTURE                          VAL R22
      407 CAPTURE                          VAL R9
      408 CAPTURE                          VAL R8
      409 CAPTURE                          VAL R46
      410 CAPTURE                          VAL R47
      411 CAPTURE                          VAL R41
      412 CAPTURE                          VAL R6
      413 CAPTURE                          VAL R7
      414 CAPTURE                          VAL R1
      415 CAPTURE                          VAL R31
      416 CAPTURE                          VAL R35
      417 CAPTURE                          VAL R36
      418 CAPTURE                          VAL R37
      419 CAPTURE                          VAL R38
      420 CAPTURE                          VAL R15
      421 CAPTURE                          VAL R14
      422 CAPTURE                          VAL R16
      423 CAPTURE                          VAL R11
      424 CAPTURE                          VAL R17
      425 CAPTURE                          VAL R10
      426 CAPTURE                          VAL R12
      427 CAPTURE                          VAL R13
      428 CAPTURE                          VAL R26
      429 CAPTURE                          VAL R50
      430 CAPTURE                          VAL R28
      431 CAPTURE                          VAL R43
      432 CAPTURE                          VAL R40
      433 CAPTURE                          VAL R42
      434 CAPTURE                          VAL R32
      435 CAPTURE                          VAL R18
      436 CAPTURE                          VAL R53
      437 CAPTURE                          VAL R27
      438 CAPTURE                          VAL R54
      439 CAPTURE                          VAL R29
      440 CAPTURE                          VAL R25
      441 CAPTURE                          VAL R44
      442 CAPTURE                          VAL R45
      443 CAPTURE                          VAL R52
      444 RETURN                           R57 1
