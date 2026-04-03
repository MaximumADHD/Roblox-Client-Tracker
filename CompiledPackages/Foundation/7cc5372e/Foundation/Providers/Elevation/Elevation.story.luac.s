PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Root"]
        6 DUPTABLE                         R3 K3 [{"isOpen"}]
        7 GETTABLEKS                       R4 R0 K2 ["isOpen"]
        9 SETTABLEKS                       R4 R3 K2 ["isOpen"]
       11 DUPTABLE                         R4 K6 [{"Anchor", "Content"}]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K0 ["createElement"]
       15 GETUPVAL                         R7 1
       16 GETTABLEKS                       R6 R7 K4 ["Anchor"]
       18 DUPTABLE                         R7 K8 [{"LayoutOrder"}]
       19 LOADN                            R8 2
       20 SETTABLEKS                       R8 R7 K7 ["LayoutOrder"]
       22 GETUPVAL                         R9 0
       23 GETTABLEKS                       R8 R9 K0 ["createElement"]
       25 GETUPVAL                         R9 2
       26 DUPTABLE                         R10 K12 [{"icon", "onActivated", "size"}]
       27 LOADK                            R11 K13 ["reactions/heart"]
       28 SETTABLEKS                       R11 R10 K9 ["icon"]
       30 GETTABLEKS                       R11 R0 K14 ["toggle"]
       32 SETTABLEKS                       R11 R10 K10 ["onActivated"]
       34 GETUPVAL                         R12 3
       35 GETTABLEKS                       R11 R12 K15 ["Medium"]
       37 SETTABLEKS                       R11 R10 K11 ["size"]
       39 CALL                             R8 2 -1
       40 CALL                             R5 -1 1
       41 SETTABLEKS                       R5 R4 K4 ["Anchor"]
       43 GETUPVAL                         R6 0
       44 GETTABLEKS                       R5 R6 K0 ["createElement"]
       46 GETUPVAL                         R7 1
       47 GETTABLEKS                       R6 R7 K5 ["Content"]
       49 DUPTABLE                         R7 K18 [{"align", "side"}]
       50 GETUPVAL                         R9 4
       51 GETTABLEKS                       R8 R9 K19 ["Start"]
       53 SETTABLEKS                       R8 R7 K16 ["align"]
       55 GETUPVAL                         R9 5
       56 GETTABLEKS                       R8 R9 K20 ["Top"]
       58 SETTABLEKS                       R8 R7 K17 ["side"]
       60 GETUPVAL                         R9 0
       61 GETTABLEKS                       R8 R9 K0 ["createElement"]
       63 GETUPVAL                         R9 6
       64 DUPTABLE                         R10 K22 [{"tag"}]
       65 LOADK                            R11 K23 ["col gap-small padding-medium auto-xy"]
       66 SETTABLEKS                       R11 R10 K21 ["tag"]
       68 DUPTABLE                         R11 K26 [{"Title", "Subtitle"}]
       69 GETUPVAL                         R13 0
       70 GETTABLEKS                       R12 R13 K0 ["createElement"]
       72 GETUPVAL                         R13 7
       73 DUPTABLE                         R14 K28 [{"Text", "tag"}]
       74 GETTABLEKS                       R15 R0 K29 ["title"]
       76 SETTABLEKS                       R15 R14 K27 ["Text"]
       78 LOADK                            R15 K30 ["auto-xy text-title-medium content-emphasis"]
       79 SETTABLEKS                       R15 R14 K21 ["tag"]
       81 CALL                             R12 2 1
       82 SETTABLEKS                       R12 R11 K24 ["Title"]
       84 GETUPVAL                         R13 0
       85 GETTABLEKS                       R12 R13 K0 ["createElement"]
       87 GETUPVAL                         R13 7
       88 DUPTABLE                         R14 K28 [{"Text", "tag"}]
       89 GETTABLEKS                       R15 R0 K31 ["subtitle"]
       91 SETTABLEKS                       R15 R14 K27 ["Text"]
       93 LOADK                            R15 K32 ["auto-xy text-body-small"]
       94 SETTABLEKS                       R15 R14 K21 ["tag"]
       96 CALL                             R12 2 1
       97 SETTABLEKS                       R12 R11 K25 ["Subtitle"]
       99 CALL                             R8 3 -1
      100 CALL                             R5 -1 1
      101 SETTABLEKS                       R5 R4 K5 ["Content"]
      103 CALL                             R1 3 -1
      104 RETURN                           R1 -1

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useState"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["useState"]
        8 LOADB                            R3 0
        9 CALL                             R2 1 2
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K0 ["useState"]
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
       27 GETUPVAL                         R10 0
       28 GETTABLEKS                       R9 R10 K1 ["createElement"]
       30 GETUPVAL                         R10 1
       31 DUPTABLE                         R11 K3 [{"tag"}]
       32 LOADK                            R12 K4 ["col auto-xy gap-medium"]
       33 SETTABLEKS                       R12 R11 K2 ["tag"]
       35 DUPTABLE                         R12 K6 [{"Popover1"}]
       36 GETUPVAL                         R14 0
       37 GETTABLEKS                       R13 R14 K1 ["createElement"]
       39 GETUPVAL                         R15 2
       40 GETTABLEKS                       R14 R15 K7 ["Root"]
       42 DUPTABLE                         R15 K9 [{"isOpen"}]
       43 SETTABLEKS                       R0 R15 K8 ["isOpen"]
       45 DUPTABLE                         R16 K12 [{"Anchor", "Content"}]
       46 GETUPVAL                         R18 0
       47 GETTABLEKS                       R17 R18 K1 ["createElement"]
       49 GETUPVAL                         R19 2
       50 GETTABLEKS                       R18 R19 K10 ["Anchor"]
       52 LOADNIL                          R19
       53 GETUPVAL                         R21 0
       54 GETTABLEKS                       R20 R21 K1 ["createElement"]
       56 GETUPVAL                         R21 3
       57 DUPTABLE                         R22 K16 [{"text", "onActivated", "variant"}]
       58 LOADK                            R23 K17 ["Open First Popover"]
       59 SETTABLEKS                       R23 R22 K13 ["text"]
       61 SETTABLEKS                       R6 R22 K14 ["onActivated"]
       63 GETUPVAL                         R24 4
       64 GETTABLEKS                       R23 R24 K18 ["Emphasis"]
       66 SETTABLEKS                       R23 R22 K15 ["variant"]
       68 CALL                             R20 2 -1
       69 CALL                             R17 -1 1
       70 SETTABLEKS                       R17 R16 K10 ["Anchor"]
       72 GETUPVAL                         R18 0
       73 GETTABLEKS                       R17 R18 K1 ["createElement"]
       75 GETUPVAL                         R19 2
       76 GETTABLEKS                       R18 R19 K11 ["Content"]
       78 DUPTABLE                         R19 K21 [{"align", "side"}]
       79 GETUPVAL                         R21 5
       80 GETTABLEKS                       R20 R21 K22 ["Start"]
       82 SETTABLEKS                       R20 R19 K19 ["align"]
       84 GETUPVAL                         R21 6
       85 GETTABLEKS                       R20 R21 K23 ["Right"]
       87 SETTABLEKS                       R20 R19 K20 ["side"]
       89 GETUPVAL                         R21 0
       90 GETTABLEKS                       R20 R21 K1 ["createElement"]
       92 GETUPVAL                         R21 1
       93 DUPTABLE                         R22 K3 [{"tag"}]
       94 LOADK                            R23 K24 ["col gap-small padding-medium auto-xy"]
       95 SETTABLEKS                       R23 R22 K2 ["tag"]
       97 DUPTABLE                         R23 K28 [{"Title", "Description", "Popover2"}]
       98 GETUPVAL                         R25 0
       99 GETTABLEKS                       R24 R25 K1 ["createElement"]
      101 GETUPVAL                         R25 7
      102 DUPTABLE                         R26 K30 [{"Text", "tag"}]
      103 LOADK                            R27 K31 ["First Popover"]
      104 SETTABLEKS                       R27 R26 K29 ["Text"]
      106 LOADK                            R27 K32 ["auto-xy text-title-medium content-emphasis"]
      107 SETTABLEKS                       R27 R26 K2 ["tag"]
      109 CALL                             R24 2 1
      110 SETTABLEKS                       R24 R23 K25 ["Title"]
      112 GETUPVAL                         R25 0
      113 GETTABLEKS                       R24 R25 K1 ["createElement"]
      115 GETUPVAL                         R25 7
      116 DUPTABLE                         R26 K30 [{"Text", "tag"}]
      117 LOADK                            R27 K33 ["Click below to open the second popover"]
      118 SETTABLEKS                       R27 R26 K29 ["Text"]
      120 LOADK                            R27 K34 ["auto-xy text-body-small"]
      121 SETTABLEKS                       R27 R26 K2 ["tag"]
      123 CALL                             R24 2 1
      124 SETTABLEKS                       R24 R23 K26 ["Description"]
      126 GETUPVAL                         R25 0
      127 GETTABLEKS                       R24 R25 K1 ["createElement"]
      129 GETUPVAL                         R26 2
      130 GETTABLEKS                       R25 R26 K7 ["Root"]
      132 DUPTABLE                         R26 K9 [{"isOpen"}]
      133 SETTABLEKS                       R2 R26 K8 ["isOpen"]
      135 DUPTABLE                         R27 K12 [{"Anchor", "Content"}]
      136 GETUPVAL                         R29 0
      137 GETTABLEKS                       R28 R29 K1 ["createElement"]
      139 GETUPVAL                         R30 2
      140 GETTABLEKS                       R29 R30 K10 ["Anchor"]
      142 LOADNIL                          R30
      143 GETUPVAL                         R32 0
      144 GETTABLEKS                       R31 R32 K1 ["createElement"]
      146 GETUPVAL                         R32 3
      147 DUPTABLE                         R33 K36 [{"text", "onActivated", "size"}]
      148 LOADK                            R34 K37 ["Open Second Popover"]
      149 SETTABLEKS                       R34 R33 K13 ["text"]
      151 SETTABLEKS                       R7 R33 K14 ["onActivated"]
      153 GETUPVAL                         R35 8
      154 GETTABLEKS                       R34 R35 K38 ["Small"]
      156 SETTABLEKS                       R34 R33 K35 ["size"]
      158 CALL                             R31 2 -1
      159 CALL                             R28 -1 1
      160 SETTABLEKS                       R28 R27 K10 ["Anchor"]
      162 GETUPVAL                         R29 0
      163 GETTABLEKS                       R28 R29 K1 ["createElement"]
      165 GETUPVAL                         R30 2
      166 GETTABLEKS                       R29 R30 K11 ["Content"]
      168 DUPTABLE                         R30 K21 [{"align", "side"}]
      169 GETUPVAL                         R32 5
      170 GETTABLEKS                       R31 R32 K22 ["Start"]
      172 SETTABLEKS                       R31 R30 K19 ["align"]
      174 GETUPVAL                         R32 6
      175 GETTABLEKS                       R31 R32 K23 ["Right"]
      177 SETTABLEKS                       R31 R30 K20 ["side"]
      179 GETUPVAL                         R32 0
      180 GETTABLEKS                       R31 R32 K1 ["createElement"]
      182 GETUPVAL                         R32 1
      183 DUPTABLE                         R33 K3 [{"tag"}]
      184 LOADK                            R34 K24 ["col gap-small padding-medium auto-xy"]
      185 SETTABLEKS                       R34 R33 K2 ["tag"]
      187 DUPTABLE                         R34 K40 [{"Title", "Description", "Popover3"}]
      188 GETUPVAL                         R36 0
      189 GETTABLEKS                       R35 R36 K1 ["createElement"]
      191 GETUPVAL                         R36 7
      192 DUPTABLE                         R37 K30 [{"Text", "tag"}]
      193 LOADK                            R38 K41 ["Second Popover"]
      194 SETTABLEKS                       R38 R37 K29 ["Text"]
      196 LOADK                            R38 K32 ["auto-xy text-title-medium content-emphasis"]
      197 SETTABLEKS                       R38 R37 K2 ["tag"]
      199 CALL                             R35 2 1
      200 SETTABLEKS                       R35 R34 K25 ["Title"]
      202 GETUPVAL                         R36 0
      203 GETTABLEKS                       R35 R36 K1 ["createElement"]
      205 GETUPVAL                         R36 7
      206 DUPTABLE                         R37 K30 [{"Text", "tag"}]
      207 LOADK                            R38 K42 ["One more level to go!"]
      208 SETTABLEKS                       R38 R37 K29 ["Text"]
      210 LOADK                            R38 K34 ["auto-xy text-body-small"]
      211 SETTABLEKS                       R38 R37 K2 ["tag"]
      213 CALL                             R35 2 1
      214 SETTABLEKS                       R35 R34 K26 ["Description"]
      216 GETUPVAL                         R36 0
      217 GETTABLEKS                       R35 R36 K1 ["createElement"]
      219 GETUPVAL                         R37 2
      220 GETTABLEKS                       R36 R37 K7 ["Root"]
      222 DUPTABLE                         R37 K9 [{"isOpen"}]
      223 SETTABLEKS                       R4 R37 K8 ["isOpen"]
      225 DUPTABLE                         R38 K12 [{"Anchor", "Content"}]
      226 GETUPVAL                         R40 0
      227 GETTABLEKS                       R39 R40 K1 ["createElement"]
      229 GETUPVAL                         R41 2
      230 GETTABLEKS                       R40 R41 K10 ["Anchor"]
      232 LOADNIL                          R41
      233 GETUPVAL                         R43 0
      234 GETTABLEKS                       R42 R43 K1 ["createElement"]
      236 GETUPVAL                         R43 3
      237 DUPTABLE                         R44 K36 [{"text", "onActivated", "size"}]
      238 LOADK                            R45 K43 ["Open Final Popover"]
      239 SETTABLEKS                       R45 R44 K13 ["text"]
      241 SETTABLEKS                       R8 R44 K14 ["onActivated"]
      243 GETUPVAL                         R46 8
      244 GETTABLEKS                       R45 R46 K38 ["Small"]
      246 SETTABLEKS                       R45 R44 K35 ["size"]
      248 CALL                             R42 2 -1
      249 CALL                             R39 -1 1
      250 SETTABLEKS                       R39 R38 K10 ["Anchor"]
      252 GETUPVAL                         R40 0
      253 GETTABLEKS                       R39 R40 K1 ["createElement"]
      255 GETUPVAL                         R41 2
      256 GETTABLEKS                       R40 R41 K11 ["Content"]
      258 DUPTABLE                         R41 K21 [{"align", "side"}]
      259 GETUPVAL                         R43 5
      260 GETTABLEKS                       R42 R43 K22 ["Start"]
      262 SETTABLEKS                       R42 R41 K19 ["align"]
      264 GETUPVAL                         R43 6
      265 GETTABLEKS                       R42 R43 K23 ["Right"]
      267 SETTABLEKS                       R42 R41 K20 ["side"]
      269 GETUPVAL                         R43 0
      270 GETTABLEKS                       R42 R43 K1 ["createElement"]
      272 GETUPVAL                         R43 1
      273 DUPTABLE                         R44 K3 [{"tag"}]
      274 LOADK                            R45 K24 ["col gap-small padding-medium auto-xy"]
      275 SETTABLEKS                       R45 R44 K2 ["tag"]
      277 DUPTABLE                         R45 K44 [{"Title", "Description"}]
      278 GETUPVAL                         R47 0
      279 GETTABLEKS                       R46 R47 K1 ["createElement"]
      281 GETUPVAL                         R47 7
      282 DUPTABLE                         R48 K30 [{"Text", "tag"}]
      283 LOADK                            R49 K45 ["Final Popover"]
      284 SETTABLEKS                       R49 R48 K29 ["Text"]
      286 LOADK                            R49 K32 ["auto-xy text-title-medium content-emphasis"]
      287 SETTABLEKS                       R49 R48 K2 ["tag"]
      289 CALL                             R46 2 1
      290 SETTABLEKS                       R46 R45 K25 ["Title"]
      292 GETUPVAL                         R47 0
      293 GETTABLEKS                       R46 R47 K1 ["createElement"]
      295 GETUPVAL                         R47 7
      296 DUPTABLE                         R48 K30 [{"Text", "tag"}]
      297 LOADK                            R49 K46 ["🎉 You've reached the deepest level!"]
      298 SETTABLEKS                       R49 R48 K29 ["Text"]
      300 LOADK                            R49 K34 ["auto-xy text-body-small"]
      301 SETTABLEKS                       R49 R48 K2 ["tag"]
      303 CALL                             R46 2 1
      304 SETTABLEKS                       R46 R45 K26 ["Description"]
      306 CALL                             R42 3 -1
      307 CALL                             R39 -1 1
      308 SETTABLEKS                       R39 R38 K11 ["Content"]
      310 CALL                             R35 3 1
      311 SETTABLEKS                       R35 R34 K39 ["Popover3"]
      313 CALL                             R31 3 -1
      314 CALL                             R28 -1 1
      315 SETTABLEKS                       R28 R27 K11 ["Content"]
      317 CALL                             R24 3 1
      318 SETTABLEKS                       R24 R23 K27 ["Popover2"]
      320 CALL                             R20 3 -1
      321 CALL                             R17 -1 1
      322 SETTABLEKS                       R17 R16 K11 ["Content"]
      324 CALL                             R13 3 1
      325 SETTABLEKS                       R13 R12 K5 ["Popover1"]
      327 CALL                             R9 3 -1
      328 RETURN                           R9 -1

