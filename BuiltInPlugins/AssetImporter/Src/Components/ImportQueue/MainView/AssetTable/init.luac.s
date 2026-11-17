PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Sessions"]
        2 GETTABLEKS                       R1 R1 K1 ["sessionQueue"]
        4 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Sessions"]
        2 GETTABLEKS                       R1 R1 K1 ["searchTerm"]
        4 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPCLOSURE                       R2 K0 [PROTO_0]
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 0
        4 DUPCLOSURE                       R3 K1 [PROTO_1]
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["use"]
        9 CALL                             R3 0 1
       10 MOVE                             R6 R2
       11 MOVE                             R7 R1
       12 NAMECALL                         R4 R3 K3 ["getFilteredRows"]
       14 CALL                             R4 3 1
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R5 R5 K4 ["new"]
       18 CALL                             R5 0 1
       19 GETUPVAL                         R6 3
       20 GETTABLEKS                       R6 R6 K5 ["useState"]
       22 GETUPVAL                         R7 4
       23 CALL                             R6 1 2
       24 NEWTABLE                         R8 0 0
       26 MOVE                             R9 R4
       27 LOADNIL                          R10
       28 LOADNIL                          R11
       29 FORGPREP                         R9
       30 GETUPVAL                         R14 5
       31 GETUPVAL                         R15 6
       32 DUPTABLE                         R16 K9 [{"ColumnWidths", "LayoutOrder", "TableEntry"}]
       33 SETTABLEKS                       R6 R16 K6 ["ColumnWidths"]
       35 NAMECALL                         R17 R5 K10 ["getNextOrder"]
       37 CALL                             R17 1 1
       38 SETTABLEKS                       R17 R16 K7 ["LayoutOrder"]
       40 SETTABLEKS                       R13 R16 K8 ["TableEntry"]
       42 CALL                             R14 2 1
       43 FASTCALL2                        TABLE_INSERT R8 R14 ; [+5]
       45 MOVE                             R16 R8
       46 MOVE                             R17 R14
       47 GETIMPORT                        R15 K13 [table.insert]
       49 CALL                             R15 2 0
       50 GETUPVAL                         R15 5
       51 GETUPVAL                         R16 7
       52 GETTABLEKS                       R16 R16 K14 ["Divider"]
       54 DUPTABLE                         R17 K17 [{"variant", "orientation", "LayoutOrder"}]
       55 GETUPVAL                         R18 8
       56 GETTABLEKS                       R18 R18 K18 ["DividerVariant"]
       58 GETTABLEKS                       R18 R18 K19 ["Default"]
       60 SETTABLEKS                       R18 R17 K15 ["variant"]
       62 GETUPVAL                         R18 8
       63 GETTABLEKS                       R18 R18 K20 ["Orientation"]
       65 GETTABLEKS                       R18 R18 K21 ["Horizontal"]
       67 SETTABLEKS                       R18 R17 K16 ["orientation"]
       69 NAMECALL                         R18 R5 K10 ["getNextOrder"]
       71 CALL                             R18 1 1
       72 SETTABLEKS                       R18 R17 K7 ["LayoutOrder"]
       74 CALL                             R15 2 1
       75 FASTCALL2                        TABLE_INSERT R8 R15 ; [+5]
       77 MOVE                             R17 R8
       78 MOVE                             R18 R15
       79 GETIMPORT                        R16 K13 [table.insert]
       81 CALL                             R16 2 0
       82 FORGLOOP                         R9 2 ; [-53]
       84 GETUPVAL                         R9 5
       85 GETUPVAL                         R10 7
       86 GETTABLEKS                       R10 R10 K22 ["View"]
       88 DUPTABLE                         R11 K25 [{["tag"] = "col align-y-top size-full-full"}]
       89 DUPTABLE                         R12 K28 [{"HeaderRow", "Divider", "ScrollView"}]
       90 GETUPVAL                         R13 5
       91 GETUPVAL                         R14 9
       92 DUPTABLE                         R15 K31 [{["ColumnWidths"], ["SetColumnWidths"], ["LayoutOrder"] = 1}]
       93 SETTABLEKS                       R6 R15 K6 ["ColumnWidths"]
       95 SETTABLEKS                       R7 R15 K29 ["SetColumnWidths"]
       97 CALL                             R13 2 1
       98 SETTABLEKS                       R13 R12 K26 ["HeaderRow"]
      100 GETUPVAL                         R13 5
      101 GETUPVAL                         R14 7
      102 GETTABLEKS                       R14 R14 K14 ["Divider"]
      104 DUPTABLE                         R15 K33 [{["variant"], ["orientation"], ["LayoutOrder"] = 2}]
      105 GETUPVAL                         R16 8
      106 GETTABLEKS                       R16 R16 K18 ["DividerVariant"]
      108 GETTABLEKS                       R16 R16 K19 ["Default"]
      110 SETTABLEKS                       R16 R15 K15 ["variant"]
      112 GETUPVAL                         R16 8
      113 GETTABLEKS                       R16 R16 K20 ["Orientation"]
      115 GETTABLEKS                       R16 R16 K21 ["Horizontal"]
      117 SETTABLEKS                       R16 R15 K16 ["orientation"]
      119 CALL                             R13 2 1
      120 SETTABLEKS                       R13 R12 K14 ["Divider"]
      122 GETUPVAL                         R13 5
      123 GETUPVAL                         R14 7
      124 GETTABLEKS                       R14 R14 K27 ["ScrollView"]
      126 DUPTABLE                         R15 K37 [{["tag"] = "fill size-full-0", ["scroll"], ["LayoutOrder"] = 3}]
      127 DUPTABLE                         R16 K41 [{"AutomaticCanvasSize", "CanvasSize", "VerticalScrollBarInset"}]
      128 GETIMPORT                        R17 K45 [Enum.AutomaticSize.Y]
      130 SETTABLEKS                       R17 R16 K38 ["AutomaticCanvasSize"]
      132 GETIMPORT                        R17 K48 [UDim2.fromScale]
      134 LOADN                            R18 0
      135 LOADN                            R19 1
      136 CALL                             R17 2 1
      137 SETTABLEKS                       R17 R16 K39 ["CanvasSize"]
      139 GETIMPORT                        R17 K51 [Enum.ScrollBarInset.ScrollBar]
      141 SETTABLEKS                       R17 R16 K40 ["VerticalScrollBarInset"]
      143 SETTABLEKS                       R16 R15 K35 ["scroll"]
      145 GETUPVAL                         R16 5
      146 GETUPVAL                         R17 7
      147 GETTABLEKS                       R17 R17 K22 ["View"]
      149 DUPTABLE                         R18 K53 [{["tag"] = "col size-full-0 auto-y"}]
      150 MOVE                             R19 R8
      151 CALL                             R16 3 -1
      152 CALL                             R13 -1 1
      153 SETTABLEKS                       R13 R12 K27 ["ScrollView"]
      155 CALL                             R9 3 -1
      156 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K10 ["Enums"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Packages"]
       29 GETTABLEKS                       R6 R6 K11 ["Framework"]
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R6 R5 K12 ["Util"]
       34 GETTABLEKS                       R6 R6 K13 ["LayoutOrderIterator"]
       36 GETIMPORT                        R7 K5 [require]
       38 GETTABLEKS                       R8 R0 K14 ["Src"]
       40 GETTABLEKS                       R8 R8 K15 ["Hooks"]
       42 GETTABLEKS                       R8 R8 K16 ["useSelector"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K5 [require]
       47 GETTABLEKS                       R9 R0 K14 ["Src"]
       49 GETTABLEKS                       R9 R9 K17 ["Controllers"]
       51 GETTABLEKS                       R9 R9 K18 ["QueueController"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K5 [require]
       56 GETIMPORT                        R10 K1 [script]
       58 GETTABLEKS                       R10 R10 K19 ["AssetTableHeader"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K5 [require]
       63 GETIMPORT                        R11 K1 [script]
       65 GETTABLEKS                       R11 R11 K20 ["AssetTableRow"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K5 [require]
       70 GETTABLEKS                       R12 R0 K14 ["Src"]
       72 GETTABLEKS                       R12 R12 K21 ["Types"]
       74 GETTABLEKS                       R12 R12 K22 ["QueuedSession"]
       76 CALL                             R11 1 1
       77 NEWTABLE                         R12 0 6
       79 GETIMPORT                        R13 K25 [UDim.new]
       81 LOADK                            R14 K26 [0.05]
       82 LOADN                            R15 0
       83 CALL                             R13 2 1
       84 GETIMPORT                        R14 K25 [UDim.new]
       86 LOADK                            R15 K27 [0.2]
       87 LOADN                            R16 0
       88 CALL                             R14 2 1
       89 GETIMPORT                        R15 K25 [UDim.new]
       91 LOADK                            R16 K28 [0.15]
       92 LOADN                            R17 0
       93 CALL                             R15 2 1
       94 GETIMPORT                        R16 K25 [UDim.new]
       96 LOADK                            R17 K28 [0.15]
       97 LOADN                            R18 0
       98 CALL                             R16 2 1
       99 GETIMPORT                        R17 K25 [UDim.new]
      101 LOADK                            R18 K29 [0.4]
      102 LOADN                            R19 0
      103 CALL                             R17 2 1
      104 GETIMPORT                        R18 K25 [UDim.new]
      106 LOADK                            R19 K26 [0.05]
      107 LOADN                            R20 0
      108 CALL                             R18 2 -1
      109 SETLIST                          R12 R13 -1 [1]
      111 DUPCLOSURE                       R13 K30 [PROTO_2]
      112 CAPTURE                          VAL R7
      113 CAPTURE                          VAL R8
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R1
      116 CAPTURE                          VAL R12
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R10
      119 CAPTURE                          VAL R3
      120 CAPTURE                          VAL R4
      121 CAPTURE                          VAL R9
      122 RETURN                           R13 1
