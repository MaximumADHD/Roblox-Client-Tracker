PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setTimeFormat"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Seconds"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setTimeFormat"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Frames"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setFrameRate"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R0 K1 [{"menus"}]
        1 NEWTABLE                         R1 0 2
        3 DUPTABLE                         R2 K7 [{["id"] = "graph", ["text"] = "Graph", ["groups"]}]
        4 NEWTABLE                         R3 0 4
        6 DUPTABLE                         R4 K9 [{"items"}]
        7 NEWTABLE                         R5 0 2
        9 DUPTABLE                         R6 K13 [{["id"] = "new", ["text"] = "New", ["onActivated"]}]
       10 GETUPVAL                         R7 0
       11 SETTABLEKS                       R7 R6 K12 ["onActivated"]
       13 DUPTABLE                         R7 K16 [{["id"] = "open", ["text"] = "OpenPopup", ["onActivated"]}]
       14 GETUPVAL                         R8 1
       15 SETTABLEKS                       R8 R7 K12 ["onActivated"]
       17 SETLIST                          R5 R6 2 [1]
       19 SETTABLEKS                       R5 R4 K8 ["items"]
       21 DUPTABLE                         R5 K9 [{"items"}]
       22 NEWTABLE                         R6 0 3
       24 DUPTABLE                         R7 K19 [{["id"] = "saveToRoblox", ["text"] = "SaveToRoblox", ["onActivated"]}]
       25 GETUPVAL                         R8 2
       26 SETTABLEKS                       R8 R7 K12 ["onActivated"]
       28 DUPTABLE                         R8 K22 [{["id"] = "saveToRobloxAs", ["text"] = "SaveToRobloxAs", ["onActivated"]}]
       29 GETUPVAL                         R9 3
       30 SETTABLEKS                       R9 R8 K12 ["onActivated"]
       32 DUPTABLE                         R9 K25 [{["id"] = "copyAssetId", ["text"] = "CopyAssetId", ["onActivated"]}]
       33 GETUPVAL                         R10 4
       34 SETTABLEKS                       R10 R9 K12 ["onActivated"]
       36 SETLIST                          R6 R7 3 [1]
       38 SETTABLEKS                       R6 R5 K8 ["items"]
       40 DUPTABLE                         R6 K9 [{"items"}]
       41 NEWTABLE                         R7 0 2
       43 DUPTABLE                         R8 K27 [{["id"] = "createScriptForSelection", ["text"], ["onActivated"]}]
       44 GETUPVAL                         R10 5
       45 GETTABLEKS                       R10 R10 K28 ["selectedTargetName"]
       47 JUMPIFNOT                        R10 ; [+2]
       48 LOADK                            R9 K29 ["CreateScriptFor"]
       49 JUMP                             ; [+1]
       50 LOADK                            R9 K30 ["CreateScriptForSelection"]
       51 SETTABLEKS                       R9 R8 K4 ["text"]
       53 GETUPVAL                         R10 6
       54 JUMPIFNOT                        R10 ; [+8]
       55 GETUPVAL                         R10 7
       56 GETTABLEKS                       R10 R10 K31 ["canCreateScript"]
       58 JUMPIFNOT                        R10 ; [+4]
       59 GETUPVAL                         R9 7
       60 GETTABLEKS                       R9 R9 K32 ["createScriptForSelectedGraphAsync"]
       62 JUMP                             ; [+1]
       63 LOADNIL                          R9
       64 SETTABLEKS                       R9 R8 K12 ["onActivated"]
       66 DUPTABLE                         R9 K35 [{["id"] = "createScriptForStarterPlayer", ["text"] = "CreateScriptForStarterPlayer", ["onActivated"]}]
       67 GETUPVAL                         R11 7
       68 GETTABLEKS                       R11 R11 K31 ["canCreateScript"]
       70 JUMPIFNOT                        R11 ; [+4]
       71 GETUPVAL                         R10 7
       72 GETTABLEKS                       R10 R10 K36 ["createScriptForStarterPlayerAsync"]
       74 JUMP                             ; [+1]
       75 LOADNIL                          R10
       76 SETTABLEKS                       R10 R9 K12 ["onActivated"]
       78 SETLIST                          R7 R8 2 [1]
       80 SETTABLEKS                       R7 R6 K8 ["items"]
       82 DUPTABLE                         R7 K9 [{"items"}]
       83 NEWTABLE                         R8 0 1
       85 DUPTABLE                         R9 K39 [{["id"] = "showInExplorer", ["text"] = "ShowInExplorer", ["onActivated"]}]
       86 GETUPVAL                         R10 8
       87 SETTABLEKS                       R10 R9 K12 ["onActivated"]
       89 SETLIST                          R8 R9 1 [1]
       91 SETTABLEKS                       R8 R7 K8 ["items"]
       93 SETLIST                          R3 R4 4 [1]
       95 SETTABLEKS                       R3 R2 K6 ["groups"]
       97 DUPTABLE                         R3 K42 [{["id"] = "view", ["text"] = "View", ["groups"]}]
       98 NEWTABLE                         R4 0 1
      100 DUPTABLE                         R5 K9 [{"items"}]
      101 NEWTABLE                         R6 0 3
      103 DUPTABLE                         R7 K44 [{["id"] = "frameSelection", ["text"], ["onActivated"]}]
      104 GETUPVAL                         R9 9
      105 JUMPIFNOT                        R9 ; [+2]
      106 LOADK                            R8 K45 ["FrameSelection"]
      107 JUMP                             ; [+1]
      108 LOADK                            R8 K46 ["FrameAll"]
      109 SETTABLEKS                       R8 R7 K4 ["text"]
      111 GETUPVAL                         R8 10
      112 GETTABLEKS                       R8 R8 K43 ["frameSelection"]
      114 SETTABLEKS                       R8 R7 K12 ["onActivated"]
      116 DUPTABLE                         R8 K49 [{["id"] = "zoomIn", ["text"] = "ZoomIn", ["onActivated"]}]
      117 GETUPVAL                         R9 11
      118 SETTABLEKS                       R9 R8 K12 ["onActivated"]
      120 DUPTABLE                         R9 K52 [{["id"] = "zoomOut", ["text"] = "ZoomOut", ["onActivated"]}]
      121 GETUPVAL                         R10 12
      122 SETTABLEKS                       R10 R9 K12 ["onActivated"]
      124 SETLIST                          R6 R7 3 [1]
      126 SETTABLEKS                       R6 R5 K8 ["items"]
      128 SETLIST                          R4 R5 1 [1]
      130 SETTABLEKS                       R4 R3 K6 ["groups"]
      132 SETLIST                          R1 R2 2 [1]
      134 SETTABLEKS                       R1 R0 K0 ["menus"]
      136 GETUPVAL                         R1 13
      137 CALL                             R1 0 1
      138 JUMPIFNOT                        R1 ; [+121]
      139 NEWTABLE                         R1 0 2
      141 DUPTABLE                         R2 K56 [{["id"] = "timeFormatSeconds", ["text"] = "Seconds", ["isChecked"], ["onActivated"]}]
      142 GETUPVAL                         R4 14
      143 GETTABLEKS                       R4 R4 K57 ["timeFormat"]
      145 GETUPVAL                         R5 15
      146 GETTABLEKS                       R5 R5 K54 ["Seconds"]
      148 JUMPIFEQ                         R4 R5 ; [+2]
      150 LOADB                            R3 0 +1
      151 LOADB                            R3 1
      152 SETTABLEKS                       R3 R2 K55 ["isChecked"]
      154 NEWCLOSURE                       R3 P0
      155 CAPTURE                          UPVAL U14
      156 CAPTURE                          UPVAL U15
      157 SETTABLEKS                       R3 R2 K12 ["onActivated"]
      159 DUPTABLE                         R3 K60 [{["id"] = "timeFormatFrames", ["text"] = "Frames", ["isChecked"], ["onActivated"]}]
      160 GETUPVAL                         R5 14
      161 GETTABLEKS                       R5 R5 K57 ["timeFormat"]
      163 GETUPVAL                         R6 15
      164 GETTABLEKS                       R6 R6 K59 ["Frames"]
      166 JUMPIFEQ                         R5 R6 ; [+2]
      168 LOADB                            R4 0 +1
      169 LOADB                            R4 1
      170 SETTABLEKS                       R4 R3 K55 ["isChecked"]
      172 NEWCLOSURE                       R4 P1
      173 CAPTURE                          UPVAL U14
      174 CAPTURE                          UPVAL U15
      175 SETTABLEKS                       R4 R3 K12 ["onActivated"]
      177 SETLIST                          R1 R2 2 [1]
      179 NEWTABLE                         R2 0 0
      181 GETUPVAL                         R3 16
      182 LOADNIL                          R4
      183 LOADNIL                          R5
      184 FORGPREP                         R3
      185 DUPTABLE                         R8 K63 [{["id"], ["text"] = "FramesPerSecond", ["textArgs"], ["isChecked"], ["onActivated"]}]
      186 LOADK                            R9 K64 ["frameRate%*"]
      187 MOVE                             R11 R7
      188 NAMECALL                         R9 R9 K65 ["format"]
      190 CALL                             R9 2 1
      191 SETTABLEKS                       R9 R8 K2 ["id"]
      193 DUPTABLE                         R9 K67 [{"fps"}]
      194 SETTABLEKS                       R7 R9 K66 ["fps"]
      196 SETTABLEKS                       R9 R8 K62 ["textArgs"]
      198 GETUPVAL                         R10 14
      199 GETTABLEKS                       R10 R10 K68 ["frameRate"]
      201 JUMPIFEQ                         R10 R7 ; [+2]
      203 LOADB                            R9 0 +1
      204 LOADB                            R9 1
      205 SETTABLEKS                       R9 R8 K55 ["isChecked"]
      207 NEWCLOSURE                       R9 P2
      208 CAPTURE                          UPVAL U14
      209 CAPTURE                          VAL R7
      210 SETTABLEKS                       R9 R8 K12 ["onActivated"]
      212 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
      214 MOVE                             R10 R2
      215 MOVE                             R11 R8
      216 GETIMPORT                        R9 K71 [table.insert]
      218 CALL                             R9 2 0
      219 FORGLOOP                         R3 2 ; [-35]
      221 NEWTABLE                         R3 0 2
      223 DUPTABLE                         R4 K9 [{"items"}]
      224 SETTABLEKS                       R1 R4 K8 ["items"]
      226 DUPTABLE                         R5 K9 [{"items"}]
      227 SETTABLEKS                       R2 R5 K8 ["items"]
      229 SETLIST                          R3 R4 2 [1]
      231 GETTABLEKS                       R4 R0 K0 ["menus"]
      233 LOADNIL                          R5
      234 LOADNIL                          R6
      235 FORGPREP                         R4
      236 GETTABLEKS                       R9 R8 K2 ["id"]
      238 JUMPIFNOTEQKS                    R9 K40 ["view"] ; [+19]
      240 GETTABLEKS                       R10 R8 K6 ["groups"]
      242 DUPTABLE                         R11 K9 [{"items"}]
      243 NEWTABLE                         R12 0 1
      245 DUPTABLE                         R13 K74 [{["id"] = "time", ["text"] = "Time", ["items"]}]
      246 SETTABLEKS                       R3 R13 K8 ["items"]
      248 SETLIST                          R12 R13 1 [1]
      250 SETTABLEKS                       R12 R11 K8 ["items"]
      252 FASTCALL2                        TABLE_INSERT R10 R11 ; [+3]
      254 GETIMPORT                        R9 K71 [table.insert]
      256 CALL                             R9 2 0
      257 JUMP                             ; [+2]
      258 FORGLOOP                         R4 2 ; [-23]
      260 GETTABLEKS                       R1 R0 K0 ["menus"]
      262 LOADNIL                          R2
      263 LOADNIL                          R3
      264 FORGPREP                         R1
      265 GETTABLEKS                       R6 R5 K2 ["id"]
      267 JUMPIFNOTEQKS                    R6 K40 ["view"] ; [+20]
      269 GETTABLEKS                       R7 R5 K6 ["groups"]
      271 DUPTABLE                         R8 K9 [{"items"}]
      272 NEWTABLE                         R9 0 1
      274 DUPTABLE                         R10 K77 [{["id"] = "organize", ["text"] = "Organize", ["onActivated"]}]
      275 GETUPVAL                         R11 17
      276 SETTABLEKS                       R11 R10 K12 ["onActivated"]
      278 SETLIST                          R9 R10 1 [1]
      280 SETTABLEKS                       R9 R8 K8 ["items"]
      282 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
      284 GETIMPORT                        R6 K71 [table.insert]
      286 CALL                             R6 2 0
      287 JUMP                             ; [+2]
      288 FORGLOOP                         R1 2 ; [-24]
      290 GETIMPORT                        R1 K79 [game]
      292 LOADK                            R3 K80 ["DebugAnimationEditorDebugMenu"]
      293 LOADB                            R4 0
      294 NAMECALL                         R1 R1 K81 ["DefineFastFlag"]
      296 CALL                             R1 3 1
      297 JUMPIFNOT                        R1 ; [+27]
      298 GETTABLEKS                       R2 R0 K0 ["menus"]
      300 DUPTABLE                         R3 K84 [{["id"] = "debug", ["text"] = "Debug", ["groups"]}]
      301 NEWTABLE                         R4 0 1
      303 DUPTABLE                         R5 K9 [{"items"}]
      304 NEWTABLE                         R6 0 1
      306 DUPTABLE                         R7 K87 [{["id"] = "copyUi", ["text"] = "DebugCopyUi", ["onActivated"]}]
      307 GETUPVAL                         R8 18
      308 GETTABLEKS                       R8 R8 K85 ["copyUi"]
      310 SETTABLEKS                       R8 R7 K12 ["onActivated"]
      312 SETLIST                          R6 R7 1 [1]
      314 SETTABLEKS                       R6 R5 K8 ["items"]
      316 SETLIST                          R4 R5 1 [1]
      318 SETTABLEKS                       R4 R3 K6 ["groups"]
      320 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
      322 GETIMPORT                        R1 K71 [table.insert]
      324 CALL                             R1 2 0
      325 RETURN                           R0 1

