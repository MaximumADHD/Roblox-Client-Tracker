PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 DUPTABLE                         R3 K4 [{"Default", "Surface_0", "Surface_200", "ActionAlert"}]
        3 LOADNIL                          R4
        4 SETTABLEKS                       R4 R3 K0 ["Default"]
        6 GETTABLEKS                       R6 R1 K5 ["Color"]
        8 GETTABLEKS                       R5 R6 K6 ["Surface"]
       10 GETTABLEKS                       R4 R5 K1 ["Surface_0"]
       12 SETTABLEKS                       R4 R3 K1 ["Surface_0"]
       14 GETTABLEKS                       R6 R1 K5 ["Color"]
       16 GETTABLEKS                       R5 R6 K6 ["Surface"]
       18 GETTABLEKS                       R4 R5 K2 ["Surface_200"]
       20 SETTABLEKS                       R4 R3 K2 ["Surface_200"]
       22 GETTABLEKS                       R6 R1 K5 ["Color"]
       24 GETTABLEKS                       R5 R6 K3 ["ActionAlert"]
       26 GETTABLEKS                       R4 R5 K7 ["Background"]
       28 SETTABLEKS                       R4 R3 K3 ["ActionAlert"]
       30 GETTABLE                         R2 R3 R0
       31 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Button activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["controls"]
        2 GETTABLEKS                       R2 R3 K1 ["backgroundStyle"]
        4 GETUPVAL                         R3 0
        5 CALL                             R3 0 1
        6 DUPTABLE                         R4 K6 [{"Default", "Surface_0", "Surface_200", "ActionAlert"}]
        7 LOADNIL                          R5
        8 SETTABLEKS                       R5 R4 K2 ["Default"]
       10 GETTABLEKS                       R7 R3 K7 ["Color"]
       12 GETTABLEKS                       R6 R7 K8 ["Surface"]
       14 GETTABLEKS                       R5 R6 K3 ["Surface_0"]
       16 SETTABLEKS                       R5 R4 K3 ["Surface_0"]
       18 GETTABLEKS                       R7 R3 K7 ["Color"]
       20 GETTABLEKS                       R6 R7 K8 ["Surface"]
       22 GETTABLEKS                       R5 R6 K4 ["Surface_200"]
       24 SETTABLEKS                       R5 R4 K4 ["Surface_200"]
       26 GETTABLEKS                       R7 R3 K7 ["Color"]
       28 GETTABLEKS                       R6 R7 K5 ["ActionAlert"]
       30 GETTABLEKS                       R5 R6 K9 ["Background"]
       32 SETTABLEKS                       R5 R4 K5 ["ActionAlert"]
       34 GETTABLE                         R1 R4 R2
       35 GETUPVAL                         R3 1
       36 GETTABLEKS                       R2 R3 K10 ["createElement"]
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
       53 GETUPVAL                         R7 1
       54 GETTABLEKS                       R6 R7 K10 ["createElement"]
       56 GETUPVAL                         R8 3
       57 GETTABLEKS                       R7 R8 K20 ["Root"]
       59 DUPTABLE                         R8 K22 [{"isOpen"}]
       60 LOADB                            R9 1
       61 SETTABLEKS                       R9 R8 K21 ["isOpen"]
       63 DUPTABLE                         R9 K25 [{"Anchor", "Content"}]
       64 GETUPVAL                         R11 1
       65 GETTABLEKS                       R10 R11 K10 ["createElement"]
       67 GETUPVAL                         R12 3
       68 GETTABLEKS                       R11 R12 K23 ["Anchor"]
       70 LOADNIL                          R12
       71 GETUPVAL                         R14 1
       72 GETTABLEKS                       R13 R14 K10 ["createElement"]
       74 GETUPVAL                         R14 2
       75 DUPTABLE                         R15 K26 [{"tag"}]
       76 LOADK                            R16 K27 ["bg-surface-100 padding-large auto-xy radius-medium stroke-neutral col gap-large"]
       77 SETTABLEKS                       R16 R15 K12 ["tag"]
       79 DUPTABLE                         R16 K30 [{"Text", "Button"}]
       80 GETUPVAL                         R18 1
       81 GETTABLEKS                       R17 R18 K10 ["createElement"]
       83 GETUPVAL                         R18 4
       84 DUPTABLE                         R19 K31 [{"Text", "tag"}]
       85 LOADK                            R20 K32 ["I am a card"]
       86 SETTABLEKS                       R20 R19 K28 ["Text"]
       88 LOADK                            R20 K33 ["auto-xy text-heading-medium"]
       89 SETTABLEKS                       R20 R19 K12 ["tag"]
       91 CALL                             R17 2 1
       92 SETTABLEKS                       R17 R16 K28 ["Text"]
       94 GETUPVAL                         R18 1
       95 GETTABLEKS                       R17 R18 K10 ["createElement"]
       97 GETUPVAL                         R18 5
       98 DUPTABLE                         R19 K37 [{"text", "size", "onActivated"}]
       99 LOADK                            R20 K38 ["Just a button!"]
      100 SETTABLEKS                       R20 R19 K34 ["text"]
      102 GETUPVAL                         R21 6
      103 GETTABLEKS                       R20 R21 K39 ["Medium"]
      105 SETTABLEKS                       R20 R19 K35 ["size"]
      107 DUPCLOSURE                       R20 K40 [PROTO_1]
      108 SETTABLEKS                       R20 R19 K36 ["onActivated"]
      110 CALL                             R17 2 1
      111 SETTABLEKS                       R17 R16 K29 ["Button"]
      113 CALL                             R13 3 -1
      114 CALL                             R10 -1 1
      115 SETTABLEKS                       R10 R9 K23 ["Anchor"]
      117 GETUPVAL                         R11 1
      118 GETTABLEKS                       R10 R11 K10 ["createElement"]
      120 GETUPVAL                         R12 3
      121 GETTABLEKS                       R11 R12 K24 ["Content"]
      123 DUPTABLE                         R12 K44 [{"align", "side", "backgroundStyle", "radius"}]
      124 GETTABLEKS                       R14 R0 K0 ["controls"]
      126 GETTABLEKS                       R13 R14 K41 ["align"]
      128 SETTABLEKS                       R13 R12 K41 ["align"]
      130 GETTABLEKS                       R14 R0 K0 ["controls"]
      132 GETTABLEKS                       R13 R14 K42 ["side"]
      134 SETTABLEKS                       R13 R12 K42 ["side"]
      136 SETTABLEKS                       R1 R12 K1 ["backgroundStyle"]
      138 GETTABLEKS                       R14 R0 K0 ["controls"]
      140 GETTABLEKS                       R13 R14 K43 ["radius"]
      142 SETTABLEKS                       R13 R12 K43 ["radius"]
      144 GETUPVAL                         R14 1
      145 GETTABLEKS                       R13 R14 K10 ["createElement"]
      147 GETUPVAL                         R14 2
      148 DUPTABLE                         R15 K26 [{"tag"}]
      149 LOADK                            R16 K45 ["col gap-small padding-medium auto-xy"]
      150 SETTABLEKS                       R16 R15 K12 ["tag"]
      152 DUPTABLE                         R16 K48 [{"Title", "Subtitle"}]
      153 GETUPVAL                         R18 1
      154 GETTABLEKS                       R17 R18 K10 ["createElement"]
      156 GETUPVAL                         R18 4
      157 DUPTABLE                         R19 K31 [{"Text", "tag"}]
      158 LOADK                            R20 K49 ["Tooltip Title"]
      159 SETTABLEKS                       R20 R19 K28 ["Text"]
      161 LOADK                            R20 K50 ["auto-xy text-title-medium content-emphasis"]
      162 SETTABLEKS                       R20 R19 K12 ["tag"]
      164 CALL                             R17 2 1
      165 SETTABLEKS                       R17 R16 K46 ["Title"]
      167 GETUPVAL                         R18 1
      168 GETTABLEKS                       R17 R18 K10 ["createElement"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["createElement"]
        8 GETUPVAL                         R4 1
        9 DUPTABLE                         R5 K3 [{"tag"}]
       10 LOADK                            R6 K4 ["row align-x-center align-y-center size-full-0 auto-y"]
       11 SETTABLEKS                       R6 R5 K2 ["tag"]
       13 DUPTABLE                         R6 K6 [{"Popover"}]
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R7 R8 K1 ["createElement"]
       17 GETUPVAL                         R9 2
       18 GETTABLEKS                       R8 R9 K7 ["Root"]
       20 DUPTABLE                         R9 K9 [{"isOpen"}]
       21 SETTABLEKS                       R1 R9 K8 ["isOpen"]
       23 DUPTABLE                         R10 K12 [{"Anchor", "Content"}]
       24 GETUPVAL                         R12 0
       25 GETTABLEKS                       R11 R12 K1 ["createElement"]
       27 GETUPVAL                         R13 2
       28 GETTABLEKS                       R12 R13 K10 ["Anchor"]
       30 LOADNIL                          R13
       31 GETUPVAL                         R15 0
       32 GETTABLEKS                       R14 R15 K1 ["createElement"]
       34 GETUPVAL                         R15 1
       35 DUPTABLE                         R16 K3 [{"tag"}]
       36 LOADK                            R17 K13 ["bg-surface-100 padding-large auto-xy radius-medium stroke-neutral col gap-large"]
       37 SETTABLEKS                       R17 R16 K2 ["tag"]
       39 DUPTABLE                         R17 K16 [{"Text", "Button"}]
       40 GETUPVAL                         R19 0
       41 GETTABLEKS                       R18 R19 K1 ["createElement"]
       43 GETUPVAL                         R19 3
       44 DUPTABLE                         R20 K17 [{"Text", "tag"}]
       45 LOADK                            R21 K18 ["I am a card"]
       46 SETTABLEKS                       R21 R20 K14 ["Text"]
       48 LOADK                            R21 K19 ["auto-xy text-heading-medium"]
       49 SETTABLEKS                       R21 R20 K2 ["tag"]
       51 CALL                             R18 2 1
       52 SETTABLEKS                       R18 R17 K14 ["Text"]
       54 GETUPVAL                         R19 0
       55 GETTABLEKS                       R18 R19 K1 ["createElement"]
       57 GETUPVAL                         R19 4
       58 DUPTABLE                         R20 K23 [{"text", "size", "onActivated"}]
       59 LOADK                            R21 K24 ["Click me to toggle!"]
       60 SETTABLEKS                       R21 R20 K20 ["text"]
       62 GETUPVAL                         R22 5
       63 GETTABLEKS                       R21 R22 K25 ["Medium"]
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
       79 GETUPVAL                         R12 0
       80 GETTABLEKS                       R11 R12 K1 ["createElement"]
       82 GETUPVAL                         R13 2
       83 GETTABLEKS                       R12 R13 K11 ["Content"]
       85 DUPTABLE                         R13 K29 [{"align", "side", "onPressedOutside"}]
       86 GETTABLEKS                       R15 R0 K30 ["controls"]
       88 GETTABLEKS                       R14 R15 K26 ["align"]
       90 SETTABLEKS                       R14 R13 K26 ["align"]
       92 GETTABLEKS                       R15 R0 K30 ["controls"]
       94 GETTABLEKS                       R14 R15 K27 ["side"]
       96 SETTABLEKS                       R14 R13 K27 ["side"]
       98 NEWCLOSURE                       R14 P1
       99 CAPTURE                          VAL R2
      100 SETTABLEKS                       R14 R13 K28 ["onPressedOutside"]
      102 GETUPVAL                         R15 0
      103 GETTABLEKS                       R14 R15 K1 ["createElement"]
      105 GETUPVAL                         R15 1
      106 DUPTABLE                         R16 K3 [{"tag"}]
      107 LOADK                            R17 K31 ["col gap-small padding-medium auto-xy"]
      108 SETTABLEKS                       R17 R16 K2 ["tag"]
      110 DUPTABLE                         R17 K34 [{"Title", "Subtitle"}]
      111 GETUPVAL                         R19 0
      112 GETTABLEKS                       R18 R19 K1 ["createElement"]
      114 GETUPVAL                         R19 3
      115 DUPTABLE                         R20 K17 [{"Text", "tag"}]
      116 LOADK                            R21 K35 ["Click outside example"]
      117 SETTABLEKS                       R21 R20 K14 ["Text"]
      119 LOADK                            R21 K36 ["auto-xy text-title-medium content-emphasis"]
      120 SETTABLEKS                       R21 R20 K2 ["tag"]
      122 CALL                             R18 2 1
      123 SETTABLEKS                       R18 R17 K32 ["Title"]
      125 GETUPVAL                         R19 0
      126 GETTABLEKS                       R18 R19 K1 ["createElement"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["useState"]
        8 LOADB                            R3 0
        9 CALL                             R2 1 2
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K2 ["createElement"]
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
       28 GETUPVAL                         R9 0
       29 GETTABLEKS                       R8 R9 K2 ["createElement"]
       31 GETUPVAL                         R9 2
       32 DUPTABLE                         R10 K17 [{"text", "size", "ref", "onActivated"}]
       33 LOADK                            R11 K18 ["Click me to toggle!"]
       34 SETTABLEKS                       R11 R10 K13 ["text"]
       36 GETUPVAL                         R12 3
       37 GETTABLEKS                       R11 R12 K19 ["Medium"]
       39 SETTABLEKS                       R11 R10 K14 ["size"]
       41 SETTABLEKS                       R1 R10 K15 ["ref"]
       43 NEWCLOSURE                       R11 P0
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R2
       46 SETTABLEKS                       R11 R10 K16 ["onActivated"]
       48 CALL                             R8 2 1
       49 SETTABLEKS                       R8 R7 K10 ["Button"]
       51 GETUPVAL                         R9 0
       52 GETTABLEKS                       R8 R9 K2 ["createElement"]
       54 GETUPVAL                         R10 4
       55 GETTABLEKS                       R9 R10 K20 ["Root"]
       57 DUPTABLE                         R10 K22 [{"isOpen"}]
       58 SETTABLEKS                       R2 R10 K21 ["isOpen"]
       60 DUPTABLE                         R11 K25 [{"Anchor", "Content"}]
       61 GETUPVAL                         R13 0
       62 GETTABLEKS                       R12 R13 K2 ["createElement"]
       64 GETUPVAL                         R14 4
       65 GETTABLEKS                       R13 R14 K23 ["Anchor"]
       67 DUPTABLE                         R14 K27 [{"anchorRef"}]
       68 SETTABLEKS                       R1 R14 K26 ["anchorRef"]
       70 CALL                             R12 2 1
       71 SETTABLEKS                       R12 R11 K23 ["Anchor"]
       73 GETUPVAL                         R13 0
       74 GETTABLEKS                       R12 R13 K2 ["createElement"]
       76 GETUPVAL                         R14 4
       77 GETTABLEKS                       R13 R14 K24 ["Content"]
       79 DUPTABLE                         R14 K31 [{"align", "side", "onPressedOutside"}]
       80 GETTABLEKS                       R16 R0 K32 ["controls"]
       82 GETTABLEKS                       R15 R16 K28 ["align"]
       84 SETTABLEKS                       R15 R14 K28 ["align"]
       86 GETTABLEKS                       R16 R0 K32 ["controls"]
       88 GETTABLEKS                       R15 R16 K29 ["side"]
       90 SETTABLEKS                       R15 R14 K29 ["side"]
       92 NEWCLOSURE                       R15 P1
       93 CAPTURE                          VAL R3
       94 SETTABLEKS                       R15 R14 K30 ["onPressedOutside"]
       96 GETUPVAL                         R16 0
       97 GETTABLEKS                       R15 R16 K2 ["createElement"]
       99 GETUPVAL                         R16 1
      100 DUPTABLE                         R17 K33 [{"tag"}]
      101 LOADK                            R18 K34 ["col gap-small padding-medium auto-xy"]
      102 SETTABLEKS                       R18 R17 K4 ["tag"]
      104 DUPTABLE                         R18 K37 [{"Title", "Subtitle"}]
      105 GETUPVAL                         R20 0
      106 GETTABLEKS                       R19 R20 K2 ["createElement"]
      108 GETUPVAL                         R20 5
      109 DUPTABLE                         R21 K39 [{"Text", "tag"}]
      110 LOADK                            R22 K40 ["Anchor Reference Example"]
      111 SETTABLEKS                       R22 R21 K38 ["Text"]
      113 LOADK                            R22 K41 ["auto-xy text-title-medium content-emphasis"]
      114 SETTABLEKS                       R22 R21 K4 ["tag"]
      116 CALL                             R19 2 1
      117 SETTABLEKS                       R19 R18 K35 ["Title"]
      119 GETUPVAL                         R20 0
      120 GETTABLEKS                       R19 R20 K2 ["createElement"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["controls"]
        3 GETTABLEKS                       R2 R3 K1 ["keyboardAware"]
        5 SETTABLEKS                       R2 R1 K2 ["FoundationPopoverOnScreenKeyboard"]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K3 ["useState"]
       10 LOADB                            R2 0
       11 CALL                             R1 1 2
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K3 ["useState"]
       15 LOADK                            R4 K4 [""]
       16 CALL                             R3 1 2
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R5 R6 K5 ["createElement"]
       20 GETUPVAL                         R6 2
       21 DUPTABLE                         R7 K7 [{"tag"}]
       22 LOADK                            R8 K8 ["col align-x-center align-y-center size-full-0 auto-y gap-large"]
       23 SETTABLEKS                       R8 R7 K6 ["tag"]
       25 DUPTABLE                         R8 K11 [{"Instructions", "Popover"}]
       26 GETUPVAL                         R10 1
       27 GETTABLEKS                       R9 R10 K5 ["createElement"]
       29 GETUPVAL                         R10 3
       30 DUPTABLE                         R11 K14 [{"Text", "tag", "padding"}]
       31 LOADK                            R12 K15 ["Focus the input field to test keyboard-aware positioning"]
       32 SETTABLEKS                       R12 R11 K12 ["Text"]
       34 LOADK                            R12 K16 ["auto-xy text-body-medium content-emphasis"]
       35 SETTABLEKS                       R12 R11 K6 ["tag"]
       37 DUPTABLE                         R12 K18 [{"bottom"}]
       38 GETIMPORT                        R13 K21 [UDim.new]
       40 LOADN                            R14 0
       41 LOADN                            R15 244
       42 CALL                             R13 2 1
       43 SETTABLEKS                       R13 R12 K17 ["bottom"]
       45 SETTABLEKS                       R12 R11 K13 ["padding"]
       47 CALL                             R9 2 1
       48 SETTABLEKS                       R9 R8 K9 ["Instructions"]
       50 GETUPVAL                         R10 1
       51 GETTABLEKS                       R9 R10 K5 ["createElement"]
       53 GETUPVAL                         R11 4
       54 GETTABLEKS                       R10 R11 K22 ["Root"]
       56 DUPTABLE                         R11 K24 [{"isOpen"}]
       57 SETTABLEKS                       R1 R11 K23 ["isOpen"]
       59 DUPTABLE                         R12 K27 [{"Anchor", "Content"}]
       60 GETUPVAL                         R14 1
       61 GETTABLEKS                       R13 R14 K5 ["createElement"]
       63 GETUPVAL                         R15 4
       64 GETTABLEKS                       R14 R15 K25 ["Anchor"]
       66 LOADNIL                          R15
       67 GETUPVAL                         R17 1
       68 GETTABLEKS                       R16 R17 K5 ["createElement"]
       70 GETUPVAL                         R17 2
       71 DUPTABLE                         R18 K7 [{"tag"}]
       72 LOADK                            R19 K28 ["col gap-medium auto-xy"]
       73 SETTABLEKS                       R19 R18 K6 ["tag"]
       75 DUPTABLE                         R19 K31 [{"TextInputField", "ToggleButton"}]
       76 GETUPVAL                         R21 1
       77 GETTABLEKS                       R20 R21 K5 ["createElement"]
       79 GETUPVAL                         R21 5
       80 DUPTABLE                         R22 K39 [{"size", "label", "placeholder", "text", "onChanged", "onFocusGained", "onFocusLost"}]
       81 GETUPVAL                         R24 6
       82 GETTABLEKS                       R23 R24 K40 ["Medium"]
       84 SETTABLEKS                       R23 R22 K32 ["size"]
       86 LOADK                            R23 K41 ["Test Input"]
       87 SETTABLEKS                       R23 R22 K33 ["label"]
       89 LOADK                            R23 K42 ["Type something here..."]
       90 SETTABLEKS                       R23 R22 K34 ["placeholder"]
       92 SETTABLEKS                       R3 R22 K35 ["text"]
       94 NEWCLOSURE                       R23 P0
       95 CAPTURE                          VAL R4
       96 SETTABLEKS                       R23 R22 K36 ["onChanged"]
       98 NEWCLOSURE                       R23 P1
       99 CAPTURE                          VAL R2
      100 SETTABLEKS                       R23 R22 K37 ["onFocusGained"]
      102 NEWCLOSURE                       R23 P2
      103 CAPTURE                          VAL R2
      104 SETTABLEKS                       R23 R22 K38 ["onFocusLost"]
      106 CALL                             R20 2 1
      107 SETTABLEKS                       R20 R19 K29 ["TextInputField"]
      109 GETUPVAL                         R21 1
      110 GETTABLEKS                       R20 R21 K5 ["createElement"]
      112 GETUPVAL                         R21 7
      113 DUPTABLE                         R22 K44 [{"text", "size", "onActivated"}]
      114 JUMPIFNOT                        R1 ; [+2]
      115 LOADK                            R23 K45 ["Close Popover"]
      116 JUMP                             ; [+1]
      117 LOADK                            R23 K46 ["Open Popover"]
      118 SETTABLEKS                       R23 R22 K35 ["text"]
      120 GETUPVAL                         R24 6
      121 GETTABLEKS                       R23 R24 K40 ["Medium"]
      123 SETTABLEKS                       R23 R22 K32 ["size"]
      125 NEWCLOSURE                       R23 P3
      126 CAPTURE                          VAL R2
      127 CAPTURE                          VAL R1
      128 SETTABLEKS                       R23 R22 K43 ["onActivated"]
      130 CALL                             R20 2 1
      131 SETTABLEKS                       R20 R19 K30 ["ToggleButton"]
      133 CALL                             R16 3 -1
      134 CALL                             R13 -1 1
      135 SETTABLEKS                       R13 R12 K25 ["Anchor"]
      137 GETUPVAL                         R14 1
      138 GETTABLEKS                       R13 R14 K5 ["createElement"]
      140 GETUPVAL                         R15 4
      141 GETTABLEKS                       R14 R15 K26 ["Content"]
      143 DUPTABLE                         R15 K50 [{"side", "align", "onPressedOutside"}]
      144 GETUPVAL                         R17 8
      145 GETTABLEKS                       R16 R17 K51 ["Bottom"]
      147 SETTABLEKS                       R16 R15 K47 ["side"]
      149 GETUPVAL                         R17 9
      150 GETTABLEKS                       R16 R17 K52 ["Start"]
      152 SETTABLEKS                       R16 R15 K48 ["align"]
      154 NEWCLOSURE                       R16 P4
      155 CAPTURE                          VAL R2
      156 SETTABLEKS                       R16 R15 K49 ["onPressedOutside"]
      158 GETUPVAL                         R17 1
      159 GETTABLEKS                       R16 R17 K5 ["createElement"]
      161 GETUPVAL                         R17 2
      162 DUPTABLE                         R18 K54 [{"tag", "Size"}]
      163 LOADK                            R19 K55 ["col gap-small padding-medium auto-xy"]
      164 SETTABLEKS                       R19 R18 K6 ["tag"]
      166 GETIMPORT                        R19 K58 [UDim2.fromOffset]
      168 LOADN                            R20 44
      169 LOADN                            R21 0
      170 CALL                             R19 2 1
      171 SETTABLEKS                       R19 R18 K53 ["Size"]
      173 DUPTABLE                         R19 K62 [{"Title", "Description", "CurrentText"}]
      174 GETUPVAL                         R21 1
      175 GETTABLEKS                       R20 R21 K5 ["createElement"]
      177 GETUPVAL                         R21 3
      178 DUPTABLE                         R22 K63 [{"Text", "tag"}]
      179 LOADK                            R23 K64 ["Keyboard-Aware Popover"]
      180 SETTABLEKS                       R23 R22 K12 ["Text"]
      182 LOADK                            R23 K65 ["auto-xy text-title-medium content-emphasis"]
      183 SETTABLEKS                       R23 R22 K6 ["tag"]
      185 CALL                             R20 2 1
      186 SETTABLEKS                       R20 R19 K59 ["Title"]
      188 GETUPVAL                         R21 1
      189 GETTABLEKS                       R20 R21 K5 ["createElement"]
      191 GETUPVAL                         R21 3
      192 DUPTABLE                         R22 K63 [{"Text", "tag"}]
      193 LOADK                            R23 K66 ["This popover should avoid the on-screen keyboard on touch devices."]
      194 SETTABLEKS                       R23 R22 K12 ["Text"]
      196 LOADK                            R23 K67 ["auto-xy text-body-small"]
      197 SETTABLEKS                       R23 R22 K6 ["tag"]
      199 CALL                             R20 2 1
      200 SETTABLEKS                       R20 R19 K60 ["Description"]
      202 GETUPVAL                         R21 1
      203 GETTABLEKS                       R20 R21 K5 ["createElement"]
      205 GETUPVAL                         R21 3
      206 DUPTABLE                         R22 K63 [{"Text", "tag"}]
      207 LOADK                            R24 K68 ["Current input: \"%*\""]
      208 MOVE                             R26 R3
      209 NAMECALL                         R24 R24 K69 ["format"]
      211 CALL                             R24 2 1
      212 MOVE                             R23 R24
      213 SETTABLEKS                       R23 R22 K12 ["Text"]
      215 LOADK                            R23 K70 ["auto-xy text-body-small content-subtle"]
      216 SETTABLEKS                       R23 R22 K6 ["tag"]
      218 CALL                             R20 2 1
      219 SETTABLEKS                       R20 R19 K61 ["CurrentText"]
      221 CALL                             R16 3 -1
      222 CALL                             R13 -1 1
      223 SETTABLEKS                       R13 R12 K26 ["Content"]
      225 CALL                             R9 3 1
      226 SETTABLEKS                       R9 R8 K10 ["Popover"]
      228 CALL                             R5 3 -1
      229 RETURN                           R5 -1

PROTO_16:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["current"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["current"]
        9 GETTABLEKS                       R0 R1 K1 ["MouseMoved"]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 NAMECALL                         R0 R0 K2 ["Connect"]
       16 CALL                             R0 2 1
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R2 R3 K0 ["current"]
       20 GETTABLEKS                       R1 R2 K3 ["MouseLeave"]
       22 NEWCLOSURE                       R3 P1
       23 CAPTURE                          UPVAL U2
       24 NAMECALL                         R1 R1 K2 ["Connect"]
       26 CALL                             R1 2 1
       27 NEWCLOSURE                       R2 P2
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R1
       30 RETURN                           R2 1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 1
        6 GETIMPORT                        R4 K3 [Vector2.zero]
        8 CALL                             R3 1 1
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R4 R5 K4 ["useRef"]
       12 LOADNIL                          R5
       13 CALL                             R4 1 1
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R5 R6 K5 ["useEffect"]
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          VAL R4
       19 CAPTURE                          VAL R3
       20 CAPTURE                          VAL R2
       21 NEWTABLE                         R7 0 0
       23 CALL                             R5 2 0
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R5 R6 K6 ["createElement"]
       27 GETUPVAL                         R6 2
       28 DUPTABLE                         R7 K9 [{"tag", "ref"}]
       29 LOADK                            R8 K10 ["row align-x-center align-y-center size-full-3000 bg-surface-200"]
       30 SETTABLEKS                       R8 R7 K7 ["tag"]
       32 SETTABLEKS                       R4 R7 K8 ["ref"]
       34 DUPTABLE                         R8 K13 [{"Text", "Popover"}]
       35 GETUPVAL                         R10 0
       36 GETTABLEKS                       R9 R10 K6 ["createElement"]
       38 GETUPVAL                         R10 3
       39 DUPTABLE                         R11 K14 [{"Text", "tag"}]
       40 LOADK                            R12 K15 ["Move the mouse over this area to see a tooltip"]
       41 SETTABLEKS                       R12 R11 K11 ["Text"]
       43 LOADK                            R12 K16 ["text-align-x-center"]
       44 SETTABLEKS                       R12 R11 K7 ["tag"]
       46 CALL                             R9 2 1
       47 SETTABLEKS                       R9 R8 K11 ["Text"]
       49 GETUPVAL                         R10 0
       50 GETTABLEKS                       R9 R10 K6 ["createElement"]
       52 GETUPVAL                         R11 4
       53 GETTABLEKS                       R10 R11 K17 ["Root"]
       55 DUPTABLE                         R11 K19 [{"isOpen"}]
       56 SETTABLEKS                       R1 R11 K18 ["isOpen"]
       58 DUPTABLE                         R12 K22 [{"Anchor", "Content"}]
       59 GETUPVAL                         R14 0
       60 GETTABLEKS                       R13 R14 K6 ["createElement"]
       62 GETUPVAL                         R15 4
       63 GETTABLEKS                       R14 R15 K20 ["Anchor"]
       65 DUPTABLE                         R15 K24 [{"anchorRef"}]
       66 SETTABLEKS                       R3 R15 K23 ["anchorRef"]
       68 CALL                             R13 2 1
       69 SETTABLEKS                       R13 R12 K20 ["Anchor"]
       71 GETUPVAL                         R14 0
       72 GETTABLEKS                       R13 R14 K6 ["createElement"]
       74 GETUPVAL                         R15 4
       75 GETTABLEKS                       R14 R15 K21 ["Content"]
       77 DUPTABLE                         R15 K27 [{"align", "side"}]
       78 GETTABLEKS                       R17 R0 K28 ["controls"]
       80 GETTABLEKS                       R16 R17 K25 ["align"]
       82 SETTABLEKS                       R16 R15 K25 ["align"]
       84 GETTABLEKS                       R17 R0 K28 ["controls"]
       86 GETTABLEKS                       R16 R17 K26 ["side"]
       88 SETTABLEKS                       R16 R15 K26 ["side"]
       90 GETUPVAL                         R17 0
       91 GETTABLEKS                       R16 R17 K6 ["createElement"]
       93 GETUPVAL                         R17 2
       94 DUPTABLE                         R18 K29 [{"tag"}]
       95 LOADK                            R19 K30 ["col gap-small padding-medium auto-xy"]
       96 SETTABLEKS                       R19 R18 K7 ["tag"]
       98 DUPTABLE                         R19 K32 [{"Title"}]
       99 GETUPVAL                         R21 0
      100 GETTABLEKS                       R20 R21 K6 ["createElement"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["current"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["current"]
        9 GETTABLEKS                       R0 R1 K1 ["MouseButton2Up"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 1
        6 GETIMPORT                        R4 K3 [Vector2.zero]
        8 CALL                             R3 1 1
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R4 R5 K4 ["useRef"]
       12 LOADNIL                          R5
       13 CALL                             R4 1 1
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R5 R6 K5 ["useEffect"]
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          VAL R4
       19 CAPTURE                          VAL R3
       20 CAPTURE                          VAL R2
       21 NEWTABLE                         R7 0 0
       23 CALL                             R5 2 0
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R5 R6 K6 ["createElement"]
       27 GETUPVAL                         R6 2
       28 DUPTABLE                         R7 K11 [{"tag", "stateLayer", "onActivated", "ref"}]
       29 LOADK                            R8 K12 ["align-x-center align-y-center size-full-3000 bg-surface-200"]
       30 SETTABLEKS                       R8 R7 K7 ["tag"]
       32 DUPTABLE                         R8 K14 [{"affordance"}]
       33 GETUPVAL                         R10 3
       34 GETTABLEKS                       R9 R10 K15 ["None"]
       36 SETTABLEKS                       R9 R8 K13 ["affordance"]
       38 SETTABLEKS                       R8 R7 K8 ["stateLayer"]
       40 DUPCLOSURE                       R8 K16 [PROTO_24]
       41 SETTABLEKS                       R8 R7 K9 ["onActivated"]
       43 SETTABLEKS                       R4 R7 K10 ["ref"]
       45 DUPTABLE                         R8 K19 [{"Text", "Popover"}]
       46 GETUPVAL                         R10 0
       47 GETTABLEKS                       R9 R10 K6 ["createElement"]
       49 GETUPVAL                         R10 4
       50 DUPTABLE                         R11 K20 [{"Text", "tag"}]
       51 LOADK                            R12 K21 ["Right-click on this area to open the context menu."]
       52 SETTABLEKS                       R12 R11 K17 ["Text"]
       54 LOADK                            R12 K22 ["text-align-x-center size-full-full"]
       55 SETTABLEKS                       R12 R11 K7 ["tag"]
       57 CALL                             R9 2 1
       58 SETTABLEKS                       R9 R8 K17 ["Text"]
       60 GETUPVAL                         R10 0
       61 GETTABLEKS                       R9 R10 K6 ["createElement"]
       63 GETUPVAL                         R11 5
       64 GETTABLEKS                       R10 R11 K23 ["Root"]
       66 DUPTABLE                         R11 K25 [{"isOpen"}]
       67 SETTABLEKS                       R1 R11 K24 ["isOpen"]
       69 DUPTABLE                         R12 K28 [{"Anchor", "Content"}]
       70 GETUPVAL                         R14 0
       71 GETTABLEKS                       R13 R14 K6 ["createElement"]
       73 GETUPVAL                         R15 5
       74 GETTABLEKS                       R14 R15 K26 ["Anchor"]
       76 DUPTABLE                         R15 K30 [{"anchorRef"}]
       77 SETTABLEKS                       R3 R15 K29 ["anchorRef"]
       79 CALL                             R13 2 1
       80 SETTABLEKS                       R13 R12 K26 ["Anchor"]
       82 GETUPVAL                         R14 0
       83 GETTABLEKS                       R13 R14 K6 ["createElement"]
       85 GETUPVAL                         R15 5
       86 GETTABLEKS                       R14 R15 K27 ["Content"]
       88 DUPTABLE                         R15 K34 [{"align", "side", "onPressedOutside"}]
       89 GETTABLEKS                       R17 R0 K35 ["controls"]
       91 GETTABLEKS                       R16 R17 K31 ["align"]
       93 SETTABLEKS                       R16 R15 K31 ["align"]
       95 GETTABLEKS                       R17 R0 K35 ["controls"]
       97 GETTABLEKS                       R16 R17 K32 ["side"]
       99 SETTABLEKS                       R16 R15 K32 ["side"]
      101 NEWCLOSURE                       R16 P2
      102 CAPTURE                          VAL R2
      103 SETTABLEKS                       R16 R15 K33 ["onPressedOutside"]
      105 GETUPVAL                         R17 0
      106 GETTABLEKS                       R16 R17 K6 ["createElement"]
      108 GETUPVAL                         R17 2
      109 DUPTABLE                         R18 K36 [{"tag"}]
      110 LOADK                            R19 K37 ["col gap-small padding-medium auto-xy"]
      111 SETTABLEKS                       R19 R18 K7 ["tag"]
      113 DUPTABLE                         R19 K40 [{"Text1", "Text2"}]
      114 GETUPVAL                         R21 0
      115 GETTABLEKS                       R20 R21 K6 ["createElement"]
      117 GETUPVAL                         R21 4
      118 DUPTABLE                         R22 K20 [{"Text", "tag"}]
      119 LOADK                            R23 K41 ["Context Menu"]
      120 SETTABLEKS                       R23 R22 K17 ["Text"]
      122 LOADK                            R23 K42 ["auto-xy text-title-medium content-emphasis"]
      123 SETTABLEKS                       R23 R22 K7 ["tag"]
      125 CALL                             R20 2 1
      126 SETTABLEKS                       R20 R19 K38 ["Text1"]
      128 GETUPVAL                         R21 0
      129 GETTABLEKS                       R20 R21 K6 ["createElement"]
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
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["Button"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K11 ["Utility"]
       30 GETTABLEKS                       R6 R7 K12 ["Flags"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K13 ["Enums"]
       37 GETTABLEKS                       R7 R8 K14 ["InputSize"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R9 R0 K9 ["Components"]
       44 GETTABLEKS                       R8 R9 K15 ["Popover"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R10 R0 K13 ["Enums"]
       51 GETTABLEKS                       R9 R10 K16 ["PopoverAlign"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R11 R0 K13 ["Enums"]
       58 GETTABLEKS                       R10 R11 K17 ["PopoverSide"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R12 R0 K13 ["Enums"]
       65 GETTABLEKS                       R11 R12 K18 ["Radius"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R13 R0 K13 ["Enums"]
       72 GETTABLEKS                       R12 R13 K19 ["StateLayerAffordance"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [require]
       77 GETTABLEKS                       R14 R0 K9 ["Components"]
       79 GETTABLEKS                       R13 R14 K20 ["Text"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K6 [require]
       84 GETTABLEKS                       R15 R0 K9 ["Components"]
       86 GETTABLEKS                       R14 R15 K21 ["TextInput"]
       88 CALL                             R13 1 1
       89 GETIMPORT                        R14 K6 [require]
       91 GETTABLEKS                       R16 R0 K9 ["Components"]
       93 GETTABLEKS                       R15 R16 K22 ["Types"]
       95 CALL                             R14 1 1
       96 GETIMPORT                        R15 K6 [require]
       98 GETTABLEKS                       R17 R0 K9 ["Components"]
      100 GETTABLEKS                       R16 R17 K23 ["View"]
      102 CALL                             R15 1 1
      103 GETIMPORT                        R16 K6 [require]
      105 GETTABLEKS                       R19 R0 K9 ["Components"]
      107 GETTABLEKS                       R18 R19 K15 ["Popover"]
      109 GETTABLEKS                       R17 R18 K24 ["useMeasurableRef"]
      111 CALL                             R16 1 1
      112 GETIMPORT                        R17 K6 [require]
      114 GETTABLEKS                       R20 R0 K25 ["Providers"]
      116 GETTABLEKS                       R19 R20 K26 ["Style"]
      118 GETTABLEKS                       R18 R19 K27 ["useTokens"]
      120 CALL                             R17 1 1
      121 DUPCLOSURE                       R18 K28 [PROTO_0]
      122 CAPTURE                          VAL R17
      123 NEWTABLE                         R19 0 4
      125 LOADK                            R20 K29 ["Default"]
      126 LOADK                            R21 K30 ["Surface_0"]
      127 LOADK                            R22 K31 ["Surface_200"]
      128 LOADK                            R23 K32 ["ActionAlert"]
      129 SETLIST                          R19 R20 4 [1]
      131 DUPTABLE                         R20 K36 [{"summary", "stories", "controls"}]
      132 LOADK                            R21 K15 ["Popover"]
      133 SETTABLEKS                       R21 R20 K33 ["summary"]
      135 DUPTABLE                         R21 K43 [{"Basic", "ClickOutside", "AnchorRef", "KeyboardAware", "MousePositionTooltip", "ContextMenu"}]
      136 DUPTABLE                         R22 K46 [{"name", "story"}]
      137 LOADK                            R23 K37 ["Basic"]
      138 SETTABLEKS                       R23 R22 K44 ["name"]
      140 DUPCLOSURE                       R23 K47 [PROTO_2]
      141 CAPTURE                          VAL R17
      142 CAPTURE                          VAL R3
      143 CAPTURE                          VAL R15
      144 CAPTURE                          VAL R7
      145 CAPTURE                          VAL R12
      146 CAPTURE                          VAL R4
      147 CAPTURE                          VAL R6
      148 SETTABLEKS                       R23 R22 K45 ["story"]
      150 SETTABLEKS                       R22 R21 K37 ["Basic"]
      152 DUPTABLE                         R22 K46 [{"name", "story"}]
      153 LOADK                            R23 K48 ["Click Outside"]
      154 SETTABLEKS                       R23 R22 K44 ["name"]
      156 DUPCLOSURE                       R23 K49 [PROTO_5]
      157 CAPTURE                          VAL R3
      158 CAPTURE                          VAL R15
      159 CAPTURE                          VAL R7
      160 CAPTURE                          VAL R12
      161 CAPTURE                          VAL R4
      162 CAPTURE                          VAL R6
      163 SETTABLEKS                       R23 R22 K45 ["story"]
      165 SETTABLEKS                       R22 R21 K38 ["ClickOutside"]
      167 DUPTABLE                         R22 K46 [{"name", "story"}]
      168 LOADK                            R23 K50 ["Anchor Reference"]
      169 SETTABLEKS                       R23 R22 K44 ["name"]
      171 DUPCLOSURE                       R23 K51 [PROTO_8]
      172 CAPTURE                          VAL R3
      173 CAPTURE                          VAL R15
      174 CAPTURE                          VAL R4
      175 CAPTURE                          VAL R6
      176 CAPTURE                          VAL R7
      177 CAPTURE                          VAL R12
      178 SETTABLEKS                       R23 R22 K45 ["story"]
      180 SETTABLEKS                       R22 R21 K39 ["AnchorRef"]
      182 DUPTABLE                         R22 K46 [{"name", "story"}]
      183 LOADK                            R23 K52 ["Keyboard Aware Input"]
      184 SETTABLEKS                       R23 R22 K44 ["name"]
      186 DUPCLOSURE                       R23 K53 [PROTO_15]
      187 CAPTURE                          VAL R5
      188 CAPTURE                          VAL R3
      189 CAPTURE                          VAL R15
      190 CAPTURE                          VAL R12
      191 CAPTURE                          VAL R7
      192 CAPTURE                          VAL R13
      193 CAPTURE                          VAL R6
      194 CAPTURE                          VAL R4
      195 CAPTURE                          VAL R9
      196 CAPTURE                          VAL R8
      197 SETTABLEKS                       R23 R22 K45 ["story"]
      199 SETTABLEKS                       R22 R21 K40 ["KeyboardAware"]
      201 DUPTABLE                         R22 K46 [{"name", "story"}]
      202 LOADK                            R23 K41 ["MousePositionTooltip"]
      203 SETTABLEKS                       R23 R22 K44 ["name"]
      205 DUPCLOSURE                       R23 K54 [PROTO_20]
      206 CAPTURE                          VAL R3
      207 CAPTURE                          VAL R16
      208 CAPTURE                          VAL R15
      209 CAPTURE                          VAL R12
      210 CAPTURE                          VAL R7
      211 SETTABLEKS                       R23 R22 K45 ["story"]
      213 SETTABLEKS                       R22 R21 K41 ["MousePositionTooltip"]
      215 DUPTABLE                         R22 K46 [{"name", "story"}]
      216 LOADK                            R23 K55 ["Context menu"]
      217 SETTABLEKS                       R23 R22 K44 ["name"]
      219 DUPCLOSURE                       R23 K56 [PROTO_26]
      220 CAPTURE                          VAL R3
      221 CAPTURE                          VAL R16
      222 CAPTURE                          VAL R15
      223 CAPTURE                          VAL R11
      224 CAPTURE                          VAL R12
      225 CAPTURE                          VAL R7
      226 SETTABLEKS                       R23 R22 K45 ["story"]
      228 SETTABLEKS                       R22 R21 K42 ["ContextMenu"]
      230 SETTABLEKS                       R21 R20 K34 ["stories"]
      232 DUPTABLE                         R21 K62 [{"side", "align", "radius", "backgroundStyle", "keyboardAware"}]
      233 GETTABLEKS                       R22 R2 K63 ["values"]
      235 MOVE                             R23 R9
      236 CALL                             R22 1 1
      237 SETTABLEKS                       R22 R21 K57 ["side"]
      239 GETTABLEKS                       R22 R2 K63 ["values"]
      241 MOVE                             R23 R8
      242 CALL                             R22 1 1
      243 SETTABLEKS                       R22 R21 K58 ["align"]
      245 NEWTABLE                         R22 0 3
      247 GETTABLEKS                       R23 R10 K64 ["Small"]
      249 GETTABLEKS                       R24 R10 K65 ["Medium"]
      251 GETTABLEKS                       R25 R10 K66 ["Circle"]
      253 SETLIST                          R22 R23 3 [1]
      255 SETTABLEKS                       R22 R21 K59 ["radius"]
      257 SETTABLEKS                       R19 R21 K60 ["backgroundStyle"]
      259 GETTABLEKS                       R22 R5 K67 ["FoundationPopoverOnScreenKeyboard"]
      261 SETTABLEKS                       R22 R21 K61 ["keyboardAware"]
      263 SETTABLEKS                       R21 R20 K35 ["controls"]
      265 RETURN                           R20 1
