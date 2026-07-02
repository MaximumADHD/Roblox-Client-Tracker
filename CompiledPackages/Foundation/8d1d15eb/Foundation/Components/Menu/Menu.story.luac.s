PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 MOVE                             R4 R0
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 GETIMPORT                        R9 K2 [table.clone]
        8 MOVE                             R10 R8
        9 CALL                             R9 1 1
       10 GETTABLEKS                       R10 R9 K3 ["items"]
       12 JUMPIFNOT                        R10 ; [+14]
       13 JUMPIFNOTLE                      R2 R1 ; [+5]
       15 LOADNIL                          R10
       16 SETTABLEKS                       R10 R9 K3 ["items"]
       18 JUMP                             ; [+8]
       19 GETUPVAL                         R10 0
       20 GETTABLEKS                       R11 R9 K3 ["items"]
       22 ADDK                             R12 R1 K4 [1]
       23 MOVE                             R13 R2
       24 CALL                             R10 3 1
       25 SETTABLEKS                       R10 R9 K3 ["items"]
       27 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
       29 MOVE                             R11 R3
       30 MOVE                             R12 R9
       31 GETIMPORT                        R10 K6 [table.insert]
       33 CALL                             R10 2 0
       34 FORGLOOP                         R4 2 ; [-29]
       36 RETURN                           R3 1

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLEKS                       R8 R7 K0 ["items"]
        8 JUMPIFNOT                        R8 ; [+20]
        9 GETIMPORT                        R8 K3 [table.clone]
       11 MOVE                             R9 R7
       12 CALL                             R8 1 1
       13 GETUPVAL                         R9 0
       14 GETTABLEKS                       R10 R7 K0 ["items"]
       16 LOADN                            R11 1
       17 MOVE                             R12 R1
       18 CALL                             R9 3 1
       19 SETTABLEKS                       R9 R8 K0 ["items"]
       21 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       23 MOVE                             R10 R2
       24 MOVE                             R11 R8
       25 GETIMPORT                        R9 K5 [table.insert]
       27 CALL                             R9 2 0
       28 JUMP                             ; [+16]
       29 GETUPVAL                         R11 0
       30 NEWTABLE                         R12 0 1
       32 MOVE                             R13 R7
       33 SETLIST                          R12 R13 1 [1]
       35 LOADN                            R13 1
       36 MOVE                             R14 R1
       37 CALL                             R11 3 1
       38 GETTABLEN                        R10 R11 1
       39 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       41 MOVE                             R9 R2
       42 GETIMPORT                        R8 K5 [table.insert]
       44 CALL                             R8 2 0
       45 FORGLOOP                         R3 2 ; [-40]
       47 RETURN                           R2 1

