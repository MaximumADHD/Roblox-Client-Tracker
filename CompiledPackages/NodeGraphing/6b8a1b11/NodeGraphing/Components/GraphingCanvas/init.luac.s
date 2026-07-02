PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeAbsoluteSize"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K1 ["setAbsoluteSize"]
       11 MOVE                             R3 R1
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeRenderedGraphRect"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["observeViewportRect"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K2 ["current"]
       13 JUMPIFNOT                        R3 ; [+5]
       14 GETTABLEKS                       R4 R3 K3 ["update"]
       16 MOVE                             R5 R1
       17 MOVE                             R6 R2
       18 CALL                             R4 2 0
       19 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["setFrame"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useRef"]
       10 LOADNIL                          R3
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 2
       13 CALL                             R3 0 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K3 ["useEffect"]
       17 NEWCLOSURE                       R5 P0
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          VAL R3
       20 CAPTURE                          VAL R1
       21 NEWTABLE                         R6 0 2
       23 GETTABLEKS                       R7 R1 K4 ["setAbsoluteSize"]
       25 GETTABLEKS                       R8 R3 K5 ["observeAbsoluteSize"]
       27 SETLIST                          R6 R7 2 [1]
       29 CALL                             R4 2 0
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K6 ["useLayoutEffect"]
       33 NEWCLOSURE                       R5 P1
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R2
       37 NEWTABLE                         R6 0 2
       39 GETTABLEKS                       R7 R1 K7 ["observeViewportRect"]
       41 GETTABLEKS                       R8 R1 K8 ["observeRenderedGraphRect"]
       43 SETLIST                          R6 R7 2 [1]
       45 CALL                             R4 2 0
       46 GETUPVAL                         R5 4
       47 JUMPIFNOT                        R5 ; [+2]
       48 LOADNIL                          R4
       49 JUMP                             ; [+6]
       50 GETUPVAL                         R4 5
       51 GETTABLEKS                       R4 R4 K9 ["useSignalState"]
       53 GETTABLEKS                       R5 R1 K7 ["observeViewportRect"]
       55 CALL                             R4 1 1
       56 GETUPVAL                         R6 4
       57 JUMPIFNOT                        R6 ; [+2]
       58 LOADNIL                          R5
       59 JUMP                             ; [+6]
       60 GETUPVAL                         R5 5
       61 GETTABLEKS                       R5 R5 K9 ["useSignalState"]
       63 GETTABLEKS                       R6 R1 K8 ["observeRenderedGraphRect"]
       65 CALL                             R5 1 1
       66 GETUPVAL                         R6 0
       67 GETTABLEKS                       R6 R6 K2 ["useRef"]
       69 LOADNIL                          R7
       70 CALL                             R6 1 1
       71 GETUPVAL                         R7 0
       72 GETTABLEKS                       R7 R7 K10 ["useCallback"]
       74 NEWCLOSURE                       R8 P2
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R3
       77 NEWTABLE                         R9 0 1
       79 GETTABLEKS                       R10 R3 K11 ["setFrame"]
       81 SETLIST                          R9 R10 1 [1]
       83 CALL                             R7 2 1
       84 GETUPVAL                         R8 6
       85 GETTABLEKS                       R8 R8 K12 ["Hooks"]
       87 GETTABLEKS                       R8 R8 K13 ["useTokens"]
       89 CALL                             R8 0 1
       90 GETUPVAL                         R9 7
       91 GETTABLEKS                       R9 R9 K14 ["createNextOrder"]
       93 CALL                             R9 0 1
       94 DUPTABLE                         R10 K22 [{"GraphingCanvasBackground", "NodeSelectionBox", "CompositorNodes", "GraphingCanvasContextMenuAnchor", "GraphingCanvasKeyboardInput", "GraphingCanvasScroller", "CompositorConnectionInputDetector"}]
       95 GETUPVAL                         R11 0
       96 GETTABLEKS                       R11 R11 K23 ["createElement"]
       98 GETUPVAL                         R12 8
       99 DUPTABLE                         R13 K25 [{"ZIndex"}]
      100 MOVE                             R14 R9
      101 CALL                             R14 0 1
      102 SETTABLEKS                       R14 R13 K24 ["ZIndex"]
      104 CALL                             R11 2 1
      105 SETTABLEKS                       R11 R10 K15 ["GraphingCanvasBackground"]
      107 GETUPVAL                         R11 0
      108 GETTABLEKS                       R11 R11 K23 ["createElement"]
      110 GETUPVAL                         R12 9
      111 DUPTABLE                         R13 K25 [{"ZIndex"}]
      112 MOVE                             R14 R9
      113 CALL                             R14 0 1
      114 SETTABLEKS                       R14 R13 K24 ["ZIndex"]
      116 CALL                             R11 2 1
      117 SETTABLEKS                       R11 R10 K16 ["NodeSelectionBox"]
      119 GETUPVAL                         R11 0
      120 GETTABLEKS                       R11 R11 K23 ["createElement"]
      122 GETUPVAL                         R12 10
      123 DUPTABLE                         R13 K25 [{"ZIndex"}]
      124 MOVE                             R14 R9
      125 CALL                             R14 0 1
      126 SETTABLEKS                       R14 R13 K24 ["ZIndex"]
      128 CALL                             R11 2 1
      129 SETTABLEKS                       R11 R10 K17 ["CompositorNodes"]
      131 GETUPVAL                         R11 0
      132 GETTABLEKS                       R11 R11 K23 ["createElement"]
      134 GETUPVAL                         R12 11
      135 CALL                             R11 1 1
      136 SETTABLEKS                       R11 R10 K18 ["GraphingCanvasContextMenuAnchor"]
      138 GETUPVAL                         R11 0
      139 GETTABLEKS                       R11 R11 K23 ["createElement"]
      141 GETUPVAL                         R12 12
      142 DUPTABLE                         R13 K25 [{"ZIndex"}]
      143 MOVE                             R14 R9
      144 CALL                             R14 0 1
      145 SETTABLEKS                       R14 R13 K24 ["ZIndex"]
      147 CALL                             R11 2 1
      148 SETTABLEKS                       R11 R10 K19 ["GraphingCanvasKeyboardInput"]
      150 GETUPVAL                         R11 0
      151 GETTABLEKS                       R11 R11 K23 ["createElement"]
      153 GETUPVAL                         R12 13
      154 DUPTABLE                         R13 K25 [{"ZIndex"}]
      155 MOVE                             R14 R9
      156 CALL                             R14 0 1
      157 SETTABLEKS                       R14 R13 K24 ["ZIndex"]
      159 CALL                             R11 2 1
      160 SETTABLEKS                       R11 R10 K20 ["GraphingCanvasScroller"]
      162 GETUPVAL                         R11 14
      163 JUMPIFNOT                        R11 ; [+12]
      164 GETUPVAL                         R11 0
      165 GETTABLEKS                       R11 R11 K23 ["createElement"]
      167 GETUPVAL                         R12 15
      168 GETTABLEKS                       R12 R12 K26 ["InputDetector"]
      170 DUPTABLE                         R13 K25 [{"ZIndex"}]
      171 MOVE                             R14 R9
      172 CALL                             R14 0 1
      173 SETTABLEKS                       R14 R13 K24 ["ZIndex"]
      175 CALL                             R11 2 1
      176 SETTABLEKS                       R11 R10 K21 ["CompositorConnectionInputDetector"]
      178 GETUPVAL                         R11 0
      179 GETTABLEKS                       R11 R11 K23 ["createElement"]
      181 GETUPVAL                         R12 6
      182 GETTABLEKS                       R12 R12 K27 ["View"]
      184 DUPTABLE                         R13 K31 [{["tag"] = "size-full-full", ["ref"]}]
      185 SETTABLEKS                       R7 R13 K30 ["ref"]
      187 DUPTABLE                         R14 K33 [{"Contexts"}]
      188 GETUPVAL                         R15 0
      189 GETTABLEKS                       R15 R15 K23 ["createElement"]
      191 GETUPVAL                         R16 7
      192 GETTABLEKS                       R16 R16 K34 ["ContextStack"]
      194 DUPTABLE                         R17 K36 [{"providers"}]
      195 NEWTABLE                         R18 0 3
      197 GETUPVAL                         R19 0
      198 GETTABLEKS                       R19 R19 K23 ["createElement"]
      200 GETUPVAL                         R20 16
      201 GETTABLEKS                       R20 R20 K37 ["Provider"]
      203 CALL                             R19 1 1
      204 GETUPVAL                         R20 0
      205 GETTABLEKS                       R20 R20 K23 ["createElement"]
      207 GETUPVAL                         R21 17
      208 GETTABLEKS                       R21 R21 K37 ["Provider"]
      210 CALL                             R20 1 1
      211 GETUPVAL                         R22 14
      212 JUMPIFNOT                        R22 ; [+8]
      213 GETUPVAL                         R21 0
      214 GETTABLEKS                       R21 R21 K23 ["createElement"]
      216 GETUPVAL                         R22 0
      217 GETTABLEKS                       R22 R22 K38 ["Fragment"]
      219 CALL                             R21 1 1
      220 JUMP                             ; [+7]
      221 GETUPVAL                         R21 0
      222 GETTABLEKS                       R21 R21 K23 ["createElement"]
      224 GETUPVAL                         R22 15
      225 GETTABLEKS                       R22 R22 K37 ["Provider"]
      227 CALL                             R21 1 1
      228 SETLIST                          R18 R19 3 [1]
      230 SETTABLEKS                       R18 R17 K35 ["providers"]
      232 DUPTABLE                         R18 K42 [{"Canvas", "ParameterPane", "Children"}]
      233 GETUPVAL                         R19 0
      234 GETTABLEKS                       R19 R19 K23 ["createElement"]
      236 GETUPVAL                         R20 18
      237 GETTABLEKS                       R20 R20 K39 ["Canvas"]
      239 DUPTABLE                         R21 K55 [{"ref", "GraphRect", "ViewportRect", "Size", "ViewportPaddingLeft", "ViewportPaddingRight", "ViewportPaddingBottom", "ViewportPaddingTop", "CanvasBackgroundColor3", "CanvasBackgroundTransparency", "ViewportBackgroundColor3", "ViewportBackgroundTransparency", "childrenUnclipped"}]
      240 SETTABLEKS                       R2 R21 K30 ["ref"]
      242 GETUPVAL                         R23 4
      243 JUMPIFNOT                        R23 ; [+2]
      244 LOADNIL                          R22
      245 JUMP                             ; [+1]
      246 MOVE                             R22 R5
      247 SETTABLEKS                       R22 R21 K43 ["GraphRect"]
      249 GETUPVAL                         R23 4
      250 JUMPIFNOT                        R23 ; [+2]
      251 LOADNIL                          R22
      252 JUMP                             ; [+1]
      253 MOVE                             R22 R4
      254 SETTABLEKS                       R22 R21 K44 ["ViewportRect"]
      256 GETIMPORT                        R22 K58 [UDim2.fromScale]
      258 LOADN                            R23 1
      259 LOADN                            R24 1
      260 CALL                             R22 2 1
      261 SETTABLEKS                       R22 R21 K45 ["Size"]
      263 GETIMPORT                        R22 K61 [UDim.new]
      265 LOADN                            R23 0
      266 LOADN                            R24 0
      267 CALL                             R22 2 1
      268 SETTABLEKS                       R22 R21 K46 ["ViewportPaddingLeft"]
      270 GETIMPORT                        R22 K61 [UDim.new]
      272 LOADN                            R23 0
      273 LOADN                            R24 0
      274 CALL                             R22 2 1
      275 SETTABLEKS                       R22 R21 K47 ["ViewportPaddingRight"]
      277 GETIMPORT                        R22 K61 [UDim.new]
      279 LOADN                            R23 0
      280 LOADN                            R24 0
      281 CALL                             R22 2 1
      282 SETTABLEKS                       R22 R21 K48 ["ViewportPaddingBottom"]
      284 GETIMPORT                        R22 K61 [UDim.new]
      286 LOADN                            R23 0
      287 LOADN                            R24 0
      288 CALL                             R22 2 1
      289 SETTABLEKS                       R22 R21 K49 ["ViewportPaddingTop"]
      291 GETTABLEKS                       R22 R8 K62 ["Color"]
      293 GETTABLEKS                       R22 R22 K63 ["Surface"]
      295 GETTABLEKS                       R22 R22 K64 ["Surface_100"]
      297 GETTABLEKS                       R22 R22 K65 ["Color3"]
      299 SETTABLEKS                       R22 R21 K50 ["CanvasBackgroundColor3"]
      301 GETTABLEKS                       R22 R8 K62 ["Color"]
      303 GETTABLEKS                       R22 R22 K63 ["Surface"]
      305 GETTABLEKS                       R22 R22 K64 ["Surface_100"]
      307 GETTABLEKS                       R22 R22 K66 ["Transparency"]
      309 SETTABLEKS                       R22 R21 K51 ["CanvasBackgroundTransparency"]
      311 GETTABLEKS                       R22 R8 K62 ["Color"]
      313 GETTABLEKS                       R22 R22 K63 ["Surface"]
      315 GETTABLEKS                       R22 R22 K64 ["Surface_100"]
      317 GETTABLEKS                       R22 R22 K65 ["Color3"]
      319 SETTABLEKS                       R22 R21 K52 ["ViewportBackgroundColor3"]
      321 GETTABLEKS                       R22 R8 K62 ["Color"]
      323 GETTABLEKS                       R22 R22 K63 ["Surface"]
      325 GETTABLEKS                       R22 R22 K64 ["Surface_100"]
      327 GETTABLEKS                       R22 R22 K66 ["Transparency"]
      329 SETTABLEKS                       R22 R21 K53 ["ViewportBackgroundTransparency"]
      331 GETUPVAL                         R23 14
      332 JUMPIFNOT                        R23 ; [+14]
      333 DUPTABLE                         R22 K68 [{"CompositorConnectionContext"}]
      334 GETUPVAL                         R23 0
      335 GETTABLEKS                       R23 R23 K23 ["createElement"]
      337 GETUPVAL                         R24 15
      338 GETTABLEKS                       R24 R24 K37 ["Provider"]
      340 NEWTABLE                         R25 0 0
      342 MOVE                             R26 R10
      343 CALL                             R23 3 1
      344 SETTABLEKS                       R23 R22 K67 ["CompositorConnectionContext"]
      346 JUMP                             ; [+1]
      347 MOVE                             R22 R10
      348 SETTABLEKS                       R22 R21 K54 ["childrenUnclipped"]
      350 CALL                             R19 2 1
      351 SETTABLEKS                       R19 R18 K39 ["Canvas"]
      353 GETUPVAL                         R19 0
      354 GETTABLEKS                       R19 R19 K23 ["createElement"]
      356 GETUPVAL                         R20 19
      357 DUPTABLE                         R21 K70 [{"canvasFrameRef"}]
      358 SETTABLEKS                       R6 R21 K69 ["canvasFrameRef"]
      360 CALL                             R19 2 1
      361 SETTABLEKS                       R19 R18 K40 ["ParameterPane"]
      363 GETUPVAL                         R19 0
      364 GETTABLEKS                       R19 R19 K23 ["createElement"]
      366 GETUPVAL                         R20 0
      367 GETTABLEKS                       R20 R20 K38 ["Fragment"]
      369 NEWTABLE                         R21 0 0
      371 GETTABLEKS                       R22 R0 K71 ["children"]
      373 CALL                             R19 3 1
      374 SETTABLEKS                       R19 R18 K41 ["Children"]
      376 CALL                             R15 3 1
      377 SETTABLEKS                       R15 R14 K32 ["Contexts"]
      379 CALL                             R11 3 -1
      380 RETURN                           R11 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Provider"]
        6 DUPTABLE                         R3 K3 [{"initialGraphRect"}]
        7 GETTABLEKS                       R4 R0 K2 ["initialGraphRect"]
        9 SETTABLEKS                       R4 R3 K2 ["initialGraphRect"]
       11 DUPTABLE                         R4 K5 [{"Inner"}]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K0 ["createElement"]
       15 GETUPVAL                         R6 2
       16 NEWTABLE                         R7 0 0
       18 GETTABLEKS                       R8 R0 K6 ["children"]
       20 CALL                             R5 3 1
       21 SETTABLEKS                       R5 R4 K4 ["Inner"]
       23 CALL                             R1 3 -1
       24 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["CompositorConnectionContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Components"]
       18 GETTABLEKS                       R3 R3 K8 ["CompositorNodes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Flags"]
       25 GETTABLEKS                       R4 R4 K10 ["FFlagAnimGraphUI_ClickTogglePins"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Flags"]
       32 GETTABLEKS                       R5 R5 K11 ["FFlagAnimGraphUI_PerfFixes_7123"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Parent"]
       39 GETTABLEKS                       R6 R6 K13 ["Foundation"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K12 ["Parent"]
       46 GETTABLEKS                       R7 R7 K14 ["Graphing"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETIMPORT                        R8 K1 [script]
       53 GETTABLEKS                       R8 R8 K15 ["GraphingCanvasBackground"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETIMPORT                        R9 K1 [script]
       60 GETTABLEKS                       R9 R9 K16 ["GraphingCanvasContextMenuAnchor"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETIMPORT                        R10 K1 [script]
       67 GETTABLEKS                       R10 R10 K17 ["GraphingCanvasKeyboardInput"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETIMPORT                        R11 K1 [script]
       74 GETTABLEKS                       R11 R11 K18 ["GraphingCanvasScroller"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K6 ["Components"]
       81 GETTABLEKS                       R12 R12 K19 ["InsertNodeContext"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K6 ["Components"]
       88 GETTABLEKS                       R13 R13 K20 ["ModifierKeysContext"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R14 R0 K6 ["Components"]
       95 GETTABLEKS                       R14 R14 K21 ["NodeSelectionBox"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K5 [require]
      100 GETTABLEKS                       R15 R0 K6 ["Components"]
      102 GETTABLEKS                       R15 R15 K22 ["ParameterPane"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K5 [require]
      107 GETTABLEKS                       R16 R0 K12 ["Parent"]
      109 GETTABLEKS                       R16 R16 K23 ["React"]
      111 CALL                             R15 1 1
      112 GETIMPORT                        R16 K5 [require]
      114 GETTABLEKS                       R17 R0 K12 ["Parent"]
      116 GETTABLEKS                       R17 R17 K24 ["ReactUtils"]
      118 CALL                             R16 1 1
      119 GETIMPORT                        R17 K5 [require]
      121 GETTABLEKS                       R18 R0 K12 ["Parent"]
      123 GETTABLEKS                       R18 R18 K25 ["Signals"]
      125 CALL                             R17 1 1
      126 GETIMPORT                        R18 K5 [require]
      128 GETTABLEKS                       R19 R0 K12 ["Parent"]
      130 GETTABLEKS                       R19 R19 K26 ["SignalsReact"]
      132 CALL                             R18 1 1
      133 GETIMPORT                        R19 K5 [require]
      135 GETTABLEKS                       R20 R0 K6 ["Components"]
      137 GETTABLEKS                       R20 R20 K27 ["ViewportRectContext"]
      139 CALL                             R19 1 1
      140 GETIMPORT                        R20 K5 [require]
      142 GETTABLEKS                       R21 R0 K28 ["Hooks"]
      144 GETTABLEKS                       R21 R21 K29 ["useAbsoluteSize"]
      146 CALL                             R20 1 1
      147 DUPCLOSURE                       R21 K30 [PROTO_5]
      148 CAPTURE                          VAL R15
      149 CAPTURE                          VAL R19
      150 CAPTURE                          VAL R20
      151 CAPTURE                          VAL R17
      152 CAPTURE                          VAL R4
      153 CAPTURE                          VAL R18
      154 CAPTURE                          VAL R5
      155 CAPTURE                          VAL R16
      156 CAPTURE                          VAL R7
      157 CAPTURE                          VAL R13
      158 CAPTURE                          VAL R2
      159 CAPTURE                          VAL R8
      160 CAPTURE                          VAL R9
      161 CAPTURE                          VAL R10
      162 CAPTURE                          VAL R3
      163 CAPTURE                          VAL R1
      164 CAPTURE                          VAL R12
      165 CAPTURE                          VAL R11
      166 CAPTURE                          VAL R6
      167 CAPTURE                          VAL R14
      168 DUPCLOSURE                       R22 K31 [PROTO_6]
      169 CAPTURE                          VAL R15
      170 CAPTURE                          VAL R19
      171 CAPTURE                          VAL R21
      172 RETURN                           R22 1
