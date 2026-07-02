PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnPress"]
        3 GETUPVAL                         R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnCheck"]
        3 GETUPVAL                         R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnCheck"]
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
       20 GETUPVAL                         R6 2
       21 GETTABLEKS                       R6 R6 K6 ["Event"]
       23 GETTABLEKS                       R6 R6 K7 ["Activated"]
       25 NEWCLOSURE                       R7 P0
       26 CAPTURE                          VAL R0
       27 SETTABLE                         R7 R5 R6
       28 GETUPVAL                         R6 2
       29 GETTABLEKS                       R6 R6 K8 ["Tag"]
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
       44 JUMPIFNOT                        R8 ; [+46]
       45 GETUPVAL                         R7 1
       46 GETUPVAL                         R8 5
       47 DUPTABLE                         R9 K15 [{["LayoutOrder"], ["tag"] = "row gap-small auto-xy"}]
       48 MOVE                             R10 R1
       49 CALL                             R10 0 1
       50 SETTABLEKS                       R10 R9 K3 ["LayoutOrder"]
       52 DUPTABLE                         R10 K17 [{"Checkbox", "Text"}]
       53 GETUPVAL                         R11 1
       54 GETUPVAL                         R12 6
       55 DUPTABLE                         R13 K23 [{["isChecked"], ["onActivated"], ["size"], ["label"] = ""}]
       56 GETTABLEKS                       R14 R2 K24 ["Checked"]
       58 SETTABLEKS                       R14 R13 K18 ["isChecked"]
       60 NEWCLOSURE                       R14 P1
       61 CAPTURE                          VAL R0
       62 SETTABLEKS                       R14 R13 K19 ["onActivated"]
       64 GETUPVAL                         R14 7
       65 GETTABLEKS                       R14 R14 K25 ["XSmall"]
       67 SETTABLEKS                       R14 R13 K20 ["size"]
       69 CALL                             R11 2 1
       70 SETTABLEKS                       R11 R10 K11 ["Checkbox"]
       72 GETUPVAL                         R11 1
       73 GETUPVAL                         R12 8
       74 DUPTABLE                         R13 K28 [{["tag"] = "auto-xy", ["Text"], ["fontStyle"]}]
       75 GETTABLEKS                       R14 R2 K16 ["Text"]
       77 SETTABLEKS                       R14 R13 K16 ["Text"]
       79 DUPTABLE                         R14 K32 [{["Font"], ["FontSize"] = 15}]
       80 GETIMPORT                        R15 K35 [Enum.Font.BuilderSans]
       82 SETTABLEKS                       R15 R14 K29 ["Font"]
       84 SETTABLEKS                       R14 R13 K27 ["fontStyle"]
       86 CALL                             R11 2 1
       87 SETTABLEKS                       R11 R10 K16 ["Text"]
       89 CALL                             R7 3 1
       90 JUMP                             ; [+20]
       91 GETUPVAL                         R7 1
       92 GETUPVAL                         R8 9
       93 DUPTABLE                         R9 K39 [{["LayoutOrder"], ["Checked"], ["OnClick"], ["Text"], ["ExcludeTextFromClickableArea"] = True}]
       94 MOVE                             R10 R1
       95 CALL                             R10 0 1
       96 SETTABLEKS                       R10 R9 K3 ["LayoutOrder"]
       98 GETTABLEKS                       R10 R2 K24 ["Checked"]
      100 SETTABLEKS                       R10 R9 K24 ["Checked"]
      102 NEWCLOSURE                       R10 P2
      103 CAPTURE                          VAL R0
      104 SETTABLEKS                       R10 R9 K36 ["OnClick"]
      106 GETTABLEKS                       R10 R2 K16 ["Text"]
      108 SETTABLEKS                       R10 R9 K16 ["Text"]
      110 CALL                             R7 2 1
      111 SETTABLEKS                       R7 R6 K11 ["Checkbox"]
      113 CALL                             R3 3 -1
      114 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["View"]
       23 GETTABLEKS                       R4 R2 K10 ["Text"]
       25 GETTABLEKS                       R5 R1 K11 ["createElement"]
       27 GETIMPORT                        R6 K5 [require]
       29 GETTABLEKS                       R7 R0 K6 ["Packages"]
       31 GETTABLEKS                       R7 R7 K12 ["Framework"]
       33 CALL                             R6 1 1
       34 GETTABLEKS                       R7 R6 K13 ["Util"]
       36 GETTABLEKS                       R7 R7 K14 ["counter"]
       38 GETTABLEKS                       R8 R6 K15 ["Styling"]
       40 GETTABLEKS                       R8 R8 K16 ["joinTags"]
       42 GETIMPORT                        R9 K5 [require]
       44 GETTABLEKS                       R10 R0 K17 ["Src"]
       46 GETTABLEKS                       R10 R10 K18 ["SharedFlags"]
       48 GETTABLEKS                       R10 R10 K19 ["getFFlagRibbonCheckboxMigration"]
       50 CALL                             R9 1 1
       51 GETIMPORT                        R10 K5 [require]
       53 GETTABLEKS                       R11 R0 K17 ["Src"]
       55 GETTABLEKS                       R11 R11 K20 ["Components"]
       57 GETTABLEKS                       R11 R11 K21 ["RibbonCheckbox"]
       59 CALL                             R10 1 1
       60 GETTABLEKS                       R11 R2 K22 ["Checkbox"]
       62 GETTABLEKS                       R12 R2 K23 ["Enums"]
       64 GETTABLEKS                       R12 R12 K24 ["InputSize"]
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
