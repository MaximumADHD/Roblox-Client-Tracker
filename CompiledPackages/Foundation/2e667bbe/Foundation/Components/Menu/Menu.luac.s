PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETTABLEKS                       R5 R3 K0 ["Stroke"]
        8 GETTABLEKS                       R4 R5 K1 ["Standard"]
       10 GETUPVAL                         R6 3
       11 GETTABLEKS                       R5 R6 K2 ["createElement"]
       13 GETUPVAL                         R7 4
       14 GETTABLEKS                       R6 R7 K3 ["Root"]
       16 DUPTABLE                         R7 K6 [{"isOpen", "testId"}]
       17 GETTABLEKS                       R8 R2 K4 ["isOpen"]
       19 SETTABLEKS                       R8 R7 K4 ["isOpen"]
       21 GETTABLEKS                       R8 R2 K5 ["testId"]
       23 SETTABLEKS                       R8 R7 K5 ["testId"]
       25 DUPTABLE                         R8 K9 [{"Anchor", "Content"}]
       26 GETUPVAL                         R10 3
       27 GETTABLEKS                       R9 R10 K2 ["createElement"]
       29 GETUPVAL                         R11 4
       30 GETTABLEKS                       R10 R11 K7 ["Anchor"]
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
       50 GETUPVAL                         R10 3
       51 GETTABLEKS                       R9 R10 K2 ["createElement"]
       53 GETUPVAL                         R11 4
       54 GETTABLEKS                       R10 R11 K8 ["Content"]
       56 DUPTABLE                         R11 K19 [{"side", "align", "hasArrow", "onPressedOutside", "backgroundStyle", "ref"}]
       57 DUPTABLE                         R12 K22 [{"position", "offset"}]
       58 GETTABLEKS                       R13 R2 K13 ["side"]
       60 SETTABLEKS                       R13 R12 K20 ["position"]
       62 GETTABLEKS                       R15 R3 K23 ["Padding"]
       64 GETTABLEKS                       R14 R15 K24 ["Small"]
       66 ADD                              R13 R4 R14
       67 SETTABLEKS                       R13 R12 K21 ["offset"]
       69 SETTABLEKS                       R12 R11 K13 ["side"]
       71 GETTABLEKS                       R12 R2 K14 ["align"]
       73 SETTABLEKS                       R12 R11 K14 ["align"]
       75 LOADB                            R12 0
       76 SETTABLEKS                       R12 R11 K15 ["hasArrow"]
       78 GETTABLEKS                       R12 R2 K16 ["onPressedOutside"]
       80 SETTABLEKS                       R12 R11 K16 ["onPressedOutside"]
       82 GETTABLEKS                       R14 R3 K25 ["Color"]
       84 GETTABLEKS                       R13 R14 K26 ["Surface"]
       86 GETTABLEKS                       R12 R13 K27 ["Surface_100"]
       88 SETTABLEKS                       R12 R11 K17 ["backgroundStyle"]
       90 SETTABLEKS                       R1 R11 K18 ["ref"]
       92 GETUPVAL                         R13 3
       93 GETTABLEKS                       R12 R13 K2 ["createElement"]
       95 GETUPVAL                         R14 3
       96 GETTABLEKS                       R13 R14 K28 ["Fragment"]
       98 LOADNIL                          R14
       99 DUPTABLE                         R15 K31 [{"Menu", "Border"}]
      100 GETUPVAL                         R17 3
      101 GETTABLEKS                       R16 R17 K2 ["createElement"]
      103 GETUPVAL                         R18 6
      104 GETTABLEKS                       R17 R18 K3 ["Root"]
      106 DUPTABLE                         R18 K36 [{"items", "size", "width", "onActivated"}]
      107 GETTABLEKS                       R19 R2 K32 ["items"]
      109 SETTABLEKS                       R19 R18 K32 ["items"]
      111 GETTABLEKS                       R19 R2 K33 ["size"]
      113 SETTABLEKS                       R19 R18 K33 ["size"]
      115 GETTABLEKS                       R19 R2 K34 ["width"]
      117 SETTABLEKS                       R19 R18 K34 ["width"]
      119 GETTABLEKS                       R19 R2 K35 ["onActivated"]
      121 SETTABLEKS                       R19 R18 K35 ["onActivated"]
      123 CALL                             R16 2 1
      124 SETTABLEKS                       R16 R15 K29 ["Menu"]
      126 GETUPVAL                         R17 3
      127 GETTABLEKS                       R16 R17 K2 ["createElement"]
      129 LOADK                            R17 K37 ["UIStroke"]
      130 DUPTABLE                         R18 K40 [{"Color", "Transparency", "Thickness"}]
      131 GETTABLEKS                       R22 R3 K25 ["Color"]
      133 GETTABLEKS                       R21 R22 K0 ["Stroke"]
      135 GETTABLEKS                       R20 R21 K41 ["Default"]
      137 GETTABLEKS                       R19 R20 K42 ["Color3"]
      139 SETTABLEKS                       R19 R18 K25 ["Color"]
      141 GETTABLEKS                       R22 R3 K25 ["Color"]
      143 GETTABLEKS                       R21 R22 K0 ["Stroke"]
      145 GETTABLEKS                       R20 R21 K41 ["Default"]
      147 GETTABLEKS                       R19 R20 K38 ["Transparency"]
      149 SETTABLEKS                       R19 R18 K38 ["Transparency"]
      151 SETTABLEKS                       R4 R18 K39 ["Thickness"]
      153 CALL                             R16 2 1
      154 SETTABLEKS                       R16 R15 K30 ["Border"]
      156 CALL                             R12 3 -1
      157 CALL                             R9 -1 1
      158 SETTABLEKS                       R9 R8 K8 ["Content"]
      160 CALL                             R5 3 -1
      161 RETURN                           R5 -1

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
       18 GETTABLEKS                       R4 R5 K9 ["Types"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R6 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R6 K10 ["Popover"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R7 R0 K8 ["Components"]
       32 GETTABLEKS                       R6 R7 K11 ["BaseMenu"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R9 R0 K12 ["Providers"]
       39 GETTABLEKS                       R8 R9 K13 ["Style"]
       41 GETTABLEKS                       R7 R8 K14 ["useTokens"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R9 R0 K15 ["Utility"]
       48 GETTABLEKS                       R8 R9 K16 ["withDefaults"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R10 R0 K15 ["Utility"]
       55 GETTABLEKS                       R9 R10 K17 ["withCommonProps"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETTABLEKS                       R11 R0 K18 ["Enums"]
       62 GETTABLEKS                       R10 R11 K19 ["PopoverSide"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R12 R0 K18 ["Enums"]
       69 GETTABLEKS                       R11 R12 K20 ["PopoverAlign"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R13 R0 K18 ["Enums"]
       76 GETTABLEKS                       R12 R13 K21 ["InputSize"]
       78 CALL                             R11 1 1
       79 DUPTABLE                         R12 K26 [{"size", "side", "align", "testId"}]
       80 GETTABLEKS                       R13 R11 K27 ["Medium"]
       82 SETTABLEKS                       R13 R12 K22 ["size"]
       84 GETTABLEKS                       R13 R9 K28 ["Bottom"]
       86 SETTABLEKS                       R13 R12 K23 ["side"]
       88 GETTABLEKS                       R13 R10 K29 ["Start"]
       90 SETTABLEKS                       R13 R12 K24 ["align"]
       92 LOADK                            R13 K30 ["--foundation-menu"]
       93 SETTABLEKS                       R13 R12 K25 ["testId"]
       95 DUPCLOSURE                       R13 K31 [PROTO_0]
       96 CAPTURE                          VAL R7
       97 CAPTURE                          VAL R12
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R4
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R5
      103 GETTABLEKS                       R14 R2 K32 ["memo"]
      105 GETTABLEKS                       R15 R2 K33 ["forwardRef"]
      107 MOVE                             R16 R13
      108 CALL                             R15 1 -1
      109 CALL                             R14 -1 -1
      110 RETURN                           R14 -1
