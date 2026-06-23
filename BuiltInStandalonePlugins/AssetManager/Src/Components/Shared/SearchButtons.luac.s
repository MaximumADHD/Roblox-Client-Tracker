PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["hideSearchOptions"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["requestSearch"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K1 ["createElement"]
       11 GETUPVAL                         R4 3
       12 GETTABLEKS                       R4 R4 K2 ["View"]
       14 DUPTABLE                         R5 K5 [{"LayoutOrder", "tag"}]
       15 GETTABLEKS                       R6 R0 K3 ["LayoutOrder"]
       17 SETTABLEKS                       R6 R5 K3 ["LayoutOrder"]
       19 LOADK                            R6 K6 ["row size-full-0 auto-y gap-small"]
       20 SETTABLEKS                       R6 R5 K4 ["tag"]
       22 DUPTABLE                         R6 K9 [{"CancelButton", "SearchButton"}]
       23 GETUPVAL                         R7 2
       24 GETTABLEKS                       R7 R7 K1 ["createElement"]
       26 GETUPVAL                         R8 3
       27 GETTABLEKS                       R8 R8 K10 ["Button"]
       29 DUPTABLE                         R9 K17 [{"LayoutOrder", "text", "variant", "size", "fillBehavior", "onActivated", "testId"}]
       30 LOADN                            R10 1
       31 SETTABLEKS                       R10 R9 K3 ["LayoutOrder"]
       33 LOADK                            R12 K18 ["SearchOptions"]
       34 LOADK                            R13 K19 ["Cancel"]
       35 NAMECALL                         R10 R1 K20 ["getText"]
       37 CALL                             R10 3 1
       38 SETTABLEKS                       R10 R9 K11 ["text"]
       40 GETUPVAL                         R10 3
       41 GETTABLEKS                       R10 R10 K21 ["Enums"]
       43 GETTABLEKS                       R10 R10 K22 ["ButtonVariant"]
       45 GETTABLEKS                       R10 R10 K23 ["Standard"]
       47 SETTABLEKS                       R10 R9 K12 ["variant"]
       49 GETUPVAL                         R10 3
       50 GETTABLEKS                       R10 R10 K21 ["Enums"]
       52 GETTABLEKS                       R10 R10 K24 ["InputSize"]
       54 GETTABLEKS                       R10 R10 K25 ["XSmall"]
       56 SETTABLEKS                       R10 R9 K13 ["size"]
       58 GETUPVAL                         R10 3
       59 GETTABLEKS                       R10 R10 K21 ["Enums"]
       61 GETTABLEKS                       R10 R10 K26 ["FillBehavior"]
       63 GETTABLEKS                       R10 R10 K27 ["Fill"]
       65 SETTABLEKS                       R10 R9 K14 ["fillBehavior"]
       67 NEWCLOSURE                       R10 P0
       68 CAPTURE                          VAL R2
       69 SETTABLEKS                       R10 R9 K15 ["onActivated"]
       71 LOADK                            R10 K28 ["search-cancel-button"]
       72 SETTABLEKS                       R10 R9 K16 ["testId"]
       74 CALL                             R7 2 1
       75 SETTABLEKS                       R7 R6 K7 ["CancelButton"]
       77 GETUPVAL                         R7 2
       78 GETTABLEKS                       R7 R7 K1 ["createElement"]
       80 GETUPVAL                         R8 3
       81 GETTABLEKS                       R8 R8 K10 ["Button"]
       83 DUPTABLE                         R9 K17 [{"LayoutOrder", "text", "variant", "size", "fillBehavior", "onActivated", "testId"}]
       84 LOADN                            R10 2
       85 SETTABLEKS                       R10 R9 K3 ["LayoutOrder"]
       87 LOADK                            R12 K18 ["SearchOptions"]
       88 LOADK                            R13 K29 ["Search"]
       89 NAMECALL                         R10 R1 K20 ["getText"]
       91 CALL                             R10 3 1
       92 SETTABLEKS                       R10 R9 K11 ["text"]
       94 GETUPVAL                         R10 3
       95 GETTABLEKS                       R10 R10 K21 ["Enums"]
       97 GETTABLEKS                       R10 R10 K22 ["ButtonVariant"]
       99 GETTABLEKS                       R10 R10 K30 ["Emphasis"]
      101 SETTABLEKS                       R10 R9 K12 ["variant"]
      103 GETUPVAL                         R10 3
      104 GETTABLEKS                       R10 R10 K21 ["Enums"]
      106 GETTABLEKS                       R10 R10 K24 ["InputSize"]
      108 GETTABLEKS                       R10 R10 K25 ["XSmall"]
      110 SETTABLEKS                       R10 R9 K13 ["size"]
      112 GETUPVAL                         R10 3
      113 GETTABLEKS                       R10 R10 K21 ["Enums"]
      115 GETTABLEKS                       R10 R10 K26 ["FillBehavior"]
      117 GETTABLEKS                       R10 R10 K27 ["Fill"]
      119 SETTABLEKS                       R10 R9 K14 ["fillBehavior"]
      121 NEWCLOSURE                       R10 P1
      122 CAPTURE                          VAL R2
      123 SETTABLEKS                       R10 R9 K15 ["onActivated"]
      125 LOADK                            R10 K31 ["search-search-button"]
      126 SETTABLEKS                       R10 R9 K16 ["testId"]
      128 CALL                             R7 2 1
      129 SETTABLEKS                       R7 R6 K8 ["SearchButton"]
      131 CALL                             R3 3 -1
      132 RETURN                           R3 -1

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
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K12 ["Src"]
       36 GETTABLEKS                       R7 R7 K13 ["Controllers"]
       38 GETTABLEKS                       R7 R7 K14 ["SearchController"]
       40 CALL                             R6 1 1
       41 DUPCLOSURE                       R7 K15 [PROTO_2]
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R6
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R2
       46 RETURN                           R7 1
