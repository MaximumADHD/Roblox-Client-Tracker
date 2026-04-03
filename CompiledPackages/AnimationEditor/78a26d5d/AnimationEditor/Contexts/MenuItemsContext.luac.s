PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["useContext"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K0 ["useContext"]
       17 GETUPVAL                         R5 3
       18 GETTABLEKS                       R4 R5 K1 ["Context"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R1 K2 ["canCreateGraph"]
       23 DUPTABLE                         R5 K4 [{"menus"}]
       24 NEWTABLE                         R6 0 3
       26 DUPTABLE                         R7 K8 [{"id", "text", "groups"}]
       27 LOADK                            R8 K9 ["graph"]
       28 SETTABLEKS                       R8 R7 K5 ["id"]
       30 LOADK                            R8 K10 ["Graph"]
       31 SETTABLEKS                       R8 R7 K6 ["text"]
       33 NEWTABLE                         R8 0 3
       35 DUPTABLE                         R9 K12 [{"items"}]
       36 NEWTABLE                         R10 0 3
       38 DUPTABLE                         R11 K14 [{"id", "text", "onActivated"}]
       39 LOADK                            R12 K15 ["new"]
       40 SETTABLEKS                       R12 R11 K5 ["id"]
       42 LOADK                            R12 K16 ["New"]
       43 SETTABLEKS                       R12 R11 K6 ["text"]
       45 GETUPVAL                         R12 4
       46 CALL                             R12 0 1
       47 SETTABLEKS                       R12 R11 K13 ["onActivated"]
       49 DUPTABLE                         R12 K14 [{"id", "text", "onActivated"}]
       50 LOADK                            R13 K17 ["open"]
       51 SETTABLEKS                       R13 R12 K5 ["id"]
       53 LOADK                            R13 K18 ["OpenPopup"]
       54 SETTABLEKS                       R13 R12 K6 ["text"]
       56 GETUPVAL                         R13 5
       57 CALL                             R13 0 1
       58 SETTABLEKS                       R13 R12 K13 ["onActivated"]
       60 DUPTABLE                         R13 K19 [{"id", "text"}]
       61 LOADK                            R14 K20 ["duplicate"]
       62 SETTABLEKS                       R14 R13 K5 ["id"]
       64 LOADK                            R14 K21 ["Duplicate"]
       65 SETTABLEKS                       R14 R13 K6 ["text"]
       67 SETLIST                          R10 R11 3 [1]
       69 SETTABLEKS                       R10 R9 K11 ["items"]
       71 DUPTABLE                         R10 K12 [{"items"}]
       72 NEWTABLE                         R11 0 3
       74 DUPTABLE                         R12 K14 [{"id", "text", "onActivated"}]
       75 LOADK                            R13 K22 ["saveToRoblox"]
       76 SETTABLEKS                       R13 R12 K5 ["id"]
       78 LOADK                            R13 K23 ["SaveToRoblox"]
       79 SETTABLEKS                       R13 R12 K6 ["text"]
       81 GETUPVAL                         R13 6
       82 CALL                             R13 0 1
       83 SETTABLEKS                       R13 R12 K13 ["onActivated"]
       85 DUPTABLE                         R13 K14 [{"id", "text", "onActivated"}]
       86 LOADK                            R14 K24 ["saveToRobloxAs"]
       87 SETTABLEKS                       R14 R13 K5 ["id"]
       89 LOADK                            R14 K25 ["SaveToRobloxAs"]
       90 SETTABLEKS                       R14 R13 K6 ["text"]
       92 GETUPVAL                         R14 7
       93 CALL                             R14 0 1
       94 SETTABLEKS                       R14 R13 K13 ["onActivated"]
       96 DUPTABLE                         R14 K14 [{"id", "text", "onActivated"}]
       97 LOADK                            R15 K26 ["copyAssetId"]
       98 SETTABLEKS                       R15 R14 K5 ["id"]
      100 LOADK                            R15 K27 ["CopyAssetId"]
      101 SETTABLEKS                       R15 R14 K6 ["text"]
      103 GETUPVAL                         R15 8
      104 CALL                             R15 0 1
      105 SETTABLEKS                       R15 R14 K13 ["onActivated"]
      107 SETLIST                          R11 R12 3 [1]
      109 SETTABLEKS                       R11 R10 K11 ["items"]
      111 DUPTABLE                         R11 K12 [{"items"}]
      112 NEWTABLE                         R12 0 2
      114 DUPTABLE                         R13 K14 [{"id", "text", "onActivated"}]
      115 LOADK                            R14 K28 ["createScriptForSelection"]
      116 SETTABLEKS                       R14 R13 K5 ["id"]
      118 GETTABLEKS                       R15 R1 K29 ["selectedTargetName"]
      120 JUMPIFNOT                        R15 ; [+2]
      121 LOADK                            R14 K30 ["CreateScriptFor"]
      122 JUMP                             ; [+1]
      123 LOADK                            R14 K31 ["CreateScriptForSelection"]
      124 SETTABLEKS                       R14 R13 K6 ["text"]
      126 JUMPIFNOT                        R4 ; [+3]
      127 GETTABLEKS                       R14 R2 K32 ["createScriptForSelectedGraphAsync"]
      129 JUMP                             ; [+1]
      130 LOADNIL                          R14
      131 SETTABLEKS                       R14 R13 K13 ["onActivated"]
      133 DUPTABLE                         R14 K14 [{"id", "text", "onActivated"}]
      134 LOADK                            R15 K33 ["createScriptForStarterPlayer"]
      135 SETTABLEKS                       R15 R14 K5 ["id"]
      137 LOADK                            R15 K34 ["CreateScriptForStarterPlayer"]
      138 SETTABLEKS                       R15 R14 K6 ["text"]
      140 GETTABLEKS                       R15 R2 K35 ["createScriptForStarterPlayerAsync"]
      142 SETTABLEKS                       R15 R14 K13 ["onActivated"]
      144 SETLIST                          R12 R13 2 [1]
      146 SETTABLEKS                       R12 R11 K11 ["items"]
      148 SETLIST                          R8 R9 3 [1]
      150 SETTABLEKS                       R8 R7 K7 ["groups"]
      152 DUPTABLE                         R8 K8 [{"id", "text", "groups"}]
      153 LOADK                            R9 K36 ["edit"]
      154 SETTABLEKS                       R9 R8 K5 ["id"]
      156 LOADK                            R9 K37 ["Edit"]
      157 SETTABLEKS                       R9 R8 K6 ["text"]
      159 NEWTABLE                         R9 0 4
      161 DUPTABLE                         R10 K12 [{"items"}]
      162 NEWTABLE                         R11 0 2
      164 DUPTABLE                         R12 K19 [{"id", "text"}]
      165 LOADK                            R13 K38 ["insertNode"]
      166 SETTABLEKS                       R13 R12 K5 ["id"]
      168 LOADK                            R13 K39 ["InsertNode"]
      169 SETTABLEKS                       R13 R12 K6 ["text"]
      171 DUPTABLE                         R13 K19 [{"id", "text"}]
      172 LOADK                            R14 K40 ["insertParameter"]
      173 SETTABLEKS                       R14 R13 K5 ["id"]
      175 LOADK                            R14 K41 ["InsertParameter"]
      176 SETTABLEKS                       R14 R13 K6 ["text"]
      178 SETLIST                          R11 R12 2 [1]
      180 SETTABLEKS                       R11 R10 K11 ["items"]
      182 DUPTABLE                         R11 K12 [{"items"}]
      183 NEWTABLE                         R12 0 6
      185 DUPTABLE                         R13 K19 [{"id", "text"}]
      186 LOADK                            R14 K42 ["cut"]
      187 SETTABLEKS                       R14 R13 K5 ["id"]
      189 LOADK                            R14 K43 ["Cut"]
      190 SETTABLEKS                       R14 R13 K6 ["text"]
      192 DUPTABLE                         R14 K19 [{"id", "text"}]
      193 LOADK                            R15 K44 ["copy"]
      194 SETTABLEKS                       R15 R14 K5 ["id"]
      196 LOADK                            R15 K45 ["Copy"]
      197 SETTABLEKS                       R15 R14 K6 ["text"]
      199 DUPTABLE                         R15 K19 [{"id", "text"}]
      200 LOADK                            R16 K46 ["paste"]
      201 SETTABLEKS                       R16 R15 K5 ["id"]
      203 LOADK                            R16 K47 ["Paste"]
      204 SETTABLEKS                       R16 R15 K6 ["text"]
      206 DUPTABLE                         R16 K19 [{"id", "text"}]
      207 LOADK                            R17 K20 ["duplicate"]
      208 SETTABLEKS                       R17 R16 K5 ["id"]
      210 LOADK                            R17 K21 ["Duplicate"]
      211 SETTABLEKS                       R17 R16 K6 ["text"]
      213 DUPTABLE                         R17 K19 [{"id", "text"}]
      214 LOADK                            R18 K48 ["delete"]
      215 SETTABLEKS                       R18 R17 K5 ["id"]
      217 LOADK                            R18 K49 ["Delete"]
      218 SETTABLEKS                       R18 R17 K6 ["text"]
      220 DUPTABLE                         R18 K19 [{"id", "text"}]
      221 LOADK                            R19 K50 ["rename"]
      222 SETTABLEKS                       R19 R18 K5 ["id"]
      224 LOADK                            R19 K51 ["Rename"]
      225 SETTABLEKS                       R19 R18 K6 ["text"]
      227 SETLIST                          R12 R13 6 [1]
      229 SETTABLEKS                       R12 R11 K11 ["items"]
      231 DUPTABLE                         R12 K12 [{"items"}]
      232 NEWTABLE                         R13 0 3
      234 DUPTABLE                         R14 K19 [{"id", "text"}]
      235 LOADK                            R15 K17 ["open"]
      236 SETTABLEKS                       R15 R14 K5 ["id"]
      238 LOADK                            R15 K52 ["Open"]
      239 SETTABLEKS                       R15 R14 K6 ["text"]
      241 DUPTABLE                         R15 K19 [{"id", "text"}]
      242 LOADK                            R16 K53 ["wrapGraph"]
      243 SETTABLEKS                       R16 R15 K5 ["id"]
      245 LOADK                            R16 K54 ["WrapGraph"]
      246 SETTABLEKS                       R16 R15 K6 ["text"]
      248 DUPTABLE                         R16 K19 [{"id", "text"}]
      249 LOADK                            R17 K55 ["unwrapGraph"]
      250 SETTABLEKS                       R17 R16 K5 ["id"]
      252 LOADK                            R17 K56 ["UnwrapGraph"]
      253 SETTABLEKS                       R17 R16 K6 ["text"]
      255 SETLIST                          R13 R14 3 [1]
      257 SETTABLEKS                       R13 R12 K11 ["items"]
      259 DUPTABLE                         R13 K12 [{"items"}]
      260 NEWTABLE                         R14 0 1
      262 DUPTABLE                         R15 K19 [{"id", "text"}]
      263 LOADK                            R16 K57 ["breakConnections"]
      264 SETTABLEKS                       R16 R15 K5 ["id"]
      266 LOADK                            R16 K58 ["BreakConnections"]
      267 SETTABLEKS                       R16 R15 K6 ["text"]
      269 SETLIST                          R14 R15 1 [1]
      271 SETTABLEKS                       R14 R13 K11 ["items"]
      273 SETLIST                          R9 R10 4 [1]
      275 SETTABLEKS                       R9 R8 K7 ["groups"]
      277 DUPTABLE                         R9 K8 [{"id", "text", "groups"}]
      278 LOADK                            R10 K59 ["view"]
      279 SETTABLEKS                       R10 R9 K5 ["id"]
      281 LOADK                            R10 K60 ["View"]
      282 SETTABLEKS                       R10 R9 K6 ["text"]
      284 NEWTABLE                         R10 0 1
      286 DUPTABLE                         R11 K12 [{"items"}]
      287 NEWTABLE                         R12 0 3
      289 DUPTABLE                         R13 K14 [{"id", "text", "onActivated"}]
      290 LOADK                            R14 K61 ["frameSelection"]
      291 SETTABLEKS                       R14 R13 K5 ["id"]
      293 LOADK                            R14 K62 ["FrameSelection"]
      294 SETTABLEKS                       R14 R13 K6 ["text"]
      296 GETUPVAL                         R14 9
      297 CALL                             R14 0 1
      298 SETTABLEKS                       R14 R13 K13 ["onActivated"]
      300 DUPTABLE                         R14 K14 [{"id", "text", "onActivated"}]
      301 LOADK                            R15 K63 ["zoomIn"]
      302 SETTABLEKS                       R15 R14 K5 ["id"]
      304 LOADK                            R15 K64 ["ZoomIn"]
      305 SETTABLEKS                       R15 R14 K6 ["text"]
      307 GETUPVAL                         R15 10
      308 LOADK                            R16 K65 [0.5]
      309 CALL                             R15 1 1
      310 SETTABLEKS                       R15 R14 K13 ["onActivated"]
      312 DUPTABLE                         R15 K14 [{"id", "text", "onActivated"}]
      313 LOADK                            R16 K66 ["zoomOut"]
      314 SETTABLEKS                       R16 R15 K5 ["id"]
      316 LOADK                            R16 K67 ["ZoomOut"]
      317 SETTABLEKS                       R16 R15 K6 ["text"]
      319 GETUPVAL                         R16 10
      320 LOADK                            R17 K68 [-0.5]
      321 CALL                             R16 1 1
      322 SETTABLEKS                       R16 R15 K13 ["onActivated"]
      324 SETLIST                          R12 R13 3 [1]
      326 SETTABLEKS                       R12 R11 K11 ["items"]
      328 SETLIST                          R10 R11 1 [1]
      330 SETTABLEKS                       R10 R9 K7 ["groups"]
      332 SETLIST                          R6 R7 3 [1]
      334 SETTABLEKS                       R6 R5 K3 ["menus"]
      336 GETIMPORT                        R6 K70 [game]
      338 LOADK                            R8 K71 ["DebugAnimationEditorDebugMenu"]
      339 LOADB                            R9 0
      340 NAMECALL                         R6 R6 K72 ["DefineFastFlag"]
      342 CALL                             R6 3 1
      343 JUMPIFNOT                        R6 ; [+38]
      344 GETTABLEKS                       R7 R5 K3 ["menus"]
      346 DUPTABLE                         R8 K8 [{"id", "text", "groups"}]
      347 LOADK                            R9 K73 ["debug"]
      348 SETTABLEKS                       R9 R8 K5 ["id"]
      350 LOADK                            R9 K74 ["Debug"]
      351 SETTABLEKS                       R9 R8 K6 ["text"]
      353 NEWTABLE                         R9 0 1
      355 DUPTABLE                         R10 K12 [{"items"}]
      356 NEWTABLE                         R11 0 1
      358 DUPTABLE                         R12 K14 [{"id", "text", "onActivated"}]
      359 LOADK                            R13 K75 ["copyUi"]
      360 SETTABLEKS                       R13 R12 K5 ["id"]
      362 LOADK                            R13 K76 ["DebugCopyUi"]
      363 SETTABLEKS                       R13 R12 K6 ["text"]
      365 GETTABLEKS                       R13 R3 K75 ["copyUi"]
      367 SETTABLEKS                       R13 R12 K13 ["onActivated"]
      369 SETLIST                          R11 R12 1 [1]
      371 SETTABLEKS                       R11 R10 K11 ["items"]
      373 SETLIST                          R9 R10 1 [1]
      375 SETTABLEKS                       R9 R8 K7 ["groups"]
      377 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
      379 GETIMPORT                        R6 K79 [table.insert]
      381 CALL                             R6 2 0
      382 GETUPVAL                         R7 0
      383 GETTABLEKS                       R6 R7 K80 ["createElement"]
      385 GETUPVAL                         R8 11
      386 GETTABLEKS                       R7 R8 K81 ["Provider"]
      388 DUPTABLE                         R8 K83 [{"value"}]
      389 SETTABLEKS                       R5 R8 K82 ["value"]
      391 GETTABLEKS                       R9 R0 K84 ["children"]
      393 CALL                             R6 3 -1
      394 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R3 K7 ["CreateGraphContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Contexts"]
       18 GETTABLEKS                       R3 R4 K8 ["CreateScriptContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Contexts"]
       25 GETTABLEKS                       R4 R5 K9 ["DebugUiContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Parent"]
       32 GETTABLEKS                       R5 R6 K11 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K10 ["Parent"]
       39 GETTABLEKS                       R6 R7 K12 ["React"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R10 R0 K13 ["Components"]
       46 GETTABLEKS                       R9 R10 K14 ["NodeView"]
       48 GETTABLEKS                       R8 R9 K15 ["MenuActions"]
       50 GETTABLEKS                       R7 R8 K16 ["useCopyAssetId"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R11 R0 K13 ["Components"]
       57 GETTABLEKS                       R10 R11 K14 ["NodeView"]
       59 GETTABLEKS                       R9 R10 K15 ["MenuActions"]
       61 GETTABLEKS                       R8 R9 K17 ["useFrameSelection"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R12 R0 K13 ["Components"]
       68 GETTABLEKS                       R11 R12 K14 ["NodeView"]
       70 GETTABLEKS                       R10 R11 K15 ["MenuActions"]
       72 GETTABLEKS                       R9 R10 K18 ["useNewGraph"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R13 R0 K13 ["Components"]
       79 GETTABLEKS                       R12 R13 K14 ["NodeView"]
       81 GETTABLEKS                       R11 R12 K15 ["MenuActions"]
       83 GETTABLEKS                       R10 R11 K19 ["useOpenGraph"]
       85 CALL                             R9 1 1
       86 GETIMPORT                        R10 K5 [require]
       88 GETTABLEKS                       R14 R0 K13 ["Components"]
       90 GETTABLEKS                       R13 R14 K14 ["NodeView"]
       92 GETTABLEKS                       R12 R13 K15 ["MenuActions"]
       94 GETTABLEKS                       R11 R12 K20 ["usePublishAs"]
       96 CALL                             R10 1 1
       97 GETIMPORT                        R11 K5 [require]
       99 GETTABLEKS                       R15 R0 K13 ["Components"]
      101 GETTABLEKS                       R14 R15 K14 ["NodeView"]
      103 GETTABLEKS                       R13 R14 K15 ["MenuActions"]
      105 GETTABLEKS                       R12 R13 K21 ["useSaveToRoblox"]
      107 CALL                             R11 1 1
      108 GETIMPORT                        R12 K5 [require]
      110 GETTABLEKS                       R16 R0 K13 ["Components"]
      112 GETTABLEKS                       R15 R16 K14 ["NodeView"]
      114 GETTABLEKS                       R14 R15 K15 ["MenuActions"]
      116 GETTABLEKS                       R13 R14 K22 ["useZoom"]
      118 CALL                             R12 1 1
      119 DUPTABLE                         R13 K24 [{"menus"}]
      120 NEWTABLE                         R14 0 0
      122 SETTABLEKS                       R14 R13 K23 ["menus"]
      124 GETTABLEKS                       R14 R5 K25 ["createContext"]
      126 MOVE                             R15 R13
      127 CALL                             R14 1 1
      128 DUPCLOSURE                       R15 K26 [PROTO_0]
      129 CAPTURE                          VAL R5
      130 CAPTURE                          VAL R1
      131 CAPTURE                          VAL R2
      132 CAPTURE                          VAL R3
      133 CAPTURE                          VAL R8
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R11
      136 CAPTURE                          VAL R10
      137 CAPTURE                          VAL R6
      138 CAPTURE                          VAL R7
      139 CAPTURE                          VAL R12
      140 CAPTURE                          VAL R14
      141 DUPTABLE                         R16 K29 [{"Context", "Provider"}]
      142 SETTABLEKS                       R14 R16 K27 ["Context"]
      144 SETTABLEKS                       R15 R16 K28 ["Provider"]
      146 RETURN                           R16 1