PROTO_5:
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

PROTO_6:
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

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useState"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["useState"]
        8 LOADB                            R3 0
        9 CALL                             R2 1 2
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K0 ["useState"]
       13 LOADB                            R5 0
       14 CALL                             R4 1 2
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R6 R7 K0 ["useState"]
       18 LOADB                            R7 0
       19 CALL                             R6 1 2
       20 GETUPVAL                         R9 0
       21 GETTABLEKS                       R8 R9 K0 ["useState"]
       23 LOADB                            R9 0
       24 CALL                             R8 1 2
       25 GETUPVAL                         R11 0
       26 GETTABLEKS                       R10 R11 K0 ["useState"]
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
       54 GETUPVAL                         R19 0
       55 GETTABLEKS                       R18 R19 K1 ["createElement"]
       57 GETUPVAL                         R20 0
       58 GETTABLEKS                       R19 R20 K2 ["Fragment"]
       60 LOADNIL                          R20
       61 DUPTABLE                         R21 K5 [{"ToggleButton", "Sheet1"}]
       62 GETUPVAL                         R23 0
       63 GETTABLEKS                       R22 R23 K1 ["createElement"]
       65 GETUPVAL                         R23 1
       66 DUPTABLE                         R24 K9 [{"text", "onActivated", "variant"}]
       67 LOADK                            R25 K10 ["Open First Sheet"]
       68 SETTABLEKS                       R25 R24 K6 ["text"]
       70 SETTABLEKS                       R12 R24 K7 ["onActivated"]
       72 GETUPVAL                         R26 2
       73 GETTABLEKS                       R25 R26 K11 ["Emphasis"]
       75 SETTABLEKS                       R25 R24 K8 ["variant"]
       77 CALL                             R22 2 1
       78 SETTABLEKS                       R22 R21 K3 ["ToggleButton"]
       80 JUMPIFNOT                        R0 ; [+345]
       81 GETUPVAL                         R23 0
       82 GETTABLEKS                       R22 R23 K1 ["createElement"]
       84 GETUPVAL                         R24 3
       85 GETTABLEKS                       R23 R24 K12 ["Root"]
       87 DUPTABLE                         R24 K17 [{"onClose", "snapPoints", "defaultSnapPointIndex", "displaySize"}]
       88 SETTABLEKS                       R12 R24 K13 ["onClose"]
       90 NEWTABLE                         R25 0 2
       92 LOADK                            R26 K18 [0.3]
       93 LOADK                            R27 K19 [0.6]
       94 SETLIST                          R25 R26 2 [1]
       96 SETTABLEKS                       R25 R24 K14 ["snapPoints"]
       98 LOADN                            R25 2
       99 SETTABLEKS                       R25 R24 K15 ["defaultSnapPointIndex"]
      101 GETIMPORT                        R25 K23 [Enum.DisplaySize.Small]
      103 SETTABLEKS                       R25 R24 K16 ["displaySize"]
      105 DUPTABLE                         R25 K27 [{"Header", "Content", "Sheet2"}]
      106 GETUPVAL                         R27 0
      107 GETTABLEKS                       R26 R27 K1 ["createElement"]
      109 GETUPVAL                         R28 3
      110 GETTABLEKS                       R27 R28 K24 ["Header"]
      112 LOADNIL                          R28
      113 DUPTABLE                         R29 K29 [{"Title"}]
      114 GETUPVAL                         R31 0
      115 GETTABLEKS                       R30 R31 K1 ["createElement"]
      117 GETUPVAL                         R31 4
      118 DUPTABLE                         R32 K32 [{"Text", "tag"}]
      119 LOADK                            R33 K33 ["Sheet 1"]
      120 SETTABLEKS                       R33 R32 K30 ["Text"]
      122 LOADK                            R33 K34 ["auto-xy text-title-medium content-emphasis"]
      123 SETTABLEKS                       R33 R32 K31 ["tag"]
      125 CALL                             R30 2 1
      126 SETTABLEKS                       R30 R29 K28 ["Title"]
      128 CALL                             R26 3 1
      129 SETTABLEKS                       R26 R25 K24 ["Header"]
      131 GETUPVAL                         R27 0
      132 GETTABLEKS                       R26 R27 K1 ["createElement"]
      134 GETUPVAL                         R28 3
      135 GETTABLEKS                       R27 R28 K25 ["Content"]
      137 LOADNIL                          R28
      138 DUPTABLE                         R29 K36 [{"Layout"}]
      139 GETUPVAL                         R31 0
      140 GETTABLEKS                       R30 R31 K1 ["createElement"]
      142 GETUPVAL                         R31 5
      143 DUPTABLE                         R32 K37 [{"tag"}]
      144 LOADK                            R33 K38 ["row auto-xy gap-medium"]
      145 SETTABLEKS                       R33 R32 K31 ["tag"]
      147 DUPTABLE                         R33 K41 [{"Sheet1Popover", "OpenSheet2Button"}]
      148 GETUPVAL                         R35 0
      149 GETTABLEKS                       R34 R35 K1 ["createElement"]
      151 GETUPVAL                         R35 6
      152 DUPTABLE                         R36 K47 [{"isOpen", "toggle", "anchorText", "title", "subtitle"}]
      153 SETTABLEKS                       R6 R36 K42 ["isOpen"]
      155 SETTABLEKS                       R15 R36 K43 ["toggle"]
      157 LOADK                            R37 K48 ["Open Popover"]
      158 SETTABLEKS                       R37 R36 K44 ["anchorText"]
      160 LOADK                            R37 K49 ["Popover title"]
      161 SETTABLEKS                       R37 R36 K45 ["title"]
      163 LOADK                            R37 K50 ["Popover subtitle"]
      164 SETTABLEKS                       R37 R36 K46 ["subtitle"]
      166 CALL                             R34 2 1
      167 SETTABLEKS                       R34 R33 K39 ["Sheet1Popover"]
      169 GETUPVAL                         R35 0
      170 GETTABLEKS                       R34 R35 K1 ["createElement"]
      172 GETUPVAL                         R35 1
      173 DUPTABLE                         R36 K9 [{"text", "onActivated", "variant"}]
      174 LOADK                            R37 K51 ["Open Second Sheet"]
      175 SETTABLEKS                       R37 R36 K6 ["text"]
      177 SETTABLEKS                       R13 R36 K7 ["onActivated"]
      179 GETUPVAL                         R38 2
      180 GETTABLEKS                       R37 R38 K11 ["Emphasis"]
      182 SETTABLEKS                       R37 R36 K8 ["variant"]
      184 CALL                             R34 2 1
      185 SETTABLEKS                       R34 R33 K40 ["OpenSheet2Button"]
      187 CALL                             R30 3 1
      188 SETTABLEKS                       R30 R29 K35 ["Layout"]
      190 CALL                             R26 3 1
      191 SETTABLEKS                       R26 R25 K25 ["Content"]
      193 JUMPIFNOT                        R2 ; [+227]
      194 GETUPVAL                         R27 0
      195 GETTABLEKS                       R26 R27 K1 ["createElement"]
      197 GETUPVAL                         R28 3
      198 GETTABLEKS                       R27 R28 K12 ["Root"]
      200 DUPTABLE                         R28 K17 [{"onClose", "snapPoints", "defaultSnapPointIndex", "displaySize"}]
      201 SETTABLEKS                       R13 R28 K13 ["onClose"]
      203 NEWTABLE                         R29 0 2
      205 LOADK                            R30 K52 [0.4]
      206 LOADK                            R31 K53 [0.7]
      207 SETLIST                          R29 R30 2 [1]
      209 SETTABLEKS                       R29 R28 K14 ["snapPoints"]
      211 LOADN                            R29 2
      212 SETTABLEKS                       R29 R28 K15 ["defaultSnapPointIndex"]
      214 GETIMPORT                        R29 K23 [Enum.DisplaySize.Small]
      216 SETTABLEKS                       R29 R28 K16 ["displaySize"]
      218 DUPTABLE                         R29 K55 [{"Header", "Content", "Sheet3"}]
      219 GETUPVAL                         R31 0
      220 GETTABLEKS                       R30 R31 K1 ["createElement"]
      222 GETUPVAL                         R32 3
      223 GETTABLEKS                       R31 R32 K24 ["Header"]
      225 LOADNIL                          R32
      226 DUPTABLE                         R33 K29 [{"Title"}]
      227 GETUPVAL                         R35 0
      228 GETTABLEKS                       R34 R35 K1 ["createElement"]
      230 GETUPVAL                         R35 4
      231 DUPTABLE                         R36 K32 [{"Text", "tag"}]
      232 LOADK                            R37 K56 ["Sheet 2"]
      233 SETTABLEKS                       R37 R36 K30 ["Text"]
      235 LOADK                            R37 K34 ["auto-xy text-title-medium content-emphasis"]
      236 SETTABLEKS                       R37 R36 K31 ["tag"]
      238 CALL                             R34 2 1
      239 SETTABLEKS                       R34 R33 K28 ["Title"]
      241 CALL                             R30 3 1
      242 SETTABLEKS                       R30 R29 K24 ["Header"]
      244 GETUPVAL                         R31 0
      245 GETTABLEKS                       R30 R31 K1 ["createElement"]
      247 GETUPVAL                         R32 3
      248 GETTABLEKS                       R31 R32 K25 ["Content"]
      250 LOADNIL                          R32
      251 DUPTABLE                         R33 K36 [{"Layout"}]
      252 GETUPVAL                         R35 0
      253 GETTABLEKS                       R34 R35 K1 ["createElement"]
      255 GETUPVAL                         R35 5
      256 DUPTABLE                         R36 K37 [{"tag"}]
      257 LOADK                            R37 K38 ["row auto-xy gap-medium"]
      258 SETTABLEKS                       R37 R36 K31 ["tag"]
      260 DUPTABLE                         R37 K59 [{"Sheet2Popover", "OpenSheet3Button"}]
      261 GETUPVAL                         R39 0
      262 GETTABLEKS                       R38 R39 K1 ["createElement"]
      264 GETUPVAL                         R39 6
      265 DUPTABLE                         R40 K47 [{"isOpen", "toggle", "anchorText", "title", "subtitle"}]
      266 SETTABLEKS                       R8 R40 K42 ["isOpen"]
      268 SETTABLEKS                       R16 R40 K43 ["toggle"]
      270 LOADK                            R41 K48 ["Open Popover"]
      271 SETTABLEKS                       R41 R40 K44 ["anchorText"]
      273 LOADK                            R41 K49 ["Popover title"]
      274 SETTABLEKS                       R41 R40 K45 ["title"]
      276 LOADK                            R41 K50 ["Popover subtitle"]
      277 SETTABLEKS                       R41 R40 K46 ["subtitle"]
      279 CALL                             R38 2 1
      280 SETTABLEKS                       R38 R37 K57 ["Sheet2Popover"]
      282 GETUPVAL                         R39 0
      283 GETTABLEKS                       R38 R39 K1 ["createElement"]
      285 GETUPVAL                         R39 1
      286 DUPTABLE                         R40 K9 [{"text", "onActivated", "variant"}]
      287 LOADK                            R41 K60 ["Open Third Sheet"]
      288 SETTABLEKS                       R41 R40 K6 ["text"]
      290 SETTABLEKS                       R14 R40 K7 ["onActivated"]
      292 GETUPVAL                         R42 2
      293 GETTABLEKS                       R41 R42 K11 ["Emphasis"]
      295 SETTABLEKS                       R41 R40 K8 ["variant"]
      297 CALL                             R38 2 1
      298 SETTABLEKS                       R38 R37 K58 ["OpenSheet3Button"]
      300 CALL                             R34 3 1
      301 SETTABLEKS                       R34 R33 K35 ["Layout"]
      303 CALL                             R30 3 1
      304 SETTABLEKS                       R30 R29 K25 ["Content"]
      306 JUMPIFNOT                        R4 ; [+109]
      307 GETUPVAL                         R31 0
      308 GETTABLEKS                       R30 R31 K1 ["createElement"]
      310 GETUPVAL                         R32 3
      311 GETTABLEKS                       R31 R32 K12 ["Root"]
      313 DUPTABLE                         R32 K62 [{"onClose", "snapPoints", "defaultSnapPointIndex", "preferCenterSheet"}]
      314 SETTABLEKS                       R14 R32 K13 ["onClose"]
      316 NEWTABLE                         R33 0 2
      318 LOADK                            R34 K63 [0.5]
      319 LOADK                            R35 K64 [0.8]
      320 SETLIST                          R33 R34 2 [1]
      322 SETTABLEKS                       R33 R32 K14 ["snapPoints"]
      324 LOADN                            R33 2
      325 SETTABLEKS                       R33 R32 K15 ["defaultSnapPointIndex"]
      327 LOADB                            R33 1
      328 SETTABLEKS                       R33 R32 K61 ["preferCenterSheet"]
      330 DUPTABLE                         R33 K65 [{"Header", "Content"}]
      331 GETUPVAL                         R35 0
      332 GETTABLEKS                       R34 R35 K1 ["createElement"]
      334 GETUPVAL                         R36 3
      335 GETTABLEKS                       R35 R36 K24 ["Header"]
      337 LOADNIL                          R36
      338 DUPTABLE                         R37 K29 [{"Title"}]
      339 GETUPVAL                         R39 0
      340 GETTABLEKS                       R38 R39 K1 ["createElement"]
      342 GETUPVAL                         R39 4
      343 DUPTABLE                         R40 K32 [{"Text", "tag"}]
      344 LOADK                            R41 K66 ["Sheet 3"]
      345 SETTABLEKS                       R41 R40 K30 ["Text"]
      347 LOADK                            R41 K34 ["auto-xy text-title-medium content-emphasis"]
      348 SETTABLEKS                       R41 R40 K31 ["tag"]
      350 CALL                             R38 2 1
      351 SETTABLEKS                       R38 R37 K28 ["Title"]
      353 CALL                             R34 3 1
      354 SETTABLEKS                       R34 R33 K24 ["Header"]
      356 GETUPVAL                         R35 0
      357 GETTABLEKS                       R34 R35 K1 ["createElement"]
      359 GETUPVAL                         R36 3
      360 GETTABLEKS                       R35 R36 K25 ["Content"]
      362 LOADNIL                          R36
      363 DUPTABLE                         R37 K36 [{"Layout"}]
      364 GETUPVAL                         R39 0
      365 GETTABLEKS                       R38 R39 K1 ["createElement"]
      367 GETUPVAL                         R39 5
      368 DUPTABLE                         R40 K37 [{"tag"}]
      369 LOADK                            R41 K67 ["row auto-xy gap-medium align-y-center"]
      370 SETTABLEKS                       R41 R40 K31 ["tag"]
      372 DUPTABLE                         R41 K69 [{"Sheet3Popover", "Text"}]
      373 GETUPVAL                         R43 0
      374 GETTABLEKS                       R42 R43 K1 ["createElement"]
      376 GETUPVAL                         R43 6
      377 DUPTABLE                         R44 K47 [{"isOpen", "toggle", "anchorText", "title", "subtitle"}]
      378 SETTABLEKS                       R10 R44 K42 ["isOpen"]
      380 SETTABLEKS                       R17 R44 K43 ["toggle"]
      382 LOADK                            R45 K48 ["Open Popover"]
      383 SETTABLEKS                       R45 R44 K44 ["anchorText"]
      385 LOADK                            R45 K49 ["Popover title"]
      386 SETTABLEKS                       R45 R44 K45 ["title"]
      388 LOADK                            R45 K50 ["Popover subtitle"]
      389 SETTABLEKS                       R45 R44 K46 ["subtitle"]
      391 CALL                             R42 2 1
      392 SETTABLEKS                       R42 R41 K68 ["Sheet3Popover"]
      394 GETUPVAL                         R43 0
      395 GETTABLEKS                       R42 R43 K1 ["createElement"]
      397 GETUPVAL                         R43 4
      398 DUPTABLE                         R44 K32 [{"Text", "tag"}]
      399 LOADK                            R45 K70 ["🎉 You've reached the innermost sheet!"]
      400 SETTABLEKS                       R45 R44 K30 ["Text"]
      402 LOADK                            R45 K34 ["auto-xy text-title-medium content-emphasis"]
      403 SETTABLEKS                       R45 R44 K31 ["tag"]
      405 CALL                             R42 2 1
      406 SETTABLEKS                       R42 R41 K30 ["Text"]
      408 CALL                             R38 3 1
      409 SETTABLEKS                       R38 R37 K35 ["Layout"]
      411 CALL                             R34 3 1
      412 SETTABLEKS                       R34 R33 K25 ["Content"]
      414 CALL                             R30 3 1
      415 JUMP                             ; [+1]
      416 LOADNIL                          R30
      417 SETTABLEKS                       R30 R29 K54 ["Sheet3"]
      419 CALL                             R26 3 1
      420 JUMP                             ; [+1]
      421 LOADNIL                          R26
      422 SETTABLEKS                       R26 R25 K26 ["Sheet2"]
      424 CALL                             R22 3 1
      425 JUMP                             ; [+1]
      426 LOADNIL                          R22
      427 SETTABLEKS                       R22 R21 K4 ["Sheet1"]
      429 CALL                             R18 3 -1
      430 RETURN                           R18 -1

