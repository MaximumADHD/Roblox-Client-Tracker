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
      137 CALL                             R1 0 1
      138 JUMPIFNOT                        R1 ; [+30]
      139 GETTABLEKS                       R1 R0 K0 ["menus"]
      141 LOADNIL                          R2
      142 LOADNIL                          R3
      143 FORGPREP                         R1
      144 GETTABLEKS                       R6 R5 K2 ["id"]
      146 JUMPIFNOTEQKS                    R6 K37 ["view"] ; [+20]
      148 GETTABLEKS                       R7 R5 K6 ["groups"]
      150 DUPTABLE                         R8 K9 [{"items"}]
      151 NEWTABLE                         R9 0 1
      153 DUPTABLE                         R10 K52 [{["id"] = "organize", ["text"] = "Organize", ["onActivated"]}]
      154 GETUPVAL                         R11 14
      155 SETTABLEKS                       R11 R10 K12 ["onActivated"]
      157 SETLIST                          R9 R10 1 [1]
      159 SETTABLEKS                       R9 R8 K8 ["items"]
      161 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
      163 GETIMPORT                        R6 K55 [table.insert]
      165 CALL                             R6 2 0
      166 JUMP                             ; [+2]
      167 FORGLOOP                         R1 2 ; [-24]
      169 GETIMPORT                        R1 K57 [game]
      171 LOADK                            R3 K58 ["DebugAnimationEditorDebugMenu"]
      172 LOADB                            R4 0
      173 NAMECALL                         R1 R1 K59 ["DefineFastFlag"]
      175 CALL                             R1 3 1
      176 JUMPIFNOT                        R1 ; [+27]
      177 GETTABLEKS                       R2 R0 K0 ["menus"]
      179 DUPTABLE                         R3 K62 [{["id"] = "debug", ["text"] = "Debug", ["groups"]}]
      180 NEWTABLE                         R4 0 1
      182 DUPTABLE                         R5 K9 [{"items"}]
      183 NEWTABLE                         R6 0 1
      185 DUPTABLE                         R7 K65 [{["id"] = "copyUi", ["text"] = "DebugCopyUi", ["onActivated"]}]
      186 GETUPVAL                         R8 15
      187 GETTABLEKS                       R8 R8 K63 ["copyUi"]
      189 SETTABLEKS                       R8 R7 K12 ["onActivated"]
      191 SETLIST                          R6 R7 1 [1]
      193 SETTABLEKS                       R6 R5 K8 ["items"]
      195 SETLIST                          R4 R5 1 [1]
      197 SETTABLEKS                       R4 R3 K6 ["groups"]
      199 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
      201 GETIMPORT                        R1 K55 [table.insert]
      203 CALL                             R1 2 0
      204 RETURN                           R0 1

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
       45 LOADK                            R13 K4 [0.5]
       46 CALL                             R12 1 1
       47 GETUPVAL                         R13 11
       48 LOADK                            R14 K5 [-0.5]
       49 CALL                             R13 1 1
       50 GETUPVAL                         R15 12
       51 CALL                             R15 0 1
       52 JUMPIFNOT                        R15 ; [+7]
       53 GETUPVAL                         R14 13
       54 GETTABLEKS                       R14 R14 K6 ["useSignalState"]
       56 GETTABLEKS                       R15 R4 K7 ["observeSelectionRect"]
       58 CALL                             R14 1 1
       59 JUMP                             ; [+1]
       60 LOADNIL                          R14
       61 GETUPVAL                         R15 0
       62 GETTABLEKS                       R15 R15 K8 ["useMemo"]
       64 NEWCLOSURE                       R16 P0
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R10
       69 CAPTURE                          VAL R11
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R5
       72 CAPTURE                          UPVAL U12
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R14
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R12
       77 CAPTURE                          VAL R13
       78 CAPTURE                          UPVAL U14
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R3
       81 NEWTABLE                         R17 0 16
       83 MOVE                             R18 R5
       84 MOVE                             R19 R14
       85 GETTABLEKS                       R20 R1 K9 ["selectedTargetName"]
       87 GETTABLEKS                       R21 R2 K10 ["canCreateScript"]
       89 GETTABLEKS                       R22 R2 K11 ["createScriptForSelectedGraphAsync"]
       91 GETTABLEKS                       R23 R2 K12 ["createScriptForStarterPlayerAsync"]
       93 GETTABLEKS                       R24 R4 K13 ["frameSelection"]
       95 GETTABLEKS                       R25 R3 K14 ["copyUi"]
       97 MOVE                             R26 R6
       98 MOVE                             R27 R7
       99 MOVE                             R28 R8
      100 MOVE                             R29 R9
      101 MOVE                             R30 R10
      102 MOVE                             R31 R11
      103 MOVE                             R32 R12
      104 MOVE                             R33 R13
      105 SETLIST                          R17 R18 16 [1]
      107 CALL                             R15 2 1
      108 GETUPVAL                         R16 0
      109 GETTABLEKS                       R16 R16 K15 ["createElement"]
      111 GETUPVAL                         R17 15
      112 GETTABLEKS                       R17 R17 K16 ["Provider"]
      114 DUPTABLE                         R18 K18 [{"value"}]
      115 SETTABLEKS                       R15 R18 K17 ["value"]
      117 GETTABLEKS                       R19 R0 K19 ["children"]
      119 CALL                             R16 3 -1
      120 RETURN                           R16 -1

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
      144 GETTABLEKS                       R17 R17 K27 ["useZoom"]
      146 CALL                             R16 1 1
      147 DUPTABLE                         R17 K29 [{"menus"}]
      148 NEWTABLE                         R18 0 0
      150 SETTABLEKS                       R18 R17 K28 ["menus"]
      152 GETTABLEKS                       R18 R6 K30 ["createContext"]
      154 MOVE                             R19 R17
      155 CALL                             R18 1 1
      156 LOADK                            R19 K31 ["MenuItemsContext"]
      157 SETTABLEKS                       R19 R18 K32 ["displayName"]
      159 DUPCLOSURE                       R19 K33 [PROTO_1]
      160 CAPTURE                          VAL R6
      161 CAPTURE                          VAL R1
      162 CAPTURE                          VAL R2
      163 CAPTURE                          VAL R3
      164 CAPTURE                          VAL R5
      165 CAPTURE                          VAL R13
      166 CAPTURE                          VAL R11
      167 CAPTURE                          VAL R12
      168 CAPTURE                          VAL R15
      169 CAPTURE                          VAL R14
      170 CAPTURE                          VAL R10
      171 CAPTURE                          VAL R16
      172 CAPTURE                          VAL R9
      173 CAPTURE                          VAL R7
      174 CAPTURE                          VAL R8
      175 CAPTURE                          VAL R18
      176 DUPTABLE                         R20 K36 [{"Context", "Provider"}]
      177 SETTABLEKS                       R18 R20 K34 ["Context"]
      179 SETTABLEKS                       R19 R20 K35 ["Provider"]
      181 RETURN                           R20 1
