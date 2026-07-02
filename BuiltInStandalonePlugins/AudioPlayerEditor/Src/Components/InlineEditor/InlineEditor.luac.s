PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADN                            R2 0
        2 JUMPIFNOTLE                      R1 R2 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K0 ["seek"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADN                            R2 0
        2 JUMPIFNOTLE                      R1 R2 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R2 R0 K0 ["X"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 2
       10 JUMPIFNOT                        R1 ; [+4]
       11 GETUPVAL                         R1 3
       12 GETTABLEKS                       R2 R0 K0 ["X"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 3
        7 GETTABLEKS                       R1 R1 K0 ["stopPlayback"]
        9 CALL                             R1 0 0
       10 GETUPVAL                         R1 4
       11 GETTABLEKS                       R2 R0 K1 ["X"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 JUMPIFNOT                        R1 ; [+6]
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K0 ["beginPlayback"]
        8 GETUPVAL                         R2 3
        9 GETUPVAL                         R3 4
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["stopPlayback"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K1 ["beginPlayback"]
       10 GETUPVAL                         R1 2
       11 GETUPVAL                         R2 3
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["assignProperties"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Data"]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K2 ["seek"]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K1 ["Data"]
       13 GETTABLEKS                       R1 R1 K3 ["TimePosition"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 -1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["loadAndFetchTimeLength"]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["Data"]
        9 GETTABLEKS                       R1 R1 K2 ["AssetId"]
       11 GETUPVAL                         R2 0
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["stopPlayback"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_8:
        0 DUPCLOSURE                       R0 K0 [PROTO_7]
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["useState"]
        8 LOADN                            R4 -1
        9 CALL                             R3 1 2
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K0 ["useState"]
       13 GETTABLEKS                       R6 R0 K1 ["Data"]
       15 GETTABLEKS                       R6 R6 K2 ["TimePosition"]
       17 CALL                             R5 1 2
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R7 R7 K0 ["useState"]
       21 LOADN                            R8 0
       22 CALL                             R7 1 2
       23 GETUPVAL                         R9 0
       24 GETTABLEKS                       R9 R9 K0 ["useState"]
       26 LOADB                            R10 0
       27 CALL                             R9 1 2
       28 GETUPVAL                         R11 0
       29 GETTABLEKS                       R11 R11 K0 ["useState"]
       31 LOADB                            R12 0
       32 CALL                             R11 1 2
       33 GETUPVAL                         R13 0
       34 GETTABLEKS                       R13 R13 K0 ["useState"]
       36 LOADN                            R14 500
       37 CALL                             R13 1 2
       38 MOVE                             R15 R1
       39 JUMPIF                           R15 ; [+1]
       40 AND                              R15 R11 R9
       41 GETUPVAL                         R16 0
       42 GETTABLEKS                       R16 R16 K3 ["useCallback"]
       44 NEWCLOSURE                       R17 P0
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R6
       47 CAPTURE                          UPVAL U1
       48 NEWTABLE                         R18 0 2
       50 MOVE                             R19 R3
       51 MOVE                             R20 R6
       52 SETLIST                          R18 R19 2 [1]
       54 CALL                             R16 2 1
       55 GETUPVAL                         R17 0
       56 GETTABLEKS                       R17 R17 K3 ["useCallback"]
       58 NEWCLOSURE                       R18 P1
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R11
       62 CAPTURE                          VAL R16
       63 NEWTABLE                         R19 0 4
       65 MOVE                             R20 R8
       66 MOVE                             R21 R3
       67 MOVE                             R22 R11
       68 MOVE                             R23 R16
       69 SETLIST                          R19 R20 4 [1]
       71 CALL                             R17 2 1
       72 GETUPVAL                         R18 0
       73 GETTABLEKS                       R18 R18 K3 ["useCallback"]
       75 NEWCLOSURE                       R19 P2
       76 CAPTURE                          VAL R12
       77 CAPTURE                          VAL R10
       78 CAPTURE                          VAL R1
       79 CAPTURE                          UPVAL U1
       80 CAPTURE                          VAL R16
       81 NEWTABLE                         R20 0 4
       83 MOVE                             R21 R1
       84 MOVE                             R22 R12
       85 MOVE                             R23 R10
       86 MOVE                             R24 R16
       87 SETLIST                          R20 R21 4 [1]
       89 CALL                             R18 2 1
       90 GETUPVAL                         R19 0
       91 GETTABLEKS                       R19 R19 K3 ["useCallback"]
       93 NEWCLOSURE                       R20 P3
       94 CAPTURE                          VAL R12
       95 CAPTURE                          VAL R9
       96 CAPTURE                          UPVAL U1
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R6
       99 NEWTABLE                         R21 0 4
      101 MOVE                             R22 R9
      102 MOVE                             R23 R12
      103 MOVE                             R24 R2
      104 MOVE                             R25 R6
      105 SETLIST                          R21 R22 4 [1]
      107 CALL                             R19 2 1
      108 GETUPVAL                         R20 0
      109 GETTABLEKS                       R20 R20 K3 ["useCallback"]
      111 NEWCLOSURE                       R21 P4
      112 CAPTURE                          VAL R1
      113 CAPTURE                          UPVAL U1
      114 CAPTURE                          VAL R2
      115 CAPTURE                          VAL R6
      116 NEWTABLE                         R22 0 3
      118 MOVE                             R23 R1
      119 MOVE                             R24 R2
      120 MOVE                             R25 R6
      121 SETLIST                          R22 R23 3 [1]
      123 CALL                             R20 2 1
      124 GETUPVAL                         R21 0
      125 GETTABLEKS                       R21 R21 K4 ["useEffect"]
      127 NEWCLOSURE                       R22 P5
      128 CAPTURE                          UPVAL U1
      129 CAPTURE                          VAL R0
      130 NEWTABLE                         R23 0 1
      132 GETTABLEKS                       R24 R0 K1 ["Data"]
      134 SETLIST                          R23 R24 1 [1]
      136 CALL                             R21 2 0
      137 GETUPVAL                         R21 0
      138 GETTABLEKS                       R21 R21 K4 ["useEffect"]
      140 NEWCLOSURE                       R22 P6
      141 CAPTURE                          VAL R4
      142 CAPTURE                          UPVAL U1
      143 CAPTURE                          VAL R0
      144 NEWTABLE                         R23 0 1
      146 GETTABLEKS                       R24 R0 K1 ["Data"]
      148 GETTABLEKS                       R24 R24 K5 ["AssetId"]
      150 SETLIST                          R23 R24 1 [1]
      152 CALL                             R21 2 0
      153 GETUPVAL                         R21 0
      154 GETTABLEKS                       R21 R21 K4 ["useEffect"]
      156 DUPCLOSURE                       R22 K6 [PROTO_8]
      157 CAPTURE                          UPVAL U1
      158 NEWTABLE                         R23 0 0
      160 CALL                             R21 2 0
      161 GETUPVAL                         R21 0
      162 GETTABLEKS                       R21 R21 K7 ["createElement"]
      164 GETUPVAL                         R22 2
      165 DUPTABLE                         R23 K10 [{["tag"] = "col gap-none size-full-0 auto-y"}]
      166 DUPTABLE                         R24 K12 [{"WaveformRow"}]
      167 GETUPVAL                         R25 0
      168 GETTABLEKS                       R25 R25 K7 ["createElement"]
      170 GETUPVAL                         R26 2
      171 DUPTABLE                         R27 K16 [{["LayoutOrder"] = 2, ["tag"] = "row align-y-center gap-medium size-full-1000 padding-xsmall"}]
      172 DUPTABLE                         R28 K20 [{"LeftButtons", "WaveformContent", "RightButtons"}]
      173 GETUPVAL                         R29 0
      174 GETTABLEKS                       R29 R29 K7 ["createElement"]
      176 GETUPVAL                         R30 2
      177 DUPTABLE                         R31 K23 [{["LayoutOrder"] = 1, ["tag"] = "col flex-y-evenly align-x-center gap-none size-0-full auto-x"}]
      178 DUPTABLE                         R32 K25 [{"PlayButton"}]
      179 GETUPVAL                         R33 0
      180 GETTABLEKS                       R33 R33 K7 ["createElement"]
      182 GETUPVAL                         R34 3
      183 DUPTABLE                         R35 K32 [{["LayoutOrder"] = 1, ["icon"], ["isCircular"] = True, ["variant"], ["size"], ["onActivated"]}]
      184 JUMPIFNOT                        R15 ; [+8]
      185 GETUPVAL                         R36 4
      186 GETTABLEKS                       R36 R36 K33 ["Enums"]
      188 GETTABLEKS                       R36 R36 K34 ["IconName"]
      190 GETTABLEKS                       R36 R36 K35 ["PauseLarge"]
      192 JUMP                             ; [+7]
      193 GETUPVAL                         R36 4
      194 GETTABLEKS                       R36 R36 K33 ["Enums"]
      196 GETTABLEKS                       R36 R36 K34 ["IconName"]
      198 GETTABLEKS                       R36 R36 K36 ["PlayLarge"]
      200 SETTABLEKS                       R36 R35 K26 ["icon"]
      202 GETUPVAL                         R36 4
      203 GETTABLEKS                       R36 R36 K33 ["Enums"]
      205 GETTABLEKS                       R36 R36 K37 ["ButtonVariant"]
      207 GETTABLEKS                       R36 R36 K38 ["Emphasis"]
      209 SETTABLEKS                       R36 R35 K29 ["variant"]
      211 GETUPVAL                         R36 4
      212 GETTABLEKS                       R36 R36 K33 ["Enums"]
      214 GETTABLEKS                       R36 R36 K39 ["IconSize"]
      216 GETTABLEKS                       R36 R36 K40 ["Small"]
      218 SETTABLEKS                       R36 R35 K30 ["size"]
      220 SETTABLEKS                       R20 R35 K31 ["onActivated"]
      222 CALL                             R33 2 1
      223 SETTABLEKS                       R33 R32 K24 ["PlayButton"]
      225 CALL                             R29 3 1
      226 SETTABLEKS                       R29 R28 K17 ["LeftButtons"]
      228 GETUPVAL                         R29 0
      229 GETTABLEKS                       R29 R29 K7 ["createElement"]
      231 GETUPVAL                         R30 2
      232 DUPTABLE                         R31 K42 [{["LayoutOrder"] = 2, ["tag"] = "col align-x-left fill gap-none size-0-full"}]
      233 DUPTABLE                         R32 K44 [{"WaveformView"}]
      234 GETUPVAL                         R33 0
      235 GETTABLEKS                       R33 R33 K7 ["createElement"]
      237 GETUPVAL                         R34 2
      238 DUPTABLE                         R35 K46 [{["LayoutOrder"] = 1, ["tag"] = "fill size-full-0"}]
      239 DUPTABLE                         R36 K48 [{"GraphCanvas"}]
      240 GETUPVAL                         R37 0
      241 GETTABLEKS                       R37 R37 K7 ["createElement"]
      243 GETUPVAL                         R38 5
      244 DUPTABLE                         R39 K56 [{["GraphRect"], ["ViewportPaddingLeft"], ["ViewportPaddingRight"], ["ViewportPaddingTop"], ["ViewportPaddingBottom"], ["CullingEpsilon"] = 1, ["children"]}]
      245 GETIMPORT                        R40 K59 [Rect.new]
      247 LOADN                            R41 0
      248 LOADN                            R42 -1
      249 LOADN                            R44 0
      250 JUMPIFNOTLT                      R44 R3 ; [+3]
      252 MOVE                             R43 R3
      253 JUMP                             ; [+1]
      254 LOADN                            R43 1
      255 LOADN                            R44 1
      256 CALL                             R40 4 1
      257 SETTABLEKS                       R40 R39 K49 ["GraphRect"]
      259 GETIMPORT                        R40 K61 [UDim.new]
      261 LOADN                            R41 0
      262 LOADN                            R42 0
      263 CALL                             R40 2 1
      264 SETTABLEKS                       R40 R39 K50 ["ViewportPaddingLeft"]
      266 GETIMPORT                        R40 K61 [UDim.new]
      268 LOADN                            R41 0
      269 LOADN                            R42 0
      270 CALL                             R40 2 1
      271 SETTABLEKS                       R40 R39 K51 ["ViewportPaddingRight"]
      273 GETIMPORT                        R40 K61 [UDim.new]
      275 LOADN                            R41 0
      276 LOADN                            R42 0
      277 CALL                             R40 2 1
      278 SETTABLEKS                       R40 R39 K52 ["ViewportPaddingTop"]
      280 GETIMPORT                        R40 K61 [UDim.new]
      282 LOADN                            R41 0
      283 LOADN                            R42 0
      284 CALL                             R40 2 1
      285 SETTABLEKS                       R40 R39 K53 ["ViewportPaddingBottom"]
      287 DUPTABLE                         R40 K64 [{"Waveform", "Touch"}]
      288 GETUPVAL                         R41 0
      289 GETTABLEKS                       R41 R41 K7 ["createElement"]
      291 GETUPVAL                         R42 6
      292 DUPTABLE                         R43 K69 [{"AssetId", "HoveredPosition", "TimeLength", "TimePosition", "Volume", "Resolution"}]
      293 GETTABLEKS                       R44 R0 K1 ["Data"]
      295 GETTABLEKS                       R44 R44 K5 ["AssetId"]
      297 SETTABLEKS                       R44 R43 K5 ["AssetId"]
      299 SETTABLEKS                       R7 R43 K65 ["HoveredPosition"]
      301 SETTABLEKS                       R3 R43 K66 ["TimeLength"]
      303 SETTABLEKS                       R5 R43 K2 ["TimePosition"]
      305 GETTABLEKS                       R44 R0 K1 ["Data"]
      307 GETTABLEKS                       R44 R44 K67 ["Volume"]
      309 SETTABLEKS                       R44 R43 K67 ["Volume"]
      311 SETTABLEKS                       R13 R43 K68 ["Resolution"]
      313 CALL                             R41 2 1
      314 SETTABLEKS                       R41 R40 K62 ["Waveform"]
      316 GETUPVAL                         R41 0
      317 GETTABLEKS                       R41 R41 K7 ["createElement"]
      319 GETUPVAL                         R42 7
      320 DUPTABLE                         R43 K77 [{["ZIndex"] = 10, ["TreatMouseAsAnchor"] = True, ["OnHoverMoved"], ["OnDragStart"], ["OnDragMoved"], ["OnDragEnded"]}]
      321 SETTABLEKS                       R17 R43 K73 ["OnHoverMoved"]
      323 SETTABLEKS                       R18 R43 K74 ["OnDragStart"]
      325 SETTABLEKS                       R17 R43 K75 ["OnDragMoved"]
      327 SETTABLEKS                       R19 R43 K76 ["OnDragEnded"]
      329 CALL                             R41 2 1
      330 SETTABLEKS                       R41 R40 K63 ["Touch"]
      332 SETTABLEKS                       R40 R39 K55 ["children"]
      334 CALL                             R37 2 1
      335 SETTABLEKS                       R37 R36 K47 ["GraphCanvas"]
      337 CALL                             R33 3 1
      338 SETTABLEKS                       R33 R32 K43 ["WaveformView"]
      340 CALL                             R29 3 1
      341 SETTABLEKS                       R29 R28 K18 ["WaveformContent"]
      343 GETUPVAL                         R29 0
      344 GETTABLEKS                       R29 R29 K7 ["createElement"]
      346 GETUPVAL                         R30 2
      347 DUPTABLE                         R31 K79 [{["LayoutOrder"] = 3, ["tag"] = "col flex-y-evenly align-x-center gap-none size-0-full auto-x"}]
      348 DUPTABLE                         R32 K81 [{"EditorButton"}]
      349 GETUPVAL                         R33 0
      350 GETTABLEKS                       R33 R33 K7 ["createElement"]
      352 GETUPVAL                         R34 3
      353 DUPTABLE                         R35 K32 [{["LayoutOrder"] = 1, ["icon"], ["isCircular"] = True, ["variant"], ["size"], ["onActivated"]}]
      354 GETUPVAL                         R36 4
      355 GETTABLEKS                       R36 R36 K33 ["Enums"]
      357 GETTABLEKS                       R36 R36 K34 ["IconName"]
      359 GETTABLEKS                       R36 R36 K82 ["ThreeDotsHorizontal"]
      361 SETTABLEKS                       R36 R35 K26 ["icon"]
      363 GETUPVAL                         R36 4
      364 GETTABLEKS                       R36 R36 K33 ["Enums"]
      366 GETTABLEKS                       R36 R36 K37 ["ButtonVariant"]
      368 GETTABLEKS                       R36 R36 K83 ["Standard"]
      370 SETTABLEKS                       R36 R35 K29 ["variant"]
      372 GETUPVAL                         R36 4
      373 GETTABLEKS                       R36 R36 K33 ["Enums"]
      375 GETTABLEKS                       R36 R36 K39 ["IconSize"]
      377 GETTABLEKS                       R36 R36 K40 ["Small"]
      379 SETTABLEKS                       R36 R35 K30 ["size"]
      381 GETTABLEKS                       R36 R0 K84 ["OnOpenEditor"]
      383 SETTABLEKS                       R36 R35 K31 ["onActivated"]
      385 CALL                             R33 2 1
      386 SETTABLEKS                       R33 R32 K80 ["EditorButton"]
      388 CALL                             R29 3 1
      389 SETTABLEKS                       R29 R28 K19 ["RightButtons"]
      391 CALL                             R25 3 1
      392 SETTABLEKS                       R25 R24 K11 ["WaveformRow"]
      394 CALL                             R21 3 -1
      395 RETURN                           R21 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioPlayerEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["IconButton"]
       23 GETTABLEKS                       R4 R2 K10 ["View"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Packages"]
       29 GETTABLEKS                       R6 R6 K11 ["Graphing"]
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R6 R5 K12 ["Canvas"]
       34 GETTABLEKS                       R7 R5 K13 ["InputDetector"]
       36 GETIMPORT                        R8 K5 [require]
       38 GETTABLEKS                       R9 R0 K14 ["Src"]
       40 GETTABLEKS                       R9 R9 K15 ["Components"]
       42 GETTABLEKS                       R9 R9 K16 ["Waveform"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R9 K5 [require]
       47 GETTABLEKS                       R10 R0 K14 ["Src"]
       49 GETTABLEKS                       R10 R10 K17 ["Util"]
       51 GETTABLEKS                       R10 R10 K18 ["PlayerUtil"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K5 [require]
       56 GETTABLEKS                       R11 R0 K14 ["Src"]
       58 GETTABLEKS                       R11 R11 K19 ["Types"]
       60 CALL                             R10 1 1
       61 DUPCLOSURE                       R11 K20 [PROTO_9]
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R9
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R7
       70 RETURN                           R11 1
