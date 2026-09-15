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
        8 JUMPIF                           R3 ; [+11]
        9 GETTABLEKS                       R3 R0 K3 ["Warn"]
       11 LOADK                            R4 K4 ["Missing Setting field for Checkbox with id %*"]
       12 GETTABLEKS                       R6 R2 K5 ["Id"]
       14 NAMECALL                         R4 R4 K6 ["format"]
       16 CALL                             R4 2 1
       17 CALL                             R3 1 0
       18 LOADNIL                          R3
       19 RETURN                           R3 1
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K7 ["toString"]
       23 GETTABLEKS                       R4 R2 K2 ["Setting"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R5 R0 K8 ["Items"]
       28 GETTABLEKS                       R5 R5 K9 ["Settings"]
       30 GETTABLE                         R4 R5 R3
       31 JUMPIF                           R4 ; [+12]
       32 GETTABLEKS                       R5 R0 K3 ["Warn"]
       34 LOADK                            R6 K10 ["Missing Setting %* for Checkbox with id %*"]
       35 MOVE                             R8 R3
       36 GETTABLEKS                       R9 R2 K5 ["Id"]
       38 NAMECALL                         R6 R6 K6 ["format"]
       40 CALL                             R6 3 1
       41 CALL                             R5 1 0
       42 LOADNIL                          R5
       43 RETURN                           R5 1
       44 GETTABLEKS                       R6 R2 K11 ["IconOnly"]
       46 JUMPIFEQKNIL                     R6 ; [+6]
       48 GETTABLEKS                       R6 R2 K11 ["IconOnly"]
       50 JUMPIFNOT                        R6 ; [+2]
       51 LOADNIL                          R5
       52 JUMP                             ; [+6]
       53 GETUPVAL                         R5 2
       54 MOVE                             R6 R1
       55 LOADK                            R7 K12 ["Text"]
       56 MOVE                             R8 R2
       57 MOVE                             R9 R4
       58 CALL                             R5 4 1
       59 GETTABLEKS                       R7 R0 K13 ["WidgetUri"]
       61 JUMPIFNOT                        R7 ; [+12]
       62 GETTABLEKS                       R7 R2 K5 ["Id"]
       64 JUMPIFNOT                        R7 ; [+9]
       65 GETUPVAL                         R6 1
       66 GETTABLEKS                       R6 R6 K14 ["child"]
       68 GETTABLEKS                       R7 R0 K13 ["WidgetUri"]
       70 GETTABLEKS                       R8 R2 K5 ["Id"]
       72 CALL                             R6 2 1
       73 JUMP                             ; [+1]
       74 LOADNIL                          R6
       75 GETUPVAL                         R7 3
       76 CALL                             R7 0 1
       77 JUMPIFNOT                        R7 ; [+66]
       78 GETUPVAL                         R7 4
       79 GETUPVAL                         R8 5
       80 DUPTABLE                         R9 K22 [{"isChecked", "isDisabled", "LayoutOrder", "onActivated", "size", "testId", "label"}]
       81 GETTABLEKS                       R10 R4 K23 ["Value"]
       83 SETTABLEKS                       R10 R9 K15 ["isChecked"]
       85 GETTABLEKS                       R11 R4 K24 ["Enabled"]
       87 NOT                              R10 R11
       88 SETTABLEKS                       R10 R9 K16 ["isDisabled"]
       90 GETTABLEKS                       R10 R0 K17 ["LayoutOrder"]
       92 SETTABLEKS                       R10 R9 K17 ["LayoutOrder"]
       94 NEWCLOSURE                       R10 P0
       95 CAPTURE                          VAL R0
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R6
       99 SETTABLEKS                       R10 R9 K18 ["onActivated"]
      101 GETTABLEKS                       R11 R2 K25 ["Size"]
      103 JUMPIF                           R11 ; [+4]
      104 GETUPVAL                         R10 6
      105 GETTABLEKS                       R10 R10 K26 ["Medium"]
      107 JUMP                             ; [+21]
      108 JUMPIFNOTEQKS                    R11 K27 ["Large"] ; [+5]
      110 GETUPVAL                         R10 6
      111 GETTABLEKS                       R10 R10 K26 ["Medium"]
      113 JUMP                             ; [+15]
      114 JUMPIFNOTEQKS                    R11 K26 ["Medium"] ; [+5]
      116 GETUPVAL                         R10 6
      117 GETTABLEKS                       R10 R10 K28 ["Small"]
      119 JUMP                             ; [+9]
      120 JUMPIFNOTEQKS                    R11 K28 ["Small"] ; [+5]
      122 GETUPVAL                         R10 6
      123 GETTABLEKS                       R10 R10 K29 ["XSmall"]
      125 JUMP                             ; [+3]
      126 GETUPVAL                         R10 6
      127 GETTABLEKS                       R10 R10 K29 ["XSmall"]
      129 SETTABLEKS                       R10 R9 K19 ["size"]
      131 JUMPIFNOT                        R6 ; [+4]
      132 GETUPVAL                         R10 7
      133 MOVE                             R11 R6
      134 CALL                             R10 1 1
      135 JUMP                             ; [+1]
      136 LOADNIL                          R10
      137 SETTABLEKS                       R10 R9 K20 ["testId"]
      139 ORK                              R10 R5 K30 [""]
      140 SETTABLEKS                       R10 R9 K21 ["label"]
      142 CALL                             R7 2 -1
      143 RETURN                           R7 -1
      144 GETUPVAL                         R7 4
      145 GETUPVAL                         R8 8
      146 DUPTABLE                         R9 K35 [{"Uri", "Checked", "Disabled", "LayoutOrder", "OnClick", "Size", "Text"}]
      147 SETTABLEKS                       R6 R9 K31 ["Uri"]
      149 GETTABLEKS                       R10 R4 K23 ["Value"]
      151 SETTABLEKS                       R10 R9 K32 ["Checked"]
      153 GETTABLEKS                       R11 R4 K24 ["Enabled"]
      155 NOT                              R10 R11
      156 SETTABLEKS                       R10 R9 K33 ["Disabled"]
      158 GETTABLEKS                       R10 R0 K17 ["LayoutOrder"]
      160 SETTABLEKS                       R10 R9 K17 ["LayoutOrder"]
      162 NEWCLOSURE                       R10 P1
      163 CAPTURE                          VAL R0
      164 CAPTURE                          VAL R2
      165 CAPTURE                          VAL R4
      166 SETTABLEKS                       R10 R9 K34 ["OnClick"]
      168 GETTABLEKS                       R11 R2 K25 ["Size"]
      170 ORK                              R10 R11 K27 ["Large"]
      171 SETTABLEKS                       R10 R9 K25 ["Size"]
      173 SETTABLEKS                       R5 R9 K12 ["Text"]
      175 CALL                             R7 2 -1
      176 RETURN                           R7 -1

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