PROTO_2:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Menu item activated by child: edit-cut"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Menu item activated by child: edit-copy"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Menu item activated by child: edit-paste"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R1 0 4
        2 DUPTABLE                         R2 K6 [{[1] = "obby-v3", ["icon"] = "check-large", ["text"] = "v3.0 (Live)"}]
        3 DUPTABLE                         R3 K9 [{[1] = "obby-v2", ["text"] = "v2.5 (Draft)"}]
        4 DUPTABLE                         R4 K12 [{[1] = "obby-v1", ["text"] = "v1.0 (Archived)"}]
        5 DUPTABLE                         R5 K16 [{[1] = "obby-restore", ["icon"] = "arrow-rotate-right", ["text"] = "Restore Backup"}]
        6 SETLIST                          R1 R2 4 [1]
        8 NEWTABLE                         R2 0 4
       10 DUPTABLE                         R3 K21 [{[1] = "place-obby", ["icon"] = "globe-simplified", ["text"] = "Obby World", ["items"]}]
       11 SETTABLEKS                       R1 R3 K20 ["items"]
       13 DUPTABLE                         R4 K24 [{[1] = "place-racing", ["icon"] = "globe-simplified", ["text"] = "Racing Game"}]
       14 DUPTABLE                         R5 K27 [{[1] = "place-rpg", ["icon"] = "globe-simplified", ["text"] = "RPG Quest"}]
       15 DUPTABLE                         R6 K30 [{[1] = "place-tycoon", ["icon"] = "globe-simplified", ["text"] = "Tycoon Builder"}]
       16 SETLIST                          R2 R3 4 [1]
       18 NEWTABLE                         R3 0 4
       20 DUPTABLE                         R4 K34 [{[1] = "recent-places", ["icon"] = "folder", ["text"] = "My Places", ["items"]}]
       21 SETTABLEKS                       R2 R4 K20 ["items"]
       23 DUPTABLE                         R5 K37 [{[1] = "recent-team", ["icon"] = "folder", ["text"] = "Team Projects"}]
       24 DUPTABLE                         R6 K40 [{[1] = "recent-templates", ["text"] = "Templates"}]
       25 DUPTABLE                         R7 K46 [{[1] = "recent-clear", ["icon"] = "trash-can", ["text"] = "Clear History", ["isDisabled"] = True}]
       26 SETLIST                          R3 R4 4 [1]
       28 NEWTABLE                         R4 0 4
       30 DUPTABLE                         R5 K49 [{[1] = "export-rbxl", ["text"] = "Place File (.rbxl)"}]
       31 DUPTABLE                         R6 K52 [{[1] = "export-rbxm", ["text"] = "Model File (.rbxm)"}]
       32 DUPTABLE                         R7 K56 [{[1] = "export-png", ["icon"] = "photo-camera", ["text"] = "Screenshot (.png)"}]
       33 DUPTABLE                         R8 K60 [{[1] = "export-json", ["icon"] = "code", ["text"] = "Selection as JSON"}]
       34 SETLIST                          R4 R5 4 [1]
       36 NEWTABLE                         R5 0 7
       38 DUPTABLE                         R6 K64 [{[1] = "file-new", ["icon"] = "plus-small", ["text"] = "New Place"}]
       39 DUPTABLE                         R7 K68 [{[1] = "file-open-recent", ["icon"] = "clock", ["text"] = "Open Recent", ["items"]}]
       40 SETTABLEKS                       R3 R7 K20 ["items"]
       42 DUPTABLE                         R8 K72 [{[1] = "file-save", ["icon"] = "floppy-disk", ["text"] = "Save"}]
       43 DUPTABLE                         R9 K75 [{[1] = "file-save-as", ["text"] = "Save As...", ["isDisabled"] = True}]
       44 DUPTABLE                         R10 K79 [{[1] = "file-export", ["icon"] = "arrow-large-right", ["text"] = "Export", ["items"]}]
       45 SETTABLEKS                       R4 R10 K20 ["items"]
       47 DUPTABLE                         R11 K82 [{[1] = "file-publish", ["icon"] = "globe-simplified", ["text"] = "Publish to Roblox"}]
       48 DUPTABLE                         R12 K86 [{[1] = "file-close", ["icon"] = "x-large", ["text"] = "Close Place"}]
       49 SETLIST                          R5 R6 7 [1]
       51 NEWTABLE                         R6 0 6
       53 DUPTABLE                         R7 K90 [{[1] = "align-left", ["icon"] = "arrow-large-left", ["text"] = "Align Left"}]
       54 DUPTABLE                         R8 K93 [{[1] = "align-center", ["text"] = "Align Center"}]
       55 DUPTABLE                         R9 K96 [{[1] = "align-right", ["icon"] = "arrow-large-right", ["text"] = "Align Right"}]
       56 DUPTABLE                         R10 K100 [{[1] = "align-top", ["icon"] = "arrow-large-up", ["text"] = "Align Top"}]
       57 DUPTABLE                         R11 K103 [{[1] = "align-middle", ["text"] = "Align Middle"}]
       58 DUPTABLE                         R12 K107 [{[1] = "align-bottom", ["icon"] = "arrow-large-down", ["text"] = "Align Bottom"}]
       59 SETLIST                          R6 R7 6 [1]
       61 NEWTABLE                         R7 0 6
       63 DUPTABLE                         R8 K111 [{[1] = "transform-align", ["icon"] = "two-arrows-left-right", ["text"] = "Align", ["items"]}]
       64 SETTABLEKS                       R6 R8 K20 ["items"]
       66 DUPTABLE                         R9 K115 [{[1] = "transform-rotate-cw", ["icon"] = "arrow-spin-clockwise", ["text"] = "Rotate 90° CW"}]
       67 DUPTABLE                         R10 K118 [{[1] = "transform-rotate-ccw", ["text"] = "Rotate 90° CCW"}]
       68 DUPTABLE                         R11 K121 [{[1] = "transform-flip-h", ["icon"] = "two-arrows-left-right", ["text"] = "Flip Horizontal"}]
       69 DUPTABLE                         R12 K124 [{[1] = "transform-flip-v", ["text"] = "Flip Vertical"}]
       70 DUPTABLE                         R13 K127 [{[1] = "transform-reset", ["text"] = "Reset Transform", ["isDisabled"] = True}]
       71 SETLIST                          R7 R8 6 [1]
       73 NEWTABLE                         R8 0 7
       75 DUPTABLE                         R9 K130 [{[1] = "edit-undo", ["icon"] = "arrow-large-left", ["text"] = "Undo"}]
       76 DUPTABLE                         R10 K133 [{[1] = "edit-redo", ["icon"] = "arrow-large-right", ["text"] = "Redo"}]
       77 DUPTABLE                         R11 K137 [{[1] = "edit-cut", ["text"] = "Cut", ["onActivated"]}]
       78 NEWCLOSURE                       R12 P0
       79 CAPTURE                          VAL R0
       80 SETTABLEKS                       R12 R11 K136 ["onActivated"]
       82 DUPTABLE                         R12 K140 [{[1] = "edit-copy", ["text"] = "Copy", ["onActivated"]}]
       83 NEWCLOSURE                       R13 P1
       84 CAPTURE                          VAL R0
       85 SETTABLEKS                       R13 R12 K136 ["onActivated"]
       87 DUPTABLE                         R13 K143 [{[1] = "edit-paste", ["text"] = "Paste", ["onActivated"]}]
       88 NEWCLOSURE                       R14 P2
       89 CAPTURE                          VAL R0
       90 SETTABLEKS                       R14 R13 K136 ["onActivated"]
       92 DUPTABLE                         R14 K146 [{[1] = "edit-duplicate", ["text"] = "Duplicate", ["isDisabled"] = True}]
       93 DUPTABLE                         R15 K149 [{[1] = "edit-transform", ["icon"] = "arrow-spin-clockwise", ["text"] = "Transform", ["items"]}]
       94 SETTABLEKS                       R7 R15 K20 ["items"]
       96 SETLIST                          R8 R9 7 [1]
       98 NEWTABLE                         R9 0 6
      100 DUPTABLE                         R10 K152 [{[1] = "view-explorer", ["icon"] = "folder", ["text"] = "Explorer"}]
      101 DUPTABLE                         R11 K156 [{[1] = "view-properties", ["icon"] = "rectangle-list", ["text"] = "Properties"}]
      102 DUPTABLE                         R12 K159 [{[1] = "view-output", ["text"] = "Output"}]
      103 DUPTABLE                         R13 K162 [{[1] = "view-cmd-bar", ["text"] = "Command Bar"}]
      104 DUPTABLE                         R14 K165 [{[1] = "view-toolbox", ["text"] = "Toolbox"}]
      105 DUPTABLE                         R15 K168 [{[1] = "view-terrain", ["text"] = "Terrain Editor"}]
      106 SETLIST                          R9 R10 6 [1]
      108 NEWTABLE                         R10 0 4
      110 DUPTABLE                         R11 K172 [{[1] = "style-fire", ["icon"] = "flame", ["text"] = "Fire"}]
      111 DUPTABLE                         R12 K176 [{[1] = "style-smoke", ["icon"] = "cloud", ["text"] = "Smoke"}]
      112 DUPTABLE                         R13 K180 [{[1] = "style-sparks", ["icon"] = "star", ["text"] = "Sparks"}]
      113 DUPTABLE                         R14 K184 [{[1] = "style-custom", ["icon"] = "gear", ["text"] = "Custom..."}]
      114 SETLIST                          R10 R11 4 [1]
      116 NEWTABLE                         R11 0 4
      118 DUPTABLE                         R12 K187 [{[1] = "insert-particles", ["icon"] = "star", ["text"] = "Particles", ["items"]}]
      119 SETTABLEKS                       R10 R12 K20 ["items"]
      121 DUPTABLE                         R13 K190 [{[1] = "effect-explosion", ["text"] = "Explosion"}]
      122 DUPTABLE                         R14 K194 [{[1] = "effect-highlight", ["icon"] = "eye", ["text"] = "Highlight"}]
      123 DUPTABLE                         R15 K197 [{[1] = "effect-bloom", ["text"] = "Bloom"}]
      124 SETLIST                          R11 R12 4 [1]
      126 NEWTABLE                         R12 0 6
      128 DUPTABLE                         R13 K200 [{[1] = "insert-effects", ["icon"] = "star", ["text"] = "Effects", ["items"]}]
      129 SETTABLEKS                       R11 R13 K20 ["items"]
      131 DUPTABLE                         R14 K204 [{[1] = "insert-part", ["icon"] = "cube-vertexes", ["text"] = "Part"}]
      132 DUPTABLE                         R15 K207 [{[1] = "insert-mesh", ["text"] = "Mesh Part"}]
      133 DUPTABLE                         R16 K210 [{[1] = "insert-model", ["text"] = "Model"}]
      134 DUPTABLE                         R17 K214 [{[1] = "insert-light", ["icon"] = "lightning-bolt", ["text"] = "Light"}]
      135 DUPTABLE                         R18 K218 [{[1] = "insert-sound", ["icon"] = "speaker", ["text"] = "Sound", ["isDisabled"] = True}]
      136 SETLIST                          R12 R13 6 [1]
      138 NEWTABLE                         R13 0 5
      140 DUPTABLE                         R14 K221 [{[1] = "insert-object", ["icon"] = "cube-vertexes", ["text"] = "Object", ["items"]}]
      141 SETTABLEKS                       R12 R14 K20 ["items"]
      143 DUPTABLE                         R15 K224 [{[1] = "insert-script", ["icon"] = "code", ["text"] = "Script"}]
      144 DUPTABLE                         R16 K227 [{[1] = "insert-local-script", ["text"] = "Local Script"}]
      145 DUPTABLE                         R17 K230 [{[1] = "insert-module", ["text"] = "Module Script"}]
      146 DUPTABLE                         R18 K233 [{[1] = "insert-folder", ["icon"] = "folder", ["text"] = "Folder"}]
      147 SETLIST                          R13 R14 5 [1]
      149 NEWTABLE                         R14 0 3
      151 DUPTABLE                         R15 K236 [{["title"] = "Document", ["items"]}]
      152 NEWTABLE                         R16 0 2
      154 DUPTABLE                         R17 K240 [{[1] = "file", ["icon"] = "page", ["text"] = "File", ["items"]}]
      155 SETTABLEKS                       R5 R17 K20 ["items"]
      157 DUPTABLE                         R18 K244 [{[1] = "edit", ["icon"] = "pencil-square", ["text"] = "Edit", ["items"]}]
      158 SETTABLEKS                       R8 R18 K20 ["items"]
      160 SETLIST                          R16 R17 2 [1]
      162 SETTABLEKS                       R16 R15 K20 ["items"]
      164 DUPTABLE                         R16 K246 [{["title"] = "Workspace", ["items"]}]
      165 NEWTABLE                         R17 0 2
      167 DUPTABLE                         R18 K249 [{[1] = "view", ["icon"] = "eye", ["text"] = "View", ["items"]}]
      168 SETTABLEKS                       R9 R18 K20 ["items"]
      170 DUPTABLE                         R19 K253 [{[1] = "insert", ["icon"] = "plus-large", ["text"] = "Insert", ["items"]}]
      171 SETTABLEKS                       R13 R19 K20 ["items"]
      173 SETLIST                          R17 R18 2 [1]
      175 SETTABLEKS                       R17 R16 K20 ["items"]
      177 DUPTABLE                         R17 K255 [{["title"] = "Quick Actions", ["items"]}]
      178 NEWTABLE                         R18 0 2
      180 DUPTABLE                         R19 K258 [{[1] = "select-all", ["icon"] = "check-large", ["text"] = "Select All"}]
      181 DUPTABLE                         R20 K261 [{[1] = "preferences", ["icon"] = "gear", ["text"] = "Preferences"}]
      182 SETLIST                          R18 R19 2 [1]
      184 SETTABLEKS                       R18 R17 K20 ["items"]
      186 SETLIST                          R14 R15 3 [1]
      188 RETURN                           R14 1

