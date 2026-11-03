PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R3 R0 K2 ["isSelected"]
        8 JUMPIFNOT                        R3 ; [+2]
        9 LOADK                            R2 K3 ["bg-content-emphasis"]
       10 JUMP                             ; [+1]
       11 LOADK                            R2 K4 [""]
       12 GETTABLEKS                       R4 R0 K6 ["isToggleDisabled"]
       14 ORK                              R3 R4 K5 [False]
       15 GETUPVAL                         R4 1
       16 GETUPVAL                         R5 2
       17 DUPTABLE                         R6 K11 [{"tag", "testId", "onActivated", "LayoutOrder"}]
       18 LOADK                            R7 K12 ["row align-y-center gap-small size-full-0 auto-y padding-x-small padding-y-xsmall %*"]
       19 MOVE                             R9 R2
       20 NAMECALL                         R7 R7 K13 ["format"]
       22 CALL                             R7 2 1
       23 SETTABLEKS                       R7 R6 K7 ["tag"]
       25 GETUPVAL                         R7 3
       26 GETTABLEKS                       R7 R7 K14 ["Skills"]
       28 GETTABLEKS                       R7 R7 K15 ["Row"]
       30 GETTABLEKS                       R8 R0 K16 ["skill"]
       32 GETTABLEKS                       R8 R8 K17 ["name"]
       34 CALL                             R7 1 1
       35 SETTABLEKS                       R7 R6 K8 ["testId"]
       37 GETTABLEKS                       R7 R0 K18 ["onSelected"]
       39 SETTABLEKS                       R7 R6 K9 ["onActivated"]
       41 GETTABLEKS                       R7 R0 K10 ["LayoutOrder"]
       43 SETTABLEKS                       R7 R6 K10 ["LayoutOrder"]
       45 DUPTABLE                         R7 K22 [{"Name", "ShadowWarning", "Toggle"}]
       46 GETUPVAL                         R8 1
       47 GETUPVAL                         R9 4
       48 DUPTABLE                         R10 K26 [{["tag"] = "fill auto-y text-body-small text-align-x-left content-default", ["Text"], ["LayoutOrder"] = 1}]
       49 GETTABLEKS                       R11 R0 K16 ["skill"]
       51 GETTABLEKS                       R11 R11 K17 ["name"]
       53 SETTABLEKS                       R11 R10 K24 ["Text"]
       55 CALL                             R8 2 1
       56 SETTABLEKS                       R8 R7 K19 ["Name"]
       58 JUMPIFNOT                        R3 ; [+54]
       59 GETUPVAL                         R8 1
       60 GETUPVAL                         R9 5
       61 DUPTABLE                         R10 K30 [{["text"], ["title"], ["LayoutOrder"] = 2}]
       62 GETUPVAL                         R11 6
       63 LOADK                            R13 K14 ["Skills"]
       64 LOADK                            R14 K31 ["ShadowedTooltipBody"]
       65 NAMECALL                         R11 R11 K32 ["getText"]
       67 CALL                             R11 3 1
       68 SETTABLEKS                       R11 R10 K27 ["text"]
       70 GETUPVAL                         R11 6
       71 LOADK                            R13 K14 ["Skills"]
       72 LOADK                            R14 K33 ["ShadowedTooltipTitle"]
       73 NAMECALL                         R11 R11 K32 ["getText"]
       75 CALL                             R11 3 1
       76 SETTABLEKS                       R11 R10 K28 ["title"]
       78 DUPTABLE                         R11 K35 [{"Anchor"}]
       79 GETUPVAL                         R12 1
       80 GETUPVAL                         R13 7
       81 DUPTABLE                         R14 K38 [{"name", "size", "style"}]
       82 GETUPVAL                         R15 0
       83 GETTABLEKS                       R15 R15 K39 ["Enums"]
       85 GETTABLEKS                       R15 R15 K40 ["IconName"]
       87 GETTABLEKS                       R15 R15 K41 ["CircleI"]
       89 SETTABLEKS                       R15 R14 K17 ["name"]
       91 GETUPVAL                         R15 0
       92 GETTABLEKS                       R15 R15 K39 ["Enums"]
       94 GETTABLEKS                       R15 R15 K42 ["IconSize"]
       96 GETTABLEKS                       R15 R15 K43 ["XSmall"]
       98 SETTABLEKS                       R15 R14 K36 ["size"]
      100 GETTABLEKS                       R15 R1 K44 ["Color"]
      102 GETTABLEKS                       R15 R15 K45 ["Content"]
      104 GETTABLEKS                       R15 R15 K46 ["Default"]
      106 SETTABLEKS                       R15 R14 K37 ["style"]
      108 CALL                             R12 2 1
      109 SETTABLEKS                       R12 R11 K34 ["Anchor"]
      111 CALL                             R8 3 1
      112 JUMP                             ; [+1]
      113 LOADNIL                          R8
      114 SETTABLEKS                       R8 R7 K20 ["ShadowWarning"]
      116 GETUPVAL                         R8 1
      117 GETUPVAL                         R9 8
      118 DUPTABLE                         R10 K51 [{["label"] = "", ["isChecked"], ["isDisabled"], ["onActivated"], ["size"], ["testId"], ["LayoutOrder"] = 3}]
      119 GETTABLEKS                       R11 R0 K52 ["isEnabled"]
      121 SETTABLEKS                       R11 R10 K48 ["isChecked"]
      123 SETTABLEKS                       R3 R10 K49 ["isDisabled"]
      125 GETTABLEKS                       R11 R0 K53 ["onToggled"]
      127 JUMPIF                           R11 ; [+1]
      128 DUPCLOSURE                       R11 K54 [PROTO_0]
      129 SETTABLEKS                       R11 R10 K9 ["onActivated"]
      131 GETUPVAL                         R11 9
      132 GETTABLEKS                       R11 R11 K55 ["Small"]
      134 SETTABLEKS                       R11 R10 K36 ["size"]
      136 GETUPVAL                         R11 3
      137 GETTABLEKS                       R11 R11 K14 ["Skills"]
      139 GETTABLEKS                       R11 R11 K21 ["Toggle"]
      141 GETTABLEKS                       R12 R0 K16 ["skill"]
      143 GETTABLEKS                       R12 R12 K17 ["name"]
      145 CALL                             R11 1 1
      146 SETTABLEKS                       R11 R10 K8 ["testId"]
      148 CALL                             R8 2 1
      149 SETTABLEKS                       R8 R7 K21 ["Toggle"]
      151 CALL                             R4 3 -1
      152 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Skills"]
       25 GETTABLEKS                       R4 R4 K10 ["SkillDefinition"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Util"]
       32 GETTABLEKS                       R5 R5 K12 ["TestIds"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K13 ["Resources"]
       39 GETTABLEKS                       R6 R6 K14 ["Localization"]
       41 GETTABLEKS                       R6 R6 K15 ["Translator"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R1 K16 ["Icon"]
       46 GETTABLEKS                       R7 R1 K17 ["Text"]
       48 GETTABLEKS                       R8 R1 K18 ["Toggle"]
       50 GETTABLEKS                       R9 R1 K19 ["Tooltip"]
       52 GETTABLEKS                       R10 R1 K20 ["View"]
       54 GETTABLEKS                       R11 R1 K21 ["Enums"]
       56 GETTABLEKS                       R11 R11 K22 ["InputSize"]
       58 GETTABLEKS                       R12 R2 K23 ["createElement"]
       60 DUPCLOSURE                       R13 K24 [PROTO_1]
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R12
       63 CAPTURE                          VAL R10
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R11
       71 RETURN                           R13 1
