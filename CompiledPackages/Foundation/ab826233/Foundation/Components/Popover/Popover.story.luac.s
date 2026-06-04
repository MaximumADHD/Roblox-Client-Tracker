PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 DUPTABLE                         R3 K4 [{"Default", "Surface_0", "Surface_200", "ActionAlert"}]
        3 LOADNIL                          R4
        4 SETTABLEKS                       R4 R3 K0 ["Default"]
        6 GETTABLEKS                       R4 R1 K5 ["Color"]
        8 GETTABLEKS                       R4 R4 K6 ["Surface"]
       10 GETTABLEKS                       R4 R4 K1 ["Surface_0"]
       12 SETTABLEKS                       R4 R3 K1 ["Surface_0"]
       14 GETTABLEKS                       R4 R1 K5 ["Color"]
       16 GETTABLEKS                       R4 R4 K6 ["Surface"]
       18 GETTABLEKS                       R4 R4 K2 ["Surface_200"]
       20 SETTABLEKS                       R4 R3 K2 ["Surface_200"]
       22 GETTABLEKS                       R4 R1 K5 ["Color"]
       24 GETTABLEKS                       R4 R4 K3 ["ActionAlert"]
       26 GETTABLEKS                       R4 R4 K7 ["Background"]
       28 SETTABLEKS                       R4 R3 K3 ["ActionAlert"]
       30 GETTABLE                         R2 R3 R0
       31 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Button activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["controls"]
        2 GETTABLEKS                       R2 R2 K1 ["backgroundStyle"]
        4 GETUPVAL                         R3 0
        5 CALL                             R3 0 1
        6 DUPTABLE                         R4 K6 [{"Default", "Surface_0", "Surface_200", "ActionAlert"}]
        7 LOADNIL                          R5
        8 SETTABLEKS                       R5 R4 K2 ["Default"]
       10 GETTABLEKS                       R5 R3 K7 ["Color"]
       12 GETTABLEKS                       R5 R5 K8 ["Surface"]
       14 GETTABLEKS                       R5 R5 K3 ["Surface_0"]
       16 SETTABLEKS                       R5 R4 K3 ["Surface_0"]
       18 GETTABLEKS                       R5 R3 K7 ["Color"]
       20 GETTABLEKS                       R5 R5 K8 ["Surface"]
       22 GETTABLEKS                       R5 R5 K4 ["Surface_200"]
       24 SETTABLEKS                       R5 R4 K4 ["Surface_200"]
       26 GETTABLEKS                       R5 R3 K7 ["Color"]
       28 GETTABLEKS                       R5 R5 K5 ["ActionAlert"]
       30 GETTABLEKS                       R5 R5 K9 ["Background"]
       32 SETTABLEKS                       R5 R4 K5 ["ActionAlert"]
       34 GETTABLE                         R1 R4 R2
       35 GETUPVAL                         R2 1
       36 GETTABLEKS                       R2 R2 K10 ["createElement"]
       38 GETUPVAL                         R3 2
       39 DUPTABLE                         R4 K13 [{"Size", "tag"}]
       40 GETIMPORT                        R5 K16 [UDim2.new]
       42 LOADN                            R6 1
       43 LOADN                            R7 0
       44 LOADN                            R8 0
       45 LOADN                            R9 232
       46 CALL                             R5 4 1
       47 SETTABLEKS                       R5 R4 K11 ["Size"]
       49 LOADK                            R5 K17 ["row align-x-center align-y-center"]
       50 SETTABLEKS                       R5 R4 K12 ["tag"]
       52 DUPTABLE                         R5 K19 [{"Popover"}]
       53 GETUPVAL                         R6 1
       54 GETTABLEKS                       R6 R6 K10 ["createElement"]
       56 GETUPVAL                         R7 3
       57 GETTABLEKS                       R7 R7 K20 ["Root"]
       59 DUPTABLE                         R8 K22 [{"isOpen"}]
       60 LOADB                            R9 1
       61 SETTABLEKS                       R9 R8 K21 ["isOpen"]
       63 DUPTABLE                         R9 K25 [{"Anchor", "Content"}]
       64 GETUPVAL                         R10 1
       65 GETTABLEKS                       R10 R10 K10 ["createElement"]
       67 GETUPVAL                         R11 3
       68 GETTABLEKS                       R11 R11 K23 ["Anchor"]
       70 LOADNIL                          R12
       71 GETUPVAL                         R13 1
       72 GETTABLEKS                       R13 R13 K10 ["createElement"]
       74 GETUPVAL                         R14 2
       75 DUPTABLE                         R15 K26 [{"tag"}]
       76 LOADK                            R16 K27 ["col gap-large auto-xy padding-large stroke-neutral radius-medium bg-surface-100"]
       77 SETTABLEKS                       R16 R15 K12 ["tag"]
       79 DUPTABLE                         R16 K30 [{"Text", "Button"}]
       80 GETUPVAL                         R17 1
       81 GETTABLEKS                       R17 R17 K10 ["createElement"]
       83 GETUPVAL                         R18 4
       84 DUPTABLE                         R19 K31 [{"Text", "tag"}]
       85 LOADK                            R20 K32 ["I am a card"]
       86 SETTABLEKS                       R20 R19 K28 ["Text"]
       88 LOADK                            R20 K33 ["auto-xy text-heading-medium"]
       89 SETTABLEKS                       R20 R19 K12 ["tag"]
       91 CALL                             R17 2 1
       92 SETTABLEKS                       R17 R16 K28 ["Text"]
       94 GETUPVAL                         R17 1
       95 GETTABLEKS                       R17 R17 K10 ["createElement"]
       97 GETUPVAL                         R18 5
       98 DUPTABLE                         R19 K37 [{"text", "size", "onActivated"}]
       99 LOADK                            R20 K38 ["Just a button!"]
      100 SETTABLEKS                       R20 R19 K34 ["text"]
      102 GETUPVAL                         R20 6
      103 GETTABLEKS                       R20 R20 K39 ["Medium"]
      105 SETTABLEKS                       R20 R19 K35 ["size"]
      107 DUPCLOSURE                       R20 K40 [PROTO_1]
      108 SETTABLEKS                       R20 R19 K36 ["onActivated"]
      110 CALL                             R17 2 1
      111 SETTABLEKS                       R17 R16 K29 ["Button"]
      113 CALL                             R13 3 -1
      114 CALL                             R10 -1 1
      115 SETTABLEKS                       R10 R9 K23 ["Anchor"]
      117 GETUPVAL                         R10 1
      118 GETTABLEKS                       R10 R10 K10 ["createElement"]
      120 GETUPVAL                         R11 3
      121 GETTABLEKS                       R11 R11 K24 ["Content"]
      123 DUPTABLE                         R12 K44 [{"align", "side", "backgroundStyle", "radius"}]
      124 GETTABLEKS                       R13 R0 K0 ["controls"]
      126 GETTABLEKS                       R13 R13 K41 ["align"]
      128 SETTABLEKS                       R13 R12 K41 ["align"]
      130 GETTABLEKS                       R13 R0 K0 ["controls"]
      132 GETTABLEKS                       R13 R13 K42 ["side"]
      134 SETTABLEKS                       R13 R12 K42 ["side"]
      136 SETTABLEKS                       R1 R12 K1 ["backgroundStyle"]
      138 GETTABLEKS                       R13 R0 K0 ["controls"]
      140 GETTABLEKS                       R13 R13 K43 ["radius"]
      142 SETTABLEKS                       R13 R12 K43 ["radius"]
      144 GETUPVAL                         R13 1
      145 GETTABLEKS                       R13 R13 K10 ["createElement"]
      147 GETUPVAL                         R14 2
      148 DUPTABLE                         R15 K26 [{"tag"}]
      149 LOADK                            R16 K45 ["col gap-small auto-xy padding-medium"]
      150 SETTABLEKS                       R16 R15 K12 ["tag"]
      152 DUPTABLE                         R16 K48 [{"Title", "Subtitle"}]
      153 GETUPVAL                         R17 1
      154 GETTABLEKS                       R17 R17 K10 ["createElement"]
      156 GETUPVAL                         R18 4
      157 DUPTABLE                         R19 K31 [{"Text", "tag"}]
      158 LOADK                            R20 K49 ["Tooltip Title"]
      159 SETTABLEKS                       R20 R19 K28 ["Text"]
      161 LOADK                            R20 K50 ["auto-xy text-title-medium content-emphasis"]
      162 SETTABLEKS                       R20 R19 K12 ["tag"]
      164 CALL                             R17 2 1
      165 SETTABLEKS                       R17 R16 K46 ["Title"]
      167 GETUPVAL                         R17 1
      168 GETTABLEKS                       R17 R17 K10 ["createElement"]
      170 GETUPVAL                         R18 4
      171 DUPTABLE                         R19 K31 [{"Text", "tag"}]
      172 LOADK                            R20 K51 ["Here's the tootip's subtitle and content."]
      173 SETTABLEKS                       R20 R19 K28 ["Text"]
      175 LOADK                            R20 K52 ["auto-xy text-body-small"]
      176 SETTABLEKS                       R20 R19 K12 ["tag"]
      178 CALL                             R17 2 1
      179 SETTABLEKS                       R17 R16 K47 ["Subtitle"]
      181 CALL                             R13 3 -1
      182 CALL                             R10 -1 1
      183 SETTABLEKS                       R10 R9 K24 ["Content"]
      185 CALL                             R6 3 1
      186 SETTABLEKS                       R6 R5 K18 ["Popover"]
      188 CALL                             R2 3 -1
      189 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["createElement"]
        8 GETUPVAL                         R4 1
        9 DUPTABLE                         R5 K3 [{"tag"}]
       10 LOADK                            R6 K4 ["row align-x-center align-y-center size-full-0 auto-y"]
       11 SETTABLEKS                       R6 R5 K2 ["tag"]
       13 DUPTABLE                         R6 K6 [{"Popover"}]
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R7 R7 K1 ["createElement"]
       17 GETUPVAL                         R8 2
       18 GETTABLEKS                       R8 R8 K7 ["Root"]
       20 DUPTABLE                         R9 K9 [{"isOpen"}]
       21 SETTABLEKS                       R1 R9 K8 ["isOpen"]
       23 DUPTABLE                         R10 K12 [{"Anchor", "Content"}]
       24 GETUPVAL                         R11 0
       25 GETTABLEKS                       R11 R11 K1 ["createElement"]
       27 GETUPVAL                         R12 2
       28 GETTABLEKS                       R12 R12 K10 ["Anchor"]
       30 LOADNIL                          R13
       31 GETUPVAL                         R14 0
       32 GETTABLEKS                       R14 R14 K1 ["createElement"]
       34 GETUPVAL                         R15 1
       35 DUPTABLE                         R16 K3 [{"tag"}]
       36 LOADK                            R17 K13 ["col gap-large auto-xy padding-large stroke-neutral radius-medium bg-surface-100"]
       37 SETTABLEKS                       R17 R16 K2 ["tag"]
       39 DUPTABLE                         R17 K16 [{"Text", "Button"}]
       40 GETUPVAL                         R18 0
       41 GETTABLEKS                       R18 R18 K1 ["createElement"]
       43 GETUPVAL                         R19 3
       44 DUPTABLE                         R20 K17 [{"Text", "tag"}]
       45 LOADK                            R21 K18 ["I am a card"]
       46 SETTABLEKS                       R21 R20 K14 ["Text"]
       48 LOADK                            R21 K19 ["auto-xy text-heading-medium"]
       49 SETTABLEKS                       R21 R20 K2 ["tag"]
       51 CALL                             R18 2 1
       52 SETTABLEKS                       R18 R17 K14 ["Text"]
       54 GETUPVAL                         R18 0
       55 GETTABLEKS                       R18 R18 K1 ["createElement"]
       57 GETUPVAL                         R19 4
       58 DUPTABLE                         R20 K23 [{"text", "size", "onActivated"}]
       59 LOADK                            R21 K24 ["Click me to toggle!"]
       60 SETTABLEKS                       R21 R20 K20 ["text"]
       62 GETUPVAL                         R21 5
       63 GETTABLEKS                       R21 R21 K25 ["Medium"]
       65 SETTABLEKS                       R21 R20 K21 ["size"]
       67 NEWCLOSURE                       R21 P0
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R1
       70 SETTABLEKS                       R21 R20 K22 ["onActivated"]
       72 CALL                             R18 2 1
       73 SETTABLEKS                       R18 R17 K15 ["Button"]
       75 CALL                             R14 3 -1
       76 CALL                             R11 -1 1
       77 SETTABLEKS                       R11 R10 K10 ["Anchor"]
       79 GETUPVAL                         R11 0
       80 GETTABLEKS                       R11 R11 K1 ["createElement"]
       82 GETUPVAL                         R12 2
       83 GETTABLEKS                       R12 R12 K11 ["Content"]
       85 DUPTABLE                         R13 K29 [{"align", "side", "onPressedOutside"}]
       86 GETTABLEKS                       R14 R0 K30 ["controls"]
       88 GETTABLEKS                       R14 R14 K26 ["align"]
       90 SETTABLEKS                       R14 R13 K26 ["align"]
       92 GETTABLEKS                       R14 R0 K30 ["controls"]
       94 GETTABLEKS                       R14 R14 K27 ["side"]
       96 SETTABLEKS                       R14 R13 K27 ["side"]
       98 NEWCLOSURE                       R14 P1
       99 CAPTURE                          VAL R2
      100 SETTABLEKS                       R14 R13 K28 ["onPressedOutside"]
      102 GETUPVAL                         R14 0
      103 GETTABLEKS                       R14 R14 K1 ["createElement"]
      105 GETUPVAL                         R15 1
      106 DUPTABLE                         R16 K3 [{"tag"}]
      107 LOADK                            R17 K31 ["col gap-small auto-xy padding-medium"]
      108 SETTABLEKS                       R17 R16 K2 ["tag"]
      110 DUPTABLE                         R17 K34 [{"Title", "Subtitle"}]
      111 GETUPVAL                         R18 0
      112 GETTABLEKS                       R18 R18 K1 ["createElement"]
      114 GETUPVAL                         R19 3
      115 DUPTABLE                         R20 K17 [{"Text", "tag"}]
      116 LOADK                            R21 K35 ["Click outside example"]
      117 SETTABLEKS                       R21 R20 K14 ["Text"]
      119 LOADK                            R21 K36 ["auto-xy text-title-medium content-emphasis"]
      120 SETTABLEKS                       R21 R20 K2 ["tag"]
      122 CALL                             R18 2 1
      123 SETTABLEKS                       R18 R17 K32 ["Title"]
      125 GETUPVAL                         R18 0
      126 GETTABLEKS                       R18 R18 K1 ["createElement"]
      128 GETUPVAL                         R19 3
      129 DUPTABLE                         R20 K17 [{"Text", "tag"}]
      130 LOADK                            R21 K37 ["Click anywhere outside to close this"]
      131 SETTABLEKS                       R21 R20 K14 ["Text"]
      133 LOADK                            R21 K38 ["auto-xy text-body-small"]
      134 SETTABLEKS                       R21 R20 K2 ["tag"]
      136 CALL                             R18 2 1
      137 SETTABLEKS                       R18 R17 K33 ["Subtitle"]
      139 CALL                             R14 3 -1
      140 CALL                             R11 -1 1
      141 SETTABLEKS                       R11 R10 K11 ["Content"]
      143 CALL                             R7 3 1
      144 SETTABLEKS                       R7 R6 K5 ["Popover"]
      146 CALL                             R3 3 -1
      147 RETURN                           R3 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
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
       14 DUPTABLE                         R6 K5 [{"Size", "tag"}]
       15 GETIMPORT                        R7 K8 [UDim2.new]
       17 LOADN                            R8 1
       18 LOADN                            R9 0
       19 LOADN                            R10 0
       20 LOADN                            R11 232
       21 CALL                             R7 4 1
       22 SETTABLEKS                       R7 R6 K3 ["Size"]
       24 LOADK                            R7 K9 ["row align-x-center align-y-center"]
       25 SETTABLEKS                       R7 R6 K4 ["tag"]
       27 DUPTABLE                         R7 K12 [{"Button", "Popover"}]
       28 GETUPVAL                         R8 0
       29 GETTABLEKS                       R8 R8 K2 ["createElement"]
       31 GETUPVAL                         R9 2
       32 DUPTABLE                         R10 K17 [{"text", "size", "ref", "onActivated"}]
       33 LOADK                            R11 K18 ["Click me to toggle!"]
       34 SETTABLEKS                       R11 R10 K13 ["text"]
       36 GETUPVAL                         R11 3
       37 GETTABLEKS                       R11 R11 K19 ["Medium"]
       39 SETTABLEKS                       R11 R10 K14 ["size"]
       41 SETTABLEKS                       R1 R10 K15 ["ref"]
       43 NEWCLOSURE                       R11 P0
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R2
       46 SETTABLEKS                       R11 R10 K16 ["onActivated"]
       48 CALL                             R8 2 1
       49 SETTABLEKS                       R8 R7 K10 ["Button"]
       51 GETUPVAL                         R8 0
       52 GETTABLEKS                       R8 R8 K2 ["createElement"]
       54 GETUPVAL                         R9 4
       55 GETTABLEKS                       R9 R9 K20 ["Root"]
       57 DUPTABLE                         R10 K22 [{"isOpen"}]
       58 SETTABLEKS                       R2 R10 K21 ["isOpen"]
       60 DUPTABLE                         R11 K25 [{"Anchor", "Content"}]
       61 GETUPVAL                         R12 0
       62 GETTABLEKS                       R12 R12 K2 ["createElement"]
       64 GETUPVAL                         R13 4
       65 GETTABLEKS                       R13 R13 K23 ["Anchor"]
       67 DUPTABLE                         R14 K27 [{"anchorRef"}]
       68 SETTABLEKS                       R1 R14 K26 ["anchorRef"]
       70 CALL                             R12 2 1
       71 SETTABLEKS                       R12 R11 K23 ["Anchor"]
       73 GETUPVAL                         R12 0
       74 GETTABLEKS                       R12 R12 K2 ["createElement"]
       76 GETUPVAL                         R13 4
       77 GETTABLEKS                       R13 R13 K24 ["Content"]
       79 DUPTABLE                         R14 K31 [{"align", "side", "onPressedOutside"}]
       80 GETTABLEKS                       R15 R0 K32 ["controls"]
       82 GETTABLEKS                       R15 R15 K28 ["align"]
       84 SETTABLEKS                       R15 R14 K28 ["align"]
       86 GETTABLEKS                       R15 R0 K32 ["controls"]
       88 GETTABLEKS                       R15 R15 K29 ["side"]
       90 SETTABLEKS                       R15 R14 K29 ["side"]
       92 NEWCLOSURE                       R15 P1
       93 CAPTURE                          VAL R3
       94 SETTABLEKS                       R15 R14 K30 ["onPressedOutside"]
       96 GETUPVAL                         R15 0
       97 GETTABLEKS                       R15 R15 K2 ["createElement"]
       99 GETUPVAL                         R16 1
      100 DUPTABLE                         R17 K33 [{"tag"}]
      101 LOADK                            R18 K34 ["col gap-small auto-xy padding-medium"]
      102 SETTABLEKS                       R18 R17 K4 ["tag"]
      104 DUPTABLE                         R18 K37 [{"Title", "Subtitle"}]
      105 GETUPVAL                         R19 0
      106 GETTABLEKS                       R19 R19 K2 ["createElement"]
      108 GETUPVAL                         R20 5
      109 DUPTABLE                         R21 K39 [{"Text", "tag"}]
      110 LOADK                            R22 K40 ["Anchor Reference Example"]
      111 SETTABLEKS                       R22 R21 K38 ["Text"]
      113 LOADK                            R22 K41 ["auto-xy text-title-medium content-emphasis"]
      114 SETTABLEKS                       R22 R21 K4 ["tag"]
      116 CALL                             R19 2 1
      117 SETTABLEKS                       R19 R18 K35 ["Title"]
      119 GETUPVAL                         R19 0
      120 GETTABLEKS                       R19 R19 K2 ["createElement"]
      122 GETUPVAL                         R20 5
      123 DUPTABLE                         R21 K39 [{"Text", "tag"}]
      124 LOADK                            R22 K42 ["This popover is anchored to a button using anchorRef"]
      125 SETTABLEKS                       R22 R21 K38 ["Text"]
      127 LOADK                            R22 K43 ["auto-xy text-body-small"]
      128 SETTABLEKS                       R22 R21 K4 ["tag"]
      130 CALL                             R19 2 1
      131 SETTABLEKS                       R19 R18 K36 ["Subtitle"]
      133 CALL                             R15 3 -1
      134 CALL                             R12 -1 1
      135 SETTABLEKS                       R12 R11 K24 ["Content"]
      137 CALL                             R8 3 1
      138 SETTABLEKS                       R8 R7 K11 ["Popover"]
      140 CALL                             R4 3 -1
      141 RETURN                           R4 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R0 K2 [task.wait]
        2 LOADK                            R1 K3 [0.1]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["useState"]
        8 LOADK                            R3 K1 [""]
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K2 ["createElement"]
       13 GETUPVAL                         R5 1
       14 DUPTABLE                         R6 K4 [{"tag"}]
       15 LOADK                            R7 K5 ["col align-x-center align-y-center gap-large size-full-0 auto-y"]
       16 SETTABLEKS                       R7 R6 K3 ["tag"]
       18 DUPTABLE                         R7 K8 [{"Instructions", "Popover"}]
       19 GETUPVAL                         R8 0
       20 GETTABLEKS                       R8 R8 K2 ["createElement"]
       22 GETUPVAL                         R9 2
       23 DUPTABLE                         R10 K11 [{"Text", "tag", "padding"}]
       24 LOADK                            R11 K12 ["Focus the input field to test keyboard-aware positioning"]
       25 SETTABLEKS                       R11 R10 K9 ["Text"]
       27 LOADK                            R11 K13 ["auto-xy text-body-medium content-emphasis"]
       28 SETTABLEKS                       R11 R10 K3 ["tag"]
       30 DUPTABLE                         R11 K15 [{"bottom"}]
       31 GETIMPORT                        R12 K18 [UDim.new]
       33 LOADN                            R13 0
       34 LOADN                            R14 244
       35 CALL                             R12 2 1
       36 SETTABLEKS                       R12 R11 K14 ["bottom"]
       38 SETTABLEKS                       R11 R10 K10 ["padding"]
       40 CALL                             R8 2 1
       41 SETTABLEKS                       R8 R7 K6 ["Instructions"]
       43 GETUPVAL                         R8 0
       44 GETTABLEKS                       R8 R8 K2 ["createElement"]
       46 GETUPVAL                         R9 3
       47 GETTABLEKS                       R9 R9 K19 ["Root"]
       49 DUPTABLE                         R10 K21 [{"isOpen"}]
       50 SETTABLEKS                       R0 R10 K20 ["isOpen"]
       52 DUPTABLE                         R11 K24 [{"Anchor", "Content"}]
       53 GETUPVAL                         R12 0
       54 GETTABLEKS                       R12 R12 K2 ["createElement"]
       56 GETUPVAL                         R13 3
       57 GETTABLEKS                       R13 R13 K22 ["Anchor"]
       59 LOADNIL                          R14
       60 GETUPVAL                         R15 0
       61 GETTABLEKS                       R15 R15 K2 ["createElement"]
       63 GETUPVAL                         R16 1
       64 DUPTABLE                         R17 K4 [{"tag"}]
       65 LOADK                            R18 K25 ["col gap-medium auto-xy"]
       66 SETTABLEKS                       R18 R17 K3 ["tag"]
       68 DUPTABLE                         R18 K28 [{"TextInputField", "ToggleButton"}]
       69 GETUPVAL                         R19 0
       70 GETTABLEKS                       R19 R19 K2 ["createElement"]
       72 GETUPVAL                         R20 4
       73 DUPTABLE                         R21 K36 [{"size", "label", "placeholder", "text", "onChanged", "onFocusGained", "onFocusLost"}]
       74 GETUPVAL                         R22 5
       75 GETTABLEKS                       R22 R22 K37 ["Medium"]
       77 SETTABLEKS                       R22 R21 K29 ["size"]
       79 LOADK                            R22 K38 ["Test Input"]
       80 SETTABLEKS                       R22 R21 K30 ["label"]
       82 LOADK                            R22 K39 ["Type something here..."]
       83 SETTABLEKS                       R22 R21 K31 ["placeholder"]
       85 SETTABLEKS                       R2 R21 K32 ["text"]
       87 NEWCLOSURE                       R22 P0
       88 CAPTURE                          VAL R3
       89 SETTABLEKS                       R22 R21 K33 ["onChanged"]
       91 NEWCLOSURE                       R22 P1
       92 CAPTURE                          VAL R1
       93 SETTABLEKS                       R22 R21 K34 ["onFocusGained"]
       95 NEWCLOSURE                       R22 P2
       96 CAPTURE                          VAL R1
       97 SETTABLEKS                       R22 R21 K35 ["onFocusLost"]
       99 CALL                             R19 2 1
      100 SETTABLEKS                       R19 R18 K26 ["TextInputField"]
      102 GETUPVAL                         R19 0
      103 GETTABLEKS                       R19 R19 K2 ["createElement"]
      105 GETUPVAL                         R20 6
      106 DUPTABLE                         R21 K41 [{"text", "size", "onActivated"}]
      107 JUMPIFNOT                        R0 ; [+2]
      108 LOADK                            R22 K42 ["Close Popover"]
      109 JUMP                             ; [+1]
      110 LOADK                            R22 K43 ["Open Popover"]
      111 SETTABLEKS                       R22 R21 K32 ["text"]
      113 GETUPVAL                         R22 5
      114 GETTABLEKS                       R22 R22 K37 ["Medium"]
      116 SETTABLEKS                       R22 R21 K29 ["size"]
      118 NEWCLOSURE                       R22 P3
      119 CAPTURE                          VAL R1
      120 CAPTURE                          VAL R0
      121 SETTABLEKS                       R22 R21 K40 ["onActivated"]
      123 CALL                             R19 2 1
      124 SETTABLEKS                       R19 R18 K27 ["ToggleButton"]
      126 CALL                             R15 3 -1
      127 CALL                             R12 -1 1
      128 SETTABLEKS                       R12 R11 K22 ["Anchor"]
      130 GETUPVAL                         R12 0
      131 GETTABLEKS                       R12 R12 K2 ["createElement"]
      133 GETUPVAL                         R13 3
      134 GETTABLEKS                       R13 R13 K23 ["Content"]
      136 DUPTABLE                         R14 K47 [{"side", "align", "onPressedOutside"}]
      137 GETUPVAL                         R15 7
      138 GETTABLEKS                       R15 R15 K48 ["Bottom"]
      140 SETTABLEKS                       R15 R14 K44 ["side"]
      142 GETUPVAL                         R15 8
      143 GETTABLEKS                       R15 R15 K49 ["Start"]
      145 SETTABLEKS                       R15 R14 K45 ["align"]
      147 NEWCLOSURE                       R15 P4
      148 CAPTURE                          VAL R1
      149 SETTABLEKS                       R15 R14 K46 ["onPressedOutside"]
      151 GETUPVAL                         R15 0
      152 GETTABLEKS                       R15 R15 K2 ["createElement"]
      154 GETUPVAL                         R16 1
      155 DUPTABLE                         R17 K51 [{"tag", "Size"}]
      156 LOADK                            R18 K52 ["col gap-small auto-xy padding-medium"]
      157 SETTABLEKS                       R18 R17 K3 ["tag"]
      159 GETIMPORT                        R18 K55 [UDim2.fromOffset]
      161 LOADN                            R19 44
      162 LOADN                            R20 0
      163 CALL                             R18 2 1
      164 SETTABLEKS                       R18 R17 K50 ["Size"]
      166 DUPTABLE                         R18 K59 [{"Title", "Description", "CurrentText"}]
      167 GETUPVAL                         R19 0
      168 GETTABLEKS                       R19 R19 K2 ["createElement"]
      170 GETUPVAL                         R20 2
      171 DUPTABLE                         R21 K60 [{"Text", "tag"}]
      172 LOADK                            R22 K61 ["Keyboard-Aware Popover"]
      173 SETTABLEKS                       R22 R21 K9 ["Text"]
      175 LOADK                            R22 K62 ["auto-xy text-title-medium content-emphasis"]
      176 SETTABLEKS                       R22 R21 K3 ["tag"]
      178 CALL                             R19 2 1
      179 SETTABLEKS                       R19 R18 K56 ["Title"]
      181 GETUPVAL                         R19 0
      182 GETTABLEKS                       R19 R19 K2 ["createElement"]
      184 GETUPVAL                         R20 2
      185 DUPTABLE                         R21 K60 [{"Text", "tag"}]
      186 LOADK                            R22 K63 ["This popover should avoid the on-screen keyboard on touch devices."]
      187 SETTABLEKS                       R22 R21 K9 ["Text"]
      189 LOADK                            R22 K64 ["auto-xy text-body-small"]
      190 SETTABLEKS                       R22 R21 K3 ["tag"]
      192 CALL                             R19 2 1
      193 SETTABLEKS                       R19 R18 K57 ["Description"]
      195 GETUPVAL                         R19 0
      196 GETTABLEKS                       R19 R19 K2 ["createElement"]
      198 GETUPVAL                         R20 2
      199 DUPTABLE                         R21 K60 [{"Text", "tag"}]
      200 LOADK                            R23 K65 ["Current input: \"%*\""]
      201 MOVE                             R25 R2
      202 NAMECALL                         R23 R23 K66 ["format"]
      204 CALL                             R23 2 1
      205 MOVE                             R22 R23
      206 SETTABLEKS                       R22 R21 K9 ["Text"]
      208 LOADK                            R22 K64 ["auto-xy text-body-small"]
      209 SETTABLEKS                       R22 R21 K3 ["tag"]
      211 CALL                             R19 2 1
      212 SETTABLEKS                       R19 R18 K58 ["CurrentText"]
      214 CALL                             R15 3 -1
      215 CALL                             R12 -1 1
      216 SETTABLEKS                       R12 R11 K23 ["Content"]
      218 CALL                             R8 3 1
      219 SETTABLEKS                       R8 R7 K7 ["Popover"]
      221 CALL                             R4 3 -1
      222 RETURN                           R4 -1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETIMPORT                        R4 K3 [Vector2.new]
        5 MOVE                             R5 R0
        6 MOVE                             R6 R1
        7 CALL                             R4 2 -1
        8 NAMECALL                         R2 R2 K4 ["SetPosition"]
       10 CALL                             R2 -1 0
       11 GETUPVAL                         R2 1
       12 LOADB                            R3 1
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["current"]
        9 GETTABLEKS                       R0 R0 K1 ["MouseMoved"]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 NAMECALL                         R0 R0 K2 ["Connect"]
       16 CALL                             R0 2 1
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K0 ["current"]
       20 GETTABLEKS                       R1 R1 K3 ["MouseLeave"]
       22 NEWCLOSURE                       R3 P1
       23 CAPTURE                          UPVAL U2
       24 NAMECALL                         R1 R1 K2 ["Connect"]
       26 CALL                             R1 2 1
       27 NEWCLOSURE                       R2 P2
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R1
       30 RETURN                           R2 1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 1
        6 GETIMPORT                        R4 K3 [Vector2.zero]
        8 CALL                             R3 1 1
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K4 ["useRef"]
       12 LOADNIL                          R5
       13 CALL                             R4 1 1
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K5 ["useEffect"]
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          VAL R4
       19 CAPTURE                          VAL R3
       20 CAPTURE                          VAL R2
       21 NEWTABLE                         R7 0 0
       23 CALL                             R5 2 0
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K6 ["createElement"]
       27 GETUPVAL                         R6 2
       28 DUPTABLE                         R7 K9 [{"tag", "ref"}]
       29 LOADK                            R8 K10 ["row align-x-center align-y-center size-full-3000 bg-surface-200"]
       30 SETTABLEKS                       R8 R7 K7 ["tag"]
       32 SETTABLEKS                       R4 R7 K8 ["ref"]
       34 DUPTABLE                         R8 K13 [{"Text", "Popover"}]
       35 GETUPVAL                         R9 0
       36 GETTABLEKS                       R9 R9 K6 ["createElement"]
       38 GETUPVAL                         R10 3
       39 DUPTABLE                         R11 K14 [{"Text", "tag"}]
       40 LOADK                            R12 K15 ["Move the mouse over this area to see a tooltip"]
       41 SETTABLEKS                       R12 R11 K11 ["Text"]
       43 LOADK                            R12 K16 ["text-align-x-center"]
       44 SETTABLEKS                       R12 R11 K7 ["tag"]
       46 CALL                             R9 2 1
       47 SETTABLEKS                       R9 R8 K11 ["Text"]
       49 GETUPVAL                         R9 0
       50 GETTABLEKS                       R9 R9 K6 ["createElement"]
       52 GETUPVAL                         R10 4
       53 GETTABLEKS                       R10 R10 K17 ["Root"]
       55 DUPTABLE                         R11 K19 [{"isOpen"}]
       56 SETTABLEKS                       R1 R11 K18 ["isOpen"]
       58 DUPTABLE                         R12 K22 [{"Anchor", "Content"}]
       59 GETUPVAL                         R13 0
       60 GETTABLEKS                       R13 R13 K6 ["createElement"]
       62 GETUPVAL                         R14 4
       63 GETTABLEKS                       R14 R14 K20 ["Anchor"]
       65 DUPTABLE                         R15 K24 [{"anchorRef"}]
       66 SETTABLEKS                       R3 R15 K23 ["anchorRef"]
       68 CALL                             R13 2 1
       69 SETTABLEKS                       R13 R12 K20 ["Anchor"]
       71 GETUPVAL                         R13 0
       72 GETTABLEKS                       R13 R13 K6 ["createElement"]
       74 GETUPVAL                         R14 4
       75 GETTABLEKS                       R14 R14 K21 ["Content"]
       77 DUPTABLE                         R15 K27 [{"align", "side"}]
       78 GETTABLEKS                       R16 R0 K28 ["controls"]
       80 GETTABLEKS                       R16 R16 K25 ["align"]
       82 SETTABLEKS                       R16 R15 K25 ["align"]
       84 GETTABLEKS                       R16 R0 K28 ["controls"]
       86 GETTABLEKS                       R16 R16 K26 ["side"]
       88 SETTABLEKS                       R16 R15 K26 ["side"]
       90 GETUPVAL                         R16 0
       91 GETTABLEKS                       R16 R16 K6 ["createElement"]
       93 GETUPVAL                         R17 2
       94 DUPTABLE                         R18 K29 [{"tag"}]
       95 LOADK                            R19 K30 ["col gap-small auto-xy padding-medium"]
       96 SETTABLEKS                       R19 R18 K7 ["tag"]
       98 DUPTABLE                         R19 K32 [{"Title"}]
       99 GETUPVAL                         R20 0
      100 GETTABLEKS                       R20 R20 K6 ["createElement"]
      102 GETUPVAL                         R21 3
      103 DUPTABLE                         R22 K14 [{"Text", "tag"}]
      104 LOADK                            R23 K33 ["Can't close unless you are in the area"]
      105 SETTABLEKS                       R23 R22 K11 ["Text"]
      107 LOADK                            R23 K34 ["auto-xy text-title-medium content-emphasis"]
      108 SETTABLEKS                       R23 R22 K7 ["tag"]
      110 CALL                             R20 2 1
      111 SETTABLEKS                       R20 R19 K31 ["Title"]
      113 CALL                             R16 3 -1
      114 CALL                             R13 -1 1
      115 SETTABLEKS                       R13 R12 K21 ["Content"]
      117 CALL                             R9 3 1
      118 SETTABLEKS                       R9 R8 K12 ["Popover"]
      120 CALL                             R5 3 -1
      121 RETURN                           R5 -1

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETIMPORT                        R4 K3 [Vector2.new]
        5 MOVE                             R5 R0
        6 MOVE                             R6 R1
        7 CALL                             R4 2 -1
        8 NAMECALL                         R2 R2 K4 ["SetPosition"]
       10 CALL                             R2 -1 0
       11 GETUPVAL                         R2 1
       12 LOADB                            R3 1
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["current"]
        9 GETTABLEKS                       R0 R0 K1 ["MouseButton2Up"]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 NAMECALL                         R0 R0 K2 ["Connect"]
       16 CALL                             R0 2 1
       17 NEWCLOSURE                       R1 P1
       18 CAPTURE                          VAL R0
       19 RETURN                           R1 1

