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

PROTO_18:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQ                         R0 R1 ; [+8]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["restartAnimation"]
        6 CALL                             R1 0 0
        7 GETUPVAL                         R1 2
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQ                         R0 R1 ; [+8]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["restartAnimation"]
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

PROTO_22:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_23:
        0 RETURN                           R0 0

PROTO_24:
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
      248 GETUPVAL                         R39 16
      249 GETTABLEKS                       R38 R39 K16 ["createElement"]
      251 GETUPVAL                         R39 17
      252 DUPTABLE                         R40 K18 [{"tag"}]
      253 LOADK                            R41 K19 ["col size-full"]
      254 SETTABLEKS                       R41 R40 K17 ["tag"]
      256 DUPTABLE                         R41 K25 [{"VerifyAgeAlertBanner", "EstablishTrustBanner", "FAEReverificationBanner", "OSDeprecationBanner", "Content"}]
      257 GETUPVAL                         R43 10
      258 JUMPIFNOT                        R43 ; [+78]
      259 JUMPIFNOT                        R27 ; [+77]
      260 GETUPVAL                         R43 16
      261 GETTABLEKS                       R42 R43 K16 ["createElement"]
      263 GETUPVAL                         R43 18
      264 DUPTABLE                         R44 K32 [{"variant", "severity", "title", "description", "actions", "onClose"}]
      265 GETUPVAL                         R46 19
      266 GETTABLEKS                       R45 R46 K33 ["Emphasis"]
      268 SETTABLEKS                       R45 R44 K26 ["variant"]
      270 GETUPVAL                         R46 20
      271 GETTABLEKS                       R45 R46 K34 ["Info"]
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
      299 GETUPVAL                         R48 21
      300 GETTABLEKS                       R47 R48 K42 ["Utility"]
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
      318 GETUPVAL                         R49 21
      319 GETTABLEKS                       R48 R49 K44 ["Standard"]
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
      341 JUMPIFNOT                        R43 ; [+81]
      342 JUMPIFNOT                        R29 ; [+80]
      343 JUMPIF                           R27 ; [+79]
      344 GETUPVAL                         R43 16
      345 GETTABLEKS                       R42 R43 K16 ["createElement"]
      347 GETUPVAL                         R43 18
      348 DUPTABLE                         R44 K32 [{"variant", "severity", "title", "description", "actions", "onClose"}]
      349 GETUPVAL                         R46 19
      350 GETTABLEKS                       R45 R46 K33 ["Emphasis"]
      352 SETTABLEKS                       R45 R44 K26 ["variant"]
      354 GETUPVAL                         R46 20
      355 GETTABLEKS                       R45 R46 K34 ["Info"]
      357 SETTABLEKS                       R45 R44 K27 ["severity"]
      359 LOADK                            R47 K21 ["EstablishTrustBanner"]
      360 LOADK                            R48 K45 ["Title"]
      361 NAMECALL                         R45 R3 K36 ["getText"]
      363 CALL                             R45 3 1
      364 SETTABLEKS                       R45 R44 K28 ["title"]
      366 LOADK                            R47 K21 ["EstablishTrustBanner"]
      367 LOADK                            R48 K46 ["Body"]
      368 NAMECALL                         R45 R3 K36 ["getText"]
      370 CALL                             R45 3 1
      371 SETTABLEKS                       R45 R44 K29 ["description"]
      373 NEWTABLE                         R45 0 2
      375 DUPTABLE                         R46 K40 [{"text", "variant", "onActivated"}]
      376 LOADK                            R49 K0 ["Plugin"]
      377 LOADK                            R50 K41 ["VerifyAgeBanner.SecondaryAction"]
      378 NAMECALL                         R47 R3 K36 ["getText"]
      380 CALL                             R47 3 1
      381 SETTABLEKS                       R47 R46 K38 ["text"]
      383 GETUPVAL                         R48 21
      384 GETTABLEKS                       R47 R48 K42 ["Utility"]
      386 SETTABLEKS                       R47 R46 K26 ["variant"]
      388 NEWCLOSURE                       R47 P9
      389 CAPTURE                          UPVAL U5
      390 CAPTURE                          UPVAL U24
      391 CAPTURE                          VAL R37
      392 SETTABLEKS                       R47 R46 K39 ["onActivated"]
      394 DUPTABLE                         R47 K40 [{"text", "variant", "onActivated"}]
      395 LOADK                            R50 K0 ["Plugin"]
      396 LOADK                            R51 K43 ["VerifyAgeBanner.PrimaryAction"]
      397 NAMECALL                         R48 R3 K36 ["getText"]
      399 CALL                             R48 3 1
      400 SETTABLEKS                       R48 R47 K38 ["text"]
      402 GETUPVAL                         R49 21
      403 GETTABLEKS                       R48 R49 K44 ["Standard"]
      405 SETTABLEKS                       R48 R47 K26 ["variant"]
      407 NEWCLOSURE                       R48 P10
      408 CAPTURE                          REF R30
      409 CAPTURE                          REF R34
      410 CAPTURE                          UPVAL U5
      411 CAPTURE                          UPVAL U25
      412 CAPTURE                          VAL R37
      413 SETTABLEKS                       R48 R47 K39 ["onActivated"]
      415 SETLIST                          R45 R46 2 [1]
      417 SETTABLEKS                       R45 R44 K30 ["actions"]
      419 SETTABLEKS                       R31 R44 K31 ["onClose"]
      421 CALL                             R42 2 1
      422 JUMP                             ; [+1]
      423 LOADNIL                          R42
      424 SETTABLEKS                       R42 R41 K21 ["EstablishTrustBanner"]
      426 GETUPVAL                         R43 26
      427 JUMPIFNOT                        R43 ; [+75]
      428 JUMPIFNOT                        R32 ; [+74]
      429 JUMPIF                           R27 ; [+73]
      430 GETUPVAL                         R43 9
      431 JUMPIFNOT                        R43 ; [+1]
      432 JUMPIF                           R29 ; [+70]
      433 GETUPVAL                         R43 16
      434 GETTABLEKS                       R42 R43 K16 ["createElement"]
      436 GETUPVAL                         R43 18
      437 DUPTABLE                         R44 K47 [{"variant", "severity", "title", "actions", "onClose"}]
      438 GETUPVAL                         R46 19
      439 GETTABLEKS                       R45 R46 K44 ["Standard"]
      441 SETTABLEKS                       R45 R44 K26 ["variant"]
      443 GETUPVAL                         R46 20
      444 GETTABLEKS                       R45 R46 K34 ["Info"]
      446 SETTABLEKS                       R45 R44 K27 ["severity"]
      448 LOADK                            R47 K48 ["AgeReverificationBanner"]
      449 LOADK                            R48 K45 ["Title"]
      450 NAMECALL                         R45 R3 K36 ["getText"]
      452 CALL                             R45 3 1
      453 SETTABLEKS                       R45 R44 K28 ["title"]
      455 NEWTABLE                         R45 0 2
      457 DUPTABLE                         R46 K40 [{"text", "variant", "onActivated"}]
      458 LOADK                            R49 K0 ["Plugin"]
      459 LOADK                            R50 K41 ["VerifyAgeBanner.SecondaryAction"]
      460 NAMECALL                         R47 R3 K36 ["getText"]
      462 CALL                             R47 3 1
      463 SETTABLEKS                       R47 R46 K38 ["text"]
      465 GETUPVAL                         R48 21
      466 GETTABLEKS                       R47 R48 K42 ["Utility"]
      468 SETTABLEKS                       R47 R46 K26 ["variant"]
      470 NEWCLOSURE                       R47 P11
      471 CAPTURE                          UPVAL U5
      472 CAPTURE                          UPVAL U27
      473 CAPTURE                          VAL R37
      474 SETTABLEKS                       R47 R46 K39 ["onActivated"]
      476 DUPTABLE                         R47 K40 [{"text", "variant", "onActivated"}]
      477 LOADK                            R50 K48 ["AgeReverificationBanner"]
      478 LOADK                            R51 K49 ["PrimaryAction"]
      479 NAMECALL                         R48 R3 K36 ["getText"]
      481 CALL                             R48 3 1
      482 SETTABLEKS                       R48 R47 K38 ["text"]
      484 GETUPVAL                         R49 21
      485 GETTABLEKS                       R48 R49 K44 ["Standard"]
      487 SETTABLEKS                       R48 R47 K26 ["variant"]
      489 NEWCLOSURE                       R48 P12
      490 CAPTURE                          UPVAL U5
      491 CAPTURE                          UPVAL U28
      492 CAPTURE                          VAL R37
      493 SETTABLEKS                       R48 R47 K39 ["onActivated"]
      495 SETLIST                          R45 R46 2 [1]
      497 SETTABLEKS                       R45 R44 K30 ["actions"]
      499 SETTABLEKS                       R33 R44 K31 ["onClose"]
      501 CALL                             R42 2 1
      502 JUMP                             ; [+1]
      503 LOADNIL                          R42
      504 SETTABLEKS                       R42 R41 K22 ["FAEReverificationBanner"]
      506 JUMPIF                           R10 ; [+54]
      507 JUMPIF                           R12 ; [+1]
      508 JUMPIFNOT                        R14 ; [+52]
      509 GETUPVAL                         R43 16
      510 GETTABLEKS                       R42 R43 K16 ["createElement"]
      512 GETUPVAL                         R43 29
      513 DUPTABLE                         R44 K53 [{"title", "body", "onClose", "inlineAction", "LayoutOrder"}]
      514 JUMPIFNOT                        R12 ; [+6]
      515 LOADK                            R47 K0 ["Plugin"]
      516 LOADK                            R48 K54 ["OSDeprecationBanner.TitleWin"]
      517 NAMECALL                         R45 R3 K36 ["getText"]
      519 CALL                             R45 3 1
      520 JUMP                             ; [+5]
      521 LOADK                            R47 K0 ["Plugin"]
      522 LOADK                            R48 K55 ["OSDeprecationBanner.TitleMac"]
      523 NAMECALL                         R45 R3 K36 ["getText"]
      525 CALL                             R45 3 1
      526 SETTABLEKS                       R45 R44 K28 ["title"]
      528 LOADK                            R47 K0 ["Plugin"]
      529 LOADK                            R48 K56 ["OSDeprecationBanner.Body"]
      530 NAMECALL                         R45 R3 K36 ["getText"]
      532 CALL                             R45 3 1
      533 SETTABLEKS                       R45 R44 K50 ["body"]
      535 NEWCLOSURE                       R45 P13
      536 CAPTURE                          VAL R1
      537 CAPTURE                          VAL R11
      538 SETTABLEKS                       R45 R44 K31 ["onClose"]
      540 DUPTABLE                         R45 K58 [{"text", "onClick"}]
      541 LOADK                            R48 K0 ["Plugin"]
      542 LOADK                            R49 K59 ["OSDeprecationBanner.Action"]
      543 NAMECALL                         R46 R3 K36 ["getText"]
      545 CALL                             R46 3 1
      546 SETTABLEKS                       R46 R45 K38 ["text"]
      548 DUPCLOSURE                       R46 K60 [PROTO_16]
      549 CAPTURE                          UPVAL U5
      550 CAPTURE                          UPVAL U30
      551 SETTABLEKS                       R46 R45 K57 ["onClick"]
      553 SETTABLEKS                       R45 R44 K51 ["inlineAction"]
      555 MOVE                             R45 R26
      556 CALL                             R45 0 1
      557 SETTABLEKS                       R45 R44 K52 ["LayoutOrder"]
      559 CALL                             R42 2 1
      560 JUMP                             ; [+1]
      561 LOADNIL                          R42
      562 SETTABLEKS                       R42 R41 K23 ["OSDeprecationBanner"]
      564 GETUPVAL                         R43 16
      565 GETTABLEKS                       R42 R43 K16 ["createElement"]
      567 GETUPVAL                         R43 17
      568 DUPTABLE                         R44 K61 [{"tag", "LayoutOrder"}]
      569 LOADK                            R45 K62 ["size-full-0 auto-y col padding-x-xxlarge gap-xlarge padding-top-small"]
      570 SETTABLEKS                       R45 R44 K17 ["tag"]
      572 MOVE                             R45 R26
      573 CALL                             R45 0 1
      574 SETTABLEKS                       R45 R44 K52 ["LayoutOrder"]
      576 DUPTABLE                         R45 K66 [{"Header", "Controls", "PageComponent"}]
      577 GETUPVAL                         R47 16
      578 GETTABLEKS                       R46 R47 K16 ["createElement"]
      580 GETUPVAL                         R47 31
      581 DUPTABLE                         R48 K68 [{"title", "searchBar", "LayoutOrder"}]
      582 GETTABLEKS                       R51 R0 K4 ["Tabs"]
      584 GETTABLE                         R50 R51 R4
      585 GETTABLEKS                       R49 R50 K45 ["Title"]
      587 SETTABLEKS                       R49 R48 K28 ["title"]
      589 GETTABLEKS                       R50 R0 K69 ["HasSearchBar"]
      591 JUMPIFNOT                        R50 ; [+20]
      592 DUPTABLE                         R49 K74 [{"calculatedQuery", "setSearchQuery", "resultComponent", "type"}]
      593 SETTABLEKS                       R25 R49 K70 ["calculatedQuery"]
      595 SETTABLEKS                       R9 R49 K71 ["setSearchQuery"]
      597 GETTABLEKS                       R52 R0 K4 ["Tabs"]
      599 GETTABLE                         R51 R52 R4
      600 GETTABLEKS                       R50 R51 K65 ["PageComponent"]
      602 SETTABLEKS                       R50 R49 K72 ["resultComponent"]
      604 GETTABLEKS                       R52 R0 K4 ["Tabs"]
      606 GETTABLE                         R51 R52 R4
      607 GETTABLEKS                       R50 R51 K45 ["Title"]
      609 SETTABLEKS                       R50 R49 K73 ["type"]
      611 JUMP                             ; [+1]
      612 LOADNIL                          R49
      613 SETTABLEKS                       R49 R48 K67 ["searchBar"]
      615 MOVE                             R49 R26
      616 CALL                             R49 0 1
      617 SETTABLEKS                       R49 R48 K52 ["LayoutOrder"]
      619 CALL                             R46 2 1
      620 SETTABLEKS                       R46 R45 K63 ["Header"]
      622 GETUPVAL                         R47 16
      623 GETTABLEKS                       R46 R47 K16 ["createElement"]
      625 GETUPVAL                         R47 17
      626 DUPTABLE                         R48 K75 [{"LayoutOrder", "tag"}]
      627 MOVE                             R49 R26
      628 CALL                             R49 0 1
      629 SETTABLEKS                       R49 R48 K52 ["LayoutOrder"]
      631 LOADK                            R49 K76 ["size-full-0 auto-y row"]
      632 SETTABLEKS                       R49 R48 K17 ["tag"]
      634 DUPTABLE                         R49 K79 [{"Pills", "DropdownControls"}]
      635 GETTABLEKS                       R51 R0 K80 ["HideTabs"]
      637 JUMPIF                           R51 ; [+27]
      638 GETUPVAL                         R51 16
      639 GETTABLEKS                       R50 R51 K16 ["createElement"]
      641 GETUPVAL                         R51 32
      642 DUPTABLE                         R52 K84 [{"tabs", "defaultSelectedTab", "onTabSelected"}]
      643 GETTABLEKS                       R53 R0 K4 ["Tabs"]
      645 SETTABLEKS                       R53 R52 K81 ["tabs"]
      647 GETTABLEKS                       R55 R0 K4 ["Tabs"]
      649 GETTABLEN                        R54 R55 1
      650 GETTABLEKS                       R53 R54 K85 ["Key"]
      652 SETTABLEKS                       R53 R52 K82 ["defaultSelectedTab"]
      654 NEWCLOSURE                       R53 P15
      655 CAPTURE                          VAL R4
      656 CAPTURE                          VAL R2
      657 CAPTURE                          UPVAL U33
      658 CAPTURE                          VAL R0
      659 CAPTURE                          UPVAL U34
      660 CAPTURE                          VAL R5
      661 SETTABLEKS                       R53 R52 K83 ["onTabSelected"]
      663 CALL                             R50 2 1
      664 JUMP                             ; [+1]
      665 LOADNIL                          R50
      666 SETTABLEKS                       R50 R49 K77 ["Pills"]
      668 GETUPVAL                         R51 16
      669 GETTABLEKS                       R50 R51 K16 ["createElement"]
      671 GETUPVAL                         R51 17
      672 DUPTABLE                         R52 K75 [{"LayoutOrder", "tag"}]
      673 MOVE                             R53 R26
      674 CALL                             R53 0 1
      675 SETTABLEKS                       R53 R52 K52 ["LayoutOrder"]
      677 LOADK                            R53 K86 ["auto-xy row gap-medium align-x-right grow"]
      678 SETTABLEKS                       R53 R52 K17 ["tag"]
      680 DUPTABLE                         R53 K88 [{"GroupDropdown", "SortDropdown", "ToggleView"}]
      681 JUMPIFNOT                        R20 ; [+34]
      682 GETUPVAL                         R55 16
      683 GETTABLEKS                       R54 R55 K16 ["createElement"]
      685 GETUPVAL                         R56 35
      686 GETTABLEKS                       R55 R56 K89 ["Root"]
      688 GETUPVAL                         R57 36
      689 GETTABLEKS                       R56 R57 K90 ["join"]
      691 GETUPVAL                         R57 37
      692 DUPTABLE                         R58 K95 [{"LayoutOrder", "placeholder", "value", "items", "onItemChanged"}]
      693 LOADN                            R59 1
      694 SETTABLEKS                       R59 R58 K52 ["LayoutOrder"]
      696 LOADK                            R61 K0 ["Plugin"]
      697 LOADK                            R62 K96 ["GroupDropdown.Placeholder"]
      698 NAMECALL                         R59 R3 K36 ["getText"]
      700 CALL                             R59 3 1
      701 SETTABLEKS                       R59 R58 K91 ["placeholder"]
      703 SETTABLEKS                       R23 R58 K92 ["value"]
      705 SETTABLEKS                       R20 R58 K93 ["items"]
      707 NEWCLOSURE                       R59 P16
      708 CAPTURE                          VAL R23
      709 CAPTURE                          UPVAL U34
      710 CAPTURE                          VAL R24
      711 SETTABLEKS                       R59 R58 K94 ["onItemChanged"]
      713 CALL                             R56 2 -1
      714 CALL                             R54 -1 1
      715 JUMP                             ; [+1]
      716 LOADNIL                          R54
      717 SETTABLEKS                       R54 R53 K8 ["GroupDropdown"]
      719 JUMPIFNOT                        R19 ; [+34]
      720 GETUPVAL                         R55 16
      721 GETTABLEKS                       R54 R55 K16 ["createElement"]
      723 GETUPVAL                         R56 35
      724 GETTABLEKS                       R55 R56 K89 ["Root"]
      726 GETUPVAL                         R57 36
      727 GETTABLEKS                       R56 R57 K90 ["join"]
      729 GETUPVAL                         R57 37
      730 DUPTABLE                         R58 K95 [{"LayoutOrder", "placeholder", "value", "items", "onItemChanged"}]
      731 LOADN                            R59 2
      732 SETTABLEKS                       R59 R58 K52 ["LayoutOrder"]
      734 LOADK                            R61 K0 ["Plugin"]
      735 LOADK                            R62 K97 ["SortDropdown.Placeholder"]
      736 NAMECALL                         R59 R3 K36 ["getText"]
      738 CALL                             R59 3 1
      739 SETTABLEKS                       R59 R58 K91 ["placeholder"]
      741 SETTABLEKS                       R21 R58 K92 ["value"]
      743 SETTABLEKS                       R19 R58 K93 ["items"]
      745 NEWCLOSURE                       R59 P17
      746 CAPTURE                          VAL R21
      747 CAPTURE                          UPVAL U34
      748 CAPTURE                          VAL R22
      749 SETTABLEKS                       R59 R58 K94 ["onItemChanged"]
      751 CALL                             R56 2 -1
      752 CALL                             R54 -1 1
      753 JUMP                             ; [+1]
      754 LOADNIL                          R54
      755 SETTABLEKS                       R54 R53 K6 ["SortDropdown"]
      757 GETTABLEKS                       R55 R0 K98 ["CanSwapBetweenViews"]
      759 JUMPIFNOT                        R55 ; [+25]
      760 GETUPVAL                         R55 16
      761 GETTABLEKS                       R54 R55 K16 ["createElement"]
      763 GETUPVAL                         R55 38
      764 DUPTABLE                         R56 K100 [{"LayoutOrder", "id", "options", "onActivated"}]
      765 LOADN                            R57 3
      766 SETTABLEKS                       R57 R56 K52 ["LayoutOrder"]
      768 JUMPIFNOT                        R16 ; [+2]
      769 LOADK                            R57 K101 ["grid"]
      770 JUMP                             ; [+1]
      771 LOADK                            R57 K102 ["list"]
      772 SETTABLEKS                       R57 R56 K10 ["id"]
      774 GETUPVAL                         R57 39
      775 SETTABLEKS                       R57 R56 K99 ["options"]
      777 NEWCLOSURE                       R57 P18
      778 CAPTURE                          VAL R1
      779 CAPTURE                          VAL R16
      780 CAPTURE                          VAL R17
      781 SETTABLEKS                       R57 R56 K39 ["onActivated"]
      783 CALL                             R54 2 1
      784 JUMP                             ; [+1]
      785 LOADNIL                          R54
      786 SETTABLEKS                       R54 R53 K87 ["ToggleView"]
      788 CALL                             R50 3 1
      789 SETTABLEKS                       R50 R49 K78 ["DropdownControls"]
      791 CALL                             R46 3 1
      792 SETTABLEKS                       R46 R45 K64 ["Controls"]
      794 GETUPVAL                         R47 16
      795 GETTABLEKS                       R46 R47 K16 ["createElement"]
      797 GETUPVAL                         R47 40
      798 DUPTABLE                         R48 K75 [{"LayoutOrder", "tag"}]
      799 MOVE                             R49 R26
      800 CALL                             R49 0 1
      801 SETTABLEKS                       R49 R48 K52 ["LayoutOrder"]
      803 LOADK                            R49 K103 ["size-full fill"]
      804 SETTABLEKS                       R49 R48 K17 ["tag"]
      806 GETUPVAL                         R50 16
      807 GETTABLEKS                       R49 R50 K16 ["createElement"]
      809 GETTABLEKS                       R52 R0 K4 ["Tabs"]
      811 GETTABLE                         R51 R52 R4
      812 GETTABLEKS                       R50 R51 K65 ["PageComponent"]
      814 DUPTABLE                         R51 K112 [{"DisplayComponent", "Dropdowns", "NoContentDisplayComponent", "CanDisplayComponentAdjustQuery", "DisplayComponentHasAdjustedQuery", "InitialContentHasLoaded", "CellSize", "CellPadding", "BaseQuery"}]
      815 JUMPIFNOT                        R16 ; [+2]
      816 GETUPVAL                         R52 41
      817 JUMP                             ; [+1]
      818 GETUPVAL                         R52 42
      819 SETTABLEKS                       R52 R51 K104 ["DisplayComponent"]
      821 SETTABLEKS                       R18 R51 K5 ["Dropdowns"]
      823 NEWCLOSURE                       R52 P19
      824 CAPTURE                          UPVAL U16
      825 CAPTURE                          UPVAL U43
      826 CAPTURE                          UPVAL U7
      827 CAPTURE                          VAL R8
      828 CAPTURE                          VAL R3
      829 CAPTURE                          VAL R0
      830 CAPTURE                          VAL R4
      831 SETTABLEKS                       R52 R51 K105 ["NoContentDisplayComponent"]
      833 NOT                              R52 R16
      834 JUMPIFNOT                        R52 ; [+4]
      835 MOVE                             R52 R18
      836 JUMPIFNOT                        R52 ; [+2]
      837 GETTABLEKS                       R52 R18 K6 ["SortDropdown"]
      839 SETTABLEKS                       R52 R51 K106 ["CanDisplayComponentAdjustQuery"]
      841 JUMPIF                           R16 ; [+3]
      842 NEWCLOSURE                       R52 P20
      843 CAPTURE                          VAL R7
      844 JUMP                             ; [+1]
      845 LOADNIL                          R52
      846 SETTABLEKS                       R52 R51 K107 ["DisplayComponentHasAdjustedQuery"]
      848 DUPCLOSURE                       R52 K113 [PROTO_23]
      849 SETTABLEKS                       R52 R51 K108 ["InitialContentHasLoaded"]
      851 GETTABLEKS                       R52 R0 K109 ["CellSize"]
      853 SETTABLEKS                       R52 R51 K109 ["CellSize"]
      855 GETUPVAL                         R52 44
      856 SETTABLEKS                       R52 R51 K110 ["CellPadding"]
      858 SETTABLEKS                       R25 R51 K111 ["BaseQuery"]
      860 CALL                             R49 2 -1
      861 CALL                             R46 -1 1
      862 SETTABLEKS                       R46 R45 K65 ["PageComponent"]
      864 CALL                             R42 3 1
      865 SETTABLEKS                       R42 R41 K24 ["Content"]
      867 CALL                             R38 3 -1
      868 CLOSEUPVALS                      R20
      869 RETURN                           R38 -1

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
       58 GETTABLEKS                       R11 R12 K19 ["getFFlagStartPageFAEReverification"]
       60 CALL                             R10 1 1
       61 CALL                             R10 0 1
       62 GETIMPORT                        R11 K5 [require]
       64 GETTABLEKS                       R14 R0 K10 ["Src"]
       66 GETTABLEKS                       R13 R14 K16 ["SharedFlags"]
       68 GETTABLEKS                       R12 R13 K20 ["getFStringLuaStartPageCAEDevForumLink"]
       70 CALL                             R11 1 1
       71 GETIMPORT                        R12 K5 [require]
       73 GETTABLEKS                       R15 R0 K10 ["Src"]
       75 GETTABLEKS                       R14 R15 K16 ["SharedFlags"]
       77 GETTABLEKS                       R13 R14 K21 ["getFStringReVerifyAgeLink"]
       79 CALL                             R12 1 1
       80 GETIMPORT                        R13 K5 [require]
       82 GETTABLEKS                       R16 R0 K10 ["Src"]
       84 GETTABLEKS                       R15 R16 K16 ["SharedFlags"]
       86 GETTABLEKS                       R14 R15 K22 ["getFStringLuaStartPageVerifyAgeLink"]
       88 CALL                             R13 1 1
       89 GETIMPORT                        R14 K5 [require]
       91 GETTABLEKS                       R17 R0 K10 ["Src"]
       93 GETTABLEKS                       R16 R17 K16 ["SharedFlags"]
       95 GETTABLEKS                       R15 R16 K23 ["getFStringLuaStartPageFAEDevForumLink"]
       97 CALL                             R14 1 1
       98 GETIMPORT                        R15 K5 [require]
      100 GETTABLEKS                       R18 R0 K10 ["Src"]
      102 GETTABLEKS                       R17 R18 K16 ["SharedFlags"]
      104 GETTABLEKS                       R16 R17 K24 ["getFStringStartPageEstablishTrustDevForumLink"]
      106 CALL                             R15 1 1
      107 GETIMPORT                        R16 K5 [require]
      109 GETTABLEKS                       R19 R0 K10 ["Src"]
      111 GETTABLEKS                       R18 R19 K16 ["SharedFlags"]
      113 GETTABLEKS                       R17 R18 K25 ["getFStringStartPageVerifyParentalConsentLink"]
      115 CALL                             R16 1 1
      116 GETIMPORT                        R17 K5 [require]
      118 GETTABLEKS                       R20 R0 K10 ["Src"]
      120 GETTABLEKS                       R19 R20 K11 ["Util"]
      122 GETTABLEKS                       R18 R19 K26 ["TypedDash"]
      124 CALL                             R17 1 1
      125 GETTABLEKS                       R18 R17 K27 ["map"]
      127 GETTABLEKS                       R19 R17 K28 ["join"]
      129 GETIMPORT                        R20 K5 [require]
      131 GETTABLEKS                       R22 R0 K6 ["Packages"]
      133 GETTABLEKS                       R21 R22 K29 ["Framework"]
      135 CALL                             R20 1 1
      136 GETTABLEKS                       R22 R20 K11 ["Util"]
      138 GETTABLEKS                       R21 R22 K30 ["counter"]
      140 GETTABLEKS                       R23 R20 K31 ["ContextServices"]
      142 GETTABLEKS                       R22 R23 K32 ["Localization"]
      144 GETTABLEKS                       R23 R20 K33 ["UI"]
      146 GETTABLEKS                       R24 R23 K34 ["Grid"]
      148 GETIMPORT                        R25 K5 [require]
      150 GETTABLEKS                       R29 R0 K10 ["Src"]
      152 GETTABLEKS                       R28 R29 K35 ["Foundation"]
      154 GETTABLEKS                       R27 R28 K36 ["Components"]
      156 GETTABLEKS                       R26 R27 K37 ["Alert"]
      158 CALL                             R25 1 1
      159 GETIMPORT                        R26 K5 [require]
      161 GETTABLEKS                       R30 R0 K10 ["Src"]
      163 GETTABLEKS                       R29 R30 K35 ["Foundation"]
      165 GETTABLEKS                       R28 R29 K36 ["Components"]
      167 GETTABLEKS                       R27 R28 K38 ["ToggleButton"]
      169 CALL                             R26 1 1
      170 GETIMPORT                        R27 K5 [require]
      172 GETTABLEKS                       R31 R0 K10 ["Src"]
      174 GETTABLEKS                       R30 R31 K35 ["Foundation"]
      176 GETTABLEKS                       R29 R30 K36 ["Components"]
      178 GETTABLEKS                       R28 R29 K39 ["PageHeader"]
      180 CALL                             R27 1 1
      181 GETIMPORT                        R28 K5 [require]
      183 GETTABLEKS                       R32 R0 K10 ["Src"]
      185 GETTABLEKS                       R31 R32 K35 ["Foundation"]
      187 GETTABLEKS                       R30 R31 K36 ["Components"]
      189 GETTABLEKS                       R29 R30 K40 ["Frame"]
      191 CALL                             R28 1 1
      192 GETIMPORT                        R29 K5 [require]
      194 GETTABLEKS                       R32 R0 K10 ["Src"]
      196 GETTABLEKS                       R31 R32 K11 ["Util"]
      198 GETTABLEKS                       R30 R31 K35 ["Foundation"]
      200 CALL                             R29 1 1
      201 GETTABLEKS                       R30 R29 K41 ["View"]
      203 GETTABLEKS                       R31 R29 K42 ["Dropdown"]
      205 GETTABLEKS                       R33 R29 K43 ["Enums"]
      207 GETTABLEKS                       R32 R33 K44 ["InputSize"]
      209 GETTABLEKS                       R34 R29 K43 ["Enums"]
      211 GETTABLEKS                       R33 R34 K45 ["IconName"]
      213 GETTABLEKS                       R34 R29 K46 ["SystemBanner"]
      215 GETTABLEKS                       R36 R29 K43 ["Enums"]
      217 GETTABLEKS                       R35 R36 K47 ["AlertVariant"]
      219 GETTABLEKS                       R37 R29 K43 ["Enums"]
      221 GETTABLEKS                       R36 R37 K48 ["AlertSeverity"]
      223 GETTABLEKS                       R38 R29 K43 ["Enums"]
      225 GETTABLEKS                       R37 R38 K49 ["ButtonVariant"]
      227 GETIMPORT                        R38 K5 [require]
      229 GETTABLEKS                       R42 R0 K10 ["Src"]
      231 GETTABLEKS                       R41 R42 K11 ["Util"]
      233 GETTABLEKS                       R40 R41 K50 ["Telemetry"]
      235 GETTABLEKS                       R39 R40 K51 ["TelemetryContext"]
      237 CALL                             R38 1 1
      238 GETIMPORT                        R39 K5 [require]
      240 GETTABLEKS                       R43 R0 K10 ["Src"]
      242 GETTABLEKS                       R42 R43 K11 ["Util"]
      244 GETTABLEKS                       R41 R42 K50 ["Telemetry"]
      246 GETTABLEKS                       R40 R41 K52 ["StartPageTelemetryEvent"]
      248 CALL                             R39 1 1
      249 GETIMPORT                        R40 K5 [require]
      251 GETTABLEKS                       R44 R0 K10 ["Src"]
      253 GETTABLEKS                       R43 R44 K11 ["Util"]
      255 GETTABLEKS                       R42 R43 K50 ["Telemetry"]
      257 GETTABLEKS                       R41 R42 K53 ["StudioSafetyUpsellClickedEvent"]
      259 CALL                             R40 1 1
      260 GETIMPORT                        R41 K5 [require]
      262 GETTABLEKS                       R44 R0 K10 ["Src"]
      264 GETTABLEKS                       R43 R44 K36 ["Components"]
      266 GETTABLEKS                       R42 R43 K54 ["Shimmer"]
      268 CALL                             R41 1 1
      269 GETIMPORT                        R42 K5 [require]
      271 GETTABLEKS                       R46 R0 K10 ["Src"]
      273 GETTABLEKS                       R45 R46 K35 ["Foundation"]
      275 GETTABLEKS                       R44 R45 K36 ["Components"]
      277 GETTABLEKS                       R43 R44 K55 ["PillTabs"]
      279 CALL                             R42 1 1
      280 GETIMPORT                        R43 K5 [require]
      282 GETTABLEKS                       R46 R0 K10 ["Src"]
      284 GETTABLEKS                       R45 R46 K36 ["Components"]
      286 GETTABLEKS                       R44 R45 K56 ["ExperiencesTable"]
      288 CALL                             R43 1 1
      289 GETIMPORT                        R44 K5 [require]
      291 GETTABLEKS                       R48 R0 K10 ["Src"]
      293 GETTABLEKS                       R47 R48 K35 ["Foundation"]
      295 GETTABLEKS                       R46 R47 K36 ["Components"]
      297 GETTABLEKS                       R45 R46 K57 ["NoResultsFound"]
      299 CALL                             R44 1 1
      300 GETIMPORT                        R45 K5 [require]
      302 GETTABLEKS                       R48 R0 K10 ["Src"]
      304 GETTABLEKS                       R47 R48 K58 ["Hooks"]
      306 GETTABLEKS                       R46 R47 K59 ["useShowVerifyAgeBanner"]
      308 CALL                             R45 1 1
      309 GETIMPORT                        R46 K5 [require]
      311 GETTABLEKS                       R49 R0 K10 ["Src"]
      313 GETTABLEKS                       R48 R49 K58 ["Hooks"]
      315 GETTABLEKS                       R47 R48 K60 ["useEstablishTrustDialog"]
      317 CALL                             R46 1 1
      318 GETTABLEKS                       R47 R20 K31 ["ContextServices"]
      320 GETIMPORT                        R48 K5 [require]
      322 GETTABLEKS                       R50 R0 K10 ["Src"]
      324 GETTABLEKS                       R49 R50 K61 ["Types"]
      326 CALL                             R48 1 1
      327 GETIMPORT                        R49 K5 [require]
      329 GETTABLEKS                       R52 R0 K10 ["Src"]
      331 GETTABLEKS                       R51 R52 K16 ["SharedFlags"]
      333 GETTABLEKS                       R50 R51 K62 ["getFStringLuaStartPageOSDeprecationLink"]
      335 CALL                             R49 1 1
      336 CALL                             R49 0 1
      337 GETIMPORT                        R50 K5 [require]
      339 GETTABLEKS                       R53 R0 K10 ["Src"]
      341 GETTABLEKS                       R52 R53 K16 ["SharedFlags"]
      343 GETTABLEKS                       R51 R52 K63 ["getFFlagLuaStartPageBuilderIcons"]
      345 CALL                             R50 1 1
      346 CALL                             R50 0 1
      347 GETIMPORT                        R51 K66 [UDim2.fromOffset]
      349 LOADN                            R52 16
      350 LOADN                            R53 16
      351 CALL                             R51 2 1
      352 DUPTABLE                         R52 K71 [{"label", "width", "size", "maxHeight"}]
      353 LOADK                            R53 K72 [""]
      354 SETTABLEKS                       R53 R52 K67 ["label"]
      356 GETIMPORT                        R53 K75 [UDim.new]
      358 LOADN                            R54 0
      359 LOADN                            R55 186
      360 CALL                             R53 2 1
      361 SETTABLEKS                       R53 R52 K68 ["width"]
      363 GETTABLEKS                       R53 R32 K76 ["Small"]
      365 SETTABLEKS                       R53 R52 K69 ["size"]
      367 LOADN                            R53 44
      368 SETTABLEKS                       R53 R52 K70 ["maxHeight"]
      370 NEWTABLE                         R53 0 2
      372 DUPTABLE                         R54 K80 [{"id", "icon", "name"}]
      373 LOADK                            R55 K81 ["grid"]
      374 SETTABLEKS                       R55 R54 K77 ["id"]
      376 LOADK                            R55 K82 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Large/Grid.png"]
      377 SETTABLEKS                       R55 R54 K78 ["icon"]
      379 JUMPIFNOT                        R50 ; [+3]
      380 GETTABLEKS                       R55 R33 K34 ["Grid"]
      382 JUMP                             ; [+1]
      383 LOADNIL                          R55
      384 SETTABLEKS                       R55 R54 K79 ["name"]
      386 DUPTABLE                         R55 K80 [{"id", "icon", "name"}]
      387 LOADK                            R56 K83 ["list"]
      388 SETTABLEKS                       R56 R55 K77 ["id"]
      390 LOADK                            R56 K84 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Large/Lilst.png"]
      391 SETTABLEKS                       R56 R55 K78 ["icon"]
      393 JUMPIFNOT                        R50 ; [+3]
      394 GETTABLEKS                       R56 R33 K85 ["ListBulleted"]
      396 JUMP                             ; [+1]
      397 LOADNIL                          R56
      398 SETTABLEKS                       R56 R55 K79 ["name"]
      400 SETLIST                          R53 R54 2 [1]
      402 DUPCLOSURE                       R54 K86 [PROTO_1]
      403 CAPTURE                          VAL R18
      404 DUPCLOSURE                       R55 K87 [PROTO_2]
      405 DUPCLOSURE                       R56 K88 [PROTO_24]
      406 CAPTURE                          VAL R47
      407 CAPTURE                          VAL R38
      408 CAPTURE                          VAL R22
      409 CAPTURE                          VAL R2
      410 CAPTURE                          VAL R3
      411 CAPTURE                          VAL R5
      412 CAPTURE                          VAL R18
      413 CAPTURE                          VAL R19
      414 CAPTURE                          VAL R21
      415 CAPTURE                          VAL R9
      416 CAPTURE                          VAL R8
      417 CAPTURE                          VAL R45
      418 CAPTURE                          VAL R46
      419 CAPTURE                          VAL R40
      420 CAPTURE                          VAL R6
      421 CAPTURE                          VAL R7
      422 CAPTURE                          VAL R1
      423 CAPTURE                          VAL R30
      424 CAPTURE                          VAL R34
      425 CAPTURE                          VAL R35
      426 CAPTURE                          VAL R36
      427 CAPTURE                          VAL R37
      428 CAPTURE                          VAL R14
      429 CAPTURE                          VAL R13
      430 CAPTURE                          VAL R15
      431 CAPTURE                          VAL R16
      432 CAPTURE                          VAL R10
      433 CAPTURE                          VAL R11
      434 CAPTURE                          VAL R12
      435 CAPTURE                          VAL R25
      436 CAPTURE                          VAL R49
      437 CAPTURE                          VAL R27
      438 CAPTURE                          VAL R42
      439 CAPTURE                          VAL R39
      440 CAPTURE                          VAL R41
      441 CAPTURE                          VAL R31
      442 CAPTURE                          VAL R17
      443 CAPTURE                          VAL R52
      444 CAPTURE                          VAL R26
      445 CAPTURE                          VAL R53
      446 CAPTURE                          VAL R28
      447 CAPTURE                          VAL R24
      448 CAPTURE                          VAL R43
      449 CAPTURE                          VAL R44
      450 CAPTURE                          VAL R51
      451 RETURN                           R56 1
