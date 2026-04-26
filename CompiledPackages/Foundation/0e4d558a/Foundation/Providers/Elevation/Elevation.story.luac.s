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
       65 LOADK                            R11 K23 ["col gap-small auto-xy padding-medium"]
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
       32 LOADK                            R12 K4 ["col gap-medium auto-xy"]
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
       94 LOADK                            R23 K24 ["col gap-small auto-xy padding-medium"]
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
      184 LOADK                            R34 K24 ["col gap-small auto-xy padding-medium"]
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
      274 LOADK                            R45 K24 ["col gap-small auto-xy padding-medium"]
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
       18 NEWCLOSURE                       R7 P1
       19 CAPTURE                          VAL R3
       20 CAPTURE                          VAL R2
       21 NEWCLOSURE                       R8 P2
       22 CAPTURE                          VAL R5
       23 CAPTURE                          VAL R4
       24 GETUPVAL                         R10 0
       25 GETTABLEKS                       R9 R10 K1 ["createElement"]
       27 GETUPVAL                         R10 1
       28 DUPTABLE                         R11 K3 [{"tag"}]
       29 LOADK                            R12 K4 ["row align-y-center gap-large auto-xy"]
       30 SETTABLEKS                       R12 R11 K2 ["tag"]
       32 NEWTABLE                         R12 0 3
       34 GETUPVAL                         R14 0
       35 GETTABLEKS                       R13 R14 K1 ["createElement"]
       37 GETUPVAL                         R15 2
       38 GETTABLEKS                       R14 R15 K5 ["Root"]
       40 DUPTABLE                         R15 K8 [{"isOpen", "key"}]
       41 SETTABLEKS                       R0 R15 K6 ["isOpen"]
       43 LOADK                            R16 K9 ["left"]
       44 SETTABLEKS                       R16 R15 K7 ["key"]
       46 DUPTABLE                         R16 K12 [{"Anchor", "Content"}]
       47 GETUPVAL                         R18 0
       48 GETTABLEKS                       R17 R18 K1 ["createElement"]
       50 GETUPVAL                         R19 2
       51 GETTABLEKS                       R18 R19 K10 ["Anchor"]
       53 LOADNIL                          R19
       54 GETUPVAL                         R21 0
       55 GETTABLEKS                       R20 R21 K1 ["createElement"]
       57 GETUPVAL                         R21 3
       58 DUPTABLE                         R22 K16 [{"text", "onActivated", "variant"}]
       59 LOADK                            R23 K17 ["Left Popover"]
       60 SETTABLEKS                       R23 R22 K13 ["text"]
       62 SETTABLEKS                       R6 R22 K14 ["onActivated"]
       64 GETUPVAL                         R24 4
       65 GETTABLEKS                       R23 R24 K18 ["Emphasis"]
       67 SETTABLEKS                       R23 R22 K15 ["variant"]
       69 CALL                             R20 2 -1
       70 CALL                             R17 -1 1
       71 SETTABLEKS                       R17 R16 K10 ["Anchor"]
       73 GETUPVAL                         R18 0
       74 GETTABLEKS                       R17 R18 K1 ["createElement"]
       76 GETUPVAL                         R19 2
       77 GETTABLEKS                       R18 R19 K11 ["Content"]
       79 DUPTABLE                         R19 K21 [{"align", "side"}]
       80 GETUPVAL                         R21 5
       81 GETTABLEKS                       R20 R21 K22 ["Start"]
       83 SETTABLEKS                       R20 R19 K19 ["align"]
       85 GETUPVAL                         R21 6
       86 GETTABLEKS                       R20 R21 K23 ["Left"]
       88 SETTABLEKS                       R20 R19 K20 ["side"]
       90 GETUPVAL                         R21 0
       91 GETTABLEKS                       R20 R21 K1 ["createElement"]
       93 GETUPVAL                         R21 1
       94 DUPTABLE                         R22 K3 [{"tag"}]
       95 LOADK                            R23 K24 ["col gap-small auto-xy padding-medium"]
       96 SETTABLEKS                       R23 R22 K2 ["tag"]
       98 DUPTABLE                         R23 K27 [{"Title", "Subtitle"}]
       99 GETUPVAL                         R25 0
      100 GETTABLEKS                       R24 R25 K1 ["createElement"]
      102 GETUPVAL                         R25 7
      103 DUPTABLE                         R26 K29 [{"Text", "tag"}]
      104 LOADK                            R27 K30 ["Left content"]
      105 SETTABLEKS                       R27 R26 K28 ["Text"]
      107 LOADK                            R27 K31 ["auto-xy text-title-medium content-emphasis"]
      108 SETTABLEKS                       R27 R26 K2 ["tag"]
      110 CALL                             R24 2 1
      111 SETTABLEKS                       R24 R23 K25 ["Title"]
      113 GETUPVAL                         R25 0
      114 GETTABLEKS                       R24 R25 K1 ["createElement"]
      116 GETUPVAL                         R25 7
      117 DUPTABLE                         R26 K29 [{"Text", "tag"}]
      118 LOADK                            R27 K32 ["Sibling popover"]
      119 SETTABLEKS                       R27 R26 K28 ["Text"]
      121 LOADK                            R27 K33 ["auto-xy text-body-small"]
      122 SETTABLEKS                       R27 R26 K2 ["tag"]
      124 CALL                             R24 2 1
      125 SETTABLEKS                       R24 R23 K26 ["Subtitle"]
      127 CALL                             R20 3 -1
      128 CALL                             R17 -1 1
      129 SETTABLEKS                       R17 R16 K11 ["Content"]
      131 CALL                             R13 3 1
      132 SETTABLEN                        R13 R12 1
      133 GETUPVAL                         R14 0
      134 GETTABLEKS                       R13 R14 K1 ["createElement"]
      136 GETUPVAL                         R15 2
      137 GETTABLEKS                       R14 R15 K5 ["Root"]
      139 DUPTABLE                         R15 K8 [{"isOpen", "key"}]
      140 SETTABLEKS                       R2 R15 K6 ["isOpen"]
      142 LOADK                            R16 K34 ["middle"]
      143 SETTABLEKS                       R16 R15 K7 ["key"]
      145 DUPTABLE                         R16 K12 [{"Anchor", "Content"}]
      146 GETUPVAL                         R18 0
      147 GETTABLEKS                       R17 R18 K1 ["createElement"]
      149 GETUPVAL                         R19 2
      150 GETTABLEKS                       R18 R19 K10 ["Anchor"]
      152 LOADNIL                          R19
      153 GETUPVAL                         R21 0
      154 GETTABLEKS                       R20 R21 K1 ["createElement"]
      156 GETUPVAL                         R21 3
      157 DUPTABLE                         R22 K16 [{"text", "onActivated", "variant"}]
      158 LOADK                            R23 K35 ["Middle Popover"]
      159 SETTABLEKS                       R23 R22 K13 ["text"]
      161 SETTABLEKS                       R7 R22 K14 ["onActivated"]
      163 GETUPVAL                         R24 4
      164 GETTABLEKS                       R23 R24 K18 ["Emphasis"]
      166 SETTABLEKS                       R23 R22 K15 ["variant"]
      168 CALL                             R20 2 -1
      169 CALL                             R17 -1 1
      170 SETTABLEKS                       R17 R16 K10 ["Anchor"]
      172 GETUPVAL                         R18 0
      173 GETTABLEKS                       R17 R18 K1 ["createElement"]
      175 GETUPVAL                         R19 2
      176 GETTABLEKS                       R18 R19 K11 ["Content"]
      178 DUPTABLE                         R19 K21 [{"align", "side"}]
      179 GETUPVAL                         R21 5
      180 GETTABLEKS                       R20 R21 K22 ["Start"]
      182 SETTABLEKS                       R20 R19 K19 ["align"]
      184 GETUPVAL                         R21 6
      185 GETTABLEKS                       R20 R21 K36 ["Right"]
      187 SETTABLEKS                       R20 R19 K20 ["side"]
      189 GETUPVAL                         R21 0
      190 GETTABLEKS                       R20 R21 K1 ["createElement"]
      192 GETUPVAL                         R21 1
      193 DUPTABLE                         R22 K3 [{"tag"}]
      194 LOADK                            R23 K24 ["col gap-small auto-xy padding-medium"]
      195 SETTABLEKS                       R23 R22 K2 ["tag"]
      197 DUPTABLE                         R23 K27 [{"Title", "Subtitle"}]
      198 GETUPVAL                         R25 0
      199 GETTABLEKS                       R24 R25 K1 ["createElement"]
      201 GETUPVAL                         R25 7
      202 DUPTABLE                         R26 K29 [{"Text", "tag"}]
      203 LOADK                            R27 K37 ["Middle content"]
      204 SETTABLEKS                       R27 R26 K28 ["Text"]
      206 LOADK                            R27 K31 ["auto-xy text-title-medium content-emphasis"]
      207 SETTABLEKS                       R27 R26 K2 ["tag"]
      209 CALL                             R24 2 1
      210 SETTABLEKS                       R24 R23 K25 ["Title"]
      212 GETUPVAL                         R25 0
      213 GETTABLEKS                       R24 R25 K1 ["createElement"]
      215 GETUPVAL                         R25 7
      216 DUPTABLE                         R26 K29 [{"Text", "tag"}]
      217 LOADK                            R27 K32 ["Sibling popover"]
      218 SETTABLEKS                       R27 R26 K28 ["Text"]
      220 LOADK                            R27 K33 ["auto-xy text-body-small"]
      221 SETTABLEKS                       R27 R26 K2 ["tag"]
      223 CALL                             R24 2 1
      224 SETTABLEKS                       R24 R23 K26 ["Subtitle"]
      226 CALL                             R20 3 -1
      227 CALL                             R17 -1 1
      228 SETTABLEKS                       R17 R16 K11 ["Content"]
      230 CALL                             R13 3 1
      231 SETTABLEN                        R13 R12 2
      232 GETUPVAL                         R14 0
      233 GETTABLEKS                       R13 R14 K1 ["createElement"]
      235 GETUPVAL                         R15 2
      236 GETTABLEKS                       R14 R15 K5 ["Root"]
      238 DUPTABLE                         R15 K8 [{"isOpen", "key"}]
      239 SETTABLEKS                       R4 R15 K6 ["isOpen"]
      241 LOADK                            R16 K38 ["right"]
      242 SETTABLEKS                       R16 R15 K7 ["key"]
      244 DUPTABLE                         R16 K12 [{"Anchor", "Content"}]
      245 GETUPVAL                         R18 0
      246 GETTABLEKS                       R17 R18 K1 ["createElement"]
      248 GETUPVAL                         R19 2
      249 GETTABLEKS                       R18 R19 K10 ["Anchor"]
      251 LOADNIL                          R19
      252 GETUPVAL                         R21 0
      253 GETTABLEKS                       R20 R21 K1 ["createElement"]
      255 GETUPVAL                         R21 3
      256 DUPTABLE                         R22 K16 [{"text", "onActivated", "variant"}]
      257 LOADK                            R23 K39 ["Right Popover"]
      258 SETTABLEKS                       R23 R22 K13 ["text"]
      260 SETTABLEKS                       R8 R22 K14 ["onActivated"]
      262 GETUPVAL                         R24 4
      263 GETTABLEKS                       R23 R24 K18 ["Emphasis"]
      265 SETTABLEKS                       R23 R22 K15 ["variant"]
      267 CALL                             R20 2 -1
      268 CALL                             R17 -1 1
      269 SETTABLEKS                       R17 R16 K10 ["Anchor"]
      271 GETUPVAL                         R18 0
      272 GETTABLEKS                       R17 R18 K1 ["createElement"]
      274 GETUPVAL                         R19 2
      275 GETTABLEKS                       R18 R19 K11 ["Content"]
      277 DUPTABLE                         R19 K21 [{"align", "side"}]
      278 GETUPVAL                         R21 5
      279 GETTABLEKS                       R20 R21 K22 ["Start"]
      281 SETTABLEKS                       R20 R19 K19 ["align"]
      283 GETUPVAL                         R21 6
      284 GETTABLEKS                       R20 R21 K23 ["Left"]
      286 SETTABLEKS                       R20 R19 K20 ["side"]
      288 GETUPVAL                         R21 0
      289 GETTABLEKS                       R20 R21 K1 ["createElement"]
      291 GETUPVAL                         R21 1
      292 DUPTABLE                         R22 K3 [{"tag"}]
      293 LOADK                            R23 K24 ["col gap-small auto-xy padding-medium"]
      294 SETTABLEKS                       R23 R22 K2 ["tag"]
      296 DUPTABLE                         R23 K27 [{"Title", "Subtitle"}]
      297 GETUPVAL                         R25 0
      298 GETTABLEKS                       R24 R25 K1 ["createElement"]
      300 GETUPVAL                         R25 7
      301 DUPTABLE                         R26 K29 [{"Text", "tag"}]
      302 LOADK                            R27 K40 ["Right content"]
      303 SETTABLEKS                       R27 R26 K28 ["Text"]
      305 LOADK                            R27 K31 ["auto-xy text-title-medium content-emphasis"]
      306 SETTABLEKS                       R27 R26 K2 ["tag"]
      308 CALL                             R24 2 1
      309 SETTABLEKS                       R24 R23 K25 ["Title"]
      311 GETUPVAL                         R25 0
      312 GETTABLEKS                       R24 R25 K1 ["createElement"]
      314 GETUPVAL                         R25 7
      315 DUPTABLE                         R26 K29 [{"Text", "tag"}]
      316 LOADK                            R27 K32 ["Sibling popover"]
      317 SETTABLEKS                       R27 R26 K28 ["Text"]
      319 LOADK                            R27 K33 ["auto-xy text-body-small"]
      320 SETTABLEKS                       R27 R26 K2 ["tag"]
      322 CALL                             R24 2 1
      323 SETTABLEKS                       R24 R23 K26 ["Subtitle"]
      325 CALL                             R20 3 -1
      326 CALL                             R17 -1 1
      327 SETTABLEKS                       R17 R16 K11 ["Content"]
      329 CALL                             R13 3 1
      330 SETTABLEN                        R13 R12 3
      331 CALL                             R9 3 -1
      332 RETURN                           R9 -1

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
      144 LOADK                            R33 K38 ["row gap-medium auto-xy"]
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
      257 LOADK                            R37 K38 ["row gap-medium auto-xy"]
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
      369 LOADK                            R41 K67 ["row align-y-center gap-medium auto-xy"]
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
      128 LOADK                            R33 K31 ["row gap-medium auto-xy"]
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
      225 LOADK                            R37 K31 ["row gap-medium auto-xy"]
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
      322 LOADK                            R41 K56 ["row wrap gap-medium auto-xy"]
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
       30 GETUPVAL                         R11 0
       31 GETTABLEKS                       R10 R11 K2 ["Fragment"]
       33 LOADNIL                          R11
       34 DUPTABLE                         R12 K5 [{"ToggleButton", "Dialog"}]
       35 GETUPVAL                         R14 0
       36 GETTABLEKS                       R13 R14 K1 ["createElement"]
       38 GETUPVAL                         R14 1
       39 DUPTABLE                         R15 K9 [{"text", "onActivated", "variant"}]
       40 LOADK                            R16 K10 ["Open Dialog"]
       41 SETTABLEKS                       R16 R15 K6 ["text"]
       43 SETTABLEKS                       R6 R15 K7 ["onActivated"]
       45 GETUPVAL                         R17 2
       46 GETTABLEKS                       R16 R17 K11 ["Emphasis"]
       48 SETTABLEKS                       R16 R15 K8 ["variant"]
       50 CALL                             R13 2 1
       51 SETTABLEKS                       R13 R12 K3 ["ToggleButton"]
       53 JUMPIFNOT                        R0 ; [+277]
       54 GETUPVAL                         R14 0
       55 GETTABLEKS                       R13 R14 K1 ["createElement"]
       57 GETUPVAL                         R15 3
       58 GETTABLEKS                       R14 R15 K12 ["Root"]
       60 DUPTABLE                         R15 K17 [{"onClose", "hasBackdrop", "disablePortal", "size"}]
       61 SETTABLEKS                       R6 R15 K13 ["onClose"]
       63 LOADB                            R16 1
       64 SETTABLEKS                       R16 R15 K14 ["hasBackdrop"]
       66 LOADB                            R16 0
       67 SETTABLEKS                       R16 R15 K15 ["disablePortal"]
       69 GETUPVAL                         R17 4
       70 GETTABLEKS                       R16 R17 K18 ["Large"]
       72 SETTABLEKS                       R16 R15 K16 ["size"]
       74 DUPTABLE                         R16 K21 [{"DialogTitle", "DialogContent"}]
       75 GETUPVAL                         R18 0
       76 GETTABLEKS                       R17 R18 K1 ["createElement"]
       78 GETUPVAL                         R19 3
       79 GETTABLEKS                       R18 R19 K22 ["Title"]
       81 DUPTABLE                         R19 K23 [{"text"}]
       82 LOADK                            R20 K24 ["Dialog with Nested Popovers"]
       83 SETTABLEKS                       R20 R19 K6 ["text"]
       85 CALL                             R17 2 1
       86 SETTABLEKS                       R17 R16 K19 ["DialogTitle"]
       88 GETUPVAL                         R18 0
       89 GETTABLEKS                       R17 R18 K1 ["createElement"]
       91 GETUPVAL                         R19 3
       92 GETTABLEKS                       R18 R19 K25 ["Content"]
       94 LOADNIL                          R19
       95 DUPTABLE                         R20 K27 [{"Layout"}]
       96 GETUPVAL                         R22 0
       97 GETTABLEKS                       R21 R22 K1 ["createElement"]
       99 GETUPVAL                         R22 5
      100 DUPTABLE                         R23 K29 [{"tag"}]
      101 LOADK                            R24 K30 ["col gap-medium auto-xy"]
      102 SETTABLEKS                       R24 R23 K28 ["tag"]
      104 DUPTABLE                         R24 K33 [{"Description", "Popover1"}]
      105 GETUPVAL                         R26 0
      106 GETTABLEKS                       R25 R26 K1 ["createElement"]
      108 GETUPVAL                         R26 6
      109 DUPTABLE                         R27 K36 [{"Text", "tag", "LayoutOrder"}]
      110 LOADK                            R28 K37 ["Open the first popover, then open the second one inside it. Both should render above the dialog."]
      111 SETTABLEKS                       R28 R27 K34 ["Text"]
      113 LOADK                            R28 K38 ["auto-xy text-body-large text-wrap text-align-x-left"]
      114 SETTABLEKS                       R28 R27 K28 ["tag"]
      116 LOADN                            R28 1
      117 SETTABLEKS                       R28 R27 K35 ["LayoutOrder"]
      119 CALL                             R25 2 1
      120 SETTABLEKS                       R25 R24 K31 ["Description"]
      122 GETUPVAL                         R26 0
      123 GETTABLEKS                       R25 R26 K1 ["createElement"]
      125 GETUPVAL                         R27 7
      126 GETTABLEKS                       R26 R27 K12 ["Root"]
      128 DUPTABLE                         R27 K40 [{"isOpen"}]
      129 SETTABLEKS                       R2 R27 K39 ["isOpen"]
      131 DUPTABLE                         R28 K42 [{"Anchor", "Content"}]
      132 GETUPVAL                         R30 0
      133 GETTABLEKS                       R29 R30 K1 ["createElement"]
      135 GETUPVAL                         R31 7
      136 GETTABLEKS                       R30 R31 K41 ["Anchor"]
      138 DUPTABLE                         R31 K43 [{"LayoutOrder"}]
      139 LOADN                            R32 2
      140 SETTABLEKS                       R32 R31 K35 ["LayoutOrder"]
      142 GETUPVAL                         R33 0
      143 GETTABLEKS                       R32 R33 K1 ["createElement"]
      145 GETUPVAL                         R33 1
      146 DUPTABLE                         R34 K44 [{"text", "onActivated"}]
      147 LOADK                            R35 K45 ["Open First Popover"]
      148 SETTABLEKS                       R35 R34 K6 ["text"]
      150 SETTABLEKS                       R7 R34 K7 ["onActivated"]
      152 CALL                             R32 2 -1
      153 CALL                             R29 -1 1
      154 SETTABLEKS                       R29 R28 K41 ["Anchor"]
      156 GETUPVAL                         R30 0
      157 GETTABLEKS                       R29 R30 K1 ["createElement"]
      159 GETUPVAL                         R31 7
      160 GETTABLEKS                       R30 R31 K25 ["Content"]
      162 DUPTABLE                         R31 K48 [{"align", "side"}]
      163 GETUPVAL                         R33 8
      164 GETTABLEKS                       R32 R33 K49 ["Start"]
      166 SETTABLEKS                       R32 R31 K46 ["align"]
      168 GETUPVAL                         R33 9
      169 GETTABLEKS                       R32 R33 K50 ["Right"]
      171 SETTABLEKS                       R32 R31 K47 ["side"]
      173 GETUPVAL                         R33 0
      174 GETTABLEKS                       R32 R33 K1 ["createElement"]
      176 GETUPVAL                         R33 5
      177 DUPTABLE                         R34 K29 [{"tag"}]
      178 LOADK                            R35 K51 ["col gap-small auto-xy padding-medium"]
      179 SETTABLEKS                       R35 R34 K28 ["tag"]
      181 DUPTABLE                         R35 K53 [{"Title", "Description", "Popover2"}]
      182 GETUPVAL                         R37 0
      183 GETTABLEKS                       R36 R37 K1 ["createElement"]
      185 GETUPVAL                         R37 6
      186 DUPTABLE                         R38 K36 [{"Text", "tag", "LayoutOrder"}]
      187 LOADK                            R39 K54 ["First Popover"]
      188 SETTABLEKS                       R39 R38 K34 ["Text"]
      190 LOADK                            R39 K55 ["auto-xy text-title-medium content-emphasis"]
      191 SETTABLEKS                       R39 R38 K28 ["tag"]
      193 LOADN                            R39 1
      194 SETTABLEKS                       R39 R38 K35 ["LayoutOrder"]
      196 CALL                             R36 2 1
      197 SETTABLEKS                       R36 R35 K22 ["Title"]
      199 GETUPVAL                         R37 0
      200 GETTABLEKS                       R36 R37 K1 ["createElement"]
      202 GETUPVAL                         R37 6
      203 DUPTABLE                         R38 K36 [{"Text", "tag", "LayoutOrder"}]
      204 LOADK                            R39 K56 ["This popover is inside the dialog. Open the next one to verify nested stacking."]
      205 SETTABLEKS                       R39 R38 K34 ["Text"]
      207 LOADK                            R39 K57 ["auto-xy text-body-small"]
      208 SETTABLEKS                       R39 R38 K28 ["tag"]
      210 LOADN                            R39 2
      211 SETTABLEKS                       R39 R38 K35 ["LayoutOrder"]
      213 CALL                             R36 2 1
      214 SETTABLEKS                       R36 R35 K31 ["Description"]
      216 GETUPVAL                         R37 0
      217 GETTABLEKS                       R36 R37 K1 ["createElement"]
      219 GETUPVAL                         R38 7
      220 GETTABLEKS                       R37 R38 K12 ["Root"]
      222 DUPTABLE                         R38 K40 [{"isOpen"}]
      223 SETTABLEKS                       R4 R38 K39 ["isOpen"]
      225 DUPTABLE                         R39 K42 [{"Anchor", "Content"}]
      226 GETUPVAL                         R41 0
      227 GETTABLEKS                       R40 R41 K1 ["createElement"]
      229 GETUPVAL                         R42 7
      230 GETTABLEKS                       R41 R42 K41 ["Anchor"]
      232 DUPTABLE                         R42 K43 [{"LayoutOrder"}]
      233 LOADN                            R43 3
      234 SETTABLEKS                       R43 R42 K35 ["LayoutOrder"]
      236 GETUPVAL                         R44 0
      237 GETTABLEKS                       R43 R44 K1 ["createElement"]
      239 GETUPVAL                         R44 1
      240 DUPTABLE                         R45 K58 [{"text", "onActivated", "size"}]
      241 LOADK                            R46 K59 ["Open Second Popover"]
      242 SETTABLEKS                       R46 R45 K6 ["text"]
      244 SETTABLEKS                       R8 R45 K7 ["onActivated"]
      246 GETUPVAL                         R47 10
      247 GETTABLEKS                       R46 R47 K60 ["Small"]
      249 SETTABLEKS                       R46 R45 K16 ["size"]
      251 CALL                             R43 2 -1
      252 CALL                             R40 -1 1
      253 SETTABLEKS                       R40 R39 K41 ["Anchor"]
      255 GETUPVAL                         R41 0
      256 GETTABLEKS                       R40 R41 K1 ["createElement"]
      258 GETUPVAL                         R42 7
      259 GETTABLEKS                       R41 R42 K25 ["Content"]
      261 DUPTABLE                         R42 K48 [{"align", "side"}]
      262 GETUPVAL                         R44 8
      263 GETTABLEKS                       R43 R44 K49 ["Start"]
      265 SETTABLEKS                       R43 R42 K46 ["align"]
      267 GETUPVAL                         R44 9
      268 GETTABLEKS                       R43 R44 K50 ["Right"]
      270 SETTABLEKS                       R43 R42 K47 ["side"]
      272 GETUPVAL                         R44 0
      273 GETTABLEKS                       R43 R44 K1 ["createElement"]
      275 GETUPVAL                         R44 5
      276 DUPTABLE                         R45 K29 [{"tag"}]
      277 LOADK                            R46 K51 ["col gap-small auto-xy padding-medium"]
      278 SETTABLEKS                       R46 R45 K28 ["tag"]
      280 DUPTABLE                         R46 K61 [{"Title", "Description"}]
      281 GETUPVAL                         R48 0
      282 GETTABLEKS                       R47 R48 K1 ["createElement"]
      284 GETUPVAL                         R48 6
      285 DUPTABLE                         R49 K62 [{"Text", "tag"}]
      286 LOADK                            R50 K63 ["Second Popover"]
      287 SETTABLEKS                       R50 R49 K34 ["Text"]
      289 LOADK                            R50 K55 ["auto-xy text-title-medium content-emphasis"]
      290 SETTABLEKS                       R50 R49 K28 ["tag"]
      292 CALL                             R47 2 1
      293 SETTABLEKS                       R47 R46 K22 ["Title"]
      295 GETUPVAL                         R48 0
      296 GETTABLEKS                       R47 R48 K1 ["createElement"]
      298 GETUPVAL                         R48 6
      299 DUPTABLE                         R49 K62 [{"Text", "tag"}]
      300 LOADK                            R50 K64 ["This nested popover should render above the first popover."]
      301 SETTABLEKS                       R50 R49 K34 ["Text"]
      303 LOADK                            R50 K57 ["auto-xy text-body-small"]
      304 SETTABLEKS                       R50 R49 K28 ["tag"]
      306 CALL                             R47 2 1
      307 SETTABLEKS                       R47 R46 K31 ["Description"]
      309 CALL                             R43 3 -1
      310 CALL                             R40 -1 1
      311 SETTABLEKS                       R40 R39 K25 ["Content"]
      313 CALL                             R36 3 1
      314 SETTABLEKS                       R36 R35 K52 ["Popover2"]
      316 CALL                             R32 3 -1
      317 CALL                             R29 -1 1
      318 SETTABLEKS                       R29 R28 K25 ["Content"]
      320 CALL                             R25 3 1
      321 SETTABLEKS                       R25 R24 K32 ["Popover1"]
      323 CALL                             R21 3 1
      324 SETTABLEKS                       R21 R20 K26 ["Layout"]
      326 CALL                             R17 3 1
      327 SETTABLEKS                       R17 R16 K20 ["DialogContent"]
      329 CALL                             R13 3 1
      330 JUMP                             ; [+1]
      331 LOADNIL                          R13
      332 SETTABLEKS                       R13 R12 K4 ["Dialog"]
      334 CALL                             R9 3 -1
      335 RETURN                           R9 -1

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
       35 GETUPVAL                         R13 0
       36 GETTABLEKS                       R12 R13 K1 ["createElement"]
       38 GETUPVAL                         R14 0
       39 GETTABLEKS                       R13 R14 K2 ["Fragment"]
       41 LOADNIL                          R14
       42 DUPTABLE                         R15 K5 [{"ToggleButton", "Dialog"}]
       43 GETUPVAL                         R17 0
       44 GETTABLEKS                       R16 R17 K1 ["createElement"]
       46 GETUPVAL                         R17 1
       47 DUPTABLE                         R18 K9 [{"text", "onActivated", "variant"}]
       48 LOADK                            R19 K10 ["Open Dialog"]
       49 SETTABLEKS                       R19 R18 K6 ["text"]
       51 SETTABLEKS                       R8 R18 K7 ["onActivated"]
       53 GETUPVAL                         R20 2
       54 GETTABLEKS                       R19 R20 K11 ["Emphasis"]
       56 SETTABLEKS                       R19 R18 K8 ["variant"]
       58 CALL                             R16 2 1
       59 SETTABLEKS                       R16 R15 K3 ["ToggleButton"]
       61 JUMPIFNOT                        R0 ; [+365]
       62 GETUPVAL                         R17 0
       63 GETTABLEKS                       R16 R17 K1 ["createElement"]
       65 GETUPVAL                         R18 3
       66 GETTABLEKS                       R17 R18 K12 ["Root"]
       68 DUPTABLE                         R18 K17 [{"onClose", "hasBackdrop", "disablePortal", "size"}]
       69 SETTABLEKS                       R8 R18 K13 ["onClose"]
       71 LOADB                            R19 1
       72 SETTABLEKS                       R19 R18 K14 ["hasBackdrop"]
       74 LOADB                            R19 0
       75 SETTABLEKS                       R19 R18 K15 ["disablePortal"]
       77 GETUPVAL                         R20 4
       78 GETTABLEKS                       R19 R20 K18 ["Large"]
       80 SETTABLEKS                       R19 R18 K16 ["size"]
       82 DUPTABLE                         R19 K21 [{"DialogTitle", "DialogContent"}]
       83 GETUPVAL                         R21 0
       84 GETTABLEKS                       R20 R21 K1 ["createElement"]
       86 GETUPVAL                         R22 3
       87 GETTABLEKS                       R21 R22 K22 ["Title"]
       89 DUPTABLE                         R22 K23 [{"text"}]
       90 LOADK                            R23 K24 ["Dialog with Sibling Popovers"]
       91 SETTABLEKS                       R23 R22 K6 ["text"]
       93 CALL                             R20 2 1
       94 SETTABLEKS                       R20 R19 K19 ["DialogTitle"]
       96 GETUPVAL                         R21 0
       97 GETTABLEKS                       R20 R21 K1 ["createElement"]
       99 GETUPVAL                         R22 3
      100 GETTABLEKS                       R21 R22 K25 ["Content"]
      102 LOADNIL                          R22
      103 DUPTABLE                         R23 K27 [{"Layout"}]
      104 GETUPVAL                         R25 0
      105 GETTABLEKS                       R24 R25 K1 ["createElement"]
      107 GETUPVAL                         R25 5
      108 DUPTABLE                         R26 K29 [{"tag"}]
      109 LOADK                            R27 K30 ["col gap-medium auto-xy"]
      110 SETTABLEKS                       R27 R26 K28 ["tag"]
      112 DUPTABLE                         R27 K33 [{"Description", "Buttons"}]
      113 GETUPVAL                         R29 0
      114 GETTABLEKS                       R28 R29 K1 ["createElement"]
      116 GETUPVAL                         R29 6
      117 DUPTABLE                         R30 K36 [{"Text", "tag", "LayoutOrder"}]
      118 LOADK                            R31 K37 ["Open multiple popovers at the same time. All should render above the dialog at the same elevation."]
      119 SETTABLEKS                       R31 R30 K34 ["Text"]
      121 LOADK                            R31 K38 ["auto-xy text-body-large"]
      122 SETTABLEKS                       R31 R30 K28 ["tag"]
      124 LOADN                            R31 1
      125 SETTABLEKS                       R31 R30 K35 ["LayoutOrder"]
      127 CALL                             R28 2 1
      128 SETTABLEKS                       R28 R27 K31 ["Description"]
      130 GETUPVAL                         R29 0
      131 GETTABLEKS                       R28 R29 K1 ["createElement"]
      133 GETUPVAL                         R29 5
      134 DUPTABLE                         R30 K39 [{"tag", "LayoutOrder"}]
      135 LOADK                            R31 K40 ["row gap-medium auto-xy"]
      136 SETTABLEKS                       R31 R30 K28 ["tag"]
      138 LOADN                            R31 2
      139 SETTABLEKS                       R31 R30 K35 ["LayoutOrder"]
      141 NEWTABLE                         R31 0 3
      143 GETUPVAL                         R33 0
      144 GETTABLEKS                       R32 R33 K1 ["createElement"]
      146 GETUPVAL                         R34 7
      147 GETTABLEKS                       R33 R34 K12 ["Root"]
      149 DUPTABLE                         R34 K42 [{"isOpen"}]
      150 SETTABLEKS                       R2 R34 K41 ["isOpen"]
      152 DUPTABLE                         R35 K44 [{"Anchor", "Content"}]
      153 GETUPVAL                         R37 0
      154 GETTABLEKS                       R36 R37 K1 ["createElement"]
      156 GETUPVAL                         R38 7
      157 GETTABLEKS                       R37 R38 K43 ["Anchor"]
      159 LOADNIL                          R38
      160 GETUPVAL                         R40 0
      161 GETTABLEKS                       R39 R40 K1 ["createElement"]
      163 GETUPVAL                         R40 1
      164 DUPTABLE                         R41 K45 [{"text", "onActivated"}]
      165 LOADK                            R42 K46 ["Left Popover"]
      166 SETTABLEKS                       R42 R41 K6 ["text"]
      168 SETTABLEKS                       R9 R41 K7 ["onActivated"]
      170 CALL                             R39 2 -1
      171 CALL                             R36 -1 1
      172 SETTABLEKS                       R36 R35 K43 ["Anchor"]
      174 GETUPVAL                         R37 0
      175 GETTABLEKS                       R36 R37 K1 ["createElement"]
      177 GETUPVAL                         R38 7
      178 GETTABLEKS                       R37 R38 K25 ["Content"]
      180 DUPTABLE                         R38 K49 [{"align", "side"}]
      181 GETUPVAL                         R40 8
      182 GETTABLEKS                       R39 R40 K50 ["Start"]
      184 SETTABLEKS                       R39 R38 K47 ["align"]
      186 GETUPVAL                         R40 9
      187 GETTABLEKS                       R39 R40 K51 ["Top"]
      189 SETTABLEKS                       R39 R38 K48 ["side"]
      191 GETUPVAL                         R40 0
      192 GETTABLEKS                       R39 R40 K1 ["createElement"]
      194 GETUPVAL                         R40 5
      195 DUPTABLE                         R41 K29 [{"tag"}]
      196 LOADK                            R42 K52 ["col gap-small auto-xy padding-medium"]
      197 SETTABLEKS                       R42 R41 K28 ["tag"]
      199 DUPTABLE                         R42 K54 [{"Title", "Subtitle"}]
      200 GETUPVAL                         R44 0
      201 GETTABLEKS                       R43 R44 K1 ["createElement"]
      203 GETUPVAL                         R44 6
      204 DUPTABLE                         R45 K55 [{"Text", "tag"}]
      205 LOADK                            R46 K46 ["Left Popover"]
      206 SETTABLEKS                       R46 R45 K34 ["Text"]
      208 LOADK                            R46 K56 ["auto-xy text-title-medium content-emphasis"]
      209 SETTABLEKS                       R46 R45 K28 ["tag"]
      211 CALL                             R43 2 1
      212 SETTABLEKS                       R43 R42 K22 ["Title"]
      214 GETUPVAL                         R44 0
      215 GETTABLEKS                       R43 R44 K1 ["createElement"]
      217 GETUPVAL                         R44 6
      218 DUPTABLE                         R45 K55 [{"Text", "tag"}]
      219 LOADK                            R46 K57 ["Sibling popover inside dialog"]
      220 SETTABLEKS                       R46 R45 K34 ["Text"]
      222 LOADK                            R46 K58 ["auto-xy text-body-small"]
      223 SETTABLEKS                       R46 R45 K28 ["tag"]
      225 CALL                             R43 2 1
      226 SETTABLEKS                       R43 R42 K53 ["Subtitle"]
      228 CALL                             R39 3 -1
      229 CALL                             R36 -1 1
      230 SETTABLEKS                       R36 R35 K25 ["Content"]
      232 CALL                             R32 3 1
      233 SETTABLEN                        R32 R31 1
      234 GETUPVAL                         R33 0
      235 GETTABLEKS                       R32 R33 K1 ["createElement"]
      237 GETUPVAL                         R34 7
      238 GETTABLEKS                       R33 R34 K12 ["Root"]
      240 DUPTABLE                         R34 K42 [{"isOpen"}]
      241 SETTABLEKS                       R4 R34 K41 ["isOpen"]
      243 DUPTABLE                         R35 K44 [{"Anchor", "Content"}]
      244 GETUPVAL                         R37 0
      245 GETTABLEKS                       R36 R37 K1 ["createElement"]
      247 GETUPVAL                         R38 7
      248 GETTABLEKS                       R37 R38 K43 ["Anchor"]
      250 LOADNIL                          R38
      251 GETUPVAL                         R40 0
      252 GETTABLEKS                       R39 R40 K1 ["createElement"]
      254 GETUPVAL                         R40 1
      255 DUPTABLE                         R41 K45 [{"text", "onActivated"}]
      256 LOADK                            R42 K59 ["Middle Popover"]
      257 SETTABLEKS                       R42 R41 K6 ["text"]
      259 SETTABLEKS                       R10 R41 K7 ["onActivated"]
      261 CALL                             R39 2 -1
      262 CALL                             R36 -1 1
      263 SETTABLEKS                       R36 R35 K43 ["Anchor"]
      265 GETUPVAL                         R37 0
      266 GETTABLEKS                       R36 R37 K1 ["createElement"]
      268 GETUPVAL                         R38 7
      269 GETTABLEKS                       R37 R38 K25 ["Content"]
      271 DUPTABLE                         R38 K49 [{"align", "side"}]
      272 GETUPVAL                         R40 8
      273 GETTABLEKS                       R39 R40 K60 ["Center"]
      275 SETTABLEKS                       R39 R38 K47 ["align"]
      277 GETUPVAL                         R40 9
      278 GETTABLEKS                       R39 R40 K51 ["Top"]
      280 SETTABLEKS                       R39 R38 K48 ["side"]
      282 GETUPVAL                         R40 0
      283 GETTABLEKS                       R39 R40 K1 ["createElement"]
      285 GETUPVAL                         R40 5
      286 DUPTABLE                         R41 K29 [{"tag"}]
      287 LOADK                            R42 K52 ["col gap-small auto-xy padding-medium"]
      288 SETTABLEKS                       R42 R41 K28 ["tag"]
      290 DUPTABLE                         R42 K54 [{"Title", "Subtitle"}]
      291 GETUPVAL                         R44 0
      292 GETTABLEKS                       R43 R44 K1 ["createElement"]
      294 GETUPVAL                         R44 6
      295 DUPTABLE                         R45 K55 [{"Text", "tag"}]
      296 LOADK                            R46 K59 ["Middle Popover"]
      297 SETTABLEKS                       R46 R45 K34 ["Text"]
      299 LOADK                            R46 K56 ["auto-xy text-title-medium content-emphasis"]
      300 SETTABLEKS                       R46 R45 K28 ["tag"]
      302 CALL                             R43 2 1
      303 SETTABLEKS                       R43 R42 K22 ["Title"]
      305 GETUPVAL                         R44 0
      306 GETTABLEKS                       R43 R44 K1 ["createElement"]
      308 GETUPVAL                         R44 6
      309 DUPTABLE                         R45 K55 [{"Text", "tag"}]
      310 LOADK                            R46 K57 ["Sibling popover inside dialog"]
      311 SETTABLEKS                       R46 R45 K34 ["Text"]
      313 LOADK                            R46 K58 ["auto-xy text-body-small"]
      314 SETTABLEKS                       R46 R45 K28 ["tag"]
      316 CALL                             R43 2 1
      317 SETTABLEKS                       R43 R42 K53 ["Subtitle"]
      319 CALL                             R39 3 -1
      320 CALL                             R36 -1 1
      321 SETTABLEKS                       R36 R35 K25 ["Content"]
      323 CALL                             R32 3 1
      324 SETTABLEN                        R32 R31 2
      325 GETUPVAL                         R33 0
      326 GETTABLEKS                       R32 R33 K1 ["createElement"]
      328 GETUPVAL                         R34 7
      329 GETTABLEKS                       R33 R34 K12 ["Root"]
      331 DUPTABLE                         R34 K42 [{"isOpen"}]
      332 SETTABLEKS                       R6 R34 K41 ["isOpen"]
      334 DUPTABLE                         R35 K44 [{"Anchor", "Content"}]
      335 GETUPVAL                         R37 0
      336 GETTABLEKS                       R36 R37 K1 ["createElement"]
      338 GETUPVAL                         R38 7
      339 GETTABLEKS                       R37 R38 K43 ["Anchor"]
      341 LOADNIL                          R38
      342 GETUPVAL                         R40 0
      343 GETTABLEKS                       R39 R40 K1 ["createElement"]
      345 GETUPVAL                         R40 1
      346 DUPTABLE                         R41 K45 [{"text", "onActivated"}]
      347 LOADK                            R42 K61 ["Right Popover"]
      348 SETTABLEKS                       R42 R41 K6 ["text"]
      350 SETTABLEKS                       R11 R41 K7 ["onActivated"]
      352 CALL                             R39 2 -1
      353 CALL                             R36 -1 1
      354 SETTABLEKS                       R36 R35 K43 ["Anchor"]
      356 GETUPVAL                         R37 0
      357 GETTABLEKS                       R36 R37 K1 ["createElement"]
      359 GETUPVAL                         R38 7
      360 GETTABLEKS                       R37 R38 K25 ["Content"]
      362 DUPTABLE                         R38 K49 [{"align", "side"}]
      363 GETUPVAL                         R40 8
      364 GETTABLEKS                       R39 R40 K62 ["End"]
      366 SETTABLEKS                       R39 R38 K47 ["align"]
      368 GETUPVAL                         R40 9
      369 GETTABLEKS                       R39 R40 K51 ["Top"]
      371 SETTABLEKS                       R39 R38 K48 ["side"]
      373 GETUPVAL                         R40 0
      374 GETTABLEKS                       R39 R40 K1 ["createElement"]
      376 GETUPVAL                         R40 5
      377 DUPTABLE                         R41 K29 [{"tag"}]
      378 LOADK                            R42 K52 ["col gap-small auto-xy padding-medium"]
      379 SETTABLEKS                       R42 R41 K28 ["tag"]
      381 DUPTABLE                         R42 K54 [{"Title", "Subtitle"}]
      382 GETUPVAL                         R44 0
      383 GETTABLEKS                       R43 R44 K1 ["createElement"]
      385 GETUPVAL                         R44 6
      386 DUPTABLE                         R45 K55 [{"Text", "tag"}]
      387 LOADK                            R46 K61 ["Right Popover"]
      388 SETTABLEKS                       R46 R45 K34 ["Text"]
      390 LOADK                            R46 K56 ["auto-xy text-title-medium content-emphasis"]
      391 SETTABLEKS                       R46 R45 K28 ["tag"]
      393 CALL                             R43 2 1
      394 SETTABLEKS                       R43 R42 K22 ["Title"]
      396 GETUPVAL                         R44 0
      397 GETTABLEKS                       R43 R44 K1 ["createElement"]
      399 GETUPVAL                         R44 6
      400 DUPTABLE                         R45 K55 [{"Text", "tag"}]
      401 LOADK                            R46 K57 ["Sibling popover inside dialog"]
      402 SETTABLEKS                       R46 R45 K34 ["Text"]
      404 LOADK                            R46 K58 ["auto-xy text-body-small"]
      405 SETTABLEKS                       R46 R45 K28 ["tag"]
      407 CALL                             R43 2 1
      408 SETTABLEKS                       R43 R42 K53 ["Subtitle"]
      410 CALL                             R39 3 -1
      411 CALL                             R36 -1 1
      412 SETTABLEKS                       R36 R35 K25 ["Content"]
      414 CALL                             R32 3 1
      415 SETTABLEN                        R32 R31 3
      416 CALL                             R28 3 1
      417 SETTABLEKS                       R28 R27 K32 ["Buttons"]
      419 CALL                             R24 3 1
      420 SETTABLEKS                       R24 R23 K26 ["Layout"]
      422 CALL                             R20 3 1
      423 SETTABLEKS                       R20 R19 K20 ["DialogContent"]
      425 CALL                             R16 3 1
      426 JUMP                             ; [+1]
      427 LOADNIL                          R16
      428 SETTABLEKS                       R16 R15 K4 ["Dialog"]
      430 CALL                             R12 3 -1
      431 RETURN                           R12 -1

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
       24 NEWTABLE                         R8 0 4
       26 DUPTABLE                         R9 K5 [{"id", "icon", "text", "items"}]
       27 LOADK                            R10 K6 ["file"]
       28 SETTABLEKS                       R10 R9 K1 ["id"]
       30 LOADK                            R10 K7 ["page"]
       31 SETTABLEKS                       R10 R9 K2 ["icon"]
       33 LOADK                            R10 K8 ["File"]
       34 SETTABLEKS                       R10 R9 K3 ["text"]
       36 NEWTABLE                         R10 0 4
       38 DUPTABLE                         R11 K5 [{"id", "icon", "text", "items"}]
       39 LOADK                            R12 K9 ["open-recent"]
       40 SETTABLEKS                       R12 R11 K1 ["id"]
       42 LOADK                            R12 K10 ["clock"]
       43 SETTABLEKS                       R12 R11 K2 ["icon"]
       45 LOADK                            R12 K11 ["Open Recent"]
       46 SETTABLEKS                       R12 R11 K3 ["text"]
       48 NEWTABLE                         R12 0 3
       50 DUPTABLE                         R13 K12 [{"id", "icon", "text"}]
       51 LOADK                            R14 K13 ["project-alpha"]
       52 SETTABLEKS                       R14 R13 K1 ["id"]
       54 LOADK                            R14 K14 ["globe-simplified"]
       55 SETTABLEKS                       R14 R13 K2 ["icon"]
       57 LOADK                            R14 K15 ["Project Alpha"]
       58 SETTABLEKS                       R14 R13 K3 ["text"]
       60 DUPTABLE                         R14 K12 [{"id", "icon", "text"}]
       61 LOADK                            R15 K16 ["project-beta"]
       62 SETTABLEKS                       R15 R14 K1 ["id"]
       64 LOADK                            R15 K14 ["globe-simplified"]
       65 SETTABLEKS                       R15 R14 K2 ["icon"]
       67 LOADK                            R15 K17 ["Project Beta"]
       68 SETTABLEKS                       R15 R14 K3 ["text"]
       70 DUPTABLE                         R15 K18 [{"id", "text"}]
       71 LOADK                            R16 K19 ["project-gamma"]
       72 SETTABLEKS                       R16 R15 K1 ["id"]
       74 LOADK                            R16 K20 ["Project Gamma"]
       75 SETTABLEKS                       R16 R15 K3 ["text"]
       77 SETLIST                          R12 R13 3 [1]
       79 SETTABLEKS                       R12 R11 K4 ["items"]
       81 DUPTABLE                         R12 K12 [{"id", "icon", "text"}]
       82 LOADK                            R13 K21 ["save"]
       83 SETTABLEKS                       R13 R12 K1 ["id"]
       85 LOADK                            R13 K22 ["floppy-disk"]
       86 SETTABLEKS                       R13 R12 K2 ["icon"]
       88 LOADK                            R13 K23 ["Save"]
       89 SETTABLEKS                       R13 R12 K3 ["text"]
       91 DUPTABLE                         R13 K18 [{"id", "text"}]
       92 LOADK                            R14 K24 ["save-as"]
       93 SETTABLEKS                       R14 R13 K1 ["id"]
       95 LOADK                            R14 K25 ["Save As..."]
       96 SETTABLEKS                       R14 R13 K3 ["text"]
       98 DUPTABLE                         R14 K5 [{"id", "icon", "text", "items"}]
       99 LOADK                            R15 K26 ["export"]
      100 SETTABLEKS                       R15 R14 K1 ["id"]
      102 LOADK                            R15 K27 ["arrow-large-right"]
      103 SETTABLEKS                       R15 R14 K2 ["icon"]
      105 LOADK                            R15 K28 ["Export"]
      106 SETTABLEKS                       R15 R14 K3 ["text"]
      108 NEWTABLE                         R15 0 3
      110 DUPTABLE                         R16 K18 [{"id", "text"}]
      111 LOADK                            R17 K29 ["export-rbxl"]
      112 SETTABLEKS                       R17 R16 K1 ["id"]
      114 LOADK                            R17 K30 ["Place File (.rbxl)"]
      115 SETTABLEKS                       R17 R16 K3 ["text"]
      117 DUPTABLE                         R17 K18 [{"id", "text"}]
      118 LOADK                            R18 K31 ["export-rbxm"]
      119 SETTABLEKS                       R18 R17 K1 ["id"]
      121 LOADK                            R18 K32 ["Model File (.rbxm)"]
      122 SETTABLEKS                       R18 R17 K3 ["text"]
      124 DUPTABLE                         R18 K12 [{"id", "icon", "text"}]
      125 LOADK                            R19 K33 ["export-png"]
      126 SETTABLEKS                       R19 R18 K1 ["id"]
      128 LOADK                            R19 K34 ["photo-camera"]
      129 SETTABLEKS                       R19 R18 K2 ["icon"]
      131 LOADK                            R19 K35 ["Screenshot (.png)"]
      132 SETTABLEKS                       R19 R18 K3 ["text"]
      134 SETLIST                          R15 R16 3 [1]
      136 SETTABLEKS                       R15 R14 K4 ["items"]
      138 SETLIST                          R10 R11 4 [1]
      140 SETTABLEKS                       R10 R9 K4 ["items"]
      142 DUPTABLE                         R10 K5 [{"id", "icon", "text", "items"}]
      143 LOADK                            R11 K36 ["edit"]
      144 SETTABLEKS                       R11 R10 K1 ["id"]
      146 LOADK                            R11 K37 ["pencil-square"]
      147 SETTABLEKS                       R11 R10 K2 ["icon"]
      149 LOADK                            R11 K38 ["Edit"]
      150 SETTABLEKS                       R11 R10 K3 ["text"]
      152 NEWTABLE                         R11 0 5
      154 DUPTABLE                         R12 K12 [{"id", "icon", "text"}]
      155 LOADK                            R13 K39 ["undo"]
      156 SETTABLEKS                       R13 R12 K1 ["id"]
      158 LOADK                            R13 K40 ["arrow-large-left"]
      159 SETTABLEKS                       R13 R12 K2 ["icon"]
      161 LOADK                            R13 K41 ["Undo"]
      162 SETTABLEKS                       R13 R12 K3 ["text"]
      164 DUPTABLE                         R13 K12 [{"id", "icon", "text"}]
      165 LOADK                            R14 K42 ["redo"]
      166 SETTABLEKS                       R14 R13 K1 ["id"]
      168 LOADK                            R14 K27 ["arrow-large-right"]
      169 SETTABLEKS                       R14 R13 K2 ["icon"]
      171 LOADK                            R14 K43 ["Redo"]
      172 SETTABLEKS                       R14 R13 K3 ["text"]
      174 DUPTABLE                         R14 K18 [{"id", "text"}]
      175 LOADK                            R15 K44 ["cut"]
      176 SETTABLEKS                       R15 R14 K1 ["id"]
      178 LOADK                            R15 K45 ["Cut"]
      179 SETTABLEKS                       R15 R14 K3 ["text"]
      181 DUPTABLE                         R15 K18 [{"id", "text"}]
      182 LOADK                            R16 K46 ["copy"]
      183 SETTABLEKS                       R16 R15 K1 ["id"]
      185 LOADK                            R16 K47 ["Copy"]
      186 SETTABLEKS                       R16 R15 K3 ["text"]
      188 DUPTABLE                         R16 K18 [{"id", "text"}]
      189 LOADK                            R17 K48 ["paste"]
      190 SETTABLEKS                       R17 R16 K1 ["id"]
      192 LOADK                            R17 K49 ["Paste"]
      193 SETTABLEKS                       R17 R16 K3 ["text"]
      195 SETLIST                          R11 R12 5 [1]
      197 SETTABLEKS                       R11 R10 K4 ["items"]
      199 DUPTABLE                         R11 K12 [{"id", "icon", "text"}]
      200 LOADK                            R12 K50 ["select-all"]
      201 SETTABLEKS                       R12 R11 K1 ["id"]
      203 LOADK                            R12 K51 ["check-large"]
      204 SETTABLEKS                       R12 R11 K2 ["icon"]
      206 LOADK                            R12 K52 ["Select All"]
      207 SETTABLEKS                       R12 R11 K3 ["text"]
      209 DUPTABLE                         R12 K12 [{"id", "icon", "text"}]
      210 LOADK                            R13 K53 ["preferences"]
      211 SETTABLEKS                       R13 R12 K1 ["id"]
      213 LOADK                            R13 K54 ["gear"]
      214 SETTABLEKS                       R13 R12 K2 ["icon"]
      216 LOADK                            R13 K55 ["Preferences"]
      217 SETTABLEKS                       R13 R12 K3 ["text"]
      219 SETLIST                          R8 R9 4 [1]
      221 GETUPVAL                         R10 0
      222 GETTABLEKS                       R9 R10 K56 ["createElement"]
      224 GETUPVAL                         R11 0
      225 GETTABLEKS                       R10 R11 K57 ["Fragment"]
      227 LOADNIL                          R11
      228 DUPTABLE                         R12 K61 [{"ToggleButton", "Sheet", "Dialog"}]
      229 GETUPVAL                         R14 0
      230 GETTABLEKS                       R13 R14 K56 ["createElement"]
      232 GETUPVAL                         R14 1
      233 DUPTABLE                         R15 K64 [{"text", "onActivated", "variant"}]
      234 LOADK                            R16 K65 ["Open Sheet"]
      235 SETTABLEKS                       R16 R15 K3 ["text"]
      237 SETTABLEKS                       R6 R15 K62 ["onActivated"]
      239 GETUPVAL                         R17 2
      240 GETTABLEKS                       R16 R17 K66 ["Emphasis"]
      242 SETTABLEKS                       R16 R15 K63 ["variant"]
      244 CALL                             R13 2 1
      245 SETTABLEKS                       R13 R12 K58 ["ToggleButton"]
      247 JUMPIFNOT                        R0 ; [+113]
      248 GETUPVAL                         R14 0
      249 GETTABLEKS                       R13 R14 K56 ["createElement"]
      251 GETUPVAL                         R15 3
      252 GETTABLEKS                       R14 R15 K67 ["Root"]
      254 DUPTABLE                         R15 K72 [{"onClose", "snapPoints", "defaultSnapPointIndex", "displaySize"}]
      255 SETTABLEKS                       R6 R15 K68 ["onClose"]
      257 NEWTABLE                         R16 0 2
      259 LOADK                            R17 K73 [0.4]
      260 LOADK                            R18 K74 [0.7]
      261 SETLIST                          R16 R17 2 [1]
      263 SETTABLEKS                       R16 R15 K69 ["snapPoints"]
      265 LOADN                            R16 2
      266 SETTABLEKS                       R16 R15 K70 ["defaultSnapPointIndex"]
      268 GETIMPORT                        R16 K78 [Enum.DisplaySize.Small]
      270 SETTABLEKS                       R16 R15 K71 ["displaySize"]
      272 DUPTABLE                         R16 K81 [{"Header", "Content"}]
      273 GETUPVAL                         R18 0
      274 GETTABLEKS                       R17 R18 K56 ["createElement"]
      276 GETUPVAL                         R19 3
      277 GETTABLEKS                       R18 R19 K79 ["Header"]
      279 LOADNIL                          R19
      280 DUPTABLE                         R20 K83 [{"Title"}]
      281 GETUPVAL                         R22 0
      282 GETTABLEKS                       R21 R22 K56 ["createElement"]
      284 GETUPVAL                         R22 4
      285 DUPTABLE                         R23 K86 [{"Text", "tag"}]
      286 LOADK                            R24 K87 ["Sheet with Dialog & Menus"]
      287 SETTABLEKS                       R24 R23 K84 ["Text"]
      289 LOADK                            R24 K88 ["auto-xy text-title-medium content-emphasis"]
      290 SETTABLEKS                       R24 R23 K85 ["tag"]
      292 CALL                             R21 2 1
      293 SETTABLEKS                       R21 R20 K82 ["Title"]
      295 CALL                             R17 3 1
      296 SETTABLEKS                       R17 R16 K79 ["Header"]
      298 GETUPVAL                         R18 0
      299 GETTABLEKS                       R17 R18 K56 ["createElement"]
      301 GETUPVAL                         R19 3
      302 GETTABLEKS                       R18 R19 K80 ["Content"]
      304 LOADNIL                          R19
      305 DUPTABLE                         R20 K90 [{"Layout"}]
      306 GETUPVAL                         R22 0
      307 GETTABLEKS                       R21 R22 K56 ["createElement"]
      309 GETUPVAL                         R22 5
      310 DUPTABLE                         R23 K91 [{"tag"}]
      311 LOADK                            R24 K92 ["col gap-medium auto-xy"]
      312 SETTABLEKS                       R24 R23 K85 ["tag"]
      314 DUPTABLE                         R24 K95 [{"Description", "OpenDialogButton"}]
      315 GETUPVAL                         R26 0
      316 GETTABLEKS                       R25 R26 K56 ["createElement"]
      318 GETUPVAL                         R26 4
      319 DUPTABLE                         R27 K97 [{"Text", "tag", "LayoutOrder"}]
      320 LOADK                            R28 K98 ["Open the dialog below, then try the nested menu inside it."]
      321 SETTABLEKS                       R28 R27 K84 ["Text"]
      323 LOADK                            R28 K99 ["auto-xy text-body-medium"]
      324 SETTABLEKS                       R28 R27 K85 ["tag"]
      326 LOADN                            R28 1
      327 SETTABLEKS                       R28 R27 K96 ["LayoutOrder"]
      329 CALL                             R25 2 1
      330 SETTABLEKS                       R25 R24 K93 ["Description"]
      332 GETUPVAL                         R26 0
      333 GETTABLEKS                       R25 R26 K56 ["createElement"]
      335 GETUPVAL                         R26 1
      336 DUPTABLE                         R27 K100 [{"text", "onActivated", "variant", "LayoutOrder"}]
      337 LOADK                            R28 K101 ["Open Dialog"]
      338 SETTABLEKS                       R28 R27 K3 ["text"]
      340 SETTABLEKS                       R7 R27 K62 ["onActivated"]
      342 GETUPVAL                         R29 2
      343 GETTABLEKS                       R28 R29 K66 ["Emphasis"]
      345 SETTABLEKS                       R28 R27 K63 ["variant"]
      347 LOADN                            R28 2
      348 SETTABLEKS                       R28 R27 K96 ["LayoutOrder"]
      350 CALL                             R25 2 1
      351 SETTABLEKS                       R25 R24 K94 ["OpenDialogButton"]
      353 CALL                             R21 3 1
      354 SETTABLEKS                       R21 R20 K89 ["Layout"]
      356 CALL                             R17 3 1
      357 SETTABLEKS                       R17 R16 K80 ["Content"]
      359 CALL                             R13 3 1
      360 JUMP                             ; [+1]
      361 LOADNIL                          R13
      362 SETTABLEKS                       R13 R12 K59 ["Sheet"]
      364 JUMPIFNOT                        R2 ; [+138]
      365 GETUPVAL                         R14 0
      366 GETTABLEKS                       R13 R14 K56 ["createElement"]
      368 GETUPVAL                         R15 6
      369 GETTABLEKS                       R14 R15 K67 ["Root"]
      371 DUPTABLE                         R15 K105 [{"onClose", "hasBackdrop", "disablePortal", "size"}]
      372 SETTABLEKS                       R7 R15 K68 ["onClose"]
      374 LOADB                            R16 1
      375 SETTABLEKS                       R16 R15 K102 ["hasBackdrop"]
      377 LOADB                            R16 0
      378 SETTABLEKS                       R16 R15 K103 ["disablePortal"]
      380 GETUPVAL                         R17 7
      381 GETTABLEKS                       R16 R17 K106 ["Large"]
      383 SETTABLEKS                       R16 R15 K104 ["size"]
      385 DUPTABLE                         R16 K109 [{"DialogTitle", "DialogContent"}]
      386 GETUPVAL                         R18 0
      387 GETTABLEKS                       R17 R18 K56 ["createElement"]
      389 GETUPVAL                         R19 6
      390 GETTABLEKS                       R18 R19 K82 ["Title"]
      392 DUPTABLE                         R19 K110 [{"text"}]
      393 LOADK                            R20 K111 ["Dialog with Nested Menu"]
      394 SETTABLEKS                       R20 R19 K3 ["text"]
      396 CALL                             R17 2 1
      397 SETTABLEKS                       R17 R16 K107 ["DialogTitle"]
      399 GETUPVAL                         R18 0
      400 GETTABLEKS                       R17 R18 K56 ["createElement"]
      402 GETUPVAL                         R19 6
      403 GETTABLEKS                       R18 R19 K80 ["Content"]
      405 LOADNIL                          R19
      406 DUPTABLE                         R20 K90 [{"Layout"}]
      407 GETUPVAL                         R22 0
      408 GETTABLEKS                       R21 R22 K56 ["createElement"]
      410 GETUPVAL                         R22 5
      411 DUPTABLE                         R23 K91 [{"tag"}]
      412 LOADK                            R24 K92 ["col gap-medium auto-xy"]
      413 SETTABLEKS                       R24 R23 K85 ["tag"]
      415 DUPTABLE                         R24 K113 [{"Description", "MenuContainer"}]
      416 GETUPVAL                         R26 0
      417 GETTABLEKS                       R25 R26 K56 ["createElement"]
      419 GETUPVAL                         R26 4
      420 DUPTABLE                         R27 K97 [{"Text", "tag", "LayoutOrder"}]
      421 LOADK                            R28 K114 ["The menu below has 3 levels of nested submenus. Hover or click to navigate."]
      422 SETTABLEKS                       R28 R27 K84 ["Text"]
      424 LOADK                            R28 K99 ["auto-xy text-body-medium"]
      425 SETTABLEKS                       R28 R27 K85 ["tag"]
      427 LOADN                            R28 1
      428 SETTABLEKS                       R28 R27 K96 ["LayoutOrder"]
      430 CALL                             R25 2 1
      431 SETTABLEKS                       R25 R24 K93 ["Description"]
      433 GETUPVAL                         R26 0
      434 GETTABLEKS                       R25 R26 K56 ["createElement"]
      436 GETUPVAL                         R26 5
      437 DUPTABLE                         R27 K115 [{"tag", "LayoutOrder"}]
      438 LOADK                            R28 K116 ["row auto-xy"]
      439 SETTABLEKS                       R28 R27 K85 ["tag"]
      441 LOADN                            R28 2
      442 SETTABLEKS                       R28 R27 K96 ["LayoutOrder"]
      444 DUPTABLE                         R28 K118 [{"Menu"}]
      445 GETUPVAL                         R30 0
      446 GETTABLEKS                       R29 R30 K56 ["createElement"]
      448 GETUPVAL                         R30 8
      449 DUPTABLE                         R31 K121 [{"isOpen", "items", "size", "onPressedOutside", "onActivated"}]
      450 SETTABLEKS                       R4 R31 K119 ["isOpen"]
      452 SETTABLEKS                       R8 R31 K4 ["items"]
      454 GETUPVAL                         R33 9
      455 GETTABLEKS                       R32 R33 K122 ["Medium"]
      457 SETTABLEKS                       R32 R31 K104 ["size"]
      459 NEWCLOSURE                       R32 P2
      460 CAPTURE                          VAL R5
      461 SETTABLEKS                       R32 R31 K120 ["onPressedOutside"]
      463 NEWCLOSURE                       R32 P3
      464 CAPTURE                          VAL R5
      465 SETTABLEKS                       R32 R31 K62 ["onActivated"]
      467 DUPTABLE                         R32 K124 [{"Button"}]
      468 GETUPVAL                         R34 0
      469 GETTABLEKS                       R33 R34 K56 ["createElement"]
      471 GETUPVAL                         R34 1
      472 DUPTABLE                         R35 K125 [{"text", "size", "onActivated"}]
      473 LOADK                            R36 K126 ["Open Menu"]
      474 SETTABLEKS                       R36 R35 K3 ["text"]
      476 GETUPVAL                         R37 9
      477 GETTABLEKS                       R36 R37 K122 ["Medium"]
      479 SETTABLEKS                       R36 R35 K104 ["size"]
      481 NEWCLOSURE                       R36 P4
      482 CAPTURE                          VAL R5
      483 CAPTURE                          VAL R4
      484 SETTABLEKS                       R36 R35 K62 ["onActivated"]
      486 CALL                             R33 2 1
      487 SETTABLEKS                       R33 R32 K123 ["Button"]
      489 CALL                             R29 3 1
      490 SETTABLEKS                       R29 R28 K117 ["Menu"]
      492 CALL                             R25 3 1
      493 SETTABLEKS                       R25 R24 K112 ["MenuContainer"]
      495 CALL                             R21 3 1
      496 SETTABLEKS                       R21 R20 K89 ["Layout"]
      498 CALL                             R17 3 1
      499 SETTABLEKS                       R17 R16 K108 ["DialogContent"]
      501 CALL                             R13 3 1
      502 JUMP                             ; [+1]
      503 LOADNIL                          R13
      504 SETTABLEKS                       R13 R12 K60 ["Dialog"]
      506 CALL                             R9 3 -1
      507 RETURN                           R9 -1

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
       18 GETTABLEKS                       R4 R5 K9 ["Button"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R6 R0 K10 ["Enums"]
       25 GETTABLEKS                       R5 R6 K11 ["ButtonVariant"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R7 R0 K8 ["Components"]
       32 GETTABLEKS                       R6 R7 K12 ["Dialog"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R8 R0 K10 ["Enums"]
       39 GETTABLEKS                       R7 R8 K13 ["DialogSize"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R9 R0 K14 ["Utility"]
       46 GETTABLEKS                       R8 R9 K15 ["Flags"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R10 R0 K8 ["Components"]
       53 GETTABLEKS                       R9 R10 K16 ["IconButton"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R11 R0 K10 ["Enums"]
       60 GETTABLEKS                       R10 R11 K17 ["InputSize"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R12 R0 K8 ["Components"]
       67 GETTABLEKS                       R11 R12 K18 ["Menu"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R13 R0 K8 ["Components"]
       74 GETTABLEKS                       R12 R13 K19 ["Popover"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R14 R0 K10 ["Enums"]
       81 GETTABLEKS                       R13 R14 K20 ["PopoverAlign"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K6 [require]
       86 GETTABLEKS                       R15 R0 K10 ["Enums"]
       88 GETTABLEKS                       R14 R15 K21 ["PopoverSide"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K6 [require]
       93 GETTABLEKS                       R16 R0 K8 ["Components"]
       95 GETTABLEKS                       R15 R16 K22 ["Sheet"]
       97 CALL                             R14 1 1
       98 GETIMPORT                        R15 K6 [require]
      100 GETTABLEKS                       R17 R0 K8 ["Components"]
      102 GETTABLEKS                       R16 R17 K23 ["Text"]
      104 CALL                             R15 1 1
      105 GETIMPORT                        R16 K6 [require]
      107 GETTABLEKS                       R18 R0 K8 ["Components"]
      109 GETTABLEKS                       R17 R18 K24 ["View"]
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
      121 DUPTABLE                         R18 K29 [{"summary", "stories", "controls"}]
      122 LOADK                            R19 K30 ["Elevation"]
      123 SETTABLEKS                       R19 R18 K26 ["summary"]
      125 NEWTABLE                         R19 0 7
      127 DUPTABLE                         R20 K33 [{"name", "story"}]
      128 LOADK                            R21 K34 ["Nested Popovers"]
      129 SETTABLEKS                       R21 R20 K31 ["name"]
      131 DUPCLOSURE                       R21 K35 [PROTO_4]
      132 CAPTURE                          VAL R2
      133 CAPTURE                          VAL R16
      134 CAPTURE                          VAL R11
      135 CAPTURE                          VAL R3
      136 CAPTURE                          VAL R4
      137 CAPTURE                          VAL R12
      138 CAPTURE                          VAL R13
      139 CAPTURE                          VAL R15
      140 CAPTURE                          VAL R9
      141 SETTABLEKS                       R21 R20 K32 ["story"]
      143 DUPTABLE                         R21 K33 [{"name", "story"}]
      144 LOADK                            R22 K36 ["Sibling Popovers"]
      145 SETTABLEKS                       R22 R21 K31 ["name"]
      147 DUPCLOSURE                       R22 K37 [PROTO_8]
      148 CAPTURE                          VAL R2
      149 CAPTURE                          VAL R16
      150 CAPTURE                          VAL R11
      151 CAPTURE                          VAL R3
      152 CAPTURE                          VAL R4
      153 CAPTURE                          VAL R12
      154 CAPTURE                          VAL R13
      155 CAPTURE                          VAL R15
      156 SETTABLEKS                       R22 R21 K32 ["story"]
      158 DUPTABLE                         R22 K33 [{"name", "story"}]
      159 LOADK                            R23 K38 ["Nested Sheets"]
      160 SETTABLEKS                       R23 R22 K31 ["name"]
      162 DUPCLOSURE                       R23 K39 [PROTO_15]
      163 CAPTURE                          VAL R2
      164 CAPTURE                          VAL R3
      165 CAPTURE                          VAL R4
      166 CAPTURE                          VAL R14
      167 CAPTURE                          VAL R15
      168 CAPTURE                          VAL R16
      169 CAPTURE                          VAL R17
      170 SETTABLEKS                       R23 R22 K32 ["story"]
      172 DUPTABLE                         R23 K33 [{"name", "story"}]
      173 LOADK                            R24 K40 ["Nested Dialogs"]
      174 SETTABLEKS                       R24 R23 K31 ["name"]
      176 DUPCLOSURE                       R24 K41 [PROTO_22]
      177 CAPTURE                          VAL R2
      178 CAPTURE                          VAL R3
      179 CAPTURE                          VAL R4
      180 CAPTURE                          VAL R5
      181 CAPTURE                          VAL R6
      182 CAPTURE                          VAL R16
      183 CAPTURE                          VAL R17
      184 CAPTURE                          VAL R15
      185 SETTABLEKS                       R24 R23 K32 ["story"]
      187 DUPTABLE                         R24 K33 [{"name", "story"}]
      188 LOADK                            R25 K42 ["Dialog with Nested Popovers"]
      189 SETTABLEKS                       R25 R24 K31 ["name"]
      191 DUPCLOSURE                       R25 K43 [PROTO_26]
      192 CAPTURE                          VAL R2
      193 CAPTURE                          VAL R3
      194 CAPTURE                          VAL R4
      195 CAPTURE                          VAL R5
      196 CAPTURE                          VAL R6
      197 CAPTURE                          VAL R16
      198 CAPTURE                          VAL R15
      199 CAPTURE                          VAL R11
      200 CAPTURE                          VAL R12
      201 CAPTURE                          VAL R13
      202 CAPTURE                          VAL R9
      203 SETTABLEKS                       R25 R24 K32 ["story"]
      205 DUPTABLE                         R25 K33 [{"name", "story"}]
      206 LOADK                            R26 K44 ["Dialog with Sibling Popovers"]
      207 SETTABLEKS                       R26 R25 K31 ["name"]
      209 DUPCLOSURE                       R26 K45 [PROTO_31]
      210 CAPTURE                          VAL R2
      211 CAPTURE                          VAL R3
      212 CAPTURE                          VAL R4
      213 CAPTURE                          VAL R5
      214 CAPTURE                          VAL R6
      215 CAPTURE                          VAL R16
      216 CAPTURE                          VAL R15
      217 CAPTURE                          VAL R11
      218 CAPTURE                          VAL R12
      219 CAPTURE                          VAL R13
      220 SETTABLEKS                       R26 R25 K32 ["story"]
      222 GETTABLEKS                       R27 R7 K46 ["FoundationBaseMenuSubmenuSupport"]
      224 JUMPIFNOT                        R27 ; [+18]
      225 DUPTABLE                         R26 K33 [{"name", "story"}]
      226 LOADK                            R27 K47 ["Sheet > Dialog > Nested Menus"]
      227 SETTABLEKS                       R27 R26 K31 ["name"]
      229 DUPCLOSURE                       R27 K48 [PROTO_37]
      230 CAPTURE                          VAL R2
      231 CAPTURE                          VAL R3
      232 CAPTURE                          VAL R4
      233 CAPTURE                          VAL R14
      234 CAPTURE                          VAL R15
      235 CAPTURE                          VAL R16
      236 CAPTURE                          VAL R5
      237 CAPTURE                          VAL R6
      238 CAPTURE                          VAL R10
      239 CAPTURE                          VAL R9
      240 SETTABLEKS                       R27 R26 K32 ["story"]
      242 JUMP                             ; [+2]
      243 NEWTABLE                         R26 0 0
      245 SETLIST                          R19 R20 7 [1]
      247 SETTABLEKS                       R19 R18 K27 ["stories"]
      249 NEWTABLE                         R19 0 0
      251 SETTABLEKS                       R19 R18 K28 ["controls"]
      253 RETURN                           R18 1
