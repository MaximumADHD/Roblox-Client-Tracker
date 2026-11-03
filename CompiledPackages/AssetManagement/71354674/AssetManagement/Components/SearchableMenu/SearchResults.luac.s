PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 1
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["createElement"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K2 ["View"]
       11 DUPTABLE                         R5 K6 [{["LayoutOrder"], ["tag"] = "col flex-y-between align-x-center size-full-0 auto-y radius-small"}]
       12 GETTABLEKS                       R6 R0 K3 ["LayoutOrder"]
       14 SETTABLEKS                       R6 R5 K3 ["LayoutOrder"]
       16 DUPTABLE                         R6 K9 [{"Header", "Content"}]
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R7 R7 K1 ["createElement"]
       20 GETUPVAL                         R8 1
       21 GETTABLEKS                       R8 R8 K2 ["View"]
       23 DUPTABLE                         R9 K13 [{["LayoutOrder"] = 1, ["tag"] = "row flex-x-between align-y-center gap-small size-full-600 padding-x-medium padding-top-small", ["onActivated"]}]
       24 NEWCLOSURE                       R10 P0
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R1
       27 SETTABLEKS                       R10 R9 K12 ["onActivated"]
       29 DUPTABLE                         R10 K16 [{"Text", "Chevron"}]
       30 GETUPVAL                         R11 0
       31 GETTABLEKS                       R11 R11 K1 ["createElement"]
       33 GETUPVAL                         R12 1
       34 GETTABLEKS                       R12 R12 K14 ["Text"]
       36 DUPTABLE                         R13 K18 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "grow auto-y text-align-x-left text-truncate-end content-emphasis text-body-small"}]
       37 GETTABLEKS                       R14 R0 K19 ["title"]
       39 SETTABLEKS                       R14 R13 K14 ["Text"]
       41 CALL                             R11 2 1
       42 SETTABLEKS                       R11 R10 K14 ["Text"]
       44 GETUPVAL                         R11 0
       45 GETTABLEKS                       R11 R11 K1 ["createElement"]
       47 GETUPVAL                         R12 1
       48 GETTABLEKS                       R12 R12 K20 ["Icon"]
       50 DUPTABLE                         R13 K25 [{["LayoutOrder"] = 2, ["name"], ["Rotation"], ["size"]}]
       51 GETUPVAL                         R14 1
       52 GETTABLEKS                       R14 R14 K26 ["Enums"]
       54 GETTABLEKS                       R14 R14 K27 ["IconName"]
       56 GETTABLEKS                       R14 R14 K28 ["ChevronLargeDown"]
       58 SETTABLEKS                       R14 R13 K22 ["name"]
       60 JUMPIFNOT                        R1 ; [+2]
       61 LOADN                            R14 -180
       62 JUMP                             ; [+1]
       63 LOADN                            R14 0
       64 SETTABLEKS                       R14 R13 K23 ["Rotation"]
       66 GETUPVAL                         R14 1
       67 GETTABLEKS                       R14 R14 K26 ["Enums"]
       69 GETTABLEKS                       R14 R14 K29 ["IconSize"]
       71 GETTABLEKS                       R14 R14 K30 ["XSmall"]
       73 SETTABLEKS                       R14 R13 K24 ["size"]
       75 CALL                             R11 2 1
       76 SETTABLEKS                       R11 R10 K15 ["Chevron"]
       78 CALL                             R7 3 1
       79 SETTABLEKS                       R7 R6 K7 ["Header"]
       81 JUMPIFNOT                        R1 ; [+11]
       82 GETUPVAL                         R7 0
       83 GETTABLEKS                       R7 R7 K1 ["createElement"]
       85 GETUPVAL                         R8 1
       86 GETTABLEKS                       R8 R8 K2 ["View"]
       88 DUPTABLE                         R9 K32 [{["LayoutOrder"] = 2, ["tag"] = "col size-full-0 auto-y"}]
       89 GETTABLEKS                       R10 R0 K33 ["children"]
       91 CALL                             R7 3 1
       92 JUMP                             ; [+1]
       93 LOADNIL                          R7
       94 SETTABLEKS                       R7 R6 K8 ["Content"]
       96 CALL                             R3 3 -1
       97 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["items"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["searchText"]
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 NEWTABLE                         R3 0 2
        8 GETTABLEKS                       R4 R0 K1 ["items"]
       10 GETTABLEKS                       R5 R0 K2 ["searchText"]
       12 SETLIST                          R3 R4 2 [1]
       14 CALL                             R1 2 1
       15 LENGTH                           R2 R1
       16 JUMPIFNOTEQKN                    R2 K3 [0] ; [+47]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K4 ["createElement"]
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R3 R3 K5 ["View"]
       24 DUPTABLE                         R4 K8 [{"Size", "layout"}]
       25 GETIMPORT                        R5 K11 [UDim2.fromScale]
       27 LOADN                            R6 1
       28 LOADN                            R7 1
       29 CALL                             R5 2 1
       30 SETTABLEKS                       R5 R4 K6 ["Size"]
       32 DUPTABLE                         R5 K15 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment"}]
       33 GETIMPORT                        R6 K18 [Enum.FillDirection.Vertical]
       35 SETTABLEKS                       R6 R5 K12 ["FillDirection"]
       37 GETIMPORT                        R6 K20 [Enum.HorizontalAlignment.Center]
       39 SETTABLEKS                       R6 R5 K13 ["HorizontalAlignment"]
       41 GETIMPORT                        R6 K21 [Enum.VerticalAlignment.Center]
       43 SETTABLEKS                       R6 R5 K14 ["VerticalAlignment"]
       45 SETTABLEKS                       R5 R4 K7 ["layout"]
       47 DUPTABLE                         R5 K23 [{"Text"}]
       48 GETUPVAL                         R6 0
       49 GETTABLEKS                       R6 R6 K4 ["createElement"]
       51 GETUPVAL                         R7 2
       52 GETTABLEKS                       R7 R7 K22 ["Text"]
       54 DUPTABLE                         R8 K26 [{["Text"], ["tag"] = "auto-xy text-label-small text-align-x-center"}]
       55 GETTABLEKS                       R9 R0 K27 ["noResultsText"]
       57 SETTABLEKS                       R9 R8 K22 ["Text"]
       59 CALL                             R6 2 1
       60 SETTABLEKS                       R6 R5 K22 ["Text"]
       62 CALL                             R2 3 -1
       63 RETURN                           R2 -1
       64 LOADB                            R2 0
       65 MOVE                             R3 R1
       66 LOADNIL                          R4
       67 LOADNIL                          R5
       68 FORGPREP                         R3
       69 GETTABLEKS                       R8 R7 K1 ["items"]
       71 LOADNIL                          R9
       72 LOADNIL                          R10
       73 FORGPREP                         R8
       74 GETTABLEKS                       R13 R12 K28 ["isChecked"]
       76 JUMPIFEQKNIL                     R13 ; [+2]
       78 LOADB                            R2 1
       79 FORGLOOP                         R8 2 ; [-6]
       81 FORGLOOP                         R3 2 ; [-13]
       83 NEWTABLE                         R3 0 0
       85 MOVE                             R4 R1
       86 LOADNIL                          R5
       87 LOADNIL                          R6
       88 FORGPREP                         R4
       89 LOADB                            R9 0
       90 GETTABLEKS                       R10 R8 K1 ["items"]
       92 LOADNIL                          R11
       93 LOADNIL                          R12
       94 FORGPREP                         R10
       95 MOVE                             R15 R9
       96 JUMPIF                           R15 ; [+6]
       97 GETTABLEKS                       R16 R14 K29 ["icon"]
       99 JUMPIFNOTEQKNIL                  R16 ; [+2]
      101 LOADB                            R15 0 +1
      102 LOADB                            R15 1
      103 MOVE                             R9 R15
      104 FORGLOOP                         R10 2 ; [-10]
      106 NEWTABLE                         R10 0 0
      108 GETTABLEKS                       R11 R8 K1 ["items"]
      110 LOADNIL                          R12
      111 LOADNIL                          R13
      112 FORGPREP                         R11
      113 MOVE                             R17 R10
      114 GETUPVAL                         R18 0
      115 GETTABLEKS                       R18 R18 K4 ["createElement"]
      117 GETUPVAL                         R19 3
      118 DUPTABLE                         R20 K37 [{["key"], ["item"], ["depth"] = 1, ["menuHasIcon"], ["menuHasCheckableItems"], ["LayoutOrder"]}]
      119 GETTABLEKS                       R21 R15 K38 ["id"]
      121 SETTABLEKS                       R21 R20 K30 ["key"]
      123 SETTABLEKS                       R15 R20 K31 ["item"]
      125 SETTABLEKS                       R9 R20 K34 ["menuHasIcon"]
      127 SETTABLEKS                       R2 R20 K35 ["menuHasCheckableItems"]
      129 SETTABLEKS                       R14 R20 K36 ["LayoutOrder"]
      131 CALL                             R18 2 -1
      132 FASTCALL                         TABLE_INSERT ; [+2]
      133 GETIMPORT                        R16 K41 [table.insert]
      135 CALL                             R16 -1 0
      136 FORGLOOP                         R11 2 ; [-24]
      138 GETUPVAL                         R11 0
      139 GETTABLEKS                       R11 R11 K4 ["createElement"]
      141 GETUPVAL                         R12 2
      142 GETTABLEKS                       R12 R12 K5 ["View"]
      144 DUPTABLE                         R13 K43 [{["tag"] = "col size-full-0 auto-y padding-x-small"}]
      145 MOVE                             R14 R10
      146 CALL                             R11 3 1
      147 GETTABLEKS                       R12 R8 K44 ["title"]
      149 JUMPIFNOTEQKNIL                  R12 ; [+22]
      151 MOVE                             R13 R3
      152 GETUPVAL                         R14 0
      153 GETTABLEKS                       R14 R14 K4 ["createElement"]
      155 GETUPVAL                         R15 2
      156 GETTABLEKS                       R15 R15 K5 ["View"]
      158 DUPTABLE                         R16 K46 [{["key"], ["LayoutOrder"], ["tag"] = "col size-full-0 auto-y"}]
      159 GETTABLEKS                       R17 R8 K38 ["id"]
      161 SETTABLEKS                       R17 R16 K30 ["key"]
      163 SETTABLEKS                       R7 R16 K36 ["LayoutOrder"]
      165 MOVE                             R17 R11
      166 CALL                             R14 3 -1
      167 FASTCALL                         TABLE_INSERT ; [+2]
      168 GETIMPORT                        R12 K41 [table.insert]
      170 CALL                             R12 -1 0
      171 JUMP                             ; [+22]
      172 MOVE                             R13 R3
      173 GETUPVAL                         R14 0
      174 GETTABLEKS                       R14 R14 K4 ["createElement"]
      176 GETUPVAL                         R15 4
      177 DUPTABLE                         R16 K47 [{"key", "LayoutOrder", "title"}]
      178 GETTABLEKS                       R17 R8 K38 ["id"]
      180 SETTABLEKS                       R17 R16 K30 ["key"]
      182 SETTABLEKS                       R7 R16 K36 ["LayoutOrder"]
      184 GETTABLEKS                       R17 R8 K44 ["title"]
      186 SETTABLEKS                       R17 R16 K44 ["title"]
      188 MOVE                             R17 R11
      189 CALL                             R14 3 -1
      190 FASTCALL                         TABLE_INSERT ; [+2]
      191 GETIMPORT                        R12 K41 [table.insert]
      193 CALL                             R12 -1 0
      194 FORGLOOP                         R4 2 ; [-106]
      196 GETUPVAL                         R4 0
      197 GETTABLEKS                       R4 R4 K4 ["createElement"]
      199 GETUPVAL                         R5 2
      200 GETTABLEKS                       R5 R5 K5 ["View"]
      202 DUPTABLE                         R6 K48 [{["tag"] = "col size-full-0 auto-y"}]
      203 MOVE                             R7 R3
      204 CALL                             R4 3 -1
      205 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManagement"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 LOADK                            R3 K4 ["Packages"]
        8 NAMECALL                         R1 R0 K3 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K6 [require]
       13 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K8 ["React"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Types"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETIMPORT                        R6 K1 [script]
       30 GETTABLEKS                       R6 R6 K10 ["Parent"]
       32 GETTABLEKS                       R6 R6 K11 ["MenuItem"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETIMPORT                        R7 K1 [script]
       39 GETTABLEKS                       R7 R7 K10 ["Parent"]
       41 GETTABLEKS                       R7 R7 K12 ["getSearchResults"]
       43 CALL                             R6 1 1
       44 DUPCLOSURE                       R7 K13 [PROTO_1]
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R2
       47 DUPCLOSURE                       R8 K14 [PROTO_3]
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R7
       53 GETTABLEKS                       R9 R3 K15 ["memo"]
       55 MOVE                             R10 R8
       56 CALL                             R9 1 -1
       57 RETURN                           R9 -1
