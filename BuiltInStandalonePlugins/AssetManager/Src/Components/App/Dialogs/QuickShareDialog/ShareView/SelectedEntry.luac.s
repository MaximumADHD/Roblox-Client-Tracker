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
        8 DUPTABLE                         R4 K5 [{["tag"] = "col size-full-1000"}]
        9 DUPTABLE                         R5 K8 [{"Content", "BottomStroke"}]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K1 ["createElement"]
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R7 R7 K2 ["View"]
       16 DUPTABLE                         R8 K12 [{["LayoutOrder"] = 1, ["tag"] = "row align-y-center fill size-full-0 padding-medium"}]
       17 DUPTABLE                         R9 K15 [{"DetailsView", "EditActionView"}]
       18 GETUPVAL                         R10 0
       19 GETTABLEKS                       R10 R10 K1 ["createElement"]
       21 GETUPVAL                         R11 1
       22 GETTABLEKS                       R11 R11 K2 ["View"]
       24 DUPTABLE                         R12 K17 [{["LayoutOrder"] = 1, ["tag"] = "align-x-left align-y-center fill auto-y"}]
       25 GETUPVAL                         R13 0
       26 GETTABLEKS                       R13 R13 K1 ["createElement"]
       28 GETUPVAL                         R14 2
       29 DUPTABLE                         R15 K21 [{"Id", "Uri", "Text"}]
       30 GETTABLEKS                       R16 R1 K18 ["Id"]
       32 SETTABLEKS                       R16 R15 K18 ["Id"]
       34 GETTABLEKS                       R16 R1 K19 ["Uri"]
       36 SETTABLEKS                       R16 R15 K19 ["Uri"]
       38 GETTABLEKS                       R16 R1 K22 ["Name"]
       40 SETTABLEKS                       R16 R15 K20 ["Text"]
       42 CALL                             R13 2 -1
       43 CALL                             R10 -1 1
       44 SETTABLEKS                       R10 R9 K13 ["DetailsView"]
       46 GETUPVAL                         R10 0
       47 GETTABLEKS                       R10 R10 K1 ["createElement"]
       49 GETUPVAL                         R11 1
       50 GETTABLEKS                       R11 R11 K2 ["View"]
       52 DUPTABLE                         R12 K25 [{["LayoutOrder"] = 2, ["tag"] = "row align-x-right align-y-center fill gap-xxsmall auto-y"}]
       53 DUPTABLE                         R13 K28 [{"Children", "RemoveButton"}]
       54 GETUPVAL                         R14 0
       55 GETTABLEKS                       R14 R14 K1 ["createElement"]
       57 GETUPVAL                         R15 1
       58 GETTABLEKS                       R15 R15 K2 ["View"]
       60 DUPTABLE                         R16 K30 [{["LayoutOrder"] = 1, ["tag"] = "auto-xy"}]
       61 GETTABLEKS                       R17 R0 K31 ["children"]
       63 CALL                             R14 3 1
       64 SETTABLEKS                       R14 R13 K26 ["Children"]
       66 GETUPVAL                         R14 0
       67 GETTABLEKS                       R14 R14 K1 ["createElement"]
       69 GETUPVAL                         R15 1
       70 GETTABLEKS                       R15 R15 K32 ["IconButton"]
       72 DUPTABLE                         R16 K36 [{["LayoutOrder"] = 2, ["icon"], ["size"], ["onActivated"]}]
       73 GETUPVAL                         R17 1
       74 GETTABLEKS                       R17 R17 K37 ["Enums"]
       76 GETTABLEKS                       R17 R17 K38 ["IconName"]
       78 GETTABLEKS                       R17 R17 K39 ["XSmall"]
       80 SETTABLEKS                       R17 R16 K33 ["icon"]
       82 GETUPVAL                         R17 1
       83 GETTABLEKS                       R17 R17 K37 ["Enums"]
       85 GETTABLEKS                       R17 R17 K40 ["InputSize"]
       87 GETTABLEKS                       R17 R17 K39 ["XSmall"]
       89 SETTABLEKS                       R17 R16 K34 ["size"]
       91 NEWCLOSURE                       R17 P0
       92 CAPTURE                          VAL R0
       93 CAPTURE                          VAL R1
       94 SETTABLEKS                       R17 R16 K35 ["onActivated"]
       96 CALL                             R14 2 1
       97 SETTABLEKS                       R14 R13 K27 ["RemoveButton"]
       99 CALL                             R10 3 1
      100 SETTABLEKS                       R10 R9 K14 ["EditActionView"]
      102 CALL                             R6 3 1
      103 SETTABLEKS                       R6 R5 K6 ["Content"]
      105 GETUPVAL                         R6 0
      106 GETTABLEKS                       R6 R6 K1 ["createElement"]
      108 GETUPVAL                         R7 1
      109 GETTABLEKS                       R7 R7 K41 ["Divider"]
      111 DUPTABLE                         R8 K43 [{["LayoutOrder"] = 2, ["orientation"]}]
      112 GETUPVAL                         R9 1
      113 GETTABLEKS                       R9 R9 K37 ["Enums"]
      115 GETTABLEKS                       R9 R9 K44 ["DividerOrientation"]
      117 GETTABLEKS                       R9 R9 K45 ["Horizontal"]
      119 SETTABLEKS                       R9 R8 K42 ["orientation"]
      121 CALL                             R6 2 1
      122 SETTABLEKS                       R6 R5 K7 ["BottomStroke"]
      124 CALL                             R2 3 -1
      125 RETURN                           R2 -1

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
