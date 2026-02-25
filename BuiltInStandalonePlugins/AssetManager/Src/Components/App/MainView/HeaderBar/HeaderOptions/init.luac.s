PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["refreshItems"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K1 ["refreshUniverseInfo"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K1 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R4 R5 K1 ["use"]
       15 CALL                             R4 0 1
       16 GETUPVAL                         R5 4
       17 CALL                             R5 0 1
       18 GETTABLEKS                       R6 R5 K2 ["ShowSearchOptions"]
       20 GETUPVAL                         R7 5
       21 CALL                             R7 0 1
       22 GETUPVAL                         R9 6
       23 GETTABLEKS                       R8 R9 K3 ["createElement"]
       25 GETUPVAL                         R10 7
       26 GETTABLEKS                       R9 R10 K4 ["View"]
       28 DUPTABLE                         R10 K7 [{"LayoutOrder", "tag"}]
       29 GETTABLEKS                       R11 R0 K5 ["LayoutOrder"]
       31 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
       33 LOADK                            R11 K8 ["padding-y-xsmall padding-right-xlarge size-0-full auto-x row align-x-right align-y-center gap-small"]
       34 SETTABLEKS                       R11 R10 K6 ["tag"]
       36 DUPTABLE                         R11 K15 [{"RefreshButton", "GridSortButtonContainer", "FilterDropdown", "ViewTypeContainer", "Divider", "BulkImportButton"}]
       37 JUMPIF                           R6 ; [+74]
       38 GETUPVAL                         R13 6
       39 GETTABLEKS                       R12 R13 K3 ["createElement"]
       41 GETUPVAL                         R14 7
       42 GETTABLEKS                       R13 R14 K16 ["Tooltip"]
       44 DUPTABLE                         R14 K19 [{"LayoutOrder", "title", "side"}]
       45 NAMECALL                         R15 R1 K20 ["getNextOrder"]
       47 CALL                             R15 1 1
       48 SETTABLEKS                       R15 R14 K5 ["LayoutOrder"]
       50 LOADK                            R17 K16 ["Tooltip"]
       51 LOADK                            R18 K21 ["Refresh"]
       52 NAMECALL                         R15 R2 K22 ["getText"]
       54 CALL                             R15 3 1
       55 SETTABLEKS                       R15 R14 K17 ["title"]
       57 GETUPVAL                         R18 7
       58 GETTABLEKS                       R17 R18 K23 ["Enums"]
       60 GETTABLEKS                       R16 R17 K24 ["PopoverSide"]
       62 GETTABLEKS                       R15 R16 K25 ["Bottom"]
       64 SETTABLEKS                       R15 R14 K18 ["side"]
       66 NEWTABLE                         R15 0 1
       68 GETUPVAL                         R17 6
       69 GETTABLEKS                       R16 R17 K3 ["createElement"]
       71 GETUPVAL                         R18 7
       72 GETTABLEKS                       R17 R18 K26 ["IconButton"]
       74 DUPTABLE                         R18 K31 [{"onActivated", "variant", "size", "icon"}]
       75 NEWCLOSURE                       R19 P0
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R3
       78 SETTABLEKS                       R19 R18 K27 ["onActivated"]
       80 GETUPVAL                         R22 7
       81 GETTABLEKS                       R21 R22 K23 ["Enums"]
       83 GETTABLEKS                       R20 R21 K32 ["ButtonVariant"]
       85 GETTABLEKS                       R19 R20 K33 ["Utility"]
       87 SETTABLEKS                       R19 R18 K28 ["variant"]
       89 GETUPVAL                         R22 7
       90 GETTABLEKS                       R21 R22 K23 ["Enums"]
       92 GETTABLEKS                       R20 R21 K34 ["InputSize"]
       94 GETTABLEKS                       R19 R20 K35 ["XSmall"]
       96 SETTABLEKS                       R19 R18 K29 ["size"]
       98 GETUPVAL                         R22 7
       99 GETTABLEKS                       R21 R22 K23 ["Enums"]
      101 GETTABLEKS                       R20 R21 K36 ["IconName"]
      103 GETTABLEKS                       R19 R20 K37 ["TwoArrowsSpinClockwise"]
      105 SETTABLEKS                       R19 R18 K30 ["icon"]
      107 CALL                             R16 2 -1
      108 SETLIST                          R15 R16 -1 [1]
      110 CALL                             R12 3 1
      111 JUMP                             ; [+1]
      112 LOADNIL                          R12
      113 SETTABLEKS                       R12 R11 K9 ["RefreshButton"]
      115 GETTABLEKS                       R13 R7 K38 ["ViewType"]
      117 GETUPVAL                         R16 8
      118 GETTABLEKS                       R15 R16 K38 ["ViewType"]
      120 GETTABLEKS                       R14 R15 K39 ["Grid"]
      122 JUMPIFNOTEQ                      R13 R14 ; [+13]
      124 GETUPVAL                         R13 6
      125 GETTABLEKS                       R12 R13 K3 ["createElement"]
      127 GETUPVAL                         R13 9
      128 DUPTABLE                         R14 K40 [{"LayoutOrder"}]
      129 NAMECALL                         R15 R1 K20 ["getNextOrder"]
      131 CALL                             R15 1 1
      132 SETTABLEKS                       R15 R14 K5 ["LayoutOrder"]
      134 CALL                             R12 2 1
      135 JUMP                             ; [+1]
      136 LOADNIL                          R12
      137 SETTABLEKS                       R12 R11 K10 ["GridSortButtonContainer"]
      139 JUMPIF                           R6 ; [+12]
      140 GETUPVAL                         R13 6
      141 GETTABLEKS                       R12 R13 K3 ["createElement"]
      143 GETUPVAL                         R13 10
      144 DUPTABLE                         R14 K40 [{"LayoutOrder"}]
      145 NAMECALL                         R15 R1 K20 ["getNextOrder"]
      147 CALL                             R15 1 1
      148 SETTABLEKS                       R15 R14 K5 ["LayoutOrder"]
      150 CALL                             R12 2 1
      151 JUMP                             ; [+1]
      152 LOADNIL                          R12
      153 SETTABLEKS                       R12 R11 K11 ["FilterDropdown"]
      155 GETUPVAL                         R13 6
      156 GETTABLEKS                       R12 R13 K3 ["createElement"]
      158 GETUPVAL                         R13 11
      159 DUPTABLE                         R14 K40 [{"LayoutOrder"}]
      160 NAMECALL                         R15 R1 K20 ["getNextOrder"]
      162 CALL                             R15 1 1
      163 SETTABLEKS                       R15 R14 K5 ["LayoutOrder"]
      165 CALL                             R12 2 1
      166 SETTABLEKS                       R12 R11 K12 ["ViewTypeContainer"]
      168 GETUPVAL                         R13 6
      169 GETTABLEKS                       R12 R13 K3 ["createElement"]
      171 GETUPVAL                         R14 7
      172 GETTABLEKS                       R13 R14 K13 ["Divider"]
      174 DUPTABLE                         R14 K42 [{"LayoutOrder", "orientation"}]
      175 NAMECALL                         R15 R1 K20 ["getNextOrder"]
      177 CALL                             R15 1 1
      178 SETTABLEKS                       R15 R14 K5 ["LayoutOrder"]
      180 GETUPVAL                         R18 7
      181 GETTABLEKS                       R17 R18 K23 ["Enums"]
      183 GETTABLEKS                       R16 R17 K43 ["DividerOrientation"]
      185 GETTABLEKS                       R15 R16 K44 ["Vertical"]
      187 SETTABLEKS                       R15 R14 K41 ["orientation"]
      189 CALL                             R12 2 1
      190 SETTABLEKS                       R12 R11 K13 ["Divider"]
      192 GETUPVAL                         R13 6
      193 GETTABLEKS                       R12 R13 K3 ["createElement"]
      195 GETUPVAL                         R13 12
      196 DUPTABLE                         R14 K40 [{"LayoutOrder"}]
      197 NAMECALL                         R15 R1 K20 ["getNextOrder"]
      199 CALL                             R15 1 1
      200 SETTABLEKS                       R15 R14 K5 ["LayoutOrder"]
      202 CALL                             R12 2 1
      203 SETTABLEKS                       R12 R11 K14 ["BulkImportButton"]
      205 CALL                             R8 3 -1
      206 RETURN                           R8 -1

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
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETIMPORT                        R8 K1 [script]
       36 GETTABLEKS                       R7 R8 K12 ["BulkImportButton"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K5 [require]
       41 GETIMPORT                        R9 K1 [script]
       43 GETTABLEKS                       R8 R9 K13 ["FilterTypesDropdown"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K5 [require]
       48 GETIMPORT                        R10 K1 [script]
       50 GETTABLEKS                       R9 R10 K14 ["SortOptions"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K5 [require]
       55 GETIMPORT                        R11 K1 [script]
       57 GETTABLEKS                       R10 R11 K15 ["ViewOptions"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K5 [require]
       62 GETTABLEKS                       R13 R0 K16 ["Src"]
       64 GETTABLEKS                       R12 R13 K17 ["Controllers"]
       66 GETTABLEKS                       R11 R12 K18 ["ItemsController"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K5 [require]
       71 GETTABLEKS                       R14 R0 K16 ["Src"]
       73 GETTABLEKS                       R13 R14 K17 ["Controllers"]
       75 GETTABLEKS                       R12 R13 K19 ["PluginController"]
       77 CALL                             R11 1 1
       78 GETIMPORT                        R12 K5 [require]
       80 GETTABLEKS                       R15 R0 K16 ["Src"]
       82 GETTABLEKS                       R14 R15 K20 ["Hooks"]
       84 GETTABLEKS                       R13 R14 K21 ["useLayoutInfo"]
       86 CALL                             R12 1 1
       87 GETIMPORT                        R13 K5 [require]
       89 GETTABLEKS                       R16 R0 K16 ["Src"]
       91 GETTABLEKS                       R15 R16 K20 ["Hooks"]
       93 GETTABLEKS                       R14 R15 K22 ["useSearchInfo"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K5 [require]
       98 GETTABLEKS                       R16 R0 K16 ["Src"]
      100 GETTABLEKS                       R15 R16 K23 ["Types"]
      102 CALL                             R14 1 1
      103 GETTABLEKS                       R16 R3 K24 ["Util"]
      105 GETTABLEKS                       R15 R16 K25 ["LayoutOrderIterator"]
      107 DUPCLOSURE                       R16 K26 [PROTO_1]
      108 CAPTURE                          VAL R15
      109 CAPTURE                          VAL R5
      110 CAPTURE                          VAL R11
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R13
      113 CAPTURE                          VAL R12
      114 CAPTURE                          VAL R1
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R14
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R7
      119 CAPTURE                          VAL R9
      120 CAPTURE                          VAL R6
      121 RETURN                           R16 1
