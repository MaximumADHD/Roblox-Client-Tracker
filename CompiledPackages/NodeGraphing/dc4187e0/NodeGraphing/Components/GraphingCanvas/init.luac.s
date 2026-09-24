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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+4]
        5 GETUPVAL                         R1 1
        6 SETTABLEKS                       R1 R0 K1 ["Size"]
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 1
        6 JUMPIFEQKNIL                     R0 ; [+5]
        8 GETUPVAL                         R0 1
        9 NAMECALL                         R0 R0 K0 ["Disconnect"]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 2
       13 JUMPIFEQKNIL                     R0 ; [+3]
       15 GETUPVAL                         R0 2
       16 CALL                             R0 0 0
       17 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["nodeRenderInfoDispatcher"]
        3 GETTABLEKS                       R1 R1 K1 ["observeMap"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 LOADN                            R1 0
        8 SETUPVAL                         R1 1
        9 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 1
        4 ADDK                             R0 R0 K0 [1]
        5 SETUPVAL                         R0 1
        6 GETUPVAL                         R0 0
        7 LOADN                            R1 2
        8 JUMPIFLE                         R1 R0 ; [+5]
       10 GETUPVAL                         R0 1
       11 LOADN                            R1 15
       12 JUMPIFNOTLE                      R1 R0 ; [+26]
       14 GETUPVAL                         R0 2
       15 GETTABLEKS                       R0 R0 K1 ["current"]
       17 JUMPIFEQKNIL                     R0 ; [+4]
       19 GETUPVAL                         R1 3
       20 SETTABLEKS                       R1 R0 K2 ["Size"]
       22 GETUPVAL                         R0 4
       23 JUMPIFNOT                        R0 ; [+1]
       24 RETURN                           R0 0
       25 LOADB                            R0 1
       26 SETUPVAL                         R0 4
       27 GETUPVAL                         R0 5
       28 JUMPIFEQKNIL                     R0 ; [+5]
       30 GETUPVAL                         R0 5
       31 NAMECALL                         R0 R0 K3 ["Disconnect"]
       33 CALL                             R0 1 0
       34 GETUPVAL                         R0 6
       35 JUMPIFEQKNIL                     R0 ; [+3]
       37 GETUPVAL                         R0 6
       38 CALL                             R0 0 0
       39 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+4]
        5 GETUPVAL                         R1 1
        6 SETTABLEKS                       R1 R0 K1 ["Size"]
        8 GETUPVAL                         R0 2
        9 JUMPIFNOT                        R0 ; [+1]
       10 RETURN                           R0 0
       11 LOADB                            R0 1
       12 SETUPVAL                         R0 2
       13 GETUPVAL                         R0 3
       14 JUMPIFEQKNIL                     R0 ; [+5]
       16 GETUPVAL                         R0 3
       17 NAMECALL                         R0 R0 K2 ["Disconnect"]
       19 CALL                             R0 1 0
       20 GETUPVAL                         R0 4
       21 JUMPIFEQKNIL                     R0 ; [+3]
       23 GETUPVAL                         R0 4
       24 CALL                             R0 0 0
       25 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+10]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["isCli"]
        6 CALL                             R0 0 1
        7 JUMPIF                           R0 ; [+5]
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K1 ["isFTF"]
       11 CALL                             R0 0 1
       12 JUMPIFNOT                        R0 ; [+1]
       13 RETURN                           R0 0
       14 GETUPVAL                         R0 2
       15 GETTABLEKS                       R0 R0 K2 ["current"]
       17 JUMPIFNOTEQKNIL                  R0 ; [+2]
       19 RETURN                           R0 0
       20 GETTABLEKS                       R1 R0 K3 ["Size"]
       22 GETIMPORT                        R3 K6 [UDim2.fromOffset]
       24 LOADN                            R4 0
       25 LOADN                            R5 1
       26 CALL                             R3 2 1
       27 SUB                              R2 R1 R3
       28 SETTABLEKS                       R2 R0 K3 ["Size"]
       30 NEWCLOSURE                       R2 P0
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          VAL R1
       33 LOADN                            R3 0
       34 LOADN                            R4 0
       35 LOADNIL                          R5
       36 LOADNIL                          R6
       37 LOADB                            R7 0
       38 NEWCLOSURE                       R8 P1
       39 CAPTURE                          REF R7
       40 CAPTURE                          REF R5
       41 CAPTURE                          REF R6
       42 GETUPVAL                         R9 3
       43 GETTABLEKS                       R9 R9 K7 ["createEffect"]
       45 NEWCLOSURE                       R10 P2
       46 CAPTURE                          UPVAL U4
       47 CAPTURE                          REF R3
       48 CALL                             R9 1 1
       49 MOVE                             R6 R9
       50 GETUPVAL                         R9 5
       51 GETTABLEKS                       R9 R9 K8 ["Heartbeat"]
       53 NEWCLOSURE                       R11 P3
       54 CAPTURE                          REF R3
       55 CAPTURE                          REF R4
       56 CAPTURE                          UPVAL U2
       57 CAPTURE                          VAL R1
       58 CAPTURE                          REF R7
       59 CAPTURE                          REF R5
       60 CAPTURE                          REF R6
       61 NAMECALL                         R9 R9 K9 ["Connect"]
       63 CALL                             R9 2 1
       64 MOVE                             R5 R9
       65 NEWCLOSURE                       R9 P4
       66 CAPTURE                          UPVAL U2
       67 CAPTURE                          VAL R1
       68 CAPTURE                          REF R7
       69 CAPTURE                          REF R5
       70 CAPTURE                          REF R6
       71 CLOSEUPVALS                      R3
       72 RETURN                           R9 1

