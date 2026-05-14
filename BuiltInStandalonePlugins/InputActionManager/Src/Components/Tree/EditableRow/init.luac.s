PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 NEWTABLE                         R2 0 0
        6 GETUPVAL                         R3 1
        7 CALL                             R3 0 3
        8 FORGPREP                         R3
        9 GETUPVAL                         R8 2
       10 GETTABLEKS                       R8 R8 K1 ["createElement"]
       12 GETUPVAL                         R9 3
       13 DUPTABLE                         R10 K7 [{"action", "binding", "LayoutOrder", "property", "schema"}]
       14 GETTABLEKS                       R11 R0 K2 ["action"]
       16 SETTABLEKS                       R11 R10 K2 ["action"]
       18 GETTABLEKS                       R12 R0 K8 ["bindings"]
       20 GETTABLE                         R11 R12 R7
       21 SETTABLEKS                       R11 R10 K3 ["binding"]
       23 SETTABLEKS                       R6 R10 K4 ["LayoutOrder"]
       25 GETTABLEKS                       R11 R0 K5 ["property"]
       27 SETTABLEKS                       R11 R10 K5 ["property"]
       29 SETTABLEKS                       R7 R10 K6 ["schema"]
       31 CALL                             R8 2 1
       32 SETTABLE                         R8 R2 R7
       33 FORGLOOP                         R3 2 ; [-25]
       35 GETUPVAL                         R3 2
       36 GETTABLEKS                       R3 R3 K1 ["createElement"]
       38 GETUPVAL                         R4 4
       39 DUPTABLE                         R5 K10 [{"tag", "LayoutOrder"}]
       40 LOADK                            R6 K11 ["tree-row row align-y-center"]
       41 SETTABLEKS                       R6 R5 K9 ["tag"]
       43 GETTABLEKS                       R6 R0 K4 ["LayoutOrder"]
       45 SETTABLEKS                       R6 R5 K4 ["LayoutOrder"]
       47 DUPTABLE                         R6 K15 [{"Node", "Divider", "Row"}]
       48 GETUPVAL                         R7 2
       49 GETTABLEKS                       R7 R7 K1 ["createElement"]
       51 GETUPVAL                         R8 5
       52 DUPTABLE                         R9 K21 [{"action", "depth", "expanded", "icon", "LayoutOrder", "name", "setExpanded"}]
       53 GETTABLEKS                       R10 R0 K2 ["action"]
       55 SETTABLEKS                       R10 R9 K2 ["action"]
       57 GETTABLEKS                       R10 R0 K16 ["depth"]
       59 SETTABLEKS                       R10 R9 K16 ["depth"]
       61 GETTABLEKS                       R10 R0 K17 ["expanded"]
       63 SETTABLEKS                       R10 R9 K17 ["expanded"]
       65 GETTABLEKS                       R10 R0 K18 ["icon"]
       67 SETTABLEKS                       R10 R9 K18 ["icon"]
       69 MOVE                             R10 R1
       70 CALL                             R10 0 1
       71 SETTABLEKS                       R10 R9 K4 ["LayoutOrder"]
       73 GETTABLEKS                       R10 R0 K19 ["name"]
       75 SETTABLEKS                       R10 R9 K19 ["name"]
       77 GETTABLEKS                       R10 R0 K20 ["setExpanded"]
       79 SETTABLEKS                       R10 R9 K20 ["setExpanded"]
       81 CALL                             R7 2 1
       82 SETTABLEKS                       R7 R6 K12 ["Node"]
       84 GETUPVAL                         R7 2
       85 GETTABLEKS                       R7 R7 K1 ["createElement"]
       87 GETUPVAL                         R8 6
       88 DUPTABLE                         R9 K23 [{"LayoutOrder", "orientation", "tag"}]
       89 MOVE                             R10 R1
       90 CALL                             R10 0 1
       91 SETTABLEKS                       R10 R9 K4 ["LayoutOrder"]
       93 GETUPVAL                         R10 7
       94 GETTABLEKS                       R10 R10 K24 ["Vertical"]
       96 SETTABLEKS                       R10 R9 K22 ["orientation"]
       98 LOADK                            R10 K25 ["auto-y"]
       99 SETTABLEKS                       R10 R9 K9 ["tag"]
      101 CALL                             R7 2 1
      102 SETTABLEKS                       R7 R6 K13 ["Divider"]
      104 GETUPVAL                         R7 2
      105 GETTABLEKS                       R7 R7 K1 ["createElement"]
      107 GETUPVAL                         R8 4
      108 DUPTABLE                         R9 K26 [{"LayoutOrder", "tag"}]
      109 MOVE                             R10 R1
      110 CALL                             R10 0 1
      111 SETTABLEKS                       R10 R9 K4 ["LayoutOrder"]
      113 LOADK                            R10 K27 ["columns-fill auto-y align-y-center col"]
      114 SETTABLEKS                       R10 R9 K9 ["tag"]
      116 DUPTABLE                         R10 K30 [{"Cells", "CellDivider"}]
      117 GETUPVAL                         R11 2
      118 GETTABLEKS                       R11 R11 K1 ["createElement"]
      120 GETUPVAL                         R12 4
      121 DUPTABLE                         R13 K26 [{"LayoutOrder", "tag"}]
      122 MOVE                             R14 R1
      123 CALL                             R14 0 1
      124 SETTABLEKS                       R14 R13 K4 ["LayoutOrder"]
      126 LOADK                            R14 K31 ["size-full-divider row columns-flex align-y-center"]
      127 SETTABLEKS                       R14 R13 K9 ["tag"]
      129 MOVE                             R14 R2
      130 CALL                             R11 3 1
      131 SETTABLEKS                       R11 R10 K28 ["Cells"]
      133 GETUPVAL                         R11 2
      134 GETTABLEKS                       R11 R11 K1 ["createElement"]
      136 GETUPVAL                         R12 6
      137 DUPTABLE                         R13 K23 [{"LayoutOrder", "orientation", "tag"}]
      138 MOVE                             R14 R1
      139 CALL                             R14 0 1
      140 SETTABLEKS                       R14 R13 K4 ["LayoutOrder"]
      142 GETUPVAL                         R14 7
      143 GETTABLEKS                       R14 R14 K32 ["Horizontal"]
      145 SETTABLEKS                       R14 R13 K22 ["orientation"]
      147 LOADK                            R14 K33 ["auto-x"]
      148 SETTABLEKS                       R14 R13 K9 ["tag"]
      150 CALL                             R11 2 1
      151 SETTABLEKS                       R11 R10 K29 ["CellDivider"]
      153 CALL                             R7 3 1
      154 SETTABLEKS                       R7 R6 K14 ["Row"]
      156 CALL                             R3 3 -1
      157 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["View"]
       30 GETTABLEKS                       R5 R3 K11 ["Divider"]
       32 GETTABLEKS                       R6 R3 K12 ["Enums"]
       34 GETTABLEKS                       R6 R6 K13 ["Orientation"]
       36 GETIMPORT                        R7 K5 [require]
       38 GETTABLEKS                       R8 R0 K14 ["Src"]
       40 GETTABLEKS                       R8 R8 K15 ["Types"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K5 [require]
       45 GETTABLEKS                       R9 R0 K14 ["Src"]
       47 GETTABLEKS                       R9 R9 K16 ["Components"]
       49 GETTABLEKS                       R9 R9 K17 ["Tree"]
       51 GETTABLEKS                       R9 R9 K18 ["EditableRow"]
       53 GETTABLEKS                       R9 R9 K19 ["Cell"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K5 [require]
       58 GETTABLEKS                       R10 R0 K14 ["Src"]
       60 GETTABLEKS                       R10 R10 K16 ["Components"]
       62 GETTABLEKS                       R10 R10 K17 ["Tree"]
       64 GETTABLEKS                       R10 R10 K20 ["Node"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K5 [require]
       69 GETTABLEKS                       R11 R0 K14 ["Src"]
       71 GETTABLEKS                       R11 R11 K21 ["Util"]
       73 GETTABLEKS                       R11 R11 K22 ["getSchemas"]
       75 CALL                             R10 1 1
       76 DUPCLOSURE                       R11 K23 [PROTO_0]
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R10
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R6
       85 RETURN                           R11 1
