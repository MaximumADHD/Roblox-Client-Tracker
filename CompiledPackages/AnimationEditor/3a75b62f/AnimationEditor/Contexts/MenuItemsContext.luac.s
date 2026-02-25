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
       14 GETTABLEKS                       R3 R1 K2 ["canCreateGraph"]
       16 DUPTABLE                         R4 K4 [{"menus"}]
       17 NEWTABLE                         R5 0 3
       19 DUPTABLE                         R6 K8 [{"id", "text", "groups"}]
       20 LOADK                            R7 K9 ["graph"]
       21 SETTABLEKS                       R7 R6 K5 ["id"]
       23 LOADK                            R7 K10 ["Graph"]
       24 SETTABLEKS                       R7 R6 K6 ["text"]
       26 NEWTABLE                         R7 0 3
       28 DUPTABLE                         R8 K12 [{"items"}]
       29 NEWTABLE                         R9 0 3
       31 DUPTABLE                         R10 K14 [{"id", "text", "onActivated"}]
       32 LOADK                            R11 K15 ["new"]
       33 SETTABLEKS                       R11 R10 K5 ["id"]
       35 LOADK                            R11 K16 ["New"]
       36 SETTABLEKS                       R11 R10 K6 ["text"]
       38 GETUPVAL                         R11 3
       39 CALL                             R11 0 1
       40 SETTABLEKS                       R11 R10 K13 ["onActivated"]
       42 DUPTABLE                         R11 K14 [{"id", "text", "onActivated"}]
       43 LOADK                            R12 K17 ["open"]
       44 SETTABLEKS                       R12 R11 K5 ["id"]
       46 LOADK                            R12 K18 ["OpenPopup"]
       47 SETTABLEKS                       R12 R11 K6 ["text"]
       49 GETUPVAL                         R12 4
       50 CALL                             R12 0 1
       51 SETTABLEKS                       R12 R11 K13 ["onActivated"]
       53 DUPTABLE                         R12 K19 [{"id", "text"}]
       54 LOADK                            R13 K20 ["duplicate"]
       55 SETTABLEKS                       R13 R12 K5 ["id"]
       57 LOADK                            R13 K21 ["Duplicate"]
       58 SETTABLEKS                       R13 R12 K6 ["text"]
       60 SETLIST                          R9 R10 3 [1]
       62 SETTABLEKS                       R9 R8 K11 ["items"]
       64 DUPTABLE                         R9 K12 [{"items"}]
       65 NEWTABLE                         R10 0 3
       67 DUPTABLE                         R11 K14 [{"id", "text", "onActivated"}]
       68 LOADK                            R12 K22 ["saveToRoblox"]
       69 SETTABLEKS                       R12 R11 K5 ["id"]
       71 LOADK                            R12 K23 ["SaveToRoblox"]
       72 SETTABLEKS                       R12 R11 K6 ["text"]
       74 GETUPVAL                         R12 5
       75 CALL                             R12 0 1
       76 SETTABLEKS                       R12 R11 K13 ["onActivated"]
       78 DUPTABLE                         R12 K14 [{"id", "text", "onActivated"}]
       79 LOADK                            R13 K24 ["saveToRobloxAs"]
       80 SETTABLEKS                       R13 R12 K5 ["id"]
       82 LOADK                            R13 K25 ["SaveToRobloxAs"]
       83 SETTABLEKS                       R13 R12 K6 ["text"]
       85 GETUPVAL                         R13 6
       86 CALL                             R13 0 1
       87 SETTABLEKS                       R13 R12 K13 ["onActivated"]
       89 DUPTABLE                         R13 K14 [{"id", "text", "onActivated"}]
       90 LOADK                            R14 K26 ["copyAssetId"]
       91 SETTABLEKS                       R14 R13 K5 ["id"]
       93 LOADK                            R14 K27 ["CopyAssetId"]
       94 SETTABLEKS                       R14 R13 K6 ["text"]
       96 GETUPVAL                         R14 7
       97 CALL                             R14 0 1
       98 SETTABLEKS                       R14 R13 K13 ["onActivated"]
      100 SETLIST                          R10 R11 3 [1]
      102 SETTABLEKS                       R10 R9 K11 ["items"]
      104 DUPTABLE                         R10 K12 [{"items"}]
      105 NEWTABLE                         R11 0 2
      107 DUPTABLE                         R12 K14 [{"id", "text", "onActivated"}]
      108 LOADK                            R13 K28 ["createScriptForSelection"]
      109 SETTABLEKS                       R13 R12 K5 ["id"]
      111 GETTABLEKS                       R14 R1 K29 ["selectedTargetName"]
      113 JUMPIFNOT                        R14 ; [+2]
      114 LOADK                            R13 K30 ["CreateScriptFor"]
      115 JUMP                             ; [+1]
      116 LOADK                            R13 K31 ["CreateScriptForSelection"]
      117 SETTABLEKS                       R13 R12 K6 ["text"]
      119 JUMPIFNOT                        R3 ; [+3]
      120 GETTABLEKS                       R13 R2 K32 ["createScriptForSelectedGraphAsync"]
      122 JUMP                             ; [+1]
      123 LOADNIL                          R13
      124 SETTABLEKS                       R13 R12 K13 ["onActivated"]
      126 DUPTABLE                         R13 K14 [{"id", "text", "onActivated"}]
      127 LOADK                            R14 K33 ["createScriptForStarterPlayer"]
      128 SETTABLEKS                       R14 R13 K5 ["id"]
      130 LOADK                            R14 K34 ["CreateScriptForStarterPlayer"]
      131 SETTABLEKS                       R14 R13 K6 ["text"]
      133 GETTABLEKS                       R14 R2 K35 ["createScriptForStarterPlayerAsync"]
      135 SETTABLEKS                       R14 R13 K13 ["onActivated"]
      137 SETLIST                          R11 R12 2 [1]
      139 SETTABLEKS                       R11 R10 K11 ["items"]
      141 SETLIST                          R7 R8 3 [1]
      143 SETTABLEKS                       R7 R6 K7 ["groups"]
      145 DUPTABLE                         R7 K8 [{"id", "text", "groups"}]
      146 LOADK                            R8 K36 ["edit"]
      147 SETTABLEKS                       R8 R7 K5 ["id"]
      149 LOADK                            R8 K37 ["Edit"]
      150 SETTABLEKS                       R8 R7 K6 ["text"]
      152 NEWTABLE                         R8 0 4
      154 DUPTABLE                         R9 K12 [{"items"}]
      155 NEWTABLE                         R10 0 2
      157 DUPTABLE                         R11 K19 [{"id", "text"}]
      158 LOADK                            R12 K38 ["insertNode"]
      159 SETTABLEKS                       R12 R11 K5 ["id"]
      161 LOADK                            R12 K39 ["InsertNode"]
      162 SETTABLEKS                       R12 R11 K6 ["text"]
      164 DUPTABLE                         R12 K19 [{"id", "text"}]
      165 LOADK                            R13 K40 ["insertParameter"]
      166 SETTABLEKS                       R13 R12 K5 ["id"]
      168 LOADK                            R13 K41 ["InsertParameter"]
      169 SETTABLEKS                       R13 R12 K6 ["text"]
      171 SETLIST                          R10 R11 2 [1]
      173 SETTABLEKS                       R10 R9 K11 ["items"]
      175 DUPTABLE                         R10 K12 [{"items"}]
      176 NEWTABLE                         R11 0 6
      178 DUPTABLE                         R12 K19 [{"id", "text"}]
      179 LOADK                            R13 K42 ["cut"]
      180 SETTABLEKS                       R13 R12 K5 ["id"]
      182 LOADK                            R13 K43 ["Cut"]
      183 SETTABLEKS                       R13 R12 K6 ["text"]
      185 DUPTABLE                         R13 K19 [{"id", "text"}]
      186 LOADK                            R14 K44 ["copy"]
      187 SETTABLEKS                       R14 R13 K5 ["id"]
      189 LOADK                            R14 K45 ["Copy"]
      190 SETTABLEKS                       R14 R13 K6 ["text"]
      192 DUPTABLE                         R14 K19 [{"id", "text"}]
      193 LOADK                            R15 K46 ["paste"]
      194 SETTABLEKS                       R15 R14 K5 ["id"]
      196 LOADK                            R15 K47 ["Paste"]
      197 SETTABLEKS                       R15 R14 K6 ["text"]
      199 DUPTABLE                         R15 K19 [{"id", "text"}]
      200 LOADK                            R16 K20 ["duplicate"]
      201 SETTABLEKS                       R16 R15 K5 ["id"]
      203 LOADK                            R16 K21 ["Duplicate"]
      204 SETTABLEKS                       R16 R15 K6 ["text"]
      206 DUPTABLE                         R16 K19 [{"id", "text"}]
      207 LOADK                            R17 K48 ["delete"]
      208 SETTABLEKS                       R17 R16 K5 ["id"]
      210 LOADK                            R17 K49 ["Delete"]
      211 SETTABLEKS                       R17 R16 K6 ["text"]
      213 DUPTABLE                         R17 K19 [{"id", "text"}]
      214 LOADK                            R18 K50 ["rename"]
      215 SETTABLEKS                       R18 R17 K5 ["id"]
      217 LOADK                            R18 K51 ["Rename"]
      218 SETTABLEKS                       R18 R17 K6 ["text"]
      220 SETLIST                          R11 R12 6 [1]
      222 SETTABLEKS                       R11 R10 K11 ["items"]
      224 DUPTABLE                         R11 K12 [{"items"}]
      225 NEWTABLE                         R12 0 3
      227 DUPTABLE                         R13 K19 [{"id", "text"}]
      228 LOADK                            R14 K17 ["open"]
      229 SETTABLEKS                       R14 R13 K5 ["id"]
      231 LOADK                            R14 K52 ["Open"]
      232 SETTABLEKS                       R14 R13 K6 ["text"]
      234 DUPTABLE                         R14 K19 [{"id", "text"}]
      235 LOADK                            R15 K53 ["wrapGraph"]
      236 SETTABLEKS                       R15 R14 K5 ["id"]
      238 LOADK                            R15 K54 ["WrapGraph"]
      239 SETTABLEKS                       R15 R14 K6 ["text"]
      241 DUPTABLE                         R15 K19 [{"id", "text"}]
      242 LOADK                            R16 K55 ["unwrapGraph"]
      243 SETTABLEKS                       R16 R15 K5 ["id"]
      245 LOADK                            R16 K56 ["UnwrapGraph"]
      246 SETTABLEKS                       R16 R15 K6 ["text"]
      248 SETLIST                          R12 R13 3 [1]
      250 SETTABLEKS                       R12 R11 K11 ["items"]
      252 DUPTABLE                         R12 K12 [{"items"}]
      253 NEWTABLE                         R13 0 1
      255 DUPTABLE                         R14 K19 [{"id", "text"}]
      256 LOADK                            R15 K57 ["breakConnections"]
      257 SETTABLEKS                       R15 R14 K5 ["id"]
      259 LOADK                            R15 K58 ["BreakConnections"]
      260 SETTABLEKS                       R15 R14 K6 ["text"]
      262 SETLIST                          R13 R14 1 [1]
      264 SETTABLEKS                       R13 R12 K11 ["items"]
      266 SETLIST                          R8 R9 4 [1]
      268 SETTABLEKS                       R8 R7 K7 ["groups"]
      270 DUPTABLE                         R8 K8 [{"id", "text", "groups"}]
      271 LOADK                            R9 K59 ["view"]
      272 SETTABLEKS                       R9 R8 K5 ["id"]
      274 LOADK                            R9 K60 ["View"]
      275 SETTABLEKS                       R9 R8 K6 ["text"]
      277 NEWTABLE                         R9 0 1
      279 DUPTABLE                         R10 K12 [{"items"}]
      280 NEWTABLE                         R11 0 3
      282 DUPTABLE                         R12 K14 [{"id", "text", "onActivated"}]
      283 LOADK                            R13 K61 ["frameSelection"]
      284 SETTABLEKS                       R13 R12 K5 ["id"]
      286 LOADK                            R13 K62 ["FrameSelection"]
      287 SETTABLEKS                       R13 R12 K6 ["text"]
      289 GETUPVAL                         R13 8
      290 CALL                             R13 0 1
      291 SETTABLEKS                       R13 R12 K13 ["onActivated"]
      293 DUPTABLE                         R13 K14 [{"id", "text", "onActivated"}]
      294 LOADK                            R14 K63 ["zoomIn"]
      295 SETTABLEKS                       R14 R13 K5 ["id"]
      297 LOADK                            R14 K64 ["ZoomIn"]
      298 SETTABLEKS                       R14 R13 K6 ["text"]
      300 GETUPVAL                         R14 9
      301 LOADK                            R15 K65 [0.5]
      302 CALL                             R14 1 1
      303 SETTABLEKS                       R14 R13 K13 ["onActivated"]
      305 DUPTABLE                         R14 K14 [{"id", "text", "onActivated"}]
      306 LOADK                            R15 K66 ["zoomOut"]
      307 SETTABLEKS                       R15 R14 K5 ["id"]
      309 LOADK                            R15 K67 ["ZoomOut"]
      310 SETTABLEKS                       R15 R14 K6 ["text"]
      312 GETUPVAL                         R15 9
      313 LOADK                            R16 K68 [-0.5]
      314 CALL                             R15 1 1
      315 SETTABLEKS                       R15 R14 K13 ["onActivated"]
      317 SETLIST                          R11 R12 3 [1]
      319 SETTABLEKS                       R11 R10 K11 ["items"]
      321 SETLIST                          R9 R10 1 [1]
      323 SETTABLEKS                       R9 R8 K7 ["groups"]
      325 SETLIST                          R5 R6 3 [1]
      327 SETTABLEKS                       R5 R4 K3 ["menus"]
      329 GETUPVAL                         R6 0
      330 GETTABLEKS                       R5 R6 K69 ["createElement"]
      332 GETUPVAL                         R7 10
      333 GETTABLEKS                       R6 R7 K70 ["Provider"]
      335 DUPTABLE                         R7 K72 [{"value"}]
      336 SETTABLEKS                       R4 R7 K71 ["value"]
      338 GETTABLEKS                       R8 R0 K73 ["children"]
      340 CALL                             R5 3 -1
      341 RETURN                           R5 -1

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
       23 GETTABLEKS                       R5 R0 K9 ["Parent"]
       25 GETTABLEKS                       R4 R5 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K9 ["Parent"]
       32 GETTABLEKS                       R5 R6 K11 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R9 R0 K12 ["Components"]
       39 GETTABLEKS                       R8 R9 K13 ["NodeView"]
       41 GETTABLEKS                       R7 R8 K14 ["MenuActions"]
       43 GETTABLEKS                       R6 R7 K15 ["useCopyAssetId"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R10 R0 K12 ["Components"]
       50 GETTABLEKS                       R9 R10 K13 ["NodeView"]
       52 GETTABLEKS                       R8 R9 K14 ["MenuActions"]
       54 GETTABLEKS                       R7 R8 K16 ["useFrameSelection"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R11 R0 K12 ["Components"]
       61 GETTABLEKS                       R10 R11 K13 ["NodeView"]
       63 GETTABLEKS                       R9 R10 K14 ["MenuActions"]
       65 GETTABLEKS                       R8 R9 K17 ["useNewGraph"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R12 R0 K12 ["Components"]
       72 GETTABLEKS                       R11 R12 K13 ["NodeView"]
       74 GETTABLEKS                       R10 R11 K14 ["MenuActions"]
       76 GETTABLEKS                       R9 R10 K18 ["useOpenGraph"]
       78 CALL                             R8 1 1
       79 GETIMPORT                        R9 K5 [require]
       81 GETTABLEKS                       R13 R0 K12 ["Components"]
       83 GETTABLEKS                       R12 R13 K13 ["NodeView"]
       85 GETTABLEKS                       R11 R12 K14 ["MenuActions"]
       87 GETTABLEKS                       R10 R11 K19 ["usePublishAs"]
       89 CALL                             R9 1 1
       90 GETIMPORT                        R10 K5 [require]
       92 GETTABLEKS                       R14 R0 K12 ["Components"]
       94 GETTABLEKS                       R13 R14 K13 ["NodeView"]
       96 GETTABLEKS                       R12 R13 K14 ["MenuActions"]
       98 GETTABLEKS                       R11 R12 K20 ["useSaveToRoblox"]
      100 CALL                             R10 1 1
      101 GETIMPORT                        R11 K5 [require]
      103 GETTABLEKS                       R15 R0 K12 ["Components"]
      105 GETTABLEKS                       R14 R15 K13 ["NodeView"]
      107 GETTABLEKS                       R13 R14 K14 ["MenuActions"]
      109 GETTABLEKS                       R12 R13 K21 ["useZoom"]
      111 CALL                             R11 1 1
      112 DUPTABLE                         R12 K23 [{"menus"}]
      113 NEWTABLE                         R13 0 0
      115 SETTABLEKS                       R13 R12 K22 ["menus"]
      117 GETTABLEKS                       R13 R4 K24 ["createContext"]
      119 MOVE                             R14 R12
      120 CALL                             R13 1 1
      121 DUPCLOSURE                       R14 K25 [PROTO_0]
      122 CAPTURE                          VAL R4
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R7
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R10
      128 CAPTURE                          VAL R9
      129 CAPTURE                          VAL R5
      130 CAPTURE                          VAL R6
      131 CAPTURE                          VAL R11
      132 CAPTURE                          VAL R13
      133 DUPTABLE                         R15 K28 [{"Context", "Provider"}]
      134 SETTABLEKS                       R13 R15 K26 ["Context"]
      136 SETTABLEKS                       R14 R15 K27 ["Provider"]
      138 RETURN                           R15 1
