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

PROTO_23:
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

PROTO_24:
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

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_26:
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
       30 GETUPVAL                         R10 0
       31 GETTABLEKS                       R10 R10 K2 ["Fragment"]
       33 LOADNIL                          R11
       34 DUPTABLE                         R12 K5 [{"ToggleButton", "Dialog"}]
       35 GETUPVAL                         R13 0
       36 GETTABLEKS                       R13 R13 K1 ["createElement"]
       38 GETUPVAL                         R14 1
       39 DUPTABLE                         R15 K10 [{["text"] = "Open Dialog", ["onActivated"], ["variant"]}]
       40 SETTABLEKS                       R6 R15 K8 ["onActivated"]
       42 GETUPVAL                         R16 2
       43 GETTABLEKS                       R16 R16 K11 ["Emphasis"]
       45 SETTABLEKS                       R16 R15 K9 ["variant"]
       47 CALL                             R13 2 1
       48 SETTABLEKS                       R13 R12 K3 ["ToggleButton"]
       50 JUMPIFNOT                        R0 ; [+208]
       51 GETUPVAL                         R13 0
       52 GETTABLEKS                       R13 R13 K1 ["createElement"]
       54 GETUPVAL                         R14 3
       55 GETTABLEKS                       R14 R14 K12 ["Root"]
       57 DUPTABLE                         R15 K19 [{["onClose"], ["hasBackdrop"] = True, ["disablePortal"] = False, ["size"]}]
       58 SETTABLEKS                       R6 R15 K13 ["onClose"]
       60 GETUPVAL                         R16 4
       61 GETTABLEKS                       R16 R16 K20 ["Large"]
       63 SETTABLEKS                       R16 R15 K18 ["size"]
       65 DUPTABLE                         R16 K23 [{"DialogTitle", "DialogContent"}]
       66 GETUPVAL                         R17 0
       67 GETTABLEKS                       R17 R17 K1 ["createElement"]
       69 GETUPVAL                         R18 3
       70 GETTABLEKS                       R18 R18 K24 ["Title"]
       72 DUPTABLE                         R19 K26 [{["text"] = "Dialog with Nested Popovers"}]
       73 CALL                             R17 2 1
       74 SETTABLEKS                       R17 R16 K21 ["DialogTitle"]
       76 GETUPVAL                         R17 0
       77 GETTABLEKS                       R17 R17 K1 ["createElement"]
       79 GETUPVAL                         R18 3
       80 GETTABLEKS                       R18 R18 K27 ["Content"]
       82 LOADNIL                          R19
       83 DUPTABLE                         R20 K29 [{"Layout"}]
       84 GETUPVAL                         R21 0
       85 GETTABLEKS                       R21 R21 K1 ["createElement"]
       87 GETUPVAL                         R22 5
       88 DUPTABLE                         R23 K32 [{["tag"] = "col gap-medium auto-xy"}]
       89 DUPTABLE                         R24 K35 [{"Description", "Popover1"}]
       90 GETUPVAL                         R25 0
       91 GETTABLEKS                       R25 R25 K1 ["createElement"]
       93 GETUPVAL                         R26 6
       94 DUPTABLE                         R27 K41 [{["Text"] = "Open the first popover, then open the second one inside it. Both should render above the dialog.", ["tag"] = "auto-xy text-body-large text-wrap text-align-x-left", ["LayoutOrder"] = 1}]
       95 CALL                             R25 2 1
       96 SETTABLEKS                       R25 R24 K33 ["Description"]
       98 GETUPVAL                         R25 0
       99 GETTABLEKS                       R25 R25 K1 ["createElement"]
      101 GETUPVAL                         R26 7
      102 GETTABLEKS                       R26 R26 K12 ["Root"]
      104 DUPTABLE                         R27 K43 [{"isOpen"}]
      105 SETTABLEKS                       R2 R27 K42 ["isOpen"]
      107 DUPTABLE                         R28 K45 [{"Anchor", "Content"}]
      108 GETUPVAL                         R29 0
      109 GETTABLEKS                       R29 R29 K1 ["createElement"]
      111 GETUPVAL                         R30 7
      112 GETTABLEKS                       R30 R30 K44 ["Anchor"]
      114 DUPTABLE                         R31 K47 [{["LayoutOrder"] = 2}]
      115 GETUPVAL                         R32 0
      116 GETTABLEKS                       R32 R32 K1 ["createElement"]
      118 GETUPVAL                         R33 1
      119 DUPTABLE                         R34 K49 [{["text"] = "Open First Popover", ["onActivated"]}]
      120 SETTABLEKS                       R7 R34 K8 ["onActivated"]
      122 CALL                             R32 2 -1
      123 CALL                             R29 -1 1
      124 SETTABLEKS                       R29 R28 K44 ["Anchor"]
      126 GETUPVAL                         R29 0
      127 GETTABLEKS                       R29 R29 K1 ["createElement"]
      129 GETUPVAL                         R30 7
      130 GETTABLEKS                       R30 R30 K27 ["Content"]
      132 DUPTABLE                         R31 K52 [{"align", "side"}]
      133 GETUPVAL                         R32 8
      134 GETTABLEKS                       R32 R32 K53 ["Start"]
      136 SETTABLEKS                       R32 R31 K50 ["align"]
      138 GETUPVAL                         R32 9
      139 GETTABLEKS                       R32 R32 K54 ["Right"]
      141 SETTABLEKS                       R32 R31 K51 ["side"]
      143 GETUPVAL                         R32 0
      144 GETTABLEKS                       R32 R32 K1 ["createElement"]
      146 GETUPVAL                         R33 5
      147 DUPTABLE                         R34 K56 [{["tag"] = "col gap-small auto-xy padding-medium"}]
      148 DUPTABLE                         R35 K58 [{"Title", "Description", "Popover2"}]
      149 GETUPVAL                         R36 0
      150 GETTABLEKS                       R36 R36 K1 ["createElement"]
      152 GETUPVAL                         R37 6
      153 DUPTABLE                         R38 K61 [{["Text"] = "First Popover", ["tag"] = "auto-xy text-title-medium content-emphasis", ["LayoutOrder"] = 1}]
      154 CALL                             R36 2 1
      155 SETTABLEKS                       R36 R35 K24 ["Title"]
      157 GETUPVAL                         R36 0
      158 GETTABLEKS                       R36 R36 K1 ["createElement"]
      160 GETUPVAL                         R37 6
      161 DUPTABLE                         R38 K64 [{["Text"] = "This popover is inside the dialog. Open the next one to verify nested stacking.", ["tag"] = "auto-xy text-body-small", ["LayoutOrder"] = 2}]
      162 CALL                             R36 2 1
      163 SETTABLEKS                       R36 R35 K33 ["Description"]
      165 GETUPVAL                         R36 0
      166 GETTABLEKS                       R36 R36 K1 ["createElement"]
      168 GETUPVAL                         R37 7
      169 GETTABLEKS                       R37 R37 K12 ["Root"]
      171 DUPTABLE                         R38 K43 [{"isOpen"}]
      172 SETTABLEKS                       R4 R38 K42 ["isOpen"]
      174 DUPTABLE                         R39 K45 [{"Anchor", "Content"}]
      175 GETUPVAL                         R40 0
      176 GETTABLEKS                       R40 R40 K1 ["createElement"]
      178 GETUPVAL                         R41 7
      179 GETTABLEKS                       R41 R41 K44 ["Anchor"]
      181 DUPTABLE                         R42 K66 [{["LayoutOrder"] = 3}]
      182 GETUPVAL                         R43 0
      183 GETTABLEKS                       R43 R43 K1 ["createElement"]
      185 GETUPVAL                         R44 1
      186 DUPTABLE                         R45 K68 [{["text"] = "Open Second Popover", ["onActivated"], ["size"]}]
      187 SETTABLEKS                       R8 R45 K8 ["onActivated"]
      189 GETUPVAL                         R46 10
      190 GETTABLEKS                       R46 R46 K69 ["Small"]
      192 SETTABLEKS                       R46 R45 K18 ["size"]
      194 CALL                             R43 2 -1
      195 CALL                             R40 -1 1
      196 SETTABLEKS                       R40 R39 K44 ["Anchor"]
      198 GETUPVAL                         R40 0
      199 GETTABLEKS                       R40 R40 K1 ["createElement"]
      201 GETUPVAL                         R41 7
      202 GETTABLEKS                       R41 R41 K27 ["Content"]
      204 DUPTABLE                         R42 K52 [{"align", "side"}]
      205 GETUPVAL                         R43 8
      206 GETTABLEKS                       R43 R43 K53 ["Start"]
      208 SETTABLEKS                       R43 R42 K50 ["align"]
      210 GETUPVAL                         R43 9
      211 GETTABLEKS                       R43 R43 K54 ["Right"]
      213 SETTABLEKS                       R43 R42 K51 ["side"]
      215 GETUPVAL                         R43 0
      216 GETTABLEKS                       R43 R43 K1 ["createElement"]
      218 GETUPVAL                         R44 5
      219 DUPTABLE                         R45 K56 [{["tag"] = "col gap-small auto-xy padding-medium"}]
      220 DUPTABLE                         R46 K70 [{"Title", "Description"}]
      221 GETUPVAL                         R47 0
      222 GETTABLEKS                       R47 R47 K1 ["createElement"]
      224 GETUPVAL                         R48 6
      225 DUPTABLE                         R49 K72 [{["Text"] = "Second Popover", ["tag"] = "auto-xy text-title-medium content-emphasis"}]
      226 CALL                             R47 2 1
      227 SETTABLEKS                       R47 R46 K24 ["Title"]
      229 GETUPVAL                         R47 0
      230 GETTABLEKS                       R47 R47 K1 ["createElement"]
      232 GETUPVAL                         R48 6
      233 DUPTABLE                         R49 K74 [{["Text"] = "This nested popover should render above the first popover.", ["tag"] = "auto-xy text-body-small"}]
      234 CALL                             R47 2 1
      235 SETTABLEKS                       R47 R46 K33 ["Description"]
      237 CALL                             R43 3 -1
      238 CALL                             R40 -1 1
      239 SETTABLEKS                       R40 R39 K27 ["Content"]
      241 CALL                             R36 3 1
      242 SETTABLEKS                       R36 R35 K57 ["Popover2"]
      244 CALL                             R32 3 -1
      245 CALL                             R29 -1 1
      246 SETTABLEKS                       R29 R28 K27 ["Content"]
      248 CALL                             R25 3 1
      249 SETTABLEKS                       R25 R24 K34 ["Popover1"]
      251 CALL                             R21 3 1
      252 SETTABLEKS                       R21 R20 K28 ["Layout"]
      254 CALL                             R17 3 1
      255 SETTABLEKS                       R17 R16 K22 ["DialogContent"]
      257 CALL                             R13 3 1
      258 JUMP                             ; [+1]
      259 LOADNIL                          R13
      260 SETTABLEKS                       R13 R12 K4 ["Dialog"]
      262 CALL                             R9 3 -1
      263 RETURN                           R9 -1