PROTO_6:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Always open menu item activated:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Button clicked but menu stays open"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K4 [{["Size"], ["tag"] = "row align-x-center align-y-center"}]
        5 GETIMPORT                        R4 K7 [UDim2.new]
        7 LOADN                            R5 1
        8 LOADN                            R6 0
        9 LOADN                            R7 0
       10 LOADN                            R8 300
       11 CALL                             R4 4 1
       12 SETTABLEKS                       R4 R3 K1 ["Size"]
       14 DUPTABLE                         R4 K9 [{"Menu"}]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K0 ["createElement"]
       18 GETUPVAL                         R6 2
       19 DUPTABLE                         R7 K17 [{["isOpen"] = True, ["items"], ["size"], ["side"], ["align"], ["onActivated"]}]
       20 GETUPVAL                         R8 3
       21 SETTABLEKS                       R8 R7 K12 ["items"]
       23 GETTABLEKS                       R8 R0 K18 ["controls"]
       25 GETTABLEKS                       R8 R8 K13 ["size"]
       27 SETTABLEKS                       R8 R7 K13 ["size"]
       29 GETTABLEKS                       R8 R0 K18 ["controls"]
       31 GETTABLEKS                       R8 R8 K14 ["side"]
       33 SETTABLEKS                       R8 R7 K14 ["side"]
       35 GETTABLEKS                       R8 R0 K18 ["controls"]
       37 GETTABLEKS                       R8 R8 K15 ["align"]
       39 SETTABLEKS                       R8 R7 K15 ["align"]
       41 DUPCLOSURE                       R8 K19 [PROTO_6]
       42 SETTABLEKS                       R8 R7 K16 ["onActivated"]
       44 DUPTABLE                         R8 K21 [{"Button"}]
       45 GETUPVAL                         R9 0
       46 GETTABLEKS                       R9 R9 K0 ["createElement"]
       48 GETUPVAL                         R10 4
       49 DUPTABLE                         R11 K24 [{["text"] = "Always Open Menu", ["size"], ["onActivated"]}]
       50 GETUPVAL                         R12 5
       51 GETTABLEKS                       R12 R12 K25 ["Medium"]
       53 SETTABLEKS                       R12 R11 K13 ["size"]
       55 DUPCLOSURE                       R12 K26 [PROTO_7]
       56 SETTABLEKS                       R12 R11 K16 ["onActivated"]
       58 CALL                             R9 2 1
       59 SETTABLEKS                       R9 R8 K20 ["Button"]
       61 CALL                             R5 3 1
       62 SETTABLEKS                       R5 R4 K8 ["Menu"]
       64 CALL                             R1 3 -1
       65 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Menu item activated:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 0
        6 LOADB                            R2 0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["createElement"]
        8 GETUPVAL                         R4 1
        9 DUPTABLE                         R5 K5 [{["Size"], ["tag"] = "row align-x-center align-y-center"}]
       10 GETIMPORT                        R6 K8 [UDim2.new]
       12 LOADN                            R7 1
       13 LOADN                            R8 0
       14 LOADN                            R9 0
       15 LOADN                            R10 100
       16 CALL                             R6 4 1
       17 SETTABLEKS                       R6 R5 K2 ["Size"]
       19 DUPTABLE                         R6 K10 [{"Menu"}]
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R7 R7 K1 ["createElement"]
       23 GETUPVAL                         R8 2
       24 DUPTABLE                         R9 K18 [{"isOpen", "items", "size", "side", "align", "onPressedOutside", "onActivated"}]
       25 SETTABLEKS                       R1 R9 K11 ["isOpen"]
       27 GETUPVAL                         R10 3
       28 SETTABLEKS                       R10 R9 K12 ["items"]
       30 GETTABLEKS                       R10 R0 K19 ["controls"]
       32 GETTABLEKS                       R10 R10 K13 ["size"]
       34 SETTABLEKS                       R10 R9 K13 ["size"]
       36 GETTABLEKS                       R10 R0 K19 ["controls"]
       38 GETTABLEKS                       R10 R10 K14 ["side"]
       40 SETTABLEKS                       R10 R9 K14 ["side"]
       42 GETTABLEKS                       R10 R0 K19 ["controls"]
       44 GETTABLEKS                       R10 R10 K15 ["align"]
       46 SETTABLEKS                       R10 R9 K15 ["align"]
       48 NEWCLOSURE                       R10 P0
       49 CAPTURE                          VAL R2
       50 SETTABLEKS                       R10 R9 K16 ["onPressedOutside"]
       52 NEWCLOSURE                       R10 P1
       53 CAPTURE                          VAL R2
       54 SETTABLEKS                       R10 R9 K17 ["onActivated"]
       56 DUPTABLE                         R10 K21 [{"Button"}]
       57 GETUPVAL                         R11 0
       58 GETTABLEKS                       R11 R11 K1 ["createElement"]
       60 GETUPVAL                         R12 4
       61 DUPTABLE                         R13 K24 [{["text"] = "Open Menu", ["size"], ["onActivated"]}]
       62 GETUPVAL                         R14 5
       63 GETTABLEKS                       R14 R14 K25 ["Medium"]
       65 SETTABLEKS                       R14 R13 K13 ["size"]
       67 NEWCLOSURE                       R14 P2
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R1
       70 SETTABLEKS                       R14 R13 K17 ["onActivated"]
       72 CALL                             R11 2 1
       73 SETTABLEKS                       R11 R10 K20 ["Button"]
       75 CALL                             R7 3 1
       76 SETTABLEKS                       R7 R6 K9 ["Menu"]
       78 CALL                             R3 3 -1
       79 RETURN                           R3 -1

