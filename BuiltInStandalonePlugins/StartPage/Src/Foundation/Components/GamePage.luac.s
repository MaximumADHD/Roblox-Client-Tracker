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
       63 JUMPIFNOT                        R18 ; [+26]
       64 JUMPIF                           R16 ; [+3]
       65 GETUPVAL                         R21 6
       66 JUMPIFNOT                        R21 ; [+12]
       67 JUMPIF                           R16 ; [+11]
       68 GETTABLEKS                       R21 R18 K6 ["SortDropdown"]
       70 JUMPIF                           R21 ; [+2]
       71 LOADNIL                          R19
       72 JUMP                             ; [+7]
       73 GETUPVAL                         R22 7
       74 MOVE                             R23 R21
       75 DUPCLOSURE                       R24 K7 [PROTO_0]
       76 CALL                             R22 2 1
       77 MOVE                             R19 R22
       78 JUMP                             ; [+1]
       79 LOADNIL                          R19
       80 GETTABLEKS                       R21 R18 K8 ["GroupDropdown"]
       82 JUMPIF                           R21 ; [+2]
       83 LOADNIL                          R20
       84 JUMP                             ; [+5]
       85 GETUPVAL                         R22 7
       86 MOVE                             R23 R21
       87 DUPCLOSURE                       R24 K7 [PROTO_0]
       88 CALL                             R22 2 1
       89 MOVE                             R20 R22
       90 GETUPVAL                         R21 3
       91 JUMPIFNOT                        R19 ; [+15]
       92 LENGTH                           R23 R19
       93 LOADN                            R24 0
       94 JUMPIFNOTLT                      R24 R23 ; [+12]
       96 GETTABLEKS                       R24 R18 K9 ["DefaultSortIndex"]
       98 JUMPIFNOT                        R24 ; [+3]
       99 GETTABLEKS                       R23 R18 K9 ["DefaultSortIndex"]
      101 JUMP                             ; [+1]
      102 LOADN                            R23 1
      103 GETTABLE                         R22 R19 R23
      104 GETTABLEKS                       R22 R22 K10 ["id"]
      106 JUMP                             ; [+1]
      107 LOADNIL                          R22
      108 CALL                             R21 1 2
      109 GETUPVAL                         R23 3
      110 JUMPIFNOT                        R20 ; [+8]
      111 LENGTH                           R25 R20
      112 LOADN                            R26 0
      113 JUMPIFNOTLT                      R26 R25 ; [+5]
      115 GETTABLEN                        R24 R20 1
      116 GETTABLEKS                       R24 R24 K10 ["id"]
      118 JUMP                             ; [+1]
      119 LOADNIL                          R24
      120 CALL                             R23 1 2
      121 GETUPVAL                         R25 4
      122 NEWCLOSURE                       R26 P5
      123 CAPTURE                          REF R20
      124 CAPTURE                          VAL R24
      125 NEWTABLE                         R27 0 1
      127 MOVE                             R28 R4
      128 SETLIST                          R27 R28 1 [1]
      130 CALL                             R25 2 0
      131 NEWTABLE                         R25 1 0
      133 JUMPIFNOT                        R18 ; [+54]
      134 JUMPIFNOT                        R19 ; [+26]
      135 LENGTH                           R26 R19
      136 LOADN                            R27 0
      137 JUMPIFNOTLT                      R27 R26 ; [+23]
      139 JUMPIFNOT                        R21 ; [+21]
      140 MOVE                             R27 R19
      141 MOVE                             R28 R27
      142 LOADNIL                          R29
      143 LOADNIL                          R30
      144 FORGPREP                         R28
      145 GETTABLEKS                       R33 R32 K10 ["id"]
      147 JUMPIFNOTEQ                      R33 R21 ; [+3]
      149 MOVE                             R26 R32
      150 JUMP                             ; [+3]
      151 FORGLOOP                         R28 2 ; [-7]
      153 LOADNIL                          R26
      154 JUMPIFNOT                        R26 ; [+6]
      155 GETUPVAL                         R27 8
      156 MOVE                             R28 R25
      157 GETTABLEKS                       R29 R26 K11 ["query"]
      159 CALL                             R27 2 1
      160 MOVE                             R25 R27
      161 JUMPIFNOT                        R20 ; [+26]
      162 LENGTH                           R26 R20
      163 LOADN                            R27 0
      164 JUMPIFNOTLT                      R27 R26 ; [+23]
      166 JUMPIFNOT                        R23 ; [+21]
      167 MOVE                             R27 R20
      168 MOVE                             R28 R27
      169 LOADNIL                          R29
      170 LOADNIL                          R30
      171 FORGPREP                         R28
      172 GETTABLEKS                       R33 R32 K10 ["id"]
      174 JUMPIFNOTEQ                      R33 R23 ; [+3]
      176 MOVE                             R26 R32
      177 JUMP                             ; [+3]
      178 FORGLOOP                         R28 2 ; [-7]
      180 LOADNIL                          R26
      181 JUMPIFNOT                        R26 ; [+6]
      182 GETUPVAL                         R27 8
      183 MOVE                             R28 R25
      184 GETTABLEKS                       R29 R26 K11 ["query"]
      186 CALL                             R27 2 1
      187 MOVE                             R25 R27
      188 JUMPIFNOT                        R8 ; [+2]
      189 SETTABLEKS                       R8 R25 K12 ["search"]
      191 JUMPIFNOT                        R6 ; [+5]
      192 GETUPVAL                         R26 8
      193 MOVE                             R27 R25
      194 MOVE                             R28 R6
      195 CALL                             R26 2 1
      196 MOVE                             R25 R26
      197 GETUPVAL                         R26 9
      198 CALL                             R26 0 1
      199 LOADNIL                          R27
      200 LOADNIL                          R28
      201 LOADNIL                          R29
      202 LOADNIL                          R30
      203 LOADNIL                          R31
      204 LOADNIL                          R32
      205 LOADNIL                          R33
      206 LOADNIL                          R34
      207 LOADNIL                          R35
      208 LOADNIL                          R36
      209 GETUPVAL                         R37 10
      210 JUMPIFNOT                        R37 ; [+23]
      211 GETUPVAL                         R37 11
      212 JUMPIFNOT                        R37 ; [+21]
      213 GETUPVAL                         R38 12
      214 CALL                             R38 0 -1
      215 FASTCALL                         TABLE_UNPACK ; [+2]
      216 GETIMPORT                        R37 K15 [table.unpack]
      218 CALL                             R37 -1 7
      219 MOVE                             R27 R37
      220 MOVE                             R29 R38
      221 MOVE                             R30 R39
      222 MOVE                             R32 R40
      223 MOVE                             R28 R41
      224 MOVE                             R31 R42
      225 MOVE                             R33 R43
      226 GETUPVAL                         R37 13
      227 NEWTABLE                         R38 0 0
      229 CALL                             R37 1 3
      230 MOVE                             R34 R37
      231 MOVE                             R35 R38
      232 MOVE                             R36 R39
      233 JUMP                             ; [+12]
      234 GETUPVAL                         R37 11
      235 JUMPIFNOT                        R37 ; [+10]
      236 GETUPVAL                         R38 12
      237 CALL                             R38 0 -1
      238 FASTCALL                         TABLE_UNPACK ; [+2]
      239 GETIMPORT                        R37 K15 [table.unpack]
      241 CALL                             R37 -1 4
      242 MOVE                             R27 R37
      243 MOVE                             R32 R38
      244 MOVE                             R28 R39
      245 MOVE                             R33 R40
      246 NEWCLOSURE                       R37 P6
      247 CAPTURE                          VAL R2
      248 CAPTURE                          UPVAL U14
      249 CAPTURE                          UPVAL U15
      250 CAPTURE                          UPVAL U16
      251 GETUPVAL                         R38 17
      252 GETTABLEKS                       R38 R38 K16 ["createElement"]
      254 GETUPVAL                         R39 18
      255 DUPTABLE                         R40 K19 [{["tag"] = "col size-full"}]
      256 DUPTABLE                         R41 K25 [{"VerifyAgeAlertBanner", "EstablishTrustBanner", "FAEReverificationBanner", "OSDeprecationBanner", "Content"}]
      257 GETUPVAL                         R43 11
      258 JUMPIFNOT                        R43 ; [+78]
      259 JUMPIFNOT                        R27 ; [+77]
      260 GETUPVAL                         R42 17
      261 GETTABLEKS                       R42 R42 K16 ["createElement"]
      263 GETUPVAL                         R43 19
      264 DUPTABLE                         R44 K32 [{"variant", "severity", "title", "description", "actions", "onClose"}]
      265 GETUPVAL                         R45 20
      266 GETTABLEKS                       R45 R45 K33 ["Emphasis"]
      268 SETTABLEKS                       R45 R44 K26 ["variant"]
      270 GETUPVAL                         R45 21
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
      299 GETUPVAL                         R47 22
      300 GETTABLEKS                       R47 R47 K42 ["Utility"]
      302 SETTABLEKS                       R47 R46 K26 ["variant"]
      304 NEWCLOSURE                       R47 P7
      305 CAPTURE                          UPVAL U5
      306 CAPTURE                          UPVAL U23
      307 CAPTURE                          VAL R37
      308 SETTABLEKS                       R47 R46 K39 ["onActivated"]
      310 DUPTABLE                         R47 K40 [{"text", "variant", "onActivated"}]
      311 LOADK                            R50 K0 ["Plugin"]
      312 LOADK                            R51 K43 ["VerifyAgeBanner.PrimaryAction"]
      313 NAMECALL                         R48 R3 K36 ["getText"]
      315 CALL                             R48 3 1
      316 SETTABLEKS                       R48 R47 K38 ["text"]
      318 GETUPVAL                         R48 22
      319 GETTABLEKS                       R48 R48 K44 ["Standard"]
      321 SETTABLEKS                       R48 R47 K26 ["variant"]
      323 NEWCLOSURE                       R48 P8
      324 CAPTURE                          UPVAL U5
      325 CAPTURE                          UPVAL U24
      326 CAPTURE                          VAL R37
      327 SETTABLEKS                       R48 R47 K39 ["onActivated"]
      329 SETLIST                          R45 R46 2 [1]
      331 SETTABLEKS                       R45 R44 K30 ["actions"]
      333 SETTABLEKS                       R28 R44 K31 ["onClose"]
      335 CALL                             R42 2 1
      336 JUMP                             ; [+1]
      337 LOADNIL                          R42
      338 SETTABLEKS                       R42 R41 K20 ["VerifyAgeAlertBanner"]
      340 GETUPVAL                         R43 10
      341 JUMPIFNOT                        R43 ; [+75]
      342 JUMPIFNOT                        R29 ; [+74]
      343 JUMPIF                           R27 ; [+73]
      344 GETUPVAL                         R42 17
      345 GETTABLEKS                       R42 R42 K16 ["createElement"]
      347 GETUPVAL                         R43 19
      348 DUPTABLE                         R44 K45 [{"variant", "severity", "title", "actions", "onClose"}]
      349 GETUPVAL                         R45 20
      350 GETTABLEKS                       R45 R45 K44 ["Standard"]
      352 SETTABLEKS                       R45 R44 K26 ["variant"]
      354 GETUPVAL                         R45 21
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
      376 GETUPVAL                         R47 22
      377 GETTABLEKS                       R47 R47 K42 ["Utility"]
      379 SETTABLEKS                       R47 R46 K26 ["variant"]
      381 NEWCLOSURE                       R47 P9
      382 CAPTURE                          UPVAL U5
      383 CAPTURE                          UPVAL U25
      384 CAPTURE                          VAL R37
      385 SETTABLEKS                       R47 R46 K39 ["onActivated"]
      387 DUPTABLE                         R47 K40 [{"text", "variant", "onActivated"}]
      388 LOADK                            R50 K0 ["Plugin"]
      389 LOADK                            R51 K43 ["VerifyAgeBanner.PrimaryAction"]
      390 NAMECALL                         R48 R3 K36 ["getText"]
      392 CALL                             R48 3 1
      393 SETTABLEKS                       R48 R47 K38 ["text"]
      395 GETUPVAL                         R48 22
      396 GETTABLEKS                       R48 R48 K44 ["Standard"]
      398 SETTABLEKS                       R48 R47 K26 ["variant"]
      400 NEWCLOSURE                       R48 P10
      401 CAPTURE                          REF R30
      402 CAPTURE                          UPVAL U26
      403 CAPTURE                          REF R34
      404 CAPTURE                          UPVAL U5
      405 CAPTURE                          UPVAL U27
      406 CAPTURE                          VAL R37
      407 SETTABLEKS                       R48 R47 K39 ["onActivated"]
      409 SETLIST                          R45 R46 2 [1]
      411 SETTABLEKS                       R45 R44 K30 ["actions"]
      413 SETTABLEKS                       R31 R44 K31 ["onClose"]
      415 CALL                             R42 2 1
      416 JUMP                             ; [+1]
      417 LOADNIL                          R42
      418 SETTABLEKS                       R42 R41 K21 ["EstablishTrustBanner"]
      420 GETUPVAL                         R43 28
      421 JUMPIFNOT                        R43 ; [+75]
      422 JUMPIFNOT                        R32 ; [+74]
      423 JUMPIF                           R27 ; [+73]
      424 GETUPVAL                         R43 10
      425 JUMPIFNOT                        R43 ; [+1]
      426 JUMPIF                           R29 ; [+70]
      427 GETUPVAL                         R42 17
      428 GETTABLEKS                       R42 R42 K16 ["createElement"]
      430 GETUPVAL                         R43 19
      431 DUPTABLE                         R44 K45 [{"variant", "severity", "title", "actions", "onClose"}]
      432 GETUPVAL                         R45 20
      433 GETTABLEKS                       R45 R45 K44 ["Standard"]
      435 SETTABLEKS                       R45 R44 K26 ["variant"]
      437 GETUPVAL                         R45 21
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
      459 GETUPVAL                         R47 22
      460 GETTABLEKS                       R47 R47 K42 ["Utility"]
      462 SETTABLEKS                       R47 R46 K26 ["variant"]
      464 NEWCLOSURE                       R47 P11
      465 CAPTURE                          UPVAL U5
      466 CAPTURE                          UPVAL U29
      467 CAPTURE                          VAL R37
      468 SETTABLEKS                       R47 R46 K39 ["onActivated"]
      470 DUPTABLE                         R47 K40 [{"text", "variant", "onActivated"}]
      471 LOADK                            R50 K48 ["AgeReverificationBanner"]
      472 LOADK                            R51 K49 ["PrimaryAction"]
      473 NAMECALL                         R48 R3 K36 ["getText"]
      475 CALL                             R48 3 1
      476 SETTABLEKS                       R48 R47 K38 ["text"]
      478 GETUPVAL                         R48 22
      479 GETTABLEKS                       R48 R48 K44 ["Standard"]
      481 SETTABLEKS                       R48 R47 K26 ["variant"]
      483 NEWCLOSURE                       R48 P12
      484 CAPTURE                          UPVAL U5
      485 CAPTURE                          UPVAL U30
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
      503 GETUPVAL                         R42 17
      504 GETTABLEKS                       R42 R42 K16 ["createElement"]
      506 GETUPVAL                         R43 31
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
      544 CAPTURE                          UPVAL U32
      545 SETTABLEKS                       R46 R45 K57 ["onClick"]
      547 SETTABLEKS                       R45 R44 K51 ["inlineAction"]
      549 MOVE                             R45 R26
      550 CALL                             R45 0 1
      551 SETTABLEKS                       R45 R44 K52 ["LayoutOrder"]
      553 CALL                             R42 2 1
      554 JUMP                             ; [+1]
      555 LOADNIL                          R42
      556 SETTABLEKS                       R42 R41 K23 ["OSDeprecationBanner"]
      558 GETUPVAL                         R42 17
      559 GETTABLEKS                       R42 R42 K16 ["createElement"]
      561 GETUPVAL                         R43 18
      562 DUPTABLE                         R44 K62 [{["tag"] = "col gap-xlarge size-full-0 auto-y padding-x-xxlarge padding-top-small", ["LayoutOrder"]}]
      563 MOVE                             R45 R26
      564 CALL                             R45 0 1
      565 SETTABLEKS                       R45 R44 K52 ["LayoutOrder"]
      567 DUPTABLE                         R45 K66 [{"Header", "Controls", "PageComponent"}]
      568 GETUPVAL                         R46 17
      569 GETTABLEKS                       R46 R46 K16 ["createElement"]
      571 GETUPVAL                         R47 33
      572 DUPTABLE                         R48 K68 [{"title", "searchBar", "LayoutOrder"}]
      573 GETTABLEKS                       R50 R0 K4 ["Tabs"]
      575 GETTABLE                         R49 R50 R4
      576 GETTABLEKS                       R49 R49 K47 ["Title"]
      578 SETTABLEKS                       R49 R48 K28 ["title"]
      580 GETTABLEKS                       R50 R0 K69 ["HasSearchBar"]
      582 JUMPIFNOT                        R50 ; [+20]
      583 DUPTABLE                         R49 K74 [{"calculatedQuery", "setSearchQuery", "resultComponent", "type"}]
      584 SETTABLEKS                       R25 R49 K70 ["calculatedQuery"]
      586 SETTABLEKS                       R9 R49 K71 ["setSearchQuery"]
      588 GETTABLEKS                       R51 R0 K4 ["Tabs"]
      590 GETTABLE                         R50 R51 R4
      591 GETTABLEKS                       R50 R50 K65 ["PageComponent"]
      593 SETTABLEKS                       R50 R49 K72 ["resultComponent"]
      595 GETTABLEKS                       R51 R0 K4 ["Tabs"]
      597 GETTABLE                         R50 R51 R4
      598 GETTABLEKS                       R50 R50 K47 ["Title"]
      600 SETTABLEKS                       R50 R49 K73 ["type"]
      602 JUMP                             ; [+1]
      603 LOADNIL                          R49
      604 SETTABLEKS                       R49 R48 K67 ["searchBar"]
      606 MOVE                             R49 R26
      607 CALL                             R49 0 1
      608 SETTABLEKS                       R49 R48 K52 ["LayoutOrder"]
      610 CALL                             R46 2 1
      611 SETTABLEKS                       R46 R45 K63 ["Header"]
      613 GETUPVAL                         R46 17
      614 GETTABLEKS                       R46 R46 K16 ["createElement"]
      616 GETUPVAL                         R47 18
      617 DUPTABLE                         R48 K76 [{["LayoutOrder"], ["tag"] = "row size-full-0 auto-y"}]
      618 MOVE                             R49 R26
      619 CALL                             R49 0 1
      620 SETTABLEKS                       R49 R48 K52 ["LayoutOrder"]
      622 DUPTABLE                         R49 K79 [{"Pills", "DropdownControls"}]
      623 GETTABLEKS                       R51 R0 K80 ["HideTabs"]
      625 JUMPIF                           R51 ; [+27]
      626 GETUPVAL                         R50 17
      627 GETTABLEKS                       R50 R50 K16 ["createElement"]
      629 GETUPVAL                         R51 34
      630 DUPTABLE                         R52 K84 [{"tabs", "defaultSelectedTab", "onTabSelected"}]
      631 GETTABLEKS                       R53 R0 K4 ["Tabs"]
      633 SETTABLEKS                       R53 R52 K81 ["tabs"]
      635 GETTABLEKS                       R54 R0 K4 ["Tabs"]
      637 GETTABLEN                        R53 R54 1
      638 GETTABLEKS                       R53 R53 K85 ["Key"]
      640 SETTABLEKS                       R53 R52 K82 ["defaultSelectedTab"]
      642 NEWCLOSURE                       R53 P15
      643 CAPTURE                          VAL R4
      644 CAPTURE                          VAL R2
      645 CAPTURE                          UPVAL U35
      646 CAPTURE                          VAL R0
      647 CAPTURE                          UPVAL U36
      648 CAPTURE                          VAL R5
      649 SETTABLEKS                       R53 R52 K83 ["onTabSelected"]
      651 CALL                             R50 2 1
      652 JUMP                             ; [+1]
      653 LOADNIL                          R50
      654 SETTABLEKS                       R50 R49 K77 ["Pills"]
      656 GETUPVAL                         R50 17
      657 GETTABLEKS                       R50 R50 K16 ["createElement"]
      659 GETUPVAL                         R51 18
      660 DUPTABLE                         R52 K87 [{["LayoutOrder"], ["tag"] = "row align-x-right grow gap-medium auto-xy"}]
      661 MOVE                             R53 R26
      662 CALL                             R53 0 1
      663 SETTABLEKS                       R53 R52 K52 ["LayoutOrder"]
      665 DUPTABLE                         R53 K89 [{"GroupDropdown", "SortDropdown", "ToggleView"}]
      666 JUMPIFNOT                        R20 ; [+31]
      667 GETUPVAL                         R54 17
      668 GETTABLEKS                       R54 R54 K16 ["createElement"]
      670 GETUPVAL                         R55 37
      671 GETTABLEKS                       R55 R55 K90 ["Root"]
      673 GETUPVAL                         R56 38
      674 GETTABLEKS                       R56 R56 K91 ["join"]
      676 GETUPVAL                         R57 39
      677 DUPTABLE                         R58 K97 [{["LayoutOrder"] = 1, ["placeholder"], ["value"], ["items"], ["onItemChanged"]}]
      678 LOADK                            R61 K0 ["Plugin"]
      679 LOADK                            R62 K98 ["GroupDropdown.Placeholder"]
      680 NAMECALL                         R59 R3 K36 ["getText"]
      682 CALL                             R59 3 1
      683 SETTABLEKS                       R59 R58 K93 ["placeholder"]
      685 SETTABLEKS                       R23 R58 K94 ["value"]
      687 SETTABLEKS                       R20 R58 K95 ["items"]
      689 NEWCLOSURE                       R59 P16
      690 CAPTURE                          VAL R23
      691 CAPTURE                          UPVAL U36
      692 CAPTURE                          VAL R24
      693 SETTABLEKS                       R59 R58 K96 ["onItemChanged"]
      695 CALL                             R56 2 -1
      696 CALL                             R54 -1 1
      697 JUMP                             ; [+1]
      698 LOADNIL                          R54
      699 SETTABLEKS                       R54 R53 K8 ["GroupDropdown"]
      701 JUMPIFNOT                        R19 ; [+31]
      702 GETUPVAL                         R54 17
      703 GETTABLEKS                       R54 R54 K16 ["createElement"]
      705 GETUPVAL                         R55 37
      706 GETTABLEKS                       R55 R55 K90 ["Root"]
      708 GETUPVAL                         R56 38
      709 GETTABLEKS                       R56 R56 K91 ["join"]
      711 GETUPVAL                         R57 39
      712 DUPTABLE                         R58 K100 [{["LayoutOrder"] = 2, ["placeholder"], ["value"], ["items"], ["onItemChanged"]}]
      713 LOADK                            R61 K0 ["Plugin"]
      714 LOADK                            R62 K101 ["SortDropdown.Placeholder"]
      715 NAMECALL                         R59 R3 K36 ["getText"]
      717 CALL                             R59 3 1
      718 SETTABLEKS                       R59 R58 K93 ["placeholder"]
      720 SETTABLEKS                       R21 R58 K94 ["value"]
      722 SETTABLEKS                       R19 R58 K95 ["items"]
      724 NEWCLOSURE                       R59 P17
      725 CAPTURE                          VAL R21
      726 CAPTURE                          UPVAL U36
      727 CAPTURE                          VAL R22
      728 SETTABLEKS                       R59 R58 K96 ["onItemChanged"]
      730 CALL                             R56 2 -1
      731 CALL                             R54 -1 1
      732 JUMP                             ; [+1]
      733 LOADNIL                          R54
      734 SETTABLEKS                       R54 R53 K6 ["SortDropdown"]
      736 GETTABLEKS                       R55 R0 K102 ["CanSwapBetweenViews"]
      738 JUMPIFNOT                        R55 ; [+22]
      739 GETUPVAL                         R54 17
      740 GETTABLEKS                       R54 R54 K16 ["createElement"]
      742 GETUPVAL                         R55 40
      743 DUPTABLE                         R56 K105 [{["LayoutOrder"] = 3, ["id"], ["options"], ["onActivated"]}]
      744 JUMPIFNOT                        R16 ; [+2]
      745 LOADK                            R57 K106 ["grid"]
      746 JUMP                             ; [+1]
      747 LOADK                            R57 K107 ["list"]
      748 SETTABLEKS                       R57 R56 K10 ["id"]
      750 GETUPVAL                         R57 41
      751 SETTABLEKS                       R57 R56 K104 ["options"]
      753 NEWCLOSURE                       R57 P18
      754 CAPTURE                          VAL R1
      755 CAPTURE                          VAL R16
      756 CAPTURE                          VAL R17
      757 SETTABLEKS                       R57 R56 K39 ["onActivated"]
      759 CALL                             R54 2 1
      760 JUMP                             ; [+1]
      761 LOADNIL                          R54
      762 SETTABLEKS                       R54 R53 K88 ["ToggleView"]
      764 CALL                             R50 3 1
      765 SETTABLEKS                       R50 R49 K78 ["DropdownControls"]
      767 CALL                             R46 3 1
      768 SETTABLEKS                       R46 R45 K64 ["Controls"]
      770 GETUPVAL                         R46 17
      771 GETTABLEKS                       R46 R46 K16 ["createElement"]
      773 GETUPVAL                         R47 42
      774 DUPTABLE                         R48 K109 [{["LayoutOrder"], ["tag"] = "fill size-full"}]
      775 MOVE                             R49 R26
      776 CALL                             R49 0 1
      777 SETTABLEKS                       R49 R48 K52 ["LayoutOrder"]
      779 GETUPVAL                         R49 17
      780 GETTABLEKS                       R49 R49 K16 ["createElement"]
      782 GETTABLEKS                       R51 R0 K4 ["Tabs"]
      784 GETTABLE                         R50 R51 R4
      785 GETTABLEKS                       R50 R50 K65 ["PageComponent"]
      787 DUPTABLE                         R51 K118 [{"DisplayComponent", "Dropdowns", "NoContentDisplayComponent", "CanDisplayComponentAdjustQuery", "DisplayComponentHasAdjustedQuery", "InitialContentHasLoaded", "CellSize", "CellPadding", "BaseQuery"}]
      788 JUMPIFNOT                        R16 ; [+2]
      789 GETUPVAL                         R52 43
      790 JUMP                             ; [+5]
      791 GETUPVAL                         R53 6
      792 JUMPIFNOT                        R53 ; [+2]
      793 GETUPVAL                         R52 44
      794 JUMP                             ; [+1]
      795 GETUPVAL                         R52 45
      796 SETTABLEKS                       R52 R51 K110 ["DisplayComponent"]
      798 SETTABLEKS                       R18 R51 K5 ["Dropdowns"]
      800 NEWCLOSURE                       R52 P19
      801 CAPTURE                          UPVAL U17
      802 CAPTURE                          UPVAL U46
      803 CAPTURE                          UPVAL U8
      804 CAPTURE                          VAL R8
      805 CAPTURE                          VAL R3
      806 CAPTURE                          VAL R0
      807 CAPTURE                          VAL R4
      808 SETTABLEKS                       R52 R51 K111 ["NoContentDisplayComponent"]
      810 NOT                              R52 R16
      811 JUMPIFNOT                        R52 ; [+4]
      812 MOVE                             R52 R18
      813 JUMPIFNOT                        R52 ; [+2]
      814 GETTABLEKS                       R52 R18 K6 ["SortDropdown"]
      816 SETTABLEKS                       R52 R51 K112 ["CanDisplayComponentAdjustQuery"]
      818 JUMPIF                           R16 ; [+3]
      819 NEWCLOSURE                       R52 P20
      820 CAPTURE                          VAL R7
      821 JUMP                             ; [+1]
      822 LOADNIL                          R52
      823 SETTABLEKS                       R52 R51 K113 ["DisplayComponentHasAdjustedQuery"]
      825 DUPCLOSURE                       R52 K119 [PROTO_23]
      826 SETTABLEKS                       R52 R51 K114 ["InitialContentHasLoaded"]
      828 GETTABLEKS                       R52 R0 K115 ["CellSize"]
      830 SETTABLEKS                       R52 R51 K115 ["CellSize"]
      832 GETUPVAL                         R52 47
      833 SETTABLEKS                       R52 R51 K116 ["CellPadding"]
      835 SETTABLEKS                       R25 R51 K117 ["BaseQuery"]
      837 CALL                             R49 2 -1
      838 CALL                             R46 -1 1
      839 SETTABLEKS                       R46 R45 K65 ["PageComponent"]
      841 CALL                             R42 3 1
      842 SETTABLEKS                       R42 R41 K24 ["Content"]
      844 CALL                             R38 3 -1
      845 CLOSEUPVALS                      R20
      846 RETURN                           R38 -1

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
      296 GETTABLEKS                       R45 R45 K57 ["DEPRECATED_ExperiencesTable"]
      298 CALL                             R44 1 1
      299 GETIMPORT                        R45 K5 [require]
      301 GETTABLEKS                       R46 R0 K10 ["Src"]
      303 GETTABLEKS                       R46 R46 K16 ["SharedFlags"]
      305 GETTABLEKS                       R46 R46 K58 ["getFFlagLuaStartPageNewListView"]
      307 CALL                             R45 1 1
      308 CALL                             R45 0 1
      309 JUMPIFNOT                        R45 ; [+10]
      310 GETIMPORT                        R46 K5 [require]
      312 GETTABLEKS                       R47 R0 K10 ["Src"]
      314 GETTABLEKS                       R47 R47 K37 ["Components"]
      316 GETTABLEKS                       R47 R47 K59 ["ExperiencesListView"]
      318 CALL                             R46 1 1
      319 JUMP                             ; [+1]
      320 LOADNIL                          R46
      321 GETIMPORT                        R47 K5 [require]
      323 GETTABLEKS                       R48 R0 K10 ["Src"]
      325 GETTABLEKS                       R48 R48 K36 ["Foundation"]
      327 GETTABLEKS                       R48 R48 K37 ["Components"]
      329 GETTABLEKS                       R48 R48 K60 ["NoResultsFound"]
      331 CALL                             R47 1 1
      332 GETIMPORT                        R48 K5 [require]
      334 GETTABLEKS                       R49 R0 K10 ["Src"]
      336 GETTABLEKS                       R49 R49 K61 ["Hooks"]
      338 GETTABLEKS                       R49 R49 K62 ["useShowVerifyAgeBanner"]
      340 CALL                             R48 1 1
      341 GETIMPORT                        R49 K5 [require]
      343 GETTABLEKS                       R50 R0 K10 ["Src"]
      345 GETTABLEKS                       R50 R50 K61 ["Hooks"]
      347 GETTABLEKS                       R50 R50 K63 ["useEstablishTrustDialog"]
      349 CALL                             R49 1 1
      350 GETTABLEKS                       R50 R21 K32 ["ContextServices"]
      352 GETIMPORT                        R51 K5 [require]
      354 GETTABLEKS                       R52 R0 K10 ["Src"]
      356 GETTABLEKS                       R52 R52 K64 ["Types"]
      358 CALL                             R51 1 1
      359 GETIMPORT                        R52 K5 [require]
      361 GETTABLEKS                       R53 R0 K10 ["Src"]
      363 GETTABLEKS                       R53 R53 K16 ["SharedFlags"]
      365 GETTABLEKS                       R53 R53 K65 ["getFStringLuaStartPageOSDeprecationLink"]
      367 CALL                             R52 1 1
      368 CALL                             R52 0 1
      369 GETIMPORT                        R53 K5 [require]
      371 GETTABLEKS                       R54 R0 K10 ["Src"]
      373 GETTABLEKS                       R54 R54 K16 ["SharedFlags"]
      375 GETTABLEKS                       R54 R54 K66 ["getFFlagLuaStartPageBuilderIcons"]
      377 CALL                             R53 1 1
      378 CALL                             R53 0 1
      379 GETIMPORT                        R54 K69 [UDim2.fromOffset]
      381 LOADN                            R55 16
      382 LOADN                            R56 16
      383 CALL                             R54 2 1
      384 DUPTABLE                         R55 K76 [{["label"] = "", ["width"], ["size"], ["maxHeight"] = 300}]
      385 GETIMPORT                        R56 K79 [UDim.new]
      387 LOADN                            R57 0
      388 LOADN                            R58 186
      389 CALL                             R56 2 1
      390 SETTABLEKS                       R56 R55 K72 ["width"]
      392 GETTABLEKS                       R56 R33 K80 ["Small"]
      394 SETTABLEKS                       R56 R55 K73 ["size"]
      396 NEWTABLE                         R56 0 2
      398 DUPTABLE                         R57 K86 [{["id"] = "grid", ["icon"] = "rbxasset://studio_svg_textures/Lua/StartPage/Dark/Large/Grid.png", ["name"]}]
      399 JUMPIFNOT                        R53 ; [+3]
      400 GETTABLEKS                       R58 R34 K35 ["Grid"]
      402 JUMP                             ; [+1]
      403 LOADNIL                          R58
      404 SETTABLEKS                       R58 R57 K85 ["name"]
      406 DUPTABLE                         R58 K89 [{["id"] = "list", ["icon"] = "rbxasset://studio_svg_textures/Lua/StartPage/Dark/Large/Lilst.png", ["name"]}]
      407 JUMPIFNOT                        R53 ; [+3]
      408 GETTABLEKS                       R59 R34 K90 ["ListBulleted"]
      410 JUMP                             ; [+1]
      411 LOADNIL                          R59
      412 SETTABLEKS                       R59 R58 K85 ["name"]
      414 SETLIST                          R56 R57 2 [1]
      416 DUPCLOSURE                       R57 K91 [PROTO_1]
      417 CAPTURE                          VAL R19
      418 DUPCLOSURE                       R58 K92 [PROTO_2]
      419 DUPCLOSURE                       R59 K93 [PROTO_24]
      420 CAPTURE                          VAL R50
      421 CAPTURE                          VAL R39
      422 CAPTURE                          VAL R23
      423 CAPTURE                          VAL R2
      424 CAPTURE                          VAL R3
      425 CAPTURE                          VAL R5
      426 CAPTURE                          VAL R45
      427 CAPTURE                          VAL R19
      428 CAPTURE                          VAL R20
      429 CAPTURE                          VAL R22
      430 CAPTURE                          VAL R9
      431 CAPTURE                          VAL R8
      432 CAPTURE                          VAL R48
      433 CAPTURE                          VAL R49
      434 CAPTURE                          VAL R41
      435 CAPTURE                          VAL R6
      436 CAPTURE                          VAL R7
      437 CAPTURE                          VAL R1
      438 CAPTURE                          VAL R31
      439 CAPTURE                          VAL R35
      440 CAPTURE                          VAL R36
      441 CAPTURE                          VAL R37
      442 CAPTURE                          VAL R38
      443 CAPTURE                          VAL R15
      444 CAPTURE                          VAL R14
      445 CAPTURE                          VAL R16
      446 CAPTURE                          VAL R11
      447 CAPTURE                          VAL R17
      448 CAPTURE                          VAL R10
      449 CAPTURE                          VAL R12
      450 CAPTURE                          VAL R13
      451 CAPTURE                          VAL R26
      452 CAPTURE                          VAL R52
      453 CAPTURE                          VAL R28
      454 CAPTURE                          VAL R43
      455 CAPTURE                          VAL R40
      456 CAPTURE                          VAL R42
      457 CAPTURE                          VAL R32
      458 CAPTURE                          VAL R18
      459 CAPTURE                          VAL R55
      460 CAPTURE                          VAL R27
      461 CAPTURE                          VAL R56
      462 CAPTURE                          VAL R29
      463 CAPTURE                          VAL R25
      464 CAPTURE                          VAL R46
      465 CAPTURE                          VAL R44
      466 CAPTURE                          VAL R47
      467 CAPTURE                          VAL R54
      468 RETURN                           R59 1
