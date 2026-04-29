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
       17 GETTABLEKS                       R8 R2 K4 ["isIndeterminate"]
       19 ORK                              R7 R8 K3 [False]
       20 GETUPVAL                         R9 5
       21 GETTABLEKS                       R8 R9 K5 ["createElement"]
       23 GETUPVAL                         R9 6
       24 GETUPVAL                         R10 7
       25 MOVE                             R11 R2
       26 DUPTABLE                         R12 K15 [{"isChecked", "isIndeterminate", "isDisabled", "onActivated", "label", "customVariantProps", "size", "Selectable", "NextSelectionUp", "NextSelectionDown", "NextSelectionLeft", "NextSelectionRight", "ref"}]
       27 SETTABLEKS                       R5 R12 K1 ["isChecked"]
       29 SETTABLEKS                       R7 R12 K4 ["isIndeterminate"]
       31 GETTABLEKS                       R13 R2 K6 ["isDisabled"]
       33 SETTABLEKS                       R13 R12 K6 ["isDisabled"]
       35 SETTABLEKS                       R6 R12 K2 ["onActivated"]
       37 DUPTABLE                         R13 K18 [{"text", "position"}]
       38 GETTABLEKS                       R14 R2 K7 ["label"]
       40 SETTABLEKS                       R14 R13 K16 ["text"]
       42 GETUPVAL                         R16 8
       43 GETTABLEKS                       R15 R16 K19 ["INPUT_PLACEMENT_TO_LABEL_ALIGNMENT"]
       45 GETTABLEKS                       R16 R2 K20 ["placement"]
       47 GETTABLE                         R14 R15 R16
       48 SETTABLEKS                       R14 R13 K17 ["position"]
       50 SETTABLEKS                       R13 R12 K7 ["label"]
       52 GETTABLEKS                       R13 R4 K21 ["input"]
       54 SETTABLEKS                       R13 R12 K8 ["customVariantProps"]
       56 GETTABLEKS                       R13 R2 K0 ["size"]
       58 SETTABLEKS                       R13 R12 K0 ["size"]
       60 GETTABLEKS                       R13 R2 K9 ["Selectable"]
       62 SETTABLEKS                       R13 R12 K9 ["Selectable"]
       64 GETTABLEKS                       R13 R2 K10 ["NextSelectionUp"]
       66 SETTABLEKS                       R13 R12 K10 ["NextSelectionUp"]
       68 GETTABLEKS                       R13 R2 K11 ["NextSelectionDown"]
       70 SETTABLEKS                       R13 R12 K11 ["NextSelectionDown"]
       72 GETTABLEKS                       R13 R2 K12 ["NextSelectionLeft"]
       74 SETTABLEKS                       R13 R12 K12 ["NextSelectionLeft"]
       76 GETTABLEKS                       R13 R2 K13 ["NextSelectionRight"]
       78 SETTABLEKS                       R13 R12 K13 ["NextSelectionRight"]
       80 SETTABLEKS                       R1 R12 K14 ["ref"]
       82 CALL                             R10 2 1
       83 DUPTABLE                         R11 K23 [{"Checkmark"}]
       84 JUMPIF                           R5 ; [+1]
       85 JUMPIFNOT                        R7 ; [+53]
       86 GETUPVAL                         R13 5
       87 GETTABLEKS                       R12 R13 K5 ["createElement"]
       89 GETUPVAL                         R13 9
       90 DUPTABLE                         R14 K29 [{"Text", "fontStyle", "TextScaled", "tag", "testId"}]
       91 JUMPIFNOT                        R7 ; [+6]
       92 GETUPVAL                         R17 10
       93 GETTABLEKS                       R16 R17 K30 ["Icon"]
       95 GETTABLEKS                       R15 R16 K31 ["Minus"]
       97 JUMP                             ; [+5]
       98 GETUPVAL                         R17 10
       99 GETTABLEKS                       R16 R17 K30 ["Icon"]
      101 GETTABLEKS                       R15 R16 K32 ["Check"]
      103 SETTABLEKS                       R15 R14 K24 ["Text"]
      105 DUPTABLE                         R15 K34 [{"Font"}]
      106 GETUPVAL                         R18 10
      107 GETTABLEKS                       R17 R18 K33 ["Font"]
      109 GETUPVAL                         R20 10
      110 GETTABLEKS                       R19 R20 K35 ["IconVariant"]
      112 GETTABLEKS                       R18 R19 K36 ["Filled"]
      114 GETTABLE                         R16 R17 R18
      115 SETTABLEKS                       R16 R15 K33 ["Font"]
      117 SETTABLEKS                       R15 R14 K25 ["fontStyle"]
      119 LOADB                            R15 1
      120 SETTABLEKS                       R15 R14 K26 ["TextScaled"]
      122 GETTABLEKS                       R16 R4 K37 ["checkmark"]
      124 GETTABLEKS                       R15 R16 K27 ["tag"]
      126 SETTABLEKS                       R15 R14 K27 ["tag"]
      128 LOADK                            R16 K38 ["%*--checkmark"]
      129 GETTABLEKS                       R18 R2 K28 ["testId"]
      131 NAMECALL                         R16 R16 K39 ["format"]
      133 CALL                             R16 2 1
      134 MOVE                             R15 R16
      135 SETTABLEKS                       R15 R14 K28 ["testId"]
      137 CALL                             R12 2 1
      138 JUMP                             ; [+1]
      139 LOADNIL                          R12
      140 SETTABLEKS                       R12 R11 K22 ["Checkmark"]
      142 CALL                             R8 3 -1
      143 RETURN                           R8 -1

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
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Constants"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R0 K10 ["Components"]
       26 GETIMPORT                        R6 K6 [require]
       28 GETTABLEKS                       R7 R5 K11 ["InternalInput"]
       30 CALL                             R6 1 1
       31 GETIMPORT                        R7 K6 [require]
       33 GETTABLEKS                       R8 R5 K12 ["Text"]
       35 CALL                             R7 1 1
       36 GETIMPORT                        R8 K6 [require]
       38 GETTABLEKS                       R9 R5 K13 ["Types"]
       40 CALL                             R8 1 1
       41 GETIMPORT                        R9 K6 [require]
       43 GETTABLEKS                       R11 R5 K11 ["InternalInput"]
       45 GETTABLEKS                       R10 R11 K14 ["useUncontrolledState"]
       47 CALL                             R9 1 1
       48 GETIMPORT                        R10 K6 [require]
       50 GETTABLEKS                       R13 R0 K15 ["Providers"]
       52 GETTABLEKS                       R12 R13 K16 ["Style"]
       54 GETTABLEKS                       R11 R12 K17 ["useTokens"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K6 [require]
       59 GETTABLEKS                       R13 R0 K18 ["Utility"]
       61 GETTABLEKS                       R12 R13 K19 ["withCommonProps"]
       63 CALL                             R11 1 1
       64 GETIMPORT                        R12 K6 [require]
       66 GETTABLEKS                       R14 R0 K18 ["Utility"]
       68 GETTABLEKS                       R13 R14 K20 ["withDefaults"]
       70 CALL                             R12 1 1
       71 GETIMPORT                        R13 K6 [require]
       73 GETIMPORT                        R16 K1 [script]
       75 GETTABLEKS                       R15 R16 K4 ["Parent"]
       77 GETTABLEKS                       R14 R15 K21 ["useCheckboxVariants"]
       79 CALL                             R13 1 1
       80 GETIMPORT                        R14 K6 [require]
       82 GETTABLEKS                       R16 R0 K22 ["Enums"]
       84 GETTABLEKS                       R15 R16 K23 ["InputSize"]
       86 CALL                             R14 1 1
       87 GETIMPORT                        R15 K6 [require]
       89 GETTABLEKS                       R17 R0 K22 ["Enums"]
       91 GETTABLEKS                       R16 R17 K24 ["InputPlacement"]
       93 CALL                             R15 1 1
       94 DUPTABLE                         R16 K29 [{"size", "placement", "Selectable", "testId"}]
       95 GETTABLEKS                       R17 R14 K30 ["Medium"]
       97 SETTABLEKS                       R17 R16 K25 ["size"]
       99 GETTABLEKS                       R17 R15 K31 ["Start"]
      101 SETTABLEKS                       R17 R16 K26 ["placement"]
      103 LOADB                            R17 1
      104 SETTABLEKS                       R17 R16 K27 ["Selectable"]
      106 LOADK                            R17 K32 ["--foundation-checkbox"]
      107 SETTABLEKS                       R17 R16 K28 ["testId"]
      109 DUPCLOSURE                       R17 K33 [PROTO_0]
      110 CAPTURE                          VAL R12
      111 CAPTURE                          VAL R16
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R13
      114 CAPTURE                          VAL R9
      115 CAPTURE                          VAL R3
      116 CAPTURE                          VAL R6
      117 CAPTURE                          VAL R11
      118 CAPTURE                          VAL R4
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R2
      121 GETTABLEKS                       R18 R3 K34 ["memo"]
      123 GETTABLEKS                       R19 R3 K35 ["forwardRef"]
      125 MOVE                             R20 R17
      126 CALL                             R19 1 -1
      127 CALL                             R18 -1 -1
      128 RETURN                           R18 -1
