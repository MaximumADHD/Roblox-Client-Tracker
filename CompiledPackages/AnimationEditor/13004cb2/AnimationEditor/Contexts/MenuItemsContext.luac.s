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
       24 NEWTABLE                         R6 0 2
       26 DUPTABLE                         R7 K8 [{"id", "text", "groups"}]
       27 LOADK                            R8 K9 ["graph"]
       28 SETTABLEKS                       R8 R7 K5 ["id"]
       30 LOADK                            R8 K10 ["Graph"]
       31 SETTABLEKS                       R8 R7 K6 ["text"]
       33 NEWTABLE                         R8 0 3
       35 DUPTABLE                         R9 K12 [{"items"}]
       36 NEWTABLE                         R10 0 2
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
       60 SETLIST                          R10 R11 2 [1]
       62 SETTABLEKS                       R10 R9 K11 ["items"]
       64 DUPTABLE                         R10 K12 [{"items"}]
       65 NEWTABLE                         R11 0 3
       67 DUPTABLE                         R12 K14 [{"id", "text", "onActivated"}]
       68 LOADK                            R13 K19 ["saveToRoblox"]
       69 SETTABLEKS                       R13 R12 K5 ["id"]
       71 LOADK                            R13 K20 ["SaveToRoblox"]
       72 SETTABLEKS                       R13 R12 K6 ["text"]
       74 GETUPVAL                         R13 6
       75 CALL                             R13 0 1
       76 SETTABLEKS                       R13 R12 K13 ["onActivated"]
       78 DUPTABLE                         R13 K14 [{"id", "text", "onActivated"}]
       79 LOADK                            R14 K21 ["saveToRobloxAs"]
       80 SETTABLEKS                       R14 R13 K5 ["id"]
       82 LOADK                            R14 K22 ["SaveToRobloxAs"]
       83 SETTABLEKS                       R14 R13 K6 ["text"]
       85 GETUPVAL                         R14 7
       86 CALL                             R14 0 1
       87 SETTABLEKS                       R14 R13 K13 ["onActivated"]
       89 DUPTABLE                         R14 K14 [{"id", "text", "onActivated"}]
       90 LOADK                            R15 K23 ["copyAssetId"]
       91 SETTABLEKS                       R15 R14 K5 ["id"]
       93 LOADK                            R15 K24 ["CopyAssetId"]
       94 SETTABLEKS                       R15 R14 K6 ["text"]
       96 GETUPVAL                         R15 8
       97 CALL                             R15 0 1
       98 SETTABLEKS                       R15 R14 K13 ["onActivated"]
      100 SETLIST                          R11 R12 3 [1]
      102 SETTABLEKS                       R11 R10 K11 ["items"]
      104 DUPTABLE                         R11 K12 [{"items"}]
      105 NEWTABLE                         R12 0 2
      107 DUPTABLE                         R13 K14 [{"id", "text", "onActivated"}]
      108 LOADK                            R14 K25 ["createScriptForSelection"]
      109 SETTABLEKS                       R14 R13 K5 ["id"]
      111 GETTABLEKS                       R15 R1 K26 ["selectedTargetName"]
      113 JUMPIFNOT                        R15 ; [+2]
      114 LOADK                            R14 K27 ["CreateScriptFor"]
      115 JUMP                             ; [+1]
      116 LOADK                            R14 K28 ["CreateScriptForSelection"]
      117 SETTABLEKS                       R14 R13 K6 ["text"]
      119 JUMPIFNOT                        R4 ; [+3]
      120 GETTABLEKS                       R14 R2 K29 ["createScriptForSelectedGraphAsync"]
      122 JUMP                             ; [+1]
      123 LOADNIL                          R14
      124 SETTABLEKS                       R14 R13 K13 ["onActivated"]
      126 DUPTABLE                         R14 K14 [{"id", "text", "onActivated"}]
      127 LOADK                            R15 K30 ["createScriptForStarterPlayer"]
      128 SETTABLEKS                       R15 R14 K5 ["id"]
      130 LOADK                            R15 K31 ["CreateScriptForStarterPlayer"]
      131 SETTABLEKS                       R15 R14 K6 ["text"]
      133 GETTABLEKS                       R15 R2 K32 ["createScriptForStarterPlayerAsync"]
      135 SETTABLEKS                       R15 R14 K13 ["onActivated"]
      137 SETLIST                          R12 R13 2 [1]
      139 SETTABLEKS                       R12 R11 K11 ["items"]
      141 SETLIST                          R8 R9 3 [1]
      143 SETTABLEKS                       R8 R7 K7 ["groups"]
      145 DUPTABLE                         R8 K8 [{"id", "text", "groups"}]
      146 LOADK                            R9 K33 ["view"]
      147 SETTABLEKS                       R9 R8 K5 ["id"]
      149 LOADK                            R9 K34 ["View"]
      150 SETTABLEKS                       R9 R8 K6 ["text"]
      152 NEWTABLE                         R9 0 1
      154 DUPTABLE                         R10 K12 [{"items"}]
      155 NEWTABLE                         R11 0 3
      157 DUPTABLE                         R12 K14 [{"id", "text", "onActivated"}]
      158 LOADK                            R13 K35 ["frameSelection"]
      159 SETTABLEKS                       R13 R12 K5 ["id"]
      161 LOADK                            R13 K36 ["FrameSelection"]
      162 SETTABLEKS                       R13 R12 K6 ["text"]
      164 GETUPVAL                         R13 9
      165 CALL                             R13 0 1
      166 SETTABLEKS                       R13 R12 K13 ["onActivated"]
      168 DUPTABLE                         R13 K14 [{"id", "text", "onActivated"}]
      169 LOADK                            R14 K37 ["zoomIn"]
      170 SETTABLEKS                       R14 R13 K5 ["id"]
      172 LOADK                            R14 K38 ["ZoomIn"]
      173 SETTABLEKS                       R14 R13 K6 ["text"]
      175 GETUPVAL                         R14 10
      176 LOADK                            R15 K39 [0.5]
      177 CALL                             R14 1 1
      178 SETTABLEKS                       R14 R13 K13 ["onActivated"]
      180 DUPTABLE                         R14 K14 [{"id", "text", "onActivated"}]
      181 LOADK                            R15 K40 ["zoomOut"]
      182 SETTABLEKS                       R15 R14 K5 ["id"]
      184 LOADK                            R15 K41 ["ZoomOut"]
      185 SETTABLEKS                       R15 R14 K6 ["text"]
      187 GETUPVAL                         R15 10
      188 LOADK                            R16 K42 [-0.5]
      189 CALL                             R15 1 1
      190 SETTABLEKS                       R15 R14 K13 ["onActivated"]
      192 SETLIST                          R11 R12 3 [1]
      194 SETTABLEKS                       R11 R10 K11 ["items"]
      196 SETLIST                          R9 R10 1 [1]
      198 SETTABLEKS                       R9 R8 K7 ["groups"]
      200 SETLIST                          R6 R7 2 [1]
      202 SETTABLEKS                       R6 R5 K3 ["menus"]
      204 GETIMPORT                        R6 K44 [game]
      206 LOADK                            R8 K45 ["DebugAnimationEditorDebugMenu"]
      207 LOADB                            R9 0
      208 NAMECALL                         R6 R6 K46 ["DefineFastFlag"]
      210 CALL                             R6 3 1
      211 JUMPIFNOT                        R6 ; [+38]
      212 GETTABLEKS                       R7 R5 K3 ["menus"]
      214 DUPTABLE                         R8 K8 [{"id", "text", "groups"}]
      215 LOADK                            R9 K47 ["debug"]
      216 SETTABLEKS                       R9 R8 K5 ["id"]
      218 LOADK                            R9 K48 ["Debug"]
      219 SETTABLEKS                       R9 R8 K6 ["text"]
      221 NEWTABLE                         R9 0 1
      223 DUPTABLE                         R10 K12 [{"items"}]
      224 NEWTABLE                         R11 0 1
      226 DUPTABLE                         R12 K14 [{"id", "text", "onActivated"}]
      227 LOADK                            R13 K49 ["copyUi"]
      228 SETTABLEKS                       R13 R12 K5 ["id"]
      230 LOADK                            R13 K50 ["DebugCopyUi"]
      231 SETTABLEKS                       R13 R12 K6 ["text"]
      233 GETTABLEKS                       R13 R3 K49 ["copyUi"]
      235 SETTABLEKS                       R13 R12 K13 ["onActivated"]
      237 SETLIST                          R11 R12 1 [1]
      239 SETTABLEKS                       R11 R10 K11 ["items"]
      241 SETLIST                          R9 R10 1 [1]
      243 SETTABLEKS                       R9 R8 K7 ["groups"]
      245 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
      247 GETIMPORT                        R6 K53 [table.insert]
      249 CALL                             R6 2 0
      250 GETUPVAL                         R7 0
      251 GETTABLEKS                       R6 R7 K54 ["createElement"]
      253 GETUPVAL                         R8 11
      254 GETTABLEKS                       R7 R8 K55 ["Provider"]
      256 DUPTABLE                         R8 K57 [{"value"}]
      257 SETTABLEKS                       R5 R8 K56 ["value"]
      259 GETTABLEKS                       R9 R0 K58 ["children"]
      261 CALL                             R6 3 -1
      262 RETURN                           R6 -1

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
