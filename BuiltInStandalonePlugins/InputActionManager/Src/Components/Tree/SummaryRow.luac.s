PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["createNextOrder"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 CALL                             R2 0 3
        8 FORGPREP                         R2
        9 NEWTABLE                         R7 0 0
       11 GETUPVAL                         R10 2
       12 GETTABLEKS                       R9 R10 K1 ["bindings"]
       14 GETTABLE                         R8 R9 R6
       15 JUMPIFNOT                        R8 ; [+25]
       16 GETUPVAL                         R12 2
       17 GETTABLEKS                       R11 R12 K1 ["bindings"]
       19 GETTABLE                         R8 R11 R6
       20 LOADNIL                          R9
       21 LOADNIL                          R10
       22 FORGPREP                         R8
       23 GETUPVAL                         R13 3
       24 MOVE                             R14 R12
       25 GETUPVAL                         R17 2
       26 GETTABLEKS                       R16 R17 K2 ["action"]
       28 GETTABLEKS                       R15 R16 K3 ["type"]
       30 CALL                             R13 2 1
       31 JUMPIFNOT                        R13 ; [+7]
       32 FASTCALL2                        TABLE_INSERT R7 R13 ; [+5]
       34 MOVE                             R15 R7
       35 MOVE                             R16 R13
       36 GETIMPORT                        R14 K6 [table.insert]
       38 CALL                             R14 2 0
       39 FORGLOOP                         R8 2 ; [-17]
       41 LENGTH                           R9 R7
       42 LOADN                            R10 0
       43 JUMPIFNOTLT                      R10 R9 ; [+7]
       45 GETIMPORT                        R8 K8 [table.concat]
       47 MOVE                             R9 R7
       48 LOADK                            R10 K9 [", "]
       49 CALL                             R8 2 1
       50 JUMP                             ; [+1]
       51 LOADK                            R8 K10 ["None"]
       52 GETUPVAL                         R10 4
       53 GETTABLEKS                       R9 R10 K11 ["createElement"]
       55 GETUPVAL                         R10 5
       56 DUPTABLE                         R11 K16 [{"LayoutOrder", "tag", "Text", "TextTruncate"}]
       57 MOVE                             R12 R1
       58 CALL                             R12 0 1
       59 SETTABLEKS                       R12 R11 K12 ["LayoutOrder"]
       61 LOADK                            R12 K17 ["size-0-full text-align-x-left text-body-medium padding-small columns-input"]
       62 SETTABLEKS                       R12 R11 K13 ["tag"]
       64 SETTABLEKS                       R8 R11 K14 ["Text"]
       66 GETIMPORT                        R12 K20 [Enum.TextTruncate.AtEnd]
       68 SETTABLEKS                       R12 R11 K15 ["TextTruncate"]
       70 CALL                             R9 2 1
       71 SETTABLE                         R9 R0 R6
       72 FORGLOOP                         R2 2 ; [-64]
       74 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["useMemo"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U4
       14 NEWTABLE                         R4 0 2
       16 GETTABLEKS                       R5 R0 K2 ["bindings"]
       18 GETTABLEKS                       R6 R0 K3 ["action"]
       20 SETLIST                          R4 R5 2 [1]
       22 CALL                             R2 2 1
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R3 R4 K4 ["createElement"]
       26 GETUPVAL                         R4 5
       27 DUPTABLE                         R5 K7 [{"tag", "LayoutOrder"}]
       28 LOADK                            R6 K8 ["tree-row row align-y-center"]
       29 SETTABLEKS                       R6 R5 K5 ["tag"]
       31 GETTABLEKS                       R6 R0 K6 ["LayoutOrder"]
       33 SETTABLEKS                       R6 R5 K6 ["LayoutOrder"]
       35 DUPTABLE                         R6 K12 [{"Node", "Divider", "Row"}]
       36 GETUPVAL                         R8 1
       37 GETTABLEKS                       R7 R8 K4 ["createElement"]
       39 GETUPVAL                         R8 6
       40 DUPTABLE                         R9 K20 [{"action", "depth", "expanded", "icon", "LayoutOrder", "name", "onCreate", "onCreated", "setExpanded"}]
       41 GETTABLEKS                       R10 R0 K3 ["action"]
       43 SETTABLEKS                       R10 R9 K3 ["action"]
       45 GETTABLEKS                       R10 R0 K13 ["depth"]
       47 SETTABLEKS                       R10 R9 K13 ["depth"]
       49 GETTABLEKS                       R10 R0 K14 ["expanded"]
       51 SETTABLEKS                       R10 R9 K14 ["expanded"]
       53 GETTABLEKS                       R10 R0 K15 ["icon"]
       55 SETTABLEKS                       R10 R9 K15 ["icon"]
       57 MOVE                             R10 R1
       58 CALL                             R10 0 1
       59 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
       61 GETTABLEKS                       R10 R0 K16 ["name"]
       63 SETTABLEKS                       R10 R9 K16 ["name"]
       65 GETTABLEKS                       R10 R0 K17 ["onCreate"]
       67 SETTABLEKS                       R10 R9 K17 ["onCreate"]
       69 GETTABLEKS                       R10 R0 K18 ["onCreated"]
       71 SETTABLEKS                       R10 R9 K18 ["onCreated"]
       73 GETTABLEKS                       R10 R0 K19 ["setExpanded"]
       75 SETTABLEKS                       R10 R9 K19 ["setExpanded"]
       77 CALL                             R7 2 1
       78 SETTABLEKS                       R7 R6 K9 ["Node"]
       80 GETUPVAL                         R8 1
       81 GETTABLEKS                       R7 R8 K4 ["createElement"]
       83 GETUPVAL                         R8 7
       84 DUPTABLE                         R9 K22 [{"LayoutOrder", "orientation", "tag"}]
       85 MOVE                             R10 R1
       86 CALL                             R10 0 1
       87 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
       89 GETUPVAL                         R11 8
       90 GETTABLEKS                       R10 R11 K23 ["Vertical"]
       92 SETTABLEKS                       R10 R9 K21 ["orientation"]
       94 LOADK                            R10 K24 ["auto-y"]
       95 SETTABLEKS                       R10 R9 K5 ["tag"]
       97 CALL                             R7 2 1
       98 SETTABLEKS                       R7 R6 K10 ["Divider"]
      100 GETUPVAL                         R8 1
      101 GETTABLEKS                       R7 R8 K4 ["createElement"]
      103 GETUPVAL                         R8 5
      104 DUPTABLE                         R9 K25 [{"LayoutOrder", "tag"}]
      105 MOVE                             R10 R1
      106 CALL                             R10 0 1
      107 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
      109 LOADK                            R10 K26 ["columns-fill auto-y align-y-center col"]
      110 SETTABLEKS                       R10 R9 K5 ["tag"]
      112 DUPTABLE                         R10 K29 [{"Cells", "CellDivider"}]
      113 GETUPVAL                         R12 1
      114 GETTABLEKS                       R11 R12 K4 ["createElement"]
      116 GETUPVAL                         R12 5
      117 DUPTABLE                         R13 K25 [{"LayoutOrder", "tag"}]
      118 MOVE                             R14 R1
      119 CALL                             R14 0 1
      120 SETTABLEKS                       R14 R13 K6 ["LayoutOrder"]
      122 LOADK                            R14 K30 ["size-full-full row columns-flex align-y-center"]
      123 SETTABLEKS                       R14 R13 K5 ["tag"]
      125 MOVE                             R14 R2
      126 CALL                             R11 3 1
      127 SETTABLEKS                       R11 R10 K27 ["Cells"]
      129 GETUPVAL                         R12 1
      130 GETTABLEKS                       R11 R12 K4 ["createElement"]
      132 GETUPVAL                         R12 7
      133 DUPTABLE                         R13 K22 [{"LayoutOrder", "orientation", "tag"}]
      134 MOVE                             R14 R1
      135 CALL                             R14 0 1
      136 SETTABLEKS                       R14 R13 K6 ["LayoutOrder"]
      138 GETUPVAL                         R15 8
      139 GETTABLEKS                       R14 R15 K31 ["Horizontal"]
      141 SETTABLEKS                       R14 R13 K21 ["orientation"]
      143 LOADK                            R14 K32 ["auto-x"]
      144 SETTABLEKS                       R14 R13 K5 ["tag"]
      146 CALL                             R11 2 1
      147 SETTABLEKS                       R11 R10 K28 ["CellDivider"]
      149 CALL                             R7 3 1
      150 SETTABLEKS                       R7 R6 K11 ["Row"]
      152 CALL                             R3 3 -1
      153 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["Divider"]
       30 GETTABLEKS                       R6 R3 K11 ["Enums"]
       32 GETTABLEKS                       R5 R6 K12 ["Orientation"]
       34 GETTABLEKS                       R6 R3 K13 ["Text"]
       36 GETTABLEKS                       R7 R3 K14 ["View"]
       38 GETIMPORT                        R8 K5 [require]
       40 GETTABLEKS                       R12 R0 K15 ["Src"]
       42 GETTABLEKS                       R11 R12 K16 ["Components"]
       44 GETTABLEKS                       R10 R11 K17 ["Tree"]
       46 GETTABLEKS                       R9 R10 K18 ["Node"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K5 [require]
       51 GETTABLEKS                       R11 R0 K15 ["Src"]
       53 GETTABLEKS                       R10 R11 K19 ["Types"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K5 [require]
       58 GETTABLEKS                       R13 R0 K15 ["Src"]
       60 GETTABLEKS                       R12 R13 K20 ["Util"]
       62 GETTABLEKS                       R11 R12 K21 ["getStringForBinding"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K5 [require]
       67 GETTABLEKS                       R14 R0 K15 ["Src"]
       69 GETTABLEKS                       R13 R14 K20 ["Util"]
       71 GETTABLEKS                       R12 R13 K22 ["getSchemas"]
       73 CALL                             R11 1 1
       74 DUPCLOSURE                       R12 K23 [PROTO_1]
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R11
       78 CAPTURE                          VAL R10
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R5
       84 RETURN                           R12 1
