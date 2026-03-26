PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Sessions"]
        2 GETTABLEKS                       R1 R2 K1 ["sessionQueue"]
        4 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["Sessions"]
        2 GETTABLEKS                       R1 R2 K1 ["searchTerm"]
        4 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPCLOSURE                       R2 K0 [PROTO_0]
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 0
        4 DUPCLOSURE                       R3 K1 [PROTO_1]
        5 CALL                             R2 1 1
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K2 ["use"]
        9 CALL                             R3 0 1
       10 MOVE                             R6 R2
       11 MOVE                             R7 R1
       12 NAMECALL                         R4 R3 K3 ["getFilteredRows"]
       14 CALL                             R4 3 1
       15 GETUPVAL                         R6 2
       16 GETTABLEKS                       R5 R6 K4 ["new"]
       18 CALL                             R5 0 1
       19 GETUPVAL                         R7 3
       20 GETTABLEKS                       R6 R7 K5 ["useState"]
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
       51 GETUPVAL                         R17 7
       52 GETTABLEKS                       R16 R17 K14 ["Divider"]
       54 DUPTABLE                         R17 K17 [{"variant", "orientation", "LayoutOrder"}]
       55 GETUPVAL                         R20 8
       56 GETTABLEKS                       R19 R20 K18 ["DividerVariant"]
       58 GETTABLEKS                       R18 R19 K19 ["Default"]
       60 SETTABLEKS                       R18 R17 K15 ["variant"]
       62 GETUPVAL                         R20 8
       63 GETTABLEKS                       R19 R20 K20 ["Orientation"]
       65 GETTABLEKS                       R18 R19 K21 ["Horizontal"]
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
       85 GETUPVAL                         R11 7
       86 GETTABLEKS                       R10 R11 K22 ["View"]
       88 DUPTABLE                         R11 K24 [{"tag"}]
       89 LOADK                            R12 K25 ["col size-full-full align-y-top"]
       90 SETTABLEKS                       R12 R11 K23 ["tag"]
       92 DUPTABLE                         R12 K28 [{"HeaderRow", "Divider", "ScrollView"}]
       93 GETUPVAL                         R13 5
       94 GETUPVAL                         R14 9
       95 DUPTABLE                         R15 K30 [{"ColumnWidths", "SetColumnWidths", "LayoutOrder"}]
       96 SETTABLEKS                       R6 R15 K6 ["ColumnWidths"]
       98 SETTABLEKS                       R7 R15 K29 ["SetColumnWidths"]
      100 LOADN                            R16 1
      101 SETTABLEKS                       R16 R15 K7 ["LayoutOrder"]
      103 CALL                             R13 2 1
      104 SETTABLEKS                       R13 R12 K26 ["HeaderRow"]
      106 GETUPVAL                         R13 5
      107 GETUPVAL                         R15 7
      108 GETTABLEKS                       R14 R15 K14 ["Divider"]
      110 DUPTABLE                         R15 K17 [{"variant", "orientation", "LayoutOrder"}]
      111 GETUPVAL                         R18 8
      112 GETTABLEKS                       R17 R18 K18 ["DividerVariant"]
      114 GETTABLEKS                       R16 R17 K19 ["Default"]
      116 SETTABLEKS                       R16 R15 K15 ["variant"]
      118 GETUPVAL                         R18 8
      119 GETTABLEKS                       R17 R18 K20 ["Orientation"]
      121 GETTABLEKS                       R16 R17 K21 ["Horizontal"]
      123 SETTABLEKS                       R16 R15 K16 ["orientation"]
      125 LOADN                            R16 2
      126 SETTABLEKS                       R16 R15 K7 ["LayoutOrder"]
      128 CALL                             R13 2 1
      129 SETTABLEKS                       R13 R12 K14 ["Divider"]
      131 GETUPVAL                         R13 5
      132 GETUPVAL                         R15 7
      133 GETTABLEKS                       R14 R15 K27 ["ScrollView"]
      135 DUPTABLE                         R15 K32 [{"tag", "scroll", "LayoutOrder"}]
      136 LOADK                            R16 K33 ["size-full-0 fill"]
      137 SETTABLEKS                       R16 R15 K23 ["tag"]
      139 DUPTABLE                         R16 K37 [{"AutomaticCanvasSize", "CanvasSize", "VerticalScrollBarInset"}]
      140 GETIMPORT                        R17 K41 [Enum.AutomaticSize.Y]
      142 SETTABLEKS                       R17 R16 K34 ["AutomaticCanvasSize"]
      144 GETIMPORT                        R17 K44 [UDim2.fromScale]
      146 LOADN                            R18 0
      147 LOADN                            R19 1
      148 CALL                             R17 2 1
      149 SETTABLEKS                       R17 R16 K35 ["CanvasSize"]
      151 GETIMPORT                        R17 K47 [Enum.ScrollBarInset.ScrollBar]
      153 SETTABLEKS                       R17 R16 K36 ["VerticalScrollBarInset"]
      155 SETTABLEKS                       R16 R15 K31 ["scroll"]
      157 LOADN                            R16 3
      158 SETTABLEKS                       R16 R15 K7 ["LayoutOrder"]
      160 GETUPVAL                         R16 5
      161 GETUPVAL                         R18 7
      162 GETTABLEKS                       R17 R18 K22 ["View"]
      164 DUPTABLE                         R18 K24 [{"tag"}]
      165 LOADK                            R19 K48 ["col size-full-0 auto-y"]
      166 SETTABLEKS                       R19 R18 K23 ["tag"]
      168 MOVE                             R19 R8
      169 CALL                             R16 3 -1
      170 CALL                             R13 -1 1
      171 SETTABLEKS                       R13 R12 K27 ["ScrollView"]
      173 CALL                             R9 3 -1
      174 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R5 K9 ["Foundation"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K10 ["Enums"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R7 R0 K6 ["Packages"]
       29 GETTABLEKS                       R6 R7 K11 ["Framework"]
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R7 R5 K12 ["Util"]
       34 GETTABLEKS                       R6 R7 K13 ["LayoutOrderIterator"]
       36 GETIMPORT                        R7 K5 [require]
       38 GETTABLEKS                       R10 R0 K14 ["Src"]
       40 GETTABLEKS                       R9 R10 K15 ["Hooks"]
       42 GETTABLEKS                       R8 R9 K16 ["useSelector"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K5 [require]
       47 GETTABLEKS                       R11 R0 K14 ["Src"]
       49 GETTABLEKS                       R10 R11 K17 ["Controllers"]
       51 GETTABLEKS                       R9 R10 K18 ["QueueController"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K5 [require]
       56 GETIMPORT                        R11 K1 [script]
       58 GETTABLEKS                       R10 R11 K19 ["AssetTableHeader"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K5 [require]
       63 GETIMPORT                        R12 K1 [script]
       65 GETTABLEKS                       R11 R12 K20 ["AssetTableRow"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K5 [require]
       70 GETTABLEKS                       R14 R0 K14 ["Src"]
       72 GETTABLEKS                       R13 R14 K21 ["Types"]
       74 GETTABLEKS                       R12 R13 K22 ["QueuedSession"]
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
