PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 NEWTABLE                         R2 0 0
        6 GETTABLEKS                       R5 R0 K1 ["nodeProps"]
        8 GETTABLEKS                       R5 R5 K2 ["action"]
       10 JUMPIFNOTEQKNIL                  R5 ; [+2]
       12 LOADB                            R4 0 +1
       13 LOADB                            R4 1
       14 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       16 LOADK                            R5 K3 ["Action is required"]
       17 GETIMPORT                        R3 K5 [assert]
       19 CALL                             R3 2 0
       20 GETUPVAL                         R3 1
       21 CALL                             R3 0 3
       22 FORGPREP                         R3
       23 GETUPVAL                         R8 2
       24 GETTABLEKS                       R8 R8 K6 ["createElement"]
       26 GETUPVAL                         R9 3
       27 DUPTABLE                         R10 K12 [{"action", "binding", "LayoutOrder", "onCreated", "property", "schema"}]
       28 GETTABLEKS                       R11 R0 K1 ["nodeProps"]
       30 GETTABLEKS                       R11 R11 K2 ["action"]
       32 SETTABLEKS                       R11 R10 K2 ["action"]
       34 GETTABLEKS                       R12 R0 K13 ["bindings"]
       36 GETTABLE                         R11 R12 R7
       37 SETTABLEKS                       R11 R10 K7 ["binding"]
       39 SETTABLEKS                       R6 R10 K8 ["LayoutOrder"]
       41 GETTABLEKS                       R11 R0 K9 ["onCreated"]
       43 SETTABLEKS                       R11 R10 K9 ["onCreated"]
       45 GETTABLEKS                       R11 R0 K10 ["property"]
       47 SETTABLEKS                       R11 R10 K10 ["property"]
       49 SETTABLEKS                       R7 R10 K11 ["schema"]
       51 CALL                             R8 2 1
       52 SETTABLE                         R8 R2 R7
       53 FORGLOOP                         R3 2 ; [-31]
       55 GETUPVAL                         R3 2
       56 GETTABLEKS                       R3 R3 K6 ["createElement"]
       58 GETUPVAL                         R4 4
       59 DUPTABLE                         R5 K15 [{"tag", "LayoutOrder"}]
       60 LOADK                            R6 K16 ["tree-row row align-y-center"]
       61 SETTABLEKS                       R6 R5 K14 ["tag"]
       63 GETTABLEKS                       R6 R0 K8 ["LayoutOrder"]
       65 SETTABLEKS                       R6 R5 K8 ["LayoutOrder"]
       67 DUPTABLE                         R6 K20 [{"Node", "Divider", "Row"}]
       68 GETUPVAL                         R7 2
       69 GETTABLEKS                       R7 R7 K6 ["createElement"]
       71 GETUPVAL                         R8 5
       72 GETTABLEKS                       R9 R0 K1 ["nodeProps"]
       74 CALL                             R7 2 1
       75 SETTABLEKS                       R7 R6 K17 ["Node"]
       77 GETUPVAL                         R7 2
       78 GETTABLEKS                       R7 R7 K6 ["createElement"]
       80 GETUPVAL                         R8 6
       81 DUPTABLE                         R9 K22 [{"LayoutOrder", "orientation", "tag"}]
       82 MOVE                             R10 R1
       83 CALL                             R10 0 1
       84 SETTABLEKS                       R10 R9 K8 ["LayoutOrder"]
       86 GETUPVAL                         R10 7
       87 GETTABLEKS                       R10 R10 K23 ["Vertical"]
       89 SETTABLEKS                       R10 R9 K21 ["orientation"]
       91 LOADK                            R10 K24 ["auto-y"]
       92 SETTABLEKS                       R10 R9 K14 ["tag"]
       94 CALL                             R7 2 1
       95 SETTABLEKS                       R7 R6 K18 ["Divider"]
       97 GETUPVAL                         R7 2
       98 GETTABLEKS                       R7 R7 K6 ["createElement"]
      100 GETUPVAL                         R8 4
      101 DUPTABLE                         R9 K25 [{"LayoutOrder", "tag"}]
      102 MOVE                             R10 R1
      103 CALL                             R10 0 1
      104 SETTABLEKS                       R10 R9 K8 ["LayoutOrder"]
      106 LOADK                            R10 K26 ["columns-fill auto-y align-y-center col"]
      107 SETTABLEKS                       R10 R9 K14 ["tag"]
      109 DUPTABLE                         R10 K29 [{"Cells", "CellDivider"}]
      110 GETUPVAL                         R11 2
      111 GETTABLEKS                       R11 R11 K6 ["createElement"]
      113 GETUPVAL                         R12 4
      114 DUPTABLE                         R13 K25 [{"LayoutOrder", "tag"}]
      115 MOVE                             R14 R1
      116 CALL                             R14 0 1
      117 SETTABLEKS                       R14 R13 K8 ["LayoutOrder"]
      119 LOADK                            R14 K30 ["size-full-divider row columns-flex align-y-center"]
      120 SETTABLEKS                       R14 R13 K14 ["tag"]
      122 MOVE                             R14 R2
      123 CALL                             R11 3 1
      124 SETTABLEKS                       R11 R10 K27 ["Cells"]
      126 GETUPVAL                         R11 2
      127 GETTABLEKS                       R11 R11 K6 ["createElement"]
      129 GETUPVAL                         R12 6
      130 DUPTABLE                         R13 K22 [{"LayoutOrder", "orientation", "tag"}]
      131 MOVE                             R14 R1
      132 CALL                             R14 0 1
      133 SETTABLEKS                       R14 R13 K8 ["LayoutOrder"]
      135 GETUPVAL                         R14 7
      136 GETTABLEKS                       R14 R14 K31 ["Horizontal"]
      138 SETTABLEKS                       R14 R13 K21 ["orientation"]
      140 LOADK                            R14 K32 ["auto-x"]
      141 SETTABLEKS                       R14 R13 K14 ["tag"]
      143 CALL                             R11 2 1
      144 SETTABLEKS                       R11 R10 K28 ["CellDivider"]
      146 CALL                             R7 3 1
      147 SETTABLEKS                       R7 R6 K19 ["Row"]
      149 CALL                             R3 3 -1
      150 RETURN                           R3 -1

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
       51 GETTABLEKS                       R9 R9 K18 ["Action"]
       53 GETTABLEKS                       R9 R9 K19 ["EditableRow"]
       55 GETTABLEKS                       R9 R9 K20 ["Cell"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K5 [require]
       60 GETTABLEKS                       R10 R0 K14 ["Src"]
       62 GETTABLEKS                       R10 R10 K16 ["Components"]
       64 GETTABLEKS                       R10 R10 K17 ["Tree"]
       66 GETTABLEKS                       R10 R10 K21 ["Node"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K5 [require]
       71 GETTABLEKS                       R11 R0 K14 ["Src"]
       73 GETTABLEKS                       R11 R11 K22 ["Util"]
       75 GETTABLEKS                       R11 R11 K23 ["getSchemas"]
       77 CALL                             R10 1 1
       78 DUPCLOSURE                       R11 K24 [PROTO_0]
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R6
       87 RETURN                           R11 1
