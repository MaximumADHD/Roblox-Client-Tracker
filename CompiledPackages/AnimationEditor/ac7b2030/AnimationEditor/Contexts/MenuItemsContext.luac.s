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
      155 LOADK                            R8 K34 ["FrameSelection"]
      156 SETTABLEKS                       R8 R7 K3 ["text"]
      158 GETUPVAL                         R8 9
      159 GETTABLEKS                       R8 R8 K33 ["frameSelection"]
      161 SETTABLEKS                       R8 R7 K10 ["onActivated"]
      163 DUPTABLE                         R8 K11 [{"id", "text", "onActivated"}]
      164 LOADK                            R9 K35 ["zoomIn"]
      165 SETTABLEKS                       R9 R8 K2 ["id"]
      167 LOADK                            R9 K36 ["ZoomIn"]
      168 SETTABLEKS                       R9 R8 K3 ["text"]
      170 GETUPVAL                         R9 10
      171 SETTABLEKS                       R9 R8 K10 ["onActivated"]
      173 DUPTABLE                         R9 K11 [{"id", "text", "onActivated"}]
      174 LOADK                            R10 K37 ["zoomOut"]
      175 SETTABLEKS                       R10 R9 K2 ["id"]
      177 LOADK                            R10 K38 ["ZoomOut"]
      178 SETTABLEKS                       R10 R9 K3 ["text"]
      180 GETUPVAL                         R10 11
      181 SETTABLEKS                       R10 R9 K10 ["onActivated"]
      183 SETLIST                          R6 R7 3 [1]
      185 SETTABLEKS                       R6 R5 K8 ["items"]
      187 SETLIST                          R4 R5 1 [1]
      189 SETTABLEKS                       R4 R3 K4 ["groups"]
      191 SETLIST                          R1 R2 2 [1]
      193 SETTABLEKS                       R1 R0 K0 ["menus"]
      195 GETIMPORT                        R1 K40 [game]
      197 LOADK                            R3 K41 ["DebugAnimationEditorDebugMenu"]
      198 LOADB                            R4 0
      199 NAMECALL                         R1 R1 K42 ["DefineFastFlag"]
      201 CALL                             R1 3 1
      202 JUMPIFNOT                        R1 ; [+39]
      203 GETTABLEKS                       R2 R0 K0 ["menus"]
      205 DUPTABLE                         R3 K5 [{"id", "text", "groups"}]
      206 LOADK                            R4 K43 ["debug"]
      207 SETTABLEKS                       R4 R3 K2 ["id"]
      209 LOADK                            R4 K44 ["Debug"]
      210 SETTABLEKS                       R4 R3 K3 ["text"]
      212 NEWTABLE                         R4 0 1
      214 DUPTABLE                         R5 K9 [{"items"}]
      215 NEWTABLE                         R6 0 1
      217 DUPTABLE                         R7 K11 [{"id", "text", "onActivated"}]
      218 LOADK                            R8 K45 ["copyUi"]
      219 SETTABLEKS                       R8 R7 K2 ["id"]
      221 LOADK                            R8 K46 ["DebugCopyUi"]
      222 SETTABLEKS                       R8 R7 K3 ["text"]
      224 GETUPVAL                         R8 12
      225 GETTABLEKS                       R8 R8 K45 ["copyUi"]
      227 SETTABLEKS                       R8 R7 K10 ["onActivated"]
      229 SETLIST                          R6 R7 1 [1]
      231 SETTABLEKS                       R6 R5 K8 ["items"]
      233 SETLIST                          R4 R5 1 [1]
      235 SETTABLEKS                       R4 R3 K4 ["groups"]
      237 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
      239 GETIMPORT                        R1 K49 [table.insert]
      241 CALL                             R1 2 0
      242 RETURN                           R0 1

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
       48 GETUPVAL                         R13 0
       49 GETTABLEKS                       R13 R13 K6 ["useMemo"]
       51 NEWCLOSURE                       R14 P0
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R8
       55 CAPTURE                          VAL R9
       56 CAPTURE                          VAL R10
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R5
       59 CAPTURE                          UPVAL U11
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R11
       63 CAPTURE                          VAL R12
       64 CAPTURE                          VAL R3
       65 NEWTABLE                         R15 0 14
       67 MOVE                             R16 R5
       68 GETTABLEKS                       R17 R1 K7 ["selectedTargetName"]
       70 GETTABLEKS                       R18 R2 K8 ["canCreateScript"]
       72 GETTABLEKS                       R19 R2 K9 ["createScriptForSelectedGraphAsync"]
       74 GETTABLEKS                       R20 R2 K10 ["createScriptForStarterPlayerAsync"]
       76 GETTABLEKS                       R21 R4 K11 ["frameSelection"]
       78 GETTABLEKS                       R22 R3 K12 ["copyUi"]
       80 MOVE                             R23 R6
       81 MOVE                             R24 R7
       82 MOVE                             R25 R8
       83 MOVE                             R26 R9
       84 MOVE                             R27 R10
       85 MOVE                             R28 R11
       86 MOVE                             R29 R12
       87 SETLIST                          R15 R16 14 [1]
       89 CALL                             R13 2 1
       90 GETUPVAL                         R14 0
       91 GETTABLEKS                       R14 R14 K13 ["createElement"]
       93 GETUPVAL                         R15 12
       94 GETTABLEKS                       R15 R15 K14 ["Provider"]
       96 DUPTABLE                         R16 K16 [{"value"}]
       97 SETTABLEKS                       R13 R16 K15 ["value"]
       99 GETTABLEKS                       R17 R0 K17 ["children"]
      101 CALL                             R14 3 -1
      102 RETURN                           R14 -1

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
       51 GETTABLEKS                       R8 R0 K14 ["Flags"]
       53 GETTABLEKS                       R8 R8 K15 ["getFFlagAnimGraphUI_RunTimeDebug"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K16 ["Components"]
       60 GETTABLEKS                       R9 R9 K17 ["NodeView"]
       62 GETTABLEKS                       R9 R9 K18 ["MenuActions"]
       64 GETTABLEKS                       R9 R9 K19 ["useCopyAssetId"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K16 ["Components"]
       71 GETTABLEKS                       R10 R10 K17 ["NodeView"]
       73 GETTABLEKS                       R10 R10 K18 ["MenuActions"]
       75 GETTABLEKS                       R10 R10 K20 ["useNewGraph"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETTABLEKS                       R11 R0 K16 ["Components"]
       82 GETTABLEKS                       R11 R11 K17 ["NodeView"]
       84 GETTABLEKS                       R11 R11 K18 ["MenuActions"]
       86 GETTABLEKS                       R11 R11 K21 ["useOpenGraph"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K5 [require]
       91 GETTABLEKS                       R12 R0 K16 ["Components"]
       93 GETTABLEKS                       R12 R12 K17 ["NodeView"]
       95 GETTABLEKS                       R12 R12 K18 ["MenuActions"]
       97 GETTABLEKS                       R12 R12 K22 ["usePublishAs"]
       99 CALL                             R11 1 1
      100 GETIMPORT                        R12 K5 [require]
      102 GETTABLEKS                       R13 R0 K16 ["Components"]
      104 GETTABLEKS                       R13 R13 K17 ["NodeView"]
      106 GETTABLEKS                       R13 R13 K18 ["MenuActions"]
      108 GETTABLEKS                       R13 R13 K23 ["useSaveToRoblox"]
      110 CALL                             R12 1 1
      111 GETIMPORT                        R13 K5 [require]
      113 GETTABLEKS                       R14 R0 K16 ["Components"]
      115 GETTABLEKS                       R14 R14 K17 ["NodeView"]
      117 GETTABLEKS                       R14 R14 K18 ["MenuActions"]
      119 GETTABLEKS                       R14 R14 K24 ["useZoom"]
      121 CALL                             R13 1 1
      122 DUPTABLE                         R14 K26 [{"menus"}]
      123 NEWTABLE                         R15 0 0
      125 SETTABLEKS                       R15 R14 K25 ["menus"]
      127 GETTABLEKS                       R15 R6 K27 ["createContext"]
      129 MOVE                             R16 R14
      130 CALL                             R15 1 1
      131 LOADK                            R16 K28 ["MenuItemsContext"]
      132 SETTABLEKS                       R16 R15 K29 ["displayName"]
      134 DUPCLOSURE                       R16 K30 [PROTO_1]
      135 CAPTURE                          VAL R6
      136 CAPTURE                          VAL R1
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R3
      139 CAPTURE                          VAL R5
      140 CAPTURE                          VAL R9
      141 CAPTURE                          VAL R10
      142 CAPTURE                          VAL R12
      143 CAPTURE                          VAL R11
      144 CAPTURE                          VAL R8
      145 CAPTURE                          VAL R13
      146 CAPTURE                          VAL R7
      147 CAPTURE                          VAL R15
      148 DUPTABLE                         R17 K33 [{"Context", "Provider"}]
      149 SETTABLEKS                       R15 R17 K31 ["Context"]
      151 SETTABLEKS                       R16 R17 K32 ["Provider"]
      153 RETURN                           R17 1
