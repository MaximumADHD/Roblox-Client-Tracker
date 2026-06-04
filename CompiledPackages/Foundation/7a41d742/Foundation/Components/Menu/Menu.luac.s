PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETTABLEKS                       R4 R3 K0 ["Stroke"]
        8 GETTABLEKS                       R4 R4 K1 ["Standard"]
       10 GETUPVAL                         R5 3
       11 GETTABLEKS                       R5 R5 K2 ["createElement"]
       13 GETUPVAL                         R6 4
       14 GETTABLEKS                       R6 R6 K3 ["Root"]
       16 DUPTABLE                         R7 K6 [{"isOpen", "testId"}]
       17 GETTABLEKS                       R8 R2 K4 ["isOpen"]
       19 SETTABLEKS                       R8 R7 K4 ["isOpen"]
       21 GETTABLEKS                       R8 R2 K5 ["testId"]
       23 SETTABLEKS                       R8 R7 K5 ["testId"]
       25 DUPTABLE                         R8 K9 [{"Anchor", "Content"}]
       26 GETUPVAL                         R9 3
       27 GETTABLEKS                       R9 R9 K2 ["createElement"]
       29 GETUPVAL                         R10 4
       30 GETTABLEKS                       R10 R10 K7 ["Anchor"]
       32 GETUPVAL                         R11 5
       33 MOVE                             R12 R2
       34 DUPTABLE                         R13 K11 [{"anchorRef"}]
       35 GETTABLEKS                       R14 R2 K10 ["anchorRef"]
       37 SETTABLEKS                       R14 R13 K10 ["anchorRef"]
       39 CALL                             R11 2 1
       40 GETTABLEKS                       R13 R2 K10 ["anchorRef"]
       42 JUMPIFNOT                        R13 ; [+2]
       43 LOADNIL                          R12
       44 JUMP                             ; [+2]
       45 GETTABLEKS                       R12 R2 K12 ["children"]
       47 CALL                             R9 3 1
       48 SETTABLEKS                       R9 R8 K7 ["Anchor"]
       50 GETUPVAL                         R9 3
       51 GETTABLEKS                       R9 R9 K2 ["createElement"]
       53 GETUPVAL                         R10 4
       54 GETTABLEKS                       R10 R10 K8 ["Content"]
       56 DUPTABLE                         R11 K22 [{"side", "align", "hasArrow", "onPressedOutside", "backgroundStyle", "radius", "ref", "selection", "selectionGroup"}]
       57 DUPTABLE                         R12 K25 [{"position", "offset"}]
       58 GETTABLEKS                       R13 R2 K13 ["side"]
       60 SETTABLEKS                       R13 R12 K23 ["position"]
       62 GETTABLEKS                       R14 R3 K26 ["Padding"]
       64 GETTABLEKS                       R14 R14 K27 ["Small"]
       66 ADD                              R13 R4 R14
       67 SETTABLEKS                       R13 R12 K24 ["offset"]
       69 SETTABLEKS                       R12 R11 K13 ["side"]
       71 GETTABLEKS                       R12 R2 K14 ["align"]
       73 SETTABLEKS                       R12 R11 K14 ["align"]
       75 LOADB                            R12 0
       76 SETTABLEKS                       R12 R11 K15 ["hasArrow"]
       78 GETTABLEKS                       R12 R2 K16 ["onPressedOutside"]
       80 SETTABLEKS                       R12 R11 K16 ["onPressedOutside"]
       82 GETTABLEKS                       R12 R3 K28 ["Color"]
       84 GETTABLEKS                       R12 R12 K29 ["Surface"]
       86 GETTABLEKS                       R12 R12 K30 ["Surface_100"]
       88 SETTABLEKS                       R12 R11 K17 ["backgroundStyle"]
       90 GETUPVAL                         R13 6
       91 GETTABLEKS                       R13 R13 K31 ["FoundationBaseMenuBorderFix"]
       93 JUMPIFNOT                        R13 ; [+4]
       94 GETUPVAL                         R12 7
       95 GETTABLEKS                       R12 R12 K32 ["Medium"]
       97 JUMP                             ; [+1]
       98 LOADNIL                          R12
       99 SETTABLEKS                       R12 R11 K18 ["radius"]
      101 SETTABLEKS                       R1 R11 K19 ["ref"]
      103 GETTABLEKS                       R12 R2 K20 ["selection"]
      105 SETTABLEKS                       R12 R11 K20 ["selection"]
      107 GETTABLEKS                       R12 R2 K21 ["selectionGroup"]
      109 SETTABLEKS                       R12 R11 K21 ["selectionGroup"]
      111 GETUPVAL                         R12 3
      112 GETTABLEKS                       R12 R12 K2 ["createElement"]
      114 GETUPVAL                         R13 3
      115 GETTABLEKS                       R13 R13 K33 ["Fragment"]
      117 LOADNIL                          R14
      118 DUPTABLE                         R15 K36 [{"Menu", "Border"}]
      119 GETUPVAL                         R16 3
      120 GETTABLEKS                       R16 R16 K2 ["createElement"]
      122 GETUPVAL                         R17 8
      123 GETTABLEKS                       R17 R17 K3 ["Root"]
      125 DUPTABLE                         R18 K41 [{"items", "size", "width", "onActivated", "radius"}]
      126 GETTABLEKS                       R19 R2 K37 ["items"]
      128 SETTABLEKS                       R19 R18 K37 ["items"]
      130 GETTABLEKS                       R19 R2 K38 ["size"]
      132 SETTABLEKS                       R19 R18 K38 ["size"]
      134 GETTABLEKS                       R19 R2 K39 ["width"]
      136 SETTABLEKS                       R19 R18 K39 ["width"]
      138 GETTABLEKS                       R19 R2 K40 ["onActivated"]
      140 SETTABLEKS                       R19 R18 K40 ["onActivated"]
      142 GETUPVAL                         R20 6
      143 GETTABLEKS                       R20 R20 K31 ["FoundationBaseMenuBorderFix"]
      145 JUMPIFNOT                        R20 ; [+4]
      146 GETUPVAL                         R19 7
      147 GETTABLEKS                       R19 R19 K32 ["Medium"]
      149 JUMP                             ; [+1]
      150 LOADNIL                          R19
      151 SETTABLEKS                       R19 R18 K18 ["radius"]
      153 CALL                             R16 2 1
      154 SETTABLEKS                       R16 R15 K34 ["Menu"]
      156 GETUPVAL                         R17 6
      157 GETTABLEKS                       R17 R17 K31 ["FoundationBaseMenuBorderFix"]
      159 JUMPIFNOT                        R17 ; [+2]
      160 LOADNIL                          R16
      161 JUMP                             ; [+28]
      162 GETUPVAL                         R16 3
      163 GETTABLEKS                       R16 R16 K2 ["createElement"]
      165 LOADK                            R17 K42 ["UIStroke"]
      166 DUPTABLE                         R18 K45 [{"Color", "Transparency", "Thickness"}]
      167 GETTABLEKS                       R19 R3 K28 ["Color"]
      169 GETTABLEKS                       R19 R19 K0 ["Stroke"]
      171 GETTABLEKS                       R19 R19 K46 ["Default"]
      173 GETTABLEKS                       R19 R19 K47 ["Color3"]
      175 SETTABLEKS                       R19 R18 K28 ["Color"]
      177 GETTABLEKS                       R19 R3 K28 ["Color"]
      179 GETTABLEKS                       R19 R19 K0 ["Stroke"]
      181 GETTABLEKS                       R19 R19 K46 ["Default"]
      183 GETTABLEKS                       R19 R19 K43 ["Transparency"]
      185 SETTABLEKS                       R19 R18 K43 ["Transparency"]
      187 SETTABLEKS                       R4 R18 K44 ["Thickness"]
      189 CALL                             R16 2 1
      190 SETTABLEKS                       R16 R15 K35 ["Border"]
      192 CALL                             R12 3 -1
      193 CALL                             R9 -1 1
      194 SETTABLEKS                       R9 R8 K8 ["Content"]
      196 CALL                             R5 3 -1
      197 RETURN                           R5 -1

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
       18 GETTABLEKS                       R4 R4 K9 ["BaseMenu"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Utility"]
       25 GETTABLEKS                       R5 R5 K11 ["Flags"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Components"]
       32 GETTABLEKS                       R6 R6 K12 ["Popover"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K8 ["Components"]
       39 GETTABLEKS                       R7 R7 K13 ["Types"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K14 ["Providers"]
       46 GETTABLEKS                       R8 R8 K15 ["Style"]
       48 GETTABLEKS                       R8 R8 K16 ["useTokens"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R9 R0 K10 ["Utility"]
       55 GETTABLEKS                       R9 R9 K17 ["withCommonProps"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETTABLEKS                       R10 R0 K10 ["Utility"]
       62 GETTABLEKS                       R10 R10 K18 ["withDefaults"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R11 R0 K19 ["Enums"]
       69 GETTABLEKS                       R11 R11 K20 ["InputSize"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R12 R0 K19 ["Enums"]
       76 GETTABLEKS                       R12 R12 K21 ["PopoverAlign"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K6 [require]
       81 GETTABLEKS                       R13 R0 K19 ["Enums"]
       83 GETTABLEKS                       R13 R13 K22 ["PopoverSide"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K6 [require]
       88 GETTABLEKS                       R14 R0 K19 ["Enums"]
       90 GETTABLEKS                       R14 R14 K23 ["Radius"]
       92 CALL                             R13 1 1
       93 DUPTABLE                         R14 K28 [{"size", "side", "align", "testId"}]
       94 GETTABLEKS                       R15 R10 K29 ["Medium"]
       96 SETTABLEKS                       R15 R14 K24 ["size"]
       98 GETTABLEKS                       R15 R12 K30 ["Bottom"]
      100 SETTABLEKS                       R15 R14 K25 ["side"]
      102 GETTABLEKS                       R15 R11 K31 ["Start"]
      104 SETTABLEKS                       R15 R14 K26 ["align"]
      106 LOADK                            R15 K32 ["--foundation-menu"]
      107 SETTABLEKS                       R15 R14 K27 ["testId"]
      109 DUPCLOSURE                       R15 K33 [PROTO_0]
      110 CAPTURE                          VAL R9
      111 CAPTURE                          VAL R14
      112 CAPTURE                          VAL R7
      113 CAPTURE                          VAL R2
      114 CAPTURE                          VAL R5
      115 CAPTURE                          VAL R8
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R13
      118 CAPTURE                          VAL R3
      119 GETTABLEKS                       R16 R2 K34 ["memo"]
      121 GETTABLEKS                       R17 R2 K35 ["forwardRef"]
      123 MOVE                             R18 R15
      124 CALL                             R17 1 -1
      125 CALL                             R16 -1 -1
      126 RETURN                           R16 -1
