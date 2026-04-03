PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADN                            R2 0
        2 JUMPIFNOTLE                      R1 R2 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R1 R2 K0 ["seek"]
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
        6 GETUPVAL                         R2 3
        7 GETTABLEKS                       R1 R2 K0 ["stopPlayback"]
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
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R1 R2 K0 ["beginPlayback"]
        8 GETUPVAL                         R2 3
        9 GETUPVAL                         R3 4
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["stopPlayback"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R0 R1 K1 ["beginPlayback"]
       10 GETUPVAL                         R1 2
       11 GETUPVAL                         R2 3
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["assignProperties"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["Data"]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R0 R1 K2 ["seek"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R2 R3 K1 ["Data"]
       13 GETTABLEKS                       R1 R2 K3 ["TimePosition"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 255
        2 CALL                             R0 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["loadAndFetchTimeLength"]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R2 R3 K1 ["Data"]
        9 GETTABLEKS                       R1 R2 K2 ["AssetId"]
       11 GETUPVAL                         R2 0
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["stopPlayback"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_8:
        0 DUPCLOSURE                       R0 K0 [PROTO_7]
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K0 ["useState"]
        8 LOADN                            R4 255
        9 CALL                             R3 1 2
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R5 R6 K0 ["useState"]
       13 GETTABLEKS                       R7 R0 K1 ["Data"]
       15 GETTABLEKS                       R6 R7 K2 ["TimePosition"]
       17 CALL                             R5 1 2
       18 GETUPVAL                         R8 0
       19 GETTABLEKS                       R7 R8 K0 ["useState"]
       21 LOADN                            R8 0
       22 CALL                             R7 1 2
       23 GETUPVAL                         R10 0
       24 GETTABLEKS                       R9 R10 K0 ["useState"]
       26 LOADB                            R10 0
       27 CALL                             R9 1 2
       28 GETUPVAL                         R12 0
       29 GETTABLEKS                       R11 R12 K0 ["useState"]
       31 LOADB                            R12 0
       32 CALL                             R11 1 2
       33 GETUPVAL                         R14 0
       34 GETTABLEKS                       R13 R14 K0 ["useState"]
       36 LOADN                            R14 244
       37 CALL                             R13 1 2
       38 MOVE                             R15 R1
       39 JUMPIF                           R15 ; [+1]
       40 AND                              R15 R11 R9
       41 GETUPVAL                         R17 0
       42 GETTABLEKS                       R16 R17 K3 ["useCallback"]
       44 NEWCLOSURE                       R17 P0
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R6
       47 CAPTURE                          UPVAL U1
       48 NEWTABLE                         R18 0 2
       50 MOVE                             R19 R3
       51 MOVE                             R20 R6
       52 SETLIST                          R18 R19 2 [1]
       54 CALL                             R16 2 1
       55 GETUPVAL                         R18 0
       56 GETTABLEKS                       R17 R18 K3 ["useCallback"]
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
       72 GETUPVAL                         R19 0
       73 GETTABLEKS                       R18 R19 K3 ["useCallback"]
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
       90 GETUPVAL                         R20 0
       91 GETTABLEKS                       R19 R20 K3 ["useCallback"]
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
      108 GETUPVAL                         R21 0
      109 GETTABLEKS                       R20 R21 K3 ["useCallback"]
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
      124 GETUPVAL                         R22 0
      125 GETTABLEKS                       R21 R22 K4 ["useEffect"]
      127 NEWCLOSURE                       R22 P5
      128 CAPTURE                          UPVAL U1
      129 CAPTURE                          VAL R0
      130 NEWTABLE                         R23 0 1
      132 GETTABLEKS                       R24 R0 K1 ["Data"]
      134 SETLIST                          R23 R24 1 [1]
      136 CALL                             R21 2 0
      137 GETUPVAL                         R22 0
      138 GETTABLEKS                       R21 R22 K4 ["useEffect"]
      140 NEWCLOSURE                       R22 P6
      141 CAPTURE                          VAL R4
      142 CAPTURE                          UPVAL U1
      143 CAPTURE                          VAL R0
      144 NEWTABLE                         R23 0 1
      146 GETTABLEKS                       R25 R0 K1 ["Data"]
      148 GETTABLEKS                       R24 R25 K5 ["AssetId"]
      150 SETLIST                          R23 R24 1 [1]
      152 CALL                             R21 2 0
      153 GETUPVAL                         R22 0
      154 GETTABLEKS                       R21 R22 K4 ["useEffect"]
      156 DUPCLOSURE                       R22 K6 [PROTO_8]
      157 CAPTURE                          UPVAL U1
      158 NEWTABLE                         R23 0 0
      160 CALL                             R21 2 0
      161 GETUPVAL                         R22 0
      162 GETTABLEKS                       R21 R22 K7 ["createElement"]
      164 GETUPVAL                         R22 2
      165 DUPTABLE                         R23 K9 [{"tag"}]
      166 LOADK                            R24 K10 ["col size-full-0 auto-y gap-none"]
      167 SETTABLEKS                       R24 R23 K8 ["tag"]
      169 DUPTABLE                         R24 K12 [{"WaveformRow"}]
      170 GETUPVAL                         R26 0
      171 GETTABLEKS                       R25 R26 K7 ["createElement"]
      173 GETUPVAL                         R26 2
      174 DUPTABLE                         R27 K14 [{"LayoutOrder", "tag"}]
      175 LOADN                            R28 2
      176 SETTABLEKS                       R28 R27 K13 ["LayoutOrder"]
      178 LOADK                            R28 K15 ["row align-y-center gap-medium size-full-1000 padding-xsmall"]
      179 SETTABLEKS                       R28 R27 K8 ["tag"]
      181 DUPTABLE                         R28 K19 [{"LeftButtons", "WaveformContent", "RightButtons"}]
      182 GETUPVAL                         R30 0
      183 GETTABLEKS                       R29 R30 K7 ["createElement"]
      185 GETUPVAL                         R30 2
      186 DUPTABLE                         R31 K14 [{"LayoutOrder", "tag"}]
      187 LOADN                            R32 1
      188 SETTABLEKS                       R32 R31 K13 ["LayoutOrder"]
      190 LOADK                            R32 K20 ["col size-0-full auto-x flex-y-evenly align-x-center gap-none"]
      191 SETTABLEKS                       R32 R31 K8 ["tag"]
      193 DUPTABLE                         R32 K22 [{"PlayButton"}]
      194 GETUPVAL                         R34 0
      195 GETTABLEKS                       R33 R34 K7 ["createElement"]
      197 GETUPVAL                         R34 3
      198 DUPTABLE                         R35 K28 [{"LayoutOrder", "icon", "isCircular", "variant", "size", "onActivated"}]
      199 LOADN                            R36 1
      200 SETTABLEKS                       R36 R35 K13 ["LayoutOrder"]
      202 JUMPIFNOT                        R15 ; [+8]
      203 GETUPVAL                         R39 4
      204 GETTABLEKS                       R38 R39 K29 ["Enums"]
      206 GETTABLEKS                       R37 R38 K30 ["IconName"]
      208 GETTABLEKS                       R36 R37 K31 ["PauseLarge"]
      210 JUMP                             ; [+7]
      211 GETUPVAL                         R39 4
      212 GETTABLEKS                       R38 R39 K29 ["Enums"]
      214 GETTABLEKS                       R37 R38 K30 ["IconName"]
      216 GETTABLEKS                       R36 R37 K32 ["PlayLarge"]
      218 SETTABLEKS                       R36 R35 K23 ["icon"]
      220 LOADB                            R36 1
      221 SETTABLEKS                       R36 R35 K24 ["isCircular"]
      223 GETUPVAL                         R39 4
      224 GETTABLEKS                       R38 R39 K29 ["Enums"]
      226 GETTABLEKS                       R37 R38 K33 ["ButtonVariant"]
      228 GETTABLEKS                       R36 R37 K34 ["Emphasis"]
      230 SETTABLEKS                       R36 R35 K25 ["variant"]
      232 GETUPVAL                         R39 4
      233 GETTABLEKS                       R38 R39 K29 ["Enums"]
      235 GETTABLEKS                       R37 R38 K35 ["IconSize"]
      237 GETTABLEKS                       R36 R37 K36 ["Small"]
      239 SETTABLEKS                       R36 R35 K26 ["size"]
      241 SETTABLEKS                       R20 R35 K27 ["onActivated"]
      243 CALL                             R33 2 1
      244 SETTABLEKS                       R33 R32 K21 ["PlayButton"]
      246 CALL                             R29 3 1
      247 SETTABLEKS                       R29 R28 K16 ["LeftButtons"]
      249 GETUPVAL                         R30 0
      250 GETTABLEKS                       R29 R30 K7 ["createElement"]
      252 GETUPVAL                         R30 2
      253 DUPTABLE                         R31 K14 [{"LayoutOrder", "tag"}]
      254 LOADN                            R32 2
      255 SETTABLEKS                       R32 R31 K13 ["LayoutOrder"]
      257 LOADK                            R32 K37 ["col size-0-full fill align-x-left gap-none"]
      258 SETTABLEKS                       R32 R31 K8 ["tag"]
      260 DUPTABLE                         R32 K39 [{"WaveformView"}]
      261 GETUPVAL                         R34 0
      262 GETTABLEKS                       R33 R34 K7 ["createElement"]
      264 GETUPVAL                         R34 2
      265 DUPTABLE                         R35 K14 [{"LayoutOrder", "tag"}]
      266 LOADN                            R36 1
      267 SETTABLEKS                       R36 R35 K13 ["LayoutOrder"]
      269 LOADK                            R36 K40 ["size-full-0 fill"]
      270 SETTABLEKS                       R36 R35 K8 ["tag"]
      272 DUPTABLE                         R36 K42 [{"GraphCanvas"}]
      273 GETUPVAL                         R38 0
      274 GETTABLEKS                       R37 R38 K7 ["createElement"]
      276 GETUPVAL                         R38 5
      277 DUPTABLE                         R39 K50 [{"GraphRect", "ViewportPaddingLeft", "ViewportPaddingRight", "ViewportPaddingTop", "ViewportPaddingBottom", "CullingEpsilon", "children"}]
      278 GETIMPORT                        R40 K53 [Rect.new]
      280 LOADN                            R41 0
      281 LOADN                            R42 255
      282 LOADN                            R44 0
      283 JUMPIFNOTLT                      R44 R3 ; [+3]
      285 MOVE                             R43 R3
      286 JUMP                             ; [+1]
      287 LOADN                            R43 1
      288 LOADN                            R44 1
      289 CALL                             R40 4 1
      290 SETTABLEKS                       R40 R39 K43 ["GraphRect"]
      292 GETIMPORT                        R40 K55 [UDim.new]
      294 LOADN                            R41 0
      295 LOADN                            R42 0
      296 CALL                             R40 2 1
      297 SETTABLEKS                       R40 R39 K44 ["ViewportPaddingLeft"]
      299 GETIMPORT                        R40 K55 [UDim.new]
      301 LOADN                            R41 0
      302 LOADN                            R42 0
      303 CALL                             R40 2 1
      304 SETTABLEKS                       R40 R39 K45 ["ViewportPaddingRight"]
      306 GETIMPORT                        R40 K55 [UDim.new]
      308 LOADN                            R41 0
      309 LOADN                            R42 0
      310 CALL                             R40 2 1
      311 SETTABLEKS                       R40 R39 K46 ["ViewportPaddingTop"]
      313 GETIMPORT                        R40 K55 [UDim.new]
      315 LOADN                            R41 0
      316 LOADN                            R42 0
      317 CALL                             R40 2 1
      318 SETTABLEKS                       R40 R39 K47 ["ViewportPaddingBottom"]
      320 LOADN                            R40 1
      321 SETTABLEKS                       R40 R39 K48 ["CullingEpsilon"]
      323 DUPTABLE                         R40 K58 [{"Waveform", "Touch"}]
      324 GETUPVAL                         R42 0
      325 GETTABLEKS                       R41 R42 K7 ["createElement"]
      327 GETUPVAL                         R42 6
      328 DUPTABLE                         R43 K63 [{"AssetId", "HoveredPosition", "TimeLength", "TimePosition", "Volume", "Resolution"}]
      329 GETTABLEKS                       R45 R0 K1 ["Data"]
      331 GETTABLEKS                       R44 R45 K5 ["AssetId"]
      333 SETTABLEKS                       R44 R43 K5 ["AssetId"]
      335 SETTABLEKS                       R7 R43 K59 ["HoveredPosition"]
      337 SETTABLEKS                       R3 R43 K60 ["TimeLength"]
      339 SETTABLEKS                       R5 R43 K2 ["TimePosition"]
      341 GETTABLEKS                       R45 R0 K1 ["Data"]
      343 GETTABLEKS                       R44 R45 K61 ["Volume"]
      345 SETTABLEKS                       R44 R43 K61 ["Volume"]
      347 SETTABLEKS                       R13 R43 K62 ["Resolution"]
      349 CALL                             R41 2 1
      350 SETTABLEKS                       R41 R40 K56 ["Waveform"]
      352 GETUPVAL                         R42 0
      353 GETTABLEKS                       R41 R42 K7 ["createElement"]
      355 GETUPVAL                         R42 7
      356 DUPTABLE                         R43 K70 [{"ZIndex", "TreatMouseAsAnchor", "OnHoverMoved", "OnDragStart", "OnDragMoved", "OnDragEnded"}]
      357 LOADN                            R44 10
      358 SETTABLEKS                       R44 R43 K64 ["ZIndex"]
      360 LOADB                            R44 1
      361 SETTABLEKS                       R44 R43 K65 ["TreatMouseAsAnchor"]
      363 SETTABLEKS                       R17 R43 K66 ["OnHoverMoved"]
      365 SETTABLEKS                       R18 R43 K67 ["OnDragStart"]
      367 SETTABLEKS                       R17 R43 K68 ["OnDragMoved"]
      369 SETTABLEKS                       R19 R43 K69 ["OnDragEnded"]
      371 CALL                             R41 2 1
      372 SETTABLEKS                       R41 R40 K57 ["Touch"]
      374 SETTABLEKS                       R40 R39 K49 ["children"]
      376 CALL                             R37 2 1
      377 SETTABLEKS                       R37 R36 K41 ["GraphCanvas"]
      379 CALL                             R33 3 1
      380 SETTABLEKS                       R33 R32 K38 ["WaveformView"]
      382 CALL                             R29 3 1
      383 SETTABLEKS                       R29 R28 K17 ["WaveformContent"]
      385 GETUPVAL                         R30 0
      386 GETTABLEKS                       R29 R30 K7 ["createElement"]
      388 GETUPVAL                         R30 2
      389 DUPTABLE                         R31 K14 [{"LayoutOrder", "tag"}]
      390 LOADN                            R32 3
      391 SETTABLEKS                       R32 R31 K13 ["LayoutOrder"]
      393 LOADK                            R32 K20 ["col size-0-full auto-x flex-y-evenly align-x-center gap-none"]
      394 SETTABLEKS                       R32 R31 K8 ["tag"]
      396 DUPTABLE                         R32 K72 [{"EditorButton"}]
      397 GETUPVAL                         R34 0
      398 GETTABLEKS                       R33 R34 K7 ["createElement"]
      400 GETUPVAL                         R34 3
      401 DUPTABLE                         R35 K28 [{"LayoutOrder", "icon", "isCircular", "variant", "size", "onActivated"}]
      402 LOADN                            R36 1
      403 SETTABLEKS                       R36 R35 K13 ["LayoutOrder"]
      405 GETUPVAL                         R39 4
      406 GETTABLEKS                       R38 R39 K29 ["Enums"]
      408 GETTABLEKS                       R37 R38 K30 ["IconName"]
      410 GETTABLEKS                       R36 R37 K73 ["ThreeDotsHorizontal"]
      412 SETTABLEKS                       R36 R35 K23 ["icon"]
      414 LOADB                            R36 1
      415 SETTABLEKS                       R36 R35 K24 ["isCircular"]
      417 GETUPVAL                         R39 4
      418 GETTABLEKS                       R38 R39 K29 ["Enums"]
      420 GETTABLEKS                       R37 R38 K33 ["ButtonVariant"]
      422 GETTABLEKS                       R36 R37 K74 ["Standard"]
      424 SETTABLEKS                       R36 R35 K25 ["variant"]
      426 GETUPVAL                         R39 4
      427 GETTABLEKS                       R38 R39 K29 ["Enums"]
      429 GETTABLEKS                       R37 R38 K35 ["IconSize"]
      431 GETTABLEKS                       R36 R37 K36 ["Small"]
      433 SETTABLEKS                       R36 R35 K26 ["size"]
      435 GETTABLEKS                       R36 R0 K75 ["OnOpenEditor"]
      437 SETTABLEKS                       R36 R35 K27 ["onActivated"]
      439 CALL                             R33 2 1
      440 SETTABLEKS                       R33 R32 K71 ["EditorButton"]
      442 CALL                             R29 3 1
      443 SETTABLEKS                       R29 R28 K18 ["RightButtons"]
      445 CALL                             R25 3 1
      446 SETTABLEKS                       R25 R24 K11 ["WaveformRow"]
      448 CALL                             R21 3 -1
      449 RETURN                           R21 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioPlayerEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["IconButton"]
       23 GETTABLEKS                       R4 R2 K10 ["View"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R7 R0 K6 ["Packages"]
       29 GETTABLEKS                       R6 R7 K11 ["Graphing"]
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R6 R5 K12 ["Canvas"]
       34 GETTABLEKS                       R7 R5 K13 ["InputDetector"]
       36 GETIMPORT                        R8 K5 [require]
       38 GETTABLEKS                       R11 R0 K14 ["Src"]
       40 GETTABLEKS                       R10 R11 K15 ["Components"]
       42 GETTABLEKS                       R9 R10 K16 ["Waveform"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R9 K5 [require]
       47 GETTABLEKS                       R12 R0 K14 ["Src"]
       49 GETTABLEKS                       R11 R12 K17 ["Util"]
       51 GETTABLEKS                       R10 R11 K18 ["PlayerUtil"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K5 [require]
       56 GETTABLEKS                       R12 R0 K14 ["Src"]
       58 GETTABLEKS                       R11 R12 K19 ["Types"]
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
