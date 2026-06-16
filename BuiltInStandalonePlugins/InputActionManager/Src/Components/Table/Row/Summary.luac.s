PROTO_0:
        0 NEWTABLE                         R0 2 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["createElement"]
        9 GETUPVAL                         R3 2
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K2 ["nodeProps"]
       13 CALL                             R2 2 1
       14 SETTABLEKS                       R2 R0 K3 ["Node"]
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K1 ["createElement"]
       19 GETUPVAL                         R3 4
       20 DUPTABLE                         R4 K7 [{"LayoutOrder", "orientation", "tag"}]
       21 MOVE                             R5 R1
       22 CALL                             R5 0 1
       23 SETTABLEKS                       R5 R4 K4 ["LayoutOrder"]
       25 GETUPVAL                         R5 5
       26 GETTABLEKS                       R5 R5 K8 ["Vertical"]
       28 SETTABLEKS                       R5 R4 K5 ["orientation"]
       30 LOADK                            R5 K9 ["auto-y"]
       31 SETTABLEKS                       R5 R4 K6 ["tag"]
       33 CALL                             R2 2 1
       34 SETTABLEKS                       R2 R0 K10 ["Divider"]
       36 GETUPVAL                         R2 6
       37 CALL                             R2 0 3
       38 FORGPREP                         R2
       39 NEWTABLE                         R7 0 0
       41 GETUPVAL                         R9 3
       42 GETTABLEKS                       R9 R9 K11 ["bindings"]
       44 GETTABLE                         R8 R9 R6
       45 JUMPIFNOT                        R8 ; [+27]
       46 GETUPVAL                         R11 3
       47 GETTABLEKS                       R11 R11 K11 ["bindings"]
       49 GETTABLE                         R8 R11 R6
       50 LOADNIL                          R9
       51 LOADNIL                          R10
       52 FORGPREP                         R8
       53 GETUPVAL                         R13 7
       54 MOVE                             R14 R12
       55 GETUPVAL                         R15 3
       56 GETTABLEKS                       R15 R15 K2 ["nodeProps"]
       58 GETTABLEKS                       R15 R15 K12 ["action"]
       60 GETTABLEKS                       R15 R15 K13 ["type"]
       62 CALL                             R13 2 1
       63 JUMPIFNOT                        R13 ; [+7]
       64 FASTCALL2                        TABLE_INSERT R7 R13 ; [+5]
       66 MOVE                             R15 R7
       67 MOVE                             R16 R13
       68 GETIMPORT                        R14 K16 [table.insert]
       70 CALL                             R14 2 0
       71 FORGLOOP                         R8 2 ; [-19]
       73 LENGTH                           R9 R7
       74 LOADN                            R10 0
       75 JUMPIFNOTLT                      R10 R9 ; [+7]
       77 GETIMPORT                        R8 K18 [table.concat]
       79 MOVE                             R9 R7
       80 LOADK                            R10 K19 [", "]
       81 CALL                             R8 2 1
       82 JUMP                             ; [+1]
       83 LOADK                            R8 K20 ["None"]
       84 GETUPVAL                         R9 1
       85 GETTABLEKS                       R9 R9 K1 ["createElement"]
       87 GETUPVAL                         R10 8
       88 DUPTABLE                         R11 K21 [{"LayoutOrder", "tag"}]
       89 MOVE                             R12 R1
       90 CALL                             R12 0 1
       91 SETTABLEKS                       R12 R11 K4 ["LayoutOrder"]
       93 LOADK                            R12 K22 ["size-0-full columns-input align-y-center col"]
       94 SETTABLEKS                       R12 R11 K6 ["tag"]
       96 DUPTABLE                         R12 K24 [{"Label", "Divider"}]
       97 GETUPVAL                         R13 1
       98 GETTABLEKS                       R13 R13 K1 ["createElement"]
      100 GETUPVAL                         R14 9
      101 DUPTABLE                         R15 K27 [{"LayoutOrder", "tag", "Text", "TextTruncate"}]
      102 MOVE                             R16 R1
      103 CALL                             R16 0 1
      104 SETTABLEKS                       R16 R15 K4 ["LayoutOrder"]
      106 LOADK                            R16 K28 ["size-0-full auto-x text-body-medium padding-small"]
      107 SETTABLEKS                       R16 R15 K6 ["tag"]
      109 SETTABLEKS                       R8 R15 K25 ["Text"]
      111 GETIMPORT                        R16 K31 [Enum.TextTruncate.AtEnd]
      113 SETTABLEKS                       R16 R15 K26 ["TextTruncate"]
      115 CALL                             R13 2 1
      116 SETTABLEKS                       R13 R12 K23 ["Label"]
      118 GETUPVAL                         R13 1
      119 GETTABLEKS                       R13 R13 K1 ["createElement"]
      121 GETUPVAL                         R14 4
      122 DUPTABLE                         R15 K7 [{"LayoutOrder", "orientation", "tag"}]
      123 MOVE                             R16 R1
      124 CALL                             R16 0 1
      125 SETTABLEKS                       R16 R15 K4 ["LayoutOrder"]
      127 GETUPVAL                         R16 5
      128 GETTABLEKS                       R16 R16 K32 ["Horizontal"]
      130 SETTABLEKS                       R16 R15 K5 ["orientation"]
      132 LOADK                            R16 K33 ["auto-x"]
      133 SETTABLEKS                       R16 R15 K6 ["tag"]
      135 CALL                             R13 2 1
      136 SETTABLEKS                       R13 R12 K10 ["Divider"]
      138 CALL                             R9 3 1
      139 SETTABLE                         R9 R0 R6
      140 FORGLOOP                         R2 2 ; [-102]
      142 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["nodeProps"]
        2 GETTABLEKS                       R3 R3 K1 ["action"]
        4 JUMPIFNOTEQKNIL                  R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 FASTCALL2K                       ASSERT R2 K2 ; [+4]
       10 LOADK                            R3 K2 ["Action is required"]
       11 GETIMPORT                        R1 K4 [assert]
       13 CALL                             R1 2 0
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K5 ["useMemo"]
       17 NEWCLOSURE                       R2 P0
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          UPVAL U4
       24 CAPTURE                          UPVAL U5
       25 CAPTURE                          UPVAL U6
       26 CAPTURE                          UPVAL U7
       27 CAPTURE                          UPVAL U8
       28 NEWTABLE                         R3 0 3
       30 GETTABLEKS                       R4 R0 K6 ["bindings"]
       32 GETTABLEKS                       R5 R0 K0 ["nodeProps"]
       34 GETTABLEKS                       R5 R5 K1 ["action"]
       36 GETTABLEKS                       R6 R0 K0 ["nodeProps"]
       38 GETTABLEKS                       R6 R6 K7 ["expanded"]
       40 SETLIST                          R3 R4 3 [1]
       42 CALL                             R1 2 1
       43 GETUPVAL                         R2 0
       44 GETTABLEKS                       R2 R2 K8 ["createElement"]
       46 GETUPVAL                         R3 7
       47 DUPTABLE                         R4 K11 [{"tag", "LayoutOrder"}]
       48 LOADK                            R5 K12 ["tree-row row align-y-center"]
       49 SETTABLEKS                       R5 R4 K9 ["tag"]
       51 GETTABLEKS                       R5 R0 K10 ["LayoutOrder"]
       53 SETTABLEKS                       R5 R4 K10 ["LayoutOrder"]
       55 MOVE                             R5 R1
       56 CALL                             R2 3 -1
       57 RETURN                           R2 -1

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
       62 GETTABLEKS                       R11 R11 K21 ["Binding"]
       64 GETTABLEKS                       R11 R11 K22 ["getStringForBinding"]
       66 CALL                             R10 1 1
       67 GETIMPORT                        R11 K5 [require]
       69 GETTABLEKS                       R12 R0 K15 ["Src"]
       71 GETTABLEKS                       R12 R12 K20 ["Util"]
       73 GETTABLEKS                       R12 R12 K23 ["getSchemas"]
       75 CALL                             R11 1 1
       76 DUPCLOSURE                       R12 K24 [PROTO_1]
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R11
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R6
       86 RETURN                           R12 1
