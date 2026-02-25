PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["requestSearch"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["setSearchTerm"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["showSearchOptions"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 GETUPVAL                         R5 3
       11 GETTABLEKS                       R4 R5 K1 ["createElement"]
       13 GETUPVAL                         R5 4
       14 NEWTABLE                         R6 2 0
       16 GETTABLEKS                       R7 R0 K2 ["LayoutOrder"]
       18 SETTABLEKS                       R7 R6 K2 ["LayoutOrder"]
       20 GETUPVAL                         R8 3
       21 GETTABLEKS                       R7 R8 K3 ["Tag"]
       23 LOADK                            R8 K4 ["SearchPanel X-Stroke"]
       24 SETTABLE                         R8 R6 R7
       25 DUPTABLE                         R7 K6 [{"MyView"}]
       26 GETUPVAL                         R9 3
       27 GETTABLEKS                       R8 R9 K1 ["createElement"]
       29 GETUPVAL                         R10 5
       30 GETTABLEKS                       R9 R10 K7 ["View"]
       32 DUPTABLE                         R10 K9 [{"tag"}]
       33 LOADK                            R11 K10 ["row size-full"]
       34 SETTABLEKS                       R11 R10 K8 ["tag"]
       36 NEWTABLE                         R11 0 2
       38 GETUPVAL                         R13 3
       39 GETTABLEKS                       R12 R13 K1 ["createElement"]
       41 GETUPVAL                         R14 5
       42 GETTABLEKS                       R13 R14 K7 ["View"]
       44 DUPTABLE                         R14 K9 [{"tag"}]
       45 LOADK                            R15 K11 ["TopSidebarButtonPadding"]
       46 SETTABLEKS                       R15 R14 K8 ["tag"]
       48 CALL                             R12 2 1
       49 GETUPVAL                         R14 3
       50 GETTABLEKS                       R13 R14 K1 ["createElement"]
       52 GETUPVAL                         R15 5
       53 GETTABLEKS                       R14 R15 K7 ["View"]
       55 DUPTABLE                         R15 K9 [{"tag"}]
       56 LOADK                            R16 K12 ["size-0-full fill"]
       57 SETTABLEKS                       R16 R15 K8 ["tag"]
       59 DUPTABLE                         R16 K14 [{"SearchBar"}]
       60 GETUPVAL                         R18 3
       61 GETTABLEKS                       R17 R18 K1 ["createElement"]
       63 GETUPVAL                         R18 6
       64 NEWTABLE                         R19 8 0
       66 LOADK                            R22 K15 ["Search"]
       67 LOADK                            R23 K16 ["Placeholder"]
       68 NAMECALL                         R20 R1 K17 ["getText"]
       70 CALL                             R20 3 1
       71 SETTABLEKS                       R20 R19 K18 ["PlaceholderText"]
       73 GETTABLEKS                       R20 R3 K19 ["SearchTerm"]
       75 SETTABLEKS                       R20 R19 K19 ["SearchTerm"]
       77 NEWCLOSURE                       R20 P0
       78 CAPTURE                          VAL R2
       79 SETTABLEKS                       R20 R19 K20 ["OnSearchRequested"]
       81 NEWCLOSURE                       R20 P1
       82 CAPTURE                          VAL R2
       83 SETTABLEKS                       R20 R19 K21 ["OnTextChanged"]
       85 NEWCLOSURE                       R20 P2
       86 CAPTURE                          VAL R2
       87 SETTABLEKS                       R20 R19 K22 ["OnTextBoxFocusGained"]
       89 LOADB                            R20 1
       90 SETTABLEKS                       R20 R19 K23 ["ShowSearchIcon"]
       92 LOADB                            R20 0
       93 SETTABLEKS                       R20 R19 K24 ["ShowSearchButton"]
       95 GETUPVAL                         R21 3
       96 GETTABLEKS                       R20 R21 K3 ["Tag"]
       98 LOADK                            R21 K25 ["X-AnchorCenter X-Pad"]
       99 SETTABLE                         R21 R19 R20
      100 CALL                             R17 2 1
      101 SETTABLEKS                       R17 R16 K13 ["SearchBar"]
      103 CALL                             R13 3 -1
      104 SETLIST                          R11 R12 -1 [1]
      106 CALL                             R8 3 1
      107 SETTABLEKS                       R8 R7 K5 ["MyView"]
      109 CALL                             R4 3 -1
      110 RETURN                           R4 -1

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
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R9 R0 K12 ["Src"]
       36 GETTABLEKS                       R8 R9 K13 ["Controllers"]
       38 GETTABLEKS                       R7 R8 K14 ["SearchController"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R10 R0 K12 ["Src"]
       45 GETTABLEKS                       R9 R10 K15 ["Hooks"]
       47 GETTABLEKS                       R8 R9 K16 ["useSearchInfo"]
       49 CALL                             R7 1 1
       50 GETTABLEKS                       R8 R2 K17 ["UI"]
       52 GETTABLEKS                       R9 R8 K18 ["Pane"]
       54 GETTABLEKS                       R10 R8 K19 ["SearchBar"]
       56 DUPCLOSURE                       R11 K20 [PROTO_3]
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R9
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R10
       64 RETURN                           R11 1
