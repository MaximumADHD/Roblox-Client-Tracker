PROTO_0:
        0 DUPTABLE                         R0 K3 [{"radius", "offset", "borderWidth"}]
        1 GETIMPORT                        R1 K6 [UDim.new]
        3 LOADN                            R2 0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K7 ["Radius"]
        7 GETTABLEKS                       R3 R3 K8 ["Small"]
        9 CALL                             R1 2 1
       10 SETTABLEKS                       R1 R0 K0 ["radius"]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K9 ["Size"]
       15 GETTABLEKS                       R1 R1 K10 ["Size_200"]
       17 SETTABLEKS                       R1 R0 K1 ["offset"]
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K11 ["Stroke"]
       22 GETTABLEKS                       R1 R1 K12 ["Thicker"]
       24 SETTABLEKS                       R1 R0 K2 ["borderWidth"]
       26 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K10 [{"onStateChanged", "isDisabled", "onActivated", "selection", "cursor", "stateLayer", "tag", "ref", "testId"}]
        5 GETUPVAL                         R4 2
        6 SETTABLEKS                       R4 R3 K1 ["onStateChanged"]
        8 GETUPVAL                         R4 3
        9 GETTABLEKS                       R4 R4 K2 ["isDisabled"]
       11 SETTABLEKS                       R4 R3 K2 ["isDisabled"]
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R4 R4 K3 ["onActivated"]
       16 SETTABLEKS                       R4 R3 K3 ["onActivated"]
       18 DUPTABLE                         R4 K12 [{"Selectable"}]
       19 GETUPVAL                         R6 3
       20 GETTABLEKS                       R6 R6 K2 ["isDisabled"]
       22 NOT                              R5 R6
       23 SETTABLEKS                       R5 R4 K11 ["Selectable"]
       25 SETTABLEKS                       R4 R3 K4 ["selection"]
       27 GETUPVAL                         R4 4
       28 SETTABLEKS                       R4 R3 K5 ["cursor"]
       30 DUPTABLE                         R4 K14 [{"affordance"}]
       31 GETUPVAL                         R5 5
       32 GETTABLEKS                       R5 R5 K15 ["None"]
       34 SETTABLEKS                       R5 R4 K13 ["affordance"]
       36 SETTABLEKS                       R4 R3 K6 ["stateLayer"]
       38 GETUPVAL                         R4 6
       39 GETTABLEKS                       R4 R4 K16 ["container"]
       41 GETTABLEKS                       R4 R4 K7 ["tag"]
       43 SETTABLEKS                       R4 R3 K7 ["tag"]
       45 GETUPVAL                         R4 3
       46 GETTABLEKS                       R4 R4 K17 ["inputRef"]
       48 SETTABLEKS                       R4 R3 K8 ["ref"]
       50 LOADK                            R5 K18 ["%*--control"]
       51 GETUPVAL                         R7 3
       52 GETTABLEKS                       R7 R7 K9 ["testId"]
       54 NAMECALL                         R5 R5 K19 ["format"]
       56 CALL                             R5 2 1
       57 MOVE                             R4 R5
       58 SETTABLEKS                       R4 R3 K9 ["testId"]
       60 DUPTABLE                         R4 K22 [{"Text", "Arrow"}]
       61 GETUPVAL                         R5 0
       62 GETTABLEKS                       R5 R5 K0 ["createElement"]
       64 GETUPVAL                         R6 7
       65 DUPTABLE                         R7 K25 [{["LayoutOrder"] = 1, ["Text"], ["tag"]}]
       66 GETUPVAL                         R9 3
       67 GETTABLEKS                       R9 R9 K26 ["item"]
       69 JUMPIFNOT                        R9 ; [+6]
       70 GETUPVAL                         R8 3
       71 GETTABLEKS                       R8 R8 K26 ["item"]
       73 GETTABLEKS                       R8 R8 K27 ["text"]
       75 JUMP                             ; [+3]
       76 GETUPVAL                         R8 3
       77 GETTABLEKS                       R8 R8 K28 ["placeholder"]
       79 SETTABLEKS                       R8 R7 K20 ["Text"]
       81 GETUPVAL                         R8 6
       82 GETTABLEKS                       R8 R8 K27 ["text"]
       84 GETTABLEKS                       R8 R8 K7 ["tag"]
       86 SETTABLEKS                       R8 R7 K7 ["tag"]
       88 CALL                             R5 2 1
       89 SETTABLEKS                       R5 R4 K20 ["Text"]
       91 GETUPVAL                         R5 0
       92 GETTABLEKS                       R5 R5 K0 ["createElement"]
       94 GETUPVAL                         R6 8
       95 DUPTABLE                         R7 K32 [{["LayoutOrder"] = 2, ["name"], ["size"], ["tag"]}]
       96 GETUPVAL                         R9 3
       97 GETTABLEKS                       R9 R9 K33 ["isMenuOpen"]
       99 JUMPIFNOT                        R9 ; [+2]
      100 GETUPVAL                         R8 9
      101 JUMP                             ; [+1]
      102 GETUPVAL                         R8 10
      103 SETTABLEKS                       R8 R7 K30 ["name"]
      105 GETUPVAL                         R8 6
      106 GETTABLEKS                       R8 R8 K34 ["arrow"]
      108 GETTABLEKS                       R8 R8 K31 ["size"]
      110 SETTABLEKS                       R8 R7 K31 ["size"]
      112 GETUPVAL                         R8 6
      113 GETTABLEKS                       R8 R8 K27 ["text"]
      115 GETTABLEKS                       R8 R8 K7 ["tag"]
      117 SETTABLEKS                       R8 R7 K7 ["tag"]
      119 CALL                             R5 2 1
      120 SETTABLEKS                       R5 R4 K21 ["Arrow"]
      122 CALL                             R1 3 -1
      123 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 GETTABLEKS                       R4 R4 K0 ["useState"]
        9 GETUPVAL                         R5 4
       10 GETTABLEKS                       R5 R5 K1 ["Initialize"]
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
       29 GETUPVAL                         R8 3
       30 GETTABLEKS                       R8 R8 K6 ["useMemo"]
       32 NEWCLOSURE                       R9 P0
       33 CAPTURE                          VAL R3
       34 NEWTABLE                         R10 0 1
       36 MOVE                             R11 R3
       37 SETLIST                          R10 R11 1 [1]
       39 CALL                             R8 2 1
       40 GETUPVAL                         R10 6
       41 GETTABLEKS                       R10 R10 K7 ["FoundationDropdownControlIconFix"]
       43 JUMPIFNOT                        R10 ; [+6]
       44 GETUPVAL                         R9 7
       45 GETTABLEKS                       R9 R9 K8 ["Icon"]
       47 GETTABLEKS                       R9 R9 K9 ["ChevronLargeUp"]
       49 JUMP                             ; [+1]
       50 LOADK                            R9 K10 ["truncate_arrows/actions_truncationCollapse"]
       51 GETUPVAL                         R11 6
       52 GETTABLEKS                       R11 R11 K7 ["FoundationDropdownControlIconFix"]
       54 JUMPIFNOT                        R11 ; [+6]
       55 GETUPVAL                         R10 7
       56 GETTABLEKS                       R10 R10 K8 ["Icon"]
       58 GETTABLEKS                       R10 R10 K11 ["ChevronLargeDown"]
       60 JUMP                             ; [+1]
       61 LOADK                            R10 K12 ["truncate_arrows/actions_truncationExpand"]
       62 GETUPVAL                         R11 3
       63 GETTABLEKS                       R11 R11 K13 ["createElement"]
       65 GETUPVAL                         R12 8
       66 GETUPVAL                         R13 9
       67 MOVE                             R14 R2
       68 DUPTABLE                         R15 K20 [{"size", "hasError", "isDisabled", "label", "hint", "ref", "width", "input"}]
       69 GETUPVAL                         R16 10
       70 GETTABLEKS                       R17 R2 K3 ["size"]
       72 CALL                             R16 1 1
       73 SETTABLEKS                       R16 R15 K3 ["size"]
       75 GETTABLEKS                       R16 R2 K5 ["hasError"]
       77 SETTABLEKS                       R16 R15 K5 ["hasError"]
       79 GETTABLEKS                       R16 R2 K14 ["isDisabled"]
       81 SETTABLEKS                       R16 R15 K14 ["isDisabled"]
       83 GETTABLEKS                       R16 R2 K15 ["label"]
       85 SETTABLEKS                       R16 R15 K15 ["label"]
       87 GETTABLEKS                       R16 R2 K16 ["hint"]
       89 SETTABLEKS                       R16 R15 K16 ["hint"]
       91 SETTABLEKS                       R1 R15 K17 ["ref"]
       93 GETTABLEKS                       R16 R2 K18 ["width"]
       95 SETTABLEKS                       R16 R15 K18 ["width"]
       97 NEWCLOSURE                       R16 P1
       98 CAPTURE                          UPVAL U3
       99 CAPTURE                          UPVAL U11
      100 CAPTURE                          VAL R5
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R8
      103 CAPTURE                          UPVAL U12
      104 CAPTURE                          VAL R7
      105 CAPTURE                          UPVAL U13
      106 CAPTURE                          UPVAL U14
      107 CAPTURE                          VAL R9
      108 CAPTURE                          VAL R10
      109 SETTABLEKS                       R16 R15 K19 ["input"]
      111 CALL                             R13 2 -1
      112 CALL                             R11 -1 -1
      113 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["BuilderIcons"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R0 K9 ["Components"]
       21 GETIMPORT                        R5 K6 [require]
       23 GETTABLEKS                       R6 R4 K10 ["BaseMenu"]
       25 CALL                             R5 1 1
       26 GETIMPORT                        R6 K6 [require]
       28 GETTABLEKS                       R7 R4 K11 ["View"]
       30 CALL                             R6 1 1
       31 GETIMPORT                        R7 K6 [require]
       33 GETTABLEKS                       R8 R4 K12 ["Icon"]
       35 CALL                             R7 1 1
       36 GETIMPORT                        R8 K6 [require]
       38 GETTABLEKS                       R9 R4 K13 ["InputField"]
       40 CALL                             R8 1 1
       41 GETIMPORT                        R9 K6 [require]
       43 GETTABLEKS                       R10 R0 K14 ["Enums"]
       45 GETTABLEKS                       R10 R10 K15 ["StateLayerAffordance"]
       47 CALL                             R9 1 1
       48 GETIMPORT                        R10 K6 [require]
       50 GETTABLEKS                       R11 R4 K16 ["Text"]
       52 CALL                             R10 1 1
       53 GETIMPORT                        R11 K6 [require]
       55 GETTABLEKS                       R12 R0 K9 ["Components"]
       57 GETTABLEKS                       R12 R12 K17 ["Types"]
       59 CALL                             R11 1 1
       60 GETIMPORT                        R12 K6 [require]
       62 GETTABLEKS                       R13 R0 K18 ["Utility"]
       64 GETTABLEKS                       R13 R13 K19 ["Flags"]
       66 CALL                             R12 1 1
       67 GETIMPORT                        R13 K6 [require]
       69 GETTABLEKS                       R14 R0 K18 ["Utility"]
       71 GETTABLEKS                       R14 R14 K20 ["getInputTextSize"]
       73 CALL                             R13 1 1
       74 GETIMPORT                        R14 K6 [require]
       76 GETTABLEKS                       R15 R0 K21 ["Providers"]
       78 GETTABLEKS                       R15 R15 K22 ["Style"]
       80 GETTABLEKS                       R15 R15 K23 ["useTokens"]
       82 CALL                             R14 1 1
       83 GETIMPORT                        R15 K6 [require]
       85 GETTABLEKS                       R16 R0 K18 ["Utility"]
       87 GETTABLEKS                       R16 R16 K24 ["withCommonProps"]
       89 CALL                             R15 1 1
       90 GETIMPORT                        R16 K6 [require]
       92 GETTABLEKS                       R17 R0 K18 ["Utility"]
       94 GETTABLEKS                       R17 R17 K25 ["withDefaults"]
       96 CALL                             R16 1 1
       97 GETIMPORT                        R17 K6 [require]
       99 GETIMPORT                        R18 K1 [script]
      101 GETTABLEKS                       R18 R18 K4 ["Parent"]
      103 GETTABLEKS                       R18 R18 K26 ["useDropdownVariants"]
      105 CALL                             R17 1 1
      106 GETIMPORT                        R18 K6 [require]
      108 GETTABLEKS                       R19 R0 K14 ["Enums"]
      110 GETTABLEKS                       R19 R19 K27 ["InputSize"]
      112 CALL                             R18 1 1
      113 GETIMPORT                        R19 K6 [require]
      115 GETTABLEKS                       R20 R0 K14 ["Enums"]
      117 GETTABLEKS                       R20 R20 K28 ["ControlState"]
      119 CALL                             R19 1 1
      120 GETIMPORT                        R20 K6 [require]
      122 GETTABLEKS                       R21 R0 K14 ["Enums"]
      124 GETTABLEKS                       R21 R21 K29 ["CursorType"]
      126 CALL                             R20 1 1
      127 DUPTABLE                         R21 K34 [{["isMenuOpen"] = False, ["placeholder"] = ""}]
      128 DUPCLOSURE                       R22 K35 [PROTO_2]
      129 CAPTURE                          VAL R16
      130 CAPTURE                          VAL R21
      131 CAPTURE                          VAL R14
      132 CAPTURE                          VAL R3
      133 CAPTURE                          VAL R19
      134 CAPTURE                          VAL R17
      135 CAPTURE                          VAL R12
      136 CAPTURE                          VAL R2
      137 CAPTURE                          VAL R8
      138 CAPTURE                          VAL R15
      139 CAPTURE                          VAL R13
      140 CAPTURE                          VAL R6
      141 CAPTURE                          VAL R9
      142 CAPTURE                          VAL R10
      143 CAPTURE                          VAL R7
      144 GETTABLEKS                       R23 R3 K36 ["memo"]
      146 GETTABLEKS                       R24 R3 K37 ["forwardRef"]
      148 MOVE                             R25 R22
      149 CALL                             R24 1 -1
      150 CALL                             R23 -1 -1
      151 RETURN                           R23 -1
