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
       43 DUPTABLE                         R15 K23 [{["icon"], ["isDisabled"], ["onActivated"], ["size"], ["testId"] = "terrain-material-view-sort-button"}]
       44 GETUPVAL                         R16 5
       45 GETTABLEKS                       R16 R16 K24 ["Enums"]
       47 GETTABLEKS                       R16 R16 K25 ["IconName"]
       49 GETTABLEKS                       R16 R16 K26 ["TwoSlidersVertical"]
       51 SETTABLEKS                       R16 R15 K18 ["icon"]
       53 GETTABLEKS                       R16 R0 K19 ["isDisabled"]
       55 SETTABLEKS                       R16 R15 K19 ["isDisabled"]
       57 GETTABLEKS                       R16 R0 K27 ["onToggle"]
       59 SETTABLEKS                       R16 R15 K20 ["onActivated"]
       61 GETUPVAL                         R16 6
       62 GETTABLEKS                       R16 R16 K28 ["XSmall"]
       64 SETTABLEKS                       R16 R15 K21 ["size"]
       66 CALL                             R13 2 -1
       67 CALL                             R10 -1 1
       68 SETTABLEKS                       R10 R9 K11 ["Tooltip"]
       70 CALL                             R6 3 1
       71 SETTABLEKS                       R6 R5 K8 ["Anchor"]
       73 GETUPVAL                         R6 0
       74 GETTABLEKS                       R6 R6 K2 ["createElement"]
       76 GETUPVAL                         R7 5
       77 GETTABLEKS                       R7 R7 K29 ["FoundationProvider"]
       79 DUPTABLE                         R8 K33 [{"colorMode", "overlayGui", "preferences"}]
       80 GETTABLEKS                       R9 R0 K30 ["colorMode"]
       82 SETTABLEKS                       R9 R8 K30 ["colorMode"]
       84 GETTABLEKS                       R9 R0 K31 ["overlayGui"]
       86 SETTABLEKS                       R9 R8 K31 ["overlayGui"]
       88 GETTABLEKS                       R9 R0 K32 ["preferences"]
       90 SETTABLEKS                       R9 R8 K32 ["preferences"]
       92 DUPTABLE                         R9 K35 [{"Content"}]
       93 GETUPVAL                         R10 0
       94 GETTABLEKS                       R10 R10 K2 ["createElement"]
       96 GETUPVAL                         R11 2
       97 GETTABLEKS                       R11 R11 K34 ["Content"]
       99 DUPTABLE                         R12 K41 [{["align"], ["hasArrow"] = False, ["onPressedOutside"], ["side"]}]
      100 GETUPVAL                         R13 7
      101 GETTABLEKS                       R13 R13 K42 ["End"]
      103 SETTABLEKS                       R13 R12 K36 ["align"]
      105 GETTABLEKS                       R13 R0 K39 ["onPressedOutside"]
      107 SETTABLEKS                       R13 R12 K39 ["onPressedOutside"]
      109 GETUPVAL                         R13 8
      110 GETTABLEKS                       R13 R13 K43 ["Bottom"]
      112 SETTABLEKS                       R13 R12 K40 ["side"]
      114 DUPTABLE                         R13 K45 [{"Menu"}]
      115 GETUPVAL                         R14 0
      116 GETTABLEKS                       R14 R14 K2 ["createElement"]
      118 GETUPVAL                         R15 9
      119 DUPTABLE                         R16 K50 [{"onSortTypeChanged", "onViewTypeChanged", "sortType", "viewType"}]
      120 GETTABLEKS                       R17 R0 K46 ["onSortTypeChanged"]
      122 SETTABLEKS                       R17 R16 K46 ["onSortTypeChanged"]
      124 GETTABLEKS                       R17 R0 K47 ["onViewTypeChanged"]
      126 SETTABLEKS                       R17 R16 K47 ["onViewTypeChanged"]
      128 GETTABLEKS                       R17 R0 K48 ["sortType"]
      130 SETTABLEKS                       R17 R16 K48 ["sortType"]
      132 GETTABLEKS                       R17 R0 K49 ["viewType"]
      134 SETTABLEKS                       R17 R16 K49 ["viewType"]
      136 CALL                             R14 2 1
      137 SETTABLEKS                       R14 R13 K44 ["Menu"]
      139 CALL                             R10 3 1
      140 SETTABLEKS                       R10 R9 K34 ["Content"]
      142 CALL                             R6 3 1
      143 SETTABLEKS                       R6 R5 K9 ["LocalContentProvider"]
      145 CALL                             R2 3 -1
      146 RETURN                           R2 -1

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