PROTO_13:
        0 DUPTABLE                         R1 K3 [{"id", "text", "isChecked"}]
        1 GETTABLEKS                       R2 R0 K0 ["id"]
        3 SETTABLEKS                       R2 R1 K0 ["id"]
        5 GETTABLEKS                       R2 R0 K1 ["text"]
        7 SETTABLEKS                       R2 R1 K1 ["text"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R4 R0 K0 ["id"]
       12 JUMPIFEQ                         R3 R4 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 SETTABLEKS                       R2 R1 K2 ["isChecked"]
       18 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["map"]
        3 GETUPVAL                         R1 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["useState"]
        8 GETUPVAL                         R5 1
        9 GETTABLEN                        R4 R5 1
       10 GETTABLEKS                       R4 R4 K1 ["id"]
       12 CALL                             R3 1 2
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K2 ["useMemo"]
       16 NEWCLOSURE                       R6 P0
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          VAL R3
       20 NEWTABLE                         R7 0 1
       22 MOVE                             R8 R3
       23 SETLIST                          R7 R8 1 [1]
       25 CALL                             R5 2 1
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K3 ["createElement"]
       29 GETUPVAL                         R7 3
       30 DUPTABLE                         R8 K7 [{["Size"], ["tag"] = "row align-x-center align-y-center"}]
       31 GETIMPORT                        R9 K10 [UDim2.new]
       33 LOADN                            R10 1
       34 LOADN                            R11 0
       35 LOADN                            R12 0
       36 LOADN                            R13 300
       37 CALL                             R9 4 1
       38 SETTABLEKS                       R9 R8 K4 ["Size"]
       40 DUPTABLE                         R9 K12 [{"Menu"}]
       41 GETUPVAL                         R10 0
       42 GETTABLEKS                       R10 R10 K3 ["createElement"]
       44 GETUPVAL                         R11 4
       45 DUPTABLE                         R12 K20 [{"isOpen", "items", "size", "side", "align", "onPressedOutside", "onActivated"}]
       46 SETTABLEKS                       R1 R12 K13 ["isOpen"]
       48 SETTABLEKS                       R5 R12 K14 ["items"]
       50 GETTABLEKS                       R13 R0 K21 ["controls"]
       52 GETTABLEKS                       R13 R13 K15 ["size"]
       54 SETTABLEKS                       R13 R12 K15 ["size"]
       56 GETTABLEKS                       R13 R0 K21 ["controls"]
       58 GETTABLEKS                       R13 R13 K16 ["side"]
       60 SETTABLEKS                       R13 R12 K16 ["side"]
       62 GETTABLEKS                       R13 R0 K21 ["controls"]
       64 GETTABLEKS                       R13 R13 K17 ["align"]
       66 SETTABLEKS                       R13 R12 K17 ["align"]
       68 NEWCLOSURE                       R13 P1
       69 CAPTURE                          VAL R2
       70 SETTABLEKS                       R13 R12 K18 ["onPressedOutside"]
       72 NEWCLOSURE                       R13 P2
       73 CAPTURE                          VAL R4
       74 SETTABLEKS                       R13 R12 K19 ["onActivated"]
       76 DUPTABLE                         R13 K23 [{"Button"}]
       77 GETUPVAL                         R14 0
       78 GETTABLEKS                       R14 R14 K3 ["createElement"]
       80 GETUPVAL                         R15 5
       81 DUPTABLE                         R16 K26 [{["text"] = "Selection Menu", ["size"], ["onActivated"]}]
       82 GETUPVAL                         R17 6
       83 GETTABLEKS                       R17 R17 K27 ["Medium"]
       85 SETTABLEKS                       R17 R16 K15 ["size"]
       87 NEWCLOSURE                       R17 P3
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R1
       90 SETTABLEKS                       R17 R16 K19 ["onActivated"]
       92 CALL                             R14 2 1
       93 SETTABLEKS                       R14 R13 K22 ["Button"]
       95 CALL                             R10 3 1
       96 SETTABLEKS                       R10 R9 K11 ["Menu"]
       98 CALL                             R6 3 -1
       99 RETURN                           R6 -1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_20:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Button menu item activated:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 0
        6 LOADB                            R2 0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_23:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Card menu item activated:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 0
        6 LOADB                            R2 0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["useState"]
        8 LOADB                            R4 0
        9 CALL                             R3 1 2
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K1 ["createElement"]
       13 GETUPVAL                         R6 1
       14 DUPTABLE                         R7 K5 [{["Size"], ["tag"] = "row align-x-center align-y-center gap-large"}]
       15 GETIMPORT                        R8 K8 [UDim2.new]
       17 LOADN                            R9 1
       18 LOADN                            R10 0
       19 LOADN                            R11 0
       20 LOADN                            R12 300
       21 CALL                             R8 4 1
       22 SETTABLEKS                       R8 R7 K2 ["Size"]
       24 DUPTABLE                         R8 K11 [{"ButtonMenu", "CardMenu"}]
       25 GETUPVAL                         R9 0
       26 GETTABLEKS                       R9 R9 K1 ["createElement"]
       28 GETUPVAL                         R10 2
       29 DUPTABLE                         R11 K19 [{"isOpen", "items", "size", "side", "align", "onPressedOutside", "onActivated"}]
       30 SETTABLEKS                       R1 R11 K12 ["isOpen"]
       32 GETUPVAL                         R12 3
       33 SETTABLEKS                       R12 R11 K13 ["items"]
       35 GETTABLEKS                       R12 R0 K20 ["controls"]
       37 GETTABLEKS                       R12 R12 K14 ["size"]
       39 SETTABLEKS                       R12 R11 K14 ["size"]
       41 GETTABLEKS                       R12 R0 K20 ["controls"]
       43 GETTABLEKS                       R12 R12 K15 ["side"]
       45 SETTABLEKS                       R12 R11 K15 ["side"]
       47 GETTABLEKS                       R12 R0 K20 ["controls"]
       49 GETTABLEKS                       R12 R12 K16 ["align"]
       51 SETTABLEKS                       R12 R11 K16 ["align"]
       53 NEWCLOSURE                       R12 P0
       54 CAPTURE                          VAL R2
       55 SETTABLEKS                       R12 R11 K17 ["onPressedOutside"]
       57 NEWCLOSURE                       R12 P1
       58 CAPTURE                          VAL R2
       59 SETTABLEKS                       R12 R11 K18 ["onActivated"]
       61 DUPTABLE                         R12 K22 [{"IconButton"}]
       62 GETUPVAL                         R13 0
       63 GETTABLEKS                       R13 R13 K1 ["createElement"]
       65 GETUPVAL                         R14 4
       66 DUPTABLE                         R15 K25 [{["icon"] = "icons/common/more", ["size"], ["onActivated"]}]
       67 GETUPVAL                         R16 5
       68 GETTABLEKS                       R16 R16 K26 ["Medium"]
       70 SETTABLEKS                       R16 R15 K14 ["size"]
       72 NEWCLOSURE                       R16 P2
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R1
       75 SETTABLEKS                       R16 R15 K18 ["onActivated"]
       77 CALL                             R13 2 1
       78 SETTABLEKS                       R13 R12 K21 ["IconButton"]
       80 CALL                             R9 3 1
       81 SETTABLEKS                       R9 R8 K9 ["ButtonMenu"]
       83 GETUPVAL                         R9 0
       84 GETTABLEKS                       R9 R9 K1 ["createElement"]
       86 GETUPVAL                         R10 2
       87 DUPTABLE                         R11 K19 [{"isOpen", "items", "size", "side", "align", "onPressedOutside", "onActivated"}]
       88 SETTABLEKS                       R3 R11 K12 ["isOpen"]
       90 GETUPVAL                         R12 3
       91 SETTABLEKS                       R12 R11 K13 ["items"]
       93 GETTABLEKS                       R12 R0 K20 ["controls"]
       95 GETTABLEKS                       R12 R12 K14 ["size"]
       97 SETTABLEKS                       R12 R11 K14 ["size"]
       99 GETTABLEKS                       R12 R0 K20 ["controls"]
      101 GETTABLEKS                       R12 R12 K15 ["side"]
      103 SETTABLEKS                       R12 R11 K15 ["side"]
      105 GETTABLEKS                       R12 R0 K20 ["controls"]
      107 GETTABLEKS                       R12 R12 K16 ["align"]
      109 SETTABLEKS                       R12 R11 K16 ["align"]
      111 NEWCLOSURE                       R12 P3
      112 CAPTURE                          VAL R4
      113 SETTABLEKS                       R12 R11 K17 ["onPressedOutside"]
      115 NEWCLOSURE                       R12 P4
      116 CAPTURE                          VAL R4
      117 SETTABLEKS                       R12 R11 K18 ["onActivated"]
      119 DUPTABLE                         R12 K28 [{"Card"}]
      120 GETUPVAL                         R13 0
      121 GETTABLEKS                       R13 R13 K1 ["createElement"]
      123 GETUPVAL                         R14 1
      124 DUPTABLE                         R15 K30 [{["tag"] = "bg-surface-100 padding-large auto-xy radius-medium stroke-neutral col gap-medium", ["onActivated"]}]
      125 NEWCLOSURE                       R16 P5
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R3
      128 SETTABLEKS                       R16 R15 K18 ["onActivated"]
      130 DUPTABLE                         R16 K33 [{"Title", "Subtitle"}]
      131 GETUPVAL                         R17 0
      132 GETTABLEKS                       R17 R17 K1 ["createElement"]
      134 GETUPVAL                         R18 6
      135 DUPTABLE                         R19 K37 [{["Text"] = "Card with Menu", ["tag"] = "auto-xy text-heading-medium"}]
      136 CALL                             R17 2 1
      137 SETTABLEKS                       R17 R16 K31 ["Title"]
      139 GETUPVAL                         R17 0
      140 GETTABLEKS                       R17 R17 K1 ["createElement"]
      142 GETUPVAL                         R18 6
      143 DUPTABLE                         R19 K40 [{["Text"] = "Click me to open menu", ["tag"] = "auto-xy text-body-small"}]
      144 CALL                             R17 2 1
      145 SETTABLEKS                       R17 R16 K32 ["Subtitle"]
      147 CALL                             R13 3 1
      148 SETTABLEKS                       R13 R12 K27 ["Card"]
      150 CALL                             R9 3 1
      151 SETTABLEKS                       R9 R8 K10 ["CardMenu"]
      153 CALL                             R5 3 -1
      154 RETURN                           R5 -1

PROTO_26:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_28:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Always open menu item activated:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["useState"]
        8 LOADB                            R3 0
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K2 ["createElement"]
       13 GETUPVAL                         R5 1
       14 DUPTABLE                         R6 K6 [{["Size"], ["tag"] = "row align-x-center align-y-center"}]
       15 GETIMPORT                        R7 K9 [UDim2.new]
       17 LOADN                            R8 1
       18 LOADN                            R9 0
       19 LOADN                            R10 0
       20 LOADN                            R11 300
       21 CALL                             R7 4 1
       22 SETTABLEKS                       R7 R6 K3 ["Size"]
       24 DUPTABLE                         R7 K12 [{"Anchor", "Menu"}]
       25 GETUPVAL                         R8 0
       26 GETTABLEKS                       R8 R8 K2 ["createElement"]
       28 GETUPVAL                         R9 2
       29 DUPTABLE                         R10 K18 [{["text"] = "Anchor outside of the menu component", ["size"], ["ref"], ["onActivated"]}]
       30 GETUPVAL                         R11 3
       31 GETTABLEKS                       R11 R11 K19 ["Medium"]
       33 SETTABLEKS                       R11 R10 K15 ["size"]
       35 SETTABLEKS                       R1 R10 K16 ["ref"]
       37 NEWCLOSURE                       R11 P0
       38 CAPTURE                          VAL R3
       39 SETTABLEKS                       R11 R10 K17 ["onActivated"]
       41 CALL                             R8 2 1
       42 SETTABLEKS                       R8 R7 K10 ["Anchor"]
       44 GETUPVAL                         R8 0
       45 GETTABLEKS                       R8 R8 K2 ["createElement"]
       47 GETUPVAL                         R9 4
       48 DUPTABLE                         R10 K26 [{"isOpen", "items", "size", "side", "align", "onPressedOutside", "onActivated", "anchorRef"}]
       49 SETTABLEKS                       R2 R10 K20 ["isOpen"]
       51 GETUPVAL                         R11 5
       52 SETTABLEKS                       R11 R10 K21 ["items"]
       54 GETTABLEKS                       R11 R0 K27 ["controls"]
       56 GETTABLEKS                       R11 R11 K15 ["size"]
       58 SETTABLEKS                       R11 R10 K15 ["size"]
       60 GETTABLEKS                       R11 R0 K27 ["controls"]
       62 GETTABLEKS                       R11 R11 K22 ["side"]
       64 SETTABLEKS                       R11 R10 K22 ["side"]
       66 GETTABLEKS                       R11 R0 K27 ["controls"]
       68 GETTABLEKS                       R11 R11 K23 ["align"]
       70 SETTABLEKS                       R11 R10 K23 ["align"]
       72 NEWCLOSURE                       R11 P1
       73 CAPTURE                          VAL R3
       74 SETTABLEKS                       R11 R10 K24 ["onPressedOutside"]
       76 DUPCLOSURE                       R11 K28 [PROTO_28]
       77 SETTABLEKS                       R11 R10 K17 ["onActivated"]
       79 SETTABLEKS                       R1 R10 K25 ["anchorRef"]
       81 CALL                             R8 2 1
       82 SETTABLEKS                       R8 R7 K11 ["Menu"]
       84 CALL                             R4 3 -1
       85 RETURN                           R4 -1

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [UDim.new]
        3 LOADN                            R2 0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K3 ["AbsoluteSize"]
        7 GETTABLEKS                       R3 R3 K4 ["X"]
        9 CALL                             R1 2 -1
       10 CALL                             R0 -1 0
       11 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R0
        8 GETUPVAL                         R2 1
        9 GETIMPORT                        R3 K3 [UDim.new]
       11 LOADN                            R4 0
       12 GETTABLEKS                       R5 R0 K4 ["AbsoluteSize"]
       14 GETTABLEKS                       R5 R5 K5 ["X"]
       16 CALL                             R3 2 -1
       17 CALL                             R2 -1 0
       18 LOADK                            R4 K4 ["AbsoluteSize"]
       19 NAMECALL                         R2 R0 K6 ["GetPropertyChangedSignal"]
       21 CALL                             R2 2 1
       22 MOVE                             R4 R1
       23 NAMECALL                         R2 R2 K7 ["Connect"]
       25 CALL                             R2 2 1
       26 NEWCLOSURE                       R3 P1
       27 CAPTURE                          VAL R2
       28 RETURN                           R3 1

PROTO_33:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_35:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Menu item activated:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 0
        6 LOADB                            R2 0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["useState"]
        8 LOADB                            R3 0
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K1 ["useState"]
       13 LOADNIL                          R5
       14 CALL                             R4 1 2
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K2 ["useLayoutEffect"]
       18 NEWCLOSURE                       R7 P0
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R5
       21 NEWTABLE                         R8 0 0
       23 CALL                             R6 2 0
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R6 R6 K3 ["createElement"]
       27 GETUPVAL                         R7 1
       28 DUPTABLE                         R8 K5 [{"Size"}]
       29 GETIMPORT                        R9 K8 [UDim2.new]
       31 LOADN                            R10 1
       32 LOADN                            R11 0
       33 LOADN                            R12 0
       34 LOADN                            R13 300
       35 CALL                             R9 4 1
       36 SETTABLEKS                       R9 R8 K4 ["Size"]
       38 DUPTABLE                         R9 K11 [{"Anchor", "Menu"}]
       39 GETUPVAL                         R10 0
       40 GETTABLEKS                       R10 R10 K3 ["createElement"]
       42 GETUPVAL                         R11 2
       43 DUPTABLE                         R12 K18 [{["text"] = "External anchor", ["size"], ["width"], ["ref"], ["onActivated"]}]
       44 GETUPVAL                         R13 3
       45 GETTABLEKS                       R13 R13 K19 ["Medium"]
       47 SETTABLEKS                       R13 R12 K14 ["size"]
       49 GETIMPORT                        R13 K21 [UDim.new]
       51 LOADN                            R14 0
       52 LOADN                            R15 220
       53 CALL                             R13 2 1
       54 SETTABLEKS                       R13 R12 K15 ["width"]
       56 SETTABLEKS                       R1 R12 K16 ["ref"]
       58 NEWCLOSURE                       R13 P1
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R2
       61 SETTABLEKS                       R13 R12 K17 ["onActivated"]
       63 CALL                             R10 2 1
       64 SETTABLEKS                       R10 R9 K9 ["Anchor"]
       66 GETUPVAL                         R10 0
       67 GETTABLEKS                       R10 R10 K3 ["createElement"]
       69 GETUPVAL                         R11 4
       70 DUPTABLE                         R12 K28 [{"isOpen", "items", "size", "side", "align", "width", "onPressedOutside", "onActivated", "anchorRef"}]
       71 SETTABLEKS                       R2 R12 K22 ["isOpen"]
       73 GETUPVAL                         R13 5
       74 SETTABLEKS                       R13 R12 K23 ["items"]
       76 GETTABLEKS                       R13 R0 K29 ["controls"]
       78 GETTABLEKS                       R13 R13 K14 ["size"]
       80 SETTABLEKS                       R13 R12 K14 ["size"]
       82 GETTABLEKS                       R13 R0 K29 ["controls"]
       84 GETTABLEKS                       R13 R13 K24 ["side"]
       86 SETTABLEKS                       R13 R12 K24 ["side"]
       88 GETTABLEKS                       R13 R0 K29 ["controls"]
       90 GETTABLEKS                       R13 R13 K25 ["align"]
       92 SETTABLEKS                       R13 R12 K25 ["align"]
       94 SETTABLEKS                       R4 R12 K15 ["width"]
       96 NEWCLOSURE                       R13 P2
       97 CAPTURE                          VAL R3
       98 SETTABLEKS                       R13 R12 K26 ["onPressedOutside"]
      100 NEWCLOSURE                       R13 P3
      101 CAPTURE                          VAL R3
      102 SETTABLEKS                       R13 R12 K17 ["onActivated"]
      104 SETTABLEKS                       R1 R12 K27 ["anchorRef"]
      106 CALL                             R10 2 1
      107 SETTABLEKS                       R10 R9 K10 ["Menu"]
      109 CALL                             R6 3 -1
      110 RETURN                           R6 -1

PROTO_37:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["useState"]
        8 LOADK                            R4 K1 ["a1"]
        9 CALL                             R3 1 2
       10 NEWTABLE                         R5 0 3
       12 DUPTABLE                         R6 K5 [{["title"] = "First title", ["items"]}]
       13 NEWTABLE                         R7 0 2
       15 DUPTABLE                         R8 K12 [{["id"] = "a1", ["icon"] = "icons/common/robux", ["text"] = "Alpha 1", ["isChecked"]}]
       16 JUMPIFEQKS                       R3 K1 ["a1"] ; [+2]
       18 LOADB                            R9 0 +1
       19 LOADB                            R9 1
       20 SETTABLEKS                       R9 R8 K11 ["isChecked"]
       22 DUPTABLE                         R9 K15 [{["id"] = "a2", ["text"] = "Alpha 2", ["isChecked"]}]
       23 JUMPIFEQKS                       R3 K13 ["a2"] ; [+2]
       25 LOADB                            R10 0 +1
       26 LOADB                            R10 1
       27 SETTABLEKS                       R10 R9 K11 ["isChecked"]
       29 SETLIST                          R7 R8 2 [1]
       31 SETTABLEKS                       R7 R6 K4 ["items"]
       33 DUPTABLE                         R7 K16 [{"items"}]
       34 NEWTABLE                         R8 0 2
       36 DUPTABLE                         R9 K19 [{["id"] = "b1", ["text"] = "Beta 1", ["isChecked"]}]
       37 JUMPIFEQKS                       R3 K17 ["b1"] ; [+2]
       39 LOADB                            R10 0 +1
       40 LOADB                            R10 1
       41 SETTABLEKS                       R10 R9 K11 ["isChecked"]
       43 DUPTABLE                         R10 K24 [{["id"] = "b2", ["isDisabled"] = True, ["text"] = "Beta 2 (disabled)", ["isChecked"]}]
       44 JUMPIFEQKS                       R3 K20 ["b2"] ; [+2]
       46 LOADB                            R11 0 +1
       47 LOADB                            R11 1
       48 SETTABLEKS                       R11 R10 K11 ["isChecked"]
       50 SETLIST                          R8 R9 2 [1]
       52 SETTABLEKS                       R8 R7 K4 ["items"]
       54 DUPTABLE                         R8 K16 [{"items"}]
       55 NEWTABLE                         R9 0 1
       57 DUPTABLE                         R10 K27 [{["id"] = "c1", ["text"] = "Untitled group item", ["isChecked"]}]
       58 JUMPIFEQKS                       R3 K25 ["c1"] ; [+2]
       60 LOADB                            R11 0 +1
       61 LOADB                            R11 1
       62 SETTABLEKS                       R11 R10 K11 ["isChecked"]
       64 SETLIST                          R9 R10 1 [1]
       66 SETTABLEKS                       R9 R8 K4 ["items"]
       68 SETLIST                          R5 R6 3 [1]
       70 GETUPVAL                         R6 0
       71 GETTABLEKS                       R6 R6 K28 ["createElement"]
       73 GETUPVAL                         R7 1
       74 DUPTABLE                         R8 K32 [{["Size"], ["tag"] = "row align-x-center align-y-center"}]
       75 GETIMPORT                        R9 K35 [UDim2.new]
       77 LOADN                            R10 1
       78 LOADN                            R11 0
       79 LOADN                            R12 0
       80 LOADN                            R13 100
       81 CALL                             R9 4 1
       82 SETTABLEKS                       R9 R8 K29 ["Size"]
       84 DUPTABLE                         R9 K37 [{"Menu"}]
       85 GETUPVAL                         R10 0
       86 GETTABLEKS                       R10 R10 K28 ["createElement"]
       88 GETUPVAL                         R11 2
       89 DUPTABLE                         R12 K44 [{"isOpen", "items", "size", "side", "align", "onPressedOutside", "onActivated"}]
       90 SETTABLEKS                       R1 R12 K38 ["isOpen"]
       92 SETTABLEKS                       R5 R12 K4 ["items"]
       94 GETTABLEKS                       R13 R0 K45 ["controls"]
       96 GETTABLEKS                       R13 R13 K39 ["size"]
       98 SETTABLEKS                       R13 R12 K39 ["size"]
      100 GETTABLEKS                       R13 R0 K45 ["controls"]
      102 GETTABLEKS                       R13 R13 K40 ["side"]
      104 SETTABLEKS                       R13 R12 K40 ["side"]
      106 GETTABLEKS                       R13 R0 K45 ["controls"]
      108 GETTABLEKS                       R13 R13 K41 ["align"]
      110 SETTABLEKS                       R13 R12 K41 ["align"]
      112 NEWCLOSURE                       R13 P0
      113 CAPTURE                          VAL R2
      114 SETTABLEKS                       R13 R12 K42 ["onPressedOutside"]
      116 NEWCLOSURE                       R13 P1
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R4
      119 SETTABLEKS                       R13 R12 K43 ["onActivated"]
      121 DUPTABLE                         R13 K47 [{"Button"}]
      122 GETUPVAL                         R14 0
      123 GETTABLEKS                       R14 R14 K28 ["createElement"]
      125 GETUPVAL                         R15 3
      126 DUPTABLE                         R16 K49 [{["text"] = "Open Menu", ["size"], ["onActivated"]}]
      127 GETUPVAL                         R17 4
      128 GETTABLEKS                       R17 R17 K50 ["Medium"]
      130 SETTABLEKS                       R17 R16 K39 ["size"]
      132 NEWCLOSURE                       R17 P2
      133 CAPTURE                          VAL R2
      134 CAPTURE                          VAL R1
      135 SETTABLEKS                       R17 R16 K43 ["onActivated"]
      137 CALL                             R14 2 1
      138 SETTABLEKS                       R14 R13 K46 ["Button"]
      140 CALL                             R10 3 1
      141 SETTABLEKS                       R10 R9 K36 ["Menu"]
      143 CALL                             R6 3 -1
      144 RETURN                           R6 -1

PROTO_41:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 3
        5 CALL                             R0 2 1
        6 RETURN                           R0 1

PROTO_42:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_43:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Menu item activated by parent:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 0
        6 LOADB                            R2 0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETTABLEKS                       R3 R0 K1 ["controls"]
        7 GETTABLEKS                       R3 R3 K2 ["maxDepth"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K3 ["useMemo"]
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R2
       16 CAPTURE                          VAL R3
       17 NEWTABLE                         R6 0 1
       19 MOVE                             R7 R3
       20 SETLIST                          R6 R7 1 [1]
       22 CALL                             R4 2 1
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K4 ["createElement"]
       26 GETUPVAL                         R6 3
       27 DUPTABLE                         R7 K8 [{["Size"], ["tag"] = "row align-x-center align-y-center"}]
       28 GETIMPORT                        R8 K11 [UDim2.new]
       30 LOADN                            R9 1
       31 LOADN                            R10 0
       32 LOADN                            R11 0
       33 LOADN                            R12 600
       34 CALL                             R8 4 1
       35 SETTABLEKS                       R8 R7 K5 ["Size"]
       37 DUPTABLE                         R8 K13 [{"Menu"}]
       38 GETUPVAL                         R9 0
       39 GETTABLEKS                       R9 R9 K4 ["createElement"]
       41 GETUPVAL                         R10 4
       42 DUPTABLE                         R11 K21 [{"isOpen", "items", "size", "side", "align", "onPressedOutside", "onActivated"}]
       43 SETTABLEKS                       R1 R11 K14 ["isOpen"]
       45 SETTABLEKS                       R4 R11 K15 ["items"]
       47 GETTABLEKS                       R12 R0 K1 ["controls"]
       49 GETTABLEKS                       R12 R12 K16 ["size"]
       51 SETTABLEKS                       R12 R11 K16 ["size"]
       53 GETTABLEKS                       R12 R0 K1 ["controls"]
       55 GETTABLEKS                       R12 R12 K17 ["side"]
       57 SETTABLEKS                       R12 R11 K17 ["side"]
       59 GETTABLEKS                       R12 R0 K1 ["controls"]
       61 GETTABLEKS                       R12 R12 K18 ["align"]
       63 SETTABLEKS                       R12 R11 K18 ["align"]
       65 NEWCLOSURE                       R12 P1
       66 CAPTURE                          VAL R2
       67 SETTABLEKS                       R12 R11 K19 ["onPressedOutside"]
       69 NEWCLOSURE                       R12 P2
       70 CAPTURE                          VAL R2
       71 SETTABLEKS                       R12 R11 K20 ["onActivated"]
       73 DUPTABLE                         R12 K23 [{"Button"}]
       74 GETUPVAL                         R13 0
       75 GETTABLEKS                       R13 R13 K4 ["createElement"]
       77 GETUPVAL                         R14 5
       78 DUPTABLE                         R15 K26 [{["text"] = "Open Menu", ["size"], ["onActivated"]}]
       79 GETUPVAL                         R16 6
       80 GETTABLEKS                       R16 R16 K27 ["Medium"]
       82 SETTABLEKS                       R16 R15 K16 ["size"]
       84 NEWCLOSURE                       R16 P3
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R1
       87 SETTABLEKS                       R16 R15 K20 ["onActivated"]
       89 CALL                             R13 2 1
       90 SETTABLEKS                       R13 R12 K22 ["Button"]
       92 CALL                             R9 3 1
       93 SETTABLEKS                       R9 R8 K12 ["Menu"]
       95 CALL                             R5 3 -1
       96 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Utility"]
       23 GETTABLEKS                       R5 R5 K10 ["Flags"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Components"]
       30 GETTABLEKS                       R6 R6 K12 ["Button"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K11 ["Components"]
       37 GETTABLEKS                       R7 R7 K13 ["IconButton"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K14 ["Enums"]
       44 GETTABLEKS                       R8 R8 K15 ["IconSize"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K14 ["Enums"]
       51 GETTABLEKS                       R9 R9 K16 ["InputSize"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K11 ["Components"]
       58 GETTABLEKS                       R10 R10 K17 ["Menu"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K14 ["Enums"]
       65 GETTABLEKS                       R11 R11 K18 ["PopoverAlign"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R12 R0 K14 ["Enums"]
       72 GETTABLEKS                       R12 R12 K19 ["PopoverSide"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [require]
       77 GETTABLEKS                       R13 R0 K11 ["Components"]
       79 GETTABLEKS                       R13 R13 K20 ["Text"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K6 [require]
       84 GETTABLEKS                       R14 R0 K11 ["Components"]
       86 GETTABLEKS                       R14 R14 K21 ["View"]
       88 CALL                             R13 1 1
       89 NEWTABLE                         R14 0 4
       91 DUPTABLE                         R15 K28 [{["id"] = "new", ["icon"] = "icons/actions/edit/add", ["text"] = "New"}]
       92 DUPTABLE                         R16 K32 [{["id"] = "edit", ["icon"] = "icons/actions/edit/edit", ["text"] = "Edit"}]
       93 DUPTABLE                         R17 K36 [{["id"] = "copy", ["icon"] = "icons/actions/edit/copy", ["text"] = "Copy"}]
       94 DUPTABLE                         R18 K42 [{["id"] = "delete", ["icon"] = "icons/actions/edit/delete", ["text"] = "Delete", ["isDisabled"] = True}]
       95 SETLIST                          R14 R15 4 [1]
       97 NEWTABLE                         R15 0 3
       99 DUPTABLE                         R16 K45 [{["id"] = "r15", ["text"] = "R15 Only"}]
      100 DUPTABLE                         R17 K48 [{["id"] = "r6", ["text"] = "R6 Only"}]
      101 DUPTABLE                         R18 K51 [{["id"] = "choice", ["text"] = "Player Choice"}]
      102 SETLIST                          R15 R16 3 [1]
      104 DUPCLOSURE                       R16 K52 [PROTO_0]
      105 CAPTURE                          VAL R16
      106 DUPCLOSURE                       R17 K53 [PROTO_1]
      107 CAPTURE                          VAL R16
      108 DUPCLOSURE                       R18 K54 [PROTO_5]
      109 DUPTABLE                         R19 K59 [{["summary"] = "Menu - A popover-based menu component that combines Popover with InternalMenu", ["stories"], ["controls"]}]
      110 NEWTABLE                         R20 0 8
      112 DUPTABLE                         R21 K63 [{["name"] = "Always Open", ["story"]}]
      113 DUPCLOSURE                       R22 K64 [PROTO_8]
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R13
      116 CAPTURE                          VAL R9
      117 CAPTURE                          VAL R14
      118 CAPTURE                          VAL R5
      119 CAPTURE                          VAL R8
      120 SETTABLEKS                       R22 R21 K62 ["story"]
      122 DUPTABLE                         R22 K66 [{["name"] = "Basic Menu", ["story"]}]
      123 DUPCLOSURE                       R23 K67 [PROTO_12]
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R13
      126 CAPTURE                          VAL R9
      127 CAPTURE                          VAL R14
      128 CAPTURE                          VAL R5
      129 CAPTURE                          VAL R8
      130 SETTABLEKS                       R23 R22 K62 ["story"]
      132 DUPTABLE                         R23 K69 [{["name"] = "Selection Menu", ["story"]}]
      133 DUPCLOSURE                       R24 K70 [PROTO_18]
      134 CAPTURE                          VAL R3
      135 CAPTURE                          VAL R15
      136 CAPTURE                          VAL R2
      137 CAPTURE                          VAL R13
      138 CAPTURE                          VAL R9
      139 CAPTURE                          VAL R5
      140 CAPTURE                          VAL R8
      141 SETTABLEKS                       R24 R23 K62 ["story"]
      143 DUPTABLE                         R24 K72 [{["name"] = "Different Anchors", ["story"]}]
      144 DUPCLOSURE                       R25 K73 [PROTO_25]
      145 CAPTURE                          VAL R3
      146 CAPTURE                          VAL R13
      147 CAPTURE                          VAL R9
      148 CAPTURE                          VAL R14
      149 CAPTURE                          VAL R6
      150 CAPTURE                          VAL R7
      151 CAPTURE                          VAL R12
      152 SETTABLEKS                       R25 R24 K62 ["story"]
      154 DUPTABLE                         R25 K75 [{["name"] = "Reference anchor", ["story"]}]
      155 DUPCLOSURE                       R26 K76 [PROTO_29]
      156 CAPTURE                          VAL R3
      157 CAPTURE                          VAL R13
      158 CAPTURE                          VAL R5
      159 CAPTURE                          VAL R8
      160 CAPTURE                          VAL R9
      161 CAPTURE                          VAL R14
      162 SETTABLEKS                       R26 R25 K62 ["story"]
      164 DUPTABLE                         R26 K78 [{["name"] = "Match anchorRef width", ["story"]}]
      165 DUPCLOSURE                       R27 K79 [PROTO_36]
      166 CAPTURE                          VAL R3
      167 CAPTURE                          VAL R13
      168 CAPTURE                          VAL R5
      169 CAPTURE                          VAL R8
      170 CAPTURE                          VAL R9
      171 CAPTURE                          VAL R14
      172 SETTABLEKS                       R27 R26 K62 ["story"]
      174 DUPTABLE                         R27 K81 [{["name"] = "Grouped", ["story"]}]
      175 DUPCLOSURE                       R28 K82 [PROTO_40]
      176 CAPTURE                          VAL R3
      177 CAPTURE                          VAL R13
      178 CAPTURE                          VAL R9
      179 CAPTURE                          VAL R5
      180 CAPTURE                          VAL R8
      181 SETTABLEKS                       R28 R27 K62 ["story"]
      183 GETTABLEKS                       R29 R4 K83 ["FoundationBaseMenuSubmenuSupport"]
      185 JUMPIFNOT                        R29 ; [+12]
      186 DUPTABLE                         R28 K85 [{["name"] = "Nested Submenus", ["story"]}]
      187 DUPCLOSURE                       R29 K86 [PROTO_45]
      188 CAPTURE                          VAL R3
      189 CAPTURE                          VAL R17
      190 CAPTURE                          VAL R18
      191 CAPTURE                          VAL R13
      192 CAPTURE                          VAL R9
      193 CAPTURE                          VAL R5
      194 CAPTURE                          VAL R8
      195 SETTABLEKS                       R29 R28 K62 ["story"]
      197 JUMP                             ; [+2]
      198 NEWTABLE                         R28 0 0
      200 SETLIST                          R20 R21 8 [1]
      202 SETTABLEKS                       R20 R19 K57 ["stories"]
      204 DUPTABLE                         R20 K91 [{"size", "side", "align", "maxDepth"}]
      205 GETTABLEKS                       R21 R2 K92 ["values"]
      207 MOVE                             R22 R8
      208 CALL                             R21 1 1
      209 SETTABLEKS                       R21 R20 K87 ["size"]
      211 NEWTABLE                         R21 0 4
      213 GETTABLEKS                       R22 R11 K93 ["Bottom"]
      215 GETTABLEKS                       R23 R11 K94 ["Top"]
      217 GETTABLEKS                       R24 R11 K95 ["Left"]
      219 GETTABLEKS                       R25 R11 K96 ["Right"]
      221 SETLIST                          R21 R22 4 [1]
      223 SETTABLEKS                       R21 R20 K88 ["side"]
      225 GETTABLEKS                       R21 R2 K92 ["values"]
      227 MOVE                             R22 R10
      228 CALL                             R21 1 1
      229 SETTABLEKS                       R21 R20 K89 ["align"]
      231 NEWTABLE                         R21 0 3
      233 LOADN                            R22 3
      234 LOADN                            R23 4
      235 LOADN                            R24 5
      236 SETLIST                          R21 R22 3 [1]
      238 SETTABLEKS                       R21 R20 K90 ["maxDepth"]
      240 SETTABLEKS                       R20 R19 K58 ["controls"]
      242 RETURN                           R19 1
