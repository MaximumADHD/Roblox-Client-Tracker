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
       84 JUMPIF                           R5 ; [+1]
       85 JUMPIFNOT                        R7 ; [+50]
       86 GETUPVAL                         R12 5
       87 GETTABLEKS                       R12 R12 K5 ["createElement"]
       89 GETUPVAL                         R13 9
       90 DUPTABLE                         R14 K30 [{["Text"], ["fontStyle"], ["TextScaled"] = True, ["tag"], ["testId"]}]
       91 JUMPIFNOT                        R7 ; [+6]
       92 GETUPVAL                         R15 10
       93 GETTABLEKS                       R15 R15 K31 ["Icon"]
       95 GETTABLEKS                       R15 R15 K32 ["Minus"]
       97 JUMP                             ; [+5]
       98 GETUPVAL                         R15 10
       99 GETTABLEKS                       R15 R15 K31 ["Icon"]
      101 GETTABLEKS                       R15 R15 K33 ["Check"]
      103 SETTABLEKS                       R15 R14 K24 ["Text"]
      105 DUPTABLE                         R15 K35 [{"Font"}]
      106 GETUPVAL                         R17 10
      107 GETTABLEKS                       R17 R17 K34 ["Font"]
      109 GETUPVAL                         R18 10
      110 GETTABLEKS                       R18 R18 K36 ["IconVariant"]
      112 GETTABLEKS                       R18 R18 K37 ["Filled"]
      114 GETTABLE                         R16 R17 R18
      115 SETTABLEKS                       R16 R15 K34 ["Font"]
      117 SETTABLEKS                       R15 R14 K25 ["fontStyle"]
      119 GETTABLEKS                       R15 R4 K38 ["checkmark"]
      121 GETTABLEKS                       R15 R15 K28 ["tag"]
      123 SETTABLEKS                       R15 R14 K28 ["tag"]
      125 LOADK                            R16 K39 ["%*--checkmark"]
      126 GETTABLEKS                       R18 R2 K29 ["testId"]
      128 NAMECALL                         R16 R16 K40 ["format"]
      130 CALL                             R16 2 1
      131 MOVE                             R15 R16
      132 SETTABLEKS                       R15 R14 K29 ["testId"]
      134 CALL                             R12 2 1
      135 JUMP                             ; [+1]
      136 LOADNIL                          R12
      137 SETTABLEKS                       R12 R11 K22 ["Checkmark"]
      139 CALL                             R8 3 -1
      140 RETURN                           R8 -1

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
       50 GETTABLEKS                       R11 R0 K15 ["Providers"]
       52 GETTABLEKS                       R11 R11 K16 ["Style"]
       54 GETTABLEKS                       R11 R11 K17 ["useTokens"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K6 [require]
       59 GETTABLEKS                       R12 R0 K18 ["Utility"]
       61 GETTABLEKS                       R12 R12 K19 ["withCommonProps"]
       63 CALL                             R11 1 1
       64 GETIMPORT                        R12 K6 [require]
       66 GETTABLEKS                       R13 R0 K18 ["Utility"]
       68 GETTABLEKS                       R13 R13 K20 ["withDefaults"]
       70 CALL                             R12 1 1
       71 GETIMPORT                        R13 K6 [require]
       73 GETIMPORT                        R14 K1 [script]
       75 GETTABLEKS                       R14 R14 K4 ["Parent"]
       77 GETTABLEKS                       R14 R14 K21 ["useCheckboxVariants"]
       79 CALL                             R13 1 1
       80 GETIMPORT                        R14 K6 [require]
       82 GETTABLEKS                       R15 R0 K22 ["Enums"]
       84 GETTABLEKS                       R15 R15 K23 ["InputSize"]
       86 CALL                             R14 1 1
       87 GETIMPORT                        R15 K6 [require]
       89 GETTABLEKS                       R16 R0 K22 ["Enums"]
       91 GETTABLEKS                       R16 R16 K24 ["InputPlacement"]
       93 CALL                             R15 1 1
       94 DUPTABLE                         R16 K31 [{["size"], ["placement"], ["Selectable"] = True, ["testId"] = "--foundation-checkbox"}]
       95 GETTABLEKS                       R17 R14 K32 ["Medium"]
       97 SETTABLEKS                       R17 R16 K25 ["size"]
       99 GETTABLEKS                       R17 R15 K33 ["Start"]
      101 SETTABLEKS                       R17 R16 K26 ["placement"]
      103 DUPCLOSURE                       R17 K34 [PROTO_0]
      104 CAPTURE                          VAL R12
      105 CAPTURE                          VAL R16
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R13
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R3
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R11
      112 CAPTURE                          VAL R4
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R2
      115 GETTABLEKS                       R18 R3 K35 ["memo"]
      117 GETTABLEKS                       R19 R3 K36 ["forwardRef"]
      119 MOVE                             R20 R17
      120 CALL                             R19 1 -1
      121 CALL                             R18 -1 -1
      122 RETURN                           R18 -1
