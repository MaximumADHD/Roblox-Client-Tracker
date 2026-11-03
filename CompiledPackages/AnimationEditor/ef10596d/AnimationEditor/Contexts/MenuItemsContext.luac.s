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
        4 NEWTABLE                         R3 0 3
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
       82 SETLIST                          R3 R4 3 [1]
       84 SETTABLEKS                       R3 R2 K6 ["groups"]
       86 DUPTABLE                         R3 K39 [{["id"] = "view", ["text"] = "View", ["groups"]}]
       87 NEWTABLE                         R4 0 1
       89 DUPTABLE                         R5 K9 [{"items"}]
       90 NEWTABLE                         R6 0 3
       92 DUPTABLE                         R7 K41 [{["id"] = "frameSelection", ["text"], ["onActivated"]}]
       93 GETUPVAL                         R9 8
       94 JUMPIFNOT                        R9 ; [+2]
       95 LOADK                            R8 K42 ["FrameSelection"]
       96 JUMP                             ; [+1]
       97 LOADK                            R8 K43 ["FrameAll"]
       98 SETTABLEKS                       R8 R7 K4 ["text"]
      100 GETUPVAL                         R8 9
      101 GETTABLEKS                       R8 R8 K40 ["frameSelection"]
      103 SETTABLEKS                       R8 R7 K12 ["onActivated"]
      105 DUPTABLE                         R8 K46 [{["id"] = "zoomIn", ["text"] = "ZoomIn", ["onActivated"]}]
      106 GETUPVAL                         R9 10
      107 SETTABLEKS                       R9 R8 K12 ["onActivated"]
      109 DUPTABLE                         R9 K49 [{["id"] = "zoomOut", ["text"] = "ZoomOut", ["onActivated"]}]
      110 GETUPVAL                         R10 11
      111 SETTABLEKS                       R10 R9 K12 ["onActivated"]
      113 SETLIST                          R6 R7 3 [1]
      115 SETTABLEKS                       R6 R5 K8 ["items"]
      117 SETLIST                          R4 R5 1 [1]
      119 SETTABLEKS                       R4 R3 K6 ["groups"]
      121 SETLIST                          R1 R2 2 [1]
      123 SETTABLEKS                       R1 R0 K0 ["menus"]
      125 GETUPVAL                         R1 12
      126 GETTABLEKS                       R1 R1 K50 ["FFlagAnimGraphUIShowInExplorer"]
      128 JUMPIFNOT                        R1 ; [+21]
      129 GETTABLEKS                       R3 R0 K0 ["menus"]
      131 GETTABLEN                        R2 R3 1
      132 GETTABLEKS                       R2 R2 K6 ["groups"]
      134 DUPTABLE                         R3 K9 [{"items"}]
      135 NEWTABLE                         R4 0 1
      137 DUPTABLE                         R5 K53 [{["id"] = "showInExplorer", ["text"] = "ShowInExplorer", ["onActivated"]}]
      138 GETUPVAL                         R6 13
      139 SETTABLEKS                       R6 R5 K12 ["onActivated"]
      141 SETLIST                          R4 R5 1 [1]
      143 SETTABLEKS                       R4 R3 K8 ["items"]
      145 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
      147 GETIMPORT                        R1 K56 [table.insert]
      149 CALL                             R1 2 0
      150 GETUPVAL                         R1 14
      151 CALL                             R1 0 1
      152 JUMPIFNOT                        R1 ; [+121]
      153 NEWTABLE                         R1 0 2
      155 DUPTABLE                         R2 K60 [{["id"] = "timeFormatSeconds", ["text"] = "Seconds", ["isChecked"], ["onActivated"]}]
      156 GETUPVAL                         R4 15
      157 GETTABLEKS                       R4 R4 K61 ["timeFormat"]
      159 GETUPVAL                         R5 16
      160 GETTABLEKS                       R5 R5 K58 ["Seconds"]
      162 JUMPIFEQ                         R4 R5 ; [+2]
      164 LOADB                            R3 0 +1
      165 LOADB                            R3 1
      166 SETTABLEKS                       R3 R2 K59 ["isChecked"]
      168 NEWCLOSURE                       R3 P0
      169 CAPTURE                          UPVAL U15
      170 CAPTURE                          UPVAL U16
      171 SETTABLEKS                       R3 R2 K12 ["onActivated"]
      173 DUPTABLE                         R3 K64 [{["id"] = "timeFormatFrames", ["text"] = "Frames", ["isChecked"], ["onActivated"]}]
      174 GETUPVAL                         R5 15
      175 GETTABLEKS                       R5 R5 K61 ["timeFormat"]
      177 GETUPVAL                         R6 16
      178 GETTABLEKS                       R6 R6 K63 ["Frames"]
      180 JUMPIFEQ                         R5 R6 ; [+2]
      182 LOADB                            R4 0 +1
      183 LOADB                            R4 1
      184 SETTABLEKS                       R4 R3 K59 ["isChecked"]
      186 NEWCLOSURE                       R4 P1
      187 CAPTURE                          UPVAL U15
      188 CAPTURE                          UPVAL U16
      189 SETTABLEKS                       R4 R3 K12 ["onActivated"]
      191 SETLIST                          R1 R2 2 [1]
      193 NEWTABLE                         R2 0 0
      195 GETUPVAL                         R3 17
      196 LOADNIL                          R4
      197 LOADNIL                          R5
      198 FORGPREP                         R3
      199 DUPTABLE                         R8 K67 [{["id"], ["text"] = "FramesPerSecond", ["textArgs"], ["isChecked"], ["onActivated"]}]
      200 LOADK                            R9 K68 ["frameRate%*"]
      201 MOVE                             R11 R7
      202 NAMECALL                         R9 R9 K69 ["format"]
      204 CALL                             R9 2 1
      205 SETTABLEKS                       R9 R8 K2 ["id"]
      207 DUPTABLE                         R9 K71 [{"fps"}]
      208 SETTABLEKS                       R7 R9 K70 ["fps"]
      210 SETTABLEKS                       R9 R8 K66 ["textArgs"]
      212 GETUPVAL                         R10 15
      213 GETTABLEKS                       R10 R10 K72 ["frameRate"]
      215 JUMPIFEQ                         R10 R7 ; [+2]
      217 LOADB                            R9 0 +1
      218 LOADB                            R9 1
      219 SETTABLEKS                       R9 R8 K59 ["isChecked"]
      221 NEWCLOSURE                       R9 P2
      222 CAPTURE                          UPVAL U15
      223 CAPTURE                          VAL R7
      224 SETTABLEKS                       R9 R8 K12 ["onActivated"]
      226 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
      228 MOVE                             R10 R2
      229 MOVE                             R11 R8
      230 GETIMPORT                        R9 K56 [table.insert]
      232 CALL                             R9 2 0
      233 FORGLOOP                         R3 2 ; [-35]
      235 NEWTABLE                         R3 0 2
      237 DUPTABLE                         R4 K9 [{"items"}]
      238 SETTABLEKS                       R1 R4 K8 ["items"]
      240 DUPTABLE                         R5 K9 [{"items"}]
      241 SETTABLEKS                       R2 R5 K8 ["items"]
      243 SETLIST                          R3 R4 2 [1]
      245 GETTABLEKS                       R4 R0 K0 ["menus"]
      247 LOADNIL                          R5
      248 LOADNIL                          R6
      249 FORGPREP                         R4
      250 GETTABLEKS                       R9 R8 K2 ["id"]
      252 JUMPIFNOTEQKS                    R9 K37 ["view"] ; [+19]
      254 GETTABLEKS                       R10 R8 K6 ["groups"]
      256 DUPTABLE                         R11 K9 [{"items"}]
      257 NEWTABLE                         R12 0 1
      259 DUPTABLE                         R13 K75 [{["id"] = "time", ["text"] = "Time", ["items"]}]
      260 SETTABLEKS                       R3 R13 K8 ["items"]
      262 SETLIST                          R12 R13 1 [1]
      264 SETTABLEKS                       R12 R11 K8 ["items"]
      266 FASTCALL2                        TABLE_INSERT R10 R11 ; [+3]
      268 GETIMPORT                        R9 K56 [table.insert]
      270 CALL                             R9 2 0
      271 JUMP                             ; [+2]
      272 FORGLOOP                         R4 2 ; [-23]
      274 GETUPVAL                         R1 18
      275 CALL                             R1 0 1
      276 JUMPIFNOT                        R1 ; [+30]
      277 GETTABLEKS                       R1 R0 K0 ["menus"]
      279 LOADNIL                          R2
      280 LOADNIL                          R3
      281 FORGPREP                         R1
      282 GETTABLEKS                       R6 R5 K2 ["id"]
      284 JUMPIFNOTEQKS                    R6 K37 ["view"] ; [+20]
      286 GETTABLEKS                       R7 R5 K6 ["groups"]
      288 DUPTABLE                         R8 K9 [{"items"}]
      289 NEWTABLE                         R9 0 1
      291 DUPTABLE                         R10 K78 [{["id"] = "organize", ["text"] = "Organize", ["onActivated"]}]
      292 GETUPVAL                         R11 19
      293 SETTABLEKS                       R11 R10 K12 ["onActivated"]
      295 SETLIST                          R9 R10 1 [1]
      297 SETTABLEKS                       R9 R8 K8 ["items"]
      299 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
      301 GETIMPORT                        R6 K56 [table.insert]
      303 CALL                             R6 2 0
      304 JUMP                             ; [+2]
      305 FORGLOOP                         R1 2 ; [-24]
      307 GETIMPORT                        R1 K80 [game]
      309 LOADK                            R3 K81 ["DebugAnimationEditorDebugMenu"]
      310 LOADB                            R4 0
      311 NAMECALL                         R1 R1 K82 ["DefineFastFlag"]
      313 CALL                             R1 3 1
      314 JUMPIFNOT                        R1 ; [+27]
      315 GETTABLEKS                       R2 R0 K0 ["menus"]
      317 DUPTABLE                         R3 K85 [{["id"] = "debug", ["text"] = "Debug", ["groups"]}]
      318 NEWTABLE                         R4 0 1
      320 DUPTABLE                         R5 K9 [{"items"}]
      321 NEWTABLE                         R6 0 1
      323 DUPTABLE                         R7 K88 [{["id"] = "copyUi", ["text"] = "DebugCopyUi", ["onActivated"]}]
      324 GETUPVAL                         R8 20
      325 GETTABLEKS                       R8 R8 K86 ["copyUi"]
      327 SETTABLEKS                       R8 R7 K12 ["onActivated"]
      329 SETLIST                          R6 R7 1 [1]
      331 SETTABLEKS                       R6 R5 K8 ["items"]
      333 SETLIST                          R4 R5 1 [1]
      335 SETTABLEKS                       R4 R3 K6 ["groups"]
      337 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
      339 GETIMPORT                        R1 K56 [table.insert]
      341 CALL                             R1 2 0
      342 RETURN                           R0 1

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
       79 CAPTURE                          VAL R16
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R14
       82 CAPTURE                          VAL R15
       83 CAPTURE                          UPVAL U4
       84 CAPTURE                          VAL R13
       85 CAPTURE                          UPVAL U14
       86 CAPTURE                          VAL R5
       87 CAPTURE                          UPVAL U15
       88 CAPTURE                          UPVAL U16
       89 CAPTURE                          UPVAL U17
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R3
       92 NEWTABLE                         R19 0 18
       94 MOVE                             R20 R6
       95 MOVE                             R21 R16
       96 GETTABLEKS                       R22 R1 K10 ["selectedTargetName"]
       98 GETTABLEKS                       R23 R2 K11 ["canCreateScript"]
      100 GETTABLEKS                       R24 R2 K12 ["createScriptForSelectedGraphAsync"]
      102 GETTABLEKS                       R25 R2 K13 ["createScriptForStarterPlayerAsync"]
      104 GETTABLEKS                       R26 R4 K14 ["frameSelection"]
      106 MOVE                             R27 R5
      107 GETTABLEKS                       R28 R3 K15 ["copyUi"]
      109 MOVE                             R29 R7
      110 MOVE                             R30 R8
      111 MOVE                             R31 R9
      112 MOVE                             R32 R10
      113 MOVE                             R33 R11
      114 MOVE                             R34 R12
      115 MOVE                             R35 R13
      116 SETLIST                          R19 R20 16 [1]
      118 MOVE                             R20 R14
      119 MOVE                             R21 R15
      120 SETLIST                          R19 R20 2 [17]
      122 CALL                             R17 2 1
      123 GETUPVAL                         R18 0
      124 GETTABLEKS                       R18 R18 K16 ["createElement"]
      126 GETUPVAL                         R19 18
      127 GETTABLEKS                       R19 R19 K17 ["Provider"]
      129 DUPTABLE                         R20 K19 [{"value"}]
      130 SETTABLEKS                       R17 R20 K18 ["value"]
      132 GETTABLEKS                       R21 R0 K20 ["children"]
      134 CALL                             R18 3 -1
      135 RETURN                           R18 -1

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
       60 GETTABLEKS                       R9 R9 K16 ["getFFlagAnimGraphUIOrganize"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K15 ["Flags"]
       67 GETTABLEKS                       R10 R10 K17 ["getFFlagAnimGraphUITimestampFrames"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K18 ["Components"]
       74 GETTABLEKS                       R11 R11 K19 ["NodeView"]
       76 GETTABLEKS                       R11 R11 K20 ["MenuActions"]
       78 GETTABLEKS                       R11 R11 K21 ["useCopyAssetId"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K18 ["Components"]
       85 GETTABLEKS                       R12 R12 K19 ["NodeView"]
       87 GETTABLEKS                       R12 R12 K20 ["MenuActions"]
       89 GETTABLEKS                       R12 R12 K22 ["useNewGraph"]
       91 CALL                             R11 1 1
       92 GETIMPORT                        R12 K5 [require]
       94 GETTABLEKS                       R13 R0 K18 ["Components"]
       96 GETTABLEKS                       R13 R13 K19 ["NodeView"]
       98 GETTABLEKS                       R13 R13 K20 ["MenuActions"]
      100 GETTABLEKS                       R13 R13 K23 ["useOpenGraph"]
      102 CALL                             R12 1 1
      103 GETIMPORT                        R13 K5 [require]
      105 GETTABLEKS                       R14 R0 K18 ["Components"]
      107 GETTABLEKS                       R14 R14 K19 ["NodeView"]
      109 GETTABLEKS                       R14 R14 K20 ["MenuActions"]
      111 GETTABLEKS                       R14 R14 K24 ["useOrganize"]
      113 CALL                             R13 1 1
      114 GETIMPORT                        R14 K5 [require]
      116 GETTABLEKS                       R15 R0 K18 ["Components"]
      118 GETTABLEKS                       R15 R15 K19 ["NodeView"]
      120 GETTABLEKS                       R15 R15 K20 ["MenuActions"]
      122 GETTABLEKS                       R15 R15 K25 ["usePublishAs"]
      124 CALL                             R14 1 1
      125 GETIMPORT                        R15 K5 [require]
      127 GETTABLEKS                       R16 R0 K18 ["Components"]
      129 GETTABLEKS                       R16 R16 K19 ["NodeView"]
      131 GETTABLEKS                       R16 R16 K20 ["MenuActions"]
      133 GETTABLEKS                       R16 R16 K26 ["useSaveToRoblox"]
      135 CALL                             R15 1 1
      136 GETIMPORT                        R16 K5 [require]
      138 GETTABLEKS                       R17 R0 K18 ["Components"]
      140 GETTABLEKS                       R17 R17 K19 ["NodeView"]
      142 GETTABLEKS                       R17 R17 K20 ["MenuActions"]
      144 GETTABLEKS                       R17 R17 K27 ["useShowInExplorer"]
      146 CALL                             R16 1 1
      147 GETIMPORT                        R17 K5 [require]
      149 GETTABLEKS                       R18 R0 K18 ["Components"]
      151 GETTABLEKS                       R18 R18 K19 ["NodeView"]
      153 GETTABLEKS                       R18 R18 K20 ["MenuActions"]
      155 GETTABLEKS                       R18 R18 K28 ["useZoom"]
      157 CALL                             R17 1 1
      158 NEWTABLE                         R18 0 4
      160 LOADN                            R19 12
      161 LOADN                            R20 24
      162 LOADN                            R21 30
      163 LOADN                            R22 60
      164 SETLIST                          R18 R19 4 [1]
      166 GETTABLEKS                       R19 R5 K29 ["SettingsContext"]
      168 GETTABLEKS                       R19 R19 K30 ["TimeFormat"]
      170 DUPTABLE                         R20 K32 [{"menus"}]
      171 NEWTABLE                         R21 0 0
      173 SETTABLEKS                       R21 R20 K31 ["menus"]
      175 GETTABLEKS                       R21 R6 K33 ["createContext"]
      177 MOVE                             R22 R20
      178 CALL                             R21 1 1
      179 LOADK                            R22 K34 ["MenuItemsContext"]
      180 SETTABLEKS                       R22 R21 K35 ["displayName"]
      182 DUPCLOSURE                       R22 K36 [PROTO_4]
      183 CAPTURE                          VAL R6
      184 CAPTURE                          VAL R1
      185 CAPTURE                          VAL R2
      186 CAPTURE                          VAL R3
      187 CAPTURE                          VAL R5
      188 CAPTURE                          VAL R13
      189 CAPTURE                          VAL R11
      190 CAPTURE                          VAL R12
      191 CAPTURE                          VAL R15
      192 CAPTURE                          VAL R14
      193 CAPTURE                          VAL R10
      194 CAPTURE                          VAL R16
      195 CAPTURE                          VAL R17
      196 CAPTURE                          VAL R7
      197 CAPTURE                          VAL R9
      198 CAPTURE                          VAL R19
      199 CAPTURE                          VAL R18
      200 CAPTURE                          VAL R8
      201 CAPTURE                          VAL R21
      202 DUPTABLE                         R23 K39 [{"Context", "Provider"}]
      203 SETTABLEKS                       R21 R23 K37 ["Context"]
      205 SETTABLEKS                       R22 R23 K38 ["Provider"]
      207 RETURN                           R23 1
