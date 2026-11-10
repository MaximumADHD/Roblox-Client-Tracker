PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["StudioDesign"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        4 CALL                             R0 2 1
        5 JUMPIFNOTEQKNIL                  R0 ; [+7]
        7 GETUPVAL                         R1 1
        8 CALL                             R1 0 1
        9 GETUPVAL                         R2 0
       10 SETTABLEKS                       R2 R1 K2 ["Parent"]
       12 RETURN                           R1 1
       13 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Base"]
        3 NAMECALL                         R0 R0 K1 ["Clone"]
        5 CALL                             R0 1 1
        6 LOADNIL                          R1
        7 GETUPVAL                         R2 1
        8 CALL                             R2 0 1
        9 JUMPIF                           R2 ; [+22]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K2 ["theme"]
       13 JUMPIFNOTEQKS                    R2 K3 ["Dark"] ; [+9]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K3 ["Dark"]
       18 NAMECALL                         R2 R2 K1 ["Clone"]
       20 CALL                             R2 1 1
       21 MOVE                             R1 R2
       22 JUMP                             ; [+7]
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K4 ["Light"]
       26 NAMECALL                         R2 R2 K1 ["Clone"]
       28 CALL                             R2 1 1
       29 MOVE                             R1 R2
       30 SETTABLEKS                       R0 R1 K5 ["Parent"]
       32 GETUPVAL                         R2 3
       33 GETTABLEKS                       R2 R2 K6 ["Components"]
       35 NAMECALL                         R2 R2 K7 ["GetDescendants"]
       37 CALL                             R2 1 3
       38 FORGPREP                         R2
       39 LOADK                            R9 K8 ["ModuleScript"]
       40 NAMECALL                         R7 R6 K9 ["IsA"]
       42 CALL                             R7 2 1
       43 JUMPIFNOT                        R7 ; [+17]
       44 GETTABLEKS                       R7 R6 K10 ["Name"]
       46 LOADK                            R9 K11 ["%.style$"]
       47 NAMECALL                         R7 R7 K12 ["match"]
       49 CALL                             R7 2 1
       50 JUMPIFNOT                        R7 ; [+10]
       51 GETIMPORT                        R9 K14 [require]
       53 MOVE                             R10 R6
       54 CALL                             R9 1 1
       55 NAMECALL                         R9 R9 K1 ["Clone"]
       57 CALL                             R9 1 -1
       58 NAMECALL                         R7 R0 K15 ["InsertStyleRule"]
       60 CALL                             R7 -1 0
       61 FORGLOOP                         R2 2 ; [-23]
       63 GETUPVAL                         R2 1
       64 CALL                             R2 0 1
       65 JUMPIFNOT                        R2 ; [+359]
       66 LOADK                            R4 K16 ["ExplorerContentDefault"]
       67 GETUPVAL                         R5 4
       68 GETTABLEKS                       R5 R5 K17 ["Color"]
       70 GETTABLEKS                       R5 R5 K18 ["Content"]
       72 GETTABLEKS                       R5 R5 K19 ["Default"]
       74 GETTABLEKS                       R5 R5 K20 ["Color3"]
       76 NAMECALL                         R2 R0 K21 ["SetAttribute"]
       78 CALL                             R2 3 0
       79 LOADK                            R4 K22 ["RDLSemanticColorActionPrimaryBrandFill"]
       80 GETUPVAL                         R5 4
       81 GETTABLEKS                       R5 R5 K17 ["Color"]
       83 GETTABLEKS                       R5 R5 K23 ["ActionEmphasis"]
       85 GETTABLEKS                       R5 R5 K24 ["Foreground"]
       87 GETTABLEKS                       R5 R5 K20 ["Color3"]
       89 NAMECALL                         R2 R0 K21 ["SetAttribute"]
       91 CALL                             R2 3 0
       92 LOADK                            R4 K25 ["RDLSemanticColorContentDefault"]
       93 GETUPVAL                         R5 4
       94 GETTABLEKS                       R5 R5 K17 ["Color"]
       96 GETTABLEKS                       R5 R5 K18 ["Content"]
       98 GETTABLEKS                       R5 R5 K19 ["Default"]
      100 GETTABLEKS                       R5 R5 K20 ["Color3"]
      102 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      104 CALL                             R2 3 0
      105 LOADK                            R4 K26 ["RDLSemanticColorContentDisabled"]
      106 GETUPVAL                         R5 4
      107 GETTABLEKS                       R5 R5 K17 ["Color"]
      109 GETTABLEKS                       R5 R5 K27 ["Extended"]
      111 GETTABLEKS                       R5 R5 K28 ["Gray"]
      113 GETTABLEKS                       R5 R5 K29 ["Gray_600"]
      115 GETTABLEKS                       R5 R5 K20 ["Color3"]
      117 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      119 CALL                             R2 3 0
      120 LOADK                            R4 K30 ["RDLSemanticColorContentEmphasis"]
      121 GETUPVAL                         R5 4
      122 GETTABLEKS                       R5 R5 K17 ["Color"]
      124 GETTABLEKS                       R5 R5 K18 ["Content"]
      126 GETTABLEKS                       R5 R5 K31 ["Emphasis"]
      128 GETTABLEKS                       R5 R5 K20 ["Color3"]
      130 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      132 CALL                             R2 3 0
      133 LOADK                            R4 K32 ["RDLSemanticColorContentMuted"]
      134 GETUPVAL                         R5 4
      135 GETTABLEKS                       R5 R5 K17 ["Color"]
      137 GETTABLEKS                       R5 R5 K18 ["Content"]
      139 GETTABLEKS                       R5 R5 K33 ["Muted"]
      141 GETTABLEKS                       R5 R5 K20 ["Color3"]
      143 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      145 CALL                             R2 3 0
      146 LOADK                            R4 K34 ["RDLSemanticColorContentStandard"]
      147 GETUPVAL                         R5 4
      148 GETTABLEKS                       R5 R5 K17 ["Color"]
      150 GETTABLEKS                       R5 R5 K18 ["Content"]
      152 GETTABLEKS                       R5 R5 K19 ["Default"]
      154 GETTABLEKS                       R5 R5 K20 ["Color3"]
      156 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      158 CALL                             R2 3 0
      159 LOADK                            R4 K35 ["RDLSemanticColorShift300"]
      160 GETUPVAL                         R5 4
      161 GETTABLEKS                       R5 R5 K17 ["Color"]
      163 GETTABLEKS                       R5 R5 K36 ["Shift"]
      165 GETTABLEKS                       R5 R5 K37 ["Shift_300"]
      167 GETTABLEKS                       R5 R5 K20 ["Color3"]
      169 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      171 CALL                             R2 3 0
      172 LOADK                            R4 K38 ["RDLSemanticColorShift300Transparency"]
      173 GETUPVAL                         R5 4
      174 GETTABLEKS                       R5 R5 K17 ["Color"]
      176 GETTABLEKS                       R5 R5 K36 ["Shift"]
      178 GETTABLEKS                       R5 R5 K37 ["Shift_300"]
      180 GETTABLEKS                       R5 R5 K39 ["Transparency"]
      182 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      184 CALL                             R2 3 0
      185 LOADK                            R4 K40 ["RDLSemanticColorStatesHover"]
      186 GETUPVAL                         R5 4
      187 GETTABLEKS                       R5 R5 K17 ["Color"]
      189 GETTABLEKS                       R5 R5 K41 ["State"]
      191 GETTABLEKS                       R5 R5 K42 ["Hover"]
      193 GETTABLEKS                       R5 R5 K20 ["Color3"]
      195 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      197 CALL                             R2 3 0
      198 LOADK                            R4 K43 ["RDLSemanticColorStatesHoverTransparency"]
      199 GETUPVAL                         R5 4
      200 GETTABLEKS                       R5 R5 K17 ["Color"]
      202 GETTABLEKS                       R5 R5 K41 ["State"]
      204 GETTABLEKS                       R5 R5 K42 ["Hover"]
      206 GETTABLEKS                       R5 R5 K39 ["Transparency"]
      208 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      210 CALL                             R2 3 0
      211 LOADK                            R4 K44 ["RDLSemanticColorStrokeEmphasis"]
      212 GETUPVAL                         R5 4
      213 GETTABLEKS                       R5 R5 K17 ["Color"]
      215 GETTABLEKS                       R5 R5 K45 ["Stroke"]
      217 GETTABLEKS                       R5 R5 K31 ["Emphasis"]
      219 GETTABLEKS                       R5 R5 K20 ["Color3"]
      221 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      223 CALL                             R2 3 0
      224 LOADK                            R4 K46 ["RDLSemanticColorStrokeEmphasisTransparency"]
      225 GETUPVAL                         R5 4
      226 GETTABLEKS                       R5 R5 K17 ["Color"]
      228 GETTABLEKS                       R5 R5 K45 ["Stroke"]
      230 GETTABLEKS                       R5 R5 K31 ["Emphasis"]
      232 GETTABLEKS                       R5 R5 K39 ["Transparency"]
      234 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      236 CALL                             R2 3 0
      237 LOADK                            R4 K47 ["RDLSemanticColorSurface0"]
      238 GETUPVAL                         R5 4
      239 GETTABLEKS                       R5 R5 K17 ["Color"]
      241 GETTABLEKS                       R5 R5 K48 ["Surface"]
      243 GETTABLEKS                       R5 R5 K49 ["Surface_0"]
      245 GETTABLEKS                       R5 R5 K20 ["Color3"]
      247 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      249 CALL                             R2 3 0
      250 LOADK                            R4 K50 ["RDLSemanticColorSurface100"]
      251 GETUPVAL                         R5 4
      252 GETTABLEKS                       R5 R5 K17 ["Color"]
      254 GETTABLEKS                       R5 R5 K48 ["Surface"]
      256 GETTABLEKS                       R5 R5 K51 ["Surface_100"]
      258 GETTABLEKS                       R5 R5 K20 ["Color3"]
      260 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      262 CALL                             R2 3 0
      263 LOADK                            R4 K52 ["RDLSemanticColorSystemEmphasis"]
      264 GETUPVAL                         R5 4
      265 GETTABLEKS                       R5 R5 K17 ["Color"]
      267 GETTABLEKS                       R5 R5 K53 ["System"]
      269 GETTABLEKS                       R5 R5 K31 ["Emphasis"]
      271 GETTABLEKS                       R5 R5 K20 ["Color3"]
      273 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      275 CALL                             R2 3 0
      276 GETUPVAL                         R2 2
      277 GETTABLEKS                       R2 R2 K2 ["theme"]
      279 JUMPIFNOTEQKS                    R2 K3 ["Dark"] ; [+63]
      281 LOADK                            R4 K54 ["ExplorerScrollBar"]
      282 GETIMPORT                        R5 K56 [Color3.fromHex]
      284 LOADK                            R6 K57 ["#747476"]
      285 CALL                             R5 1 -1
      286 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      288 CALL                             R2 -1 0
      289 LOADK                            R4 K58 ["RDLSemanticColorComponentInputFill"]
      290 GETIMPORT                        R5 K56 [Color3.fromHex]
      292 LOADK                            R6 K59 ["#BBC2D1"]
      293 CALL                             R5 1 -1
      294 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      296 CALL                             R2 -1 0
      297 LOADK                            R4 K60 ["RDLSemanticColorComponentInputFillTransparency"]
      298 LOADK                            R5 K61 [0.88]
      299 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      301 CALL                             R2 3 0
      302 LOADK                            R4 K62 ["RDLSemanticColorSurfaceOutline"]
      303 GETIMPORT                        R5 K56 [Color3.fromHex]
      305 LOADK                            R6 K63 ["#FFFFFF"]
      306 CALL                             R5 1 -1
      307 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      309 CALL                             R2 -1 0
      310 LOADK                            R4 K64 ["RDLSemanticColorSurfaceOutlineTransparency"]
      311 LOADK                            R5 K61 [0.88]
      312 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      314 CALL                             R2 3 0
      315 LOADK                            R4 K65 ["ExplorerSelected"]
      316 GETIMPORT                        R5 K56 [Color3.fromHex]
      318 LOADK                            R6 K66 ["#005CB5"]
      319 CALL                             R5 1 -1
      320 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      322 CALL                             R2 -1 0
      323 LOADK                            R4 K67 ["ExplorerContentEmphasis"]
      324 GETIMPORT                        R5 K56 [Color3.fromHex]
      326 LOADK                            R6 K68 ["#EEEFF1"]
      327 CALL                             R5 1 -1
      328 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      330 CALL                             R2 -1 0
      331 GETUPVAL                         R2 5
      332 CALL                             R2 0 1
      333 JUMPIF                           R2 ; [+80]
      334 LOADK                            R4 K69 ["LegacyMainBackground"]
      335 GETIMPORT                        R5 K56 [Color3.fromHex]
      337 LOADK                            R6 K70 ["#131418"]
      338 CALL                             R5 1 -1
      339 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      341 CALL                             R2 -1 0
      342 JUMP                             ; [+71]
      343 LOADK                            R4 K54 ["ExplorerScrollBar"]
      344 GETIMPORT                        R5 K56 [Color3.fromHex]
      346 LOADK                            R6 K71 ["#949496"]
      347 CALL                             R5 1 -1
      348 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      350 CALL                             R2 -1 0
      351 LOADK                            R4 K58 ["RDLSemanticColorComponentInputFill"]
      352 GETIMPORT                        R5 K56 [Color3.fromHex]
      354 LOADK                            R6 K72 ["#333B4C"]
      355 CALL                             R5 1 -1
      356 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      358 CALL                             R2 -1 0
      359 LOADK                            R4 K60 ["RDLSemanticColorComponentInputFillTransparency"]
      360 LOADK                            R5 K73 [0.92]
      361 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      363 CALL                             R2 3 0
      364 LOADK                            R4 K62 ["RDLSemanticColorSurfaceOutline"]
      365 GETIMPORT                        R5 K56 [Color3.fromHex]
      367 LOADK                            R6 K74 ["#000000"]
      368 CALL                             R5 1 -1
      369 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      371 CALL                             R2 -1 0
      372 LOADK                            R4 K64 ["RDLSemanticColorSurfaceOutlineTransparency"]
      373 LOADK                            R5 K61 [0.88]
      374 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      376 CALL                             R2 3 0
      377 LOADK                            R4 K16 ["ExplorerContentDefault"]
      378 GETIMPORT                        R5 K56 [Color3.fromHex]
      380 LOADK                            R6 K74 ["#000000"]
      381 CALL                             R5 1 -1
      382 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      384 CALL                             R2 -1 0
      385 LOADK                            R4 K65 ["ExplorerSelected"]
      386 GETIMPORT                        R5 K56 [Color3.fromHex]
      388 LOADK                            R6 K75 ["#5A95DF"]
      389 CALL                             R5 1 -1
      390 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      392 CALL                             R2 -1 0
      393 LOADK                            R4 K67 ["ExplorerContentEmphasis"]
      394 GETIMPORT                        R5 K77 [Color3.new]
      396 LOADN                            R6 1
      397 LOADN                            R7 1
      398 LOADN                            R8 1
      399 CALL                             R5 3 -1
      400 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      402 CALL                             R2 -1 0
      403 GETUPVAL                         R2 5
      404 CALL                             R2 0 1
      405 JUMPIF                           R2 ; [+8]
      406 LOADK                            R4 K69 ["LegacyMainBackground"]
      407 GETIMPORT                        R5 K56 [Color3.fromHex]
      409 LOADK                            R6 K63 ["#FFFFFF"]
      410 CALL                             R5 1 -1
      411 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      413 CALL                             R2 -1 0
      414 NEWTABLE                         R4 0 1
      416 GETUPVAL                         R5 6
      417 GETTABLEKS                       R5 R5 K78 ["Design"]
      419 SETLIST                          R4 R5 1 [1]
      421 NAMECALL                         R2 R0 K79 ["SetDerives"]
      423 CALL                             R2 2 0
      424 JUMP                             ; [+11]
      425 NEWTABLE                         R4 0 2
      427 GETUPVAL                         R5 6
      428 GETTABLEKS                       R5 R5 K78 ["Design"]
      430 MOVE                             R6 R1
      431 SETLIST                          R4 R5 2 [1]
      433 NAMECALL                         R2 R0 K79 ["SetDerives"]
      435 CALL                             R2 2 0
      436 GETUPVAL                         R2 7
      437 SETTABLEKS                       R2 R0 K5 ["Parent"]
      439 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R2 2
        8 CALL                             R2 0 1
        9 JUMPIFNOT                        R2 ; [+7]
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R1 R1 K2 ["Hooks"]
       13 GETTABLEKS                       R1 R1 K3 ["useTokens"]
       15 CALL                             R1 0 1
       16 JUMP                             ; [+1]
       17 LOADNIL                          R1
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K4 ["useMemo"]
       21 DUPCLOSURE                       R3 K5 [PROTO_0]
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          UPVAL U5
       24 NEWTABLE                         R4 0 1
       26 GETTABLEKS                       R5 R0 K6 ["theme"]
       28 SETLIST                          R4 R5 1 [1]
       30 CALL                             R2 2 1
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R3 R3 K4 ["useMemo"]
       34 NEWCLOSURE                       R4 P1
       35 CAPTURE                          UPVAL U6
       36 CAPTURE                          UPVAL U2
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U7
       39 CAPTURE                          VAL R1
       40 CAPTURE                          UPVAL U8
       41 CAPTURE                          VAL R2
       42 CAPTURE                          UPVAL U4
       43 NEWTABLE                         R5 0 3
       45 MOVE                             R6 R2
       46 GETTABLEKS                       R7 R0 K6 ["theme"]
       48 MOVE                             R8 R1
       49 SETLIST                          R5 R6 3 [1]
       51 CALL                             R3 2 1
       52 GETUPVAL                         R4 0
       53 GETTABLEKS                       R4 R4 K7 ["useEffect"]
       55 NEWCLOSURE                       R5 P2
       56 CAPTURE                          VAL R3
       57 NEWTABLE                         R6 0 1
       59 MOVE                             R7 R3
       60 SETLIST                          R6 R7 1 [1]
       62 CALL                             R4 2 0
       63 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StylingService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Explorer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Parent"]
       17 GETTABLEKS                       R3 R3 K11 ["Foundation"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Parent"]
       24 GETTABLEKS                       R4 R4 K12 ["Framework"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K10 ["Parent"]
       31 GETTABLEKS                       R5 R5 K13 ["React"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R1 K14 ["Resources"]
       38 GETTABLEKS                       R6 R6 K15 ["Style"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R1 K16 ["Components"]
       45 GETTABLEKS                       R7 R7 K17 ["Contexts"]
       47 GETTABLEKS                       R7 R7 K18 ["ThemeContext"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R8 R1 K19 ["Flags"]
       54 GETTABLEKS                       R8 R8 K20 ["getFFlagExplorerFoundation"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K9 [require]
       59 GETTABLEKS                       R9 R1 K19 ["Flags"]
       61 GETTABLEKS                       R9 R9 K21 ["getFFlagLuaExplorerUseRDLColors"]
       63 CALL                             R8 1 1
       64 GETTABLEKS                       R9 R3 K22 ["Styling"]
       66 GETTABLEKS                       R9 R9 K23 ["createStudioDesign"]
       68 DUPCLOSURE                       R10 K24 [PROTO_4]
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R0
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R8
       78 RETURN                           R10 1
