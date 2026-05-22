PROTO_0:
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
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K0 ["useContext"]
       17 GETUPVAL                         R4 3
       18 GETTABLEKS                       R4 R4 K1 ["Context"]
       20 CALL                             R3 1 1
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K0 ["useContext"]
       24 GETUPVAL                         R5 4
       25 GETTABLEKS                       R5 R5 K2 ["ViewportRectContext"]
       27 GETTABLEKS                       R5 R5 K1 ["Context"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R1 K3 ["canCreateGraph"]
       32 DUPTABLE                         R6 K5 [{"menus"}]
       33 NEWTABLE                         R7 0 2
       35 DUPTABLE                         R8 K9 [{"id", "text", "groups"}]
       36 LOADK                            R9 K10 ["graph"]
       37 SETTABLEKS                       R9 R8 K6 ["id"]
       39 LOADK                            R9 K11 ["Graph"]
       40 SETTABLEKS                       R9 R8 K7 ["text"]
       42 NEWTABLE                         R9 0 3
       44 DUPTABLE                         R10 K13 [{"items"}]
       45 NEWTABLE                         R11 0 2
       47 DUPTABLE                         R12 K15 [{"id", "text", "onActivated"}]
       48 LOADK                            R13 K16 ["new"]
       49 SETTABLEKS                       R13 R12 K6 ["id"]
       51 LOADK                            R13 K17 ["New"]
       52 SETTABLEKS                       R13 R12 K7 ["text"]
       54 GETUPVAL                         R13 5
       55 CALL                             R13 0 1
       56 SETTABLEKS                       R13 R12 K14 ["onActivated"]
       58 DUPTABLE                         R13 K15 [{"id", "text", "onActivated"}]
       59 LOADK                            R14 K18 ["open"]
       60 SETTABLEKS                       R14 R13 K6 ["id"]
       62 LOADK                            R14 K19 ["OpenPopup"]
       63 SETTABLEKS                       R14 R13 K7 ["text"]
       65 GETUPVAL                         R14 6
       66 CALL                             R14 0 1
       67 SETTABLEKS                       R14 R13 K14 ["onActivated"]
       69 SETLIST                          R11 R12 2 [1]
       71 SETTABLEKS                       R11 R10 K12 ["items"]
       73 DUPTABLE                         R11 K13 [{"items"}]
       74 NEWTABLE                         R12 0 3
       76 DUPTABLE                         R13 K15 [{"id", "text", "onActivated"}]
       77 LOADK                            R14 K20 ["saveToRoblox"]
       78 SETTABLEKS                       R14 R13 K6 ["id"]
       80 LOADK                            R14 K21 ["SaveToRoblox"]
       81 SETTABLEKS                       R14 R13 K7 ["text"]
       83 GETUPVAL                         R14 7
       84 CALL                             R14 0 1
       85 SETTABLEKS                       R14 R13 K14 ["onActivated"]
       87 DUPTABLE                         R14 K15 [{"id", "text", "onActivated"}]
       88 LOADK                            R15 K22 ["saveToRobloxAs"]
       89 SETTABLEKS                       R15 R14 K6 ["id"]
       91 LOADK                            R15 K23 ["SaveToRobloxAs"]
       92 SETTABLEKS                       R15 R14 K7 ["text"]
       94 GETUPVAL                         R15 8
       95 CALL                             R15 0 1
       96 SETTABLEKS                       R15 R14 K14 ["onActivated"]
       98 DUPTABLE                         R15 K15 [{"id", "text", "onActivated"}]
       99 LOADK                            R16 K24 ["copyAssetId"]
      100 SETTABLEKS                       R16 R15 K6 ["id"]
      102 LOADK                            R16 K25 ["CopyAssetId"]
      103 SETTABLEKS                       R16 R15 K7 ["text"]
      105 GETUPVAL                         R16 9
      106 CALL                             R16 0 1
      107 SETTABLEKS                       R16 R15 K14 ["onActivated"]
      109 SETLIST                          R12 R13 3 [1]
      111 SETTABLEKS                       R12 R11 K12 ["items"]
      113 DUPTABLE                         R12 K13 [{"items"}]
      114 NEWTABLE                         R13 0 2
      116 DUPTABLE                         R14 K15 [{"id", "text", "onActivated"}]
      117 LOADK                            R15 K26 ["createScriptForSelection"]
      118 SETTABLEKS                       R15 R14 K6 ["id"]
      120 GETTABLEKS                       R16 R1 K27 ["selectedTargetName"]
      122 JUMPIFNOT                        R16 ; [+2]
      123 LOADK                            R15 K28 ["CreateScriptFor"]
      124 JUMP                             ; [+1]
      125 LOADK                            R15 K29 ["CreateScriptForSelection"]
      126 SETTABLEKS                       R15 R14 K7 ["text"]
      128 JUMPIFNOT                        R5 ; [+3]
      129 GETTABLEKS                       R15 R2 K30 ["createScriptForSelectedGraphAsync"]
      131 JUMP                             ; [+1]
      132 LOADNIL                          R15
      133 SETTABLEKS                       R15 R14 K14 ["onActivated"]
      135 DUPTABLE                         R15 K15 [{"id", "text", "onActivated"}]
      136 LOADK                            R16 K31 ["createScriptForStarterPlayer"]
      137 SETTABLEKS                       R16 R15 K6 ["id"]
      139 LOADK                            R16 K32 ["CreateScriptForStarterPlayer"]
      140 SETTABLEKS                       R16 R15 K7 ["text"]
      142 GETTABLEKS                       R16 R2 K33 ["createScriptForStarterPlayerAsync"]
      144 SETTABLEKS                       R16 R15 K14 ["onActivated"]
      146 SETLIST                          R13 R14 2 [1]
      148 SETTABLEKS                       R13 R12 K12 ["items"]
      150 SETLIST                          R9 R10 3 [1]
      152 SETTABLEKS                       R9 R8 K8 ["groups"]
      154 DUPTABLE                         R9 K9 [{"id", "text", "groups"}]
      155 LOADK                            R10 K34 ["view"]
      156 SETTABLEKS                       R10 R9 K6 ["id"]
      158 LOADK                            R10 K35 ["View"]
      159 SETTABLEKS                       R10 R9 K7 ["text"]
      161 NEWTABLE                         R10 0 1
      163 DUPTABLE                         R11 K13 [{"items"}]
      164 NEWTABLE                         R12 0 3
      166 DUPTABLE                         R13 K15 [{"id", "text", "onActivated"}]
      167 LOADK                            R14 K36 ["frameSelection"]
      168 SETTABLEKS                       R14 R13 K6 ["id"]
      170 LOADK                            R14 K37 ["FrameSelection"]
      171 SETTABLEKS                       R14 R13 K7 ["text"]
      173 GETTABLEKS                       R14 R4 K36 ["frameSelection"]
      175 SETTABLEKS                       R14 R13 K14 ["onActivated"]
      177 DUPTABLE                         R14 K15 [{"id", "text", "onActivated"}]
      178 LOADK                            R15 K38 ["zoomIn"]
      179 SETTABLEKS                       R15 R14 K6 ["id"]
      181 LOADK                            R15 K39 ["ZoomIn"]
      182 SETTABLEKS                       R15 R14 K7 ["text"]
      184 GETUPVAL                         R15 10
      185 LOADK                            R16 K40 [0.5]
      186 CALL                             R15 1 1
      187 SETTABLEKS                       R15 R14 K14 ["onActivated"]
      189 DUPTABLE                         R15 K15 [{"id", "text", "onActivated"}]
      190 LOADK                            R16 K41 ["zoomOut"]
      191 SETTABLEKS                       R16 R15 K6 ["id"]
      193 LOADK                            R16 K42 ["ZoomOut"]
      194 SETTABLEKS                       R16 R15 K7 ["text"]
      196 GETUPVAL                         R16 10
      197 LOADK                            R17 K43 [-0.5]
      198 CALL                             R16 1 1
      199 SETTABLEKS                       R16 R15 K14 ["onActivated"]
      201 SETLIST                          R12 R13 3 [1]
      203 SETTABLEKS                       R12 R11 K12 ["items"]
      205 SETLIST                          R10 R11 1 [1]
      207 SETTABLEKS                       R10 R9 K8 ["groups"]
      209 SETLIST                          R7 R8 2 [1]
      211 SETTABLEKS                       R7 R6 K4 ["menus"]
      213 GETIMPORT                        R7 K45 [game]
      215 LOADK                            R9 K46 ["DebugAnimationEditorDebugMenu"]
      216 LOADB                            R10 0
      217 NAMECALL                         R7 R7 K47 ["DefineFastFlag"]
      219 CALL                             R7 3 1
      220 JUMPIFNOT                        R7 ; [+38]
      221 GETTABLEKS                       R8 R6 K4 ["menus"]
      223 DUPTABLE                         R9 K9 [{"id", "text", "groups"}]
      224 LOADK                            R10 K48 ["debug"]
      225 SETTABLEKS                       R10 R9 K6 ["id"]
      227 LOADK                            R10 K49 ["Debug"]
      228 SETTABLEKS                       R10 R9 K7 ["text"]
      230 NEWTABLE                         R10 0 1
      232 DUPTABLE                         R11 K13 [{"items"}]
      233 NEWTABLE                         R12 0 1
      235 DUPTABLE                         R13 K15 [{"id", "text", "onActivated"}]
      236 LOADK                            R14 K50 ["copyUi"]
      237 SETTABLEKS                       R14 R13 K6 ["id"]
      239 LOADK                            R14 K51 ["DebugCopyUi"]
      240 SETTABLEKS                       R14 R13 K7 ["text"]
      242 GETTABLEKS                       R14 R3 K50 ["copyUi"]
      244 SETTABLEKS                       R14 R13 K14 ["onActivated"]
      246 SETLIST                          R12 R13 1 [1]
      248 SETTABLEKS                       R12 R11 K12 ["items"]
      250 SETLIST                          R10 R11 1 [1]
      252 SETTABLEKS                       R10 R9 K8 ["groups"]
      254 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
      256 GETIMPORT                        R7 K54 [table.insert]
      258 CALL                             R7 2 0
      259 GETUPVAL                         R7 0
      260 GETTABLEKS                       R7 R7 K55 ["createElement"]
      262 GETUPVAL                         R8 11
      263 GETTABLEKS                       R8 R8 K56 ["Provider"]
      265 DUPTABLE                         R9 K58 [{"value"}]
      266 SETTABLEKS                       R6 R9 K57 ["value"]
      268 GETTABLEKS                       R10 R0 K59 ["children"]
      270 CALL                             R7 3 -1
      271 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R2 K7 ["CreateGraphContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Contexts"]
       18 GETTABLEKS                       R3 R3 K8 ["CreateScriptContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Contexts"]
       25 GETTABLEKS                       R4 R4 K9 ["DebugUiContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K10 ["Parent"]
       39 GETTABLEKS                       R6 R6 K12 ["NodeGraphing"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K10 ["Parent"]
       46 GETTABLEKS                       R7 R7 K13 ["React"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K14 ["Components"]
       53 GETTABLEKS                       R8 R8 K15 ["NodeView"]
       55 GETTABLEKS                       R8 R8 K16 ["MenuActions"]
       57 GETTABLEKS                       R8 R8 K17 ["useCopyAssetId"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K14 ["Components"]
       64 GETTABLEKS                       R9 R9 K15 ["NodeView"]
       66 GETTABLEKS                       R9 R9 K16 ["MenuActions"]
       68 GETTABLEKS                       R9 R9 K18 ["useNewGraph"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K14 ["Components"]
       75 GETTABLEKS                       R10 R10 K15 ["NodeView"]
       77 GETTABLEKS                       R10 R10 K16 ["MenuActions"]
       79 GETTABLEKS                       R10 R10 K19 ["useOpenGraph"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETTABLEKS                       R11 R0 K14 ["Components"]
       86 GETTABLEKS                       R11 R11 K15 ["NodeView"]
       88 GETTABLEKS                       R11 R11 K16 ["MenuActions"]
       90 GETTABLEKS                       R11 R11 K20 ["usePublishAs"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETTABLEKS                       R12 R0 K14 ["Components"]
       97 GETTABLEKS                       R12 R12 K15 ["NodeView"]
       99 GETTABLEKS                       R12 R12 K16 ["MenuActions"]
      101 GETTABLEKS                       R12 R12 K21 ["useSaveToRoblox"]
      103 CALL                             R11 1 1
      104 GETIMPORT                        R12 K5 [require]
      106 GETTABLEKS                       R13 R0 K14 ["Components"]
      108 GETTABLEKS                       R13 R13 K15 ["NodeView"]
      110 GETTABLEKS                       R13 R13 K16 ["MenuActions"]
      112 GETTABLEKS                       R13 R13 K22 ["useZoom"]
      114 CALL                             R12 1 1
      115 DUPTABLE                         R13 K24 [{"menus"}]
      116 NEWTABLE                         R14 0 0
      118 SETTABLEKS                       R14 R13 K23 ["menus"]
      120 GETTABLEKS                       R14 R6 K25 ["createContext"]
      122 MOVE                             R15 R13
      123 CALL                             R14 1 1
      124 DUPCLOSURE                       R15 K26 [PROTO_0]
      125 CAPTURE                          VAL R6
      126 CAPTURE                          VAL R1
      127 CAPTURE                          VAL R2
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R5
      130 CAPTURE                          VAL R8
      131 CAPTURE                          VAL R9
      132 CAPTURE                          VAL R11
      133 CAPTURE                          VAL R10
      134 CAPTURE                          VAL R7
      135 CAPTURE                          VAL R12
      136 CAPTURE                          VAL R14
      137 DUPTABLE                         R16 K29 [{"Context", "Provider"}]
      138 SETTABLEKS                       R14 R16 K27 ["Context"]
      140 SETTABLEKS                       R15 R16 K28 ["Provider"]
      142 RETURN                           R16 1
