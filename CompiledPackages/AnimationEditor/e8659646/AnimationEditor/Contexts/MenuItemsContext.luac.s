PROTO_0:
        0 DUPTABLE                         R0 K1 [{"menus"}]
        1 NEWTABLE                         R1 0 2
        3 DUPTABLE                         R2 K5 [{"id", "text", "groups"}]
        4 LOADK                            R3 K6 ["graph"]
        5 SETTABLEKS                       R3 R2 K2 ["id"]
        7 LOADK                            R3 K7 ["Graph"]
        8 SETTABLEKS                       R3 R2 K3 ["text"]
       10 NEWTABLE                         R3 0 3
       12 DUPTABLE                         R4 K9 [{"items"}]
       13 NEWTABLE                         R5 0 2
       15 DUPTABLE                         R6 K11 [{"id", "text", "onActivated"}]
       16 LOADK                            R7 K12 ["new"]
       17 SETTABLEKS                       R7 R6 K2 ["id"]
       19 LOADK                            R7 K13 ["New"]
       20 SETTABLEKS                       R7 R6 K3 ["text"]
       22 GETUPVAL                         R7 0
       23 SETTABLEKS                       R7 R6 K10 ["onActivated"]
       25 DUPTABLE                         R7 K11 [{"id", "text", "onActivated"}]
       26 LOADK                            R8 K14 ["open"]
       27 SETTABLEKS                       R8 R7 K2 ["id"]
       29 LOADK                            R8 K15 ["OpenPopup"]
       30 SETTABLEKS                       R8 R7 K3 ["text"]
       32 GETUPVAL                         R8 1
       33 SETTABLEKS                       R8 R7 K10 ["onActivated"]
       35 SETLIST                          R5 R6 2 [1]
       37 SETTABLEKS                       R5 R4 K8 ["items"]
       39 DUPTABLE                         R5 K9 [{"items"}]
       40 NEWTABLE                         R6 0 3
       42 DUPTABLE                         R7 K11 [{"id", "text", "onActivated"}]
       43 LOADK                            R8 K16 ["saveToRoblox"]
       44 SETTABLEKS                       R8 R7 K2 ["id"]
       46 LOADK                            R8 K17 ["SaveToRoblox"]
       47 SETTABLEKS                       R8 R7 K3 ["text"]
       49 GETUPVAL                         R8 2
       50 SETTABLEKS                       R8 R7 K10 ["onActivated"]
       52 DUPTABLE                         R8 K11 [{"id", "text", "onActivated"}]
       53 LOADK                            R9 K18 ["saveToRobloxAs"]
       54 SETTABLEKS                       R9 R8 K2 ["id"]
       56 LOADK                            R9 K19 ["SaveToRobloxAs"]
       57 SETTABLEKS                       R9 R8 K3 ["text"]
       59 GETUPVAL                         R9 3
       60 SETTABLEKS                       R9 R8 K10 ["onActivated"]
       62 DUPTABLE                         R9 K11 [{"id", "text", "onActivated"}]
       63 LOADK                            R10 K20 ["copyAssetId"]
       64 SETTABLEKS                       R10 R9 K2 ["id"]
       66 LOADK                            R10 K21 ["CopyAssetId"]
       67 SETTABLEKS                       R10 R9 K3 ["text"]
       69 GETUPVAL                         R10 4
       70 SETTABLEKS                       R10 R9 K10 ["onActivated"]
       72 SETLIST                          R6 R7 3 [1]
       74 SETTABLEKS                       R6 R5 K8 ["items"]
       76 DUPTABLE                         R6 K9 [{"items"}]
       77 NEWTABLE                         R7 0 2
       79 DUPTABLE                         R8 K11 [{"id", "text", "onActivated"}]
       80 LOADK                            R9 K22 ["createScriptForSelection"]
       81 SETTABLEKS                       R9 R8 K2 ["id"]
       83 GETUPVAL                         R10 5
       84 GETTABLEKS                       R10 R10 K23 ["selectedTargetName"]
       86 JUMPIFNOT                        R10 ; [+2]
       87 LOADK                            R9 K24 ["CreateScriptFor"]
       88 JUMP                             ; [+1]
       89 LOADK                            R9 K25 ["CreateScriptForSelection"]
       90 SETTABLEKS                       R9 R8 K3 ["text"]
       92 GETUPVAL                         R10 6
       93 JUMPIFNOT                        R10 ; [+12]
       94 GETUPVAL                         R10 7
       95 CALL                             R10 0 1
       96 JUMPIFEQKB                       R10 FALSE ; [+5]
       98 GETUPVAL                         R10 8
       99 GETTABLEKS                       R10 R10 K26 ["canCreateScript"]
      101 JUMPIFNOT                        R10 ; [+4]
      102 GETUPVAL                         R9 8
      103 GETTABLEKS                       R9 R9 K27 ["createScriptForSelectedGraphAsync"]
      105 JUMP                             ; [+1]
      106 LOADNIL                          R9
      107 SETTABLEKS                       R9 R8 K10 ["onActivated"]
      109 DUPTABLE                         R9 K11 [{"id", "text", "onActivated"}]
      110 LOADK                            R10 K28 ["createScriptForStarterPlayer"]
      111 SETTABLEKS                       R10 R9 K2 ["id"]
      113 LOADK                            R10 K29 ["CreateScriptForStarterPlayer"]
      114 SETTABLEKS                       R10 R9 K3 ["text"]
      116 GETUPVAL                         R11 7
      117 CALL                             R11 0 1
      118 JUMPIFEQKB                       R11 FALSE ; [+5]
      120 GETUPVAL                         R11 8
      121 GETTABLEKS                       R11 R11 K26 ["canCreateScript"]
      123 JUMPIFNOT                        R11 ; [+4]
      124 GETUPVAL                         R10 8
      125 GETTABLEKS                       R10 R10 K30 ["createScriptForStarterPlayerAsync"]
      127 JUMP                             ; [+1]
      128 LOADNIL                          R10
      129 SETTABLEKS                       R10 R9 K10 ["onActivated"]
      131 SETLIST                          R7 R8 2 [1]
      133 SETTABLEKS                       R7 R6 K8 ["items"]
      135 SETLIST                          R3 R4 3 [1]
      137 SETTABLEKS                       R3 R2 K4 ["groups"]
      139 DUPTABLE                         R3 K5 [{"id", "text", "groups"}]
      140 LOADK                            R4 K31 ["view"]
      141 SETTABLEKS                       R4 R3 K2 ["id"]
      143 LOADK                            R4 K32 ["View"]
      144 SETTABLEKS                       R4 R3 K3 ["text"]
      146 NEWTABLE                         R4 0 1
      148 DUPTABLE                         R5 K9 [{"items"}]
      149 NEWTABLE                         R6 0 3
      151 DUPTABLE                         R7 K11 [{"id", "text", "onActivated"}]
      152 LOADK                            R8 K33 ["frameSelection"]
      153 SETTABLEKS                       R8 R7 K2 ["id"]
      155 GETUPVAL                         R9 7
      156 CALL                             R9 0 1
      157 JUMPIFNOT                        R9 ; [+2]
      158 GETUPVAL                         R9 9
      159 JUMPIFNOT                        R9 ; [+2]
      160 LOADK                            R8 K34 ["FrameSelection"]
      161 JUMP                             ; [+1]
      162 LOADK                            R8 K35 ["FrameAll"]
      163 SETTABLEKS                       R8 R7 K3 ["text"]
      165 GETUPVAL                         R8 10
      166 GETTABLEKS                       R8 R8 K33 ["frameSelection"]
      168 SETTABLEKS                       R8 R7 K10 ["onActivated"]
      170 DUPTABLE                         R8 K11 [{"id", "text", "onActivated"}]
      171 LOADK                            R9 K36 ["zoomIn"]
      172 SETTABLEKS                       R9 R8 K2 ["id"]
      174 LOADK                            R9 K37 ["ZoomIn"]
      175 SETTABLEKS                       R9 R8 K3 ["text"]
      177 GETUPVAL                         R9 11
      178 SETTABLEKS                       R9 R8 K10 ["onActivated"]
      180 DUPTABLE                         R9 K11 [{"id", "text", "onActivated"}]
      181 LOADK                            R10 K38 ["zoomOut"]
      182 SETTABLEKS                       R10 R9 K2 ["id"]
      184 LOADK                            R10 K39 ["ZoomOut"]
      185 SETTABLEKS                       R10 R9 K3 ["text"]
      187 GETUPVAL                         R10 12
      188 SETTABLEKS                       R10 R9 K10 ["onActivated"]
      190 SETLIST                          R6 R7 3 [1]
      192 SETTABLEKS                       R6 R5 K8 ["items"]
      194 SETLIST                          R4 R5 1 [1]
      196 SETTABLEKS                       R4 R3 K4 ["groups"]
      198 SETLIST                          R1 R2 2 [1]
      200 SETTABLEKS                       R1 R0 K0 ["menus"]
      202 GETIMPORT                        R1 K41 [game]
      204 LOADK                            R3 K42 ["DebugAnimationEditorDebugMenu"]
      205 LOADB                            R4 0
      206 NAMECALL                         R1 R1 K43 ["DefineFastFlag"]
      208 CALL                             R1 3 1
      209 JUMPIFNOT                        R1 ; [+39]
      210 GETTABLEKS                       R2 R0 K0 ["menus"]
      212 DUPTABLE                         R3 K5 [{"id", "text", "groups"}]
      213 LOADK                            R4 K44 ["debug"]
      214 SETTABLEKS                       R4 R3 K2 ["id"]
      216 LOADK                            R4 K45 ["Debug"]
      217 SETTABLEKS                       R4 R3 K3 ["text"]
      219 NEWTABLE                         R4 0 1
      221 DUPTABLE                         R5 K9 [{"items"}]
      222 NEWTABLE                         R6 0 1
      224 DUPTABLE                         R7 K11 [{"id", "text", "onActivated"}]
      225 LOADK                            R8 K46 ["copyUi"]
      226 SETTABLEKS                       R8 R7 K2 ["id"]
      228 LOADK                            R8 K47 ["DebugCopyUi"]
      229 SETTABLEKS                       R8 R7 K3 ["text"]
      231 GETUPVAL                         R8 13
      232 GETTABLEKS                       R8 R8 K46 ["copyUi"]
      234 SETTABLEKS                       R8 R7 K10 ["onActivated"]
      236 SETLIST                          R6 R7 1 [1]
      238 SETTABLEKS                       R6 R5 K8 ["items"]
      240 SETLIST                          R4 R5 1 [1]
      242 SETTABLEKS                       R4 R3 K4 ["groups"]
      244 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
      246 GETIMPORT                        R1 K50 [table.insert]
      248 CALL                             R1 2 0
      249 RETURN                           R0 1

