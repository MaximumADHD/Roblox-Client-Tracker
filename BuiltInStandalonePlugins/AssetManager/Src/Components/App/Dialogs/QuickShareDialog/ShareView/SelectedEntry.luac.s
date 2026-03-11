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
       19 LOADK                            R9 K10 ["row flex-x-fill size-full-0 fill align-y-center padding-medium"]
       20 SETTABLEKS                       R9 R8 K2 ["tag"]
       22 DUPTABLE                         R9 K13 [{"DetailsView", "EditActionView"}]
       23 GETUPVAL                         R11 0
       24 GETTABLEKS                       R10 R11 K1 ["createElement"]
       26 GETUPVAL                         R11 1
       27 DUPTABLE                         R12 K9 [{"LayoutOrder", "tag"}]
       28 LOADN                            R13 1
       29 SETTABLEKS                       R13 R12 K8 ["LayoutOrder"]
       31 LOADK                            R13 K14 ["auto-xy align-x-left align-y-center"]
       32 SETTABLEKS                       R13 R12 K2 ["tag"]
       34 NEWTABLE                         R13 0 1
       36 GETUPVAL                         R15 0
       37 GETTABLEKS                       R14 R15 K1 ["createElement"]
       39 GETUPVAL                         R15 2
       40 DUPTABLE                         R16 K18 [{"Id", "Uri", "Text"}]
       41 GETTABLEKS                       R17 R1 K15 ["Id"]
       43 SETTABLEKS                       R17 R16 K15 ["Id"]
       45 GETTABLEKS                       R17 R1 K16 ["Uri"]
       47 SETTABLEKS                       R17 R16 K16 ["Uri"]
       49 GETTABLEKS                       R17 R1 K19 ["Name"]
       51 SETTABLEKS                       R17 R16 K17 ["Text"]
       53 CALL                             R14 2 -1
       54 SETLIST                          R13 R14 -1 [1]
       56 CALL                             R10 3 1
       57 SETTABLEKS                       R10 R9 K11 ["DetailsView"]
       59 GETUPVAL                         R11 0
       60 GETTABLEKS                       R10 R11 K1 ["createElement"]
       62 GETUPVAL                         R11 1
       63 DUPTABLE                         R12 K9 [{"LayoutOrder", "tag"}]
       64 LOADN                            R13 2
       65 SETTABLEKS                       R13 R12 K8 ["LayoutOrder"]
       67 LOADK                            R13 K20 ["row auto-xy gap-xxsmall align-x-right align-y-center"]
       68 SETTABLEKS                       R13 R12 K2 ["tag"]
       70 DUPTABLE                         R13 K23 [{"Children", "Icon"}]
       71 GETUPVAL                         R15 0
       72 GETTABLEKS                       R14 R15 K1 ["createElement"]
       74 GETUPVAL                         R15 1
       75 DUPTABLE                         R16 K9 [{"LayoutOrder", "tag"}]
       76 LOADN                            R17 1
       77 SETTABLEKS                       R17 R16 K8 ["LayoutOrder"]
       79 LOADK                            R17 K24 ["auto-xy"]
       80 SETTABLEKS                       R17 R16 K2 ["tag"]
       82 GETTABLEKS                       R17 R0 K25 ["children"]
       84 CALL                             R14 3 1
       85 SETTABLEKS                       R14 R13 K21 ["Children"]
       87 GETUPVAL                         R15 0
       88 GETTABLEKS                       R14 R15 K1 ["createElement"]
       90 GETUPVAL                         R15 3
       91 DUPTABLE                         R16 K29 [{"LayoutOrder", "icon", "size", "onActivated"}]
       92 LOADN                            R17 2
       93 SETTABLEKS                       R17 R16 K8 ["LayoutOrder"]
       95 GETUPVAL                         R20 4
       96 GETTABLEKS                       R19 R20 K30 ["Enums"]
       98 GETTABLEKS                       R18 R19 K31 ["IconName"]
      100 GETTABLEKS                       R17 R18 K32 ["XSmall"]
      102 SETTABLEKS                       R17 R16 K26 ["icon"]
      104 GETUPVAL                         R20 4
      105 GETTABLEKS                       R19 R20 K30 ["Enums"]
      107 GETTABLEKS                       R18 R19 K33 ["InputSize"]
      109 GETTABLEKS                       R17 R18 K32 ["XSmall"]
      111 SETTABLEKS                       R17 R16 K27 ["size"]
      113 NEWCLOSURE                       R17 P0
      114 CAPTURE                          VAL R0
      115 CAPTURE                          VAL R1
      116 SETTABLEKS                       R17 R16 K28 ["onActivated"]
      118 CALL                             R14 2 1
      119 SETTABLEKS                       R14 R13 K22 ["Icon"]
      121 CALL                             R10 3 1
      122 SETTABLEKS                       R10 R9 K12 ["EditActionView"]
      124 CALL                             R6 3 1
      125 SETTABLEKS                       R6 R5 K5 ["Content"]
      127 GETUPVAL                         R7 0
      128 GETTABLEKS                       R6 R7 K1 ["createElement"]
      130 GETUPVAL                         R7 5
      131 DUPTABLE                         R8 K35 [{"LayoutOrder", "orientation"}]
      132 LOADN                            R9 2
      133 SETTABLEKS                       R9 R8 K8 ["LayoutOrder"]
      135 GETUPVAL                         R12 4
      136 GETTABLEKS                       R11 R12 K30 ["Enums"]
      138 GETTABLEKS                       R10 R11 K36 ["DividerOrientation"]
      140 GETTABLEKS                       R9 R10 K37 ["Horizontal"]
      142 SETTABLEKS                       R9 R8 K34 ["orientation"]
      144 CALL                             R6 2 1
      145 SETTABLEKS                       R6 R5 K6 ["BottomStroke"]
      147 CALL                             R2 3 -1
      148 RETURN                           R2 -1

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
