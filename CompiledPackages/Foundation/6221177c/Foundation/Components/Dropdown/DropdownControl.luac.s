PROTO_0:
        0 DUPTABLE                         R0 K3 [{"radius", "offset", "borderWidth"}]
        1 GETIMPORT                        R1 K6 [UDim.new]
        3 LOADN                            R2 0
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K7 ["Radius"]
        7 GETTABLEKS                       R3 R4 K8 ["Small"]
        9 CALL                             R1 2 1
       10 SETTABLEKS                       R1 R0 K0 ["radius"]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K9 ["Size"]
       15 GETTABLEKS                       R1 R2 K10 ["Size_200"]
       17 SETTABLEKS                       R1 R0 K1 ["offset"]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R2 R3 K11 ["Stroke"]
       22 GETTABLEKS                       R1 R2 K12 ["Thicker"]
       24 SETTABLEKS                       R1 R0 K2 ["borderWidth"]
       26 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K10 [{"onStateChanged", "isDisabled", "onActivated", "selection", "cursor", "stateLayer", "tag", "ref", "testId"}]
        5 GETUPVAL                         R4 2
        6 SETTABLEKS                       R4 R3 K1 ["onStateChanged"]
        8 GETUPVAL                         R5 3
        9 GETTABLEKS                       R4 R5 K2 ["isDisabled"]
       11 SETTABLEKS                       R4 R3 K2 ["isDisabled"]
       13 GETUPVAL                         R5 3
       14 GETTABLEKS                       R4 R5 K3 ["onActivated"]
       16 SETTABLEKS                       R4 R3 K3 ["onActivated"]
       18 DUPTABLE                         R4 K12 [{"Selectable"}]
       19 GETUPVAL                         R7 3
       20 GETTABLEKS                       R6 R7 K2 ["isDisabled"]
       22 NOT                              R5 R6
       23 SETTABLEKS                       R5 R4 K11 ["Selectable"]
       25 SETTABLEKS                       R4 R3 K4 ["selection"]
       27 GETUPVAL                         R4 4
       28 SETTABLEKS                       R4 R3 K5 ["cursor"]
       30 DUPTABLE                         R4 K14 [{"affordance"}]
       31 GETUPVAL                         R6 5
       32 GETTABLEKS                       R5 R6 K15 ["None"]
       34 SETTABLEKS                       R5 R4 K13 ["affordance"]
       36 SETTABLEKS                       R4 R3 K6 ["stateLayer"]
       38 GETUPVAL                         R6 6
       39 GETTABLEKS                       R5 R6 K16 ["container"]
       41 GETTABLEKS                       R4 R5 K7 ["tag"]
       43 SETTABLEKS                       R4 R3 K7 ["tag"]
       45 GETUPVAL                         R5 3
       46 GETTABLEKS                       R4 R5 K17 ["inputRef"]
       48 SETTABLEKS                       R4 R3 K8 ["ref"]
       50 LOADK                            R5 K18 ["%*--control"]
       51 GETUPVAL                         R8 3
       52 GETTABLEKS                       R7 R8 K9 ["testId"]
       54 NAMECALL                         R5 R5 K19 ["format"]
       56 CALL                             R5 2 1
       57 MOVE                             R4 R5
       58 SETTABLEKS                       R4 R3 K9 ["testId"]
       60 DUPTABLE                         R4 K22 [{"Text", "Arrow"}]
       61 GETUPVAL                         R6 0
       62 GETTABLEKS                       R5 R6 K0 ["createElement"]
       64 GETUPVAL                         R6 7
       65 DUPTABLE                         R7 K24 [{"LayoutOrder", "Text", "tag"}]
       66 LOADN                            R8 1
       67 SETTABLEKS                       R8 R7 K23 ["LayoutOrder"]
       69 GETUPVAL                         R10 3
       70 GETTABLEKS                       R9 R10 K25 ["item"]
       72 JUMPIFNOT                        R9 ; [+6]
       73 GETUPVAL                         R10 3
       74 GETTABLEKS                       R9 R10 K25 ["item"]
       76 GETTABLEKS                       R8 R9 K26 ["text"]
       78 JUMP                             ; [+3]
       79 GETUPVAL                         R9 3
       80 GETTABLEKS                       R8 R9 K27 ["placeholder"]
       82 SETTABLEKS                       R8 R7 K20 ["Text"]
       84 GETUPVAL                         R10 6
       85 GETTABLEKS                       R9 R10 K26 ["text"]
       87 GETTABLEKS                       R8 R9 K7 ["tag"]
       89 SETTABLEKS                       R8 R7 K7 ["tag"]
       91 CALL                             R5 2 1
       92 SETTABLEKS                       R5 R4 K20 ["Text"]
       94 GETUPVAL                         R6 0
       95 GETTABLEKS                       R5 R6 K0 ["createElement"]
       97 GETUPVAL                         R6 8
       98 DUPTABLE                         R7 K31 [{"LayoutOrder", "name", "size", "style", "tag", "testId"}]
       99 LOADN                            R8 2
      100 SETTABLEKS                       R8 R7 K23 ["LayoutOrder"]
      102 GETUPVAL                         R10 3
      103 GETTABLEKS                       R9 R10 K32 ["isMenuOpen"]
      105 JUMPIFNOT                        R9 ; [+2]
      106 GETUPVAL                         R8 9
      107 JUMP                             ; [+1]
      108 GETUPVAL                         R8 10
      109 SETTABLEKS                       R8 R7 K28 ["name"]
      111 GETUPVAL                         R10 6
      112 GETTABLEKS                       R9 R10 K33 ["arrow"]
      114 GETTABLEKS                       R8 R9 K29 ["size"]
      116 SETTABLEKS                       R8 R7 K29 ["size"]
      118 GETUPVAL                         R10 11
      119 GETTABLEKS                       R9 R10 K34 ["FoundationMutedDropdownArrow"]
      121 JUMPIFNOT                        R9 ; [+12]
      122 GETUPVAL                         R10 3
      123 GETTABLEKS                       R9 R10 K2 ["isDisabled"]
      125 JUMPIFNOT                        R9 ; [+8]
      126 GETUPVAL                         R11 12
      127 GETTABLEKS                       R10 R11 K35 ["Color"]
      129 GETTABLEKS                       R9 R10 K36 ["Content"]
      131 GETTABLEKS                       R8 R9 K37 ["Muted"]
      133 JUMP                             ; [+1]
      134 LOADNIL                          R8
      135 SETTABLEKS                       R8 R7 K30 ["style"]
      137 GETUPVAL                         R10 6
      138 GETTABLEKS                       R9 R10 K26 ["text"]
      140 GETTABLEKS                       R8 R9 K7 ["tag"]
      142 SETTABLEKS                       R8 R7 K7 ["tag"]
      144 GETUPVAL                         R10 11
      145 GETTABLEKS                       R9 R10 K34 ["FoundationMutedDropdownArrow"]
      147 JUMPIFNOT                        R9 ; [+9]
      148 LOADK                            R9 K38 ["%*--arrow"]
      149 GETUPVAL                         R12 3
      150 GETTABLEKS                       R11 R12 K9 ["testId"]
      152 NAMECALL                         R9 R9 K19 ["format"]
      154 CALL                             R9 2 1
      155 MOVE                             R8 R9
      156 JUMP                             ; [+1]
      157 LOADNIL                          R8
      158 SETTABLEKS                       R8 R7 K9 ["testId"]
      160 CALL                             R5 2 1
      161 SETTABLEKS                       R5 R4 K21 ["Arrow"]
      163 CALL                             R1 3 -1
      164 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R5 3
        7 GETTABLEKS                       R4 R5 K0 ["useState"]
        9 GETUPVAL                         R6 4
       10 GETTABLEKS                       R5 R6 K1 ["Initialize"]
       12 CALL                             R4 1 2
       13 GETTABLEKS                       R7 R2 K2 ["item"]
       15 JUMPIFEQKNIL                     R7 ; [+2]
       17 LOADB                            R6 0 +1
       18 LOADB                            R6 1
       19 GETUPVAL                         R7 5
       20 MOVE                             R8 R3
       21 GETTABLEKS                       R9 R2 K3 ["size"]
       23 MOVE                             R10 R4
       24 MOVE                             R11 R6
       25 GETTABLEKS                       R13 R2 K5 ["hasError"]
       27 ORK                              R12 R13 K4 [False]
       28 CALL                             R7 5 1
       29 GETUPVAL                         R9 3
       30 GETTABLEKS                       R8 R9 K6 ["useMemo"]
       32 NEWCLOSURE                       R9 P0
       33 CAPTURE                          VAL R3
       34 NEWTABLE                         R10 0 1
       36 MOVE                             R11 R3
       37 SETLIST                          R10 R11 1 [1]
       39 CALL                             R8 2 1
       40 GETUPVAL                         R10 3
       41 GETTABLEKS                       R9 R10 K7 ["createElement"]
       43 GETUPVAL                         R10 6
       44 GETUPVAL                         R11 7
       45 MOVE                             R12 R2
       46 DUPTABLE                         R13 K14 [{"size", "hasError", "isDisabled", "label", "hint", "ref", "width", "input"}]
       47 GETUPVAL                         R14 8
       48 GETTABLEKS                       R15 R2 K3 ["size"]
       50 CALL                             R14 1 1
       51 SETTABLEKS                       R14 R13 K3 ["size"]
       53 GETTABLEKS                       R14 R2 K5 ["hasError"]
       55 SETTABLEKS                       R14 R13 K5 ["hasError"]
       57 GETTABLEKS                       R14 R2 K8 ["isDisabled"]
       59 SETTABLEKS                       R14 R13 K8 ["isDisabled"]
       61 GETTABLEKS                       R14 R2 K9 ["label"]
       63 SETTABLEKS                       R14 R13 K9 ["label"]
       65 GETTABLEKS                       R14 R2 K10 ["hint"]
       67 SETTABLEKS                       R14 R13 K10 ["hint"]
       69 SETTABLEKS                       R1 R13 K11 ["ref"]
       71 GETTABLEKS                       R14 R2 K12 ["width"]
       73 SETTABLEKS                       R14 R13 K12 ["width"]
       75 NEWCLOSURE                       R14 P1
       76 CAPTURE                          UPVAL U3
       77 CAPTURE                          UPVAL U9
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R8
       81 CAPTURE                          UPVAL U10
       82 CAPTURE                          VAL R7
       83 CAPTURE                          UPVAL U11
       84 CAPTURE                          UPVAL U12
       85 CAPTURE                          UPVAL U13
       86 CAPTURE                          UPVAL U14
       87 CAPTURE                          UPVAL U15
       88 CAPTURE                          VAL R3
       89 SETTABLEKS                       R14 R13 K13 ["input"]
       91 CALL                             R11 2 -1
       92 CALL                             R9 -1 -1
       93 RETURN                           R9 -1

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
       14 GETTABLEKS                       R3 R0 K8 ["Components"]
       16 GETIMPORT                        R4 K6 [require]
       18 GETTABLEKS                       R5 R3 K9 ["BaseMenu"]
       20 CALL                             R4 1 1
       21 GETIMPORT                        R5 K6 [require]
       23 GETTABLEKS                       R6 R3 K10 ["View"]
       25 CALL                             R5 1 1
       26 GETIMPORT                        R6 K6 [require]
       28 GETTABLEKS                       R7 R3 K11 ["Icon"]
       30 CALL                             R6 1 1
       31 GETIMPORT                        R7 K6 [require]
       33 GETTABLEKS                       R8 R3 K12 ["InputField"]
       35 CALL                             R7 1 1
       36 GETIMPORT                        R8 K6 [require]
       38 GETTABLEKS                       R10 R0 K13 ["Enums"]
       40 GETTABLEKS                       R9 R10 K14 ["StateLayerAffordance"]
       42 CALL                             R8 1 1
       43 GETIMPORT                        R9 K6 [require]
       45 GETTABLEKS                       R10 R3 K15 ["Text"]
       47 CALL                             R9 1 1
       48 GETIMPORT                        R10 K6 [require]
       50 GETTABLEKS                       R12 R0 K8 ["Components"]
       52 GETTABLEKS                       R11 R12 K16 ["Types"]
       54 CALL                             R10 1 1
       55 GETIMPORT                        R11 K6 [require]
       57 GETTABLEKS                       R13 R0 K17 ["Utility"]
       59 GETTABLEKS                       R12 R13 K18 ["Flags"]
       61 CALL                             R11 1 1
       62 GETIMPORT                        R12 K6 [require]
       64 GETTABLEKS                       R14 R0 K17 ["Utility"]
       66 GETTABLEKS                       R13 R14 K19 ["getInputTextSize"]
       68 CALL                             R12 1 1
       69 GETIMPORT                        R13 K6 [require]
       71 GETTABLEKS                       R16 R0 K20 ["Providers"]
       73 GETTABLEKS                       R15 R16 K21 ["Style"]
       75 GETTABLEKS                       R14 R15 K22 ["useTokens"]
       77 CALL                             R13 1 1
       78 GETIMPORT                        R14 K6 [require]
       80 GETTABLEKS                       R16 R0 K17 ["Utility"]
       82 GETTABLEKS                       R15 R16 K23 ["withCommonProps"]
       84 CALL                             R14 1 1
       85 GETIMPORT                        R15 K6 [require]
       87 GETTABLEKS                       R17 R0 K17 ["Utility"]
       89 GETTABLEKS                       R16 R17 K24 ["withDefaults"]
       91 CALL                             R15 1 1
       92 GETIMPORT                        R16 K6 [require]
       94 GETIMPORT                        R19 K1 [script]
       96 GETTABLEKS                       R18 R19 K4 ["Parent"]
       98 GETTABLEKS                       R17 R18 K25 ["useDropdownVariants"]
      100 CALL                             R16 1 1
      101 GETIMPORT                        R17 K6 [require]
      103 GETTABLEKS                       R19 R0 K13 ["Enums"]
      105 GETTABLEKS                       R18 R19 K26 ["InputSize"]
      107 CALL                             R17 1 1
      108 GETIMPORT                        R18 K6 [require]
      110 GETTABLEKS                       R20 R0 K13 ["Enums"]
      112 GETTABLEKS                       R19 R20 K27 ["ControlState"]
      114 CALL                             R18 1 1
      115 GETIMPORT                        R19 K6 [require]
      117 GETTABLEKS                       R21 R0 K13 ["Enums"]
      119 GETTABLEKS                       R20 R21 K28 ["CursorType"]
      121 CALL                             R19 1 1
      122 GETIMPORT                        R20 K6 [require]
      124 GETTABLEKS                       R21 R1 K29 ["BuilderIcons"]
      126 CALL                             R20 1 1
      127 GETTABLEKS                       R22 R20 K11 ["Icon"]
      129 GETTABLEKS                       R21 R22 K30 ["ChevronLargeUp"]
      131 GETTABLEKS                       R23 R20 K11 ["Icon"]
      133 GETTABLEKS                       R22 R23 K31 ["ChevronLargeDown"]
      135 DUPTABLE                         R23 K34 [{"isMenuOpen", "placeholder"}]
      136 LOADB                            R24 0
      137 SETTABLEKS                       R24 R23 K32 ["isMenuOpen"]
      139 LOADK                            R24 K35 [""]
      140 SETTABLEKS                       R24 R23 K33 ["placeholder"]
      142 DUPCLOSURE                       R24 K36 [PROTO_2]
      143 CAPTURE                          VAL R15
      144 CAPTURE                          VAL R23
      145 CAPTURE                          VAL R13
      146 CAPTURE                          VAL R2
      147 CAPTURE                          VAL R18
      148 CAPTURE                          VAL R16
      149 CAPTURE                          VAL R7
      150 CAPTURE                          VAL R14
      151 CAPTURE                          VAL R12
      152 CAPTURE                          VAL R5
      153 CAPTURE                          VAL R8
      154 CAPTURE                          VAL R9
      155 CAPTURE                          VAL R6
      156 CAPTURE                          VAL R21
      157 CAPTURE                          VAL R22
      158 CAPTURE                          VAL R11
      159 GETTABLEKS                       R25 R2 K37 ["memo"]
      161 GETTABLEKS                       R26 R2 K38 ["forwardRef"]
      163 MOVE                             R27 R24
      164 CALL                             R26 1 -1
      165 CALL                             R25 -1 -1
      166 RETURN                           R25 -1