PROTO_1:
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
       32 GETUPVAL                         R6 5
       33 CALL                             R6 0 1
       34 GETUPVAL                         R7 6
       35 CALL                             R7 0 1
       36 GETUPVAL                         R8 7
       37 CALL                             R8 0 1
       38 GETUPVAL                         R9 8
       39 CALL                             R9 0 1
       40 GETUPVAL                         R10 9
       41 CALL                             R10 0 1
       42 GETUPVAL                         R11 10
       43 LOADK                            R12 K4 [0.5]
       44 CALL                             R11 1 1
       45 GETUPVAL                         R12 10
       46 LOADK                            R13 K5 [-0.5]
       47 CALL                             R12 1 1
       48 GETUPVAL                         R14 11
       49 CALL                             R14 0 1
       50 JUMPIFNOT                        R14 ; [+7]
       51 GETUPVAL                         R13 12
       52 GETTABLEKS                       R13 R13 K6 ["useSignalState"]
       54 GETTABLEKS                       R14 R4 K7 ["observeSelectionRect"]
       56 CALL                             R13 1 1
       57 JUMP                             ; [+1]
       58 LOADNIL                          R13
       59 GETUPVAL                         R14 0
       60 GETTABLEKS                       R14 R14 K8 ["useMemo"]
       62 NEWCLOSURE                       R15 P0
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R8
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R10
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R5
       70 CAPTURE                          UPVAL U11
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R13
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R11
       75 CAPTURE                          VAL R12
       76 CAPTURE                          VAL R3
       77 NEWTABLE                         R16 0 14
       79 MOVE                             R17 R5
       80 GETTABLEKS                       R18 R1 K9 ["selectedTargetName"]
       82 GETTABLEKS                       R19 R2 K10 ["canCreateScript"]
       84 GETTABLEKS                       R20 R2 K11 ["createScriptForSelectedGraphAsync"]
       86 GETTABLEKS                       R21 R2 K12 ["createScriptForStarterPlayerAsync"]
       88 GETTABLEKS                       R22 R4 K13 ["frameSelection"]
       90 GETTABLEKS                       R23 R3 K14 ["copyUi"]
       92 MOVE                             R24 R6
       93 MOVE                             R25 R7
       94 MOVE                             R26 R8
       95 MOVE                             R27 R9
       96 MOVE                             R28 R10
       97 MOVE                             R29 R11
       98 MOVE                             R30 R12
       99 SETLIST                          R16 R17 14 [1]
      101 CALL                             R14 2 1
      102 GETUPVAL                         R15 0
      103 GETTABLEKS                       R15 R15 K15 ["createElement"]
      105 GETUPVAL                         R16 13
      106 GETTABLEKS                       R16 R16 K16 ["Provider"]
      108 DUPTABLE                         R17 K18 [{"value"}]
      109 SETTABLEKS                       R14 R17 K17 ["value"]
      111 GETTABLEKS                       R18 R0 K19 ["children"]
      113 CALL                             R15 3 -1
      114 RETURN                           R15 -1

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
       51 GETTABLEKS                       R8 R0 K10 ["Parent"]
       53 GETTABLEKS                       R8 R8 K14 ["SignalsReact"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K15 ["Flags"]
       60 GETTABLEKS                       R9 R9 K16 ["getFFlagAnimGraphUI_RunTimeDebug"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K17 ["Components"]
       67 GETTABLEKS                       R10 R10 K18 ["NodeView"]
       69 GETTABLEKS                       R10 R10 K19 ["MenuActions"]
       71 GETTABLEKS                       R10 R10 K20 ["useCopyAssetId"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K17 ["Components"]
       78 GETTABLEKS                       R11 R11 K18 ["NodeView"]
       80 GETTABLEKS                       R11 R11 K19 ["MenuActions"]
       82 GETTABLEKS                       R11 R11 K21 ["useNewGraph"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K5 [require]
       87 GETTABLEKS                       R12 R0 K17 ["Components"]
       89 GETTABLEKS                       R12 R12 K18 ["NodeView"]
       91 GETTABLEKS                       R12 R12 K19 ["MenuActions"]
       93 GETTABLEKS                       R12 R12 K22 ["useOpenGraph"]
       95 CALL                             R11 1 1
       96 GETIMPORT                        R12 K5 [require]
       98 GETTABLEKS                       R13 R0 K17 ["Components"]
      100 GETTABLEKS                       R13 R13 K18 ["NodeView"]
      102 GETTABLEKS                       R13 R13 K19 ["MenuActions"]
      104 GETTABLEKS                       R13 R13 K23 ["usePublishAs"]
      106 CALL                             R12 1 1
      107 GETIMPORT                        R13 K5 [require]
      109 GETTABLEKS                       R14 R0 K17 ["Components"]
      111 GETTABLEKS                       R14 R14 K18 ["NodeView"]
      113 GETTABLEKS                       R14 R14 K19 ["MenuActions"]
      115 GETTABLEKS                       R14 R14 K24 ["useSaveToRoblox"]
      117 CALL                             R13 1 1
      118 GETIMPORT                        R14 K5 [require]
      120 GETTABLEKS                       R15 R0 K17 ["Components"]
      122 GETTABLEKS                       R15 R15 K18 ["NodeView"]
      124 GETTABLEKS                       R15 R15 K19 ["MenuActions"]
      126 GETTABLEKS                       R15 R15 K25 ["useZoom"]
      128 CALL                             R14 1 1
      129 DUPTABLE                         R15 K27 [{"menus"}]
      130 NEWTABLE                         R16 0 0
      132 SETTABLEKS                       R16 R15 K26 ["menus"]
      134 GETTABLEKS                       R16 R6 K28 ["createContext"]
      136 MOVE                             R17 R15
      137 CALL                             R16 1 1
      138 LOADK                            R17 K29 ["MenuItemsContext"]
      139 SETTABLEKS                       R17 R16 K30 ["displayName"]
      141 DUPCLOSURE                       R17 K31 [PROTO_1]
      142 CAPTURE                          VAL R6
      143 CAPTURE                          VAL R1
      144 CAPTURE                          VAL R2
      145 CAPTURE                          VAL R3
      146 CAPTURE                          VAL R5
      147 CAPTURE                          VAL R10
      148 CAPTURE                          VAL R11
      149 CAPTURE                          VAL R13
      150 CAPTURE                          VAL R12
      151 CAPTURE                          VAL R9
      152 CAPTURE                          VAL R14
      153 CAPTURE                          VAL R8
      154 CAPTURE                          VAL R7
      155 CAPTURE                          VAL R16
      156 DUPTABLE                         R18 K34 [{"Context", "Provider"}]
      157 SETTABLEKS                       R16 R18 K32 ["Context"]
      159 SETTABLEKS                       R17 R18 K33 ["Provider"]
      161 RETURN                           R18 1
