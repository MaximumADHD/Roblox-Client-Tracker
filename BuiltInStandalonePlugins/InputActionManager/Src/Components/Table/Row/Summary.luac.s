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
       20 DUPTABLE                         R4 K8 [{["LayoutOrder"], ["orientation"], ["tag"] = "auto-y"}]
       21 MOVE                             R5 R1
       22 CALL                             R5 0 1
       23 SETTABLEKS                       R5 R4 K4 ["LayoutOrder"]
       25 GETUPVAL                         R5 5
       26 GETTABLEKS                       R5 R5 K9 ["Vertical"]
       28 SETTABLEKS                       R5 R4 K5 ["orientation"]
       30 CALL                             R2 2 1
       31 SETTABLEKS                       R2 R0 K10 ["Divider"]
       33 GETUPVAL                         R2 6
       34 CALL                             R2 0 3
       35 FORGPREP                         R2
       36 GETUPVAL                         R8 7
       37 GETTABLEKS                       R8 R8 K11 ["schemas"]
       39 GETTABLE                         R7 R8 R6
       40 JUMPIFEQKB                       R7 FALSE ; [+114]
       42 GETUPVAL                         R7 3
       43 GETTABLEKS                       R7 R7 K12 ["previousBindings"]
       45 JUMPIFNOT                        R7 ; [+17]
       46 GETUPVAL                         R8 3
       47 GETTABLEKS                       R8 R8 K12 ["previousBindings"]
       49 GETTABLE                         R7 R8 R6
       50 JUMPIF                           R7 ; [+12]
       51 GETUPVAL                         R7 1
       52 GETTABLEKS                       R7 R7 K1 ["createElement"]
       54 GETUPVAL                         R8 8
       55 DUPTABLE                         R9 K13 [{"LayoutOrder"}]
       56 MOVE                             R10 R1
       57 CALL                             R10 0 1
       58 SETTABLEKS                       R10 R9 K4 ["LayoutOrder"]
       60 CALL                             R7 2 1
       61 SETTABLE                         R7 R0 R6
       62 JUMP                             ; [+92]
       63 NEWTABLE                         R7 0 0
       65 GETUPVAL                         R9 3
       66 GETTABLEKS                       R9 R9 K14 ["bindings"]
       68 GETTABLE                         R8 R9 R6
       69 JUMPIFNOT                        R8 ; [+85]
       70 GETUPVAL                         R11 3
       71 GETTABLEKS                       R11 R11 K14 ["bindings"]
       73 GETTABLE                         R8 R11 R6
       74 LOADNIL                          R9
       75 LOADNIL                          R10
       76 FORGPREP                         R8
       77 GETUPVAL                         R13 9
       78 MOVE                             R14 R12
       79 GETUPVAL                         R15 3
       80 GETTABLEKS                       R15 R15 K2 ["nodeProps"]
       82 GETTABLEKS                       R15 R15 K15 ["action"]
       84 GETTABLEKS                       R15 R15 K16 ["type"]
       86 CALL                             R13 2 1
       87 JUMPIFNOT                        R13 ; [+7]
       88 FASTCALL2                        TABLE_INSERT R7 R13 ; [+5]
       90 MOVE                             R15 R7
       91 MOVE                             R16 R13
       92 GETIMPORT                        R14 K19 [table.insert]
       94 CALL                             R14 2 0
       95 FORGLOOP                         R8 2 ; [-19]
       97 LENGTH                           R9 R7
       98 LOADN                            R10 0
       99 JUMPIFNOTLT                      R10 R9 ; [+7]
      101 GETIMPORT                        R8 K21 [table.concat]
      103 MOVE                             R9 R7
      104 LOADK                            R10 K22 [", "]
      105 CALL                             R8 2 1
      106 JUMP                             ; [+1]
      107 LOADK                            R8 K23 ["None"]
      108 GETUPVAL                         R9 1
      109 GETTABLEKS                       R9 R9 K1 ["createElement"]
      111 GETUPVAL                         R10 10
      112 DUPTABLE                         R11 K25 [{["LayoutOrder"], ["tag"] = "columns-input col align-y-center size-0-full"}]
      113 MOVE                             R12 R1
      114 CALL                             R12 0 1
      115 SETTABLEKS                       R12 R11 K4 ["LayoutOrder"]
      117 DUPTABLE                         R12 K27 [{"Label", "Divider"}]
      118 GETUPVAL                         R13 1
      119 GETTABLEKS                       R13 R13 K1 ["createElement"]
      121 GETUPVAL                         R14 11
      122 DUPTABLE                         R15 K31 [{["LayoutOrder"], ["tag"] = "size-full-full auto-x padding-medium text-body-medium text-align-x-left", ["Text"], ["TextTruncate"]}]
      123 MOVE                             R16 R1
      124 CALL                             R16 0 1
      125 SETTABLEKS                       R16 R15 K4 ["LayoutOrder"]
      127 SETTABLEKS                       R8 R15 K29 ["Text"]
      129 GETIMPORT                        R16 K34 [Enum.TextTruncate.AtEnd]
      131 SETTABLEKS                       R16 R15 K30 ["TextTruncate"]
      133 CALL                             R13 2 1
      134 SETTABLEKS                       R13 R12 K26 ["Label"]
      136 GETUPVAL                         R13 1
      137 GETTABLEKS                       R13 R13 K1 ["createElement"]
      139 GETUPVAL                         R14 4
      140 DUPTABLE                         R15 K36 [{["LayoutOrder"], ["orientation"], ["tag"] = "auto-x"}]
      141 MOVE                             R16 R1
      142 CALL                             R16 0 1
      143 SETTABLEKS                       R16 R15 K4 ["LayoutOrder"]
      145 GETUPVAL                         R16 5
      146 GETTABLEKS                       R16 R16 K37 ["Horizontal"]
      148 SETTABLEKS                       R16 R15 K5 ["orientation"]
      150 CALL                             R13 2 1
      151 SETTABLEKS                       R13 R12 K10 ["Divider"]
      153 CALL                             R9 3 1
      154 SETTABLE                         R9 R0 R6
      155 FORGLOOP                         R2 2 ; [-120]
      157 RETURN                           R0 1

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
       58 DUPTABLE                         R5 K15 [{["tag"] = "tree-row row align-y-center auto-x", ["LayoutOrder"]}]
       59 GETTABLEKS                       R6 R0 K14 ["LayoutOrder"]
       61 SETTABLEKS                       R6 R5 K14 ["LayoutOrder"]
       63 MOVE                             R6 R2
       64 CALL                             R3 3 -1
       65 RETURN                           R3 -1

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
