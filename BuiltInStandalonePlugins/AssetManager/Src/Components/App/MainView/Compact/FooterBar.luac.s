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
        9 CALL                             R3 0 1
       10 GETTABLEKS                       R4 R3 K1 ["ShowSearchOptions"]
       12 NEWTABLE                         R5 2 0
       14 JUMPIFNOT                        R4 ; [+108]
       15 GETUPVAL                         R6 3
       16 GETTABLEKS                       R6 R6 K2 ["createElement"]
       18 GETUPVAL                         R7 4
       19 GETTABLEKS                       R7 R7 K3 ["Button"]
       21 DUPTABLE                         R8 K11 [{"LayoutOrder", "text", "variant", "size", "fillBehavior", "onActivated", "testId"}]
       22 LOADN                            R9 1
       23 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       25 LOADK                            R11 K12 ["SearchOptions"]
       26 LOADK                            R12 K13 ["Cancel"]
       27 NAMECALL                         R9 R1 K14 ["getText"]
       29 CALL                             R9 3 1
       30 SETTABLEKS                       R9 R8 K5 ["text"]
       32 GETUPVAL                         R9 4
       33 GETTABLEKS                       R9 R9 K15 ["Enums"]
       35 GETTABLEKS                       R9 R9 K16 ["ButtonVariant"]
       37 GETTABLEKS                       R9 R9 K17 ["Standard"]
       39 SETTABLEKS                       R9 R8 K6 ["variant"]
       41 GETUPVAL                         R9 4
       42 GETTABLEKS                       R9 R9 K15 ["Enums"]
       44 GETTABLEKS                       R9 R9 K18 ["InputSize"]
       46 GETTABLEKS                       R9 R9 K19 ["XSmall"]
       48 SETTABLEKS                       R9 R8 K7 ["size"]
       50 GETUPVAL                         R9 4
       51 GETTABLEKS                       R9 R9 K15 ["Enums"]
       53 GETTABLEKS                       R9 R9 K20 ["FillBehavior"]
       55 GETTABLEKS                       R9 R9 K21 ["Fill"]
       57 SETTABLEKS                       R9 R8 K8 ["fillBehavior"]
       59 NEWCLOSURE                       R9 P0
       60 CAPTURE                          VAL R2
       61 SETTABLEKS                       R9 R8 K9 ["onActivated"]
       63 LOADK                            R9 K22 ["compact-search-cancel-button"]
       64 SETTABLEKS                       R9 R8 K10 ["testId"]
       66 CALL                             R6 2 1
       67 SETTABLEKS                       R6 R5 K23 ["CancelButton"]
       69 GETUPVAL                         R6 3
       70 GETTABLEKS                       R6 R6 K2 ["createElement"]
       72 GETUPVAL                         R7 4
       73 GETTABLEKS                       R7 R7 K3 ["Button"]
       75 DUPTABLE                         R8 K11 [{"LayoutOrder", "text", "variant", "size", "fillBehavior", "onActivated", "testId"}]
       76 LOADN                            R9 2
       77 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       79 LOADK                            R11 K12 ["SearchOptions"]
       80 LOADK                            R12 K24 ["Search"]
       81 NAMECALL                         R9 R1 K14 ["getText"]
       83 CALL                             R9 3 1
       84 SETTABLEKS                       R9 R8 K5 ["text"]
       86 GETUPVAL                         R9 4
       87 GETTABLEKS                       R9 R9 K15 ["Enums"]
       89 GETTABLEKS                       R9 R9 K16 ["ButtonVariant"]
       91 GETTABLEKS                       R9 R9 K25 ["Emphasis"]
       93 SETTABLEKS                       R9 R8 K6 ["variant"]
       95 GETUPVAL                         R9 4
       96 GETTABLEKS                       R9 R9 K15 ["Enums"]
       98 GETTABLEKS                       R9 R9 K18 ["InputSize"]
      100 GETTABLEKS                       R9 R9 K19 ["XSmall"]
      102 SETTABLEKS                       R9 R8 K7 ["size"]
      104 GETUPVAL                         R9 4
      105 GETTABLEKS                       R9 R9 K15 ["Enums"]
      107 GETTABLEKS                       R9 R9 K20 ["FillBehavior"]
      109 GETTABLEKS                       R9 R9 K21 ["Fill"]
      111 SETTABLEKS                       R9 R8 K8 ["fillBehavior"]
      113 NEWCLOSURE                       R9 P1
      114 CAPTURE                          VAL R2
      115 SETTABLEKS                       R9 R8 K9 ["onActivated"]
      117 LOADK                            R9 K26 ["compact-search-search-button"]
      118 SETTABLEKS                       R9 R8 K10 ["testId"]
      120 CALL                             R6 2 1
      121 SETTABLEKS                       R6 R5 K27 ["SearchButton"]
      123 GETUPVAL                         R6 3
      124 GETTABLEKS                       R6 R6 K2 ["createElement"]
      126 GETUPVAL                         R7 4
      127 GETTABLEKS                       R7 R7 K28 ["View"]
      129 DUPTABLE                         R8 K30 [{"LayoutOrder", "tag", "testId"}]
      130 GETTABLEKS                       R9 R0 K4 ["LayoutOrder"]
      132 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
      134 GETIMPORT                        R10 K32 [next]
      136 MOVE                             R11 R5
      137 CALL                             R10 1 1
      138 JUMPIFEQKNIL                     R10 ; [+3]
      140 LOADK                            R9 K33 ["row size-full-0 auto-y gap-small padding-small"]
      141 JUMP                             ; [+1]
      142 LOADNIL                          R9
      143 SETTABLEKS                       R9 R8 K29 ["tag"]
      145 LOADK                            R9 K34 ["compact-footer-bar"]
      146 SETTABLEKS                       R9 R8 K10 ["testId"]
      148 MOVE                             R9 R5
      149 CALL                             R6 3 -1
      150 RETURN                           R6 -1

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
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R0 K12 ["Src"]
       45 GETTABLEKS                       R8 R8 K15 ["Hooks"]
       47 GETTABLEKS                       R8 R8 K16 ["useSearchInfo"]
       49 CALL                             R7 1 1
       50 DUPCLOSURE                       R8 K17 [PROTO_2]
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R2
       56 RETURN                           R8 1
