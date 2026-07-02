PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 DUPTABLE                         R3 K5 [{[1] = , ["Surface_0"], ["Surface_200"], ["ActionAlert"]}]
        3 GETTABLEKS                       R4 R1 K6 ["Color"]
        5 GETTABLEKS                       R4 R4 K7 ["Surface"]
        7 GETTABLEKS                       R4 R4 K2 ["Surface_0"]
        9 SETTABLEKS                       R4 R3 K2 ["Surface_0"]
       11 GETTABLEKS                       R4 R1 K6 ["Color"]
       13 GETTABLEKS                       R4 R4 K7 ["Surface"]
       15 GETTABLEKS                       R4 R4 K3 ["Surface_200"]
       17 SETTABLEKS                       R4 R3 K3 ["Surface_200"]
       19 GETTABLEKS                       R4 R1 K6 ["Color"]
       21 GETTABLEKS                       R4 R4 K4 ["ActionAlert"]
       23 GETTABLEKS                       R4 R4 K8 ["Background"]
       25 SETTABLEKS                       R4 R3 K4 ["ActionAlert"]
       27 GETTABLE                         R2 R3 R0
       28 RETURN                           R2 1

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
        6 DUPTABLE                         R4 K7 [{["Default"] = , ["Surface_0"], ["Surface_200"], ["ActionAlert"]}]
        7 GETTABLEKS                       R5 R3 K8 ["Color"]
        9 GETTABLEKS                       R5 R5 K9 ["Surface"]
       11 GETTABLEKS                       R5 R5 K4 ["Surface_0"]
       13 SETTABLEKS                       R5 R4 K4 ["Surface_0"]
       15 GETTABLEKS                       R5 R3 K8 ["Color"]
       17 GETTABLEKS                       R5 R5 K9 ["Surface"]
       19 GETTABLEKS                       R5 R5 K5 ["Surface_200"]
       21 SETTABLEKS                       R5 R4 K5 ["Surface_200"]
       23 GETTABLEKS                       R5 R3 K8 ["Color"]
       25 GETTABLEKS                       R5 R5 K6 ["ActionAlert"]
       27 GETTABLEKS                       R5 R5 K10 ["Background"]
       29 SETTABLEKS                       R5 R4 K6 ["ActionAlert"]
       31 GETTABLE                         R1 R4 R2
       32 GETUPVAL                         R2 1
       33 GETTABLEKS                       R2 R2 K11 ["createElement"]
       35 GETUPVAL                         R3 2
       36 DUPTABLE                         R4 K15 [{["Size"], ["tag"] = "row align-x-center align-y-center"}]
       37 GETIMPORT                        R5 K18 [UDim2.new]
       39 LOADN                            R6 1
       40 LOADN                            R7 0
       41 LOADN                            R8 0
       42 LOADN                            R9 1000
       43 CALL                             R5 4 1
       44 SETTABLEKS                       R5 R4 K12 ["Size"]
       46 DUPTABLE                         R5 K20 [{"Popover"}]
       47 GETUPVAL                         R6 1
       48 GETTABLEKS                       R6 R6 K11 ["createElement"]
       50 GETUPVAL                         R7 3
       51 GETTABLEKS                       R7 R7 K21 ["Root"]
       53 DUPTABLE                         R8 K24 [{["isOpen"] = True}]
       54 DUPTABLE                         R9 K27 [{"Anchor", "Content"}]
       55 GETUPVAL                         R10 1
       56 GETTABLEKS                       R10 R10 K11 ["createElement"]
       58 GETUPVAL                         R11 3
       59 GETTABLEKS                       R11 R11 K25 ["Anchor"]
       61 LOADNIL                          R12
       62 GETUPVAL                         R13 1
       63 GETTABLEKS                       R13 R13 K11 ["createElement"]
       65 GETUPVAL                         R14 2
       66 DUPTABLE                         R15 K29 [{["tag"] = "bg-surface-100 padding-large auto-xy radius-medium stroke-neutral col gap-large"}]
       67 DUPTABLE                         R16 K32 [{"Text", "Button"}]
       68 GETUPVAL                         R17 1
       69 GETTABLEKS                       R17 R17 K11 ["createElement"]
       71 GETUPVAL                         R18 4
       72 DUPTABLE                         R19 K35 [{["Text"] = "I am a card", ["tag"] = "auto-xy text-heading-medium"}]
       73 CALL                             R17 2 1
       74 SETTABLEKS                       R17 R16 K30 ["Text"]
       76 GETUPVAL                         R17 1
       77 GETTABLEKS                       R17 R17 K11 ["createElement"]
       79 GETUPVAL                         R18 5
       80 DUPTABLE                         R19 K40 [{["text"] = "Just a button!", ["size"], ["onActivated"]}]
       81 GETUPVAL                         R20 6
       82 GETTABLEKS                       R20 R20 K41 ["Medium"]
       84 SETTABLEKS                       R20 R19 K38 ["size"]
       86 DUPCLOSURE                       R20 K42 [PROTO_1]
       87 SETTABLEKS                       R20 R19 K39 ["onActivated"]
       89 CALL                             R17 2 1
       90 SETTABLEKS                       R17 R16 K31 ["Button"]
       92 CALL                             R13 3 -1
       93 CALL                             R10 -1 1
       94 SETTABLEKS                       R10 R9 K25 ["Anchor"]
       96 GETUPVAL                         R10 1
       97 GETTABLEKS                       R10 R10 K11 ["createElement"]
       99 GETUPVAL                         R11 3
      100 GETTABLEKS                       R11 R11 K26 ["Content"]
      102 DUPTABLE                         R12 K46 [{"align", "side", "backgroundStyle", "radius"}]
      103 GETTABLEKS                       R13 R0 K0 ["controls"]
      105 GETTABLEKS                       R13 R13 K43 ["align"]
      107 SETTABLEKS                       R13 R12 K43 ["align"]
      109 GETTABLEKS                       R13 R0 K0 ["controls"]
      111 GETTABLEKS                       R13 R13 K44 ["side"]
      113 SETTABLEKS                       R13 R12 K44 ["side"]
      115 SETTABLEKS                       R1 R12 K1 ["backgroundStyle"]
      117 GETTABLEKS                       R13 R0 K0 ["controls"]
      119 GETTABLEKS                       R13 R13 K45 ["radius"]
      121 SETTABLEKS                       R13 R12 K45 ["radius"]
      123 GETUPVAL                         R13 1
      124 GETTABLEKS                       R13 R13 K11 ["createElement"]
      126 GETUPVAL                         R14 2
      127 DUPTABLE                         R15 K48 [{["tag"] = "col gap-small padding-medium auto-xy"}]
      128 DUPTABLE                         R16 K51 [{"Title", "Subtitle"}]
      129 GETUPVAL                         R17 1
      130 GETTABLEKS                       R17 R17 K11 ["createElement"]
      132 GETUPVAL                         R18 4
      133 DUPTABLE                         R19 K54 [{["Text"] = "Tooltip Title", ["tag"] = "auto-xy text-title-medium content-emphasis"}]
      134 CALL                             R17 2 1
      135 SETTABLEKS                       R17 R16 K49 ["Title"]
      137 GETUPVAL                         R17 1
      138 GETTABLEKS                       R17 R17 K11 ["createElement"]
      140 GETUPVAL                         R18 4
      141 DUPTABLE                         R19 K57 [{["Text"] = "Here's the tootip's subtitle and content.", ["tag"] = "auto-xy text-body-small"}]
      142 CALL                             R17 2 1
      143 SETTABLEKS                       R17 R16 K50 ["Subtitle"]
      145 CALL                             R13 3 -1
      146 CALL                             R10 -1 1
      147 SETTABLEKS                       R10 R9 K26 ["Content"]
      149 CALL                             R6 3 1
      150 SETTABLEKS                       R6 R5 K19 ["Popover"]
      152 CALL                             R2 3 -1
      153 RETURN                           R2 -1

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
        9 DUPTABLE                         R5 K4 [{["tag"] = "row align-x-center align-y-center size-full-0 auto-y"}]
       10 DUPTABLE                         R6 K6 [{"Popover"}]
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R7 R7 K1 ["createElement"]
       14 GETUPVAL                         R8 2
       15 GETTABLEKS                       R8 R8 K7 ["Root"]
       17 DUPTABLE                         R9 K9 [{"isOpen"}]
       18 SETTABLEKS                       R1 R9 K8 ["isOpen"]
       20 DUPTABLE                         R10 K12 [{"Anchor", "Content"}]
       21 GETUPVAL                         R11 0
       22 GETTABLEKS                       R11 R11 K1 ["createElement"]
       24 GETUPVAL                         R12 2
       25 GETTABLEKS                       R12 R12 K10 ["Anchor"]
       27 LOADNIL                          R13
       28 GETUPVAL                         R14 0
       29 GETTABLEKS                       R14 R14 K1 ["createElement"]
       31 GETUPVAL                         R15 1
       32 DUPTABLE                         R16 K14 [{["tag"] = "bg-surface-100 padding-large auto-xy radius-medium stroke-neutral col gap-large"}]
       33 DUPTABLE                         R17 K17 [{"Text", "Button"}]
       34 GETUPVAL                         R18 0
       35 GETTABLEKS                       R18 R18 K1 ["createElement"]
       37 GETUPVAL                         R19 3
       38 DUPTABLE                         R20 K20 [{["Text"] = "I am a card", ["tag"] = "auto-xy text-heading-medium"}]
       39 CALL                             R18 2 1
       40 SETTABLEKS                       R18 R17 K15 ["Text"]
       42 GETUPVAL                         R18 0
       43 GETTABLEKS                       R18 R18 K1 ["createElement"]
       45 GETUPVAL                         R19 4
       46 DUPTABLE                         R20 K25 [{["text"] = "Click me to toggle!", ["size"], ["onActivated"]}]
       47 GETUPVAL                         R21 5
       48 GETTABLEKS                       R21 R21 K26 ["Medium"]
       50 SETTABLEKS                       R21 R20 K23 ["size"]
       52 NEWCLOSURE                       R21 P0
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R1
       55 SETTABLEKS                       R21 R20 K24 ["onActivated"]
       57 CALL                             R18 2 1
       58 SETTABLEKS                       R18 R17 K16 ["Button"]
       60 CALL                             R14 3 -1
       61 CALL                             R11 -1 1
       62 SETTABLEKS                       R11 R10 K10 ["Anchor"]
       64 GETUPVAL                         R11 0
       65 GETTABLEKS                       R11 R11 K1 ["createElement"]
       67 GETUPVAL                         R12 2
       68 GETTABLEKS                       R12 R12 K11 ["Content"]
       70 DUPTABLE                         R13 K30 [{"align", "side", "onPressedOutside"}]
       71 GETTABLEKS                       R14 R0 K31 ["controls"]
       73 GETTABLEKS                       R14 R14 K27 ["align"]
       75 SETTABLEKS                       R14 R13 K27 ["align"]
       77 GETTABLEKS                       R14 R0 K31 ["controls"]
       79 GETTABLEKS                       R14 R14 K28 ["side"]
       81 SETTABLEKS                       R14 R13 K28 ["side"]
       83 NEWCLOSURE                       R14 P1
       84 CAPTURE                          VAL R2
       85 SETTABLEKS                       R14 R13 K29 ["onPressedOutside"]
       87 GETUPVAL                         R14 0
       88 GETTABLEKS                       R14 R14 K1 ["createElement"]
       90 GETUPVAL                         R15 1
       91 DUPTABLE                         R16 K33 [{["tag"] = "col gap-small padding-medium auto-xy"}]
       92 DUPTABLE                         R17 K36 [{"Title", "Subtitle"}]
       93 GETUPVAL                         R18 0
       94 GETTABLEKS                       R18 R18 K1 ["createElement"]
       96 GETUPVAL                         R19 3
       97 DUPTABLE                         R20 K39 [{["Text"] = "Click outside example", ["tag"] = "auto-xy text-title-medium content-emphasis"}]
       98 CALL                             R18 2 1
       99 SETTABLEKS                       R18 R17 K34 ["Title"]
      101 GETUPVAL                         R18 0
      102 GETTABLEKS                       R18 R18 K1 ["createElement"]
      104 GETUPVAL                         R19 3
      105 DUPTABLE                         R20 K42 [{["Text"] = "Click anywhere outside to close this", ["tag"] = "auto-xy text-body-small"}]
      106 CALL                             R18 2 1
      107 SETTABLEKS                       R18 R17 K35 ["Subtitle"]
      109 CALL                             R14 3 -1
      110 CALL                             R11 -1 1
      111 SETTABLEKS                       R11 R10 K11 ["Content"]
      113 CALL                             R7 3 1
      114 SETTABLEKS                       R7 R6 K5 ["Popover"]
      116 CALL                             R3 3 -1
      117 RETURN                           R3 -1

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
       14 DUPTABLE                         R6 K6 [{["Size"], ["tag"] = "row align-x-center align-y-center"}]
       15 GETIMPORT                        R7 K9 [UDim2.new]
       17 LOADN                            R8 1
       18 LOADN                            R9 0
       19 LOADN                            R10 0
       20 LOADN                            R11 1000
       21 CALL                             R7 4 1
       22 SETTABLEKS                       R7 R6 K3 ["Size"]
       24 DUPTABLE                         R7 K12 [{"Button", "Popover"}]
       25 GETUPVAL                         R8 0
       26 GETTABLEKS                       R8 R8 K2 ["createElement"]
       28 GETUPVAL                         R9 2
       29 DUPTABLE                         R10 K18 [{["text"] = "Click me to toggle!", ["size"], ["ref"], ["onActivated"]}]
       30 GETUPVAL                         R11 3
       31 GETTABLEKS                       R11 R11 K19 ["Medium"]
       33 SETTABLEKS                       R11 R10 K15 ["size"]
       35 SETTABLEKS                       R1 R10 K16 ["ref"]
       37 NEWCLOSURE                       R11 P0
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R2
       40 SETTABLEKS                       R11 R10 K17 ["onActivated"]
       42 CALL                             R8 2 1
       43 SETTABLEKS                       R8 R7 K10 ["Button"]
       45 GETUPVAL                         R8 0
       46 GETTABLEKS                       R8 R8 K2 ["createElement"]
       48 GETUPVAL                         R9 4
       49 GETTABLEKS                       R9 R9 K20 ["Root"]
       51 DUPTABLE                         R10 K22 [{"isOpen"}]
       52 SETTABLEKS                       R2 R10 K21 ["isOpen"]
       54 DUPTABLE                         R11 K25 [{"Anchor", "Content"}]
       55 GETUPVAL                         R12 0
       56 GETTABLEKS                       R12 R12 K2 ["createElement"]
       58 GETUPVAL                         R13 4
       59 GETTABLEKS                       R13 R13 K23 ["Anchor"]
       61 DUPTABLE                         R14 K27 [{"anchorRef"}]
       62 SETTABLEKS                       R1 R14 K26 ["anchorRef"]
       64 CALL                             R12 2 1
       65 SETTABLEKS                       R12 R11 K23 ["Anchor"]
       67 GETUPVAL                         R12 0
       68 GETTABLEKS                       R12 R12 K2 ["createElement"]
       70 GETUPVAL                         R13 4
       71 GETTABLEKS                       R13 R13 K24 ["Content"]
       73 DUPTABLE                         R14 K31 [{"align", "side", "onPressedOutside"}]
       74 GETTABLEKS                       R15 R0 K32 ["controls"]
       76 GETTABLEKS                       R15 R15 K28 ["align"]
       78 SETTABLEKS                       R15 R14 K28 ["align"]
       80 GETTABLEKS                       R15 R0 K32 ["controls"]
       82 GETTABLEKS                       R15 R15 K29 ["side"]
       84 SETTABLEKS                       R15 R14 K29 ["side"]
       86 NEWCLOSURE                       R15 P1
       87 CAPTURE                          VAL R3
       88 SETTABLEKS                       R15 R14 K30 ["onPressedOutside"]
       90 GETUPVAL                         R15 0
       91 GETTABLEKS                       R15 R15 K2 ["createElement"]
       93 GETUPVAL                         R16 1
       94 DUPTABLE                         R17 K34 [{["tag"] = "col gap-small padding-medium auto-xy"}]
       95 DUPTABLE                         R18 K37 [{"Title", "Subtitle"}]
       96 GETUPVAL                         R19 0
       97 GETTABLEKS                       R19 R19 K2 ["createElement"]
       99 GETUPVAL                         R20 5
      100 DUPTABLE                         R21 K41 [{["Text"] = "Anchor Reference Example", ["tag"] = "auto-xy text-title-medium content-emphasis"}]
      101 CALL                             R19 2 1
      102 SETTABLEKS                       R19 R18 K35 ["Title"]
      104 GETUPVAL                         R19 0
      105 GETTABLEKS                       R19 R19 K2 ["createElement"]
      107 GETUPVAL                         R20 5
      108 DUPTABLE                         R21 K44 [{["Text"] = "This popover is anchored to a button using anchorRef", ["tag"] = "auto-xy text-body-small"}]
      109 CALL                             R19 2 1
      110 SETTABLEKS                       R19 R18 K36 ["Subtitle"]
      112 CALL                             R15 3 -1
      113 CALL                             R12 -1 1
      114 SETTABLEKS                       R12 R11 K24 ["Content"]
      116 CALL                             R8 3 1
      117 SETTABLEKS                       R8 R7 K11 ["Popover"]
      119 CALL                             R4 3 -1
      120 RETURN                           R4 -1

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
        1 GETTABLEKS                       R2 R0 K0 ["controls"]
        3 GETTABLEKS                       R2 R2 K1 ["keyboardAware"]
        5 SETTABLEKS                       R2 R1 K2 ["FoundationPopoverOnScreenKeyboard"]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K3 ["useState"]
       10 LOADB                            R2 0
       11 CALL                             R1 1 2
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K3 ["useState"]
       15 LOADK                            R4 K4 [""]
       16 CALL                             R3 1 2
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K5 ["createElement"]
       20 GETUPVAL                         R6 2
       21 DUPTABLE                         R7 K8 [{["tag"] = "col align-x-center align-y-center size-full-0 auto-y gap-large"}]
       22 DUPTABLE                         R8 K11 [{"Instructions", "Popover"}]
       23 GETUPVAL                         R9 1
       24 GETTABLEKS                       R9 R9 K5 ["createElement"]
       26 GETUPVAL                         R10 3
       27 DUPTABLE                         R11 K16 [{["Text"] = "Focus the input field to test keyboard-aware positioning", ["tag"] = "auto-xy text-body-medium content-emphasis", ["padding"]}]
       28 DUPTABLE                         R12 K18 [{"bottom"}]
       29 GETIMPORT                        R13 K21 [UDim.new]
       31 LOADN                            R14 0
       32 LOADN                            R15 500
       33 CALL                             R13 2 1
       34 SETTABLEKS                       R13 R12 K17 ["bottom"]
       36 SETTABLEKS                       R12 R11 K15 ["padding"]
       38 CALL                             R9 2 1
       39 SETTABLEKS                       R9 R8 K9 ["Instructions"]
       41 GETUPVAL                         R9 1
       42 GETTABLEKS                       R9 R9 K5 ["createElement"]
       44 GETUPVAL                         R10 4
       45 GETTABLEKS                       R10 R10 K22 ["Root"]
       47 DUPTABLE                         R11 K24 [{"isOpen"}]
       48 SETTABLEKS                       R1 R11 K23 ["isOpen"]
       50 DUPTABLE                         R12 K27 [{"Anchor", "Content"}]
       51 GETUPVAL                         R13 1
       52 GETTABLEKS                       R13 R13 K5 ["createElement"]
       54 GETUPVAL                         R14 4
       55 GETTABLEKS                       R14 R14 K25 ["Anchor"]
       57 LOADNIL                          R15
       58 GETUPVAL                         R16 1
       59 GETTABLEKS                       R16 R16 K5 ["createElement"]
       61 GETUPVAL                         R17 2
       62 DUPTABLE                         R18 K29 [{["tag"] = "col gap-medium auto-xy"}]
       63 DUPTABLE                         R19 K32 [{"TextInputField", "ToggleButton"}]
       64 GETUPVAL                         R20 1
       65 GETTABLEKS                       R20 R20 K5 ["createElement"]
       67 GETUPVAL                         R21 5
       68 DUPTABLE                         R22 K42 [{["size"], ["label"] = "Test Input", ["placeholder"] = "Type something here...", ["text"], ["onChanged"], ["onFocusGained"], ["onFocusLost"]}]
       69 GETUPVAL                         R23 6
       70 GETTABLEKS                       R23 R23 K43 ["Medium"]
       72 SETTABLEKS                       R23 R22 K33 ["size"]
       74 SETTABLEKS                       R3 R22 K38 ["text"]
       76 NEWCLOSURE                       R23 P0
       77 CAPTURE                          VAL R4
       78 SETTABLEKS                       R23 R22 K39 ["onChanged"]
       80 NEWCLOSURE                       R23 P1
       81 CAPTURE                          VAL R2
       82 SETTABLEKS                       R23 R22 K40 ["onFocusGained"]
       84 NEWCLOSURE                       R23 P2
       85 CAPTURE                          VAL R2
       86 SETTABLEKS                       R23 R22 K41 ["onFocusLost"]
       88 CALL                             R20 2 1
       89 SETTABLEKS                       R20 R19 K30 ["TextInputField"]
       91 GETUPVAL                         R20 1
       92 GETTABLEKS                       R20 R20 K5 ["createElement"]
       94 GETUPVAL                         R21 7
       95 DUPTABLE                         R22 K45 [{"text", "size", "onActivated"}]
       96 JUMPIFNOT                        R1 ; [+2]
       97 LOADK                            R23 K46 ["Close Popover"]
       98 JUMP                             ; [+1]
       99 LOADK                            R23 K47 ["Open Popover"]
      100 SETTABLEKS                       R23 R22 K38 ["text"]
      102 GETUPVAL                         R23 6
      103 GETTABLEKS                       R23 R23 K43 ["Medium"]
      105 SETTABLEKS                       R23 R22 K33 ["size"]
      107 NEWCLOSURE                       R23 P3
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R1
      110 SETTABLEKS                       R23 R22 K44 ["onActivated"]
      112 CALL                             R20 2 1
      113 SETTABLEKS                       R20 R19 K31 ["ToggleButton"]
      115 CALL                             R16 3 -1
      116 CALL                             R13 -1 1
      117 SETTABLEKS                       R13 R12 K25 ["Anchor"]
      119 GETUPVAL                         R13 1
      120 GETTABLEKS                       R13 R13 K5 ["createElement"]
      122 GETUPVAL                         R14 4
      123 GETTABLEKS                       R14 R14 K26 ["Content"]
      125 DUPTABLE                         R15 K51 [{"side", "align", "onPressedOutside"}]
      126 GETUPVAL                         R16 8
      127 GETTABLEKS                       R16 R16 K52 ["Bottom"]
      129 SETTABLEKS                       R16 R15 K48 ["side"]
      131 GETUPVAL                         R16 9
      132 GETTABLEKS                       R16 R16 K53 ["Start"]
      134 SETTABLEKS                       R16 R15 K49 ["align"]
      136 NEWCLOSURE                       R16 P4
      137 CAPTURE                          VAL R2
      138 SETTABLEKS                       R16 R15 K50 ["onPressedOutside"]
      140 GETUPVAL                         R16 1
      141 GETTABLEKS                       R16 R16 K5 ["createElement"]
      143 GETUPVAL                         R17 2
      144 DUPTABLE                         R18 K56 [{["tag"] = "col gap-small padding-medium auto-xy", ["Size"]}]
      145 GETIMPORT                        R19 K59 [UDim2.fromOffset]
      147 LOADN                            R20 300
      148 LOADN                            R21 0
      149 CALL                             R19 2 1
      150 SETTABLEKS                       R19 R18 K55 ["Size"]
      152 DUPTABLE                         R19 K63 [{"Title", "Description", "CurrentText"}]
      153 GETUPVAL                         R20 1
      154 GETTABLEKS                       R20 R20 K5 ["createElement"]
      156 GETUPVAL                         R21 3
      157 DUPTABLE                         R22 K66 [{["Text"] = "Keyboard-Aware Popover", ["tag"] = "auto-xy text-title-medium content-emphasis"}]
      158 CALL                             R20 2 1
      159 SETTABLEKS                       R20 R19 K60 ["Title"]
      161 GETUPVAL                         R20 1
      162 GETTABLEKS                       R20 R20 K5 ["createElement"]
      164 GETUPVAL                         R21 3
      165 DUPTABLE                         R22 K69 [{["Text"] = "This popover should avoid the on-screen keyboard on touch devices.", ["tag"] = "auto-xy text-body-small"}]
      166 CALL                             R20 2 1
      167 SETTABLEKS                       R20 R19 K61 ["Description"]
      169 GETUPVAL                         R20 1
      170 GETTABLEKS                       R20 R20 K5 ["createElement"]
      172 GETUPVAL                         R21 3
      173 DUPTABLE                         R22 K71 [{["Text"], ["tag"] = "auto-xy text-body-small content-subtle"}]
      174 LOADK                            R24 K72 ["Current input: \"%*\""]
      175 MOVE                             R26 R3
      176 NAMECALL                         R24 R24 K73 ["format"]
      178 CALL                             R24 2 1
      179 MOVE                             R23 R24
      180 SETTABLEKS                       R23 R22 K12 ["Text"]
      182 CALL                             R20 2 1
      183 SETTABLEKS                       R20 R19 K62 ["CurrentText"]
      185 CALL                             R16 3 -1
      186 CALL                             R13 -1 1
      187 SETTABLEKS                       R13 R12 K26 ["Content"]
      189 CALL                             R9 3 1
      190 SETTABLEKS                       R9 R8 K10 ["Popover"]
      192 CALL                             R5 3 -1
      193 RETURN                           R5 -1

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
       28 DUPTABLE                         R7 K10 [{["tag"] = "row align-x-center align-y-center size-full-3000 bg-surface-200", ["ref"]}]
       29 SETTABLEKS                       R4 R7 K9 ["ref"]
       31 DUPTABLE                         R8 K13 [{"Text", "Popover"}]
       32 GETUPVAL                         R9 0
       33 GETTABLEKS                       R9 R9 K6 ["createElement"]
       35 GETUPVAL                         R10 3
       36 DUPTABLE                         R11 K16 [{["Text"] = "Move the mouse over this area to see a tooltip", ["tag"] = "text-align-x-center"}]
       37 CALL                             R9 2 1
       38 SETTABLEKS                       R9 R8 K11 ["Text"]
       40 GETUPVAL                         R9 0
       41 GETTABLEKS                       R9 R9 K6 ["createElement"]
       43 GETUPVAL                         R10 4
       44 GETTABLEKS                       R10 R10 K17 ["Root"]
       46 DUPTABLE                         R11 K19 [{"isOpen"}]
       47 SETTABLEKS                       R1 R11 K18 ["isOpen"]
       49 DUPTABLE                         R12 K22 [{"Anchor", "Content"}]
       50 GETUPVAL                         R13 0
       51 GETTABLEKS                       R13 R13 K6 ["createElement"]
       53 GETUPVAL                         R14 4
       54 GETTABLEKS                       R14 R14 K20 ["Anchor"]
       56 DUPTABLE                         R15 K24 [{"anchorRef"}]
       57 SETTABLEKS                       R3 R15 K23 ["anchorRef"]
       59 CALL                             R13 2 1
       60 SETTABLEKS                       R13 R12 K20 ["Anchor"]
       62 GETUPVAL                         R13 0
       63 GETTABLEKS                       R13 R13 K6 ["createElement"]
       65 GETUPVAL                         R14 4
       66 GETTABLEKS                       R14 R14 K21 ["Content"]
       68 DUPTABLE                         R15 K27 [{"align", "side"}]
       69 GETTABLEKS                       R16 R0 K28 ["controls"]
       71 GETTABLEKS                       R16 R16 K25 ["align"]
       73 SETTABLEKS                       R16 R15 K25 ["align"]
       75 GETTABLEKS                       R16 R0 K28 ["controls"]
       77 GETTABLEKS                       R16 R16 K26 ["side"]
       79 SETTABLEKS                       R16 R15 K26 ["side"]
       81 GETUPVAL                         R16 0
       82 GETTABLEKS                       R16 R16 K6 ["createElement"]
       84 GETUPVAL                         R17 2
       85 DUPTABLE                         R18 K30 [{["tag"] = "col gap-small padding-medium auto-xy"}]
       86 DUPTABLE                         R19 K32 [{"Title"}]
       87 GETUPVAL                         R20 0
       88 GETTABLEKS                       R20 R20 K6 ["createElement"]
       90 GETUPVAL                         R21 3
       91 DUPTABLE                         R22 K35 [{["Text"] = "Can't close unless you are in the area", ["tag"] = "auto-xy text-title-medium content-emphasis"}]
       92 CALL                             R20 2 1
       93 SETTABLEKS                       R20 R19 K31 ["Title"]
       95 CALL                             R16 3 -1
       96 CALL                             R13 -1 1
       97 SETTABLEKS                       R13 R12 K21 ["Content"]
       99 CALL                             R9 3 1
      100 SETTABLEKS                       R9 R8 K12 ["Popover"]
      102 CALL                             R5 3 -1
      103 RETURN                           R5 -1

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
       28 DUPTABLE                         R7 K12 [{["tag"] = "align-x-center align-y-center size-full-3000 bg-surface-200", ["stateLayer"], ["onActivated"], ["ref"]}]
       29 DUPTABLE                         R8 K14 [{"affordance"}]
       30 GETUPVAL                         R9 3
       31 GETTABLEKS                       R9 R9 K15 ["None"]
       33 SETTABLEKS                       R9 R8 K13 ["affordance"]
       35 SETTABLEKS                       R8 R7 K9 ["stateLayer"]
       37 DUPCLOSURE                       R8 K16 [PROTO_24]
       38 SETTABLEKS                       R8 R7 K10 ["onActivated"]
       40 SETTABLEKS                       R4 R7 K11 ["ref"]
       42 DUPTABLE                         R8 K19 [{"Text", "Popover"}]
       43 GETUPVAL                         R9 0
       44 GETTABLEKS                       R9 R9 K6 ["createElement"]
       46 GETUPVAL                         R10 4
       47 DUPTABLE                         R11 K22 [{["Text"] = "Right-click on this area to open the context menu.", ["tag"] = "text-align-x-center size-full-full"}]
       48 CALL                             R9 2 1
       49 SETTABLEKS                       R9 R8 K17 ["Text"]
       51 GETUPVAL                         R9 0
       52 GETTABLEKS                       R9 R9 K6 ["createElement"]
       54 GETUPVAL                         R10 5
       55 GETTABLEKS                       R10 R10 K23 ["Root"]
       57 DUPTABLE                         R11 K25 [{"isOpen"}]
       58 SETTABLEKS                       R1 R11 K24 ["isOpen"]
       60 DUPTABLE                         R12 K28 [{"Anchor", "Content"}]
       61 GETUPVAL                         R13 0
       62 GETTABLEKS                       R13 R13 K6 ["createElement"]
       64 GETUPVAL                         R14 5
       65 GETTABLEKS                       R14 R14 K26 ["Anchor"]
       67 DUPTABLE                         R15 K30 [{"anchorRef"}]
       68 SETTABLEKS                       R3 R15 K29 ["anchorRef"]
       70 CALL                             R13 2 1
       71 SETTABLEKS                       R13 R12 K26 ["Anchor"]
       73 GETUPVAL                         R13 0
       74 GETTABLEKS                       R13 R13 K6 ["createElement"]
       76 GETUPVAL                         R14 5
       77 GETTABLEKS                       R14 R14 K27 ["Content"]
       79 DUPTABLE                         R15 K34 [{"align", "side", "onPressedOutside"}]
       80 GETTABLEKS                       R16 R0 K35 ["controls"]
       82 GETTABLEKS                       R16 R16 K31 ["align"]
       84 SETTABLEKS                       R16 R15 K31 ["align"]
       86 GETTABLEKS                       R16 R0 K35 ["controls"]
       88 GETTABLEKS                       R16 R16 K32 ["side"]
       90 SETTABLEKS                       R16 R15 K32 ["side"]
       92 NEWCLOSURE                       R16 P2
       93 CAPTURE                          VAL R2
       94 SETTABLEKS                       R16 R15 K33 ["onPressedOutside"]
       96 GETUPVAL                         R16 0
       97 GETTABLEKS                       R16 R16 K6 ["createElement"]
       99 GETUPVAL                         R17 2
      100 DUPTABLE                         R18 K37 [{["tag"] = "col gap-small padding-medium auto-xy"}]
      101 DUPTABLE                         R19 K40 [{"Text1", "Text2"}]
      102 GETUPVAL                         R20 0
      103 GETTABLEKS                       R20 R20 K6 ["createElement"]
      105 GETUPVAL                         R21 4
      106 DUPTABLE                         R22 K43 [{["Text"] = "Context Menu", ["tag"] = "auto-xy text-title-medium content-emphasis"}]
      107 CALL                             R20 2 1
      108 SETTABLEKS                       R20 R19 K38 ["Text1"]
      110 GETUPVAL                         R20 0
      111 GETTABLEKS                       R20 R20 K6 ["createElement"]
      113 GETUPVAL                         R21 4
      114 DUPTABLE                         R22 K46 [{["Text"] = "Right-click functionality enabled.", ["tag"] = "auto-xy text-body-small"}]
      115 CALL                             R20 2 1
      116 SETTABLEKS                       R20 R19 K39 ["Text2"]
      118 CALL                             R16 3 -1
      119 CALL                             R13 -1 1
      120 SETTABLEKS                       R13 R12 K27 ["Content"]
      122 CALL                             R9 3 1
      123 SETTABLEKS                       R9 R8 K18 ["Popover"]
      125 CALL                             R5 3 -1
      126 RETURN                           R5 -1

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
       28 GETTABLEKS                       R6 R0 K11 ["Utility"]
       30 GETTABLEKS                       R6 R6 K12 ["Flags"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K13 ["Enums"]
       37 GETTABLEKS                       R7 R7 K14 ["InputSize"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K9 ["Components"]
       44 GETTABLEKS                       R8 R8 K15 ["Popover"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K13 ["Enums"]
       51 GETTABLEKS                       R9 R9 K16 ["PopoverAlign"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K13 ["Enums"]
       58 GETTABLEKS                       R10 R10 K17 ["PopoverSide"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K13 ["Enums"]
       65 GETTABLEKS                       R11 R11 K18 ["Radius"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R12 R0 K13 ["Enums"]
       72 GETTABLEKS                       R12 R12 K19 ["StateLayerAffordance"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [require]
       77 GETTABLEKS                       R13 R0 K9 ["Components"]
       79 GETTABLEKS                       R13 R13 K20 ["Text"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K6 [require]
       84 GETTABLEKS                       R14 R0 K9 ["Components"]
       86 GETTABLEKS                       R14 R14 K21 ["TextInput"]
       88 CALL                             R13 1 1
       89 GETIMPORT                        R14 K6 [require]
       91 GETTABLEKS                       R15 R0 K9 ["Components"]
       93 GETTABLEKS                       R15 R15 K22 ["Types"]
       95 CALL                             R14 1 1
       96 GETIMPORT                        R15 K6 [require]
       98 GETTABLEKS                       R16 R0 K9 ["Components"]
      100 GETTABLEKS                       R16 R16 K23 ["View"]
      102 CALL                             R15 1 1
      103 GETIMPORT                        R16 K6 [require]
      105 GETTABLEKS                       R17 R0 K9 ["Components"]
      107 GETTABLEKS                       R17 R17 K15 ["Popover"]
      109 GETTABLEKS                       R17 R17 K24 ["useMeasurableRef"]
      111 CALL                             R16 1 1
      112 GETIMPORT                        R17 K6 [require]
      114 GETTABLEKS                       R18 R0 K25 ["Providers"]
      116 GETTABLEKS                       R18 R18 K26 ["Style"]
      118 GETTABLEKS                       R18 R18 K27 ["useTokens"]
      120 CALL                             R17 1 1
      121 DUPCLOSURE                       R18 K28 [PROTO_0]
      122 CAPTURE                          VAL R17
      123 NEWTABLE                         R19 0 4
      125 LOADK                            R20 K29 ["Default"]
      126 LOADK                            R21 K30 ["Surface_0"]
      127 LOADK                            R22 K31 ["Surface_200"]
      128 LOADK                            R23 K32 ["ActionAlert"]
      129 SETLIST                          R19 R20 4 [1]
      131 DUPTABLE                         R20 K36 [{["summary"] = "Popover", ["stories"], ["controls"]}]
      132 DUPTABLE                         R21 K43 [{"Basic", "ClickOutside", "AnchorRef", "KeyboardAware", "MousePositionTooltip", "ContextMenu"}]
      133 DUPTABLE                         R22 K46 [{["name"] = "Basic", ["story"]}]
      134 DUPCLOSURE                       R23 K47 [PROTO_2]
      135 CAPTURE                          VAL R17
      136 CAPTURE                          VAL R3
      137 CAPTURE                          VAL R15
      138 CAPTURE                          VAL R7
      139 CAPTURE                          VAL R12
      140 CAPTURE                          VAL R4
      141 CAPTURE                          VAL R6
      142 SETTABLEKS                       R23 R22 K45 ["story"]
      144 SETTABLEKS                       R22 R21 K37 ["Basic"]
      146 DUPTABLE                         R22 K49 [{["name"] = "Click Outside", ["story"]}]
      147 DUPCLOSURE                       R23 K50 [PROTO_5]
      148 CAPTURE                          VAL R3
      149 CAPTURE                          VAL R15
      150 CAPTURE                          VAL R7
      151 CAPTURE                          VAL R12
      152 CAPTURE                          VAL R4
      153 CAPTURE                          VAL R6
      154 SETTABLEKS                       R23 R22 K45 ["story"]
      156 SETTABLEKS                       R22 R21 K38 ["ClickOutside"]
      158 DUPTABLE                         R22 K52 [{["name"] = "Anchor Reference", ["story"]}]
      159 DUPCLOSURE                       R23 K53 [PROTO_8]
      160 CAPTURE                          VAL R3
      161 CAPTURE                          VAL R15
      162 CAPTURE                          VAL R4
      163 CAPTURE                          VAL R6
      164 CAPTURE                          VAL R7
      165 CAPTURE                          VAL R12
      166 SETTABLEKS                       R23 R22 K45 ["story"]
      168 SETTABLEKS                       R22 R21 K39 ["AnchorRef"]
      170 DUPTABLE                         R22 K55 [{["name"] = "Keyboard Aware Input", ["story"]}]
      171 DUPCLOSURE                       R23 K56 [PROTO_15]
      172 CAPTURE                          VAL R5
      173 CAPTURE                          VAL R3
      174 CAPTURE                          VAL R15
      175 CAPTURE                          VAL R12
      176 CAPTURE                          VAL R7
      177 CAPTURE                          VAL R13
      178 CAPTURE                          VAL R6
      179 CAPTURE                          VAL R4
      180 CAPTURE                          VAL R9
      181 CAPTURE                          VAL R8
      182 SETTABLEKS                       R23 R22 K45 ["story"]
      184 SETTABLEKS                       R22 R21 K40 ["KeyboardAware"]
      186 DUPTABLE                         R22 K57 [{["name"] = "MousePositionTooltip", ["story"]}]
      187 DUPCLOSURE                       R23 K58 [PROTO_20]
      188 CAPTURE                          VAL R3
      189 CAPTURE                          VAL R16
      190 CAPTURE                          VAL R15
      191 CAPTURE                          VAL R12
      192 CAPTURE                          VAL R7
      193 SETTABLEKS                       R23 R22 K45 ["story"]
      195 SETTABLEKS                       R22 R21 K41 ["MousePositionTooltip"]
      197 DUPTABLE                         R22 K60 [{["name"] = "Context menu", ["story"]}]
      198 DUPCLOSURE                       R23 K61 [PROTO_26]
      199 CAPTURE                          VAL R3
      200 CAPTURE                          VAL R16
      201 CAPTURE                          VAL R15
      202 CAPTURE                          VAL R11
      203 CAPTURE                          VAL R12
      204 CAPTURE                          VAL R7
      205 SETTABLEKS                       R23 R22 K45 ["story"]
      207 SETTABLEKS                       R22 R21 K42 ["ContextMenu"]
      209 SETTABLEKS                       R21 R20 K34 ["stories"]
      211 DUPTABLE                         R21 K67 [{"side", "align", "radius", "backgroundStyle", "keyboardAware"}]
      212 GETTABLEKS                       R22 R2 K68 ["values"]
      214 MOVE                             R23 R9
      215 CALL                             R22 1 1
      216 SETTABLEKS                       R22 R21 K62 ["side"]
      218 GETTABLEKS                       R22 R2 K68 ["values"]
      220 MOVE                             R23 R8
      221 CALL                             R22 1 1
      222 SETTABLEKS                       R22 R21 K63 ["align"]
      224 NEWTABLE                         R22 0 3
      226 GETTABLEKS                       R23 R10 K69 ["Small"]
      228 GETTABLEKS                       R24 R10 K70 ["Medium"]
      230 GETTABLEKS                       R25 R10 K71 ["Circle"]
      232 SETLIST                          R22 R23 3 [1]
      234 SETTABLEKS                       R22 R21 K64 ["radius"]
      236 SETTABLEKS                       R19 R21 K65 ["backgroundStyle"]
      238 GETTABLEKS                       R22 R5 K72 ["FoundationPopoverOnScreenKeyboard"]
      240 SETTABLEKS                       R22 R21 K66 ["keyboardAware"]
      242 SETTABLEKS                       R21 R20 K35 ["controls"]
      244 RETURN                           R20 1
