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
       17 GETUPVAL                         R7 5
       18 GETTABLEKS                       R7 R7 K3 ["createElement"]
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
       37 GETUPVAL                         R14 8
       38 GETTABLEKS                       R14 R14 K17 ["INPUT_PLACEMENT_TO_LABEL_ALIGNMENT"]
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
       79 JUMPIFNOT                        R5 ; [+69]
       80 GETUPVAL                         R12 9
       81 GETTABLEKS                       R12 R12 K22 ["FoundationMigrateIconNames"]
       83 JUMPIFNOT                        R12 ; [+43]
       84 GETUPVAL                         R11 5
       85 GETTABLEKS                       R11 R11 K3 ["createElement"]
       87 GETUPVAL                         R12 10
       88 DUPTABLE                         R13 K29 [{["Text"], ["fontStyle"], ["TextScaled"] = True, ["tag"], ["testId"]}]
       89 GETUPVAL                         R14 11
       90 GETTABLEKS                       R14 R14 K30 ["Icon"]
       92 GETTABLEKS                       R14 R14 K31 ["Check"]
       94 SETTABLEKS                       R14 R13 K23 ["Text"]
       96 DUPTABLE                         R14 K33 [{"Font"}]
       97 GETUPVAL                         R16 11
       98 GETTABLEKS                       R16 R16 K32 ["Font"]
      100 GETUPVAL                         R17 11
      101 GETTABLEKS                       R17 R17 K34 ["IconVariant"]
      103 GETTABLEKS                       R17 R17 K35 ["Filled"]
      105 GETTABLE                         R15 R16 R17
      106 SETTABLEKS                       R15 R14 K32 ["Font"]
      108 SETTABLEKS                       R14 R13 K24 ["fontStyle"]
      110 GETTABLEKS                       R14 R4 K36 ["checkmark"]
      112 GETTABLEKS                       R14 R14 K27 ["tag"]
      114 SETTABLEKS                       R14 R13 K27 ["tag"]
      116 LOADK                            R15 K37 ["%*--checkmark"]
      117 GETTABLEKS                       R17 R2 K28 ["testId"]
      119 NAMECALL                         R15 R15 K38 ["format"]
      121 CALL                             R15 2 1
      122 MOVE                             R14 R15
      123 SETTABLEKS                       R14 R13 K28 ["testId"]
      125 CALL                             R11 2 1
      126 JUMP                             ; [+23]
      127 GETUPVAL                         R11 5
      128 GETTABLEKS                       R11 R11 K3 ["createElement"]
      130 GETUPVAL                         R12 12
      131 DUPTABLE                         R13 K41 [{["Image"] = "icons/status/success_small", ["tag"], ["testId"]}]
      132 GETTABLEKS                       R14 R4 K36 ["checkmark"]
      134 GETTABLEKS                       R14 R14 K27 ["tag"]
      136 SETTABLEKS                       R14 R13 K27 ["tag"]
      138 LOADK                            R15 K37 ["%*--checkmark"]
      139 GETTABLEKS                       R17 R2 K28 ["testId"]
      141 NAMECALL                         R15 R15 K38 ["format"]
      143 CALL                             R15 2 1
      144 MOVE                             R14 R15
      145 SETTABLEKS                       R14 R13 K28 ["testId"]
      147 CALL                             R11 2 1
      148 JUMP                             ; [+1]
      149 LOADNIL                          R11
      150 SETTABLEKS                       R11 R10 K20 ["Checkmark"]
      152 CALL                             R7 3 -1
      153 RETURN                           R7 -1

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
       43 GETTABLEKS                       R10 R5 K13 ["InternalInput"]
       45 GETTABLEKS                       R10 R10 K14 ["useUncontrolledState"]
       47 CALL                             R9 1 1
       48 GETIMPORT                        R10 K6 [require]
       50 GETTABLEKS                       R11 R5 K15 ["Types"]
       52 CALL                             R10 1 1
       53 GETIMPORT                        R11 K6 [require]
       55 GETTABLEKS                       R12 R0 K16 ["Utility"]
       57 GETTABLEKS                       R12 R12 K17 ["Flags"]
       59 CALL                             R11 1 1
       60 GETIMPORT                        R12 K6 [require]
       62 GETTABLEKS                       R13 R0 K18 ["Providers"]
       64 GETTABLEKS                       R13 R13 K19 ["Style"]
       66 GETTABLEKS                       R13 R13 K20 ["useTokens"]
       68 CALL                             R12 1 1
       69 GETIMPORT                        R13 K6 [require]
       71 GETTABLEKS                       R14 R0 K16 ["Utility"]
       73 GETTABLEKS                       R14 R14 K21 ["withCommonProps"]
       75 CALL                             R13 1 1
       76 GETIMPORT                        R14 K6 [require]
       78 GETTABLEKS                       R15 R0 K16 ["Utility"]
       80 GETTABLEKS                       R15 R15 K22 ["withDefaults"]
       82 CALL                             R14 1 1
       83 GETIMPORT                        R15 K6 [require]
       85 GETIMPORT                        R16 K1 [script]
       87 GETTABLEKS                       R16 R16 K4 ["Parent"]
       89 GETTABLEKS                       R16 R16 K23 ["useCheckboxVariants"]
       91 CALL                             R15 1 1
       92 GETIMPORT                        R16 K6 [require]
       94 GETTABLEKS                       R17 R0 K24 ["Enums"]
       96 GETTABLEKS                       R17 R17 K25 ["InputSize"]
       98 CALL                             R16 1 1
       99 GETIMPORT                        R17 K6 [require]
      101 GETTABLEKS                       R18 R0 K24 ["Enums"]
      103 GETTABLEKS                       R18 R18 K26 ["InputPlacement"]
      105 CALL                             R17 1 1
      106 DUPTABLE                         R18 K33 [{["size"], ["placement"], ["Selectable"] = True, ["testId"] = "--foundation-checkbox"}]
      107 GETTABLEKS                       R19 R16 K34 ["Medium"]
      109 SETTABLEKS                       R19 R18 K27 ["size"]
      111 GETTABLEKS                       R19 R17 K35 ["Start"]
      113 SETTABLEKS                       R19 R18 K28 ["placement"]
      115 DUPCLOSURE                       R19 K36 [PROTO_0]
      116 CAPTURE                          VAL R14
      117 CAPTURE                          VAL R18
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R15
      120 CAPTURE                          VAL R9
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R8
      123 CAPTURE                          VAL R13
      124 CAPTURE                          VAL R4
      125 CAPTURE                          VAL R11
      126 CAPTURE                          VAL R7
      127 CAPTURE                          VAL R3
      128 CAPTURE                          VAL R6
      129 GETTABLEKS                       R20 R2 K37 ["memo"]
      131 GETTABLEKS                       R21 R2 K38 ["forwardRef"]
      133 MOVE                             R22 R19
      134 CALL                             R21 1 -1
      135 CALL                             R20 -1 -1
      136 RETURN                           R20 -1
