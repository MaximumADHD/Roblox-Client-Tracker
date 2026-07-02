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
       20 GETUPVAL                         R8 5
       21 GETTABLEKS                       R8 R8 K5 ["createElement"]
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
       42 GETUPVAL                         R15 8
       43 GETTABLEKS                       R15 R15 K19 ["INPUT_PLACEMENT_TO_LABEL_ALIGNMENT"]
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
       84 JUMPIF                           R5 ; [+5]
       85 GETUPVAL                         R13 9
       86 GETTABLEKS                       R13 R13 K24 ["FoundationCheckboxIndeterminate"]
       88 JUMPIFNOT                        R13 ; [+55]
       89 JUMPIFNOT                        R7 ; [+54]
       90 GETUPVAL                         R12 5
       91 GETTABLEKS                       R12 R12 K5 ["createElement"]
       93 GETUPVAL                         R13 10
       94 DUPTABLE                         R14 K31 [{["Text"], ["fontStyle"], ["TextScaled"] = True, ["tag"], ["testId"]}]
       95 GETUPVAL                         R16 9
       96 GETTABLEKS                       R16 R16 K24 ["FoundationCheckboxIndeterminate"]
       98 JUMPIFNOT                        R16 ; [+7]
       99 JUMPIFNOT                        R7 ; [+6]
      100 GETUPVAL                         R15 11
      101 GETTABLEKS                       R15 R15 K32 ["Icon"]
      103 GETTABLEKS                       R15 R15 K33 ["Minus"]
      105 JUMP                             ; [+5]
      106 GETUPVAL                         R15 11
      107 GETTABLEKS                       R15 R15 K32 ["Icon"]
      109 GETTABLEKS                       R15 R15 K34 ["Check"]
      111 SETTABLEKS                       R15 R14 K25 ["Text"]
      113 DUPTABLE                         R15 K36 [{"Font"}]
      114 GETUPVAL                         R17 11
      115 GETTABLEKS                       R17 R17 K35 ["Font"]
      117 GETUPVAL                         R18 11
      118 GETTABLEKS                       R18 R18 K37 ["IconVariant"]
      120 GETTABLEKS                       R18 R18 K38 ["Filled"]
      122 GETTABLE                         R16 R17 R18
      123 SETTABLEKS                       R16 R15 K35 ["Font"]
      125 SETTABLEKS                       R15 R14 K26 ["fontStyle"]
      127 GETTABLEKS                       R15 R4 K39 ["checkmark"]
      129 GETTABLEKS                       R15 R15 K29 ["tag"]
      131 SETTABLEKS                       R15 R14 K29 ["tag"]
      133 LOADK                            R16 K40 ["%*--checkmark"]
      134 GETTABLEKS                       R18 R2 K30 ["testId"]
      136 NAMECALL                         R16 R16 K41 ["format"]
      138 CALL                             R16 2 1
      139 MOVE                             R15 R16
      140 SETTABLEKS                       R15 R14 K30 ["testId"]
      142 CALL                             R12 2 1
      143 JUMP                             ; [+1]
      144 LOADNIL                          R12
      145 SETTABLEKS                       R12 R11 K22 ["Checkmark"]
      147 CALL                             R8 3 -1
      148 RETURN                           R8 -1

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
       43 GETTABLEKS                       R10 R5 K11 ["InternalInput"]
       45 GETTABLEKS                       R10 R10 K14 ["useUncontrolledState"]
       47 CALL                             R9 1 1
       48 GETIMPORT                        R10 K6 [require]
       50 GETTABLEKS                       R11 R0 K15 ["Utility"]
       52 GETTABLEKS                       R11 R11 K16 ["Flags"]
       54 CALL                             R10 1 1
       55 GETIMPORT                        R11 K6 [require]
       57 GETTABLEKS                       R12 R0 K17 ["Providers"]
       59 GETTABLEKS                       R12 R12 K18 ["Style"]
       61 GETTABLEKS                       R12 R12 K19 ["useTokens"]
       63 CALL                             R11 1 1
       64 GETIMPORT                        R12 K6 [require]
       66 GETTABLEKS                       R13 R0 K15 ["Utility"]
       68 GETTABLEKS                       R13 R13 K20 ["withCommonProps"]
       70 CALL                             R12 1 1
       71 GETIMPORT                        R13 K6 [require]
       73 GETTABLEKS                       R14 R0 K15 ["Utility"]
       75 GETTABLEKS                       R14 R14 K21 ["withDefaults"]
       77 CALL                             R13 1 1
       78 GETIMPORT                        R14 K6 [require]
       80 GETIMPORT                        R15 K1 [script]
       82 GETTABLEKS                       R15 R15 K4 ["Parent"]
       84 GETTABLEKS                       R15 R15 K22 ["useCheckboxVariants"]
       86 CALL                             R14 1 1
       87 GETIMPORT                        R15 K6 [require]
       89 GETTABLEKS                       R16 R0 K23 ["Enums"]
       91 GETTABLEKS                       R16 R16 K24 ["InputSize"]
       93 CALL                             R15 1 1
       94 GETIMPORT                        R16 K6 [require]
       96 GETTABLEKS                       R17 R0 K23 ["Enums"]
       98 GETTABLEKS                       R17 R17 K25 ["InputPlacement"]
      100 CALL                             R16 1 1
      101 DUPTABLE                         R17 K32 [{["size"], ["placement"], ["Selectable"] = True, ["testId"] = "--foundation-checkbox"}]
      102 GETTABLEKS                       R18 R15 K33 ["Medium"]
      104 SETTABLEKS                       R18 R17 K26 ["size"]
      106 GETTABLEKS                       R18 R16 K34 ["Start"]
      108 SETTABLEKS                       R18 R17 K27 ["placement"]
      110 DUPCLOSURE                       R18 K35 [PROTO_0]
      111 CAPTURE                          VAL R13
      112 CAPTURE                          VAL R17
      113 CAPTURE                          VAL R11
      114 CAPTURE                          VAL R14
      115 CAPTURE                          VAL R9
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R6
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R4
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R7
      122 CAPTURE                          VAL R2
      123 GETTABLEKS                       R19 R3 K36 ["memo"]
      125 GETTABLEKS                       R20 R3 K37 ["forwardRef"]
      127 MOVE                             R21 R18
      128 CALL                             R20 1 -1
      129 CALL                             R19 -1 -1
      130 RETURN                           R19 -1