PROTO_27:
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

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_31:
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
       20 NEWCLOSURE                       R8 P0
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R3
       24 CAPTURE                          VAL R5
       25 CAPTURE                          VAL R7
       26 NEWCLOSURE                       R9 P1
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R2
       29 NEWCLOSURE                       R10 P2
       30 CAPTURE                          VAL R5
       31 CAPTURE                          VAL R4
       32 NEWCLOSURE                       R11 P3
       33 CAPTURE                          VAL R7
       34 CAPTURE                          VAL R6
       35 GETUPVAL                         R12 0
       36 GETTABLEKS                       R12 R12 K1 ["createElement"]
       38 GETUPVAL                         R13 0
       39 GETTABLEKS                       R13 R13 K2 ["Fragment"]
       41 LOADNIL                          R14
       42 DUPTABLE                         R15 K5 [{"ToggleButton", "Dialog"}]
       43 GETUPVAL                         R16 0
       44 GETTABLEKS                       R16 R16 K1 ["createElement"]
       46 GETUPVAL                         R17 1
       47 DUPTABLE                         R18 K10 [{["text"] = "Open Dialog", ["onActivated"], ["variant"]}]
       48 SETTABLEKS                       R8 R18 K8 ["onActivated"]
       50 GETUPVAL                         R19 2
       51 GETTABLEKS                       R19 R19 K11 ["Emphasis"]
       53 SETTABLEKS                       R19 R18 K9 ["variant"]
       55 CALL                             R16 2 1
       56 SETTABLEKS                       R16 R15 K3 ["ToggleButton"]
       58 JUMPIFNOT                        R0 ; [+284]
       59 GETUPVAL                         R16 0
       60 GETTABLEKS                       R16 R16 K1 ["createElement"]
       62 GETUPVAL                         R17 3
       63 GETTABLEKS                       R17 R17 K12 ["Root"]
       65 DUPTABLE                         R18 K19 [{["onClose"], ["hasBackdrop"] = True, ["disablePortal"] = False, ["size"]}]
       66 SETTABLEKS                       R8 R18 K13 ["onClose"]
       68 GETUPVAL                         R19 4
       69 GETTABLEKS                       R19 R19 K20 ["Large"]
       71 SETTABLEKS                       R19 R18 K18 ["size"]
       73 DUPTABLE                         R19 K23 [{"DialogTitle", "DialogContent"}]
       74 GETUPVAL                         R20 0
       75 GETTABLEKS                       R20 R20 K1 ["createElement"]
       77 GETUPVAL                         R21 3
       78 GETTABLEKS                       R21 R21 K24 ["Title"]
       80 DUPTABLE                         R22 K26 [{["text"] = "Dialog with Sibling Popovers"}]
       81 CALL                             R20 2 1
       82 SETTABLEKS                       R20 R19 K21 ["DialogTitle"]
       84 GETUPVAL                         R20 0
       85 GETTABLEKS                       R20 R20 K1 ["createElement"]
       87 GETUPVAL                         R21 3
       88 GETTABLEKS                       R21 R21 K27 ["Content"]
       90 LOADNIL                          R22
       91 DUPTABLE                         R23 K29 [{"Layout"}]
       92 GETUPVAL                         R24 0
       93 GETTABLEKS                       R24 R24 K1 ["createElement"]
       95 GETUPVAL                         R25 5
       96 DUPTABLE                         R26 K32 [{["tag"] = "col gap-medium auto-xy"}]
       97 DUPTABLE                         R27 K35 [{"Description", "Buttons"}]
       98 GETUPVAL                         R28 0
       99 GETTABLEKS                       R28 R28 K1 ["createElement"]
      101 GETUPVAL                         R29 6
      102 DUPTABLE                         R30 K41 [{["Text"] = "Open multiple popovers at the same time. All should render above the dialog at the same elevation.", ["tag"] = "auto-xy text-body-large", ["LayoutOrder"] = 1}]
      103 CALL                             R28 2 1
      104 SETTABLEKS                       R28 R27 K33 ["Description"]
      106 GETUPVAL                         R28 0
      107 GETTABLEKS                       R28 R28 K1 ["createElement"]
      109 GETUPVAL                         R29 5
      110 DUPTABLE                         R30 K44 [{["tag"] = "row gap-medium auto-xy", ["LayoutOrder"] = 2}]
      111 NEWTABLE                         R31 0 3
      113 GETUPVAL                         R32 0
      114 GETTABLEKS                       R32 R32 K1 ["createElement"]
      116 GETUPVAL                         R33 7
      117 GETTABLEKS                       R33 R33 K12 ["Root"]
      119 DUPTABLE                         R34 K46 [{"isOpen"}]
      120 SETTABLEKS                       R2 R34 K45 ["isOpen"]
      122 DUPTABLE                         R35 K48 [{"Anchor", "Content"}]
      123 GETUPVAL                         R36 0
      124 GETTABLEKS                       R36 R36 K1 ["createElement"]
      126 GETUPVAL                         R37 7
      127 GETTABLEKS                       R37 R37 K47 ["Anchor"]
      129 LOADNIL                          R38
      130 GETUPVAL                         R39 0
      131 GETTABLEKS                       R39 R39 K1 ["createElement"]
      133 GETUPVAL                         R40 1
      134 DUPTABLE                         R41 K50 [{["text"] = "Left Popover", ["onActivated"]}]
      135 SETTABLEKS                       R9 R41 K8 ["onActivated"]
      137 CALL                             R39 2 -1
      138 CALL                             R36 -1 1
      139 SETTABLEKS                       R36 R35 K47 ["Anchor"]
      141 GETUPVAL                         R36 0
      142 GETTABLEKS                       R36 R36 K1 ["createElement"]
      144 GETUPVAL                         R37 7
      145 GETTABLEKS                       R37 R37 K27 ["Content"]
      147 DUPTABLE                         R38 K53 [{"align", "side"}]
      148 GETUPVAL                         R39 8
      149 GETTABLEKS                       R39 R39 K54 ["Start"]
      151 SETTABLEKS                       R39 R38 K51 ["align"]
      153 GETUPVAL                         R39 9
      154 GETTABLEKS                       R39 R39 K55 ["Top"]
      156 SETTABLEKS                       R39 R38 K52 ["side"]
      158 GETUPVAL                         R39 0
      159 GETTABLEKS                       R39 R39 K1 ["createElement"]
      161 GETUPVAL                         R40 5
      162 DUPTABLE                         R41 K57 [{["tag"] = "col gap-small auto-xy padding-medium"}]
      163 DUPTABLE                         R42 K59 [{"Title", "Subtitle"}]
      164 GETUPVAL                         R43 0
      165 GETTABLEKS                       R43 R43 K1 ["createElement"]
      167 GETUPVAL                         R44 6
      168 DUPTABLE                         R45 K61 [{["Text"] = "Left Popover", ["tag"] = "auto-xy text-title-medium content-emphasis"}]
      169 CALL                             R43 2 1
      170 SETTABLEKS                       R43 R42 K24 ["Title"]
      172 GETUPVAL                         R43 0
      173 GETTABLEKS                       R43 R43 K1 ["createElement"]
      175 GETUPVAL                         R44 6
      176 DUPTABLE                         R45 K64 [{["Text"] = "Sibling popover inside dialog", ["tag"] = "auto-xy text-body-small"}]
      177 CALL                             R43 2 1
      178 SETTABLEKS                       R43 R42 K58 ["Subtitle"]
      180 CALL                             R39 3 -1
      181 CALL                             R36 -1 1
      182 SETTABLEKS                       R36 R35 K27 ["Content"]
      184 CALL                             R32 3 1
      185 SETTABLEN                        R32 R31 1
      186 GETUPVAL                         R32 0
      187 GETTABLEKS                       R32 R32 K1 ["createElement"]
      189 GETUPVAL                         R33 7
      190 GETTABLEKS                       R33 R33 K12 ["Root"]
      192 DUPTABLE                         R34 K46 [{"isOpen"}]
      193 SETTABLEKS                       R4 R34 K45 ["isOpen"]
      195 DUPTABLE                         R35 K48 [{"Anchor", "Content"}]
      196 GETUPVAL                         R36 0
      197 GETTABLEKS                       R36 R36 K1 ["createElement"]
      199 GETUPVAL                         R37 7
      200 GETTABLEKS                       R37 R37 K47 ["Anchor"]
      202 LOADNIL                          R38
      203 GETUPVAL                         R39 0
      204 GETTABLEKS                       R39 R39 K1 ["createElement"]
      206 GETUPVAL                         R40 1
      207 DUPTABLE                         R41 K66 [{["text"] = "Middle Popover", ["onActivated"]}]
      208 SETTABLEKS                       R10 R41 K8 ["onActivated"]
      210 CALL                             R39 2 -1
      211 CALL                             R36 -1 1
      212 SETTABLEKS                       R36 R35 K47 ["Anchor"]
      214 GETUPVAL                         R36 0
      215 GETTABLEKS                       R36 R36 K1 ["createElement"]
      217 GETUPVAL                         R37 7
      218 GETTABLEKS                       R37 R37 K27 ["Content"]
      220 DUPTABLE                         R38 K53 [{"align", "side"}]
      221 GETUPVAL                         R39 8
      222 GETTABLEKS                       R39 R39 K67 ["Center"]
      224 SETTABLEKS                       R39 R38 K51 ["align"]
      226 GETUPVAL                         R39 9
      227 GETTABLEKS                       R39 R39 K55 ["Top"]
      229 SETTABLEKS                       R39 R38 K52 ["side"]
      231 GETUPVAL                         R39 0
      232 GETTABLEKS                       R39 R39 K1 ["createElement"]
      234 GETUPVAL                         R40 5
      235 DUPTABLE                         R41 K57 [{["tag"] = "col gap-small auto-xy padding-medium"}]
      236 DUPTABLE                         R42 K59 [{"Title", "Subtitle"}]
      237 GETUPVAL                         R43 0
      238 GETTABLEKS                       R43 R43 K1 ["createElement"]
      240 GETUPVAL                         R44 6
      241 DUPTABLE                         R45 K68 [{["Text"] = "Middle Popover", ["tag"] = "auto-xy text-title-medium content-emphasis"}]
      242 CALL                             R43 2 1
      243 SETTABLEKS                       R43 R42 K24 ["Title"]
      245 GETUPVAL                         R43 0
      246 GETTABLEKS                       R43 R43 K1 ["createElement"]
      248 GETUPVAL                         R44 6
      249 DUPTABLE                         R45 K64 [{["Text"] = "Sibling popover inside dialog", ["tag"] = "auto-xy text-body-small"}]
      250 CALL                             R43 2 1
      251 SETTABLEKS                       R43 R42 K58 ["Subtitle"]
      253 CALL                             R39 3 -1
      254 CALL                             R36 -1 1
      255 SETTABLEKS                       R36 R35 K27 ["Content"]
      257 CALL                             R32 3 1
      258 SETTABLEN                        R32 R31 2
      259 GETUPVAL                         R32 0
      260 GETTABLEKS                       R32 R32 K1 ["createElement"]
      262 GETUPVAL                         R33 7
      263 GETTABLEKS                       R33 R33 K12 ["Root"]
      265 DUPTABLE                         R34 K46 [{"isOpen"}]
      266 SETTABLEKS                       R6 R34 K45 ["isOpen"]
      268 DUPTABLE                         R35 K48 [{"Anchor", "Content"}]
      269 GETUPVAL                         R36 0
      270 GETTABLEKS                       R36 R36 K1 ["createElement"]
      272 GETUPVAL                         R37 7
      273 GETTABLEKS                       R37 R37 K47 ["Anchor"]
      275 LOADNIL                          R38
      276 GETUPVAL                         R39 0
      277 GETTABLEKS                       R39 R39 K1 ["createElement"]
      279 GETUPVAL                         R40 1
      280 DUPTABLE                         R41 K70 [{["text"] = "Right Popover", ["onActivated"]}]
      281 SETTABLEKS                       R11 R41 K8 ["onActivated"]
      283 CALL                             R39 2 -1
      284 CALL                             R36 -1 1
      285 SETTABLEKS                       R36 R35 K47 ["Anchor"]
      287 GETUPVAL                         R36 0
      288 GETTABLEKS                       R36 R36 K1 ["createElement"]
      290 GETUPVAL                         R37 7
      291 GETTABLEKS                       R37 R37 K27 ["Content"]
      293 DUPTABLE                         R38 K53 [{"align", "side"}]
      294 GETUPVAL                         R39 8
      295 GETTABLEKS                       R39 R39 K71 ["End"]
      297 SETTABLEKS                       R39 R38 K51 ["align"]
      299 GETUPVAL                         R39 9
      300 GETTABLEKS                       R39 R39 K55 ["Top"]
      302 SETTABLEKS                       R39 R38 K52 ["side"]
      304 GETUPVAL                         R39 0
      305 GETTABLEKS                       R39 R39 K1 ["createElement"]
      307 GETUPVAL                         R40 5
      308 DUPTABLE                         R41 K57 [{["tag"] = "col gap-small auto-xy padding-medium"}]
      309 DUPTABLE                         R42 K59 [{"Title", "Subtitle"}]
      310 GETUPVAL                         R43 0
      311 GETTABLEKS                       R43 R43 K1 ["createElement"]
      313 GETUPVAL                         R44 6
      314 DUPTABLE                         R45 K72 [{["Text"] = "Right Popover", ["tag"] = "auto-xy text-title-medium content-emphasis"}]
      315 CALL                             R43 2 1
      316 SETTABLEKS                       R43 R42 K24 ["Title"]
      318 GETUPVAL                         R43 0
      319 GETTABLEKS                       R43 R43 K1 ["createElement"]
      321 GETUPVAL                         R44 6
      322 DUPTABLE                         R45 K64 [{["Text"] = "Sibling popover inside dialog", ["tag"] = "auto-xy text-body-small"}]
      323 CALL                             R43 2 1
      324 SETTABLEKS                       R43 R42 K58 ["Subtitle"]
      326 CALL                             R39 3 -1
      327 CALL                             R36 -1 1
      328 SETTABLEKS                       R36 R35 K27 ["Content"]
      330 CALL                             R32 3 1
      331 SETTABLEN                        R32 R31 3
      332 CALL                             R28 3 1
      333 SETTABLEKS                       R28 R27 K34 ["Buttons"]
      335 CALL                             R24 3 1
      336 SETTABLEKS                       R24 R23 K28 ["Layout"]
      338 CALL                             R20 3 1
      339 SETTABLEKS                       R20 R19 K22 ["DialogContent"]
      341 CALL                             R16 3 1
      342 JUMP                             ; [+1]
      343 LOADNIL                          R16
      344 SETTABLEKS                       R16 R15 K4 ["Dialog"]
      346 CALL                             R12 3 -1
      347 RETURN                           R12 -1

