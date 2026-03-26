PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onItemRemoved"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K1 ["Index"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Item"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K3 [{"tag"}]
        7 LOADK                            R5 K4 ["col size-full-1000"]
        8 SETTABLEKS                       R5 R4 K2 ["tag"]
       10 DUPTABLE                         R5 K7 [{"Content", "BottomStroke"}]
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R6 R7 K1 ["createElement"]
       14 GETUPVAL                         R7 1
       15 DUPTABLE                         R8 K9 [{"LayoutOrder", "tag"}]
       16 LOADN                            R9 1
       17 SETTABLEKS                       R9 R8 K8 ["LayoutOrder"]
       19 LOADK                            R9 K10 ["row size-full-0 fill align-y-center padding-medium"]
       20 SETTABLEKS                       R9 R8 K2 ["tag"]
       22 DUPTABLE                         R9 K13 [{"DetailsView", "EditActionView"}]
       23 GETUPVAL                         R11 0
       24 GETTABLEKS                       R10 R11 K1 ["createElement"]
       26 GETUPVAL                         R11 1
       27 DUPTABLE                         R12 K9 [{"LayoutOrder", "tag"}]
       28 LOADN                            R13 1
       29 SETTABLEKS                       R13 R12 K8 ["LayoutOrder"]
       31 LOADK                            R13 K14 ["fill auto-y align-x-left align-y-center"]
       32 SETTABLEKS                       R13 R12 K2 ["tag"]
       34 GETUPVAL                         R14 0
       35 GETTABLEKS                       R13 R14 K1 ["createElement"]
       37 GETUPVAL                         R14 2
       38 DUPTABLE                         R15 K18 [{"Id", "Uri", "Text"}]
       39 GETTABLEKS                       R16 R1 K15 ["Id"]
       41 SETTABLEKS                       R16 R15 K15 ["Id"]
       43 GETTABLEKS                       R16 R1 K16 ["Uri"]
       45 SETTABLEKS                       R16 R15 K16 ["Uri"]
       47 GETTABLEKS                       R16 R1 K19 ["Name"]
       49 SETTABLEKS                       R16 R15 K17 ["Text"]
       51 CALL                             R13 2 -1
       52 CALL                             R10 -1 1
       53 SETTABLEKS                       R10 R9 K11 ["DetailsView"]
       55 GETUPVAL                         R11 0
       56 GETTABLEKS                       R10 R11 K1 ["createElement"]
       58 GETUPVAL                         R11 1
       59 DUPTABLE                         R12 K9 [{"LayoutOrder", "tag"}]
       60 LOADN                            R13 2
       61 SETTABLEKS                       R13 R12 K8 ["LayoutOrder"]
       63 LOADK                            R13 K20 ["row fill auto-y gap-xxsmall align-x-right align-y-center"]
       64 SETTABLEKS                       R13 R12 K2 ["tag"]
       66 DUPTABLE                         R13 K23 [{"Children", "RemoveButton"}]
       67 GETUPVAL                         R15 0
       68 GETTABLEKS                       R14 R15 K1 ["createElement"]
       70 GETUPVAL                         R15 1
       71 DUPTABLE                         R16 K9 [{"LayoutOrder", "tag"}]
       72 LOADN                            R17 1
       73 SETTABLEKS                       R17 R16 K8 ["LayoutOrder"]
       75 LOADK                            R17 K24 ["auto-xy"]
       76 SETTABLEKS                       R17 R16 K2 ["tag"]
       78 GETTABLEKS                       R17 R0 K25 ["children"]
       80 CALL                             R14 3 1
       81 SETTABLEKS                       R14 R13 K21 ["Children"]
       83 GETUPVAL                         R15 0
       84 GETTABLEKS                       R14 R15 K1 ["createElement"]
       86 GETUPVAL                         R15 3
       87 DUPTABLE                         R16 K29 [{"LayoutOrder", "icon", "size", "onActivated"}]
       88 LOADN                            R17 2
       89 SETTABLEKS                       R17 R16 K8 ["LayoutOrder"]
       91 GETUPVAL                         R20 4
       92 GETTABLEKS                       R19 R20 K30 ["Enums"]
       94 GETTABLEKS                       R18 R19 K31 ["IconName"]
       96 GETTABLEKS                       R17 R18 K32 ["XSmall"]
       98 SETTABLEKS                       R17 R16 K26 ["icon"]
      100 GETUPVAL                         R20 4
      101 GETTABLEKS                       R19 R20 K30 ["Enums"]
      103 GETTABLEKS                       R18 R19 K33 ["InputSize"]
      105 GETTABLEKS                       R17 R18 K32 ["XSmall"]
      107 SETTABLEKS                       R17 R16 K27 ["size"]
      109 NEWCLOSURE                       R17 P0
      110 CAPTURE                          VAL R0
      111 CAPTURE                          VAL R1
      112 SETTABLEKS                       R17 R16 K28 ["onActivated"]
      114 CALL                             R14 2 1
      115 SETTABLEKS                       R14 R13 K22 ["RemoveButton"]
      117 CALL                             R10 3 1
      118 SETTABLEKS                       R10 R9 K12 ["EditActionView"]
      120 CALL                             R6 3 1
      121 SETTABLEKS                       R6 R5 K5 ["Content"]
      123 GETUPVAL                         R7 0
      124 GETTABLEKS                       R6 R7 K1 ["createElement"]
      126 GETUPVAL                         R7 5
      127 DUPTABLE                         R8 K35 [{"LayoutOrder", "orientation"}]
      128 LOADN                            R9 2
      129 SETTABLEKS                       R9 R8 K8 ["LayoutOrder"]
      131 GETUPVAL                         R12 4
      132 GETTABLEKS                       R11 R12 K30 ["Enums"]
      134 GETTABLEKS                       R10 R11 K36 ["DividerOrientation"]
      136 GETTABLEKS                       R9 R10 K37 ["Horizontal"]
      138 SETTABLEKS                       R9 R8 K34 ["orientation"]
      140 CALL                             R6 2 1
      141 SETTABLEKS                       R6 R5 K6 ["BottomStroke"]
      143 CALL                             R2 3 -1
      144 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
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
       23 GETTABLEKS                       R4 R2 K10 ["IconButton"]
       25 GETTABLEKS                       R5 R2 K11 ["Divider"]
       27 GETIMPORT                        R6 K5 [require]
       29 GETTABLEKS                       R8 R0 K12 ["Src"]
       31 GETTABLEKS                       R7 R8 K13 ["Types"]
       33 CALL                             R6 1 1
       34 GETIMPORT                        R7 K5 [require]
       36 GETIMPORT                        R10 K1 [script]
       38 GETTABLEKS                       R9 R10 K14 ["Parent"]
       40 GETTABLEKS                       R8 R9 K15 ["EntryRow"]
       42 CALL                             R7 1 1
       43 DUPCLOSURE                       R8 K16 [PROTO_1]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R7
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R5
       50 RETURN                           R8 1