PROTO_24:
        0 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 1
        6 GETIMPORT                        R4 K3 [Vector2.zero]
        8 CALL                             R3 1 1
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K4 ["useRef"]
       12 LOADNIL                          R5
       13 CALL                             R4 1 1
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K5 ["useEffect"]
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          VAL R4
       19 CAPTURE                          VAL R3
       20 CAPTURE                          VAL R2
       21 NEWTABLE                         R7 0 0
       23 CALL                             R5 2 0
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K6 ["createElement"]
       27 GETUPVAL                         R6 2
       28 DUPTABLE                         R7 K11 [{"tag", "stateLayer", "onActivated", "ref"}]
       29 LOADK                            R8 K12 ["align-x-center align-y-center size-full-3000 bg-surface-200"]
       30 SETTABLEKS                       R8 R7 K7 ["tag"]
       32 DUPTABLE                         R8 K14 [{"affordance"}]
       33 GETUPVAL                         R9 3
       34 GETTABLEKS                       R9 R9 K15 ["None"]
       36 SETTABLEKS                       R9 R8 K13 ["affordance"]
       38 SETTABLEKS                       R8 R7 K8 ["stateLayer"]
       40 DUPCLOSURE                       R8 K16 [PROTO_24]
       41 SETTABLEKS                       R8 R7 K9 ["onActivated"]
       43 SETTABLEKS                       R4 R7 K10 ["ref"]
       45 DUPTABLE                         R8 K19 [{"Text", "Popover"}]
       46 GETUPVAL                         R9 0
       47 GETTABLEKS                       R9 R9 K6 ["createElement"]
       49 GETUPVAL                         R10 4
       50 DUPTABLE                         R11 K20 [{"Text", "tag"}]
       51 LOADK                            R12 K21 ["Right-click on this area to open the context menu."]
       52 SETTABLEKS                       R12 R11 K17 ["Text"]
       54 LOADK                            R12 K22 ["size-full-full text-align-x-center"]
       55 SETTABLEKS                       R12 R11 K7 ["tag"]
       57 CALL                             R9 2 1
       58 SETTABLEKS                       R9 R8 K17 ["Text"]
       60 GETUPVAL                         R9 0
       61 GETTABLEKS                       R9 R9 K6 ["createElement"]
       63 GETUPVAL                         R10 5
       64 GETTABLEKS                       R10 R10 K23 ["Root"]
       66 DUPTABLE                         R11 K25 [{"isOpen"}]
       67 SETTABLEKS                       R1 R11 K24 ["isOpen"]
       69 DUPTABLE                         R12 K28 [{"Anchor", "Content"}]
       70 GETUPVAL                         R13 0
       71 GETTABLEKS                       R13 R13 K6 ["createElement"]
       73 GETUPVAL                         R14 5
       74 GETTABLEKS                       R14 R14 K26 ["Anchor"]
       76 DUPTABLE                         R15 K30 [{"anchorRef"}]
       77 SETTABLEKS                       R3 R15 K29 ["anchorRef"]
       79 CALL                             R13 2 1
       80 SETTABLEKS                       R13 R12 K26 ["Anchor"]
       82 GETUPVAL                         R13 0
       83 GETTABLEKS                       R13 R13 K6 ["createElement"]
       85 GETUPVAL                         R14 5
       86 GETTABLEKS                       R14 R14 K27 ["Content"]
       88 DUPTABLE                         R15 K34 [{"align", "side", "onPressedOutside"}]
       89 GETTABLEKS                       R16 R0 K35 ["controls"]
       91 GETTABLEKS                       R16 R16 K31 ["align"]
       93 SETTABLEKS                       R16 R15 K31 ["align"]
       95 GETTABLEKS                       R16 R0 K35 ["controls"]
       97 GETTABLEKS                       R16 R16 K32 ["side"]
       99 SETTABLEKS                       R16 R15 K32 ["side"]
      101 NEWCLOSURE                       R16 P2
      102 CAPTURE                          VAL R2
      103 SETTABLEKS                       R16 R15 K33 ["onPressedOutside"]
      105 GETUPVAL                         R16 0
      106 GETTABLEKS                       R16 R16 K6 ["createElement"]
      108 GETUPVAL                         R17 2
      109 DUPTABLE                         R18 K36 [{"tag"}]
      110 LOADK                            R19 K37 ["col gap-small auto-xy padding-medium"]
      111 SETTABLEKS                       R19 R18 K7 ["tag"]
      113 DUPTABLE                         R19 K40 [{"Text1", "Text2"}]
      114 GETUPVAL                         R20 0
      115 GETTABLEKS                       R20 R20 K6 ["createElement"]
      117 GETUPVAL                         R21 4
      118 DUPTABLE                         R22 K20 [{"Text", "tag"}]
      119 LOADK                            R23 K41 ["Context Menu"]
      120 SETTABLEKS                       R23 R22 K17 ["Text"]
      122 LOADK                            R23 K42 ["auto-xy text-title-medium content-emphasis"]
      123 SETTABLEKS                       R23 R22 K7 ["tag"]
      125 CALL                             R20 2 1
      126 SETTABLEKS                       R20 R19 K38 ["Text1"]
      128 GETUPVAL                         R20 0
      129 GETTABLEKS                       R20 R20 K6 ["createElement"]
      131 GETUPVAL                         R21 4
      132 DUPTABLE                         R22 K20 [{"Text", "tag"}]
      133 LOADK                            R23 K43 ["Right-click functionality enabled."]
      134 SETTABLEKS                       R23 R22 K17 ["Text"]
      136 LOADK                            R23 K44 ["auto-xy text-body-small"]
      137 SETTABLEKS                       R23 R22 K7 ["tag"]
      139 CALL                             R20 2 1
      140 SETTABLEKS                       R20 R19 K39 ["Text2"]
      142 CALL                             R16 3 -1
      143 CALL                             R13 -1 1
      144 SETTABLEKS                       R13 R12 K27 ["Content"]
      146 CALL                             R9 3 1
      147 SETTABLEKS                       R9 R8 K18 ["Popover"]
      149 CALL                             R5 3 -1
      150 RETURN                           R5 -1

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
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Button"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Enums"]
       30 GETTABLEKS                       R6 R6 K12 ["InputSize"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Components"]
       37 GETTABLEKS                       R7 R7 K13 ["Popover"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K11 ["Enums"]
       44 GETTABLEKS                       R8 R8 K14 ["PopoverAlign"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K11 ["Enums"]
       51 GETTABLEKS                       R9 R9 K15 ["PopoverSide"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K11 ["Enums"]
       58 GETTABLEKS                       R10 R10 K16 ["Radius"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K11 ["Enums"]
       65 GETTABLEKS                       R11 R11 K17 ["StateLayerAffordance"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R12 R0 K9 ["Components"]
       72 GETTABLEKS                       R12 R12 K18 ["Text"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [require]
       77 GETTABLEKS                       R13 R0 K9 ["Components"]
       79 GETTABLEKS                       R13 R13 K19 ["TextInput"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K6 [require]
       84 GETTABLEKS                       R14 R0 K9 ["Components"]
       86 GETTABLEKS                       R14 R14 K20 ["Types"]
       88 CALL                             R13 1 1
       89 GETIMPORT                        R14 K6 [require]
       91 GETTABLEKS                       R15 R0 K9 ["Components"]
       93 GETTABLEKS                       R15 R15 K21 ["View"]
       95 CALL                             R14 1 1
       96 GETIMPORT                        R15 K6 [require]
       98 GETTABLEKS                       R16 R0 K9 ["Components"]
      100 GETTABLEKS                       R16 R16 K13 ["Popover"]
      102 GETTABLEKS                       R16 R16 K22 ["useMeasurableRef"]
      104 CALL                             R15 1 1
      105 GETIMPORT                        R16 K6 [require]
      107 GETTABLEKS                       R17 R0 K23 ["Providers"]
      109 GETTABLEKS                       R17 R17 K24 ["Style"]
      111 GETTABLEKS                       R17 R17 K25 ["useTokens"]
      113 CALL                             R16 1 1
      114 DUPCLOSURE                       R17 K26 [PROTO_0]
      115 CAPTURE                          VAL R16
      116 NEWTABLE                         R18 0 4
      118 LOADK                            R19 K27 ["Default"]
      119 LOADK                            R20 K28 ["Surface_0"]
      120 LOADK                            R21 K29 ["Surface_200"]
      121 LOADK                            R22 K30 ["ActionAlert"]
      122 SETLIST                          R18 R19 4 [1]
      124 DUPTABLE                         R19 K34 [{"summary", "stories", "controls"}]
      125 LOADK                            R20 K13 ["Popover"]
      126 SETTABLEKS                       R20 R19 K31 ["summary"]
      128 DUPTABLE                         R20 K41 [{"Basic", "ClickOutside", "AnchorRef", "KeyboardAware", "MousePositionTooltip", "ContextMenu"}]
      129 DUPTABLE                         R21 K44 [{"name", "story"}]
      130 LOADK                            R22 K35 ["Basic"]
      131 SETTABLEKS                       R22 R21 K42 ["name"]
      133 DUPCLOSURE                       R22 K45 [PROTO_2]
      134 CAPTURE                          VAL R16
      135 CAPTURE                          VAL R3
      136 CAPTURE                          VAL R14
      137 CAPTURE                          VAL R6
      138 CAPTURE                          VAL R11
      139 CAPTURE                          VAL R4
      140 CAPTURE                          VAL R5
      141 SETTABLEKS                       R22 R21 K43 ["story"]
      143 SETTABLEKS                       R21 R20 K35 ["Basic"]
      145 DUPTABLE                         R21 K44 [{"name", "story"}]
      146 LOADK                            R22 K46 ["Click Outside"]
      147 SETTABLEKS                       R22 R21 K42 ["name"]
      149 DUPCLOSURE                       R22 K47 [PROTO_5]
      150 CAPTURE                          VAL R3
      151 CAPTURE                          VAL R14
      152 CAPTURE                          VAL R6
      153 CAPTURE                          VAL R11
      154 CAPTURE                          VAL R4
      155 CAPTURE                          VAL R5
      156 SETTABLEKS                       R22 R21 K43 ["story"]
      158 SETTABLEKS                       R21 R20 K36 ["ClickOutside"]
      160 DUPTABLE                         R21 K44 [{"name", "story"}]
      161 LOADK                            R22 K48 ["Anchor Reference"]
      162 SETTABLEKS                       R22 R21 K42 ["name"]
      164 DUPCLOSURE                       R22 K49 [PROTO_8]
      165 CAPTURE                          VAL R3
      166 CAPTURE                          VAL R14
      167 CAPTURE                          VAL R4
      168 CAPTURE                          VAL R5
      169 CAPTURE                          VAL R6
      170 CAPTURE                          VAL R11
      171 SETTABLEKS                       R22 R21 K43 ["story"]
      173 SETTABLEKS                       R21 R20 K37 ["AnchorRef"]
      175 DUPTABLE                         R21 K44 [{"name", "story"}]
      176 LOADK                            R22 K50 ["Keyboard Aware Input"]
      177 SETTABLEKS                       R22 R21 K42 ["name"]
      179 DUPCLOSURE                       R22 K51 [PROTO_15]
      180 CAPTURE                          VAL R3
      181 CAPTURE                          VAL R14
      182 CAPTURE                          VAL R11
      183 CAPTURE                          VAL R6
      184 CAPTURE                          VAL R12
      185 CAPTURE                          VAL R5
      186 CAPTURE                          VAL R4
      187 CAPTURE                          VAL R8
      188 CAPTURE                          VAL R7
      189 SETTABLEKS                       R22 R21 K43 ["story"]
      191 SETTABLEKS                       R21 R20 K38 ["KeyboardAware"]
      193 DUPTABLE                         R21 K44 [{"name", "story"}]
      194 LOADK                            R22 K39 ["MousePositionTooltip"]
      195 SETTABLEKS                       R22 R21 K42 ["name"]
      197 DUPCLOSURE                       R22 K52 [PROTO_20]
      198 CAPTURE                          VAL R3
      199 CAPTURE                          VAL R15
      200 CAPTURE                          VAL R14
      201 CAPTURE                          VAL R11
      202 CAPTURE                          VAL R6
      203 SETTABLEKS                       R22 R21 K43 ["story"]
      205 SETTABLEKS                       R21 R20 K39 ["MousePositionTooltip"]
      207 DUPTABLE                         R21 K44 [{"name", "story"}]
      208 LOADK                            R22 K53 ["Context menu"]
      209 SETTABLEKS                       R22 R21 K42 ["name"]
      211 DUPCLOSURE                       R22 K54 [PROTO_26]
      212 CAPTURE                          VAL R3
      213 CAPTURE                          VAL R15
      214 CAPTURE                          VAL R14
      215 CAPTURE                          VAL R10
      216 CAPTURE                          VAL R11
      217 CAPTURE                          VAL R6
      218 SETTABLEKS                       R22 R21 K43 ["story"]
      220 SETTABLEKS                       R21 R20 K40 ["ContextMenu"]
      222 SETTABLEKS                       R20 R19 K32 ["stories"]
      224 DUPTABLE                         R20 K59 [{"side", "align", "radius", "backgroundStyle"}]
      225 GETTABLEKS                       R21 R2 K60 ["values"]
      227 MOVE                             R22 R8
      228 CALL                             R21 1 1
      229 SETTABLEKS                       R21 R20 K55 ["side"]
      231 GETTABLEKS                       R21 R2 K60 ["values"]
      233 MOVE                             R22 R7
      234 CALL                             R21 1 1
      235 SETTABLEKS                       R21 R20 K56 ["align"]
      237 NEWTABLE                         R21 0 3
      239 GETTABLEKS                       R22 R9 K61 ["Small"]
      241 GETTABLEKS                       R23 R9 K62 ["Medium"]
      243 GETTABLEKS                       R24 R9 K63 ["Circle"]
      245 SETLIST                          R21 R22 3 [1]
      247 SETTABLEKS                       R21 R20 K57 ["radius"]
      249 SETTABLEKS                       R18 R20 K58 ["backgroundStyle"]
      251 SETTABLEKS                       R20 R19 K33 ["controls"]
      253 RETURN                           R19 1