PROTO_32:
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

PROTO_33:
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

PROTO_34:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_35:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Elevation story menu activated:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 0
        6 LOADB                            R2 0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_37:
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
       24 NEWTABLE                         R8 0 4
       26 DUPTABLE                         R9 K8 [{["id"] = "file", ["icon"] = "page", ["text"] = "File", ["items"]}]
       27 NEWTABLE                         R10 0 4
       29 DUPTABLE                         R11 K12 [{["id"] = "open-recent", ["icon"] = "clock", ["text"] = "Open Recent", ["items"]}]
       30 NEWTABLE                         R12 0 3
       32 DUPTABLE                         R13 K16 [{["id"] = "project-alpha", ["icon"] = "globe-simplified", ["text"] = "Project Alpha"}]
       33 DUPTABLE                         R14 K19 [{["id"] = "project-beta", ["icon"] = "globe-simplified", ["text"] = "Project Beta"}]
       34 DUPTABLE                         R15 K22 [{["id"] = "project-gamma", ["text"] = "Project Gamma"}]
       35 SETLIST                          R12 R13 3 [1]
       37 SETTABLEKS                       R12 R11 K7 ["items"]
       39 DUPTABLE                         R12 K26 [{["id"] = "save", ["icon"] = "floppy-disk", ["text"] = "Save"}]
       40 DUPTABLE                         R13 K29 [{["id"] = "save-as", ["text"] = "Save As..."}]
       41 DUPTABLE                         R14 K33 [{["id"] = "export", ["icon"] = "arrow-large-right", ["text"] = "Export", ["items"]}]
       42 NEWTABLE                         R15 0 3
       44 DUPTABLE                         R16 K36 [{["id"] = "export-rbxl", ["text"] = "Place File (.rbxl)"}]
       45 DUPTABLE                         R17 K39 [{["id"] = "export-rbxm", ["text"] = "Model File (.rbxm)"}]
       46 DUPTABLE                         R18 K43 [{["id"] = "export-png", ["icon"] = "photo-camera", ["text"] = "Screenshot (.png)"}]
       47 SETLIST                          R15 R16 3 [1]
       49 SETTABLEKS                       R15 R14 K7 ["items"]
       51 SETLIST                          R10 R11 4 [1]
       53 SETTABLEKS                       R10 R9 K7 ["items"]
       55 DUPTABLE                         R10 K47 [{["id"] = "edit", ["icon"] = "pencil-square", ["text"] = "Edit", ["items"]}]
       56 NEWTABLE                         R11 0 5
       58 DUPTABLE                         R12 K51 [{["id"] = "undo", ["icon"] = "arrow-large-left", ["text"] = "Undo"}]
       59 DUPTABLE                         R13 K54 [{["id"] = "redo", ["icon"] = "arrow-large-right", ["text"] = "Redo"}]
       60 DUPTABLE                         R14 K57 [{["id"] = "cut", ["text"] = "Cut"}]
       61 DUPTABLE                         R15 K60 [{["id"] = "copy", ["text"] = "Copy"}]
       62 DUPTABLE                         R16 K63 [{["id"] = "paste", ["text"] = "Paste"}]
       63 SETLIST                          R11 R12 5 [1]
       65 SETTABLEKS                       R11 R10 K7 ["items"]
       67 DUPTABLE                         R11 K67 [{["id"] = "select-all", ["icon"] = "check-large", ["text"] = "Select All"}]
       68 DUPTABLE                         R12 K71 [{["id"] = "preferences", ["icon"] = "gear", ["text"] = "Preferences"}]
       69 SETLIST                          R8 R9 4 [1]
       71 GETUPVAL                         R9 0
       72 GETTABLEKS                       R9 R9 K72 ["createElement"]
       74 GETUPVAL                         R10 0
       75 GETTABLEKS                       R10 R10 K73 ["Fragment"]
       77 LOADNIL                          R11
       78 DUPTABLE                         R12 K77 [{"ToggleButton", "Sheet", "Dialog"}]
       79 GETUPVAL                         R13 0
       80 GETTABLEKS                       R13 R13 K72 ["createElement"]
       82 GETUPVAL                         R14 1
       83 DUPTABLE                         R15 K81 [{["text"] = "Open Sheet", ["onActivated"], ["variant"]}]
       84 SETTABLEKS                       R6 R15 K79 ["onActivated"]
       86 GETUPVAL                         R16 2
       87 GETTABLEKS                       R16 R16 K82 ["Emphasis"]
       89 SETTABLEKS                       R16 R15 K80 ["variant"]
       91 CALL                             R13 2 1
       92 SETTABLEKS                       R13 R12 K74 ["ToggleButton"]
       94 JUMPIFNOT                        R0 ; [+86]
       95 GETUPVAL                         R13 0
       96 GETTABLEKS                       R13 R13 K72 ["createElement"]
       98 GETUPVAL                         R14 3
       99 GETTABLEKS                       R14 R14 K83 ["Root"]
      101 DUPTABLE                         R15 K89 [{["onClose"], ["snapPoints"], ["defaultSnapPointIndex"] = 2, ["displaySize"]}]
      102 SETTABLEKS                       R6 R15 K84 ["onClose"]
      104 NEWTABLE                         R16 0 2
      106 LOADK                            R17 K90 [0.4]
      107 LOADK                            R18 K91 [0.7]
      108 SETLIST                          R16 R17 2 [1]
      110 SETTABLEKS                       R16 R15 K85 ["snapPoints"]
      112 GETIMPORT                        R16 K95 [Enum.DisplaySize.Small]
      114 SETTABLEKS                       R16 R15 K88 ["displaySize"]
      116 DUPTABLE                         R16 K98 [{"Header", "Content"}]
      117 GETUPVAL                         R17 0
      118 GETTABLEKS                       R17 R17 K72 ["createElement"]
      120 GETUPVAL                         R18 3
      121 GETTABLEKS                       R18 R18 K96 ["Header"]
      123 LOADNIL                          R19
      124 DUPTABLE                         R20 K100 [{"Title"}]
      125 GETUPVAL                         R21 0
      126 GETTABLEKS                       R21 R21 K72 ["createElement"]
      128 GETUPVAL                         R22 4
      129 DUPTABLE                         R23 K105 [{["Text"] = "Sheet with Dialog & Menus", ["tag"] = "auto-xy text-title-medium content-emphasis"}]
      130 CALL                             R21 2 1
      131 SETTABLEKS                       R21 R20 K99 ["Title"]
      133 CALL                             R17 3 1
      134 SETTABLEKS                       R17 R16 K96 ["Header"]
      136 GETUPVAL                         R17 0
      137 GETTABLEKS                       R17 R17 K72 ["createElement"]
      139 GETUPVAL                         R18 3
      140 GETTABLEKS                       R18 R18 K97 ["Content"]
      142 LOADNIL                          R19
      143 DUPTABLE                         R20 K107 [{"Layout"}]
      144 GETUPVAL                         R21 0
      145 GETTABLEKS                       R21 R21 K72 ["createElement"]
      147 GETUPVAL                         R22 5
      148 DUPTABLE                         R23 K109 [{["tag"] = "col gap-medium auto-xy"}]
      149 DUPTABLE                         R24 K112 [{"Description", "OpenDialogButton"}]
      150 GETUPVAL                         R25 0
      151 GETTABLEKS                       R25 R25 K72 ["createElement"]
      153 GETUPVAL                         R26 4
      154 DUPTABLE                         R27 K117 [{["Text"] = "Open the dialog below, then try the nested menu inside it.", ["tag"] = "auto-xy text-body-medium", ["LayoutOrder"] = 1}]
      155 CALL                             R25 2 1
      156 SETTABLEKS                       R25 R24 K110 ["Description"]
      158 GETUPVAL                         R25 0
      159 GETTABLEKS                       R25 R25 K72 ["createElement"]
      161 GETUPVAL                         R26 1
      162 DUPTABLE                         R27 K119 [{["text"] = "Open Dialog", ["onActivated"], ["variant"], ["LayoutOrder"] = 2}]
      163 SETTABLEKS                       R7 R27 K79 ["onActivated"]
      165 GETUPVAL                         R28 2
      166 GETTABLEKS                       R28 R28 K82 ["Emphasis"]
      168 SETTABLEKS                       R28 R27 K80 ["variant"]
      170 CALL                             R25 2 1
      171 SETTABLEKS                       R25 R24 K111 ["OpenDialogButton"]
      173 CALL                             R21 3 1
      174 SETTABLEKS                       R21 R20 K106 ["Layout"]
      176 CALL                             R17 3 1
      177 SETTABLEKS                       R17 R16 K97 ["Content"]
      179 CALL                             R13 3 1
      180 JUMP                             ; [+1]
      181 LOADNIL                          R13
      182 SETTABLEKS                       R13 R12 K75 ["Sheet"]
      184 JUMPIFNOT                        R2 ; [+108]
      185 GETUPVAL                         R13 0
      186 GETTABLEKS                       R13 R13 K72 ["createElement"]
      188 GETUPVAL                         R14 6
      189 GETTABLEKS                       R14 R14 K83 ["Root"]
      191 DUPTABLE                         R15 K125 [{["onClose"], ["hasBackdrop"] = True, ["disablePortal"] = False, ["size"]}]
      192 SETTABLEKS                       R7 R15 K84 ["onClose"]
      194 GETUPVAL                         R16 7
      195 GETTABLEKS                       R16 R16 K126 ["Large"]
      197 SETTABLEKS                       R16 R15 K124 ["size"]
      199 DUPTABLE                         R16 K129 [{"DialogTitle", "DialogContent"}]
      200 GETUPVAL                         R17 0
      201 GETTABLEKS                       R17 R17 K72 ["createElement"]
      203 GETUPVAL                         R18 6
      204 GETTABLEKS                       R18 R18 K99 ["Title"]
      206 DUPTABLE                         R19 K131 [{["text"] = "Dialog with Nested Menu"}]
      207 CALL                             R17 2 1
      208 SETTABLEKS                       R17 R16 K127 ["DialogTitle"]
      210 GETUPVAL                         R17 0
      211 GETTABLEKS                       R17 R17 K72 ["createElement"]
      213 GETUPVAL                         R18 6
      214 GETTABLEKS                       R18 R18 K97 ["Content"]
      216 LOADNIL                          R19
      217 DUPTABLE                         R20 K107 [{"Layout"}]
      218 GETUPVAL                         R21 0
      219 GETTABLEKS                       R21 R21 K72 ["createElement"]
      221 GETUPVAL                         R22 5
      222 DUPTABLE                         R23 K109 [{["tag"] = "col gap-medium auto-xy"}]
      223 DUPTABLE                         R24 K133 [{"Description", "MenuContainer"}]
      224 GETUPVAL                         R25 0
      225 GETTABLEKS                       R25 R25 K72 ["createElement"]
      227 GETUPVAL                         R26 4
      228 DUPTABLE                         R27 K135 [{["Text"] = "The menu below has 3 levels of nested submenus. Hover or click to navigate.", ["tag"] = "auto-xy text-body-medium", ["LayoutOrder"] = 1}]
      229 CALL                             R25 2 1
      230 SETTABLEKS                       R25 R24 K110 ["Description"]
      232 GETUPVAL                         R25 0
      233 GETTABLEKS                       R25 R25 K72 ["createElement"]
      235 GETUPVAL                         R26 5
      236 DUPTABLE                         R27 K137 [{["tag"] = "row auto-xy", ["LayoutOrder"] = 2}]
      237 DUPTABLE                         R28 K139 [{"Menu"}]
      238 GETUPVAL                         R29 0
      239 GETTABLEKS                       R29 R29 K72 ["createElement"]
      241 GETUPVAL                         R30 8
      242 DUPTABLE                         R31 K142 [{"isOpen", "items", "size", "onPressedOutside", "onActivated"}]
      243 SETTABLEKS                       R4 R31 K140 ["isOpen"]
      245 SETTABLEKS                       R8 R31 K7 ["items"]
      247 GETUPVAL                         R32 9
      248 GETTABLEKS                       R32 R32 K143 ["Medium"]
      250 SETTABLEKS                       R32 R31 K124 ["size"]
      252 NEWCLOSURE                       R32 P2
      253 CAPTURE                          VAL R5
      254 SETTABLEKS                       R32 R31 K141 ["onPressedOutside"]
      256 NEWCLOSURE                       R32 P3
      257 CAPTURE                          VAL R5
      258 SETTABLEKS                       R32 R31 K79 ["onActivated"]
      260 DUPTABLE                         R32 K145 [{"Button"}]
      261 GETUPVAL                         R33 0
      262 GETTABLEKS                       R33 R33 K72 ["createElement"]
      264 GETUPVAL                         R34 1
      265 DUPTABLE                         R35 K147 [{["text"] = "Open Menu", ["size"], ["onActivated"]}]
      266 GETUPVAL                         R36 9
      267 GETTABLEKS                       R36 R36 K143 ["Medium"]
      269 SETTABLEKS                       R36 R35 K124 ["size"]
      271 NEWCLOSURE                       R36 P4
      272 CAPTURE                          VAL R5
      273 CAPTURE                          VAL R4
      274 SETTABLEKS                       R36 R35 K79 ["onActivated"]
      276 CALL                             R33 2 1
      277 SETTABLEKS                       R33 R32 K144 ["Button"]
      279 CALL                             R29 3 1
      280 SETTABLEKS                       R29 R28 K138 ["Menu"]
      282 CALL                             R25 3 1
      283 SETTABLEKS                       R25 R24 K132 ["MenuContainer"]
      285 CALL                             R21 3 1
      286 SETTABLEKS                       R21 R20 K106 ["Layout"]
      288 CALL                             R17 3 1
      289 SETTABLEKS                       R17 R16 K128 ["DialogContent"]
      291 CALL                             R13 3 1
      292 JUMP                             ; [+1]
      293 LOADNIL                          R13
      294 SETTABLEKS                       R13 R12 K76 ["Dialog"]
      296 CALL                             R9 3 -1
      297 RETURN                           R9 -1

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
       44 GETTABLEKS                       R8 R0 K14 ["Utility"]
       46 GETTABLEKS                       R8 R8 K15 ["Flags"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K8 ["Components"]
       53 GETTABLEKS                       R9 R9 K16 ["IconButton"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K10 ["Enums"]
       60 GETTABLEKS                       R10 R10 K17 ["InputSize"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K8 ["Components"]
       67 GETTABLEKS                       R11 R11 K18 ["Menu"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R0 K8 ["Components"]
       74 GETTABLEKS                       R12 R12 K19 ["Popover"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R13 R0 K10 ["Enums"]
       81 GETTABLEKS                       R13 R13 K20 ["PopoverAlign"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K6 [require]
       86 GETTABLEKS                       R14 R0 K10 ["Enums"]
       88 GETTABLEKS                       R14 R14 K21 ["PopoverSide"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K6 [require]
       93 GETTABLEKS                       R15 R0 K8 ["Components"]
       95 GETTABLEKS                       R15 R15 K22 ["Sheet"]
       97 CALL                             R14 1 1
       98 GETIMPORT                        R15 K6 [require]
      100 GETTABLEKS                       R16 R0 K8 ["Components"]
      102 GETTABLEKS                       R16 R16 K23 ["Text"]
      104 CALL                             R15 1 1
      105 GETIMPORT                        R16 K6 [require]
      107 GETTABLEKS                       R17 R0 K8 ["Components"]
      109 GETTABLEKS                       R17 R17 K24 ["View"]
      111 CALL                             R16 1 1
      112 DUPCLOSURE                       R17 K25 [PROTO_0]
      113 CAPTURE                          VAL R2
      114 CAPTURE                          VAL R11
      115 CAPTURE                          VAL R8
      116 CAPTURE                          VAL R9
      117 CAPTURE                          VAL R12
      118 CAPTURE                          VAL R13
      119 CAPTURE                          VAL R16
      120 CAPTURE                          VAL R15
      121 DUPTABLE                         R18 K30 [{["summary"] = "Elevation", ["stories"], ["controls"]}]
      122 NEWTABLE                         R19 0 7
      124 DUPTABLE                         R20 K34 [{["name"] = "Nested Popovers", ["story"]}]
      125 DUPCLOSURE                       R21 K35 [PROTO_4]
      126 CAPTURE                          VAL R2
      127 CAPTURE                          VAL R16
      128 CAPTURE                          VAL R11
      129 CAPTURE                          VAL R3
      130 CAPTURE                          VAL R4
      131 CAPTURE                          VAL R12
      132 CAPTURE                          VAL R13
      133 CAPTURE                          VAL R15
      134 CAPTURE                          VAL R9
      135 SETTABLEKS                       R21 R20 K33 ["story"]
      137 DUPTABLE                         R21 K37 [{["name"] = "Sibling Popovers", ["story"]}]
      138 DUPCLOSURE                       R22 K38 [PROTO_8]
      139 CAPTURE                          VAL R2
      140 CAPTURE                          VAL R16
      141 CAPTURE                          VAL R11
      142 CAPTURE                          VAL R3
      143 CAPTURE                          VAL R4
      144 CAPTURE                          VAL R12
      145 CAPTURE                          VAL R13
      146 CAPTURE                          VAL R15
      147 SETTABLEKS                       R22 R21 K33 ["story"]
      149 DUPTABLE                         R22 K40 [{["name"] = "Nested Sheets", ["story"]}]
      150 DUPCLOSURE                       R23 K41 [PROTO_15]
      151 CAPTURE                          VAL R2
      152 CAPTURE                          VAL R3
      153 CAPTURE                          VAL R4
      154 CAPTURE                          VAL R14
      155 CAPTURE                          VAL R15
      156 CAPTURE                          VAL R16
      157 CAPTURE                          VAL R17
      158 SETTABLEKS                       R23 R22 K33 ["story"]
      160 DUPTABLE                         R23 K43 [{["name"] = "Nested Dialogs", ["story"]}]
      161 DUPCLOSURE                       R24 K44 [PROTO_22]
      162 CAPTURE                          VAL R2
      163 CAPTURE                          VAL R3
      164 CAPTURE                          VAL R4
      165 CAPTURE                          VAL R5
      166 CAPTURE                          VAL R6
      167 CAPTURE                          VAL R16
      168 CAPTURE                          VAL R17
      169 CAPTURE                          VAL R15
      170 SETTABLEKS                       R24 R23 K33 ["story"]
      172 DUPTABLE                         R24 K46 [{["name"] = "Dialog with Nested Popovers", ["story"]}]
      173 DUPCLOSURE                       R25 K47 [PROTO_26]
      174 CAPTURE                          VAL R2
      175 CAPTURE                          VAL R3
      176 CAPTURE                          VAL R4
      177 CAPTURE                          VAL R5
      178 CAPTURE                          VAL R6
      179 CAPTURE                          VAL R16
      180 CAPTURE                          VAL R15
      181 CAPTURE                          VAL R11
      182 CAPTURE                          VAL R12
      183 CAPTURE                          VAL R13
      184 CAPTURE                          VAL R9
      185 SETTABLEKS                       R25 R24 K33 ["story"]
      187 DUPTABLE                         R25 K49 [{["name"] = "Dialog with Sibling Popovers", ["story"]}]
      188 DUPCLOSURE                       R26 K50 [PROTO_31]
      189 CAPTURE                          VAL R2
      190 CAPTURE                          VAL R3
      191 CAPTURE                          VAL R4
      192 CAPTURE                          VAL R5
      193 CAPTURE                          VAL R6
      194 CAPTURE                          VAL R16
      195 CAPTURE                          VAL R15
      196 CAPTURE                          VAL R11
      197 CAPTURE                          VAL R12
      198 CAPTURE                          VAL R13
      199 SETTABLEKS                       R26 R25 K33 ["story"]
      201 GETTABLEKS                       R27 R7 K51 ["FoundationBaseMenuSubmenuSupport"]
      203 JUMPIFNOT                        R27 ; [+15]
      204 DUPTABLE                         R26 K53 [{["name"] = "Sheet > Dialog > Nested Menus", ["story"]}]
      205 DUPCLOSURE                       R27 K54 [PROTO_37]
      206 CAPTURE                          VAL R2
      207 CAPTURE                          VAL R3
      208 CAPTURE                          VAL R4
      209 CAPTURE                          VAL R14
      210 CAPTURE                          VAL R15
      211 CAPTURE                          VAL R16
      212 CAPTURE                          VAL R5
      213 CAPTURE                          VAL R6
      214 CAPTURE                          VAL R10
      215 CAPTURE                          VAL R9
      216 SETTABLEKS                       R27 R26 K33 ["story"]
      218 JUMP                             ; [+2]
      219 NEWTABLE                         R26 0 0
      221 SETLIST                          R19 R20 7 [1]
      223 SETTABLEKS                       R19 R18 K28 ["stories"]
      225 NEWTABLE                         R19 0 0
      227 SETTABLEKS                       R19 R18 K29 ["controls"]
      229 RETURN                           R18 1
