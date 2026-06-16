PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 1
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["createElement"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K2 ["View"]
       11 DUPTABLE                         R5 K5 [{"LayoutOrder", "tag"}]
       12 GETTABLEKS                       R6 R0 K3 ["LayoutOrder"]
       14 SETTABLEKS                       R6 R5 K3 ["LayoutOrder"]
       16 LOADK                            R6 K6 ["col gap-xsmall auto-xy"]
       17 SETTABLEKS                       R6 R5 K4 ["tag"]
       19 DUPTABLE                         R6 K10 [{"TopDivider", "LabelButton", "ItemView"}]
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R7 R7 K1 ["createElement"]
       23 GETUPVAL                         R8 1
       24 GETTABLEKS                       R8 R8 K11 ["Divider"]
       26 DUPTABLE                         R9 K13 [{"LayoutOrder", "orientation"}]
       27 LOADN                            R10 1
       28 SETTABLEKS                       R10 R9 K3 ["LayoutOrder"]
       30 GETUPVAL                         R10 1
       31 GETTABLEKS                       R10 R10 K14 ["Enums"]
       33 GETTABLEKS                       R10 R10 K15 ["DividerOrientation"]
       35 GETTABLEKS                       R10 R10 K16 ["Horizontal"]
       37 SETTABLEKS                       R10 R9 K12 ["orientation"]
       39 CALL                             R7 2 1
       40 SETTABLEKS                       R7 R6 K7 ["TopDivider"]
       42 GETUPVAL                         R7 0
       43 GETTABLEKS                       R7 R7 K1 ["createElement"]
       45 GETUPVAL                         R8 1
       46 GETTABLEKS                       R8 R8 K2 ["View"]
       48 DUPTABLE                         R9 K18 [{"LayoutOrder", "onActivated", "tag"}]
       49 LOADN                            R10 2
       50 SETTABLEKS                       R10 R9 K3 ["LayoutOrder"]
       52 NEWCLOSURE                       R10 P0
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R1
       55 SETTABLEKS                       R10 R9 K17 ["onActivated"]
       57 LOADK                            R10 K19 ["row auto-y size-full-500 align-y-center flex-x-between radius-small padding-xxsmall"]
       58 SETTABLEKS                       R10 R9 K4 ["tag"]
       60 DUPTABLE                         R10 K22 [{"Label", "Chevron"}]
       61 GETUPVAL                         R11 0
       62 GETTABLEKS                       R11 R11 K1 ["createElement"]
       64 GETUPVAL                         R12 1
       65 GETTABLEKS                       R12 R12 K23 ["Text"]
       67 DUPTABLE                         R13 K24 [{"LayoutOrder", "Text", "tag"}]
       68 LOADN                            R14 1
       69 SETTABLEKS                       R14 R13 K3 ["LayoutOrder"]
       71 GETTABLEKS                       R14 R0 K23 ["Text"]
       73 SETTABLEKS                       R14 R13 K23 ["Text"]
       75 LOADK                            R14 K25 ["auto-xy text-caption-medium content-system-neutral"]
       76 SETTABLEKS                       R14 R13 K4 ["tag"]
       78 CALL                             R11 2 1
       79 SETTABLEKS                       R11 R10 K20 ["Label"]
       81 GETUPVAL                         R11 0
       82 GETTABLEKS                       R11 R11 K1 ["createElement"]
       84 GETUPVAL                         R12 1
       85 GETTABLEKS                       R12 R12 K26 ["Icon"]
       87 DUPTABLE                         R13 K29 [{"LayoutOrder", "name", "size"}]
       88 LOADN                            R14 2
       89 SETTABLEKS                       R14 R13 K3 ["LayoutOrder"]
       91 JUMPIFNOT                        R1 ; [+8]
       92 GETUPVAL                         R14 1
       93 GETTABLEKS                       R14 R14 K14 ["Enums"]
       95 GETTABLEKS                       R14 R14 K30 ["IconName"]
       97 GETTABLEKS                       R14 R14 K31 ["ChevronSmallUp"]
       99 JUMP                             ; [+7]
      100 GETUPVAL                         R14 1
      101 GETTABLEKS                       R14 R14 K14 ["Enums"]
      103 GETTABLEKS                       R14 R14 K30 ["IconName"]
      105 GETTABLEKS                       R14 R14 K32 ["ChevronSmallDown"]
      107 SETTABLEKS                       R14 R13 K27 ["name"]
      109 GETUPVAL                         R14 1
      110 GETTABLEKS                       R14 R14 K14 ["Enums"]
      112 GETTABLEKS                       R14 R14 K33 ["IconSize"]
      114 GETTABLEKS                       R14 R14 K34 ["Small"]
      116 SETTABLEKS                       R14 R13 K28 ["size"]
      118 CALL                             R11 2 1
      119 SETTABLEKS                       R11 R10 K21 ["Chevron"]
      121 CALL                             R7 3 1
      122 SETTABLEKS                       R7 R6 K8 ["LabelButton"]
      124 JUMPIF                           R1 ; [+3]
      125 GETTABLEKS                       R8 R0 K35 ["KeepExpanded"]
      127 JUMPIFNOT                        R8 ; [+24]
      128 GETUPVAL                         R7 0
      129 GETTABLEKS                       R7 R7 K1 ["createElement"]
      131 GETUPVAL                         R8 1
      132 GETTABLEKS                       R8 R8 K2 ["View"]
      134 DUPTABLE                         R9 K5 [{"LayoutOrder", "tag"}]
      135 LOADN                            R10 3
      136 SETTABLEKS                       R10 R9 K3 ["LayoutOrder"]
      138 LOADK                            R10 K36 ["col gap-xxsmall size-full-0 auto-y"]
      139 SETTABLEKS                       R10 R9 K4 ["tag"]
      141 GETUPVAL                         R10 2
      142 GETTABLEKS                       R10 R10 K37 ["map"]
      144 GETTABLEKS                       R11 R0 K38 ["Items"]
      146 DUPCLOSURE                       R12 K39 [PROTO_1]
      147 CAPTURE                          UPVAL U0
      148 CAPTURE                          UPVAL U3
      149 CALL                             R10 2 -1
      150 CALL                             R7 -1 1
      151 JUMP                             ; [+1]
      152 LOADNIL                          R7
      153 SETTABLEKS                       R7 R6 K9 ["ItemView"]
      155 CALL                             R3 3 -1
      156 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETIMPORT                        R5 K1 [script]
       32 GETTABLEKS                       R5 R5 K10 ["Parent"]
       34 GETTABLEKS                       R5 R5 K11 ["FilterTypeButton"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K12 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["Hooks"]
       43 GETTABLEKS                       R6 R6 K14 ["useFilterTypeTable"]
       45 CALL                             R5 1 1
       46 DUPCLOSURE                       R6 K15 [PROTO_2]
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R4
       51 RETURN                           R6 1
