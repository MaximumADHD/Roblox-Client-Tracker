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
       11 DUPTABLE                         R5 K6 [{["LayoutOrder"], ["tag"] = "col gap-xsmall auto-xy"}]
       12 GETTABLEKS                       R6 R0 K3 ["LayoutOrder"]
       14 SETTABLEKS                       R6 R5 K3 ["LayoutOrder"]
       16 DUPTABLE                         R6 K10 [{"TopDivider", "LabelButton", "ItemView"}]
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R7 R7 K1 ["createElement"]
       20 GETUPVAL                         R8 1
       21 GETTABLEKS                       R8 R8 K11 ["Divider"]
       23 DUPTABLE                         R9 K14 [{["LayoutOrder"] = 1, ["orientation"]}]
       24 GETUPVAL                         R10 1
       25 GETTABLEKS                       R10 R10 K15 ["Enums"]
       27 GETTABLEKS                       R10 R10 K16 ["DividerOrientation"]
       29 GETTABLEKS                       R10 R10 K17 ["Horizontal"]
       31 SETTABLEKS                       R10 R9 K13 ["orientation"]
       33 CALL                             R7 2 1
       34 SETTABLEKS                       R7 R6 K7 ["TopDivider"]
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R7 R7 K1 ["createElement"]
       39 GETUPVAL                         R8 1
       40 GETTABLEKS                       R8 R8 K2 ["View"]
       42 DUPTABLE                         R9 K21 [{["LayoutOrder"] = 2, ["onActivated"], ["tag"] = "row flex-x-between align-y-center size-full-500 auto-y padding-xxsmall radius-small"}]
       43 NEWCLOSURE                       R10 P0
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R1
       46 SETTABLEKS                       R10 R9 K19 ["onActivated"]
       48 DUPTABLE                         R10 K24 [{"Label", "Chevron"}]
       49 GETUPVAL                         R11 0
       50 GETTABLEKS                       R11 R11 K1 ["createElement"]
       52 GETUPVAL                         R12 1
       53 GETTABLEKS                       R12 R12 K25 ["Text"]
       55 DUPTABLE                         R13 K27 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "auto-xy text-caption-medium content-system-neutral"}]
       56 GETTABLEKS                       R14 R0 K25 ["Text"]
       58 SETTABLEKS                       R14 R13 K25 ["Text"]
       60 CALL                             R11 2 1
       61 SETTABLEKS                       R11 R10 K22 ["Label"]
       63 GETUPVAL                         R11 0
       64 GETTABLEKS                       R11 R11 K1 ["createElement"]
       66 GETUPVAL                         R12 1
       67 GETTABLEKS                       R12 R12 K28 ["Icon"]
       69 DUPTABLE                         R13 K31 [{["LayoutOrder"] = 2, ["name"], ["size"]}]
       70 JUMPIFNOT                        R1 ; [+8]
       71 GETUPVAL                         R14 1
       72 GETTABLEKS                       R14 R14 K15 ["Enums"]
       74 GETTABLEKS                       R14 R14 K32 ["IconName"]
       76 GETTABLEKS                       R14 R14 K33 ["ChevronSmallUp"]
       78 JUMP                             ; [+7]
       79 GETUPVAL                         R14 1
       80 GETTABLEKS                       R14 R14 K15 ["Enums"]
       82 GETTABLEKS                       R14 R14 K32 ["IconName"]
       84 GETTABLEKS                       R14 R14 K34 ["ChevronSmallDown"]
       86 SETTABLEKS                       R14 R13 K29 ["name"]
       88 GETUPVAL                         R14 1
       89 GETTABLEKS                       R14 R14 K15 ["Enums"]
       91 GETTABLEKS                       R14 R14 K35 ["IconSize"]
       93 GETTABLEKS                       R14 R14 K36 ["Small"]
       95 SETTABLEKS                       R14 R13 K30 ["size"]
       97 CALL                             R11 2 1
       98 SETTABLEKS                       R11 R10 K23 ["Chevron"]
      100 CALL                             R7 3 1
      101 SETTABLEKS                       R7 R6 K8 ["LabelButton"]
      103 JUMPIF                           R1 ; [+3]
      104 GETTABLEKS                       R8 R0 K37 ["KeepExpanded"]
      106 JUMPIFNOT                        R8 ; [+18]
      107 GETUPVAL                         R7 0
      108 GETTABLEKS                       R7 R7 K1 ["createElement"]
      110 GETUPVAL                         R8 1
      111 GETTABLEKS                       R8 R8 K2 ["View"]
      113 DUPTABLE                         R9 K40 [{["LayoutOrder"] = 3, ["tag"] = "col gap-xxsmall size-full-0 auto-y"}]
      114 GETUPVAL                         R10 2
      115 GETTABLEKS                       R10 R10 K41 ["map"]
      117 GETTABLEKS                       R11 R0 K42 ["Items"]
      119 DUPCLOSURE                       R12 K43 [PROTO_1]
      120 CAPTURE                          UPVAL U0
      121 CAPTURE                          UPVAL U3
      122 CALL                             R10 2 -1
      123 CALL                             R7 -1 1
      124 JUMP                             ; [+1]
      125 LOADNIL                          R7
      126 SETTABLEKS                       R7 R6 K9 ["ItemView"]
      128 CALL                             R3 3 -1
      129 RETURN                           R3 -1

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
