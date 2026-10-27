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
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADB                            R2 0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 2
        5 LOADB                            R3 0
        6 CALL                             R2 1 -1
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 NEWCLOSURE                       R0 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 RETURN                           R0 1

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["setFrame"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+4]
        5 GETUPVAL                         R1 1
        6 SETTABLEKS                       R1 R0 K1 ["Size"]
        8 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["nodeRenderInfoDispatcher"]
        3 GETTABLEKS                       R1 R1 K1 ["observeMap"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 LOADN                            R1 0
        8 SETUPVAL                         R1 1
        9 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
        0 DUPTABLE                         R0 K1 [{"layer"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["layer"]
        4 RETURN                           R0 1

PROTO_14:
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
       45 GETTABLEKS                       R6 R0 K7 ["onSaveViewState"]
       47 GETTABLEKS                       R7 R1 K8 ["observeViewportPosition"]
       49 GETTABLEKS                       R8 R1 K9 ["observeZoomRatio"]
       51 GETUPVAL                         R9 0
       52 GETTABLEKS                       R9 R9 K4 ["useEffect"]
       54 NEWCLOSURE                       R10 P1
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R8
       58 NEWTABLE                         R11 0 3
       60 MOVE                             R12 R6
       61 MOVE                             R13 R7
       62 MOVE                             R14 R8
       63 SETLIST                          R11 R12 3 [1]
       65 CALL                             R9 2 0
       66 GETUPVAL                         R9 0
       67 GETTABLEKS                       R9 R9 K10 ["useLayoutEffect"]
       69 NEWCLOSURE                       R10 P2
       70 CAPTURE                          UPVAL U6
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R4
       73 NEWTABLE                         R11 0 2
       75 GETTABLEKS                       R12 R1 K11 ["observeViewportRect"]
       77 GETTABLEKS                       R13 R1 K12 ["observeRenderedGraphRect"]
       79 SETLIST                          R11 R12 2 [1]
       81 CALL                             R9 2 0
       82 GETUPVAL                         R9 0
       83 GETTABLEKS                       R9 R9 K3 ["useRef"]
       85 LOADNIL                          R10
       86 CALL                             R9 1 1
       87 GETUPVAL                         R10 0
       88 GETTABLEKS                       R10 R10 K13 ["useCallback"]
       90 NEWCLOSURE                       R11 P3
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R5
       93 NEWTABLE                         R12 0 1
       95 GETTABLEKS                       R13 R5 K14 ["setFrame"]
       97 SETLIST                          R12 R13 1 [1]
       99 CALL                             R10 2 1
      100 GETUPVAL                         R11 0
      101 GETTABLEKS                       R11 R11 K4 ["useEffect"]
      103 NEWCLOSURE                       R12 P4
      104 CAPTURE                          UPVAL U7
      105 CAPTURE                          UPVAL U8
      106 CAPTURE                          VAL R9
      107 CAPTURE                          UPVAL U6
      108 CAPTURE                          VAL R2
      109 CAPTURE                          UPVAL U9
      110 NEWTABLE                         R13 0 1
      112 GETTABLEKS                       R14 R2 K15 ["nodeRenderInfoDispatcher"]
      114 GETTABLEKS                       R14 R14 K16 ["observeMap"]
      116 SETLIST                          R13 R14 1 [1]
      118 CALL                             R11 2 0
      119 GETUPVAL                         R11 0
      120 GETTABLEKS                       R11 R11 K17 ["useState"]
      122 LOADNIL                          R12
      123 CALL                             R11 1 2
      124 GETUPVAL                         R13 0
      125 GETTABLEKS                       R13 R13 K18 ["useMemo"]
      127 NEWCLOSURE                       R14 P5
      128 CAPTURE                          VAL R11
      129 NEWTABLE                         R15 0 1
      131 MOVE                             R16 R11
      132 SETLIST                          R15 R16 1 [1]
      134 CALL                             R13 2 1
      135 GETUPVAL                         R14 10
      136 GETTABLEKS                       R14 R14 K19 ["Hooks"]
      138 GETTABLEKS                       R14 R14 K20 ["useTokens"]
      140 CALL                             R14 0 1
      141 GETUPVAL                         R15 11
      142 GETTABLEKS                       R15 R15 K21 ["createNextOrder"]
      144 CALL                             R15 0 1
      145 NEWTABLE                         R16 16 0
      147 GETUPVAL                         R17 0
      148 GETTABLEKS                       R17 R17 K22 ["createElement"]
      150 GETUPVAL                         R18 12
      151 DUPTABLE                         R19 K24 [{"ZIndex"}]
      152 MOVE                             R20 R15
      153 CALL                             R20 0 1
      154 SETTABLEKS                       R20 R19 K23 ["ZIndex"]
      156 CALL                             R17 2 1
      157 SETTABLEKS                       R17 R16 K25 ["GraphingCanvasBackground"]
      159 GETUPVAL                         R17 0
      160 GETTABLEKS                       R17 R17 K22 ["createElement"]
      162 GETUPVAL                         R18 13
      163 DUPTABLE                         R19 K24 [{"ZIndex"}]
      164 MOVE                             R20 R15
      165 CALL                             R20 0 1
      166 SETTABLEKS                       R20 R19 K23 ["ZIndex"]
      168 CALL                             R17 2 1
      169 SETTABLEKS                       R17 R16 K26 ["GraphingCanvasBackgroundDragger"]
      171 GETUPVAL                         R17 0
      172 GETTABLEKS                       R17 R17 K22 ["createElement"]
      174 GETUPVAL                         R18 14
      175 DUPTABLE                         R19 K24 [{"ZIndex"}]
      176 MOVE                             R20 R15
      177 CALL                             R20 0 1
      178 SETTABLEKS                       R20 R19 K23 ["ZIndex"]
      180 CALL                             R17 2 1
      181 SETTABLEKS                       R17 R16 K27 ["NodeSelectionBox"]
      183 GETTABLEKS                       R17 R0 K28 ["childrenBehindNodes"]
      185 JUMPIFNOT                        R17 ; [+21]
      186 GETUPVAL                         R17 0
      187 GETTABLEKS                       R17 R17 K22 ["createElement"]
      189 LOADK                            R18 K29 ["Frame"]
      190 DUPTABLE                         R19 K33 [{["Size"], ["BackgroundTransparency"] = 1, ["ZIndex"]}]
      191 GETIMPORT                        R20 K36 [UDim2.fromScale]
      193 LOADN                            R21 1
      194 LOADN                            R22 1
      195 CALL                             R20 2 1
      196 SETTABLEKS                       R20 R19 K30 ["Size"]
      198 MOVE                             R20 R15
      199 CALL                             R20 0 1
      200 SETTABLEKS                       R20 R19 K23 ["ZIndex"]
      202 GETTABLEKS                       R20 R0 K28 ["childrenBehindNodes"]
      204 CALL                             R17 3 1
      205 SETTABLEKS                       R17 R16 K37 ["ChildrenBehindNodes"]
      207 GETUPVAL                         R17 0
      208 GETTABLEKS                       R17 R17 K22 ["createElement"]
      210 GETUPVAL                         R18 15
      211 DUPTABLE                         R19 K24 [{"ZIndex"}]
      212 MOVE                             R20 R15
      213 CALL                             R20 0 1
      214 SETTABLEKS                       R20 R19 K23 ["ZIndex"]
      216 CALL                             R17 2 1
      217 SETTABLEKS                       R17 R16 K38 ["CompositorNodes"]
      219 GETUPVAL                         R17 0
      220 GETTABLEKS                       R17 R17 K22 ["createElement"]
      222 GETUPVAL                         R18 16
      223 CALL                             R17 1 1
      224 SETTABLEKS                       R17 R16 K39 ["GraphingCanvasContextMenuAnchor"]
      226 GETUPVAL                         R17 0
      227 GETTABLEKS                       R17 R17 K22 ["createElement"]
      229 GETUPVAL                         R18 17
      230 CALL                             R17 1 1
      231 SETTABLEKS                       R17 R16 K40 ["NodeRightClickMenuAnchor"]
      233 GETUPVAL                         R17 0
      234 GETTABLEKS                       R17 R17 K22 ["createElement"]
      236 GETUPVAL                         R18 18
      237 DUPTABLE                         R19 K24 [{"ZIndex"}]
      238 MOVE                             R20 R15
      239 CALL                             R20 0 1
      240 SETTABLEKS                       R20 R19 K23 ["ZIndex"]
      242 CALL                             R17 2 1
      243 SETTABLEKS                       R17 R16 K41 ["GraphingCanvasKeyboardInput"]
      245 GETUPVAL                         R17 0
      246 GETTABLEKS                       R17 R17 K22 ["createElement"]
      248 GETUPVAL                         R18 19
      249 DUPTABLE                         R19 K24 [{"ZIndex"}]
      250 MOVE                             R20 R15
      251 CALL                             R20 0 1
      252 SETTABLEKS                       R20 R19 K23 ["ZIndex"]
      254 CALL                             R17 2 1
      255 SETTABLEKS                       R17 R16 K42 ["GraphingCanvasScroller"]
      257 GETUPVAL                         R17 0
      258 GETTABLEKS                       R17 R17 K22 ["createElement"]
      260 GETUPVAL                         R18 20
      261 GETTABLEKS                       R18 R18 K43 ["InputDetector"]
      263 DUPTABLE                         R19 K24 [{"ZIndex"}]
      264 MOVE                             R20 R15
      265 CALL                             R20 0 1
      266 SETTABLEKS                       R20 R19 K23 ["ZIndex"]
      268 CALL                             R17 2 1
      269 SETTABLEKS                       R17 R16 K44 ["CompositorConnectionInputDetector"]
      271 GETUPVAL                         R17 21
      272 CALL                             R17 0 1
      273 JUMPIFNOT                        R17 ; [+16]
      274 GETUPVAL                         R17 0
      275 GETTABLEKS                       R17 R17 K22 ["createElement"]
      277 GETUPVAL                         R18 10
      278 GETTABLEKS                       R18 R18 K45 ["View"]
      280 DUPTABLE                         R19 K49 [{["tag"] = "size-full-full", ["ZIndex"], ["ref"]}]
      281 MOVE                             R20 R15
      282 CALL                             R20 0 1
      283 SETTABLEKS                       R20 R19 K23 ["ZIndex"]
      285 SETTABLEKS                       R12 R19 K48 ["ref"]
      287 CALL                             R17 2 1
      288 SETTABLEKS                       R17 R16 K50 ["CanvasOverlayLayer"]
      290 GETUPVAL                         R17 0
      291 GETTABLEKS                       R17 R17 K22 ["createElement"]
      293 GETUPVAL                         R18 10
      294 GETTABLEKS                       R18 R18 K45 ["View"]
      296 DUPTABLE                         R19 K51 [{["tag"] = "size-full-full", ["ref"]}]
      297 SETTABLEKS                       R10 R19 K48 ["ref"]
      299 DUPTABLE                         R20 K53 [{"Contexts"}]
      300 GETUPVAL                         R21 0
      301 GETTABLEKS                       R21 R21 K22 ["createElement"]
      303 GETUPVAL                         R22 11
      304 GETTABLEKS                       R22 R22 K54 ["ContextStack"]
      306 DUPTABLE                         R23 K56 [{"providers"}]
      307 NEWTABLE                         R24 0 3
      309 GETUPVAL                         R25 0
      310 GETTABLEKS                       R25 R25 K22 ["createElement"]
      312 GETUPVAL                         R26 22
      313 GETTABLEKS                       R26 R26 K1 ["Context"]
      315 GETTABLEKS                       R26 R26 K57 ["Provider"]
      317 DUPTABLE                         R27 K59 [{"value"}]
      318 SETTABLEKS                       R13 R27 K58 ["value"]
      320 CALL                             R25 2 1
      321 GETUPVAL                         R26 0
      322 GETTABLEKS                       R26 R26 K22 ["createElement"]
      324 GETUPVAL                         R27 23
      325 GETTABLEKS                       R27 R27 K57 ["Provider"]
      327 CALL                             R26 1 1
      328 GETUPVAL                         R27 0
      329 GETTABLEKS                       R27 R27 K22 ["createElement"]
      331 GETUPVAL                         R28 24
      332 GETTABLEKS                       R28 R28 K57 ["Provider"]
      334 CALL                             R27 1 -1
      335 SETLIST                          R24 R25 -1 [1]
      337 SETTABLEKS                       R24 R23 K55 ["providers"]
      339 DUPTABLE                         R24 K63 [{"Canvas", "ParameterPane", "Children"}]
      340 GETUPVAL                         R25 0
      341 GETTABLEKS                       R25 R25 K22 ["createElement"]
      343 GETUPVAL                         R26 25
      344 GETTABLEKS                       R26 R26 K60 ["Canvas"]
      346 DUPTABLE                         R27 K73 [{"ref", "Size", "ViewportPaddingLeft", "ViewportPaddingRight", "ViewportPaddingBottom", "ViewportPaddingTop", "CanvasBackgroundColor3", "CanvasBackgroundTransparency", "ViewportBackgroundColor3", "ViewportBackgroundTransparency", "childrenUnclipped"}]
      347 SETTABLEKS                       R4 R27 K48 ["ref"]
      349 GETIMPORT                        R28 K36 [UDim2.fromScale]
      351 LOADN                            R29 1
      352 LOADN                            R30 1
      353 CALL                             R28 2 1
      354 SETTABLEKS                       R28 R27 K30 ["Size"]
      356 GETIMPORT                        R28 K76 [UDim.new]
      358 LOADN                            R29 0
      359 LOADN                            R30 0
      360 CALL                             R28 2 1
      361 SETTABLEKS                       R28 R27 K64 ["ViewportPaddingLeft"]
      363 GETIMPORT                        R28 K76 [UDim.new]
      365 LOADN                            R29 0
      366 LOADN                            R30 0
      367 CALL                             R28 2 1
      368 SETTABLEKS                       R28 R27 K65 ["ViewportPaddingRight"]
      370 GETIMPORT                        R28 K76 [UDim.new]
      372 LOADN                            R29 0
      373 LOADN                            R30 0
      374 CALL                             R28 2 1
      375 SETTABLEKS                       R28 R27 K66 ["ViewportPaddingBottom"]
      377 GETIMPORT                        R28 K76 [UDim.new]
      379 LOADN                            R29 0
      380 LOADN                            R30 0
      381 CALL                             R28 2 1
      382 SETTABLEKS                       R28 R27 K67 ["ViewportPaddingTop"]
      384 GETTABLEKS                       R28 R14 K77 ["Color"]
      386 GETTABLEKS                       R28 R28 K78 ["Surface"]
      388 GETTABLEKS                       R28 R28 K79 ["Surface_100"]
      390 GETTABLEKS                       R28 R28 K80 ["Color3"]
      392 SETTABLEKS                       R28 R27 K68 ["CanvasBackgroundColor3"]
      394 GETTABLEKS                       R28 R14 K77 ["Color"]
      396 GETTABLEKS                       R28 R28 K78 ["Surface"]
      398 GETTABLEKS                       R28 R28 K79 ["Surface_100"]
      400 GETTABLEKS                       R28 R28 K81 ["Transparency"]
      402 SETTABLEKS                       R28 R27 K69 ["CanvasBackgroundTransparency"]
      404 GETTABLEKS                       R28 R14 K77 ["Color"]
      406 GETTABLEKS                       R28 R28 K78 ["Surface"]
      408 GETTABLEKS                       R28 R28 K79 ["Surface_100"]
      410 GETTABLEKS                       R28 R28 K80 ["Color3"]
      412 SETTABLEKS                       R28 R27 K70 ["ViewportBackgroundColor3"]
      414 GETTABLEKS                       R28 R14 K77 ["Color"]
      416 GETTABLEKS                       R28 R28 K78 ["Surface"]
      418 GETTABLEKS                       R28 R28 K79 ["Surface_100"]
      420 GETTABLEKS                       R28 R28 K81 ["Transparency"]
      422 SETTABLEKS                       R28 R27 K71 ["ViewportBackgroundTransparency"]
      424 DUPTABLE                         R28 K83 [{"ConnectionContexts"}]
      425 GETUPVAL                         R29 0
      426 GETTABLEKS                       R29 R29 K22 ["createElement"]
      428 GETUPVAL                         R30 11
      429 GETTABLEKS                       R30 R30 K54 ["ContextStack"]
      431 DUPTABLE                         R31 K56 [{"providers"}]
      432 NEWTABLE                         R32 0 4
      434 GETUPVAL                         R33 0
      435 GETTABLEKS                       R33 R33 K22 ["createElement"]
      437 GETUPVAL                         R34 20
      438 GETTABLEKS                       R34 R34 K57 ["Provider"]
      440 CALL                             R33 1 1
      441 GETUPVAL                         R34 0
      442 GETTABLEKS                       R34 R34 K22 ["createElement"]
      444 GETUPVAL                         R35 26
      445 GETTABLEKS                       R35 R35 K57 ["Provider"]
      447 CALL                             R34 1 1
      448 GETUPVAL                         R35 0
      449 GETTABLEKS                       R35 R35 K22 ["createElement"]
      451 GETUPVAL                         R36 27
      452 GETTABLEKS                       R36 R36 K57 ["Provider"]
      454 CALL                             R35 1 1
      455 GETUPVAL                         R36 0
      456 GETTABLEKS                       R36 R36 K22 ["createElement"]
      458 GETUPVAL                         R37 28
      459 GETTABLEKS                       R37 R37 K57 ["Provider"]
      461 CALL                             R36 1 -1
      462 SETLIST                          R32 R33 -1 [1]
      464 SETTABLEKS                       R32 R31 K55 ["providers"]
      466 MOVE                             R32 R16
      467 CALL                             R29 3 1
      468 SETTABLEKS                       R29 R28 K82 ["ConnectionContexts"]
      470 SETTABLEKS                       R28 R27 K72 ["childrenUnclipped"]
      472 CALL                             R25 2 1
      473 SETTABLEKS                       R25 R24 K60 ["Canvas"]
      475 GETUPVAL                         R26 3
      476 JUMPIFNOT                        R26 ; [+2]
      477 MOVE                             R25 R3
      478 JUMPIFNOT                        R25 ; [+12]
      479 GETUPVAL                         R25 0
      480 GETTABLEKS                       R25 R25 K22 ["createElement"]
      482 GETUPVAL                         R26 29
      483 DUPTABLE                         R27 K85 [{"canvasFrameRef", "ZIndex"}]
      484 SETTABLEKS                       R9 R27 K84 ["canvasFrameRef"]
      486 MOVE                             R28 R15
      487 CALL                             R28 0 1
      488 SETTABLEKS                       R28 R27 K23 ["ZIndex"]
      490 CALL                             R25 2 1
      491 SETTABLEKS                       R25 R24 K61 ["ParameterPane"]
      493 GETUPVAL                         R25 0
      494 GETTABLEKS                       R25 R25 K22 ["createElement"]
      496 GETUPVAL                         R26 0
      497 GETTABLEKS                       R26 R26 K86 ["Fragment"]
      499 NEWTABLE                         R27 0 0
      501 GETTABLEKS                       R28 R0 K87 ["children"]
      503 CALL                             R25 3 1
      504 SETTABLEKS                       R25 R24 K62 ["Children"]
      506 CALL                             R21 3 1
      507 SETTABLEKS                       R21 R20 K52 ["Contexts"]
      509 CALL                             R17 3 -1
      510 RETURN                           R17 -1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Provider"]
        6 DUPTABLE                         R3 K6 [{"initialGraphRect", "initialViewportPosition", "initialZoomRatio", "renderStepped"}]
        7 GETTABLEKS                       R4 R0 K2 ["initialGraphRect"]
        9 SETTABLEKS                       R4 R3 K2 ["initialGraphRect"]
       11 GETTABLEKS                       R4 R0 K3 ["initialViewportPosition"]
       13 SETTABLEKS                       R4 R3 K3 ["initialViewportPosition"]
       15 GETTABLEKS                       R4 R0 K4 ["initialZoomRatio"]
       17 SETTABLEKS                       R4 R3 K4 ["initialZoomRatio"]
       19 GETTABLEKS                       R4 R0 K5 ["renderStepped"]
       21 SETTABLEKS                       R4 R3 K5 ["renderStepped"]
       23 DUPTABLE                         R4 K8 [{"Inner"}]
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K0 ["createElement"]
       27 GETUPVAL                         R6 2
       28 DUPTABLE                         R7 K11 [{"childrenBehindNodes", "onSaveViewState"}]
       29 GETTABLEKS                       R8 R0 K9 ["childrenBehindNodes"]
       31 SETTABLEKS                       R8 R7 K9 ["childrenBehindNodes"]
       33 GETTABLEKS                       R8 R0 K10 ["onSaveViewState"]
       35 SETTABLEKS                       R8 R7 K10 ["onSaveViewState"]
       37 GETTABLEKS                       R8 R0 K12 ["children"]
       39 CALL                             R5 3 1
       40 SETTABLEKS                       R5 R4 K7 ["Inner"]
       42 CALL                             R1 3 -1
       43 RETURN                           R1 -1

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
       50 GETTABLEKS                       R8 R1 K17 ["Parent"]
       52 GETTABLEKS                       R8 R8 K18 ["Foundation"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K9 [require]
       57 GETTABLEKS                       R9 R1 K10 ["Components"]
       59 GETTABLEKS                       R9 R9 K19 ["GraphContext"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K9 [require]
       64 GETTABLEKS                       R10 R1 K17 ["Parent"]
       66 GETTABLEKS                       R10 R10 K20 ["Graphing"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K9 [require]
       71 GETIMPORT                        R11 K5 [script]
       73 GETTABLEKS                       R11 R11 K21 ["GraphingCanvasBackground"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K9 [require]
       78 GETTABLEKS                       R12 R1 K10 ["Components"]
       80 GETTABLEKS                       R12 R12 K22 ["GraphingCanvasBackgroundDragContext"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K9 [require]
       85 GETTABLEKS                       R13 R1 K10 ["Components"]
       87 GETTABLEKS                       R13 R13 K23 ["GraphingCanvasBackgroundDragger"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K9 [require]
       92 GETIMPORT                        R14 K5 [script]
       94 GETTABLEKS                       R14 R14 K24 ["GraphingCanvasContextMenuAnchor"]
       96 CALL                             R13 1 1
       97 GETIMPORT                        R14 K9 [require]
       99 GETIMPORT                        R15 K5 [script]
      101 GETTABLEKS                       R15 R15 K25 ["GraphingCanvasKeyboardInput"]
      103 CALL                             R14 1 1
      104 GETIMPORT                        R15 K9 [require]
      106 GETIMPORT                        R16 K5 [script]
      108 GETTABLEKS                       R16 R16 K26 ["GraphingCanvasScroller"]
      110 CALL                             R15 1 1
      111 GETIMPORT                        R16 K9 [require]
      113 GETTABLEKS                       R17 R1 K10 ["Components"]
      115 GETTABLEKS                       R17 R17 K27 ["InsertNodeContext"]
      117 CALL                             R16 1 1
      118 GETIMPORT                        R17 K9 [require]
      120 GETTABLEKS                       R18 R1 K10 ["Components"]
      122 GETTABLEKS                       R18 R18 K28 ["ModifierKeysContext"]
      124 CALL                             R17 1 1
      125 GETIMPORT                        R18 K9 [require]
      127 GETIMPORT                        R19 K5 [script]
      129 GETTABLEKS                       R19 R19 K29 ["NodeRightClickMenuAnchor"]
      131 CALL                             R18 1 1
      132 GETIMPORT                        R19 K9 [require]
      134 GETTABLEKS                       R20 R1 K10 ["Components"]
      136 GETTABLEKS                       R20 R20 K30 ["NodeSelectionBox"]
      138 CALL                             R19 1 1
      139 GETIMPORT                        R20 K9 [require]
      141 GETTABLEKS                       R21 R1 K10 ["Components"]
      143 GETTABLEKS                       R21 R21 K31 ["NodeSelectionBoxDragContext"]
      145 CALL                             R20 1 1
      146 GETIMPORT                        R21 K9 [require]
      148 GETTABLEKS                       R22 R1 K10 ["Components"]
      150 GETTABLEKS                       R22 R22 K32 ["ParameterContext"]
      152 CALL                             R21 1 1
      153 GETIMPORT                        R22 K9 [require]
      155 GETTABLEKS                       R23 R1 K10 ["Components"]
      157 GETTABLEKS                       R23 R23 K33 ["ParameterPane"]
      159 CALL                             R22 1 1
      160 GETIMPORT                        R23 K9 [require]
      162 GETTABLEKS                       R24 R1 K17 ["Parent"]
      164 GETTABLEKS                       R24 R24 K34 ["React"]
      166 CALL                             R23 1 1
      167 GETIMPORT                        R24 K9 [require]
      169 GETTABLEKS                       R25 R1 K17 ["Parent"]
      171 GETTABLEKS                       R25 R25 K35 ["ReactUtils"]
      173 CALL                             R24 1 1
      174 GETIMPORT                        R25 K9 [require]
      176 GETTABLEKS                       R26 R1 K17 ["Parent"]
      178 GETTABLEKS                       R26 R26 K36 ["Signals"]
      180 CALL                             R25 1 1
      181 GETIMPORT                        R26 K9 [require]
      183 GETTABLEKS                       R27 R1 K17 ["Parent"]
      185 GETTABLEKS                       R27 R27 K37 ["TestLoader"]
      187 CALL                             R26 1 1
      188 GETIMPORT                        R27 K9 [require]
      190 GETTABLEKS                       R28 R1 K10 ["Components"]
      192 GETTABLEKS                       R28 R28 K38 ["ViewportRectContext"]
      194 CALL                             R27 1 1
      195 GETIMPORT                        R28 K9 [require]
      197 GETTABLEKS                       R29 R1 K39 ["Hooks"]
      199 GETTABLEKS                       R29 R29 K40 ["useAbsoluteSize"]
      201 CALL                             R28 1 1
      202 GETIMPORT                        R29 K9 [require]
      204 GETTABLEKS                       R30 R1 K15 ["Flags"]
      206 GETTABLEKS                       R30 R30 K41 ["getFFlagAnimGraphUISpotlightClipping"]
      208 CALL                             R29 1 1
      209 GETIMPORT                        R30 K9 [require]
      211 GETTABLEKS                       R31 R1 K15 ["Flags"]
      213 GETTABLEKS                       R31 R31 K42 ["getFFlagAnimGraphUI_FixCanvasRepaintOnRemount"]
      215 CALL                             R30 1 1
      216 DUPCLOSURE                       R31 K43 [PROTO_14]
      217 CAPTURE                          VAL R23
      218 CAPTURE                          VAL R27
      219 CAPTURE                          VAL R8
      220 CAPTURE                          VAL R6
      221 CAPTURE                          VAL R21
      222 CAPTURE                          VAL R28
      223 CAPTURE                          VAL R25
      224 CAPTURE                          VAL R30
      225 CAPTURE                          VAL R26
      226 CAPTURE                          VAL R0
      227 CAPTURE                          VAL R7
      228 CAPTURE                          VAL R24
      229 CAPTURE                          VAL R10
      230 CAPTURE                          VAL R12
      231 CAPTURE                          VAL R19
      232 CAPTURE                          VAL R5
      233 CAPTURE                          VAL R13
      234 CAPTURE                          VAL R18
      235 CAPTURE                          VAL R14
      236 CAPTURE                          VAL R15
      237 CAPTURE                          VAL R3
      238 CAPTURE                          VAL R29
      239 CAPTURE                          VAL R2
      240 CAPTURE                          VAL R17
      241 CAPTURE                          VAL R16
      242 CAPTURE                          VAL R9
      243 CAPTURE                          VAL R4
      244 CAPTURE                          VAL R20
      245 CAPTURE                          VAL R11
      246 CAPTURE                          VAL R22
      247 DUPCLOSURE                       R32 K44 [PROTO_15]
      248 CAPTURE                          VAL R23
      249 CAPTURE                          VAL R27
      250 CAPTURE                          VAL R31
      251 RETURN                           R32 1
