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
       14 DUPTABLE                         R5 K6 [{["LayoutOrder"], ["tag"] = "row gap-small size-full-0 auto-y"}]
       15 GETTABLEKS                       R6 R0 K3 ["LayoutOrder"]
       17 SETTABLEKS                       R6 R5 K3 ["LayoutOrder"]
       19 DUPTABLE                         R6 K9 [{"CancelButton", "SearchButton"}]
       20 GETUPVAL                         R7 2
       21 GETTABLEKS                       R7 R7 K1 ["createElement"]
       23 GETUPVAL                         R8 3
       24 GETTABLEKS                       R8 R8 K10 ["Button"]
       26 DUPTABLE                         R9 K19 [{["LayoutOrder"] = 1, ["text"], ["variant"], ["size"], ["fillBehavior"], ["onActivated"], ["testId"] = "search-cancel-button"}]
       27 LOADK                            R12 K20 ["SearchOptions"]
       28 LOADK                            R13 K21 ["Cancel"]
       29 NAMECALL                         R10 R1 K22 ["getText"]
       31 CALL                             R10 3 1
       32 SETTABLEKS                       R10 R9 K12 ["text"]
       34 GETUPVAL                         R10 3
       35 GETTABLEKS                       R10 R10 K23 ["Enums"]
       37 GETTABLEKS                       R10 R10 K24 ["ButtonVariant"]
       39 GETTABLEKS                       R10 R10 K25 ["Standard"]
       41 SETTABLEKS                       R10 R9 K13 ["variant"]
       43 GETUPVAL                         R10 3
       44 GETTABLEKS                       R10 R10 K23 ["Enums"]
       46 GETTABLEKS                       R10 R10 K26 ["InputSize"]
       48 GETTABLEKS                       R10 R10 K27 ["XSmall"]
       50 SETTABLEKS                       R10 R9 K14 ["size"]
       52 GETUPVAL                         R10 3
       53 GETTABLEKS                       R10 R10 K23 ["Enums"]
       55 GETTABLEKS                       R10 R10 K28 ["FillBehavior"]
       57 GETTABLEKS                       R10 R10 K29 ["Fill"]
       59 SETTABLEKS                       R10 R9 K15 ["fillBehavior"]
       61 NEWCLOSURE                       R10 P0
       62 CAPTURE                          VAL R2
       63 SETTABLEKS                       R10 R9 K16 ["onActivated"]
       65 CALL                             R7 2 1
       66 SETTABLEKS                       R7 R6 K7 ["CancelButton"]
       68 GETUPVAL                         R7 2
       69 GETTABLEKS                       R7 R7 K1 ["createElement"]
       71 GETUPVAL                         R8 3
       72 GETTABLEKS                       R8 R8 K10 ["Button"]
       74 DUPTABLE                         R9 K32 [{["LayoutOrder"] = 2, ["text"], ["variant"], ["size"], ["fillBehavior"], ["onActivated"], ["testId"] = "search-search-button"}]
       75 LOADK                            R12 K20 ["SearchOptions"]
       76 LOADK                            R13 K33 ["Search"]
       77 NAMECALL                         R10 R1 K22 ["getText"]
       79 CALL                             R10 3 1
       80 SETTABLEKS                       R10 R9 K12 ["text"]
       82 GETUPVAL                         R10 3
       83 GETTABLEKS                       R10 R10 K23 ["Enums"]
       85 GETTABLEKS                       R10 R10 K24 ["ButtonVariant"]
       87 GETTABLEKS                       R10 R10 K34 ["Emphasis"]
       89 SETTABLEKS                       R10 R9 K13 ["variant"]
       91 GETUPVAL                         R10 3
       92 GETTABLEKS                       R10 R10 K23 ["Enums"]
       94 GETTABLEKS                       R10 R10 K26 ["InputSize"]
       96 GETTABLEKS                       R10 R10 K27 ["XSmall"]
       98 SETTABLEKS                       R10 R9 K14 ["size"]
      100 GETUPVAL                         R10 3
      101 GETTABLEKS                       R10 R10 K23 ["Enums"]
      103 GETTABLEKS                       R10 R10 K28 ["FillBehavior"]
      105 GETTABLEKS                       R10 R10 K29 ["Fill"]
      107 SETTABLEKS                       R10 R9 K15 ["fillBehavior"]
      109 NEWCLOSURE                       R10 P1
      110 CAPTURE                          VAL R2
      111 SETTABLEKS                       R10 R9 K16 ["onActivated"]
      113 CALL                             R7 2 1
      114 SETTABLEKS                       R7 R6 K8 ["SearchButton"]
      116 CALL                             R3 3 -1
      117 RETURN                           R3 -1

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
