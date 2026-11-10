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
      274 GETTABLEKS                       R1 R0 K0 ["menus"]
      276 LOADNIL                          R2
      277 LOADNIL                          R3
      278 FORGPREP                         R1
      279 GETTABLEKS                       R6 R5 K2 ["id"]
      281 JUMPIFNOTEQKS                    R6 K37 ["view"] ; [+20]
      283 GETTABLEKS                       R7 R5 K6 ["groups"]
      285 DUPTABLE                         R8 K9 [{"items"}]
      286 NEWTABLE                         R9 0 1
      288 DUPTABLE                         R10 K78 [{["id"] = "organize", ["text"] = "Organize", ["onActivated"]}]
      289 GETUPVAL                         R11 18
      290 SETTABLEKS                       R11 R10 K12 ["onActivated"]
      292 SETLIST                          R9 R10 1 [1]
      294 SETTABLEKS                       R9 R8 K8 ["items"]
      296 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
      298 GETIMPORT                        R6 K56 [table.insert]
      300 CALL                             R6 2 0
      301 JUMP                             ; [+2]
      302 FORGLOOP                         R1 2 ; [-24]
      304 GETIMPORT                        R1 K80 [game]
      306 LOADK                            R3 K81 ["DebugAnimationEditorDebugMenu"]
      307 LOADB                            R4 0
      308 NAMECALL                         R1 R1 K82 ["DefineFastFlag"]
      310 CALL                             R1 3 1
      311 JUMPIFNOT                        R1 ; [+27]
      312 GETTABLEKS                       R2 R0 K0 ["menus"]
      314 DUPTABLE                         R3 K85 [{["id"] = "debug", ["text"] = "Debug", ["groups"]}]
      315 NEWTABLE                         R4 0 1
      317 DUPTABLE                         R5 K9 [{"items"}]
      318 NEWTABLE                         R6 0 1
      320 DUPTABLE                         R7 K88 [{["id"] = "copyUi", ["text"] = "DebugCopyUi", ["onActivated"]}]
      321 GETUPVAL                         R8 19
      322 GETTABLEKS                       R8 R8 K86 ["copyUi"]
      324 SETTABLEKS                       R8 R7 K12 ["onActivated"]
      326 SETLIST                          R6 R7 1 [1]
      328 SETTABLEKS                       R6 R5 K8 ["items"]
      330 SETLIST                          R4 R5 1 [1]
      332 SETTABLEKS                       R4 R3 K6 ["groups"]
      334 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
      336 GETIMPORT                        R1 K56 [table.insert]
      338 CALL                             R1 2 0
      339 RETURN                           R0 1

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
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R3
       91 NEWTABLE                         R19 0 18
       93 MOVE                             R20 R6
       94 MOVE                             R21 R16
       95 GETTABLEKS                       R22 R1 K10 ["selectedTargetName"]
       97 GETTABLEKS                       R23 R2 K11 ["canCreateScript"]
       99 GETTABLEKS                       R24 R2 K12 ["createScriptForSelectedGraphAsync"]
      101 GETTABLEKS                       R25 R2 K13 ["createScriptForStarterPlayerAsync"]
      103 GETTABLEKS                       R26 R4 K14 ["frameSelection"]
      105 MOVE                             R27 R5
      106 GETTABLEKS                       R28 R3 K15 ["copyUi"]
      108 MOVE                             R29 R7
      109 MOVE                             R30 R8
      110 MOVE                             R31 R9
      111 MOVE                             R32 R10
      112 MOVE                             R33 R11
      113 MOVE                             R34 R12
      114 MOVE                             R35 R13
      115 SETLIST                          R19 R20 16 [1]
      117 MOVE                             R20 R14
      118 MOVE                             R21 R15
      119 SETLIST                          R19 R20 2 [17]
      121 CALL                             R17 2 1
      122 GETUPVAL                         R18 0
      123 GETTABLEKS                       R18 R18 K16 ["createElement"]
      125 GETUPVAL                         R19 17
      126 GETTABLEKS                       R19 R19 K17 ["Provider"]
      128 DUPTABLE                         R20 K19 [{"value"}]
      129 SETTABLEKS                       R17 R20 K18 ["value"]
      131 GETTABLEKS                       R21 R0 K20 ["children"]
      133 CALL                             R18 3 -1
      134 RETURN                           R18 -1

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
