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
       39 GETUPVAL                         R8 7
       40 GETTABLEKS                       R8 R8 K11 ["schemas"]
       42 GETTABLE                         R7 R8 R6
       43 JUMPIFEQKB                       R7 FALSE ; [+123]
       45 GETUPVAL                         R7 3
       46 GETTABLEKS                       R7 R7 K12 ["previousBindings"]
       48 JUMPIFNOT                        R7 ; [+17]
       49 GETUPVAL                         R8 3
       50 GETTABLEKS                       R8 R8 K12 ["previousBindings"]
       52 GETTABLE                         R7 R8 R6
       53 JUMPIF                           R7 ; [+12]
       54 GETUPVAL                         R7 1
       55 GETTABLEKS                       R7 R7 K1 ["createElement"]
       57 GETUPVAL                         R8 8
       58 DUPTABLE                         R9 K13 [{"LayoutOrder"}]
       59 MOVE                             R10 R1
       60 CALL                             R10 0 1
       61 SETTABLEKS                       R10 R9 K4 ["LayoutOrder"]
       63 CALL                             R7 2 1
       64 SETTABLE                         R7 R0 R6
       65 JUMP                             ; [+101]
       66 NEWTABLE                         R7 0 0
       68 GETUPVAL                         R9 3
       69 GETTABLEKS                       R9 R9 K14 ["bindings"]
       71 GETTABLE                         R8 R9 R6
       72 JUMPIFNOT                        R8 ; [+94]
       73 GETUPVAL                         R11 3
       74 GETTABLEKS                       R11 R11 K14 ["bindings"]
       76 GETTABLE                         R8 R11 R6
       77 LOADNIL                          R9
       78 LOADNIL                          R10
       79 FORGPREP                         R8
       80 GETUPVAL                         R13 9
       81 MOVE                             R14 R12
       82 GETUPVAL                         R15 3
       83 GETTABLEKS                       R15 R15 K2 ["nodeProps"]
       85 GETTABLEKS                       R15 R15 K15 ["action"]
       87 GETTABLEKS                       R15 R15 K16 ["type"]
       89 CALL                             R13 2 1
       90 JUMPIFNOT                        R13 ; [+7]
       91 FASTCALL2                        TABLE_INSERT R7 R13 ; [+5]
       93 MOVE                             R15 R7
       94 MOVE                             R16 R13
       95 GETIMPORT                        R14 K19 [table.insert]
       97 CALL                             R14 2 0
       98 FORGLOOP                         R8 2 ; [-19]
      100 LENGTH                           R9 R7
      101 LOADN                            R10 0
      102 JUMPIFNOTLT                      R10 R9 ; [+7]
      104 GETIMPORT                        R8 K21 [table.concat]
      106 MOVE                             R9 R7
      107 LOADK                            R10 K22 [", "]
      108 CALL                             R8 2 1
      109 JUMP                             ; [+1]
      110 LOADK                            R8 K23 ["None"]
      111 GETUPVAL                         R9 1
      112 GETTABLEKS                       R9 R9 K1 ["createElement"]
      114 GETUPVAL                         R10 10
      115 DUPTABLE                         R11 K24 [{"LayoutOrder", "tag"}]
      116 MOVE                             R12 R1
      117 CALL                             R12 0 1
      118 SETTABLEKS                       R12 R11 K4 ["LayoutOrder"]
      120 LOADK                            R12 K25 ["size-0-full columns-input align-y-center col"]
      121 SETTABLEKS                       R12 R11 K6 ["tag"]
      123 DUPTABLE                         R12 K27 [{"Label", "Divider"}]
      124 GETUPVAL                         R13 1
      125 GETTABLEKS                       R13 R13 K1 ["createElement"]
      127 GETUPVAL                         R14 11
      128 DUPTABLE                         R15 K30 [{"LayoutOrder", "tag", "Text", "TextTruncate"}]
      129 MOVE                             R16 R1
      130 CALL                             R16 0 1
      131 SETTABLEKS                       R16 R15 K4 ["LayoutOrder"]
      133 LOADK                            R16 K31 ["size-0-full auto-x text-body-medium padding-small"]
      134 SETTABLEKS                       R16 R15 K6 ["tag"]
      136 SETTABLEKS                       R8 R15 K28 ["Text"]
      138 GETIMPORT                        R16 K34 [Enum.TextTruncate.AtEnd]
      140 SETTABLEKS                       R16 R15 K29 ["TextTruncate"]
      142 CALL                             R13 2 1
      143 SETTABLEKS                       R13 R12 K26 ["Label"]
      145 GETUPVAL                         R13 1
      146 GETTABLEKS                       R13 R13 K1 ["createElement"]
      148 GETUPVAL                         R14 4
      149 DUPTABLE                         R15 K7 [{"LayoutOrder", "orientation", "tag"}]
      150 MOVE                             R16 R1
      151 CALL                             R16 0 1
      152 SETTABLEKS                       R16 R15 K4 ["LayoutOrder"]
      154 GETUPVAL                         R16 5
      155 GETTABLEKS                       R16 R16 K35 ["Horizontal"]
      157 SETTABLEKS                       R16 R15 K5 ["orientation"]
      159 LOADK                            R16 K36 ["auto-x"]
      160 SETTABLEKS                       R16 R15 K6 ["tag"]
      162 CALL                             R13 2 1
      163 SETTABLEKS                       R13 R12 K10 ["Divider"]
      165 CALL                             R9 3 1
      166 SETTABLE                         R9 R0 R6
      167 FORGLOOP                         R2 2 ; [-129]
      169 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R4 R0 K2 ["nodeProps"]
        9 GETTABLEKS                       R4 R4 K3 ["action"]
       11 JUMPIFNOTEQKNIL                  R4 ; [+2]
       13 LOADB                            R3 0 +1
       14 LOADB                            R3 1
       15 FASTCALL2K                       ASSERT R3 K4 ; [+4]
       17 LOADK                            R4 K4 ["Action is required"]
       18 GETIMPORT                        R2 K6 [assert]
       20 CALL                             R2 2 0
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K7 ["useMemo"]
       24 NEWCLOSURE                       R3 P0
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U4
       30 CAPTURE                          UPVAL U5
       31 CAPTURE                          UPVAL U6
       32 CAPTURE                          VAL R1
       33 CAPTURE                          UPVAL U7
       34 CAPTURE                          UPVAL U8
       35 CAPTURE                          UPVAL U9
       36 CAPTURE                          UPVAL U10
       37 NEWTABLE                         R4 0 4
       39 GETTABLEKS                       R5 R0 K8 ["bindings"]
       41 GETTABLEKS                       R6 R0 K2 ["nodeProps"]
       43 GETTABLEKS                       R6 R6 K3 ["action"]
       45 GETTABLEKS                       R7 R0 K2 ["nodeProps"]
       47 GETTABLEKS                       R7 R7 K9 ["expanded"]
       49 GETTABLEKS                       R8 R1 K10 ["schemas"]
       51 SETLIST                          R4 R5 4 [1]
       53 CALL                             R2 2 1
       54 GETUPVAL                         R3 0
       55 GETTABLEKS                       R3 R3 K11 ["createElement"]
       57 GETUPVAL                         R4 9
       58 DUPTABLE                         R5 K14 [{"tag", "LayoutOrder"}]
       59 LOADK                            R6 K15 ["tree-row row align-y-center auto-x"]
       60 SETTABLEKS                       R6 R5 K12 ["tag"]
       62 GETTABLEKS                       R6 R0 K13 ["LayoutOrder"]
       64 SETTABLEKS                       R6 R5 K13 ["LayoutOrder"]
       66 MOVE                             R6 R2
       67 CALL                             R3 3 -1
       68 RETURN                           R3 -1

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
       53 GETTABLEKS                       R10 R10 K16 ["Components"]
       55 GETTABLEKS                       R10 R10 K19 ["Table"]
       57 GETTABLEKS                       R10 R10 K20 ["EmptyCell"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K5 [require]
       62 GETTABLEKS                       R11 R0 K15 ["Src"]
       64 GETTABLEKS                       R11 R11 K21 ["Types"]
       66 CALL                             R10 1 1
       67 GETIMPORT                        R11 K5 [require]
       69 GETTABLEKS                       R12 R0 K15 ["Src"]
       71 GETTABLEKS                       R12 R12 K22 ["Contexts"]
       73 GETTABLEKS                       R12 R12 K23 ["FilterConfiguration"]
       75 CALL                             R11 1 1
       76 GETIMPORT                        R12 K5 [require]
       78 GETTABLEKS                       R13 R0 K15 ["Src"]
       80 GETTABLEKS                       R13 R13 K24 ["Util"]
       82 GETTABLEKS                       R13 R13 K25 ["Binding"]
       84 GETTABLEKS                       R13 R13 K26 ["getStringForBinding"]
       86 CALL                             R12 1 1
       87 GETIMPORT                        R13 K5 [require]
       89 GETTABLEKS                       R14 R0 K15 ["Src"]
       91 GETTABLEKS                       R14 R14 K24 ["Util"]
       93 GETTABLEKS                       R14 R14 K27 ["getSchemas"]
       95 CALL                             R13 1 1
       96 DUPCLOSURE                       R14 K28 [PROTO_1]
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R11
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R13
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R12
      106 CAPTURE                          VAL R7
      107 CAPTURE                          VAL R6
      108 RETURN                           R14 1
