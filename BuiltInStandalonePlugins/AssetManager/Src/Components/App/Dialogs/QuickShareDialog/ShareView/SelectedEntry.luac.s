PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onItemRemoved"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["Index"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Item"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K2 ["View"]
        8 DUPTABLE                         R4 K4 [{"tag"}]
        9 LOADK                            R5 K5 ["col size-full-1000"]
       10 SETTABLEKS                       R5 R4 K3 ["tag"]
       12 DUPTABLE                         R5 K8 [{"Content", "BottomStroke"}]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K1 ["createElement"]
       16 GETUPVAL                         R7 1
       17 GETTABLEKS                       R7 R7 K2 ["View"]
       19 DUPTABLE                         R8 K10 [{"LayoutOrder", "tag"}]
       20 LOADN                            R9 1
       21 SETTABLEKS                       R9 R8 K9 ["LayoutOrder"]
       23 LOADK                            R9 K11 ["row size-full-0 fill align-y-center padding-medium"]
       24 SETTABLEKS                       R9 R8 K3 ["tag"]
       26 DUPTABLE                         R9 K14 [{"DetailsView", "EditActionView"}]
       27 GETUPVAL                         R10 0
       28 GETTABLEKS                       R10 R10 K1 ["createElement"]
       30 GETUPVAL                         R11 1
       31 GETTABLEKS                       R11 R11 K2 ["View"]
       33 DUPTABLE                         R12 K10 [{"LayoutOrder", "tag"}]
       34 LOADN                            R13 1
       35 SETTABLEKS                       R13 R12 K9 ["LayoutOrder"]
       37 LOADK                            R13 K15 ["fill auto-y align-x-left align-y-center"]
       38 SETTABLEKS                       R13 R12 K3 ["tag"]
       40 GETUPVAL                         R13 0
       41 GETTABLEKS                       R13 R13 K1 ["createElement"]
       43 GETUPVAL                         R14 2
       44 DUPTABLE                         R15 K19 [{"Id", "Uri", "Text"}]
       45 GETTABLEKS                       R16 R1 K16 ["Id"]
       47 SETTABLEKS                       R16 R15 K16 ["Id"]
       49 GETTABLEKS                       R16 R1 K17 ["Uri"]
       51 SETTABLEKS                       R16 R15 K17 ["Uri"]
       53 GETTABLEKS                       R16 R1 K20 ["Name"]
       55 SETTABLEKS                       R16 R15 K18 ["Text"]
       57 CALL                             R13 2 -1
       58 CALL                             R10 -1 1
       59 SETTABLEKS                       R10 R9 K12 ["DetailsView"]
       61 GETUPVAL                         R10 0
       62 GETTABLEKS                       R10 R10 K1 ["createElement"]
       64 GETUPVAL                         R11 1
       65 GETTABLEKS                       R11 R11 K2 ["View"]
       67 DUPTABLE                         R12 K10 [{"LayoutOrder", "tag"}]
       68 LOADN                            R13 2
       69 SETTABLEKS                       R13 R12 K9 ["LayoutOrder"]
       71 LOADK                            R13 K21 ["row fill auto-y gap-xxsmall align-x-right align-y-center"]
       72 SETTABLEKS                       R13 R12 K3 ["tag"]
       74 DUPTABLE                         R13 K24 [{"Children", "RemoveButton"}]
       75 GETUPVAL                         R14 0
       76 GETTABLEKS                       R14 R14 K1 ["createElement"]
       78 GETUPVAL                         R15 1
       79 GETTABLEKS                       R15 R15 K2 ["View"]
       81 DUPTABLE                         R16 K10 [{"LayoutOrder", "tag"}]
       82 LOADN                            R17 1
       83 SETTABLEKS                       R17 R16 K9 ["LayoutOrder"]
       85 LOADK                            R17 K25 ["auto-xy"]
       86 SETTABLEKS                       R17 R16 K3 ["tag"]
       88 GETTABLEKS                       R17 R0 K26 ["children"]
       90 CALL                             R14 3 1
       91 SETTABLEKS                       R14 R13 K22 ["Children"]
       93 GETUPVAL                         R14 0
       94 GETTABLEKS                       R14 R14 K1 ["createElement"]
       96 GETUPVAL                         R15 1
       97 GETTABLEKS                       R15 R15 K27 ["IconButton"]
       99 DUPTABLE                         R16 K31 [{"LayoutOrder", "icon", "size", "onActivated"}]
      100 LOADN                            R17 2
      101 SETTABLEKS                       R17 R16 K9 ["LayoutOrder"]
      103 GETUPVAL                         R17 1
      104 GETTABLEKS                       R17 R17 K32 ["Enums"]
      106 GETTABLEKS                       R17 R17 K33 ["IconName"]
      108 GETTABLEKS                       R17 R17 K34 ["XSmall"]
      110 SETTABLEKS                       R17 R16 K28 ["icon"]
      112 GETUPVAL                         R17 1
      113 GETTABLEKS                       R17 R17 K32 ["Enums"]
      115 GETTABLEKS                       R17 R17 K35 ["InputSize"]
      117 GETTABLEKS                       R17 R17 K34 ["XSmall"]
      119 SETTABLEKS                       R17 R16 K29 ["size"]
      121 NEWCLOSURE                       R17 P0
      122 CAPTURE                          VAL R0
      123 CAPTURE                          VAL R1
      124 SETTABLEKS                       R17 R16 K30 ["onActivated"]
      126 CALL                             R14 2 1
      127 SETTABLEKS                       R14 R13 K23 ["RemoveButton"]
      129 CALL                             R10 3 1
      130 SETTABLEKS                       R10 R9 K13 ["EditActionView"]
      132 CALL                             R6 3 1
      133 SETTABLEKS                       R6 R5 K6 ["Content"]
      135 GETUPVAL                         R6 0
      136 GETTABLEKS                       R6 R6 K1 ["createElement"]
      138 GETUPVAL                         R7 1
      139 GETTABLEKS                       R7 R7 K36 ["Divider"]
      141 DUPTABLE                         R8 K38 [{"LayoutOrder", "orientation"}]
      142 LOADN                            R9 2
      143 SETTABLEKS                       R9 R8 K9 ["LayoutOrder"]
      145 GETUPVAL                         R9 1
      146 GETTABLEKS                       R9 R9 K32 ["Enums"]
      148 GETTABLEKS                       R9 R9 K39 ["DividerOrientation"]
      150 GETTABLEKS                       R9 R9 K40 ["Horizontal"]
      152 SETTABLEKS                       R9 R8 K37 ["orientation"]
      154 CALL                             R6 2 1
      155 SETTABLEKS                       R6 R5 K7 ["BottomStroke"]
      157 CALL                             R2 3 -1
      158 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
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
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETIMPORT                        R5 K1 [script]
       32 GETTABLEKS                       R5 R5 K11 ["Parent"]
       34 GETTABLEKS                       R5 R5 K12 ["EntryRow"]
       36 CALL                             R4 1 1
       37 DUPCLOSURE                       R5 K13 [PROTO_1]
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R4
       41 RETURN                           R5 1
