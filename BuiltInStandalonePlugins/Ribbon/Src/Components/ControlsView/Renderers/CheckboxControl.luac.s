PROTO_0:
        0 JUMPIF                           R0 ; [+4]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["Medium"]
        4 RETURN                           R1 1
        5 JUMPIFNOTEQKS                    R0 K1 ["Large"] ; [+5]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["Medium"]
       10 RETURN                           R1 1
       11 JUMPIFNOTEQKS                    R0 K0 ["Medium"] ; [+5]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K2 ["Small"]
       16 RETURN                           R1 1
       17 JUMPIFNOTEQKS                    R0 K2 ["Small"] ; [+5]
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K3 ["XSmall"]
       22 RETURN                           R1 1
       23 GETUPVAL                         R1 0
       24 GETTABLEKS                       R1 R1 K3 ["XSmall"]
       26 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Select"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Setting"]
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R4 R4 K2 ["Value"]
        9 NOT                              R3 R4
       10 GETUPVAL                         R4 3
       11 CALL                             R1 3 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Select"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Setting"]
        6 GETUPVAL                         R5 2
        7 GETTABLEKS                       R5 R5 K2 ["Value"]
        9 NOT                              R4 R5
       10 MOVE                             R5 R1
       11 CALL                             R2 3 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R0 K1 ["Item"]
        6 GETTABLEKS                       R3 R2 K2 ["Setting"]
        8 JUMPIF                           R3 ; [+12]
        9 GETTABLEKS                       R3 R0 K3 ["Warn"]
       11 LOADK                            R5 K4 ["Missing Setting field for Checkbox with id %*"]
       12 GETTABLEKS                       R7 R2 K5 ["Id"]
       14 NAMECALL                         R5 R5 K6 ["format"]
       16 CALL                             R5 2 1
       17 MOVE                             R4 R5
       18 CALL                             R3 1 0
       19 LOADNIL                          R3
       20 RETURN                           R3 1
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K7 ["toString"]
       24 GETTABLEKS                       R4 R2 K2 ["Setting"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R5 R0 K8 ["Items"]
       29 GETTABLEKS                       R5 R5 K9 ["Settings"]
       31 GETTABLE                         R4 R5 R3
       32 JUMPIF                           R4 ; [+13]
       33 GETTABLEKS                       R5 R0 K3 ["Warn"]
       35 LOADK                            R7 K10 ["Missing Setting %* for Checkbox with id %*"]
       36 MOVE                             R9 R3
       37 GETTABLEKS                       R10 R2 K5 ["Id"]
       39 NAMECALL                         R7 R7 K6 ["format"]
       41 CALL                             R7 3 1
       42 MOVE                             R6 R7
       43 CALL                             R5 1 0
       44 LOADNIL                          R5
       45 RETURN                           R5 1
       46 GETTABLEKS                       R6 R2 K11 ["IconOnly"]
       48 JUMPIFEQKNIL                     R6 ; [+6]
       50 GETTABLEKS                       R6 R2 K11 ["IconOnly"]
       52 JUMPIFNOT                        R6 ; [+2]
       53 LOADNIL                          R5
       54 JUMP                             ; [+6]
       55 GETUPVAL                         R5 2
       56 MOVE                             R6 R1
       57 LOADK                            R7 K12 ["Text"]
       58 MOVE                             R8 R2
       59 MOVE                             R9 R4
       60 CALL                             R5 4 1
       61 GETTABLEKS                       R7 R0 K13 ["WidgetUri"]
       63 JUMPIFNOT                        R7 ; [+12]
       64 GETTABLEKS                       R7 R2 K5 ["Id"]
       66 JUMPIFNOT                        R7 ; [+9]
       67 GETUPVAL                         R6 1
       68 GETTABLEKS                       R6 R6 K14 ["child"]
       70 GETTABLEKS                       R7 R0 K13 ["WidgetUri"]
       72 GETTABLEKS                       R8 R2 K5 ["Id"]
       74 CALL                             R6 2 1
       75 JUMP                             ; [+1]
       76 LOADNIL                          R6
       77 GETUPVAL                         R7 3
       78 CALL                             R7 0 1
       79 JUMPIFNOT                        R7 ; [+66]
       80 GETUPVAL                         R7 4
       81 GETUPVAL                         R8 5
       82 DUPTABLE                         R9 K22 [{"isChecked", "isDisabled", "LayoutOrder", "onActivated", "size", "testId", "label"}]
       83 GETTABLEKS                       R10 R4 K23 ["Value"]
       85 SETTABLEKS                       R10 R9 K15 ["isChecked"]
       87 GETTABLEKS                       R11 R4 K24 ["Enabled"]
       89 NOT                              R10 R11
       90 SETTABLEKS                       R10 R9 K16 ["isDisabled"]
       92 GETTABLEKS                       R10 R0 K17 ["LayoutOrder"]
       94 SETTABLEKS                       R10 R9 K17 ["LayoutOrder"]
       96 NEWCLOSURE                       R10 P0
       97 CAPTURE                          VAL R0
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R6
      101 SETTABLEKS                       R10 R9 K18 ["onActivated"]
      103 GETTABLEKS                       R11 R2 K25 ["Size"]
      105 JUMPIF                           R11 ; [+4]
      106 GETUPVAL                         R10 6
      107 GETTABLEKS                       R10 R10 K26 ["Medium"]
      109 JUMP                             ; [+21]
      110 JUMPIFNOTEQKS                    R11 K27 ["Large"] ; [+5]
      112 GETUPVAL                         R10 6
      113 GETTABLEKS                       R10 R10 K26 ["Medium"]
      115 JUMP                             ; [+15]
      116 JUMPIFNOTEQKS                    R11 K26 ["Medium"] ; [+5]
      118 GETUPVAL                         R10 6
      119 GETTABLEKS                       R10 R10 K28 ["Small"]
      121 JUMP                             ; [+9]
      122 JUMPIFNOTEQKS                    R11 K28 ["Small"] ; [+5]
      124 GETUPVAL                         R10 6
      125 GETTABLEKS                       R10 R10 K29 ["XSmall"]
      127 JUMP                             ; [+3]
      128 GETUPVAL                         R10 6
      129 GETTABLEKS                       R10 R10 K29 ["XSmall"]
      131 SETTABLEKS                       R10 R9 K19 ["size"]
      133 JUMPIFNOT                        R6 ; [+4]
      134 GETUPVAL                         R10 7
      135 MOVE                             R11 R6
      136 CALL                             R10 1 1
      137 JUMP                             ; [+1]
      138 LOADNIL                          R10
      139 SETTABLEKS                       R10 R9 K20 ["testId"]
      141 ORK                              R10 R5 K30 [""]
      142 SETTABLEKS                       R10 R9 K21 ["label"]
      144 CALL                             R7 2 -1
      145 RETURN                           R7 -1
      146 GETUPVAL                         R7 4
      147 GETUPVAL                         R8 8
      148 DUPTABLE                         R9 K35 [{"Uri", "Checked", "Disabled", "LayoutOrder", "OnClick", "Size", "Text"}]
      149 SETTABLEKS                       R6 R9 K31 ["Uri"]
      151 GETTABLEKS                       R10 R4 K23 ["Value"]
      153 SETTABLEKS                       R10 R9 K32 ["Checked"]
      155 GETTABLEKS                       R11 R4 K24 ["Enabled"]
      157 NOT                              R10 R11
      158 SETTABLEKS                       R10 R9 K33 ["Disabled"]
      160 GETTABLEKS                       R10 R0 K17 ["LayoutOrder"]
      162 SETTABLEKS                       R10 R9 K17 ["LayoutOrder"]
      164 NEWCLOSURE                       R10 P1
      165 CAPTURE                          VAL R0
      166 CAPTURE                          VAL R2
      167 CAPTURE                          VAL R4
      168 SETTABLEKS                       R10 R9 K34 ["OnClick"]
      170 GETTABLEKS                       R11 R2 K25 ["Size"]
      172 ORK                              R10 R11 K27 ["Large"]
      173 SETTABLEKS                       R10 R9 K25 ["Size"]
      175 SETTABLEKS                       R5 R9 K12 ["Text"]
      177 CALL                             R7 2 -1
      178 RETURN                           R7 -1

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
       21 GETTABLEKS                       R3 R1 K9 ["createElement"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K6 ["Packages"]
       27 GETTABLEKS                       R5 R5 K10 ["StudioFoundation"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R4 K11 ["Util"]
       32 GETTABLEKS                       R5 R5 K12 ["StudioUri"]
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R0 K13 ["Src"]
       38 GETTABLEKS                       R7 R7 K14 ["Components"]
       40 GETTABLEKS                       R7 R7 K15 ["RibbonCheckbox"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R8 R0 K13 ["Src"]
       47 GETTABLEKS                       R8 R8 K14 ["Components"]
       49 GETTABLEKS                       R8 R8 K16 ["ControlsView"]
       51 GETTABLEKS                       R8 R8 K17 ["getLocalizedField"]
       53 CALL                             R7 1 1
       54 GETTABLEKS                       R8 R2 K18 ["Checkbox"]
       56 GETTABLEKS                       R9 R2 K19 ["Enums"]
       58 GETTABLEKS                       R9 R9 K20 ["InputSize"]
       60 GETIMPORT                        R10 K5 [require]
       62 GETTABLEKS                       R11 R0 K6 ["Packages"]
       64 GETTABLEKS                       R11 R11 K21 ["Framework"]
       66 CALL                             R10 1 1
       67 GETTABLEKS                       R11 R10 K22 ["ContextServices"]
       69 GETTABLEKS                       R12 R11 K23 ["Localization"]
       71 GETIMPORT                        R13 K5 [require]
       73 GETTABLEKS                       R14 R0 K13 ["Src"]
       75 GETTABLEKS                       R14 R14 K24 ["SharedFlags"]
       77 GETTABLEKS                       R14 R14 K25 ["getFFlagRibbonCheckboxMigration"]
       79 CALL                             R13 1 1
       80 GETIMPORT                        R14 K5 [require]
       82 GETTABLEKS                       R15 R0 K13 ["Src"]
       84 GETTABLEKS                       R15 R15 K11 ["Util"]
       86 GETTABLEKS                       R15 R15 K26 ["uriToTestId"]
       88 CALL                             R14 1 1
       89 GETIMPORT                        R15 K5 [require]
       91 GETTABLEKS                       R16 R0 K13 ["Src"]
       93 GETTABLEKS                       R16 R16 K14 ["Components"]
       95 GETTABLEKS                       R16 R16 K16 ["ControlsView"]
       97 GETTABLEKS                       R16 R16 K27 ["ControlProps"]
       99 CALL                             R15 1 1
      100 GETIMPORT                        R16 K5 [require]
      102 GETTABLEKS                       R17 R0 K13 ["Src"]
      104 GETTABLEKS                       R17 R17 K28 ["Types"]
      106 CALL                             R16 1 1
      107 DUPCLOSURE                       R17 K29 [PROTO_0]
      108 CAPTURE                          VAL R9
      109 DUPCLOSURE                       R18 K30 [PROTO_3]
      110 CAPTURE                          VAL R12
      111 CAPTURE                          VAL R5
      112 CAPTURE                          VAL R7
      113 CAPTURE                          VAL R13
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R8
      116 CAPTURE                          VAL R9
      117 CAPTURE                          VAL R14
      118 CAPTURE                          VAL R6
      119 RETURN                           R18 1
