PROTO_0:
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
       54 JUMPIFNOT                        R10 ; [+12]
       55 GETUPVAL                         R10 7
       56 CALL                             R10 0 1
       57 JUMPIFEQKB                       R10 FALSE ; [+5]
       59 GETUPVAL                         R10 8
       60 GETTABLEKS                       R10 R10 K31 ["canCreateScript"]
       62 JUMPIFNOT                        R10 ; [+4]
       63 GETUPVAL                         R9 8
       64 GETTABLEKS                       R9 R9 K32 ["createScriptForSelectedGraphAsync"]
       66 JUMP                             ; [+1]
       67 LOADNIL                          R9
       68 SETTABLEKS                       R9 R8 K12 ["onActivated"]
       70 DUPTABLE                         R9 K35 [{["id"] = "createScriptForStarterPlayer", ["text"] = "CreateScriptForStarterPlayer", ["onActivated"]}]
       71 GETUPVAL                         R11 7
       72 CALL                             R11 0 1
       73 JUMPIFEQKB                       R11 FALSE ; [+5]
       75 GETUPVAL                         R11 8
       76 GETTABLEKS                       R11 R11 K31 ["canCreateScript"]
       78 JUMPIFNOT                        R11 ; [+4]
       79 GETUPVAL                         R10 8
       80 GETTABLEKS                       R10 R10 K36 ["createScriptForStarterPlayerAsync"]
       82 JUMP                             ; [+1]
       83 LOADNIL                          R10
       84 SETTABLEKS                       R10 R9 K12 ["onActivated"]
       86 SETLIST                          R7 R8 2 [1]
       88 SETTABLEKS                       R7 R6 K8 ["items"]
       90 SETLIST                          R3 R4 3 [1]
       92 SETTABLEKS                       R3 R2 K6 ["groups"]
       94 DUPTABLE                         R3 K39 [{["id"] = "view", ["text"] = "View", ["groups"]}]
       95 NEWTABLE                         R4 0 1
       97 DUPTABLE                         R5 K9 [{"items"}]
       98 NEWTABLE                         R6 0 3
      100 DUPTABLE                         R7 K41 [{["id"] = "frameSelection", ["text"], ["onActivated"]}]
      101 GETUPVAL                         R9 7
      102 CALL                             R9 0 1
      103 JUMPIFNOT                        R9 ; [+2]
      104 GETUPVAL                         R9 9
      105 JUMPIFNOT                        R9 ; [+2]
      106 LOADK                            R8 K42 ["FrameSelection"]
      107 JUMP                             ; [+1]
      108 LOADK                            R8 K43 ["FrameAll"]
      109 SETTABLEKS                       R8 R7 K4 ["text"]
      111 GETUPVAL                         R8 10
      112 GETTABLEKS                       R8 R8 K40 ["frameSelection"]
      114 SETTABLEKS                       R8 R7 K12 ["onActivated"]
      116 DUPTABLE                         R8 K46 [{["id"] = "zoomIn", ["text"] = "ZoomIn", ["onActivated"]}]
      117 GETUPVAL                         R9 11
      118 SETTABLEKS                       R9 R8 K12 ["onActivated"]
      120 DUPTABLE                         R9 K49 [{["id"] = "zoomOut", ["text"] = "ZoomOut", ["onActivated"]}]
      121 GETUPVAL                         R10 12
      122 SETTABLEKS                       R10 R9 K12 ["onActivated"]
      124 SETLIST                          R6 R7 3 [1]
      126 SETTABLEKS                       R6 R5 K8 ["items"]
      128 SETLIST                          R4 R5 1 [1]
      130 SETTABLEKS                       R4 R3 K6 ["groups"]
      132 SETLIST                          R1 R2 2 [1]
      134 SETTABLEKS                       R1 R0 K0 ["menus"]
      136 GETUPVAL                         R1 13
      137 GETTABLEKS                       R1 R1 K50 ["FFlagAnimGraphUIShowInExplorer"]
      139 JUMPIFNOT                        R1 ; [+24]
      140 GETUPVAL                         R1 7
      141 CALL                             R1 0 1
      142 JUMPIFNOT                        R1 ; [+21]
      143 GETTABLEKS                       R3 R0 K0 ["menus"]
      145 GETTABLEN                        R2 R3 1
      146 GETTABLEKS                       R2 R2 K6 ["groups"]
      148 DUPTABLE                         R3 K9 [{"items"}]
      149 NEWTABLE                         R4 0 1
      151 DUPTABLE                         R5 K53 [{["id"] = "showInExplorer", ["text"] = "ShowInExplorer", ["onActivated"]}]
      152 GETUPVAL                         R6 14
      153 SETTABLEKS                       R6 R5 K12 ["onActivated"]
      155 SETLIST                          R4 R5 1 [1]
      157 SETTABLEKS                       R4 R3 K8 ["items"]
      159 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
      161 GETIMPORT                        R1 K56 [table.insert]
      163 CALL                             R1 2 0
      164 GETUPVAL                         R1 15
      165 CALL                             R1 0 1
      166 JUMPIFNOT                        R1 ; [+30]
      167 GETTABLEKS                       R1 R0 K0 ["menus"]
      169 LOADNIL                          R2
      170 LOADNIL                          R3
      171 FORGPREP                         R1
      172 GETTABLEKS                       R6 R5 K2 ["id"]
      174 JUMPIFNOTEQKS                    R6 K37 ["view"] ; [+20]
      176 GETTABLEKS                       R7 R5 K6 ["groups"]
      178 DUPTABLE                         R8 K9 [{"items"}]
      179 NEWTABLE                         R9 0 1
      181 DUPTABLE                         R10 K59 [{["id"] = "organize", ["text"] = "Organize", ["onActivated"]}]
      182 GETUPVAL                         R11 16
      183 SETTABLEKS                       R11 R10 K12 ["onActivated"]
      185 SETLIST                          R9 R10 1 [1]
      187 SETTABLEKS                       R9 R8 K8 ["items"]
      189 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
      191 GETIMPORT                        R6 K56 [table.insert]
      193 CALL                             R6 2 0
      194 JUMP                             ; [+2]
      195 FORGLOOP                         R1 2 ; [-24]
      197 GETIMPORT                        R1 K61 [game]
      199 LOADK                            R3 K62 ["DebugAnimationEditorDebugMenu"]
      200 LOADB                            R4 0
      201 NAMECALL                         R1 R1 K63 ["DefineFastFlag"]
      203 CALL                             R1 3 1
      204 JUMPIFNOT                        R1 ; [+27]
      205 GETTABLEKS                       R2 R0 K0 ["menus"]
      207 DUPTABLE                         R3 K66 [{["id"] = "debug", ["text"] = "Debug", ["groups"]}]
      208 NEWTABLE                         R4 0 1
      210 DUPTABLE                         R5 K9 [{"items"}]
      211 NEWTABLE                         R6 0 1
      213 DUPTABLE                         R7 K69 [{["id"] = "copyUi", ["text"] = "DebugCopyUi", ["onActivated"]}]
      214 GETUPVAL                         R8 17
      215 GETTABLEKS                       R8 R8 K67 ["copyUi"]
      217 SETTABLEKS                       R8 R7 K12 ["onActivated"]
      219 SETLIST                          R6 R7 1 [1]
      221 SETTABLEKS                       R6 R5 K8 ["items"]
      223 SETLIST                          R4 R5 1 [1]
      225 SETTABLEKS                       R4 R3 K6 ["groups"]
      227 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
      229 GETIMPORT                        R1 K56 [table.insert]
      231 CALL                             R1 2 0
      232 RETURN                           R0 1

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
       43 CALL                             R11 0 1
       44 GETUPVAL                         R12 11
       45 CALL                             R12 0 1
       46 GETUPVAL                         R13 12
       47 LOADK                            R14 K4 [0.5]
       48 CALL                             R13 1 1
       49 GETUPVAL                         R14 12
       50 LOADK                            R15 K5 [-0.5]
       51 CALL                             R14 1 1
       52 GETUPVAL                         R16 13
       53 CALL                             R16 0 1
       54 JUMPIFNOT                        R16 ; [+7]
       55 GETUPVAL                         R15 14
       56 GETTABLEKS                       R15 R15 K6 ["useSignalState"]
       58 GETTABLEKS                       R16 R4 K7 ["observeSelectionRect"]
       60 CALL                             R15 1 1
       61 JUMP                             ; [+1]
       62 LOADNIL                          R15
       63 GETUPVAL                         R16 0
       64 GETTABLEKS                       R16 R16 K8 ["useMemo"]
       66 NEWCLOSURE                       R17 P0
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R10
       71 CAPTURE                          VAL R11
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R5
       74 CAPTURE                          UPVAL U13
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R15
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R13
       79 CAPTURE                          VAL R14
       80 CAPTURE                          UPVAL U4
       81 CAPTURE                          VAL R12
       82 CAPTURE                          UPVAL U15
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R3
       85 NEWTABLE                         R18 0 17
       87 MOVE                             R19 R5
       88 MOVE                             R20 R15
       89 GETTABLEKS                       R21 R1 K9 ["selectedTargetName"]
       91 GETTABLEKS                       R22 R2 K10 ["canCreateScript"]
       93 GETTABLEKS                       R23 R2 K11 ["createScriptForSelectedGraphAsync"]
       95 GETTABLEKS                       R24 R2 K12 ["createScriptForStarterPlayerAsync"]
       97 GETTABLEKS                       R25 R4 K13 ["frameSelection"]
       99 GETTABLEKS                       R26 R3 K14 ["copyUi"]
      101 MOVE                             R27 R6
      102 MOVE                             R28 R7
      103 MOVE                             R29 R8
      104 MOVE                             R30 R9
      105 MOVE                             R31 R10
      106 MOVE                             R32 R11
      107 MOVE                             R33 R12
      108 MOVE                             R34 R13
      109 SETLIST                          R18 R19 16 [1]
      111 MOVE                             R19 R14
      112 SETLIST                          R18 R19 1 [17]
      114 CALL                             R16 2 1
      115 GETUPVAL                         R17 0
      116 GETTABLEKS                       R17 R17 K15 ["createElement"]
      118 GETUPVAL                         R18 16
      119 GETTABLEKS                       R18 R18 K16 ["Provider"]
      121 DUPTABLE                         R19 K18 [{"value"}]
      122 SETTABLEKS                       R16 R19 K17 ["value"]
      124 GETTABLEKS                       R20 R0 K19 ["children"]
      126 CALL                             R17 3 -1
      127 RETURN                           R17 -1

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
       67 GETTABLEKS                       R10 R10 K17 ["getFFlagAnimGraphUI_RunTimeDebug"]
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
      158 DUPTABLE                         R18 K30 [{"menus"}]
      159 NEWTABLE                         R19 0 0
      161 SETTABLEKS                       R19 R18 K29 ["menus"]
      163 GETTABLEKS                       R19 R6 K31 ["createContext"]
      165 MOVE                             R20 R18
      166 CALL                             R19 1 1
      167 LOADK                            R20 K32 ["MenuItemsContext"]
      168 SETTABLEKS                       R20 R19 K33 ["displayName"]
      170 DUPCLOSURE                       R20 K34 [PROTO_1]
      171 CAPTURE                          VAL R6
      172 CAPTURE                          VAL R1
      173 CAPTURE                          VAL R2
      174 CAPTURE                          VAL R3
      175 CAPTURE                          VAL R5
      176 CAPTURE                          VAL R13
      177 CAPTURE                          VAL R11
      178 CAPTURE                          VAL R12
      179 CAPTURE                          VAL R15
      180 CAPTURE                          VAL R14
      181 CAPTURE                          VAL R10
      182 CAPTURE                          VAL R16
      183 CAPTURE                          VAL R17
      184 CAPTURE                          VAL R9
      185 CAPTURE                          VAL R7
      186 CAPTURE                          VAL R8
      187 CAPTURE                          VAL R19
      188 DUPTABLE                         R21 K37 [{"Context", "Provider"}]
      189 SETTABLEKS                       R19 R21 K35 ["Context"]
      191 SETTABLEKS                       R20 R21 K36 ["Provider"]
      193 RETURN                           R21 1
