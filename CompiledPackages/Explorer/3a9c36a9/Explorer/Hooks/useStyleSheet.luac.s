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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Base"]
        3 NAMECALL                         R0 R0 K1 ["Clone"]
        5 CALL                             R0 1 1
        6 LOADNIL                          R1
        7 GETUPVAL                         R2 1
        8 CALL                             R2 0 1
        9 JUMPIF                           R2 ; [+22]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R2 R3 K2 ["theme"]
       13 JUMPIFNOTEQKS                    R2 K3 ["Dark"] ; [+9]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K3 ["Dark"]
       18 NAMECALL                         R2 R2 K1 ["Clone"]
       20 CALL                             R2 1 1
       21 MOVE                             R1 R2
       22 JUMP                             ; [+7]
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R2 R3 K4 ["Light"]
       26 NAMECALL                         R2 R2 K1 ["Clone"]
       28 CALL                             R2 1 1
       29 MOVE                             R1 R2
       30 SETTABLEKS                       R0 R1 K5 ["Parent"]
       32 GETUPVAL                         R3 3
       33 GETTABLEKS                       R2 R3 K6 ["Components"]
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
       65 JUMPIFNOT                        R2 ; [+363]
       66 LOADK                            R4 K16 ["ExplorerContentDefault"]
       67 GETUPVAL                         R9 4
       68 GETTABLEKS                       R8 R9 K17 ["Color"]
       70 GETTABLEKS                       R7 R8 K18 ["Content"]
       72 GETTABLEKS                       R6 R7 K19 ["Default"]
       74 GETTABLEKS                       R5 R6 K20 ["Color3"]
       76 NAMECALL                         R2 R0 K21 ["SetAttribute"]
       78 CALL                             R2 3 0
       79 LOADK                            R4 K22 ["RDLSemanticColorActionPrimaryBrandFill"]
       80 GETUPVAL                         R11 4
       81 GETTABLEKS                       R10 R11 K23 ["Semantic"]
       83 GETTABLEKS                       R9 R10 K17 ["Color"]
       85 GETTABLEKS                       R8 R9 K24 ["Action"]
       87 GETTABLEKS                       R7 R8 K25 ["PrimaryBrand"]
       89 GETTABLEKS                       R6 R7 K18 ["Content"]
       91 GETTABLEKS                       R5 R6 K20 ["Color3"]
       93 NAMECALL                         R2 R0 K21 ["SetAttribute"]
       95 CALL                             R2 3 0
       96 LOADK                            R4 K26 ["RDLSemanticColorContentDefault"]
       97 GETUPVAL                         R9 4
       98 GETTABLEKS                       R8 R9 K17 ["Color"]
      100 GETTABLEKS                       R7 R8 K18 ["Content"]
      102 GETTABLEKS                       R6 R7 K19 ["Default"]
      104 GETTABLEKS                       R5 R6 K20 ["Color3"]
      106 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      108 CALL                             R2 3 0
      109 LOADK                            R4 K27 ["RDLSemanticColorContentDisabled"]
      110 GETUPVAL                         R10 4
      111 GETTABLEKS                       R9 R10 K17 ["Color"]
      113 GETTABLEKS                       R8 R9 K28 ["Extended"]
      115 GETTABLEKS                       R7 R8 K29 ["Gray"]
      117 GETTABLEKS                       R6 R7 K30 ["Gray_600"]
      119 GETTABLEKS                       R5 R6 K20 ["Color3"]
      121 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      123 CALL                             R2 3 0
      124 LOADK                            R4 K31 ["RDLSemanticColorContentEmphasis"]
      125 GETUPVAL                         R9 4
      126 GETTABLEKS                       R8 R9 K17 ["Color"]
      128 GETTABLEKS                       R7 R8 K18 ["Content"]
      130 GETTABLEKS                       R6 R7 K32 ["Emphasis"]
      132 GETTABLEKS                       R5 R6 K20 ["Color3"]
      134 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      136 CALL                             R2 3 0
      137 LOADK                            R4 K33 ["RDLSemanticColorContentMuted"]
      138 GETUPVAL                         R9 4
      139 GETTABLEKS                       R8 R9 K17 ["Color"]
      141 GETTABLEKS                       R7 R8 K18 ["Content"]
      143 GETTABLEKS                       R6 R7 K34 ["Muted"]
      145 GETTABLEKS                       R5 R6 K20 ["Color3"]
      147 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      149 CALL                             R2 3 0
      150 LOADK                            R4 K35 ["RDLSemanticColorContentStandard"]
      151 GETUPVAL                         R9 4
      152 GETTABLEKS                       R8 R9 K17 ["Color"]
      154 GETTABLEKS                       R7 R8 K18 ["Content"]
      156 GETTABLEKS                       R6 R7 K19 ["Default"]
      158 GETTABLEKS                       R5 R6 K20 ["Color3"]
      160 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      162 CALL                             R2 3 0
      163 LOADK                            R4 K36 ["RDLSemanticColorShift300"]
      164 GETUPVAL                         R9 4
      165 GETTABLEKS                       R8 R9 K17 ["Color"]
      167 GETTABLEKS                       R7 R8 K37 ["Shift"]
      169 GETTABLEKS                       R6 R7 K38 ["Shift_300"]
      171 GETTABLEKS                       R5 R6 K20 ["Color3"]
      173 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      175 CALL                             R2 3 0
      176 LOADK                            R4 K39 ["RDLSemanticColorShift300Transparency"]
      177 GETUPVAL                         R9 4
      178 GETTABLEKS                       R8 R9 K17 ["Color"]
      180 GETTABLEKS                       R7 R8 K37 ["Shift"]
      182 GETTABLEKS                       R6 R7 K38 ["Shift_300"]
      184 GETTABLEKS                       R5 R6 K40 ["Transparency"]
      186 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      188 CALL                             R2 3 0
      189 LOADK                            R4 K41 ["RDLSemanticColorStatesHover"]
      190 GETUPVAL                         R9 4
      191 GETTABLEKS                       R8 R9 K17 ["Color"]
      193 GETTABLEKS                       R7 R8 K42 ["State"]
      195 GETTABLEKS                       R6 R7 K43 ["Hover"]
      197 GETTABLEKS                       R5 R6 K20 ["Color3"]
      199 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      201 CALL                             R2 3 0
      202 LOADK                            R4 K44 ["RDLSemanticColorStatesHoverTransparency"]
      203 GETUPVAL                         R9 4
      204 GETTABLEKS                       R8 R9 K17 ["Color"]
      206 GETTABLEKS                       R7 R8 K42 ["State"]
      208 GETTABLEKS                       R6 R7 K43 ["Hover"]
      210 GETTABLEKS                       R5 R6 K40 ["Transparency"]
      212 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      214 CALL                             R2 3 0
      215 LOADK                            R4 K45 ["RDLSemanticColorStrokeEmphasis"]
      216 GETUPVAL                         R9 4
      217 GETTABLEKS                       R8 R9 K17 ["Color"]
      219 GETTABLEKS                       R7 R8 K46 ["Stroke"]
      221 GETTABLEKS                       R6 R7 K32 ["Emphasis"]
      223 GETTABLEKS                       R5 R6 K20 ["Color3"]
      225 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      227 CALL                             R2 3 0
      228 LOADK                            R4 K47 ["RDLSemanticColorStrokeEmphasisTransparency"]
      229 GETUPVAL                         R9 4
      230 GETTABLEKS                       R8 R9 K17 ["Color"]
      232 GETTABLEKS                       R7 R8 K46 ["Stroke"]
      234 GETTABLEKS                       R6 R7 K32 ["Emphasis"]
      236 GETTABLEKS                       R5 R6 K40 ["Transparency"]
      238 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      240 CALL                             R2 3 0
      241 LOADK                            R4 K48 ["RDLSemanticColorSurface0"]
      242 GETUPVAL                         R9 4
      243 GETTABLEKS                       R8 R9 K17 ["Color"]
      245 GETTABLEKS                       R7 R8 K49 ["Surface"]
      247 GETTABLEKS                       R6 R7 K50 ["Surface_0"]
      249 GETTABLEKS                       R5 R6 K20 ["Color3"]
      251 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      253 CALL                             R2 3 0
      254 LOADK                            R4 K51 ["RDLSemanticColorSurface100"]
      255 GETUPVAL                         R9 4
      256 GETTABLEKS                       R8 R9 K17 ["Color"]
      258 GETTABLEKS                       R7 R8 K49 ["Surface"]
      260 GETTABLEKS                       R6 R7 K52 ["Surface_100"]
      262 GETTABLEKS                       R5 R6 K20 ["Color3"]
      264 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      266 CALL                             R2 3 0
      267 LOADK                            R4 K53 ["RDLSemanticColorSystemEmphasis"]
      268 GETUPVAL                         R9 4
      269 GETTABLEKS                       R8 R9 K17 ["Color"]
      271 GETTABLEKS                       R7 R8 K54 ["System"]
      273 GETTABLEKS                       R6 R7 K32 ["Emphasis"]
      275 GETTABLEKS                       R5 R6 K20 ["Color3"]
      277 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      279 CALL                             R2 3 0
      280 GETUPVAL                         R3 2
      281 GETTABLEKS                       R2 R3 K2 ["theme"]
      283 JUMPIFNOTEQKS                    R2 K3 ["Dark"] ; [+63]
      285 LOADK                            R4 K55 ["ExplorerScrollBar"]
      286 GETIMPORT                        R5 K57 [Color3.fromHex]
      288 LOADK                            R6 K58 ["#747476"]
      289 CALL                             R5 1 -1
      290 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      292 CALL                             R2 -1 0
      293 LOADK                            R4 K59 ["RDLSemanticColorComponentInputFill"]
      294 GETIMPORT                        R5 K57 [Color3.fromHex]
      296 LOADK                            R6 K60 ["#BBC2D1"]
      297 CALL                             R5 1 -1
      298 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      300 CALL                             R2 -1 0
      301 LOADK                            R4 K61 ["RDLSemanticColorComponentInputFillTransparency"]
      302 LOADK                            R5 K62 [0.88]
      303 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      305 CALL                             R2 3 0
      306 LOADK                            R4 K63 ["RDLSemanticColorSurfaceOutline"]
      307 GETIMPORT                        R5 K57 [Color3.fromHex]
      309 LOADK                            R6 K64 ["#FFFFFF"]
      310 CALL                             R5 1 -1
      311 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      313 CALL                             R2 -1 0
      314 LOADK                            R4 K65 ["RDLSemanticColorSurfaceOutlineTransparency"]
      315 LOADK                            R5 K62 [0.88]
      316 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      318 CALL                             R2 3 0
      319 LOADK                            R4 K66 ["ExplorerSelected"]
      320 GETIMPORT                        R5 K57 [Color3.fromHex]
      322 LOADK                            R6 K67 ["#005CB5"]
      323 CALL                             R5 1 -1
      324 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      326 CALL                             R2 -1 0
      327 LOADK                            R4 K68 ["ExplorerContentEmphasis"]
      328 GETIMPORT                        R5 K57 [Color3.fromHex]
      330 LOADK                            R6 K69 ["#EEEFF1"]
      331 CALL                             R5 1 -1
      332 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      334 CALL                             R2 -1 0
      335 GETUPVAL                         R2 5
      336 CALL                             R2 0 1
      337 JUMPIF                           R2 ; [+80]
      338 LOADK                            R4 K70 ["LegacyMainBackground"]
      339 GETIMPORT                        R5 K57 [Color3.fromHex]
      341 LOADK                            R6 K71 ["#131418"]
      342 CALL                             R5 1 -1
      343 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      345 CALL                             R2 -1 0
      346 JUMP                             ; [+71]
      347 LOADK                            R4 K55 ["ExplorerScrollBar"]
      348 GETIMPORT                        R5 K57 [Color3.fromHex]
      350 LOADK                            R6 K72 ["#949496"]
      351 CALL                             R5 1 -1
      352 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      354 CALL                             R2 -1 0
      355 LOADK                            R4 K59 ["RDLSemanticColorComponentInputFill"]
      356 GETIMPORT                        R5 K57 [Color3.fromHex]
      358 LOADK                            R6 K73 ["#333B4C"]
      359 CALL                             R5 1 -1
      360 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      362 CALL                             R2 -1 0
      363 LOADK                            R4 K61 ["RDLSemanticColorComponentInputFillTransparency"]
      364 LOADK                            R5 K74 [0.92]
      365 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      367 CALL                             R2 3 0
      368 LOADK                            R4 K63 ["RDLSemanticColorSurfaceOutline"]
      369 GETIMPORT                        R5 K57 [Color3.fromHex]
      371 LOADK                            R6 K75 ["#000000"]
      372 CALL                             R5 1 -1
      373 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      375 CALL                             R2 -1 0
      376 LOADK                            R4 K65 ["RDLSemanticColorSurfaceOutlineTransparency"]
      377 LOADK                            R5 K62 [0.88]
      378 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      380 CALL                             R2 3 0
      381 LOADK                            R4 K16 ["ExplorerContentDefault"]
      382 GETIMPORT                        R5 K57 [Color3.fromHex]
      384 LOADK                            R6 K75 ["#000000"]
      385 CALL                             R5 1 -1
      386 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      388 CALL                             R2 -1 0
      389 LOADK                            R4 K66 ["ExplorerSelected"]
      390 GETIMPORT                        R5 K57 [Color3.fromHex]
      392 LOADK                            R6 K76 ["#5A95DF"]
      393 CALL                             R5 1 -1
      394 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      396 CALL                             R2 -1 0
      397 LOADK                            R4 K68 ["ExplorerContentEmphasis"]
      398 GETIMPORT                        R5 K78 [Color3.new]
      400 LOADN                            R6 1
      401 LOADN                            R7 1
      402 LOADN                            R8 1
      403 CALL                             R5 3 -1
      404 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      406 CALL                             R2 -1 0
      407 GETUPVAL                         R2 5
      408 CALL                             R2 0 1
      409 JUMPIF                           R2 ; [+8]
      410 LOADK                            R4 K70 ["LegacyMainBackground"]
      411 GETIMPORT                        R5 K57 [Color3.fromHex]
      413 LOADK                            R6 K64 ["#FFFFFF"]
      414 CALL                             R5 1 -1
      415 NAMECALL                         R2 R0 K21 ["SetAttribute"]
      417 CALL                             R2 -1 0
      418 NEWTABLE                         R4 0 1
      420 GETUPVAL                         R6 6
      421 GETTABLEKS                       R5 R6 K79 ["Design"]
      423 SETLIST                          R4 R5 1 [1]
      425 NAMECALL                         R2 R0 K80 ["SetDerives"]
      427 CALL                             R2 2 0
      428 JUMP                             ; [+11]
      429 NEWTABLE                         R4 0 2
      431 GETUPVAL                         R6 6
      432 GETTABLEKS                       R5 R6 K79 ["Design"]
      434 MOVE                             R6 R1
      435 SETLIST                          R4 R5 2 [1]
      437 NAMECALL                         R2 R0 K80 ["SetDerives"]
      439 CALL                             R2 2 0
      440 GETUPVAL                         R2 7
      441 SETTABLEKS                       R2 R0 K5 ["Parent"]
      443 RETURN                           R0 1

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R2 2
        8 CALL                             R2 0 1
        9 JUMPIFNOT                        R2 ; [+7]
       10 GETUPVAL                         R3 3
       11 GETTABLEKS                       R2 R3 K2 ["Hooks"]
       13 GETTABLEKS                       R1 R2 K3 ["useTokens"]
       15 CALL                             R1 0 1
       16 JUMP                             ; [+1]
       17 LOADNIL                          R1
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R2 R3 K4 ["useMemo"]
       21 DUPCLOSURE                       R3 K5 [PROTO_0]
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          UPVAL U5
       24 NEWTABLE                         R4 0 1
       26 GETTABLEKS                       R5 R0 K6 ["theme"]
       28 SETLIST                          R4 R5 1 [1]
       30 CALL                             R2 2 1
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R3 R4 K4 ["useMemo"]
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
       52 GETUPVAL                         R5 0
       53 GETTABLEKS                       R4 R5 K7 ["useEffect"]
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
       15 GETTABLEKS                       R4 R1 K10 ["Parent"]
       17 GETTABLEKS                       R3 R4 K11 ["Foundation"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R1 K10 ["Parent"]
       24 GETTABLEKS                       R4 R5 K12 ["Framework"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R6 R1 K10 ["Parent"]
       31 GETTABLEKS                       R5 R6 K13 ["React"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R7 R1 K14 ["Resources"]
       38 GETTABLEKS                       R6 R7 K15 ["Style"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R9 R1 K16 ["Components"]
       45 GETTABLEKS                       R8 R9 K17 ["Contexts"]
       47 GETTABLEKS                       R7 R8 K18 ["ThemeContext"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R9 R1 K19 ["Flags"]
       54 GETTABLEKS                       R8 R9 K20 ["getFFlagExplorerFoundation"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K9 [require]
       59 GETTABLEKS                       R10 R1 K19 ["Flags"]
       61 GETTABLEKS                       R9 R10 K21 ["getFFlagLuaExplorerUseRDLColors"]
       63 CALL                             R8 1 1
       64 GETTABLEKS                       R10 R3 K22 ["Styling"]
       66 GETTABLEKS                       R9 R10 K23 ["createStudioDesign"]
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
