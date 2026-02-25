PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R2 R1 K2 ["canCreateGraph"]
        9 GETUPVAL                         R3 2
       10 LOADK                            R4 K3 ["Selection"]
       11 CALL                             R3 1 1
       12 DUPTABLE                         R4 K5 [{"menus"}]
       13 NEWTABLE                         R5 0 3
       15 DUPTABLE                         R6 K9 [{"id", "text", "groups"}]
       16 LOADK                            R7 K10 ["graph"]
       17 SETTABLEKS                       R7 R6 K6 ["id"]
       19 LOADK                            R7 K11 ["Graph"]
       20 SETTABLEKS                       R7 R6 K7 ["text"]
       22 NEWTABLE                         R7 0 3
       24 DUPTABLE                         R8 K13 [{"items"}]
       25 NEWTABLE                         R9 0 3
       27 DUPTABLE                         R10 K15 [{"id", "text", "onActivated"}]
       28 LOADK                            R11 K16 ["new"]
       29 SETTABLEKS                       R11 R10 K6 ["id"]
       31 LOADK                            R11 K17 ["New"]
       32 SETTABLEKS                       R11 R10 K7 ["text"]
       34 GETUPVAL                         R11 3
       35 CALL                             R11 0 1
       36 SETTABLEKS                       R11 R10 K14 ["onActivated"]
       38 DUPTABLE                         R11 K15 [{"id", "text", "onActivated"}]
       39 LOADK                            R12 K18 ["open"]
       40 SETTABLEKS                       R12 R11 K6 ["id"]
       42 LOADK                            R12 K19 ["OpenPopup"]
       43 SETTABLEKS                       R12 R11 K7 ["text"]
       45 GETUPVAL                         R12 4
       46 CALL                             R12 0 1
       47 SETTABLEKS                       R12 R11 K14 ["onActivated"]
       49 DUPTABLE                         R12 K20 [{"id", "text"}]
       50 LOADK                            R13 K21 ["duplicate"]
       51 SETTABLEKS                       R13 R12 K6 ["id"]
       53 LOADK                            R13 K22 ["Duplicate"]
       54 SETTABLEKS                       R13 R12 K7 ["text"]
       56 SETLIST                          R9 R10 3 [1]
       58 SETTABLEKS                       R9 R8 K12 ["items"]
       60 DUPTABLE                         R9 K13 [{"items"}]
       61 NEWTABLE                         R10 0 3
       63 DUPTABLE                         R11 K15 [{"id", "text", "onActivated"}]
       64 LOADK                            R12 K23 ["saveToRoblox"]
       65 SETTABLEKS                       R12 R11 K6 ["id"]
       67 LOADK                            R12 K24 ["SaveToRoblox"]
       68 SETTABLEKS                       R12 R11 K7 ["text"]
       70 GETUPVAL                         R12 5
       71 CALL                             R12 0 1
       72 SETTABLEKS                       R12 R11 K14 ["onActivated"]
       74 DUPTABLE                         R12 K15 [{"id", "text", "onActivated"}]
       75 LOADK                            R13 K25 ["saveToRobloxAs"]
       76 SETTABLEKS                       R13 R12 K6 ["id"]
       78 LOADK                            R13 K26 ["SaveToRobloxAs"]
       79 SETTABLEKS                       R13 R12 K7 ["text"]
       81 GETUPVAL                         R13 6
       82 CALL                             R13 0 1
       83 SETTABLEKS                       R13 R12 K14 ["onActivated"]
       85 DUPTABLE                         R13 K20 [{"id", "text"}]
       86 LOADK                            R14 K27 ["copyAssetId"]
       87 SETTABLEKS                       R14 R13 K6 ["id"]
       89 LOADK                            R14 K28 ["CopyAssetId"]
       90 SETTABLEKS                       R14 R13 K7 ["text"]
       92 SETLIST                          R10 R11 3 [1]
       94 SETTABLEKS                       R10 R9 K12 ["items"]
       96 DUPTABLE                         R10 K13 [{"items"}]
       97 NEWTABLE                         R11 0 2
       99 DUPTABLE                         R12 K15 [{"id", "text", "onActivated"}]
      100 LOADK                            R13 K29 ["createScriptForSelection"]
      101 SETTABLEKS                       R13 R12 K6 ["id"]
      103 GETTABLEKS                       R14 R1 K30 ["selectedTargetName"]
      105 JUMPIFNOT                        R14 ; [+2]
      106 LOADK                            R13 K31 ["CreateScriptFor"]
      107 JUMP                             ; [+1]
      108 LOADK                            R13 K32 ["CreateScriptForSelection"]
      109 SETTABLEKS                       R13 R12 K7 ["text"]
      111 JUMPIFNOT                        R2 ; [+2]
      112 MOVE                             R13 R3
      113 JUMP                             ; [+1]
      114 LOADNIL                          R13
      115 SETTABLEKS                       R13 R12 K14 ["onActivated"]
      117 DUPTABLE                         R13 K15 [{"id", "text", "onActivated"}]
      118 LOADK                            R14 K33 ["createScriptForStarterPlayer"]
      119 SETTABLEKS                       R14 R13 K6 ["id"]
      121 LOADK                            R14 K34 ["CreateScriptForStarterPlayer"]
      122 SETTABLEKS                       R14 R13 K7 ["text"]
      124 GETUPVAL                         R14 2
      125 LOADK                            R15 K35 ["StarterPlayer"]
      126 CALL                             R14 1 1
      127 SETTABLEKS                       R14 R13 K14 ["onActivated"]
      129 SETLIST                          R11 R12 2 [1]
      131 SETTABLEKS                       R11 R10 K12 ["items"]
      133 SETLIST                          R7 R8 3 [1]
      135 SETTABLEKS                       R7 R6 K8 ["groups"]
      137 DUPTABLE                         R7 K9 [{"id", "text", "groups"}]
      138 LOADK                            R8 K36 ["edit"]
      139 SETTABLEKS                       R8 R7 K6 ["id"]
      141 LOADK                            R8 K37 ["Edit"]
      142 SETTABLEKS                       R8 R7 K7 ["text"]
      144 NEWTABLE                         R8 0 4
      146 DUPTABLE                         R9 K13 [{"items"}]
      147 NEWTABLE                         R10 0 2
      149 DUPTABLE                         R11 K20 [{"id", "text"}]
      150 LOADK                            R12 K38 ["insertNode"]
      151 SETTABLEKS                       R12 R11 K6 ["id"]
      153 LOADK                            R12 K39 ["InsertNode"]
      154 SETTABLEKS                       R12 R11 K7 ["text"]
      156 DUPTABLE                         R12 K20 [{"id", "text"}]
      157 LOADK                            R13 K40 ["insertParameter"]
      158 SETTABLEKS                       R13 R12 K6 ["id"]
      160 LOADK                            R13 K41 ["InsertParameter"]
      161 SETTABLEKS                       R13 R12 K7 ["text"]
      163 SETLIST                          R10 R11 2 [1]
      165 SETTABLEKS                       R10 R9 K12 ["items"]
      167 DUPTABLE                         R10 K13 [{"items"}]
      168 NEWTABLE                         R11 0 6
      170 DUPTABLE                         R12 K20 [{"id", "text"}]
      171 LOADK                            R13 K42 ["cut"]
      172 SETTABLEKS                       R13 R12 K6 ["id"]
      174 LOADK                            R13 K43 ["Cut"]
      175 SETTABLEKS                       R13 R12 K7 ["text"]
      177 DUPTABLE                         R13 K20 [{"id", "text"}]
      178 LOADK                            R14 K44 ["copy"]
      179 SETTABLEKS                       R14 R13 K6 ["id"]
      181 LOADK                            R14 K45 ["Copy"]
      182 SETTABLEKS                       R14 R13 K7 ["text"]
      184 DUPTABLE                         R14 K20 [{"id", "text"}]
      185 LOADK                            R15 K46 ["paste"]
      186 SETTABLEKS                       R15 R14 K6 ["id"]
      188 LOADK                            R15 K47 ["Paste"]
      189 SETTABLEKS                       R15 R14 K7 ["text"]
      191 DUPTABLE                         R15 K20 [{"id", "text"}]
      192 LOADK                            R16 K21 ["duplicate"]
      193 SETTABLEKS                       R16 R15 K6 ["id"]
      195 LOADK                            R16 K22 ["Duplicate"]
      196 SETTABLEKS                       R16 R15 K7 ["text"]
      198 DUPTABLE                         R16 K20 [{"id", "text"}]
      199 LOADK                            R17 K48 ["delete"]
      200 SETTABLEKS                       R17 R16 K6 ["id"]
      202 LOADK                            R17 K49 ["Delete"]
      203 SETTABLEKS                       R17 R16 K7 ["text"]
      205 DUPTABLE                         R17 K20 [{"id", "text"}]
      206 LOADK                            R18 K50 ["rename"]
      207 SETTABLEKS                       R18 R17 K6 ["id"]
      209 LOADK                            R18 K51 ["Rename"]
      210 SETTABLEKS                       R18 R17 K7 ["text"]
      212 SETLIST                          R11 R12 6 [1]
      214 SETTABLEKS                       R11 R10 K12 ["items"]
      216 DUPTABLE                         R11 K13 [{"items"}]
      217 NEWTABLE                         R12 0 3
      219 DUPTABLE                         R13 K20 [{"id", "text"}]
      220 LOADK                            R14 K18 ["open"]
      221 SETTABLEKS                       R14 R13 K6 ["id"]
      223 LOADK                            R14 K52 ["Open"]
      224 SETTABLEKS                       R14 R13 K7 ["text"]
      226 DUPTABLE                         R14 K20 [{"id", "text"}]
      227 LOADK                            R15 K53 ["wrapGraph"]
      228 SETTABLEKS                       R15 R14 K6 ["id"]
      230 LOADK                            R15 K54 ["WrapGraph"]
      231 SETTABLEKS                       R15 R14 K7 ["text"]
      233 DUPTABLE                         R15 K20 [{"id", "text"}]
      234 LOADK                            R16 K55 ["unwrapGraph"]
      235 SETTABLEKS                       R16 R15 K6 ["id"]
      237 LOADK                            R16 K56 ["UnwrapGraph"]
      238 SETTABLEKS                       R16 R15 K7 ["text"]
      240 SETLIST                          R12 R13 3 [1]
      242 SETTABLEKS                       R12 R11 K12 ["items"]
      244 DUPTABLE                         R12 K13 [{"items"}]
      245 NEWTABLE                         R13 0 1
      247 DUPTABLE                         R14 K20 [{"id", "text"}]
      248 LOADK                            R15 K57 ["breakConnections"]
      249 SETTABLEKS                       R15 R14 K6 ["id"]
      251 LOADK                            R15 K58 ["BreakConnections"]
      252 SETTABLEKS                       R15 R14 K7 ["text"]
      254 SETLIST                          R13 R14 1 [1]
      256 SETTABLEKS                       R13 R12 K12 ["items"]
      258 SETLIST                          R8 R9 4 [1]
      260 SETTABLEKS                       R8 R7 K8 ["groups"]
      262 DUPTABLE                         R8 K9 [{"id", "text", "groups"}]
      263 LOADK                            R9 K59 ["view"]
      264 SETTABLEKS                       R9 R8 K6 ["id"]
      266 LOADK                            R9 K60 ["View"]
      267 SETTABLEKS                       R9 R8 K7 ["text"]
      269 NEWTABLE                         R9 0 1
      271 DUPTABLE                         R10 K13 [{"items"}]
      272 NEWTABLE                         R11 0 3
      274 DUPTABLE                         R12 K15 [{"id", "text", "onActivated"}]
      275 LOADK                            R13 K61 ["frameSelection"]
      276 SETTABLEKS                       R13 R12 K6 ["id"]
      278 LOADK                            R13 K62 ["FrameSelection"]
      279 SETTABLEKS                       R13 R12 K7 ["text"]
      281 GETUPVAL                         R13 7
      282 CALL                             R13 0 1
      283 SETTABLEKS                       R13 R12 K14 ["onActivated"]
      285 DUPTABLE                         R13 K15 [{"id", "text", "onActivated"}]
      286 LOADK                            R14 K63 ["zoomIn"]
      287 SETTABLEKS                       R14 R13 K6 ["id"]
      289 LOADK                            R14 K64 ["ZoomIn"]
      290 SETTABLEKS                       R14 R13 K7 ["text"]
      292 GETUPVAL                         R14 8
      293 LOADK                            R15 K65 [0.5]
      294 CALL                             R14 1 1
      295 SETTABLEKS                       R14 R13 K14 ["onActivated"]
      297 DUPTABLE                         R14 K15 [{"id", "text", "onActivated"}]
      298 LOADK                            R15 K66 ["zoomOut"]
      299 SETTABLEKS                       R15 R14 K6 ["id"]
      301 LOADK                            R15 K67 ["ZoomOut"]
      302 SETTABLEKS                       R15 R14 K7 ["text"]
      304 GETUPVAL                         R15 8
      305 LOADK                            R16 K68 [-0.5]
      306 CALL                             R15 1 1
      307 SETTABLEKS                       R15 R14 K14 ["onActivated"]
      309 SETLIST                          R11 R12 3 [1]
      311 SETTABLEKS                       R11 R10 K12 ["items"]
      313 SETLIST                          R9 R10 1 [1]
      315 SETTABLEKS                       R9 R8 K8 ["groups"]
      317 SETLIST                          R5 R6 3 [1]
      319 SETTABLEKS                       R5 R4 K4 ["menus"]
      321 GETUPVAL                         R6 0
      322 GETTABLEKS                       R5 R6 K69 ["createElement"]
      324 GETUPVAL                         R7 9
      325 GETTABLEKS                       R6 R7 K70 ["Provider"]
      327 DUPTABLE                         R7 K72 [{"value"}]
      328 SETTABLEKS                       R4 R7 K71 ["value"]
      330 GETTABLEKS                       R8 R0 K73 ["children"]
      332 CALL                             R5 3 -1
      333 RETURN                           R5 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R5 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R8 R0 K11 ["Components"]
       32 GETTABLEKS                       R7 R8 K12 ["NodeView"]
       34 GETTABLEKS                       R6 R7 K13 ["MenuActions"]
       36 GETTABLEKS                       R5 R6 K14 ["useCreateScript"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R9 R0 K11 ["Components"]
       43 GETTABLEKS                       R8 R9 K12 ["NodeView"]
       45 GETTABLEKS                       R7 R8 K13 ["MenuActions"]
       47 GETTABLEKS                       R6 R7 K15 ["useFrameSelection"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R10 R0 K11 ["Components"]
       54 GETTABLEKS                       R9 R10 K12 ["NodeView"]
       56 GETTABLEKS                       R8 R9 K13 ["MenuActions"]
       58 GETTABLEKS                       R7 R8 K16 ["useNewGraph"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R11 R0 K11 ["Components"]
       65 GETTABLEKS                       R10 R11 K12 ["NodeView"]
       67 GETTABLEKS                       R9 R10 K13 ["MenuActions"]
       69 GETTABLEKS                       R8 R9 K17 ["useOpenGraph"]
       71 CALL                             R7 1 1
       72 GETIMPORT                        R8 K5 [require]
       74 GETTABLEKS                       R12 R0 K11 ["Components"]
       76 GETTABLEKS                       R11 R12 K12 ["NodeView"]
       78 GETTABLEKS                       R10 R11 K13 ["MenuActions"]
       80 GETTABLEKS                       R9 R10 K18 ["usePublishAs"]
       82 CALL                             R8 1 1
       83 GETIMPORT                        R9 K5 [require]
       85 GETTABLEKS                       R13 R0 K11 ["Components"]
       87 GETTABLEKS                       R12 R13 K12 ["NodeView"]
       89 GETTABLEKS                       R11 R12 K13 ["MenuActions"]
       91 GETTABLEKS                       R10 R11 K19 ["useSaveToRoblox"]
       93 CALL                             R9 1 1
       94 GETIMPORT                        R10 K5 [require]
       96 GETTABLEKS                       R14 R0 K11 ["Components"]
       98 GETTABLEKS                       R13 R14 K12 ["NodeView"]
      100 GETTABLEKS                       R12 R13 K13 ["MenuActions"]
      102 GETTABLEKS                       R11 R12 K20 ["useZoom"]
      104 CALL                             R10 1 1
      105 DUPTABLE                         R11 K22 [{"menus"}]
      106 NEWTABLE                         R12 0 0
      108 SETTABLEKS                       R12 R11 K21 ["menus"]
      110 GETTABLEKS                       R12 R3 K23 ["createContext"]
      112 MOVE                             R13 R11
      113 CALL                             R12 1 1
      114 DUPCLOSURE                       R13 K24 [PROTO_0]
      115 CAPTURE                          VAL R3
      116 CAPTURE                          VAL R1
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R6
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R9
      121 CAPTURE                          VAL R8
      122 CAPTURE                          VAL R5
      123 CAPTURE                          VAL R10
      124 CAPTURE                          VAL R12
      125 DUPTABLE                         R14 K27 [{"Context", "Provider"}]
      126 SETTABLEKS                       R12 R14 K25 ["Context"]
      128 SETTABLEKS                       R13 R14 K26 ["Provider"]
      130 RETURN                           R14 1