PROTO_12:
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

PROTO_13:
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

PROTO_14:
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

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useState"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["useState"]
        8 LOADB                            R3 0
        9 CALL                             R2 1 2
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K0 ["useState"]
       13 LOADB                            R5 0
       14 CALL                             R4 1 2
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R6 R7 K0 ["useState"]
       18 LOADB                            R7 0
       19 CALL                             R6 1 2
       20 GETUPVAL                         R9 0
       21 GETTABLEKS                       R8 R9 K0 ["useState"]
       23 LOADB                            R9 0
       24 CALL                             R8 1 2
       25 GETUPVAL                         R11 0
       26 GETTABLEKS                       R10 R11 K0 ["useState"]
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
       54 GETUPVAL                         R19 0
       55 GETTABLEKS                       R18 R19 K1 ["createElement"]
       57 GETUPVAL                         R20 0
       58 GETTABLEKS                       R19 R20 K2 ["Fragment"]
       60 LOADNIL                          R20
       61 DUPTABLE                         R21 K5 [{"ToggleButton", "Dialog1"}]
       62 GETUPVAL                         R23 0
       63 GETTABLEKS                       R22 R23 K1 ["createElement"]
       65 GETUPVAL                         R23 1
       66 DUPTABLE                         R24 K9 [{"text", "onActivated", "variant"}]
       67 LOADK                            R25 K10 ["Open First Dialog"]
       68 SETTABLEKS                       R25 R24 K6 ["text"]
       70 SETTABLEKS                       R12 R24 K7 ["onActivated"]
       72 GETUPVAL                         R26 2
       73 GETTABLEKS                       R25 R26 K11 ["Emphasis"]
       75 SETTABLEKS                       R25 R24 K8 ["variant"]
       77 CALL                             R22 2 1
       78 SETTABLEKS                       R22 R21 K3 ["ToggleButton"]
       80 JUMPIFNOT                        R0 ; [+298]
       81 GETUPVAL                         R23 0
       82 GETTABLEKS                       R22 R23 K1 ["createElement"]
       84 GETUPVAL                         R24 3
       85 GETTABLEKS                       R23 R24 K12 ["Root"]
       87 DUPTABLE                         R24 K17 [{"onClose", "hasBackdrop", "disablePortal", "size"}]
       88 SETTABLEKS                       R12 R24 K13 ["onClose"]
       90 LOADB                            R25 1
       91 SETTABLEKS                       R25 R24 K14 ["hasBackdrop"]
       93 LOADB                            R25 0
       94 SETTABLEKS                       R25 R24 K15 ["disablePortal"]
       96 GETUPVAL                         R26 4
       97 GETTABLEKS                       R25 R26 K18 ["Large"]
       99 SETTABLEKS                       R25 R24 K16 ["size"]
      101 DUPTABLE                         R25 K22 [{"DialogTitle", "DialogContent", "Dialog2"}]
      102 GETUPVAL                         R27 0
      103 GETTABLEKS                       R26 R27 K1 ["createElement"]
      105 GETUPVAL                         R28 3
      106 GETTABLEKS                       R27 R28 K23 ["Title"]
      108 DUPTABLE                         R28 K24 [{"text"}]
      109 LOADK                            R29 K25 ["First Dialog"]
      110 SETTABLEKS                       R29 R28 K6 ["text"]
      112 CALL                             R26 2 1
      113 SETTABLEKS                       R26 R25 K19 ["DialogTitle"]
      115 GETUPVAL                         R27 0
      116 GETTABLEKS                       R26 R27 K1 ["createElement"]
      118 GETUPVAL                         R28 3
      119 GETTABLEKS                       R27 R28 K26 ["Content"]
      121 LOADNIL                          R28
      122 DUPTABLE                         R29 K28 [{"Layout"}]
      123 GETUPVAL                         R31 0
      124 GETTABLEKS                       R30 R31 K1 ["createElement"]
      126 GETUPVAL                         R31 5
      127 DUPTABLE                         R32 K30 [{"tag"}]
      128 LOADK                            R33 K31 ["row auto-xy gap-medium"]
      129 SETTABLEKS                       R33 R32 K29 ["tag"]
      131 DUPTABLE                         R33 K34 [{"Dialog1Popover", "OpenDialog2Button"}]
      132 GETUPVAL                         R35 0
      133 GETTABLEKS                       R34 R35 K1 ["createElement"]
      135 GETUPVAL                         R35 6
      136 DUPTABLE                         R36 K40 [{"isOpen", "toggle", "anchorText", "title", "subtitle"}]
      137 SETTABLEKS                       R6 R36 K35 ["isOpen"]
      139 SETTABLEKS                       R15 R36 K36 ["toggle"]
      141 LOADK                            R37 K41 ["Open Popover"]
      142 SETTABLEKS                       R37 R36 K37 ["anchorText"]
      144 LOADK                            R37 K42 ["Popover title"]
      145 SETTABLEKS                       R37 R36 K38 ["title"]
      147 LOADK                            R37 K43 ["Popover subtitle"]
      148 SETTABLEKS                       R37 R36 K39 ["subtitle"]
      150 CALL                             R34 2 1
      151 SETTABLEKS                       R34 R33 K32 ["Dialog1Popover"]
      153 GETUPVAL                         R35 0
      154 GETTABLEKS                       R34 R35 K1 ["createElement"]
      156 GETUPVAL                         R35 1
      157 DUPTABLE                         R36 K9 [{"text", "onActivated", "variant"}]
      158 LOADK                            R37 K44 ["Open Second Dialog"]
      159 SETTABLEKS                       R37 R36 K6 ["text"]
      161 SETTABLEKS                       R13 R36 K7 ["onActivated"]
      163 GETUPVAL                         R38 2
      164 GETTABLEKS                       R37 R38 K11 ["Emphasis"]
      166 SETTABLEKS                       R37 R36 K8 ["variant"]
      168 CALL                             R34 2 1
      169 SETTABLEKS                       R34 R33 K33 ["OpenDialog2Button"]
      171 CALL                             R30 3 1
      172 SETTABLEKS                       R30 R29 K27 ["Layout"]
      174 CALL                             R26 3 1
      175 SETTABLEKS                       R26 R25 K20 ["DialogContent"]
      177 JUMPIFNOT                        R2 ; [+196]
      178 GETUPVAL                         R27 0
      179 GETTABLEKS                       R26 R27 K1 ["createElement"]
      181 GETUPVAL                         R28 3
      182 GETTABLEKS                       R27 R28 K12 ["Root"]
      184 DUPTABLE                         R28 K17 [{"onClose", "hasBackdrop", "disablePortal", "size"}]
      185 SETTABLEKS                       R13 R28 K13 ["onClose"]
      187 LOADB                            R29 1
      188 SETTABLEKS                       R29 R28 K14 ["hasBackdrop"]
      190 LOADB                            R29 0
      191 SETTABLEKS                       R29 R28 K15 ["disablePortal"]
      193 GETUPVAL                         R30 4
      194 GETTABLEKS                       R29 R30 K45 ["Medium"]
      196 SETTABLEKS                       R29 R28 K16 ["size"]
      198 DUPTABLE                         R29 K47 [{"DialogTitle", "DialogContent", "Dialog3"}]
      199 GETUPVAL                         R31 0
      200 GETTABLEKS                       R30 R31 K1 ["createElement"]
      202 GETUPVAL                         R32 3
      203 GETTABLEKS                       R31 R32 K23 ["Title"]
      205 DUPTABLE                         R32 K24 [{"text"}]
      206 LOADK                            R33 K48 ["Second Dialog"]
      207 SETTABLEKS                       R33 R32 K6 ["text"]
      209 CALL                             R30 2 1
      210 SETTABLEKS                       R30 R29 K19 ["DialogTitle"]
      212 GETUPVAL                         R31 0
      213 GETTABLEKS                       R30 R31 K1 ["createElement"]
      215 GETUPVAL                         R32 3
      216 GETTABLEKS                       R31 R32 K26 ["Content"]
      218 LOADNIL                          R32
      219 DUPTABLE                         R33 K28 [{"Layout"}]
      220 GETUPVAL                         R35 0
      221 GETTABLEKS                       R34 R35 K1 ["createElement"]
      223 GETUPVAL                         R35 5
      224 DUPTABLE                         R36 K30 [{"tag"}]
      225 LOADK                            R37 K31 ["row auto-xy gap-medium"]
      226 SETTABLEKS                       R37 R36 K29 ["tag"]
      228 DUPTABLE                         R37 K51 [{"Dialog2Popover", "OpenDialog3Button"}]
      229 GETUPVAL                         R39 0
      230 GETTABLEKS                       R38 R39 K1 ["createElement"]
      232 GETUPVAL                         R39 6
      233 DUPTABLE                         R40 K40 [{"isOpen", "toggle", "anchorText", "title", "subtitle"}]
      234 SETTABLEKS                       R8 R40 K35 ["isOpen"]
      236 SETTABLEKS                       R16 R40 K36 ["toggle"]
      238 LOADK                            R41 K41 ["Open Popover"]
      239 SETTABLEKS                       R41 R40 K37 ["anchorText"]
      241 LOADK                            R41 K42 ["Popover title"]
      242 SETTABLEKS                       R41 R40 K38 ["title"]
      244 LOADK                            R41 K43 ["Popover subtitle"]
      245 SETTABLEKS                       R41 R40 K39 ["subtitle"]
      247 CALL                             R38 2 1
      248 SETTABLEKS                       R38 R37 K49 ["Dialog2Popover"]
      250 GETUPVAL                         R39 0
      251 GETTABLEKS                       R38 R39 K1 ["createElement"]
      253 GETUPVAL                         R39 1
      254 DUPTABLE                         R40 K9 [{"text", "onActivated", "variant"}]
      255 LOADK                            R41 K52 ["Open Third Dialog"]
      256 SETTABLEKS                       R41 R40 K6 ["text"]
      258 SETTABLEKS                       R14 R40 K7 ["onActivated"]
      260 GETUPVAL                         R42 2
      261 GETTABLEKS                       R41 R42 K11 ["Emphasis"]
      263 SETTABLEKS                       R41 R40 K8 ["variant"]
      265 CALL                             R38 2 1
      266 SETTABLEKS                       R38 R37 K50 ["OpenDialog3Button"]
      268 CALL                             R34 3 1
      269 SETTABLEKS                       R34 R33 K27 ["Layout"]
      271 CALL                             R30 3 1
      272 SETTABLEKS                       R30 R29 K20 ["DialogContent"]
      274 JUMPIFNOT                        R4 ; [+94]
      275 GETUPVAL                         R31 0
      276 GETTABLEKS                       R30 R31 K1 ["createElement"]
      278 GETUPVAL                         R32 3
      279 GETTABLEKS                       R31 R32 K12 ["Root"]
      281 DUPTABLE                         R32 K17 [{"onClose", "hasBackdrop", "disablePortal", "size"}]
      282 SETTABLEKS                       R14 R32 K13 ["onClose"]
      284 LOADB                            R33 1
      285 SETTABLEKS                       R33 R32 K14 ["hasBackdrop"]
      287 LOADB                            R33 0
      288 SETTABLEKS                       R33 R32 K15 ["disablePortal"]
      290 GETUPVAL                         R34 4
      291 GETTABLEKS                       R33 R34 K53 ["Small"]
      293 SETTABLEKS                       R33 R32 K16 ["size"]
      295 DUPTABLE                         R33 K54 [{"DialogTitle", "DialogContent"}]
      296 GETUPVAL                         R35 0
      297 GETTABLEKS                       R34 R35 K1 ["createElement"]
      299 GETUPVAL                         R36 3
      300 GETTABLEKS                       R35 R36 K23 ["Title"]
      302 DUPTABLE                         R36 K24 [{"text"}]
      303 LOADK                            R37 K55 ["Third Dialog"]
      304 SETTABLEKS                       R37 R36 K6 ["text"]
      306 CALL                             R34 2 1
      307 SETTABLEKS                       R34 R33 K19 ["DialogTitle"]
      309 GETUPVAL                         R35 0
      310 GETTABLEKS                       R34 R35 K1 ["createElement"]
      312 GETUPVAL                         R36 3
      313 GETTABLEKS                       R35 R36 K26 ["Content"]
      315 LOADNIL                          R36
      316 DUPTABLE                         R37 K28 [{"Layout"}]
      317 GETUPVAL                         R39 0
      318 GETTABLEKS                       R38 R39 K1 ["createElement"]
      320 GETUPVAL                         R39 5
      321 DUPTABLE                         R40 K30 [{"tag"}]
      322 LOADK                            R41 K56 ["row auto-xy gap-medium wrap"]
      323 SETTABLEKS                       R41 R40 K29 ["tag"]
      325 DUPTABLE                         R41 K59 [{"Dialog3Popover", "Text"}]
      326 GETUPVAL                         R43 0
      327 GETTABLEKS                       R42 R43 K1 ["createElement"]
      329 GETUPVAL                         R43 6
      330 DUPTABLE                         R44 K40 [{"isOpen", "toggle", "anchorText", "title", "subtitle"}]
      331 SETTABLEKS                       R10 R44 K35 ["isOpen"]
      333 SETTABLEKS                       R17 R44 K36 ["toggle"]
      335 LOADK                            R45 K41 ["Open Popover"]
      336 SETTABLEKS                       R45 R44 K37 ["anchorText"]
      338 LOADK                            R45 K42 ["Popover title"]
      339 SETTABLEKS                       R45 R44 K38 ["title"]
      341 LOADK                            R45 K43 ["Popover subtitle"]
      342 SETTABLEKS                       R45 R44 K39 ["subtitle"]
      344 CALL                             R42 2 1
      345 SETTABLEKS                       R42 R41 K57 ["Dialog3Popover"]
      347 GETUPVAL                         R43 0
      348 GETTABLEKS                       R42 R43 K1 ["createElement"]
      350 GETUPVAL                         R43 7
      351 DUPTABLE                         R44 K60 [{"Text", "tag"}]
      352 LOADK                            R45 K61 ["🎉 You've reached the innermost dialog!"]
      353 SETTABLEKS                       R45 R44 K58 ["Text"]
      355 LOADK                            R45 K62 ["auto-xy text-title-medium content-emphasis"]
      356 SETTABLEKS                       R45 R44 K29 ["tag"]
      358 CALL                             R42 2 1
      359 SETTABLEKS                       R42 R41 K58 ["Text"]
      361 CALL                             R38 3 1
      362 SETTABLEKS                       R38 R37 K27 ["Layout"]
      364 CALL                             R34 3 1
      365 SETTABLEKS                       R34 R33 K20 ["DialogContent"]
      367 CALL                             R30 3 1
      368 JUMP                             ; [+1]
      369 LOADNIL                          R30
      370 SETTABLEKS                       R30 R29 K46 ["Dialog3"]
      372 CALL                             R26 3 1
      373 JUMP                             ; [+1]
      374 LOADNIL                          R26
      375 SETTABLEKS                       R26 R25 K21 ["Dialog2"]
      377 CALL                             R22 3 1
      378 JUMP                             ; [+1]
      379 LOADNIL                          R22
      380 SETTABLEKS                       R22 R21 K4 ["Dialog1"]
      382 CALL                             R18 3 -1
      383 RETURN                           R18 -1

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
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["Dialog"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R6 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R6 K10 ["View"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R7 R0 K8 ["Components"]
       32 GETTABLEKS                       R6 R7 K11 ["Button"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R8 R0 K8 ["Components"]
       39 GETTABLEKS                       R7 R8 K12 ["IconButton"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R9 R0 K13 ["Enums"]
       46 GETTABLEKS                       R8 R9 K14 ["PopoverSide"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R10 R0 K13 ["Enums"]
       53 GETTABLEKS                       R9 R10 K15 ["PopoverAlign"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R11 R0 K8 ["Components"]
       60 GETTABLEKS                       R10 R11 K16 ["Popover"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R12 R0 K8 ["Components"]
       67 GETTABLEKS                       R11 R12 K17 ["Text"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R13 R0 K13 ["Enums"]
       74 GETTABLEKS                       R12 R13 K18 ["InputSize"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R14 R0 K13 ["Enums"]
       81 GETTABLEKS                       R13 R14 K19 ["ButtonVariant"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K6 [require]
       86 GETTABLEKS                       R15 R0 K13 ["Enums"]
       88 GETTABLEKS                       R14 R15 K20 ["DialogSize"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K6 [require]
       93 GETTABLEKS                       R16 R0 K8 ["Components"]
       95 GETTABLEKS                       R15 R16 K21 ["Sheet"]
       97 CALL                             R14 1 1
       98 DUPCLOSURE                       R15 K22 [PROTO_0]
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R6
      102 CAPTURE                          VAL R11
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R10
      107 DUPTABLE                         R16 K26 [{"summary", "stories", "controls"}]
      108 LOADK                            R17 K27 ["Elevation"]
      109 SETTABLEKS                       R17 R16 K23 ["summary"]
      111 NEWTABLE                         R17 0 3
      113 DUPTABLE                         R18 K30 [{"name", "story"}]
      114 LOADK                            R19 K31 ["Nested Popovers"]
      115 SETTABLEKS                       R19 R18 K28 ["name"]
      117 DUPCLOSURE                       R19 K32 [PROTO_4]
      118 CAPTURE                          VAL R2
      119 CAPTURE                          VAL R4
      120 CAPTURE                          VAL R9
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R8
      124 CAPTURE                          VAL R7
      125 CAPTURE                          VAL R10
      126 CAPTURE                          VAL R11
      127 SETTABLEKS                       R19 R18 K29 ["story"]
      129 DUPTABLE                         R19 K30 [{"name", "story"}]
      130 LOADK                            R20 K33 ["Nested Sheets"]
      131 SETTABLEKS                       R20 R19 K28 ["name"]
      133 DUPCLOSURE                       R20 K34 [PROTO_11]
      134 CAPTURE                          VAL R2
      135 CAPTURE                          VAL R5
      136 CAPTURE                          VAL R12
      137 CAPTURE                          VAL R14
      138 CAPTURE                          VAL R10
      139 CAPTURE                          VAL R4
      140 CAPTURE                          VAL R15
      141 SETTABLEKS                       R20 R19 K29 ["story"]
      143 DUPTABLE                         R20 K30 [{"name", "story"}]
      144 LOADK                            R21 K35 ["Nested Dialogs"]
      145 SETTABLEKS                       R21 R20 K28 ["name"]
      147 DUPCLOSURE                       R21 K36 [PROTO_18]
      148 CAPTURE                          VAL R2
      149 CAPTURE                          VAL R5
      150 CAPTURE                          VAL R12
      151 CAPTURE                          VAL R3
      152 CAPTURE                          VAL R13
      153 CAPTURE                          VAL R4
      154 CAPTURE                          VAL R15
      155 CAPTURE                          VAL R10
      156 SETTABLEKS                       R21 R20 K29 ["story"]
      158 SETLIST                          R17 R18 3 [1]
      160 SETTABLEKS                       R17 R16 K24 ["stories"]
      162 NEWTABLE                         R17 0 0
      164 SETTABLEKS                       R17 R16 K25 ["controls"]
      166 RETURN                           R16 1
