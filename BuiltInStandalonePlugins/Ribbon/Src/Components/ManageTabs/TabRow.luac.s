PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnPress"]
        3 GETUPVAL                         R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnCheck"]
        3 GETUPVAL                         R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnCheck"]
        3 GETUPVAL                         R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["Item"]
        4 GETUPVAL                         R3 1
        5 LOADK                            R4 K1 ["TextButton"]
        6 NEWTABLE                         R5 8 0
        8 GETTABLEKS                       R6 R0 K2 ["Index"]
       10 SETTABLEKS                       R6 R5 K3 ["LayoutOrder"]
       12 GETTABLEKS                       R6 R0 K4 ["Position"]
       14 SETTABLEKS                       R6 R5 K4 ["Position"]
       16 GETTABLEKS                       R6 R0 K5 ["Size"]
       18 SETTABLEKS                       R6 R5 K5 ["Size"]
       20 GETUPVAL                         R8 2
       21 GETTABLEKS                       R7 R8 K6 ["Event"]
       23 GETTABLEKS                       R6 R7 K7 ["Activated"]
       25 NEWCLOSURE                       R7 P0
       26 CAPTURE                          VAL R0
       27 SETTABLE                         R7 R5 R6
       28 GETUPVAL                         R7 2
       29 GETTABLEKS                       R6 R7 K8 ["Tag"]
       31 GETUPVAL                         R7 3
       32 LOADK                            R8 K9 ["Component-TabRow Role-Surface X-Fit X-Middle"]
       33 GETTABLEKS                       R10 R0 K10 ["Selected"]
       35 JUMPIFNOT                        R10 ; [+2]
       36 LOADK                            R9 K10 ["Selected"]
       37 JUMP                             ; [+1]
       38 LOADNIL                          R9
       39 CALL                             R7 2 1
       40 SETTABLE                         R7 R5 R6
       41 DUPTABLE                         R6 K12 [{"Checkbox"}]
       42 GETUPVAL                         R8 4
       43 CALL                             R8 0 1
       44 JUMPIFNOT                        R8 ; [+58]
       45 GETUPVAL                         R7 1
       46 GETUPVAL                         R8 5
       47 DUPTABLE                         R9 K14 [{"LayoutOrder", "tag"}]
       48 MOVE                             R10 R1
       49 CALL                             R10 0 1
       50 SETTABLEKS                       R10 R9 K3 ["LayoutOrder"]
       52 LOADK                            R10 K15 ["auto-xy row gap-small"]
       53 SETTABLEKS                       R10 R9 K13 ["tag"]
       55 DUPTABLE                         R10 K17 [{"Checkbox", "Text"}]
       56 GETUPVAL                         R11 1
       57 GETUPVAL                         R12 6
       58 DUPTABLE                         R13 K22 [{"isChecked", "onActivated", "size", "label"}]
       59 GETTABLEKS                       R14 R2 K23 ["Checked"]
       61 SETTABLEKS                       R14 R13 K18 ["isChecked"]
       63 NEWCLOSURE                       R14 P1
       64 CAPTURE                          VAL R0
       65 SETTABLEKS                       R14 R13 K19 ["onActivated"]
       67 GETUPVAL                         R15 7
       68 GETTABLEKS                       R14 R15 K24 ["XSmall"]
       70 SETTABLEKS                       R14 R13 K20 ["size"]
       72 LOADK                            R14 K25 [""]
       73 SETTABLEKS                       R14 R13 K21 ["label"]
       75 CALL                             R11 2 1
       76 SETTABLEKS                       R11 R10 K11 ["Checkbox"]
       78 GETUPVAL                         R11 1
       79 GETUPVAL                         R12 8
       80 DUPTABLE                         R13 K27 [{"tag", "Text", "fontStyle"}]
       81 LOADK                            R14 K28 ["auto-xy"]
       82 SETTABLEKS                       R14 R13 K13 ["tag"]
       84 GETTABLEKS                       R14 R2 K16 ["Text"]
       86 SETTABLEKS                       R14 R13 K16 ["Text"]
       88 DUPTABLE                         R14 K31 [{"Font", "FontSize"}]
       89 GETIMPORT                        R15 K34 [Enum.Font.BuilderSans]
       91 SETTABLEKS                       R15 R14 K29 ["Font"]
       93 LOADN                            R15 15
       94 SETTABLEKS                       R15 R14 K30 ["FontSize"]
       96 SETTABLEKS                       R14 R13 K26 ["fontStyle"]
       98 CALL                             R11 2 1
       99 SETTABLEKS                       R11 R10 K16 ["Text"]
      101 CALL                             R7 3 1
      102 JUMP                             ; [+23]
      103 GETUPVAL                         R7 1
      104 GETUPVAL                         R8 9
      105 DUPTABLE                         R9 K37 [{"LayoutOrder", "Checked", "OnClick", "Text", "ExcludeTextFromClickableArea"}]
      106 MOVE                             R10 R1
      107 CALL                             R10 0 1
      108 SETTABLEKS                       R10 R9 K3 ["LayoutOrder"]
      110 GETTABLEKS                       R10 R2 K23 ["Checked"]
      112 SETTABLEKS                       R10 R9 K23 ["Checked"]
      114 NEWCLOSURE                       R10 P2
      115 CAPTURE                          VAL R0
      116 SETTABLEKS                       R10 R9 K35 ["OnClick"]
      118 GETTABLEKS                       R10 R2 K16 ["Text"]
      120 SETTABLEKS                       R10 R9 K16 ["Text"]
      122 LOADB                            R10 1
      123 SETTABLEKS                       R10 R9 K36 ["ExcludeTextFromClickableArea"]
      125 CALL                             R7 2 1
      126 SETTABLEKS                       R7 R6 K11 ["Checkbox"]
      128 CALL                             R3 3 -1
      129 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["View"]
       23 GETTABLEKS                       R4 R2 K10 ["Text"]
       25 GETTABLEKS                       R5 R1 K11 ["createElement"]
       27 GETIMPORT                        R6 K5 [require]
       29 GETTABLEKS                       R8 R0 K6 ["Packages"]
       31 GETTABLEKS                       R7 R8 K12 ["Framework"]
       33 CALL                             R6 1 1
       34 GETTABLEKS                       R8 R6 K13 ["Util"]
       36 GETTABLEKS                       R7 R8 K14 ["counter"]
       38 GETTABLEKS                       R9 R6 K15 ["Styling"]
       40 GETTABLEKS                       R8 R9 K16 ["joinTags"]
       42 GETIMPORT                        R9 K5 [require]
       44 GETTABLEKS                       R12 R0 K17 ["Src"]
       46 GETTABLEKS                       R11 R12 K18 ["SharedFlags"]
       48 GETTABLEKS                       R10 R11 K19 ["getFFlagRibbonCheckboxMigration"]
       50 CALL                             R9 1 1
       51 GETIMPORT                        R10 K5 [require]
       53 GETTABLEKS                       R13 R0 K17 ["Src"]
       55 GETTABLEKS                       R12 R13 K20 ["Components"]
       57 GETTABLEKS                       R11 R12 K21 ["RibbonCheckbox"]
       59 CALL                             R10 1 1
       60 GETTABLEKS                       R11 R2 K22 ["Checkbox"]
       62 GETTABLEKS                       R13 R2 K23 ["Enums"]
       64 GETTABLEKS                       R12 R13 K24 ["InputSize"]
       66 DUPCLOSURE                       R13 K25 [PROTO_3]
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R11
       74 CAPTURE                          VAL R12
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R10
       77 RETURN                           R13 1
