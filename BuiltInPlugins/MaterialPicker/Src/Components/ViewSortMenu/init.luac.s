PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["createElement"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K3 ["Root"]
       13 DUPTABLE                         R4 K7 [{["isOpen"], ["testId"] = "terrain-material-view-sort-menu"}]
       14 GETTABLEKS                       R5 R0 K4 ["isOpen"]
       16 SETTABLEKS                       R5 R4 K4 ["isOpen"]
       18 DUPTABLE                         R5 K10 [{"Anchor", "LocalContentProvider"}]
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R6 R6 K2 ["createElement"]
       22 GETUPVAL                         R7 2
       23 GETTABLEKS                       R7 R7 K8 ["Anchor"]
       25 LOADNIL                          R8
       26 DUPTABLE                         R9 K12 [{"Tooltip"}]
       27 GETUPVAL                         R10 0
       28 GETTABLEKS                       R10 R10 K2 ["createElement"]
       30 GETUPVAL                         R11 3
       31 DUPTABLE                         R12 K14 [{"title"}]
       32 LOADK                            R15 K15 ["Plugin"]
       33 LOADK                            R16 K16 ["ViewSortTooltip"]
       34 NAMECALL                         R13 R1 K17 ["getText"]
       36 CALL                             R13 3 1
       37 SETTABLEKS                       R13 R12 K13 ["title"]
       39 GETUPVAL                         R13 0
       40 GETTABLEKS                       R13 R13 K2 ["createElement"]
       42 GETUPVAL                         R14 4
       43 DUPTABLE                         R15 K22 [{["icon"], ["onActivated"], ["size"], ["testId"] = "terrain-material-view-sort-button"}]
       44 GETUPVAL                         R16 5
       45 GETTABLEKS                       R16 R16 K23 ["Enums"]
       47 GETTABLEKS                       R16 R16 K24 ["IconName"]
       49 GETTABLEKS                       R16 R16 K25 ["TwoSlidersVertical"]
       51 SETTABLEKS                       R16 R15 K18 ["icon"]
       53 GETTABLEKS                       R16 R0 K26 ["onToggle"]
       55 SETTABLEKS                       R16 R15 K19 ["onActivated"]
       57 GETUPVAL                         R16 6
       58 GETTABLEKS                       R16 R16 K27 ["XSmall"]
       60 SETTABLEKS                       R16 R15 K20 ["size"]
       62 CALL                             R13 2 -1
       63 CALL                             R10 -1 1
       64 SETTABLEKS                       R10 R9 K11 ["Tooltip"]
       66 CALL                             R6 3 1
       67 SETTABLEKS                       R6 R5 K8 ["Anchor"]
       69 GETUPVAL                         R6 0
       70 GETTABLEKS                       R6 R6 K2 ["createElement"]
       72 GETUPVAL                         R7 5
       73 GETTABLEKS                       R7 R7 K28 ["FoundationProvider"]
       75 DUPTABLE                         R8 K32 [{"colorMode", "overlayGui", "preferences"}]
       76 GETTABLEKS                       R9 R0 K29 ["colorMode"]
       78 SETTABLEKS                       R9 R8 K29 ["colorMode"]
       80 GETTABLEKS                       R9 R0 K30 ["overlayGui"]
       82 SETTABLEKS                       R9 R8 K30 ["overlayGui"]
       84 GETTABLEKS                       R9 R0 K31 ["preferences"]
       86 SETTABLEKS                       R9 R8 K31 ["preferences"]
       88 DUPTABLE                         R9 K34 [{"Content"}]
       89 GETUPVAL                         R10 0
       90 GETTABLEKS                       R10 R10 K2 ["createElement"]
       92 GETUPVAL                         R11 2
       93 GETTABLEKS                       R11 R11 K33 ["Content"]
       95 DUPTABLE                         R12 K40 [{["align"], ["hasArrow"] = False, ["onPressedOutside"], ["side"]}]
       96 GETUPVAL                         R13 7
       97 GETTABLEKS                       R13 R13 K41 ["End"]
       99 SETTABLEKS                       R13 R12 K35 ["align"]
      101 GETTABLEKS                       R13 R0 K38 ["onPressedOutside"]
      103 SETTABLEKS                       R13 R12 K38 ["onPressedOutside"]
      105 GETUPVAL                         R13 8
      106 GETTABLEKS                       R13 R13 K42 ["Bottom"]
      108 SETTABLEKS                       R13 R12 K39 ["side"]
      110 DUPTABLE                         R13 K44 [{"Menu"}]
      111 GETUPVAL                         R14 0
      112 GETTABLEKS                       R14 R14 K2 ["createElement"]
      114 GETUPVAL                         R15 9
      115 DUPTABLE                         R16 K49 [{"onSortTypeChanged", "onViewTypeChanged", "sortType", "viewType"}]
      116 GETTABLEKS                       R17 R0 K45 ["onSortTypeChanged"]
      118 SETTABLEKS                       R17 R16 K45 ["onSortTypeChanged"]
      120 GETTABLEKS                       R17 R0 K46 ["onViewTypeChanged"]
      122 SETTABLEKS                       R17 R16 K46 ["onViewTypeChanged"]
      124 GETTABLEKS                       R17 R0 K47 ["sortType"]
      126 SETTABLEKS                       R17 R16 K47 ["sortType"]
      128 GETTABLEKS                       R17 R0 K48 ["viewType"]
      130 SETTABLEKS                       R17 R16 K48 ["viewType"]
      132 CALL                             R14 2 1
      133 SETTABLEKS                       R14 R13 K43 ["Menu"]
      135 CALL                             R10 3 1
      136 SETTABLEKS                       R10 R9 K33 ["Content"]
      138 CALL                             R6 3 1
      139 SETTABLEKS                       R6 R5 K9 ["LocalContentProvider"]
      141 CALL                             R2 3 -1
      142 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialPicker"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["StudioFoundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETIMPORT                        R5 K1 [script]
       32 GETTABLEKS                       R5 R5 K10 ["Content"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Types"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R1 K13 ["IconButton"]
       44 GETTABLEKS                       R7 R1 K14 ["Enums"]
       46 GETTABLEKS                       R7 R7 K15 ["InputSize"]
       48 GETTABLEKS                       R8 R3 K16 ["Contexts"]
       50 GETTABLEKS                       R8 R8 K17 ["Localization"]
       52 GETTABLEKS                       R9 R1 K18 ["Popover"]
       54 GETTABLEKS                       R10 R1 K14 ["Enums"]
       56 GETTABLEKS                       R10 R10 K19 ["PopoverAlign"]
       58 GETTABLEKS                       R11 R1 K14 ["Enums"]
       60 GETTABLEKS                       R11 R11 K20 ["PopoverSide"]
       62 GETTABLEKS                       R12 R1 K21 ["Tooltip"]
       64 DUPCLOSURE                       R13 K22 [PROTO_0]
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R12
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R10
       73 CAPTURE                          VAL R11
       74 CAPTURE                          VAL R4
       75 RETURN                           R13 1