PROTO_11:
        0 DUPTABLE                         R0 K1 [{"layer"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["layer"]
        4 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R4 3
       15 JUMPIFNOT                        R4 ; [+5]
       16 GETUPVAL                         R3 4
       17 GETTABLEKS                       R3 R3 K2 ["useConsumerHasParameters"]
       19 CALL                             R3 0 1
       20 JUMP                             ; [+1]
       21 LOADNIL                          R3
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K3 ["useRef"]
       25 LOADNIL                          R5
       26 CALL                             R4 1 1
       27 GETUPVAL                         R5 5
       28 CALL                             R5 0 1
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R6 R6 K4 ["useEffect"]
       32 NEWCLOSURE                       R7 P0
       33 CAPTURE                          UPVAL U6
       34 CAPTURE                          VAL R5
       35 CAPTURE                          VAL R1
       36 NEWTABLE                         R8 0 2
       38 GETTABLEKS                       R9 R1 K5 ["setAbsoluteSize"]
       40 GETTABLEKS                       R10 R5 K6 ["observeAbsoluteSize"]
       42 SETLIST                          R8 R9 2 [1]
       44 CALL                             R6 2 0
       45 GETUPVAL                         R6 0
       46 GETTABLEKS                       R6 R6 K7 ["useLayoutEffect"]
       48 NEWCLOSURE                       R7 P1
       49 CAPTURE                          UPVAL U6
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R4
       52 NEWTABLE                         R8 0 2
       54 GETTABLEKS                       R9 R1 K8 ["observeViewportRect"]
       56 GETTABLEKS                       R10 R1 K9 ["observeRenderedGraphRect"]
       58 SETLIST                          R8 R9 2 [1]
       60 CALL                             R6 2 0
       61 GETUPVAL                         R7 7
       62 JUMPIFNOT                        R7 ; [+2]
       63 LOADNIL                          R6
       64 JUMP                             ; [+6]
       65 GETUPVAL                         R6 8
       66 GETTABLEKS                       R6 R6 K10 ["useSignalState"]
       68 GETTABLEKS                       R7 R1 K8 ["observeViewportRect"]
       70 CALL                             R6 1 1
       71 GETUPVAL                         R8 7
       72 JUMPIFNOT                        R8 ; [+2]
       73 LOADNIL                          R7
       74 JUMP                             ; [+6]
       75 GETUPVAL                         R7 8
       76 GETTABLEKS                       R7 R7 K10 ["useSignalState"]
       78 GETTABLEKS                       R8 R1 K9 ["observeRenderedGraphRect"]
       80 CALL                             R7 1 1
       81 GETUPVAL                         R8 0
       82 GETTABLEKS                       R8 R8 K3 ["useRef"]
       84 LOADNIL                          R9
       85 CALL                             R8 1 1
       86 GETUPVAL                         R9 0
       87 GETTABLEKS                       R9 R9 K11 ["useCallback"]
       89 NEWCLOSURE                       R10 P2
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R5
       92 NEWTABLE                         R11 0 1
       94 GETTABLEKS                       R12 R5 K12 ["setFrame"]
       96 SETLIST                          R11 R12 1 [1]
       98 CALL                             R9 2 1
       99 GETUPVAL                         R10 0
      100 GETTABLEKS                       R10 R10 K4 ["useEffect"]
      102 NEWCLOSURE                       R11 P3
      103 CAPTURE                          UPVAL U9
      104 CAPTURE                          UPVAL U10
      105 CAPTURE                          VAL R8
      106 CAPTURE                          UPVAL U6
      107 CAPTURE                          VAL R2
      108 CAPTURE                          UPVAL U11
      109 NEWTABLE                         R12 0 1
      111 GETTABLEKS                       R13 R2 K13 ["nodeRenderInfoDispatcher"]
      113 GETTABLEKS                       R13 R13 K14 ["observeMap"]
      115 SETLIST                          R12 R13 1 [1]
      117 CALL                             R10 2 0
      118 GETUPVAL                         R10 0
      119 GETTABLEKS                       R10 R10 K15 ["useState"]
      121 LOADNIL                          R11
      122 CALL                             R10 1 2
      123 GETUPVAL                         R12 0
      124 GETTABLEKS                       R12 R12 K16 ["useMemo"]
      126 NEWCLOSURE                       R13 P4
      127 CAPTURE                          VAL R10
      128 NEWTABLE                         R14 0 1
      130 MOVE                             R15 R10
      131 SETLIST                          R14 R15 1 [1]
      133 CALL                             R12 2 1
      134 GETUPVAL                         R13 12
      135 GETTABLEKS                       R13 R13 K17 ["Hooks"]
      137 GETTABLEKS                       R13 R13 K18 ["useTokens"]
      139 CALL                             R13 0 1
      140 GETUPVAL                         R14 13
      141 GETTABLEKS                       R14 R14 K19 ["createNextOrder"]
      143 CALL                             R14 0 1
      144 NEWTABLE                         R15 16 0
      146 GETUPVAL                         R16 0
      147 GETTABLEKS                       R16 R16 K20 ["createElement"]
      149 GETUPVAL                         R17 14
      150 DUPTABLE                         R18 K22 [{"ZIndex"}]
      151 MOVE                             R19 R14
      152 CALL                             R19 0 1
      153 SETTABLEKS                       R19 R18 K21 ["ZIndex"]
      155 CALL                             R16 2 1
      156 SETTABLEKS                       R16 R15 K23 ["GraphingCanvasBackground"]
      158 GETUPVAL                         R16 0
      159 GETTABLEKS                       R16 R16 K20 ["createElement"]
      161 GETUPVAL                         R17 15
      162 DUPTABLE                         R18 K22 [{"ZIndex"}]
      163 MOVE                             R19 R14
      164 CALL                             R19 0 1
      165 SETTABLEKS                       R19 R18 K21 ["ZIndex"]
      167 CALL                             R16 2 1
      168 SETTABLEKS                       R16 R15 K24 ["GraphingCanvasBackgroundDragger"]
      170 GETUPVAL                         R16 0
      171 GETTABLEKS                       R16 R16 K20 ["createElement"]
      173 GETUPVAL                         R17 16
      174 DUPTABLE                         R18 K22 [{"ZIndex"}]
      175 MOVE                             R19 R14
      176 CALL                             R19 0 1
      177 SETTABLEKS                       R19 R18 K21 ["ZIndex"]
      179 CALL                             R16 2 1
      180 SETTABLEKS                       R16 R15 K25 ["NodeSelectionBox"]
      182 GETTABLEKS                       R16 R0 K26 ["childrenBehindNodes"]
      184 JUMPIFNOT                        R16 ; [+21]
      185 GETUPVAL                         R16 0
      186 GETTABLEKS                       R16 R16 K20 ["createElement"]
      188 LOADK                            R17 K27 ["Frame"]
      189 DUPTABLE                         R18 K31 [{["Size"], ["BackgroundTransparency"] = 1, ["ZIndex"]}]
      190 GETIMPORT                        R19 K34 [UDim2.fromScale]
      192 LOADN                            R20 1
      193 LOADN                            R21 1
      194 CALL                             R19 2 1
      195 SETTABLEKS                       R19 R18 K28 ["Size"]
      197 MOVE                             R19 R14
      198 CALL                             R19 0 1
      199 SETTABLEKS                       R19 R18 K21 ["ZIndex"]
      201 GETTABLEKS                       R19 R0 K26 ["childrenBehindNodes"]
      203 CALL                             R16 3 1
      204 SETTABLEKS                       R16 R15 K35 ["ChildrenBehindNodes"]
      206 GETUPVAL                         R16 0
      207 GETTABLEKS                       R16 R16 K20 ["createElement"]
      209 GETUPVAL                         R17 17
      210 DUPTABLE                         R18 K22 [{"ZIndex"}]
      211 MOVE                             R19 R14
      212 CALL                             R19 0 1
      213 SETTABLEKS                       R19 R18 K21 ["ZIndex"]
      215 CALL                             R16 2 1
      216 SETTABLEKS                       R16 R15 K36 ["CompositorNodes"]
      218 GETUPVAL                         R16 0
      219 GETTABLEKS                       R16 R16 K20 ["createElement"]
      221 GETUPVAL                         R17 18
      222 CALL                             R16 1 1
      223 SETTABLEKS                       R16 R15 K37 ["GraphingCanvasContextMenuAnchor"]
      225 GETUPVAL                         R16 0
      226 GETTABLEKS                       R16 R16 K20 ["createElement"]
      228 GETUPVAL                         R17 19
      229 CALL                             R16 1 1
      230 SETTABLEKS                       R16 R15 K38 ["NodeRightClickMenuAnchor"]
      232 GETUPVAL                         R16 0
      233 GETTABLEKS                       R16 R16 K20 ["createElement"]
      235 GETUPVAL                         R17 20
      236 DUPTABLE                         R18 K22 [{"ZIndex"}]
      237 MOVE                             R19 R14
      238 CALL                             R19 0 1
      239 SETTABLEKS                       R19 R18 K21 ["ZIndex"]
      241 CALL                             R16 2 1
      242 SETTABLEKS                       R16 R15 K39 ["GraphingCanvasKeyboardInput"]
      244 GETUPVAL                         R16 0
      245 GETTABLEKS                       R16 R16 K20 ["createElement"]
      247 GETUPVAL                         R17 21
      248 DUPTABLE                         R18 K22 [{"ZIndex"}]
      249 MOVE                             R19 R14
      250 CALL                             R19 0 1
      251 SETTABLEKS                       R19 R18 K21 ["ZIndex"]
      253 CALL                             R16 2 1
      254 SETTABLEKS                       R16 R15 K40 ["GraphingCanvasScroller"]
      256 GETUPVAL                         R16 22
      257 JUMPIFNOT                        R16 ; [+14]
      258 GETUPVAL                         R16 0
      259 GETTABLEKS                       R16 R16 K20 ["createElement"]
      261 GETUPVAL                         R17 23
      262 GETTABLEKS                       R17 R17 K41 ["InputDetector"]
      264 DUPTABLE                         R18 K22 [{"ZIndex"}]
      265 MOVE                             R19 R14
      266 CALL                             R19 0 1
      267 SETTABLEKS                       R19 R18 K21 ["ZIndex"]
      269 CALL                             R16 2 1
      270 SETTABLEKS                       R16 R15 K42 ["CompositorConnectionInputDetector"]
      272 GETUPVAL                         R16 24
      273 CALL                             R16 0 1
      274 JUMPIFNOT                        R16 ; [+16]
      275 GETUPVAL                         R16 0
      276 GETTABLEKS                       R16 R16 K20 ["createElement"]
      278 GETUPVAL                         R17 12
      279 GETTABLEKS                       R17 R17 K43 ["View"]
      281 DUPTABLE                         R18 K47 [{["tag"] = "size-full-full", ["ZIndex"], ["ref"]}]
      282 MOVE                             R19 R14
      283 CALL                             R19 0 1
      284 SETTABLEKS                       R19 R18 K21 ["ZIndex"]
      286 SETTABLEKS                       R11 R18 K46 ["ref"]
      288 CALL                             R16 2 1
      289 SETTABLEKS                       R16 R15 K48 ["CanvasOverlayLayer"]
      291 GETUPVAL                         R16 0
      292 GETTABLEKS                       R16 R16 K20 ["createElement"]
      294 GETUPVAL                         R17 12
      295 GETTABLEKS                       R17 R17 K43 ["View"]
      297 DUPTABLE                         R18 K49 [{["tag"] = "size-full-full", ["ref"]}]
      298 SETTABLEKS                       R9 R18 K46 ["ref"]
      300 DUPTABLE                         R19 K51 [{"Contexts"}]
      301 GETUPVAL                         R20 0
      302 GETTABLEKS                       R20 R20 K20 ["createElement"]
      304 GETUPVAL                         R21 13
      305 GETTABLEKS                       R21 R21 K52 ["ContextStack"]
      307 DUPTABLE                         R22 K54 [{"providers"}]
      308 NEWTABLE                         R23 0 4
      310 GETUPVAL                         R24 0
      311 GETTABLEKS                       R24 R24 K20 ["createElement"]
      313 GETUPVAL                         R25 25
      314 GETTABLEKS                       R25 R25 K1 ["Context"]
      316 GETTABLEKS                       R25 R25 K55 ["Provider"]
      318 DUPTABLE                         R26 K57 [{"value"}]
      319 SETTABLEKS                       R12 R26 K56 ["value"]
      321 CALL                             R24 2 1
      322 GETUPVAL                         R25 0
      323 GETTABLEKS                       R25 R25 K20 ["createElement"]
      325 GETUPVAL                         R26 26
      326 GETTABLEKS                       R26 R26 K55 ["Provider"]
      328 CALL                             R25 1 1
      329 GETUPVAL                         R26 0
      330 GETTABLEKS                       R26 R26 K20 ["createElement"]
      332 GETUPVAL                         R27 27
      333 GETTABLEKS                       R27 R27 K55 ["Provider"]
      335 CALL                             R26 1 1
      336 GETUPVAL                         R28 22
      337 JUMPIFNOT                        R28 ; [+8]
      338 GETUPVAL                         R27 0
      339 GETTABLEKS                       R27 R27 K20 ["createElement"]
      341 GETUPVAL                         R28 0
      342 GETTABLEKS                       R28 R28 K58 ["Fragment"]
      344 CALL                             R27 1 1
      345 JUMP                             ; [+7]
      346 GETUPVAL                         R27 0
      347 GETTABLEKS                       R27 R27 K20 ["createElement"]
      349 GETUPVAL                         R28 23
      350 GETTABLEKS                       R28 R28 K55 ["Provider"]
      352 CALL                             R27 1 1
      353 SETLIST                          R23 R24 4 [1]
      355 SETTABLEKS                       R23 R22 K53 ["providers"]
      357 DUPTABLE                         R23 K62 [{"Canvas", "ParameterPane", "Children"}]
      358 GETUPVAL                         R24 0
      359 GETTABLEKS                       R24 R24 K20 ["createElement"]
      361 GETUPVAL                         R25 28
      362 GETTABLEKS                       R25 R25 K59 ["Canvas"]
      364 DUPTABLE                         R26 K74 [{"ref", "GraphRect", "ViewportRect", "Size", "ViewportPaddingLeft", "ViewportPaddingRight", "ViewportPaddingBottom", "ViewportPaddingTop", "CanvasBackgroundColor3", "CanvasBackgroundTransparency", "ViewportBackgroundColor3", "ViewportBackgroundTransparency", "childrenUnclipped"}]
      365 SETTABLEKS                       R4 R26 K46 ["ref"]
      367 GETUPVAL                         R28 7
      368 JUMPIFNOT                        R28 ; [+2]
      369 LOADNIL                          R27
      370 JUMP                             ; [+1]
      371 MOVE                             R27 R7
      372 SETTABLEKS                       R27 R26 K63 ["GraphRect"]
      374 GETUPVAL                         R28 7
      375 JUMPIFNOT                        R28 ; [+2]
      376 LOADNIL                          R27
      377 JUMP                             ; [+1]
      378 MOVE                             R27 R6
      379 SETTABLEKS                       R27 R26 K64 ["ViewportRect"]
      381 GETIMPORT                        R27 K34 [UDim2.fromScale]
      383 LOADN                            R28 1
      384 LOADN                            R29 1
      385 CALL                             R27 2 1
      386 SETTABLEKS                       R27 R26 K28 ["Size"]
      388 GETIMPORT                        R27 K77 [UDim.new]
      390 LOADN                            R28 0
      391 LOADN                            R29 0
      392 CALL                             R27 2 1
      393 SETTABLEKS                       R27 R26 K65 ["ViewportPaddingLeft"]
      395 GETIMPORT                        R27 K77 [UDim.new]
      397 LOADN                            R28 0
      398 LOADN                            R29 0
      399 CALL                             R27 2 1
      400 SETTABLEKS                       R27 R26 K66 ["ViewportPaddingRight"]
      402 GETIMPORT                        R27 K77 [UDim.new]
      404 LOADN                            R28 0
      405 LOADN                            R29 0
      406 CALL                             R27 2 1
      407 SETTABLEKS                       R27 R26 K67 ["ViewportPaddingBottom"]
      409 GETIMPORT                        R27 K77 [UDim.new]
      411 LOADN                            R28 0
      412 LOADN                            R29 0
      413 CALL                             R27 2 1
      414 SETTABLEKS                       R27 R26 K68 ["ViewportPaddingTop"]
      416 GETTABLEKS                       R27 R13 K78 ["Color"]
      418 GETTABLEKS                       R27 R27 K79 ["Surface"]
      420 GETTABLEKS                       R27 R27 K80 ["Surface_100"]
      422 GETTABLEKS                       R27 R27 K81 ["Color3"]
      424 SETTABLEKS                       R27 R26 K69 ["CanvasBackgroundColor3"]
      426 GETTABLEKS                       R27 R13 K78 ["Color"]
      428 GETTABLEKS                       R27 R27 K79 ["Surface"]
      430 GETTABLEKS                       R27 R27 K80 ["Surface_100"]
      432 GETTABLEKS                       R27 R27 K82 ["Transparency"]
      434 SETTABLEKS                       R27 R26 K70 ["CanvasBackgroundTransparency"]
      436 GETTABLEKS                       R27 R13 K78 ["Color"]
      438 GETTABLEKS                       R27 R27 K79 ["Surface"]
      440 GETTABLEKS                       R27 R27 K80 ["Surface_100"]
      442 GETTABLEKS                       R27 R27 K81 ["Color3"]
      444 SETTABLEKS                       R27 R26 K71 ["ViewportBackgroundColor3"]
      446 GETTABLEKS                       R27 R13 K78 ["Color"]
      448 GETTABLEKS                       R27 R27 K79 ["Surface"]
      450 GETTABLEKS                       R27 R27 K80 ["Surface_100"]
      452 GETTABLEKS                       R27 R27 K82 ["Transparency"]
      454 SETTABLEKS                       R27 R26 K72 ["ViewportBackgroundTransparency"]
      456 DUPTABLE                         R27 K84 [{"ConnectionContexts"}]
      457 GETUPVAL                         R28 0
      458 GETTABLEKS                       R28 R28 K20 ["createElement"]
      460 GETUPVAL                         R29 13
      461 GETTABLEKS                       R29 R29 K52 ["ContextStack"]
      463 DUPTABLE                         R30 K54 [{"providers"}]
      464 NEWTABLE                         R31 0 4
      466 GETUPVAL                         R32 0
      467 GETTABLEKS                       R32 R32 K20 ["createElement"]
      469 GETUPVAL                         R33 23
      470 GETTABLEKS                       R33 R33 K55 ["Provider"]
      472 CALL                             R32 1 1
      473 GETUPVAL                         R33 0
      474 GETTABLEKS                       R33 R33 K20 ["createElement"]
      476 GETUPVAL                         R34 29
      477 GETTABLEKS                       R34 R34 K55 ["Provider"]
      479 CALL                             R33 1 1
      480 GETUPVAL                         R34 0
      481 GETTABLEKS                       R34 R34 K20 ["createElement"]
      483 GETUPVAL                         R35 30
      484 GETTABLEKS                       R35 R35 K55 ["Provider"]
      486 CALL                             R34 1 1
      487 GETUPVAL                         R35 0
      488 GETTABLEKS                       R35 R35 K20 ["createElement"]
      490 GETUPVAL                         R36 31
      491 GETTABLEKS                       R36 R36 K55 ["Provider"]
      493 CALL                             R35 1 -1
      494 SETLIST                          R31 R32 -1 [1]
      496 SETTABLEKS                       R31 R30 K53 ["providers"]
      498 MOVE                             R31 R15
      499 CALL                             R28 3 1
      500 SETTABLEKS                       R28 R27 K83 ["ConnectionContexts"]
      502 SETTABLEKS                       R27 R26 K73 ["childrenUnclipped"]
      504 CALL                             R24 2 1
      505 SETTABLEKS                       R24 R23 K59 ["Canvas"]
      507 GETUPVAL                         R25 3
      508 JUMPIFNOT                        R25 ; [+2]
      509 MOVE                             R24 R3
      510 JUMPIFNOT                        R24 ; [+12]
      511 GETUPVAL                         R24 0
      512 GETTABLEKS                       R24 R24 K20 ["createElement"]
      514 GETUPVAL                         R25 32
      515 DUPTABLE                         R26 K86 [{"canvasFrameRef", "ZIndex"}]
      516 SETTABLEKS                       R8 R26 K85 ["canvasFrameRef"]
      518 MOVE                             R27 R14
      519 CALL                             R27 0 1
      520 SETTABLEKS                       R27 R26 K21 ["ZIndex"]
      522 CALL                             R24 2 1
      523 SETTABLEKS                       R24 R23 K60 ["ParameterPane"]
      525 GETUPVAL                         R24 0
      526 GETTABLEKS                       R24 R24 K20 ["createElement"]
      528 GETUPVAL                         R25 0
      529 GETTABLEKS                       R25 R25 K58 ["Fragment"]
      531 NEWTABLE                         R26 0 0
      533 GETTABLEKS                       R27 R0 K87 ["children"]
      535 CALL                             R24 3 1
      536 SETTABLEKS                       R24 R23 K61 ["Children"]
      538 CALL                             R20 3 1
      539 SETTABLEKS                       R20 R19 K50 ["Contexts"]
      541 CALL                             R16 3 -1
      542 RETURN                           R16 -1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Provider"]
        6 DUPTABLE                         R3 K4 [{"initialGraphRect", "renderStepped"}]
        7 GETTABLEKS                       R4 R0 K2 ["initialGraphRect"]
        9 SETTABLEKS                       R4 R3 K2 ["initialGraphRect"]
       11 GETTABLEKS                       R4 R0 K3 ["renderStepped"]
       13 SETTABLEKS                       R4 R3 K3 ["renderStepped"]
       15 DUPTABLE                         R4 K6 [{"Inner"}]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K0 ["createElement"]
       19 GETUPVAL                         R6 2
       20 DUPTABLE                         R7 K8 [{"childrenBehindNodes"}]
       21 GETTABLEKS                       R8 R0 K7 ["childrenBehindNodes"]
       23 SETTABLEKS                       R8 R7 K7 ["childrenBehindNodes"]
       25 GETTABLEKS                       R8 R0 K9 ["children"]
       27 CALL                             R5 3 1
       28 SETTABLEKS                       R5 R4 K5 ["Inner"]
       30 CALL                             R1 3 -1
       31 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["NodeGraphing"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Components"]
       17 GETTABLEKS                       R3 R3 K11 ["CanvasOverlayContext"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Components"]
       24 GETTABLEKS                       R4 R4 K12 ["CompositorConnectionContext"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K10 ["Components"]
       31 GETTABLEKS                       R5 R5 K13 ["CompositorCurveDragContext"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R1 K10 ["Components"]
       38 GETTABLEKS                       R6 R6 K14 ["CompositorNodes"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R1 K15 ["Flags"]
       45 GETTABLEKS                       R7 R7 K16 ["FFlagAnimGraphUI_AllowNoParameters"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETTABLEKS                       R8 R1 K15 ["Flags"]
       52 GETTABLEKS                       R8 R8 K17 ["FFlagAnimGraphUI_ClickTogglePins"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K9 [require]
       57 GETTABLEKS                       R9 R1 K15 ["Flags"]
       59 GETTABLEKS                       R9 R9 K18 ["FFlagAnimGraphUI_PerfFixes_7123"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K9 [require]
       64 GETTABLEKS                       R10 R1 K19 ["Parent"]
       66 GETTABLEKS                       R10 R10 K20 ["Foundation"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K9 [require]
       71 GETTABLEKS                       R11 R1 K10 ["Components"]
       73 GETTABLEKS                       R11 R11 K21 ["GraphContext"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K9 [require]
       78 GETTABLEKS                       R12 R1 K19 ["Parent"]
       80 GETTABLEKS                       R12 R12 K22 ["Graphing"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K9 [require]
       85 GETIMPORT                        R13 K5 [script]
       87 GETTABLEKS                       R13 R13 K23 ["GraphingCanvasBackground"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K9 [require]
       92 GETTABLEKS                       R14 R1 K10 ["Components"]
       94 GETTABLEKS                       R14 R14 K24 ["GraphingCanvasBackgroundDragContext"]
       96 CALL                             R13 1 1
       97 GETIMPORT                        R14 K9 [require]
       99 GETTABLEKS                       R15 R1 K10 ["Components"]
      101 GETTABLEKS                       R15 R15 K25 ["GraphingCanvasBackgroundDragger"]
      103 CALL                             R14 1 1
      104 GETIMPORT                        R15 K9 [require]
      106 GETIMPORT                        R16 K5 [script]
      108 GETTABLEKS                       R16 R16 K26 ["GraphingCanvasContextMenuAnchor"]
      110 CALL                             R15 1 1
      111 GETIMPORT                        R16 K9 [require]
      113 GETIMPORT                        R17 K5 [script]
      115 GETTABLEKS                       R17 R17 K27 ["GraphingCanvasKeyboardInput"]
      117 CALL                             R16 1 1
      118 GETIMPORT                        R17 K9 [require]
      120 GETIMPORT                        R18 K5 [script]
      122 GETTABLEKS                       R18 R18 K28 ["GraphingCanvasScroller"]
      124 CALL                             R17 1 1
      125 GETIMPORT                        R18 K9 [require]
      127 GETTABLEKS                       R19 R1 K10 ["Components"]
      129 GETTABLEKS                       R19 R19 K29 ["InsertNodeContext"]
      131 CALL                             R18 1 1
      132 GETIMPORT                        R19 K9 [require]
      134 GETTABLEKS                       R20 R1 K10 ["Components"]
      136 GETTABLEKS                       R20 R20 K30 ["ModifierKeysContext"]
      138 CALL                             R19 1 1
      139 GETIMPORT                        R20 K9 [require]
      141 GETIMPORT                        R21 K5 [script]
      143 GETTABLEKS                       R21 R21 K31 ["NodeRightClickMenuAnchor"]
      145 CALL                             R20 1 1
      146 GETIMPORT                        R21 K9 [require]
      148 GETTABLEKS                       R22 R1 K10 ["Components"]
      150 GETTABLEKS                       R22 R22 K32 ["NodeSelectionBox"]
      152 CALL                             R21 1 1
      153 GETIMPORT                        R22 K9 [require]
      155 GETTABLEKS                       R23 R1 K10 ["Components"]
      157 GETTABLEKS                       R23 R23 K33 ["NodeSelectionBoxDragContext"]
      159 CALL                             R22 1 1
      160 GETIMPORT                        R23 K9 [require]
      162 GETTABLEKS                       R24 R1 K10 ["Components"]
      164 GETTABLEKS                       R24 R24 K34 ["ParameterContext"]
      166 CALL                             R23 1 1
      167 GETIMPORT                        R24 K9 [require]
      169 GETTABLEKS                       R25 R1 K10 ["Components"]
      171 GETTABLEKS                       R25 R25 K35 ["ParameterPane"]
      173 CALL                             R24 1 1
      174 GETIMPORT                        R25 K9 [require]
      176 GETTABLEKS                       R26 R1 K19 ["Parent"]
      178 GETTABLEKS                       R26 R26 K36 ["React"]
      180 CALL                             R25 1 1
      181 GETIMPORT                        R26 K9 [require]
      183 GETTABLEKS                       R27 R1 K19 ["Parent"]
      185 GETTABLEKS                       R27 R27 K37 ["ReactUtils"]
      187 CALL                             R26 1 1
      188 GETIMPORT                        R27 K9 [require]
      190 GETTABLEKS                       R28 R1 K19 ["Parent"]
      192 GETTABLEKS                       R28 R28 K38 ["Signals"]
      194 CALL                             R27 1 1
      195 GETIMPORT                        R28 K9 [require]
      197 GETTABLEKS                       R29 R1 K19 ["Parent"]
      199 GETTABLEKS                       R29 R29 K39 ["SignalsReact"]
      201 CALL                             R28 1 1
      202 GETIMPORT                        R29 K9 [require]
      204 GETTABLEKS                       R30 R1 K19 ["Parent"]
      206 GETTABLEKS                       R30 R30 K40 ["TestLoader"]
      208 CALL                             R29 1 1
      209 GETIMPORT                        R30 K9 [require]
      211 GETTABLEKS                       R31 R1 K10 ["Components"]
      213 GETTABLEKS                       R31 R31 K41 ["ViewportRectContext"]
      215 CALL                             R30 1 1
      216 GETIMPORT                        R31 K9 [require]
      218 GETTABLEKS                       R32 R1 K42 ["Hooks"]
      220 GETTABLEKS                       R32 R32 K43 ["useAbsoluteSize"]
      222 CALL                             R31 1 1
      223 GETIMPORT                        R32 K9 [require]
      225 GETTABLEKS                       R33 R1 K15 ["Flags"]
      227 GETTABLEKS                       R33 R33 K44 ["getFFlagAnimGraphUISpotlightClipping"]
      229 CALL                             R32 1 1
      230 GETIMPORT                        R33 K9 [require]
      232 GETTABLEKS                       R34 R1 K15 ["Flags"]
      234 GETTABLEKS                       R34 R34 K45 ["getFFlagAnimGraphUI_FixCanvasRepaintOnRemount"]
      236 CALL                             R33 1 1
      237 DUPCLOSURE                       R34 K46 [PROTO_12]
      238 CAPTURE                          VAL R25
      239 CAPTURE                          VAL R30
      240 CAPTURE                          VAL R10
      241 CAPTURE                          VAL R6
      242 CAPTURE                          VAL R23
      243 CAPTURE                          VAL R31
      244 CAPTURE                          VAL R27
      245 CAPTURE                          VAL R8
      246 CAPTURE                          VAL R28
      247 CAPTURE                          VAL R33
      248 CAPTURE                          VAL R29
      249 CAPTURE                          VAL R0
      250 CAPTURE                          VAL R9
      251 CAPTURE                          VAL R26
      252 CAPTURE                          VAL R12
      253 CAPTURE                          VAL R14
      254 CAPTURE                          VAL R21
      255 CAPTURE                          VAL R5
      256 CAPTURE                          VAL R15
      257 CAPTURE                          VAL R20
      258 CAPTURE                          VAL R16
      259 CAPTURE                          VAL R17
      260 CAPTURE                          VAL R7
      261 CAPTURE                          VAL R3
      262 CAPTURE                          VAL R32
      263 CAPTURE                          VAL R2
      264 CAPTURE                          VAL R19
      265 CAPTURE                          VAL R18
      266 CAPTURE                          VAL R11
      267 CAPTURE                          VAL R4
      268 CAPTURE                          VAL R22
      269 CAPTURE                          VAL R13
      270 CAPTURE                          VAL R24
      271 DUPCLOSURE                       R35 K47 [PROTO_13]
      272 CAPTURE                          VAL R25
      273 CAPTURE                          VAL R30
      274 CAPTURE                          VAL R34
      275 RETURN                           R35 1
