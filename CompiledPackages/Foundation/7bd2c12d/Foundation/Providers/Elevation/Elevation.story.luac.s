PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Root"]
        6 DUPTABLE                         R3 K3 [{"isOpen"}]
        7 GETTABLEKS                       R4 R0 K2 ["isOpen"]
        9 SETTABLEKS                       R4 R3 K2 ["isOpen"]
       11 DUPTABLE                         R4 K6 [{"Anchor", "Content"}]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K0 ["createElement"]
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R6 R6 K4 ["Anchor"]
       18 DUPTABLE                         R7 K9 [{["LayoutOrder"] = 2}]
       19 GETUPVAL                         R8 0
       20 GETTABLEKS                       R8 R8 K0 ["createElement"]
       22 GETUPVAL                         R9 2
       23 DUPTABLE                         R10 K14 [{["icon"] = "reactions/heart", ["onActivated"], ["size"]}]
       24 GETTABLEKS                       R11 R0 K15 ["toggle"]
       26 SETTABLEKS                       R11 R10 K12 ["onActivated"]
       28 GETUPVAL                         R11 3
       29 GETTABLEKS                       R11 R11 K16 ["Medium"]
       31 SETTABLEKS                       R11 R10 K13 ["size"]
       33 CALL                             R8 2 -1
       34 CALL                             R5 -1 1
       35 SETTABLEKS                       R5 R4 K4 ["Anchor"]
       37 GETUPVAL                         R5 0
       38 GETTABLEKS                       R5 R5 K0 ["createElement"]
       40 GETUPVAL                         R6 1
       41 GETTABLEKS                       R6 R6 K5 ["Content"]
       43 DUPTABLE                         R7 K19 [{"align", "side"}]
       44 GETUPVAL                         R8 4
       45 GETTABLEKS                       R8 R8 K20 ["Start"]
       47 SETTABLEKS                       R8 R7 K17 ["align"]
       49 GETUPVAL                         R8 5
       50 GETTABLEKS                       R8 R8 K21 ["Top"]
       52 SETTABLEKS                       R8 R7 K18 ["side"]
       54 GETUPVAL                         R8 0
       55 GETTABLEKS                       R8 R8 K0 ["createElement"]
       57 GETUPVAL                         R9 6
       58 DUPTABLE                         R10 K24 [{["tag"] = "col gap-small padding-medium auto-xy"}]
       59 DUPTABLE                         R11 K27 [{"Title", "Subtitle"}]
       60 GETUPVAL                         R12 0
       61 GETTABLEKS                       R12 R12 K0 ["createElement"]
       63 GETUPVAL                         R13 7
       64 DUPTABLE                         R14 K30 [{["Text"], ["tag"] = "auto-xy text-title-medium content-emphasis"}]
       65 GETTABLEKS                       R15 R0 K31 ["title"]
       67 SETTABLEKS                       R15 R14 K28 ["Text"]
       69 CALL                             R12 2 1
       70 SETTABLEKS                       R12 R11 K25 ["Title"]
       72 GETUPVAL                         R12 0
       73 GETTABLEKS                       R12 R12 K0 ["createElement"]
       75 GETUPVAL                         R13 7
       76 DUPTABLE                         R14 K33 [{["Text"], ["tag"] = "auto-xy text-body-small"}]
       77 GETTABLEKS                       R15 R0 K34 ["subtitle"]
       79 SETTABLEKS                       R15 R14 K28 ["Text"]
       81 CALL                             R12 2 1
       82 SETTABLEKS                       R12 R11 K26 ["Subtitle"]
       84 CALL                             R8 3 -1
       85 CALL                             R5 -1 1
       86 SETTABLEKS                       R5 R4 K5 ["Content"]
       88 CALL                             R1 3 -1
       89 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R0 2
        7 LOADB                            R1 0
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 3
       10 LOADB                            R1 0
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+3]
        6 GETUPVAL                         R0 2
        7 LOADB                            R1 0
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["useState"]
        8 LOADB                            R3 0
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K0 ["useState"]
       13 LOADB                            R5 0
       14 CALL                             R4 1 2
       15 NEWCLOSURE                       R6 P0
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R3
       19 CAPTURE                          VAL R5
       20 NEWCLOSURE                       R7 P1
       21 CAPTURE                          VAL R3
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R5
       24 NEWCLOSURE                       R8 P2
       25 CAPTURE                          VAL R5
       26 CAPTURE                          VAL R4
       27 GETUPVAL                         R9 0
       28 GETTABLEKS                       R9 R9 K1 ["createElement"]
       30 GETUPVAL                         R10 1
       31 DUPTABLE                         R11 K4 [{["tag"] = "col auto-xy gap-medium"}]
       32 DUPTABLE                         R12 K6 [{"Popover1"}]
       33 GETUPVAL                         R13 0
       34 GETTABLEKS                       R13 R13 K1 ["createElement"]
       36 GETUPVAL                         R14 2
       37 GETTABLEKS                       R14 R14 K7 ["Root"]
       39 DUPTABLE                         R15 K9 [{"isOpen"}]
       40 SETTABLEKS                       R0 R15 K8 ["isOpen"]
       42 DUPTABLE                         R16 K12 [{"Anchor", "Content"}]
       43 GETUPVAL                         R17 0
       44 GETTABLEKS                       R17 R17 K1 ["createElement"]
       46 GETUPVAL                         R18 2
       47 GETTABLEKS                       R18 R18 K10 ["Anchor"]
       49 LOADNIL                          R19
       50 GETUPVAL                         R20 0
       51 GETTABLEKS                       R20 R20 K1 ["createElement"]
       53 GETUPVAL                         R21 3
       54 DUPTABLE                         R22 K17 [{["text"] = "Open First Popover", ["onActivated"], ["variant"]}]
       55 SETTABLEKS                       R6 R22 K15 ["onActivated"]
       57 GETUPVAL                         R23 4
       58 GETTABLEKS                       R23 R23 K18 ["Emphasis"]
       60 SETTABLEKS                       R23 R22 K16 ["variant"]
       62 CALL                             R20 2 -1
       63 CALL                             R17 -1 1
       64 SETTABLEKS                       R17 R16 K10 ["Anchor"]
       66 GETUPVAL                         R17 0
       67 GETTABLEKS                       R17 R17 K1 ["createElement"]
       69 GETUPVAL                         R18 2
       70 GETTABLEKS                       R18 R18 K11 ["Content"]
       72 DUPTABLE                         R19 K21 [{"align", "side"}]
       73 GETUPVAL                         R20 5
       74 GETTABLEKS                       R20 R20 K22 ["Start"]
       76 SETTABLEKS                       R20 R19 K19 ["align"]
       78 GETUPVAL                         R20 6
       79 GETTABLEKS                       R20 R20 K23 ["Right"]
       81 SETTABLEKS                       R20 R19 K20 ["side"]
       83 GETUPVAL                         R20 0
       84 GETTABLEKS                       R20 R20 K1 ["createElement"]
       86 GETUPVAL                         R21 1
       87 DUPTABLE                         R22 K25 [{["tag"] = "col gap-small padding-medium auto-xy"}]
       88 DUPTABLE                         R23 K29 [{"Title", "Description", "Popover2"}]
       89 GETUPVAL                         R24 0
       90 GETTABLEKS                       R24 R24 K1 ["createElement"]
       92 GETUPVAL                         R25 7
       93 DUPTABLE                         R26 K33 [{["Text"] = "First Popover", ["tag"] = "auto-xy text-title-medium content-emphasis"}]
       94 CALL                             R24 2 1
       95 SETTABLEKS                       R24 R23 K26 ["Title"]
       97 GETUPVAL                         R24 0
       98 GETTABLEKS                       R24 R24 K1 ["createElement"]
      100 GETUPVAL                         R25 7
      101 DUPTABLE                         R26 K36 [{["Text"] = "Click below to open the second popover", ["tag"] = "auto-xy text-body-small"}]
      102 CALL                             R24 2 1
      103 SETTABLEKS                       R24 R23 K27 ["Description"]
      105 GETUPVAL                         R24 0
      106 GETTABLEKS                       R24 R24 K1 ["createElement"]
      108 GETUPVAL                         R25 2
      109 GETTABLEKS                       R25 R25 K7 ["Root"]
      111 DUPTABLE                         R26 K9 [{"isOpen"}]
      112 SETTABLEKS                       R2 R26 K8 ["isOpen"]
      114 DUPTABLE                         R27 K12 [{"Anchor", "Content"}]
      115 GETUPVAL                         R28 0
      116 GETTABLEKS                       R28 R28 K1 ["createElement"]
      118 GETUPVAL                         R29 2
      119 GETTABLEKS                       R29 R29 K10 ["Anchor"]
      121 LOADNIL                          R30
      122 GETUPVAL                         R31 0
      123 GETTABLEKS                       R31 R31 K1 ["createElement"]
      125 GETUPVAL                         R32 3
      126 DUPTABLE                         R33 K39 [{["text"] = "Open Second Popover", ["onActivated"], ["size"]}]
      127 SETTABLEKS                       R7 R33 K15 ["onActivated"]
      129 GETUPVAL                         R34 8
      130 GETTABLEKS                       R34 R34 K40 ["Small"]
      132 SETTABLEKS                       R34 R33 K38 ["size"]
      134 CALL                             R31 2 -1
      135 CALL                             R28 -1 1
      136 SETTABLEKS                       R28 R27 K10 ["Anchor"]
      138 GETUPVAL                         R28 0
      139 GETTABLEKS                       R28 R28 K1 ["createElement"]
      141 GETUPVAL                         R29 2
      142 GETTABLEKS                       R29 R29 K11 ["Content"]
      144 DUPTABLE                         R30 K21 [{"align", "side"}]
      145 GETUPVAL                         R31 5
      146 GETTABLEKS                       R31 R31 K22 ["Start"]
      148 SETTABLEKS                       R31 R30 K19 ["align"]
      150 GETUPVAL                         R31 6
      151 GETTABLEKS                       R31 R31 K23 ["Right"]
      153 SETTABLEKS                       R31 R30 K20 ["side"]
      155 GETUPVAL                         R31 0
      156 GETTABLEKS                       R31 R31 K1 ["createElement"]
      158 GETUPVAL                         R32 1
      159 DUPTABLE                         R33 K25 [{["tag"] = "col gap-small padding-medium auto-xy"}]
      160 DUPTABLE                         R34 K42 [{"Title", "Description", "Popover3"}]
      161 GETUPVAL                         R35 0
      162 GETTABLEKS                       R35 R35 K1 ["createElement"]
      164 GETUPVAL                         R36 7
      165 DUPTABLE                         R37 K44 [{["Text"] = "Second Popover", ["tag"] = "auto-xy text-title-medium content-emphasis"}]
      166 CALL                             R35 2 1
      167 SETTABLEKS                       R35 R34 K26 ["Title"]
      169 GETUPVAL                         R35 0
      170 GETTABLEKS                       R35 R35 K1 ["createElement"]
      172 GETUPVAL                         R36 7
      173 DUPTABLE                         R37 K46 [{["Text"] = "One more level to go!", ["tag"] = "auto-xy text-body-small"}]
      174 CALL                             R35 2 1
      175 SETTABLEKS                       R35 R34 K27 ["Description"]
      177 GETUPVAL                         R35 0
      178 GETTABLEKS                       R35 R35 K1 ["createElement"]
      180 GETUPVAL                         R36 2
      181 GETTABLEKS                       R36 R36 K7 ["Root"]
      183 DUPTABLE                         R37 K9 [{"isOpen"}]
      184 SETTABLEKS                       R4 R37 K8 ["isOpen"]
      186 DUPTABLE                         R38 K12 [{"Anchor", "Content"}]
      187 GETUPVAL                         R39 0
      188 GETTABLEKS                       R39 R39 K1 ["createElement"]
      190 GETUPVAL                         R40 2
      191 GETTABLEKS                       R40 R40 K10 ["Anchor"]
      193 LOADNIL                          R41
      194 GETUPVAL                         R42 0
      195 GETTABLEKS                       R42 R42 K1 ["createElement"]
      197 GETUPVAL                         R43 3
      198 DUPTABLE                         R44 K48 [{["text"] = "Open Final Popover", ["onActivated"], ["size"]}]
      199 SETTABLEKS                       R8 R44 K15 ["onActivated"]
      201 GETUPVAL                         R45 8
      202 GETTABLEKS                       R45 R45 K40 ["Small"]
      204 SETTABLEKS                       R45 R44 K38 ["size"]
      206 CALL                             R42 2 -1
      207 CALL                             R39 -1 1
      208 SETTABLEKS                       R39 R38 K10 ["Anchor"]
      210 GETUPVAL                         R39 0
      211 GETTABLEKS                       R39 R39 K1 ["createElement"]
      213 GETUPVAL                         R40 2
      214 GETTABLEKS                       R40 R40 K11 ["Content"]
      216 DUPTABLE                         R41 K21 [{"align", "side"}]
      217 GETUPVAL                         R42 5
      218 GETTABLEKS                       R42 R42 K22 ["Start"]
      220 SETTABLEKS                       R42 R41 K19 ["align"]
      222 GETUPVAL                         R42 6
      223 GETTABLEKS                       R42 R42 K23 ["Right"]
      225 SETTABLEKS                       R42 R41 K20 ["side"]
      227 GETUPVAL                         R42 0
      228 GETTABLEKS                       R42 R42 K1 ["createElement"]
      230 GETUPVAL                         R43 1
      231 DUPTABLE                         R44 K25 [{["tag"] = "col gap-small padding-medium auto-xy"}]
      232 DUPTABLE                         R45 K49 [{"Title", "Description"}]
      233 GETUPVAL                         R46 0
      234 GETTABLEKS                       R46 R46 K1 ["createElement"]
      236 GETUPVAL                         R47 7
      237 DUPTABLE                         R48 K51 [{["Text"] = "Final Popover", ["tag"] = "auto-xy text-title-medium content-emphasis"}]
      238 CALL                             R46 2 1
      239 SETTABLEKS                       R46 R45 K26 ["Title"]
      241 GETUPVAL                         R46 0
      242 GETTABLEKS                       R46 R46 K1 ["createElement"]
      244 GETUPVAL                         R47 7
      245 DUPTABLE                         R48 K53 [{["Text"] = "🎉 You've reached the deepest level!", ["tag"] = "auto-xy text-body-small"}]
      246 CALL                             R46 2 1
      247 SETTABLEKS                       R46 R45 K27 ["Description"]
      249 CALL                             R42 3 -1
      250 CALL                             R39 -1 1
      251 SETTABLEKS                       R39 R38 K11 ["Content"]
      253 CALL                             R35 3 1
      254 SETTABLEKS                       R35 R34 K41 ["Popover3"]
      256 CALL                             R31 3 -1
      257 CALL                             R28 -1 1
      258 SETTABLEKS                       R28 R27 K11 ["Content"]
      260 CALL                             R24 3 1
      261 SETTABLEKS                       R24 R23 K28 ["Popover2"]
      263 CALL                             R20 3 -1
      264 CALL                             R17 -1 1
      265 SETTABLEKS                       R17 R16 K11 ["Content"]
      267 CALL                             R13 3 1
      268 SETTABLEKS                       R13 R12 K5 ["Popover1"]
      270 CALL                             R9 3 -1
      271 RETURN                           R9 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["useState"]
        8 LOADB                            R3 0
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K0 ["useState"]
       13 LOADB                            R5 0
       14 CALL                             R4 1 2
       15 NEWCLOSURE                       R6 P0
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R0
       18 NEWCLOSURE                       R7 P1
       19 CAPTURE                          VAL R3
       20 CAPTURE                          VAL R2
       21 NEWCLOSURE                       R8 P2
       22 CAPTURE                          VAL R5
       23 CAPTURE                          VAL R4
       24 GETUPVAL                         R9 0
       25 GETTABLEKS                       R9 R9 K1 ["createElement"]
       27 GETUPVAL                         R10 1
       28 DUPTABLE                         R11 K4 [{["tag"] = "row align-y-center gap-large auto-xy"}]
       29 NEWTABLE                         R12 0 3
       31 GETUPVAL                         R13 0
       32 GETTABLEKS                       R13 R13 K1 ["createElement"]
       34 GETUPVAL                         R14 2
       35 GETTABLEKS                       R14 R14 K5 ["Root"]
       37 DUPTABLE                         R15 K9 [{["isOpen"], ["key"] = "left"}]
       38 SETTABLEKS                       R0 R15 K6 ["isOpen"]
       40 DUPTABLE                         R16 K12 [{"Anchor", "Content"}]
       41 GETUPVAL                         R17 0
       42 GETTABLEKS                       R17 R17 K1 ["createElement"]
       44 GETUPVAL                         R18 2
       45 GETTABLEKS                       R18 R18 K10 ["Anchor"]
       47 LOADNIL                          R19
       48 GETUPVAL                         R20 0
       49 GETTABLEKS                       R20 R20 K1 ["createElement"]
       51 GETUPVAL                         R21 3
       52 DUPTABLE                         R22 K17 [{["text"] = "Left Popover", ["onActivated"], ["variant"]}]
       53 SETTABLEKS                       R6 R22 K15 ["onActivated"]
       55 GETUPVAL                         R23 4
       56 GETTABLEKS                       R23 R23 K18 ["Emphasis"]
       58 SETTABLEKS                       R23 R22 K16 ["variant"]
       60 CALL                             R20 2 -1
       61 CALL                             R17 -1 1
       62 SETTABLEKS                       R17 R16 K10 ["Anchor"]
       64 GETUPVAL                         R17 0
       65 GETTABLEKS                       R17 R17 K1 ["createElement"]
       67 GETUPVAL                         R18 2
       68 GETTABLEKS                       R18 R18 K11 ["Content"]
       70 DUPTABLE                         R19 K21 [{"align", "side"}]
       71 GETUPVAL                         R20 5
       72 GETTABLEKS                       R20 R20 K22 ["Start"]
       74 SETTABLEKS                       R20 R19 K19 ["align"]
       76 GETUPVAL                         R20 6
       77 GETTABLEKS                       R20 R20 K23 ["Left"]
       79 SETTABLEKS                       R20 R19 K20 ["side"]
       81 GETUPVAL                         R20 0
       82 GETTABLEKS                       R20 R20 K1 ["createElement"]
       84 GETUPVAL                         R21 1
       85 DUPTABLE                         R22 K25 [{["tag"] = "col gap-small padding-medium auto-xy"}]
       86 DUPTABLE                         R23 K28 [{"Title", "Subtitle"}]
       87 GETUPVAL                         R24 0
       88 GETTABLEKS                       R24 R24 K1 ["createElement"]
       90 GETUPVAL                         R25 7
       91 DUPTABLE                         R26 K32 [{["Text"] = "Left content", ["tag"] = "auto-xy text-title-medium content-emphasis"}]
       92 CALL                             R24 2 1
       93 SETTABLEKS                       R24 R23 K26 ["Title"]
       95 GETUPVAL                         R24 0
       96 GETTABLEKS                       R24 R24 K1 ["createElement"]
       98 GETUPVAL                         R25 7
       99 DUPTABLE                         R26 K35 [{["Text"] = "Sibling popover", ["tag"] = "auto-xy text-body-small"}]
      100 CALL                             R24 2 1
      101 SETTABLEKS                       R24 R23 K27 ["Subtitle"]
      103 CALL                             R20 3 -1
      104 CALL                             R17 -1 1
      105 SETTABLEKS                       R17 R16 K11 ["Content"]
      107 CALL                             R13 3 1
      108 SETTABLEN                        R13 R12 1
      109 GETUPVAL                         R13 0
      110 GETTABLEKS                       R13 R13 K1 ["createElement"]
      112 GETUPVAL                         R14 2
      113 GETTABLEKS                       R14 R14 K5 ["Root"]
      115 DUPTABLE                         R15 K37 [{["isOpen"], ["key"] = "middle"}]
      116 SETTABLEKS                       R2 R15 K6 ["isOpen"]
      118 DUPTABLE                         R16 K12 [{"Anchor", "Content"}]
      119 GETUPVAL                         R17 0
      120 GETTABLEKS                       R17 R17 K1 ["createElement"]
      122 GETUPVAL                         R18 2
      123 GETTABLEKS                       R18 R18 K10 ["Anchor"]
      125 LOADNIL                          R19
      126 GETUPVAL                         R20 0
      127 GETTABLEKS                       R20 R20 K1 ["createElement"]
      129 GETUPVAL                         R21 3
      130 DUPTABLE                         R22 K39 [{["text"] = "Middle Popover", ["onActivated"], ["variant"]}]
      131 SETTABLEKS                       R7 R22 K15 ["onActivated"]
      133 GETUPVAL                         R23 4
      134 GETTABLEKS                       R23 R23 K18 ["Emphasis"]
      136 SETTABLEKS                       R23 R22 K16 ["variant"]
      138 CALL                             R20 2 -1
      139 CALL                             R17 -1 1
      140 SETTABLEKS                       R17 R16 K10 ["Anchor"]
      142 GETUPVAL                         R17 0
      143 GETTABLEKS                       R17 R17 K1 ["createElement"]
      145 GETUPVAL                         R18 2
      146 GETTABLEKS                       R18 R18 K11 ["Content"]
      148 DUPTABLE                         R19 K21 [{"align", "side"}]
      149 GETUPVAL                         R20 5
      150 GETTABLEKS                       R20 R20 K22 ["Start"]
      152 SETTABLEKS                       R20 R19 K19 ["align"]
      154 GETUPVAL                         R20 6
      155 GETTABLEKS                       R20 R20 K40 ["Right"]
      157 SETTABLEKS                       R20 R19 K20 ["side"]
      159 GETUPVAL                         R20 0
      160 GETTABLEKS                       R20 R20 K1 ["createElement"]
      162 GETUPVAL                         R21 1
      163 DUPTABLE                         R22 K25 [{["tag"] = "col gap-small padding-medium auto-xy"}]
      164 DUPTABLE                         R23 K28 [{"Title", "Subtitle"}]
      165 GETUPVAL                         R24 0
      166 GETTABLEKS                       R24 R24 K1 ["createElement"]
      168 GETUPVAL                         R25 7
      169 DUPTABLE                         R26 K42 [{["Text"] = "Middle content", ["tag"] = "auto-xy text-title-medium content-emphasis"}]
      170 CALL                             R24 2 1
      171 SETTABLEKS                       R24 R23 K26 ["Title"]
      173 GETUPVAL                         R24 0
      174 GETTABLEKS                       R24 R24 K1 ["createElement"]
      176 GETUPVAL                         R25 7
      177 DUPTABLE                         R26 K35 [{["Text"] = "Sibling popover", ["tag"] = "auto-xy text-body-small"}]
      178 CALL                             R24 2 1
      179 SETTABLEKS                       R24 R23 K27 ["Subtitle"]
      181 CALL                             R20 3 -1
      182 CALL                             R17 -1 1
      183 SETTABLEKS                       R17 R16 K11 ["Content"]
      185 CALL                             R13 3 1
      186 SETTABLEN                        R13 R12 2
      187 GETUPVAL                         R13 0
      188 GETTABLEKS                       R13 R13 K1 ["createElement"]
      190 GETUPVAL                         R14 2
      191 GETTABLEKS                       R14 R14 K5 ["Root"]
      193 DUPTABLE                         R15 K44 [{["isOpen"], ["key"] = "right"}]
      194 SETTABLEKS                       R4 R15 K6 ["isOpen"]
      196 DUPTABLE                         R16 K12 [{"Anchor", "Content"}]
      197 GETUPVAL                         R17 0
      198 GETTABLEKS                       R17 R17 K1 ["createElement"]
      200 GETUPVAL                         R18 2
      201 GETTABLEKS                       R18 R18 K10 ["Anchor"]
      203 LOADNIL                          R19
      204 GETUPVAL                         R20 0
      205 GETTABLEKS                       R20 R20 K1 ["createElement"]
      207 GETUPVAL                         R21 3
      208 DUPTABLE                         R22 K46 [{["text"] = "Right Popover", ["onActivated"], ["variant"]}]
      209 SETTABLEKS                       R8 R22 K15 ["onActivated"]
      211 GETUPVAL                         R23 4
      212 GETTABLEKS                       R23 R23 K18 ["Emphasis"]
      214 SETTABLEKS                       R23 R22 K16 ["variant"]
      216 CALL                             R20 2 -1
      217 CALL                             R17 -1 1
      218 SETTABLEKS                       R17 R16 K10 ["Anchor"]
      220 GETUPVAL                         R17 0
      221 GETTABLEKS                       R17 R17 K1 ["createElement"]
      223 GETUPVAL                         R18 2
      224 GETTABLEKS                       R18 R18 K11 ["Content"]
      226 DUPTABLE                         R19 K21 [{"align", "side"}]
      227 GETUPVAL                         R20 5
      228 GETTABLEKS                       R20 R20 K22 ["Start"]
      230 SETTABLEKS                       R20 R19 K19 ["align"]
      232 GETUPVAL                         R20 6
      233 GETTABLEKS                       R20 R20 K23 ["Left"]
      235 SETTABLEKS                       R20 R19 K20 ["side"]
      237 GETUPVAL                         R20 0
      238 GETTABLEKS                       R20 R20 K1 ["createElement"]
      240 GETUPVAL                         R21 1
      241 DUPTABLE                         R22 K25 [{["tag"] = "col gap-small padding-medium auto-xy"}]
      242 DUPTABLE                         R23 K28 [{"Title", "Subtitle"}]
      243 GETUPVAL                         R24 0
      244 GETTABLEKS                       R24 R24 K1 ["createElement"]
      246 GETUPVAL                         R25 7
      247 DUPTABLE                         R26 K48 [{["Text"] = "Right content", ["tag"] = "auto-xy text-title-medium content-emphasis"}]
      248 CALL                             R24 2 1
      249 SETTABLEKS                       R24 R23 K26 ["Title"]
      251 GETUPVAL                         R24 0
      252 GETTABLEKS                       R24 R24 K1 ["createElement"]
      254 GETUPVAL                         R25 7
      255 DUPTABLE                         R26 K35 [{["Text"] = "Sibling popover", ["tag"] = "auto-xy text-body-small"}]
      256 CALL                             R24 2 1
      257 SETTABLEKS                       R24 R23 K27 ["Subtitle"]
      259 CALL                             R20 3 -1
      260 CALL                             R17 -1 1
      261 SETTABLEKS                       R17 R16 K11 ["Content"]
      263 CALL                             R13 3 1
      264 SETTABLEN                        R13 R12 3
      265 CALL                             R9 3 -1
      266 RETURN                           R9 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+9]
        6 GETUPVAL                         R0 2
        7 LOADB                            R1 0
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 3
       10 LOADB                            R1 0
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 4
       13 LOADB                            R1 0
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R0 2
        7 LOADB                            R1 0
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 3
       10 LOADB                            R1 0
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+3]
        6 GETUPVAL                         R0 2
        7 LOADB                            R1 0
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["useState"]
        8 LOADB                            R3 0
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K0 ["useState"]
       13 LOADB                            R5 0
       14 CALL                             R4 1 2
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K0 ["useState"]
       18 LOADB                            R7 0
       19 CALL                             R6 1 2
       20 GETUPVAL                         R8 0
       21 GETTABLEKS                       R8 R8 K0 ["useState"]
       23 LOADB                            R9 0
       24 CALL                             R8 1 2
       25 GETUPVAL                         R10 0
       26 GETTABLEKS                       R10 R10 K0 ["useState"]
       28 LOADB                            R11 0
       29 CALL                             R10 1 2
       30 NEWCLOSURE                       R12 P0
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R0
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R5
       35 CAPTURE                          VAL R7
       36 NEWCLOSURE                       R13 P1
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R9
       41 NEWCLOSURE                       R14 P2
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R11
       45 NEWCLOSURE                       R15 P3
       46 CAPTURE                          VAL R7
       47 CAPTURE                          VAL R6
       48 NEWCLOSURE                       R16 P4
       49 CAPTURE                          VAL R9
       50 CAPTURE                          VAL R8
       51 NEWCLOSURE                       R17 P5
       52 CAPTURE                          VAL R11
       53 CAPTURE                          VAL R10
       54 GETUPVAL                         R18 0
       55 GETTABLEKS                       R18 R18 K1 ["createElement"]
       57 GETUPVAL                         R19 0
       58 GETTABLEKS                       R19 R19 K2 ["Fragment"]
       60 LOADNIL                          R20
       61 DUPTABLE                         R21 K5 [{"ToggleButton", "Sheet1"}]
       62 GETUPVAL                         R22 0
       63 GETTABLEKS                       R22 R22 K1 ["createElement"]
       65 GETUPVAL                         R23 1
       66 DUPTABLE                         R24 K10 [{["text"] = "Open First Sheet", ["onActivated"], ["variant"]}]
       67 SETTABLEKS                       R12 R24 K8 ["onActivated"]
       69 GETUPVAL                         R25 2
       70 GETTABLEKS                       R25 R25 K11 ["Emphasis"]
       72 SETTABLEKS                       R25 R24 K9 ["variant"]
       74 CALL                             R22 2 1
       75 SETTABLEKS                       R22 R21 K3 ["ToggleButton"]
       77 JUMPIFNOT                        R0 ; [+267]
       78 GETUPVAL                         R22 0
       79 GETTABLEKS                       R22 R22 K1 ["createElement"]
       81 GETUPVAL                         R23 3
       82 GETTABLEKS                       R23 R23 K12 ["Root"]
       84 DUPTABLE                         R24 K18 [{["onClose"], ["snapPoints"], ["defaultSnapPointIndex"] = 2, ["displaySize"]}]
       85 SETTABLEKS                       R12 R24 K13 ["onClose"]
       87 NEWTABLE                         R25 0 2
       89 LOADK                            R26 K19 [0.3]
       90 LOADK                            R27 K20 [0.6]
       91 SETLIST                          R25 R26 2 [1]
       93 SETTABLEKS                       R25 R24 K14 ["snapPoints"]
       95 GETIMPORT                        R25 K24 [Enum.DisplaySize.Small]
       97 SETTABLEKS                       R25 R24 K17 ["displaySize"]
       99 DUPTABLE                         R25 K28 [{"Header", "Content", "Sheet2"}]
      100 GETUPVAL                         R26 0
      101 GETTABLEKS                       R26 R26 K1 ["createElement"]
      103 GETUPVAL                         R27 3
      104 GETTABLEKS                       R27 R27 K25 ["Header"]
      106 LOADNIL                          R28
      107 DUPTABLE                         R29 K30 [{"Title"}]
      108 GETUPVAL                         R30 0
      109 GETTABLEKS                       R30 R30 K1 ["createElement"]
      111 GETUPVAL                         R31 4
      112 DUPTABLE                         R32 K35 [{["Text"] = "Sheet 1", ["tag"] = "auto-xy text-title-medium content-emphasis"}]
      113 CALL                             R30 2 1
      114 SETTABLEKS                       R30 R29 K29 ["Title"]
      116 CALL                             R26 3 1
      117 SETTABLEKS                       R26 R25 K25 ["Header"]
      119 GETUPVAL                         R26 0
      120 GETTABLEKS                       R26 R26 K1 ["createElement"]
      122 GETUPVAL                         R27 3
      123 GETTABLEKS                       R27 R27 K26 ["Content"]
      125 LOADNIL                          R28
      126 DUPTABLE                         R29 K37 [{"Layout"}]
      127 GETUPVAL                         R30 0
      128 GETTABLEKS                       R30 R30 K1 ["createElement"]
      130 GETUPVAL                         R31 5
      131 DUPTABLE                         R32 K39 [{["tag"] = "row auto-xy gap-medium"}]
      132 DUPTABLE                         R33 K42 [{"Sheet1Popover", "OpenSheet2Button"}]
      133 GETUPVAL                         R34 0
      134 GETTABLEKS                       R34 R34 K1 ["createElement"]
      136 GETUPVAL                         R35 6
      137 DUPTABLE                         R36 K51 [{["isOpen"], ["toggle"], ["anchorText"] = "Open Popover", ["title"] = "Popover title", ["subtitle"] = "Popover subtitle"}]
      138 SETTABLEKS                       R6 R36 K43 ["isOpen"]
      140 SETTABLEKS                       R15 R36 K44 ["toggle"]
      142 CALL                             R34 2 1
      143 SETTABLEKS                       R34 R33 K40 ["Sheet1Popover"]
      145 GETUPVAL                         R34 0
      146 GETTABLEKS                       R34 R34 K1 ["createElement"]
      148 GETUPVAL                         R35 1
      149 DUPTABLE                         R36 K53 [{["text"] = "Open Second Sheet", ["onActivated"], ["variant"]}]
      150 SETTABLEKS                       R13 R36 K8 ["onActivated"]
      152 GETUPVAL                         R37 2
      153 GETTABLEKS                       R37 R37 K11 ["Emphasis"]
      155 SETTABLEKS                       R37 R36 K9 ["variant"]
      157 CALL                             R34 2 1
      158 SETTABLEKS                       R34 R33 K41 ["OpenSheet2Button"]
      160 CALL                             R30 3 1
      161 SETTABLEKS                       R30 R29 K36 ["Layout"]
      163 CALL                             R26 3 1
      164 SETTABLEKS                       R26 R25 K26 ["Content"]
      166 JUMPIFNOT                        R2 ; [+173]
      167 GETUPVAL                         R26 0
      168 GETTABLEKS                       R26 R26 K1 ["createElement"]
      170 GETUPVAL                         R27 3
      171 GETTABLEKS                       R27 R27 K12 ["Root"]
      173 DUPTABLE                         R28 K18 [{["onClose"], ["snapPoints"], ["defaultSnapPointIndex"] = 2, ["displaySize"]}]
      174 SETTABLEKS                       R13 R28 K13 ["onClose"]
      176 NEWTABLE                         R29 0 2
      178 LOADK                            R30 K54 [0.4]
      179 LOADK                            R31 K55 [0.7]
      180 SETLIST                          R29 R30 2 [1]
      182 SETTABLEKS                       R29 R28 K14 ["snapPoints"]
      184 GETIMPORT                        R29 K24 [Enum.DisplaySize.Small]
      186 SETTABLEKS                       R29 R28 K17 ["displaySize"]
      188 DUPTABLE                         R29 K57 [{"Header", "Content", "Sheet3"}]
      189 GETUPVAL                         R30 0
      190 GETTABLEKS                       R30 R30 K1 ["createElement"]
      192 GETUPVAL                         R31 3
      193 GETTABLEKS                       R31 R31 K25 ["Header"]
      195 LOADNIL                          R32
      196 DUPTABLE                         R33 K30 [{"Title"}]
      197 GETUPVAL                         R34 0
      198 GETTABLEKS                       R34 R34 K1 ["createElement"]
      200 GETUPVAL                         R35 4
      201 DUPTABLE                         R36 K59 [{["Text"] = "Sheet 2", ["tag"] = "auto-xy text-title-medium content-emphasis"}]
      202 CALL                             R34 2 1
      203 SETTABLEKS                       R34 R33 K29 ["Title"]
      205 CALL                             R30 3 1
      206 SETTABLEKS                       R30 R29 K25 ["Header"]
      208 GETUPVAL                         R30 0
      209 GETTABLEKS                       R30 R30 K1 ["createElement"]
      211 GETUPVAL                         R31 3
      212 GETTABLEKS                       R31 R31 K26 ["Content"]
      214 LOADNIL                          R32
      215 DUPTABLE                         R33 K37 [{"Layout"}]
      216 GETUPVAL                         R34 0
      217 GETTABLEKS                       R34 R34 K1 ["createElement"]
      219 GETUPVAL                         R35 5
      220 DUPTABLE                         R36 K39 [{["tag"] = "row auto-xy gap-medium"}]
      221 DUPTABLE                         R37 K62 [{"Sheet2Popover", "OpenSheet3Button"}]
      222 GETUPVAL                         R38 0
      223 GETTABLEKS                       R38 R38 K1 ["createElement"]
      225 GETUPVAL                         R39 6
      226 DUPTABLE                         R40 K51 [{["isOpen"], ["toggle"], ["anchorText"] = "Open Popover", ["title"] = "Popover title", ["subtitle"] = "Popover subtitle"}]
      227 SETTABLEKS                       R8 R40 K43 ["isOpen"]
      229 SETTABLEKS                       R16 R40 K44 ["toggle"]
      231 CALL                             R38 2 1
      232 SETTABLEKS                       R38 R37 K60 ["Sheet2Popover"]
      234 GETUPVAL                         R38 0
      235 GETTABLEKS                       R38 R38 K1 ["createElement"]
      237 GETUPVAL                         R39 1
      238 DUPTABLE                         R40 K64 [{["text"] = "Open Third Sheet", ["onActivated"], ["variant"]}]
      239 SETTABLEKS                       R14 R40 K8 ["onActivated"]
      241 GETUPVAL                         R41 2
      242 GETTABLEKS                       R41 R41 K11 ["Emphasis"]
      244 SETTABLEKS                       R41 R40 K9 ["variant"]
      246 CALL                             R38 2 1
      247 SETTABLEKS                       R38 R37 K61 ["OpenSheet3Button"]
      249 CALL                             R34 3 1
      250 SETTABLEKS                       R34 R33 K36 ["Layout"]
      252 CALL                             R30 3 1
      253 SETTABLEKS                       R30 R29 K26 ["Content"]
      255 JUMPIFNOT                        R4 ; [+79]
      256 GETUPVAL                         R30 0
      257 GETTABLEKS                       R30 R30 K1 ["createElement"]
      259 GETUPVAL                         R31 3
      260 GETTABLEKS                       R31 R31 K12 ["Root"]
      262 DUPTABLE                         R32 K67 [{["onClose"], ["snapPoints"], ["defaultSnapPointIndex"] = 2, ["preferCenterSheet"] = True}]
      263 SETTABLEKS                       R14 R32 K13 ["onClose"]
      265 NEWTABLE                         R33 0 2
      267 LOADK                            R34 K68 [0.5]
      268 LOADK                            R35 K69 [0.8]
      269 SETLIST                          R33 R34 2 [1]
      271 SETTABLEKS                       R33 R32 K14 ["snapPoints"]
      273 DUPTABLE                         R33 K70 [{"Header", "Content"}]
      274 GETUPVAL                         R34 0
      275 GETTABLEKS                       R34 R34 K1 ["createElement"]
      277 GETUPVAL                         R35 3
      278 GETTABLEKS                       R35 R35 K25 ["Header"]
      280 LOADNIL                          R36
      281 DUPTABLE                         R37 K30 [{"Title"}]
      282 GETUPVAL                         R38 0
      283 GETTABLEKS                       R38 R38 K1 ["createElement"]
      285 GETUPVAL                         R39 4
      286 DUPTABLE                         R40 K72 [{["Text"] = "Sheet 3", ["tag"] = "auto-xy text-title-medium content-emphasis"}]
      287 CALL                             R38 2 1
      288 SETTABLEKS                       R38 R37 K29 ["Title"]
      290 CALL                             R34 3 1
      291 SETTABLEKS                       R34 R33 K25 ["Header"]
      293 GETUPVAL                         R34 0
      294 GETTABLEKS                       R34 R34 K1 ["createElement"]
      296 GETUPVAL                         R35 3
      297 GETTABLEKS                       R35 R35 K26 ["Content"]
      299 LOADNIL                          R36
      300 DUPTABLE                         R37 K37 [{"Layout"}]
      301 GETUPVAL                         R38 0
      302 GETTABLEKS                       R38 R38 K1 ["createElement"]
      304 GETUPVAL                         R39 5
      305 DUPTABLE                         R40 K74 [{["tag"] = "row auto-xy gap-medium align-y-center"}]
      306 DUPTABLE                         R41 K76 [{"Sheet3Popover", "Text"}]
      307 GETUPVAL                         R42 0
      308 GETTABLEKS                       R42 R42 K1 ["createElement"]
      310 GETUPVAL                         R43 6
      311 DUPTABLE                         R44 K51 [{["isOpen"], ["toggle"], ["anchorText"] = "Open Popover", ["title"] = "Popover title", ["subtitle"] = "Popover subtitle"}]
      312 SETTABLEKS                       R10 R44 K43 ["isOpen"]
      314 SETTABLEKS                       R17 R44 K44 ["toggle"]
      316 CALL                             R42 2 1
      317 SETTABLEKS                       R42 R41 K75 ["Sheet3Popover"]
      319 GETUPVAL                         R42 0
      320 GETTABLEKS                       R42 R42 K1 ["createElement"]
      322 GETUPVAL                         R43 4
      323 DUPTABLE                         R44 K78 [{["Text"] = "🎉 You've reached the innermost sheet!", ["tag"] = "auto-xy text-title-medium content-emphasis"}]
      324 CALL                             R42 2 1
      325 SETTABLEKS                       R42 R41 K31 ["Text"]
      327 CALL                             R38 3 1
      328 SETTABLEKS                       R38 R37 K36 ["Layout"]
      330 CALL                             R34 3 1
      331 SETTABLEKS                       R34 R33 K26 ["Content"]
      333 CALL                             R30 3 1
      334 JUMP                             ; [+1]
      335 LOADNIL                          R30
      336 SETTABLEKS                       R30 R29 K56 ["Sheet3"]
      338 CALL                             R26 3 1
      339 JUMP                             ; [+1]
      340 LOADNIL                          R26
      341 SETTABLEKS                       R26 R25 K27 ["Sheet2"]
      343 CALL                             R22 3 1
      344 JUMP                             ; [+1]
      345 LOADNIL                          R22
      346 SETTABLEKS                       R22 R21 K4 ["Sheet1"]
      348 CALL                             R18 3 -1
      349 RETURN                           R18 -1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+9]
        6 GETUPVAL                         R0 2
        7 LOADB                            R1 0
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 3
       10 LOADB                            R1 0
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 4
       13 LOADB                            R1 0
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R0 2
        7 LOADB                            R1 0
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 3
       10 LOADB                            R1 0
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+3]
        6 GETUPVAL                         R0 2
        7 LOADB                            R1 0
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["useState"]
        8 LOADB                            R3 0
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K0 ["useState"]
       13 LOADB                            R5 0
       14 CALL                             R4 1 2
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K0 ["useState"]
       18 LOADB                            R7 0
       19 CALL                             R6 1 2
       20 GETUPVAL                         R8 0
       21 GETTABLEKS                       R8 R8 K0 ["useState"]
       23 LOADB                            R9 0
       24 CALL                             R8 1 2
       25 GETUPVAL                         R10 0
       26 GETTABLEKS                       R10 R10 K0 ["useState"]
       28 LOADB                            R11 0
       29 CALL                             R10 1 2
       30 NEWCLOSURE                       R12 P0
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R0
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R5
       35 CAPTURE                          VAL R7
       36 NEWCLOSURE                       R13 P1
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R9
       41 NEWCLOSURE                       R14 P2
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R11
       45 NEWCLOSURE                       R15 P3
       46 CAPTURE                          VAL R7
       47 CAPTURE                          VAL R6
       48 NEWCLOSURE                       R16 P4
       49 CAPTURE                          VAL R9
       50 CAPTURE                          VAL R8
       51 NEWCLOSURE                       R17 P5
       52 CAPTURE                          VAL R11
       53 CAPTURE                          VAL R10
       54 GETUPVAL                         R18 0
       55 GETTABLEKS                       R18 R18 K1 ["createElement"]
       57 GETUPVAL                         R19 0
       58 GETTABLEKS                       R19 R19 K2 ["Fragment"]
       60 LOADNIL                          R20
       61 DUPTABLE                         R21 K5 [{"ToggleButton", "Dialog1"}]
       62 GETUPVAL                         R22 0
       63 GETTABLEKS                       R22 R22 K1 ["createElement"]
       65 GETUPVAL                         R23 1
       66 DUPTABLE                         R24 K10 [{["text"] = "Open First Dialog", ["onActivated"], ["variant"]}]
       67 SETTABLEKS                       R12 R24 K8 ["onActivated"]
       69 GETUPVAL                         R25 2
       70 GETTABLEKS                       R25 R25 K11 ["Emphasis"]
       72 SETTABLEKS                       R25 R24 K9 ["variant"]
       74 CALL                             R22 2 1
       75 SETTABLEKS                       R22 R21 K3 ["ToggleButton"]
       77 JUMPIFNOT                        R0 ; [+223]
       78 GETUPVAL                         R22 0
       79 GETTABLEKS                       R22 R22 K1 ["createElement"]
       81 GETUPVAL                         R23 3
       82 GETTABLEKS                       R23 R23 K12 ["Root"]
       84 DUPTABLE                         R24 K19 [{["onClose"], ["hasBackdrop"] = True, ["disablePortal"] = False, ["size"]}]
       85 SETTABLEKS                       R12 R24 K13 ["onClose"]
       87 GETUPVAL                         R25 4
       88 GETTABLEKS                       R25 R25 K20 ["Large"]
       90 SETTABLEKS                       R25 R24 K18 ["size"]
       92 DUPTABLE                         R25 K24 [{"DialogTitle", "DialogContent", "Dialog2"}]
       93 GETUPVAL                         R26 0
       94 GETTABLEKS                       R26 R26 K1 ["createElement"]
       96 GETUPVAL                         R27 3
       97 GETTABLEKS                       R27 R27 K25 ["Title"]
       99 DUPTABLE                         R28 K27 [{["text"] = "First Dialog"}]
      100 CALL                             R26 2 1
      101 SETTABLEKS                       R26 R25 K21 ["DialogTitle"]
      103 GETUPVAL                         R26 0
      104 GETTABLEKS                       R26 R26 K1 ["createElement"]
      106 GETUPVAL                         R27 3
      107 GETTABLEKS                       R27 R27 K28 ["Content"]
      109 LOADNIL                          R28
      110 DUPTABLE                         R29 K30 [{"Layout"}]
      111 GETUPVAL                         R30 0
      112 GETTABLEKS                       R30 R30 K1 ["createElement"]
      114 GETUPVAL                         R31 5
      115 DUPTABLE                         R32 K33 [{["tag"] = "row auto-xy gap-medium"}]
      116 DUPTABLE                         R33 K36 [{"Dialog1Popover", "OpenDialog2Button"}]
      117 GETUPVAL                         R34 0
      118 GETTABLEKS                       R34 R34 K1 ["createElement"]
      120 GETUPVAL                         R35 6
      121 DUPTABLE                         R36 K45 [{["isOpen"], ["toggle"], ["anchorText"] = "Open Popover", ["title"] = "Popover title", ["subtitle"] = "Popover subtitle"}]
      122 SETTABLEKS                       R6 R36 K37 ["isOpen"]
      124 SETTABLEKS                       R15 R36 K38 ["toggle"]
      126 CALL                             R34 2 1
      127 SETTABLEKS                       R34 R33 K34 ["Dialog1Popover"]
      129 GETUPVAL                         R34 0
      130 GETTABLEKS                       R34 R34 K1 ["createElement"]
      132 GETUPVAL                         R35 1
      133 DUPTABLE                         R36 K47 [{["text"] = "Open Second Dialog", ["onActivated"], ["variant"]}]
      134 SETTABLEKS                       R13 R36 K8 ["onActivated"]
      136 GETUPVAL                         R37 2
      137 GETTABLEKS                       R37 R37 K11 ["Emphasis"]
      139 SETTABLEKS                       R37 R36 K9 ["variant"]
      141 CALL                             R34 2 1
      142 SETTABLEKS                       R34 R33 K35 ["OpenDialog2Button"]
      144 CALL                             R30 3 1
      145 SETTABLEKS                       R30 R29 K29 ["Layout"]
      147 CALL                             R26 3 1
      148 SETTABLEKS                       R26 R25 K22 ["DialogContent"]
      150 JUMPIFNOT                        R2 ; [+145]
      151 GETUPVAL                         R26 0
      152 GETTABLEKS                       R26 R26 K1 ["createElement"]
      154 GETUPVAL                         R27 3
      155 GETTABLEKS                       R27 R27 K12 ["Root"]
      157 DUPTABLE                         R28 K19 [{["onClose"], ["hasBackdrop"] = True, ["disablePortal"] = False, ["size"]}]
      158 SETTABLEKS                       R13 R28 K13 ["onClose"]
      160 GETUPVAL                         R29 4
      161 GETTABLEKS                       R29 R29 K48 ["Medium"]
      163 SETTABLEKS                       R29 R28 K18 ["size"]
      165 DUPTABLE                         R29 K50 [{"DialogTitle", "DialogContent", "Dialog3"}]
      166 GETUPVAL                         R30 0
      167 GETTABLEKS                       R30 R30 K1 ["createElement"]
      169 GETUPVAL                         R31 3
      170 GETTABLEKS                       R31 R31 K25 ["Title"]
      172 DUPTABLE                         R32 K52 [{["text"] = "Second Dialog"}]
      173 CALL                             R30 2 1
      174 SETTABLEKS                       R30 R29 K21 ["DialogTitle"]
      176 GETUPVAL                         R30 0
      177 GETTABLEKS                       R30 R30 K1 ["createElement"]
      179 GETUPVAL                         R31 3
      180 GETTABLEKS                       R31 R31 K28 ["Content"]
      182 LOADNIL                          R32
      183 DUPTABLE                         R33 K30 [{"Layout"}]
      184 GETUPVAL                         R34 0
      185 GETTABLEKS                       R34 R34 K1 ["createElement"]
      187 GETUPVAL                         R35 5
      188 DUPTABLE                         R36 K33 [{["tag"] = "row auto-xy gap-medium"}]
      189 DUPTABLE                         R37 K55 [{"Dialog2Popover", "OpenDialog3Button"}]
      190 GETUPVAL                         R38 0
      191 GETTABLEKS                       R38 R38 K1 ["createElement"]
      193 GETUPVAL                         R39 6
      194 DUPTABLE                         R40 K45 [{["isOpen"], ["toggle"], ["anchorText"] = "Open Popover", ["title"] = "Popover title", ["subtitle"] = "Popover subtitle"}]
      195 SETTABLEKS                       R8 R40 K37 ["isOpen"]
      197 SETTABLEKS                       R16 R40 K38 ["toggle"]
      199 CALL                             R38 2 1
      200 SETTABLEKS                       R38 R37 K53 ["Dialog2Popover"]
      202 GETUPVAL                         R38 0
      203 GETTABLEKS                       R38 R38 K1 ["createElement"]
      205 GETUPVAL                         R39 1
      206 DUPTABLE                         R40 K57 [{["text"] = "Open Third Dialog", ["onActivated"], ["variant"]}]
      207 SETTABLEKS                       R14 R40 K8 ["onActivated"]
      209 GETUPVAL                         R41 2
      210 GETTABLEKS                       R41 R41 K11 ["Emphasis"]
      212 SETTABLEKS                       R41 R40 K9 ["variant"]
      214 CALL                             R38 2 1
      215 SETTABLEKS                       R38 R37 K54 ["OpenDialog3Button"]
      217 CALL                             R34 3 1
      218 SETTABLEKS                       R34 R33 K29 ["Layout"]
      220 CALL                             R30 3 1
      221 SETTABLEKS                       R30 R29 K22 ["DialogContent"]
      223 JUMPIFNOT                        R4 ; [+67]
      224 GETUPVAL                         R30 0
      225 GETTABLEKS                       R30 R30 K1 ["createElement"]
      227 GETUPVAL                         R31 3
      228 GETTABLEKS                       R31 R31 K12 ["Root"]
      230 DUPTABLE                         R32 K19 [{["onClose"], ["hasBackdrop"] = True, ["disablePortal"] = False, ["size"]}]
      231 SETTABLEKS                       R14 R32 K13 ["onClose"]
      233 GETUPVAL                         R33 4
      234 GETTABLEKS                       R33 R33 K58 ["Small"]
      236 SETTABLEKS                       R33 R32 K18 ["size"]
      238 DUPTABLE                         R33 K59 [{"DialogTitle", "DialogContent"}]
      239 GETUPVAL                         R34 0
      240 GETTABLEKS                       R34 R34 K1 ["createElement"]
      242 GETUPVAL                         R35 3
      243 GETTABLEKS                       R35 R35 K25 ["Title"]
      245 DUPTABLE                         R36 K61 [{["text"] = "Third Dialog"}]
      246 CALL                             R34 2 1
      247 SETTABLEKS                       R34 R33 K21 ["DialogTitle"]
      249 GETUPVAL                         R34 0
      250 GETTABLEKS                       R34 R34 K1 ["createElement"]
      252 GETUPVAL                         R35 3
      253 GETTABLEKS                       R35 R35 K28 ["Content"]
      255 LOADNIL                          R36
      256 DUPTABLE                         R37 K30 [{"Layout"}]
      257 GETUPVAL                         R38 0
      258 GETTABLEKS                       R38 R38 K1 ["createElement"]
      260 GETUPVAL                         R39 5
      261 DUPTABLE                         R40 K63 [{["tag"] = "row auto-xy gap-medium wrap"}]
      262 DUPTABLE                         R41 K66 [{"Dialog3Popover", "Text"}]
      263 GETUPVAL                         R42 0
      264 GETTABLEKS                       R42 R42 K1 ["createElement"]
      266 GETUPVAL                         R43 6
      267 DUPTABLE                         R44 K45 [{["isOpen"], ["toggle"], ["anchorText"] = "Open Popover", ["title"] = "Popover title", ["subtitle"] = "Popover subtitle"}]
      268 SETTABLEKS                       R10 R44 K37 ["isOpen"]
      270 SETTABLEKS                       R17 R44 K38 ["toggle"]
      272 CALL                             R42 2 1
      273 SETTABLEKS                       R42 R41 K64 ["Dialog3Popover"]
      275 GETUPVAL                         R42 0
      276 GETTABLEKS                       R42 R42 K1 ["createElement"]
      278 GETUPVAL                         R43 7
      279 DUPTABLE                         R44 K69 [{["Text"] = "🎉 You've reached the innermost dialog!", ["tag"] = "auto-xy text-title-medium content-emphasis"}]
      280 CALL                             R42 2 1
      281 SETTABLEKS                       R42 R41 K65 ["Text"]
      283 CALL                             R38 3 1
      284 SETTABLEKS                       R38 R37 K29 ["Layout"]
      286 CALL                             R34 3 1
      287 SETTABLEKS                       R34 R33 K22 ["DialogContent"]
      289 CALL                             R30 3 1
      290 JUMP                             ; [+1]
      291 LOADNIL                          R30
      292 SETTABLEKS                       R30 R29 K49 ["Dialog3"]
      294 CALL                             R26 3 1
      295 JUMP                             ; [+1]
      296 LOADNIL                          R26
      297 SETTABLEKS                       R26 R25 K23 ["Dialog2"]
      299 CALL                             R22 3 1
      300 JUMP                             ; [+1]
      301 LOADNIL                          R22
      302 SETTABLEKS                       R22 R21 K4 ["Dialog1"]
      304 CALL                             R18 3 -1
      305 RETURN                           R18 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Button"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Enums"]
       25 GETTABLEKS                       R5 R5 K11 ["ButtonVariant"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Components"]
       32 GETTABLEKS                       R6 R6 K12 ["Dialog"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K10 ["Enums"]
       39 GETTABLEKS                       R7 R7 K13 ["DialogSize"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K8 ["Components"]
       46 GETTABLEKS                       R8 R8 K14 ["IconButton"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K10 ["Enums"]
       53 GETTABLEKS                       R9 R9 K15 ["InputSize"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K8 ["Components"]
       60 GETTABLEKS                       R10 R10 K16 ["Popover"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K10 ["Enums"]
       67 GETTABLEKS                       R11 R11 K17 ["PopoverAlign"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R0 K10 ["Enums"]
       74 GETTABLEKS                       R12 R12 K18 ["PopoverSide"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R13 R0 K8 ["Components"]
       81 GETTABLEKS                       R13 R13 K19 ["Sheet"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K6 [require]
       86 GETTABLEKS                       R14 R0 K8 ["Components"]
       88 GETTABLEKS                       R14 R14 K20 ["Text"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K6 [require]
       93 GETTABLEKS                       R15 R0 K8 ["Components"]
       95 GETTABLEKS                       R15 R15 K21 ["View"]
       97 CALL                             R14 1 1
       98 DUPCLOSURE                       R15 K22 [PROTO_0]
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R8
      103 CAPTURE                          VAL R10
      104 CAPTURE                          VAL R11
      105 CAPTURE                          VAL R14
      106 CAPTURE                          VAL R13
      107 DUPTABLE                         R16 K27 [{["summary"] = "Elevation", ["stories"], ["controls"]}]
      108 NEWTABLE                         R17 0 4
      110 DUPTABLE                         R18 K31 [{["name"] = "Nested Popovers", ["story"]}]
      111 DUPCLOSURE                       R19 K32 [PROTO_4]
      112 CAPTURE                          VAL R2
      113 CAPTURE                          VAL R14
      114 CAPTURE                          VAL R9
      115 CAPTURE                          VAL R3
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R10
      118 CAPTURE                          VAL R11
      119 CAPTURE                          VAL R13
      120 CAPTURE                          VAL R8
      121 SETTABLEKS                       R19 R18 K30 ["story"]
      123 DUPTABLE                         R19 K34 [{["name"] = "Sibling Popovers", ["story"]}]
      124 DUPCLOSURE                       R20 K35 [PROTO_8]
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R14
      127 CAPTURE                          VAL R9
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R4
      130 CAPTURE                          VAL R10
      131 CAPTURE                          VAL R11
      132 CAPTURE                          VAL R13
      133 SETTABLEKS                       R20 R19 K30 ["story"]
      135 DUPTABLE                         R20 K37 [{["name"] = "Nested Sheets", ["story"]}]
      136 DUPCLOSURE                       R21 K38 [PROTO_15]
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R3
      139 CAPTURE                          VAL R4
      140 CAPTURE                          VAL R12
      141 CAPTURE                          VAL R13
      142 CAPTURE                          VAL R14
      143 CAPTURE                          VAL R15
      144 SETTABLEKS                       R21 R20 K30 ["story"]
      146 DUPTABLE                         R21 K40 [{["name"] = "Nested Dialogs", ["story"]}]
      147 DUPCLOSURE                       R22 K41 [PROTO_22]
      148 CAPTURE                          VAL R2
      149 CAPTURE                          VAL R3
      150 CAPTURE                          VAL R4
      151 CAPTURE                          VAL R5
      152 CAPTURE                          VAL R6
      153 CAPTURE                          VAL R14
      154 CAPTURE                          VAL R15
      155 CAPTURE                          VAL R13
      156 SETTABLEKS                       R22 R21 K30 ["story"]
      158 SETLIST                          R17 R18 4 [1]
      160 SETTABLEKS                       R17 R16 K25 ["stories"]
      162 NEWTABLE                         R17 0 0
      164 SETTABLEKS                       R17 R16 K26 ["controls"]
      166 RETURN                           R16 1
