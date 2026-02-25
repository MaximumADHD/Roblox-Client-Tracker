PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K4 [{"Text", "isChecked", "onActivated"}]
        5 GETTABLEKS                       R5 R0 K1 ["Text"]
        7 SETTABLEKS                       R5 R4 K1 ["Text"]
        9 GETTABLEKS                       R6 R0 K6 ["Enabled"]
       11 ORK                              R5 R6 K5 [False]
       12 SETTABLEKS                       R5 R4 K2 ["isChecked"]
       14 GETTABLEKS                       R5 R0 K7 ["OnClick"]
       16 SETTABLEKS                       R5 R4 K3 ["onActivated"]
       18 CALL                             R2 2 -1
       19 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADB                            R2 1
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["createElement"]
        8 GETUPVAL                         R4 1
        9 DUPTABLE                         R5 K4 [{"LayoutOrder", "tag"}]
       10 GETTABLEKS                       R6 R0 K2 ["LayoutOrder"]
       12 SETTABLEKS                       R6 R5 K2 ["LayoutOrder"]
       14 LOADK                            R6 K5 ["col gap-xsmall auto-xy"]
       15 SETTABLEKS                       R6 R5 K3 ["tag"]
       17 DUPTABLE                         R6 K9 [{"TopDivider", "LabelButton", "ItemView"}]
       18 GETUPVAL                         R8 0
       19 GETTABLEKS                       R7 R8 K1 ["createElement"]
       21 GETUPVAL                         R8 2
       22 DUPTABLE                         R9 K11 [{"LayoutOrder", "orientation"}]
       23 LOADN                            R10 1
       24 SETTABLEKS                       R10 R9 K2 ["LayoutOrder"]
       26 GETUPVAL                         R12 3
       27 GETTABLEKS                       R11 R12 K12 ["DividerOrientation"]
       29 GETTABLEKS                       R10 R11 K13 ["Horizontal"]
       31 SETTABLEKS                       R10 R9 K10 ["orientation"]
       33 CALL                             R7 2 1
       34 SETTABLEKS                       R7 R6 K6 ["TopDivider"]
       36 GETUPVAL                         R8 0
       37 GETTABLEKS                       R7 R8 K1 ["createElement"]
       39 GETUPVAL                         R8 1
       40 DUPTABLE                         R9 K15 [{"LayoutOrder", "onActivated", "tag"}]
       41 LOADN                            R10 2
       42 SETTABLEKS                       R10 R9 K2 ["LayoutOrder"]
       44 NEWCLOSURE                       R10 P0
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R1
       47 SETTABLEKS                       R10 R9 K14 ["onActivated"]
       49 LOADK                            R10 K16 ["row auto-y size-full-500 align-y-center flex-x-between radius-small padding-xxsmall"]
       50 SETTABLEKS                       R10 R9 K3 ["tag"]
       52 DUPTABLE                         R10 K19 [{"Label", "Chevron"}]
       53 GETUPVAL                         R12 0
       54 GETTABLEKS                       R11 R12 K1 ["createElement"]
       56 GETUPVAL                         R12 4
       57 DUPTABLE                         R13 K21 [{"LayoutOrder", "Text", "tag"}]
       58 LOADN                            R14 1
       59 SETTABLEKS                       R14 R13 K2 ["LayoutOrder"]
       61 GETTABLEKS                       R14 R0 K20 ["Text"]
       63 SETTABLEKS                       R14 R13 K20 ["Text"]
       65 LOADK                            R14 K22 ["auto-xy text-caption-medium content-system-neutral"]
       66 SETTABLEKS                       R14 R13 K3 ["tag"]
       68 CALL                             R11 2 1
       69 SETTABLEKS                       R11 R10 K17 ["Label"]
       71 GETUPVAL                         R12 0
       72 GETTABLEKS                       R11 R12 K1 ["createElement"]
       74 GETUPVAL                         R12 5
       75 DUPTABLE                         R13 K25 [{"LayoutOrder", "name", "size"}]
       76 LOADN                            R14 2
       77 SETTABLEKS                       R14 R13 K2 ["LayoutOrder"]
       79 JUMPIFNOT                        R1 ; [+4]
       80 GETUPVAL                         R15 6
       81 GETTABLEKS                       R14 R15 K26 ["ChevronSmallUp"]
       83 JUMP                             ; [+3]
       84 GETUPVAL                         R15 6
       85 GETTABLEKS                       R14 R15 K27 ["ChevronSmallDown"]
       87 SETTABLEKS                       R14 R13 K23 ["name"]
       89 GETUPVAL                         R15 7
       90 GETTABLEKS                       R14 R15 K28 ["Small"]
       92 SETTABLEKS                       R14 R13 K24 ["size"]
       94 CALL                             R11 2 1
       95 SETTABLEKS                       R11 R10 K18 ["Chevron"]
       97 CALL                             R7 3 1
       98 SETTABLEKS                       R7 R6 K7 ["LabelButton"]
      100 JUMPIF                           R1 ; [+3]
      101 GETTABLEKS                       R8 R0 K29 ["KeepExpanded"]
      103 JUMPIFNOT                        R8 ; [+22]
      104 GETUPVAL                         R8 0
      105 GETTABLEKS                       R7 R8 K1 ["createElement"]
      107 GETUPVAL                         R8 1
      108 DUPTABLE                         R9 K4 [{"LayoutOrder", "tag"}]
      109 LOADN                            R10 3
      110 SETTABLEKS                       R10 R9 K2 ["LayoutOrder"]
      112 LOADK                            R10 K30 ["col gap-xxsmall size-full-0 auto-y"]
      113 SETTABLEKS                       R10 R9 K3 ["tag"]
      115 GETUPVAL                         R11 8
      116 GETTABLEKS                       R10 R11 K31 ["map"]
      118 GETTABLEKS                       R11 R0 K32 ["Items"]
      120 DUPCLOSURE                       R12 K33 [PROTO_1]
      121 CAPTURE                          UPVAL U0
      122 CAPTURE                          UPVAL U9
      123 CALL                             R10 2 -1
      124 CALL                             R7 -1 1
      125 JUMP                             ; [+1]
      126 LOADNIL                          R7
      127 SETTABLEKS                       R7 R6 K8 ["ItemView"]
      129 CALL                             R3 3 -1
      130 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["Enums"]
       30 GETTABLEKS                       R5 R3 K11 ["View"]
       32 GETTABLEKS                       R6 R3 K12 ["Icon"]
       34 GETTABLEKS                       R8 R3 K10 ["Enums"]
       36 GETTABLEKS                       R7 R8 K13 ["IconName"]
       38 GETTABLEKS                       R9 R3 K10 ["Enums"]
       40 GETTABLEKS                       R8 R9 K14 ["IconSize"]
       42 GETTABLEKS                       R9 R3 K15 ["Text"]
       44 GETTABLEKS                       R10 R3 K16 ["Divider"]
       46 GETIMPORT                        R11 K5 [require]
       48 GETIMPORT                        R14 K1 [script]
       50 GETTABLEKS                       R13 R14 K17 ["Parent"]
       52 GETTABLEKS                       R12 R13 K18 ["FilterTypeButton"]
       54 CALL                             R11 1 1
       55 GETIMPORT                        R12 K5 [require]
       57 GETIMPORT                        R15 K1 [script]
       59 GETTABLEKS                       R14 R15 K17 ["Parent"]
       61 GETTABLEKS                       R13 R14 K19 ["useFilterTypeTable"]
       63 CALL                             R12 1 1
       64 DUPCLOSURE                       R13 K20 [PROTO_2]
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R10
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R11
       75 RETURN                           R13 1
