PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 MOVE                             R5 R3
        8 GETTABLEKS                       R6 R2 K0 ["size"]
       10 CALL                             R4 2 1
       11 GETUPVAL                         R5 4
       12 GETTABLEKS                       R6 R2 K1 ["isChecked"]
       14 GETTABLEKS                       R7 R2 K2 ["onActivated"]
       16 CALL                             R5 2 2
       17 GETUPVAL                         R8 5
       18 GETTABLEKS                       R7 R8 K3 ["createElement"]
       20 GETUPVAL                         R8 6
       21 GETUPVAL                         R9 7
       22 MOVE                             R10 R2
       23 DUPTABLE                         R11 K13 [{"isChecked", "isDisabled", "onActivated", "label", "customVariantProps", "size", "Selectable", "NextSelectionUp", "NextSelectionDown", "NextSelectionLeft", "NextSelectionRight", "ref"}]
       24 SETTABLEKS                       R5 R11 K1 ["isChecked"]
       26 GETTABLEKS                       R12 R2 K4 ["isDisabled"]
       28 SETTABLEKS                       R12 R11 K4 ["isDisabled"]
       30 SETTABLEKS                       R6 R11 K2 ["onActivated"]
       32 DUPTABLE                         R12 K16 [{"text", "position"}]
       33 GETTABLEKS                       R13 R2 K5 ["label"]
       35 SETTABLEKS                       R13 R12 K14 ["text"]
       37 GETUPVAL                         R15 8
       38 GETTABLEKS                       R14 R15 K17 ["INPUT_PLACEMENT_TO_LABEL_ALIGNMENT"]
       40 GETTABLEKS                       R15 R2 K18 ["placement"]
       42 GETTABLE                         R13 R14 R15
       43 SETTABLEKS                       R13 R12 K15 ["position"]
       45 SETTABLEKS                       R12 R11 K5 ["label"]
       47 GETTABLEKS                       R12 R4 K19 ["input"]
       49 SETTABLEKS                       R12 R11 K6 ["customVariantProps"]
       51 GETTABLEKS                       R12 R2 K0 ["size"]
       53 SETTABLEKS                       R12 R11 K0 ["size"]
       55 GETTABLEKS                       R12 R2 K7 ["Selectable"]
       57 SETTABLEKS                       R12 R11 K7 ["Selectable"]
       59 GETTABLEKS                       R12 R2 K8 ["NextSelectionUp"]
       61 SETTABLEKS                       R12 R11 K8 ["NextSelectionUp"]
       63 GETTABLEKS                       R12 R2 K9 ["NextSelectionDown"]
       65 SETTABLEKS                       R12 R11 K9 ["NextSelectionDown"]
       67 GETTABLEKS                       R12 R2 K10 ["NextSelectionLeft"]
       69 SETTABLEKS                       R12 R11 K10 ["NextSelectionLeft"]
       71 GETTABLEKS                       R12 R2 K11 ["NextSelectionRight"]
       73 SETTABLEKS                       R12 R11 K11 ["NextSelectionRight"]
       75 SETTABLEKS                       R1 R11 K12 ["ref"]
       77 CALL                             R9 2 1
       78 DUPTABLE                         R10 K21 [{"Checkmark"}]
       79 JUMPIFNOT                        R5 ; [+75]
       80 GETUPVAL                         R13 9
       81 GETTABLEKS                       R12 R13 K22 ["FoundationMigrateIconNames"]
       83 JUMPIFNOT                        R12 ; [+46]
       84 GETUPVAL                         R12 5
       85 GETTABLEKS                       R11 R12 K3 ["createElement"]
       87 GETUPVAL                         R12 10
       88 DUPTABLE                         R13 K28 [{"Text", "fontStyle", "TextScaled", "tag", "testId"}]
       89 GETUPVAL                         R16 11
       90 GETTABLEKS                       R15 R16 K29 ["Icon"]
       92 GETTABLEKS                       R14 R15 K30 ["Check"]
       94 SETTABLEKS                       R14 R13 K23 ["Text"]
       96 DUPTABLE                         R14 K32 [{"Font"}]
       97 GETUPVAL                         R17 11
       98 GETTABLEKS                       R16 R17 K31 ["Font"]
      100 GETUPVAL                         R19 11
      101 GETTABLEKS                       R18 R19 K33 ["IconVariant"]
      103 GETTABLEKS                       R17 R18 K34 ["Filled"]
      105 GETTABLE                         R15 R16 R17
      106 SETTABLEKS                       R15 R14 K31 ["Font"]
      108 SETTABLEKS                       R14 R13 K24 ["fontStyle"]
      110 LOADB                            R14 1
      111 SETTABLEKS                       R14 R13 K25 ["TextScaled"]
      113 GETTABLEKS                       R15 R4 K35 ["checkmark"]
      115 GETTABLEKS                       R14 R15 K26 ["tag"]
      117 SETTABLEKS                       R14 R13 K26 ["tag"]
      119 LOADK                            R15 K36 ["%*--checkmark"]
      120 GETTABLEKS                       R17 R2 K27 ["testId"]
      122 NAMECALL                         R15 R15 K37 ["format"]
      124 CALL                             R15 2 1
      125 MOVE                             R14 R15
      126 SETTABLEKS                       R14 R13 K27 ["testId"]
      128 CALL                             R11 2 1
      129 JUMP                             ; [+26]
      130 GETUPVAL                         R12 5
      131 GETTABLEKS                       R11 R12 K3 ["createElement"]
      133 GETUPVAL                         R12 12
      134 DUPTABLE                         R13 K39 [{"Image", "tag", "testId"}]
      135 LOADK                            R14 K40 ["icons/status/success_small"]
      136 SETTABLEKS                       R14 R13 K38 ["Image"]
      138 GETTABLEKS                       R15 R4 K35 ["checkmark"]
      140 GETTABLEKS                       R14 R15 K26 ["tag"]
      142 SETTABLEKS                       R14 R13 K26 ["tag"]
      144 LOADK                            R15 K36 ["%*--checkmark"]
      145 GETTABLEKS                       R17 R2 K27 ["testId"]
      147 NAMECALL                         R15 R15 K37 ["format"]
      149 CALL                             R15 2 1
      150 MOVE                             R14 R15
      151 SETTABLEKS                       R14 R13 K27 ["testId"]
      153 CALL                             R11 2 1
      154 JUMP                             ; [+1]
      155 LOADNIL                          R11
      156 SETTABLEKS                       R11 R10 K20 ["Checkmark"]
      158 CALL                             R7 3 -1
      159 RETURN                           R7 -1

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
       16 GETTABLEKS                       R4 R1 K8 ["BuilderIcons"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Constants"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R0 K10 ["Components"]
       26 GETIMPORT                        R6 K6 [require]
       28 GETTABLEKS                       R7 R5 K11 ["Image"]
       30 CALL                             R6 1 1
       31 GETIMPORT                        R7 K6 [require]
       33 GETTABLEKS                       R8 R5 K12 ["Text"]
       35 CALL                             R7 1 1
       36 GETIMPORT                        R8 K6 [require]
       38 GETTABLEKS                       R9 R5 K13 ["InternalInput"]
       40 CALL                             R8 1 1
       41 GETIMPORT                        R9 K6 [require]
       43 GETTABLEKS                       R11 R5 K13 ["InternalInput"]
       45 GETTABLEKS                       R10 R11 K14 ["useUncontrolledState"]
       47 CALL                             R9 1 1
       48 GETIMPORT                        R10 K6 [require]
       50 GETTABLEKS                       R11 R5 K15 ["Types"]
       52 CALL                             R10 1 1
       53 GETIMPORT                        R11 K6 [require]
       55 GETTABLEKS                       R13 R0 K16 ["Utility"]
       57 GETTABLEKS                       R12 R13 K17 ["Flags"]
       59 CALL                             R11 1 1
       60 GETIMPORT                        R12 K6 [require]
       62 GETTABLEKS                       R15 R0 K18 ["Providers"]
       64 GETTABLEKS                       R14 R15 K19 ["Style"]
       66 GETTABLEKS                       R13 R14 K20 ["useTokens"]
       68 CALL                             R12 1 1
       69 GETIMPORT                        R13 K6 [require]
       71 GETTABLEKS                       R15 R0 K16 ["Utility"]
       73 GETTABLEKS                       R14 R15 K21 ["withCommonProps"]
       75 CALL                             R13 1 1
       76 GETIMPORT                        R14 K6 [require]
       78 GETTABLEKS                       R16 R0 K16 ["Utility"]
       80 GETTABLEKS                       R15 R16 K22 ["withDefaults"]
       82 CALL                             R14 1 1
       83 GETIMPORT                        R15 K6 [require]
       85 GETIMPORT                        R18 K1 [script]
       87 GETTABLEKS                       R17 R18 K4 ["Parent"]
       89 GETTABLEKS                       R16 R17 K23 ["useCheckboxVariants"]
       91 CALL                             R15 1 1
       92 GETIMPORT                        R16 K6 [require]
       94 GETTABLEKS                       R18 R0 K24 ["Enums"]
       96 GETTABLEKS                       R17 R18 K25 ["InputSize"]
       98 CALL                             R16 1 1
       99 GETIMPORT                        R17 K6 [require]
      101 GETTABLEKS                       R19 R0 K24 ["Enums"]
      103 GETTABLEKS                       R18 R19 K26 ["InputPlacement"]
      105 CALL                             R17 1 1
      106 DUPTABLE                         R18 K31 [{"size", "placement", "Selectable", "testId"}]
      107 GETTABLEKS                       R19 R16 K32 ["Medium"]
      109 SETTABLEKS                       R19 R18 K27 ["size"]
      111 GETTABLEKS                       R19 R17 K33 ["Start"]
      113 SETTABLEKS                       R19 R18 K28 ["placement"]
      115 LOADB                            R19 1
      116 SETTABLEKS                       R19 R18 K29 ["Selectable"]
      118 LOADK                            R19 K34 ["--foundation-checkbox"]
      119 SETTABLEKS                       R19 R18 K30 ["testId"]
      121 DUPCLOSURE                       R19 K35 [PROTO_0]
      122 CAPTURE                          VAL R14
      123 CAPTURE                          VAL R18
      124 CAPTURE                          VAL R12
      125 CAPTURE                          VAL R15
      126 CAPTURE                          VAL R9
      127 CAPTURE                          VAL R2
      128 CAPTURE                          VAL R8
      129 CAPTURE                          VAL R13
      130 CAPTURE                          VAL R4
      131 CAPTURE                          VAL R11
      132 CAPTURE                          VAL R7
      133 CAPTURE                          VAL R3
      134 CAPTURE                          VAL R6
      135 GETTABLEKS                       R20 R2 K36 ["memo"]
      137 GETTABLEKS                       R21 R2 K37 ["forwardRef"]
      139 MOVE                             R22 R19
      140 CALL                             R21 1 -1
      141 CALL                             R20 -1 -1
      142 RETURN                           R20 -1