PROTO_4:
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
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K0 ["useContext"]
       33 GETUPVAL                         R6 4
       34 GETTABLEKS                       R6 R6 K3 ["SettingsContext"]
       36 GETTABLEKS                       R6 R6 K1 ["Context"]
       38 CALL                             R5 1 1
       39 GETTABLEKS                       R6 R1 K4 ["canCreateGraph"]
       41 GETUPVAL                         R7 5
       42 CALL                             R7 0 1
       43 GETUPVAL                         R8 6
       44 CALL                             R8 0 1
       45 GETUPVAL                         R9 7
       46 CALL                             R9 0 1
       47 GETUPVAL                         R10 8
       48 CALL                             R10 0 1
       49 GETUPVAL                         R11 9
       50 CALL                             R11 0 1
       51 GETUPVAL                         R12 10
       52 CALL                             R12 0 1
       53 GETUPVAL                         R13 11
       54 CALL                             R13 0 1
       55 GETUPVAL                         R14 12
       56 LOADK                            R15 K5 [0.5]
       57 CALL                             R14 1 1
       58 GETUPVAL                         R15 12
       59 LOADK                            R16 K6 [-0.5]
       60 CALL                             R15 1 1
       61 GETUPVAL                         R16 13
       62 GETTABLEKS                       R16 R16 K7 ["useSignalState"]
       64 GETTABLEKS                       R17 R4 K8 ["observeSelectionRect"]
       66 CALL                             R16 1 1
       67 GETUPVAL                         R17 0
       68 GETTABLEKS                       R17 R17 K9 ["useMemo"]
       70 NEWCLOSURE                       R18 P0
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R9
       73 CAPTURE                          VAL R10
       74 CAPTURE                          VAL R11
       75 CAPTURE                          VAL R12
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R13
       80 CAPTURE                          VAL R16
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R14
       83 CAPTURE                          VAL R15
       84 CAPTURE                          UPVAL U14
       85 CAPTURE                          VAL R5
       86 CAPTURE                          UPVAL U15
       87 CAPTURE                          UPVAL U16
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R3
       90 NEWTABLE                         R19 0 18
       92 MOVE                             R20 R6
       93 MOVE                             R21 R16
       94 GETTABLEKS                       R22 R1 K10 ["selectedTargetName"]
       96 GETTABLEKS                       R23 R2 K11 ["canCreateScript"]
       98 GETTABLEKS                       R24 R2 K12 ["createScriptForSelectedGraphAsync"]
      100 GETTABLEKS                       R25 R2 K13 ["createScriptForStarterPlayerAsync"]
      102 GETTABLEKS                       R26 R4 K14 ["frameSelection"]
      104 MOVE                             R27 R5
      105 GETTABLEKS                       R28 R3 K15 ["copyUi"]
      107 MOVE                             R29 R7
      108 MOVE                             R30 R8
      109 MOVE                             R31 R9
      110 MOVE                             R32 R10
      111 MOVE                             R33 R11
      112 MOVE                             R34 R12
      113 MOVE                             R35 R13
      114 SETLIST                          R19 R20 16 [1]
      116 MOVE                             R20 R14
      117 MOVE                             R21 R15
      118 SETLIST                          R19 R20 2 [17]
      120 CALL                             R17 2 1
      121 GETUPVAL                         R18 0
      122 GETTABLEKS                       R18 R18 K16 ["createElement"]
      124 GETUPVAL                         R19 17
      125 GETTABLEKS                       R19 R19 K17 ["Provider"]
      127 DUPTABLE                         R20 K19 [{"value"}]
      128 SETTABLEKS                       R17 R20 K18 ["value"]
      130 GETTABLEKS                       R21 R0 K20 ["children"]
      132 CALL                             R18 3 -1
      133 RETURN                           R18 -1

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
       60 GETTABLEKS                       R9 R9 K16 ["getFFlagAnimGraphUITimestampFrames"]
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
      104 GETTABLEKS                       R13 R13 K23 ["useOrganize"]
      106 CALL                             R12 1 1
      107 GETIMPORT                        R13 K5 [require]
      109 GETTABLEKS                       R14 R0 K17 ["Components"]
      111 GETTABLEKS                       R14 R14 K18 ["NodeView"]
      113 GETTABLEKS                       R14 R14 K19 ["MenuActions"]
      115 GETTABLEKS                       R14 R14 K24 ["usePublishAs"]
      117 CALL                             R13 1 1
      118 GETIMPORT                        R14 K5 [require]
      120 GETTABLEKS                       R15 R0 K17 ["Components"]
      122 GETTABLEKS                       R15 R15 K18 ["NodeView"]
      124 GETTABLEKS                       R15 R15 K19 ["MenuActions"]
      126 GETTABLEKS                       R15 R15 K25 ["useSaveToRoblox"]
      128 CALL                             R14 1 1
      129 GETIMPORT                        R15 K5 [require]
      131 GETTABLEKS                       R16 R0 K17 ["Components"]
      133 GETTABLEKS                       R16 R16 K18 ["NodeView"]
      135 GETTABLEKS                       R16 R16 K19 ["MenuActions"]
      137 GETTABLEKS                       R16 R16 K26 ["useShowInExplorer"]
      139 CALL                             R15 1 1
      140 GETIMPORT                        R16 K5 [require]
      142 GETTABLEKS                       R17 R0 K17 ["Components"]
      144 GETTABLEKS                       R17 R17 K18 ["NodeView"]
      146 GETTABLEKS                       R17 R17 K19 ["MenuActions"]
      148 GETTABLEKS                       R17 R17 K27 ["useZoom"]
      150 CALL                             R16 1 1
      151 NEWTABLE                         R17 0 4
      153 LOADN                            R18 12
      154 LOADN                            R19 24
      155 LOADN                            R20 30
      156 LOADN                            R21 60
      157 SETLIST                          R17 R18 4 [1]
      159 GETTABLEKS                       R18 R5 K28 ["SettingsContext"]
      161 GETTABLEKS                       R18 R18 K29 ["TimeFormat"]
      163 DUPTABLE                         R19 K31 [{"menus"}]
      164 NEWTABLE                         R20 0 0
      166 SETTABLEKS                       R20 R19 K30 ["menus"]
      168 GETTABLEKS                       R20 R6 K32 ["createContext"]
      170 MOVE                             R21 R19
      171 CALL                             R20 1 1
      172 LOADK                            R21 K33 ["MenuItemsContext"]
      173 SETTABLEKS                       R21 R20 K34 ["displayName"]
      175 DUPCLOSURE                       R21 K35 [PROTO_4]
      176 CAPTURE                          VAL R6
      177 CAPTURE                          VAL R1
      178 CAPTURE                          VAL R2
      179 CAPTURE                          VAL R3
      180 CAPTURE                          VAL R5
      181 CAPTURE                          VAL R12
      182 CAPTURE                          VAL R10
      183 CAPTURE                          VAL R11
      184 CAPTURE                          VAL R14
      185 CAPTURE                          VAL R13
      186 CAPTURE                          VAL R9
      187 CAPTURE                          VAL R15
      188 CAPTURE                          VAL R16
      189 CAPTURE                          VAL R7
      190 CAPTURE                          VAL R8
      191 CAPTURE                          VAL R18
      192 CAPTURE                          VAL R17
      193 CAPTURE                          VAL R20
      194 DUPTABLE                         R22 K38 [{"Context", "Provider"}]
      195 SETTABLEKS                       R20 R22 K36 ["Context"]
      197 SETTABLEKS                       R21 R22 K37 ["Provider"]
      199 RETURN                           R22 1
