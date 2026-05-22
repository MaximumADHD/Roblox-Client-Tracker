PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 CALL                             R2 0 3
        8 FORGPREP                         R2
        9 NEWTABLE                         R7 0 0
       11 GETUPVAL                         R9 2
       12 GETTABLEKS                       R9 R9 K1 ["bindings"]
       14 GETTABLE                         R8 R9 R6
       15 JUMPIFNOT                        R8 ; [+27]
       16 GETUPVAL                         R11 2
       17 GETTABLEKS                       R11 R11 K1 ["bindings"]
       19 GETTABLE                         R8 R11 R6
       20 LOADNIL                          R9
       21 LOADNIL                          R10
       22 FORGPREP                         R8
       23 GETUPVAL                         R13 3
       24 MOVE                             R14 R12
       25 GETUPVAL                         R15 2
       26 GETTABLEKS                       R15 R15 K2 ["nodeProps"]
       28 GETTABLEKS                       R15 R15 K3 ["action"]
       30 GETTABLEKS                       R15 R15 K4 ["type"]
       32 CALL                             R13 2 1
       33 JUMPIFNOT                        R13 ; [+7]
       34 FASTCALL2                        TABLE_INSERT R7 R13 ; [+5]
       36 MOVE                             R15 R7
       37 MOVE                             R16 R13
       38 GETIMPORT                        R14 K7 [table.insert]
       40 CALL                             R14 2 0
       41 FORGLOOP                         R8 2 ; [-19]
       43 LENGTH                           R9 R7
       44 LOADN                            R10 0
       45 JUMPIFNOTLT                      R10 R9 ; [+7]
       47 GETIMPORT                        R8 K9 [table.concat]
       49 MOVE                             R9 R7
       50 LOADK                            R10 K10 [", "]
       51 CALL                             R8 2 1
       52 JUMP                             ; [+1]
       53 LOADK                            R8 K11 ["None"]
       54 GETUPVAL                         R9 4
       55 GETTABLEKS                       R9 R9 K12 ["createElement"]
       57 GETUPVAL                         R10 5
       58 DUPTABLE                         R11 K17 [{"LayoutOrder", "tag", "Text", "TextTruncate"}]
       59 MOVE                             R12 R1
       60 CALL                             R12 0 1
       61 SETTABLEKS                       R12 R11 K13 ["LayoutOrder"]
       63 LOADK                            R12 K18 ["size-0-full text-align-x-left text-body-medium padding-small columns-input"]
       64 SETTABLEKS                       R12 R11 K14 ["tag"]
       66 SETTABLEKS                       R8 R11 K15 ["Text"]
       68 GETIMPORT                        R12 K21 [Enum.TextTruncate.AtEnd]
       70 SETTABLEKS                       R12 R11 K16 ["TextTruncate"]
       72 CALL                             R9 2 1
       73 SETTABLE                         R9 R0 R6
       74 FORGLOOP                         R2 2 ; [-66]
       76 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R4 R0 K1 ["nodeProps"]
        6 GETTABLEKS                       R4 R4 K2 ["action"]
        8 JUMPIFNOTEQKNIL                  R4 ; [+2]
       10 LOADB                            R3 0 +1
       11 LOADB                            R3 1
       12 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       14 LOADK                            R4 K3 ["Action is required"]
       15 GETIMPORT                        R2 K5 [assert]
       17 CALL                             R2 2 0
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K6 ["useMemo"]
       21 NEWCLOSURE                       R3 P0
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          UPVAL U4
       28 NEWTABLE                         R4 0 2
       30 GETTABLEKS                       R5 R0 K7 ["bindings"]
       32 GETTABLEKS                       R6 R0 K1 ["nodeProps"]
       34 GETTABLEKS                       R6 R6 K2 ["action"]
       36 SETLIST                          R4 R5 2 [1]
       38 CALL                             R2 2 1
       39 GETUPVAL                         R3 1
       40 GETTABLEKS                       R3 R3 K8 ["createElement"]
       42 GETUPVAL                         R4 5
       43 DUPTABLE                         R5 K11 [{"tag", "LayoutOrder"}]
       44 LOADK                            R6 K12 ["tree-row row align-y-center"]
       45 SETTABLEKS                       R6 R5 K9 ["tag"]
       47 GETTABLEKS                       R6 R0 K10 ["LayoutOrder"]
       49 SETTABLEKS                       R6 R5 K10 ["LayoutOrder"]
       51 DUPTABLE                         R6 K16 [{"Node", "Divider", "Row"}]
       52 GETUPVAL                         R7 1
       53 GETTABLEKS                       R7 R7 K8 ["createElement"]
       55 GETUPVAL                         R8 6
       56 GETTABLEKS                       R9 R0 K1 ["nodeProps"]
       58 CALL                             R7 2 1
       59 SETTABLEKS                       R7 R6 K13 ["Node"]
       61 GETUPVAL                         R7 1
       62 GETTABLEKS                       R7 R7 K8 ["createElement"]
       64 GETUPVAL                         R8 7
       65 DUPTABLE                         R9 K18 [{"LayoutOrder", "orientation", "tag"}]
       66 MOVE                             R10 R1
       67 CALL                             R10 0 1
       68 SETTABLEKS                       R10 R9 K10 ["LayoutOrder"]
       70 GETUPVAL                         R10 8
       71 GETTABLEKS                       R10 R10 K19 ["Vertical"]
       73 SETTABLEKS                       R10 R9 K17 ["orientation"]
       75 LOADK                            R10 K20 ["auto-y"]
       76 SETTABLEKS                       R10 R9 K9 ["tag"]
       78 CALL                             R7 2 1
       79 SETTABLEKS                       R7 R6 K14 ["Divider"]
       81 GETUPVAL                         R7 1
       82 GETTABLEKS                       R7 R7 K8 ["createElement"]
       84 GETUPVAL                         R8 5
       85 DUPTABLE                         R9 K21 [{"LayoutOrder", "tag"}]
       86 MOVE                             R10 R1
       87 CALL                             R10 0 1
       88 SETTABLEKS                       R10 R9 K10 ["LayoutOrder"]
       90 LOADK                            R10 K22 ["columns-fill auto-y align-y-center col"]
       91 SETTABLEKS                       R10 R9 K9 ["tag"]
       93 DUPTABLE                         R10 K25 [{"Cells", "CellDivider"}]
       94 GETUPVAL                         R11 1
       95 GETTABLEKS                       R11 R11 K8 ["createElement"]
       97 GETUPVAL                         R12 5
       98 DUPTABLE                         R13 K21 [{"LayoutOrder", "tag"}]
       99 MOVE                             R14 R1
      100 CALL                             R14 0 1
      101 SETTABLEKS                       R14 R13 K10 ["LayoutOrder"]
      103 LOADK                            R14 K26 ["size-full-full row columns-flex align-y-center"]
      104 SETTABLEKS                       R14 R13 K9 ["tag"]
      106 MOVE                             R14 R2
      107 CALL                             R11 3 1
      108 SETTABLEKS                       R11 R10 K23 ["Cells"]
      110 GETUPVAL                         R11 1
      111 GETTABLEKS                       R11 R11 K8 ["createElement"]
      113 GETUPVAL                         R12 7
      114 DUPTABLE                         R13 K18 [{"LayoutOrder", "orientation", "tag"}]
      115 MOVE                             R14 R1
      116 CALL                             R14 0 1
      117 SETTABLEKS                       R14 R13 K10 ["LayoutOrder"]
      119 GETUPVAL                         R14 8
      120 GETTABLEKS                       R14 R14 K27 ["Horizontal"]
      122 SETTABLEKS                       R14 R13 K17 ["orientation"]
      124 LOADK                            R14 K28 ["auto-x"]
      125 SETTABLEKS                       R14 R13 K9 ["tag"]
      127 CALL                             R11 2 1
      128 SETTABLEKS                       R11 R10 K24 ["CellDivider"]
      130 CALL                             R7 3 1
      131 SETTABLEKS                       R7 R6 K15 ["Row"]
      133 CALL                             R3 3 -1
      134 RETURN                           R3 -1

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
       28 GETTABLEKS                       R4 R3 K10 ["Divider"]
       30 GETTABLEKS                       R5 R3 K11 ["Enums"]
       32 GETTABLEKS                       R5 R5 K12 ["Orientation"]
       34 GETTABLEKS                       R6 R3 K13 ["Text"]
       36 GETTABLEKS                       R7 R3 K14 ["View"]
       38 GETIMPORT                        R8 K5 [require]
       40 GETTABLEKS                       R9 R0 K15 ["Src"]
       42 GETTABLEKS                       R9 R9 K16 ["Components"]
       44 GETTABLEKS                       R9 R9 K17 ["Tree"]
       46 GETTABLEKS                       R9 R9 K18 ["Node"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K5 [require]
       51 GETTABLEKS                       R10 R0 K15 ["Src"]
       53 GETTABLEKS                       R10 R10 K19 ["Types"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K5 [require]
       58 GETTABLEKS                       R11 R0 K15 ["Src"]
       60 GETTABLEKS                       R11 R11 K20 ["Util"]
       62 GETTABLEKS                       R11 R11 K21 ["getStringForBinding"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K5 [require]
       67 GETTABLEKS                       R12 R0 K15 ["Src"]
       69 GETTABLEKS                       R12 R12 K20 ["Util"]
       71 GETTABLEKS                       R12 R12 K22 ["getSchemas"]
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
