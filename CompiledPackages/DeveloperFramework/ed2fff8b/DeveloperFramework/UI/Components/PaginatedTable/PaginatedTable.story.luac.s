PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Value"]
        2 GETTABLEKS                       R2 R0 K1 ["Style"]
        4 GETTABLEKS                       R3 R0 K2 ["Width"]
        6 JUMPIF                           R3 ; [+8]
        7 GETIMPORT                        R3 K5 [UDim.new]
        9 GETTABLEKS                       R6 R0 K7 ["Columns"]
       11 LENGTH                           R5 R6
       12 DIVRK                            R4 R6 K5 [UDim.new]
       13 LOADN                            R5 0
       14 CALL                             R3 2 1
       15 GETTABLEKS                       R5 R0 K8 ["Emphasis"]
       17 JUMPIFNOT                        R5 ; [+3]
       18 GETTABLEKS                       R4 R2 K9 ["BackgroundOdd"]
       20 JUMP                             ; [+2]
       21 GETTABLEKS                       R4 R2 K10 ["BackgroundEven"]
       23 LOADNIL                          R5
       24 FASTCALL1                        TYPEOF R1 ; [+3]
       25 MOVE                             R7 R1
       26 GETIMPORT                        R6 K12 [typeof]
       28 CALL                             R6 1 1
       29 JUMPIFNOTEQKS                    R6 K13 ["number"] ; [+15]
       31 FASTCALL1                        MATH_FLOOR R1 ; [+3]
       32 MOVE                             R7 R1
       33 GETIMPORT                        R6 K16 [math.floor]
       35 CALL                             R6 1 1
       36 JUMPIFEQ                         R6 R1 ; [+8]
       38 LOADK                            R6 K17 ["%.3f"]
       39 MOVE                             R8 R1
       40 NAMECALL                         R6 R6 K18 ["format"]
       42 CALL                             R6 2 1
       43 MOVE                             R5 R6
       44 JUMP                             ; [+6]
       45 FASTCALL1                        TOSTRING R1 ; [+3]
       46 MOVE                             R7 R1
       47 GETIMPORT                        R6 K20 [tostring]
       49 CALL                             R6 1 1
       50 MOVE                             R5 R6
       51 GETTABLEKS                       R7 R0 K21 ["Tooltip"]
       53 OR                               R6 R7 R5
       54 LOADB                            R7 0
       55 JUMPIFEQKNIL                     R6 ; [+5]
       57 JUMPIFNOTEQKS                    R6 K22 [""] ; [+2]
       59 LOADB                            R7 0 +1
       60 LOADB                            R7 1
       61 GETUPVAL                         R9 0
       62 GETTABLEKS                       R8 R9 K23 ["createElement"]
       64 GETUPVAL                         R9 1
       65 DUPTABLE                         R10 K31 [{"LayoutOrder", "Padding", "Style", "BackgroundColor3", "BorderSizePixel", "BorderColor3", "Size", "ClipsDescendants"}]
       66 GETTABLEKS                       R11 R0 K32 ["ColumnIndex"]
       68 SETTABLEKS                       R11 R10 K24 ["LayoutOrder"]
       70 DUPTABLE                         R11 K37 [{"Top", "Bottom", "Left", "Right"}]
       71 LOADN                            R12 1
       72 SETTABLEKS                       R12 R11 K33 ["Top"]
       74 LOADN                            R12 1
       75 SETTABLEKS                       R12 R11 K34 ["Bottom"]
       77 LOADN                            R12 5
       78 SETTABLEKS                       R12 R11 K35 ["Left"]
       80 LOADN                            R12 5
       81 SETTABLEKS                       R12 R11 K36 ["Right"]
       83 SETTABLEKS                       R11 R10 K25 ["Padding"]
       85 LOADK                            R11 K38 ["Box"]
       86 SETTABLEKS                       R11 R10 K1 ["Style"]
       88 SETTABLEKS                       R4 R10 K26 ["BackgroundColor3"]
       90 LOADN                            R11 1
       91 SETTABLEKS                       R11 R10 K27 ["BorderSizePixel"]
       93 GETTABLEKS                       R11 R2 K39 ["Border"]
       95 SETTABLEKS                       R11 R10 K28 ["BorderColor3"]
       97 GETIMPORT                        R11 K41 [UDim2.new]
       99 GETTABLEKS                       R12 R3 K42 ["Scale"]
      101 GETTABLEKS                       R13 R3 K43 ["Offset"]
      103 LOADN                            R14 1
      104 LOADN                            R15 0
      105 CALL                             R11 4 1
      106 SETTABLEKS                       R11 R10 K29 ["Size"]
      108 LOADB                            R11 1
      109 SETTABLEKS                       R11 R10 K30 ["ClipsDescendants"]
      111 DUPTABLE                         R11 K45 [{"Text", "Tooltip"}]
      112 GETUPVAL                         R13 0
      113 GETTABLEKS                       R12 R13 K23 ["createElement"]
      115 GETUPVAL                         R13 2
      116 DUPTABLE                         R14 K48 [{"Text", "TextWrapped", "Size", "TextXAlignment"}]
      117 SETTABLEKS                       R5 R14 K44 ["Text"]
      119 LOADB                            R15 1
      120 SETTABLEKS                       R15 R14 K46 ["TextWrapped"]
      122 GETIMPORT                        R15 K50 [UDim2.fromScale]
      124 LOADN                            R16 1
      125 LOADN                            R17 1
      126 CALL                             R15 2 1
      127 SETTABLEKS                       R15 R14 K29 ["Size"]
      129 GETIMPORT                        R15 K52 [Enum.TextXAlignment.Left]
      131 SETTABLEKS                       R15 R14 K47 ["TextXAlignment"]
      133 CALL                             R12 2 1
      134 SETTABLEKS                       R12 R11 K44 ["Text"]
      136 MOVE                             R12 R7
      137 JUMPIFNOT                        R12 ; [+18]
      138 GETUPVAL                         R13 0
      139 GETTABLEKS                       R12 R13 K23 ["createElement"]
      141 GETUPVAL                         R13 3
      142 DUPTABLE                         R14 K54 [{"MaxWidth", "Text", "TextXAlignment"}]
      143 GETTABLEKS                       R16 R2 K21 ["Tooltip"]
      145 GETTABLEKS                       R15 R16 K53 ["MaxWidth"]
      147 SETTABLEKS                       R15 R14 K53 ["MaxWidth"]
      149 SETTABLEKS                       R6 R14 K44 ["Text"]
      151 GETIMPORT                        R15 K52 [Enum.TextXAlignment.Left]
      153 SETTABLEKS                       R15 R14 K47 ["TextXAlignment"]
      155 CALL                             R12 2 1
      156 SETTABLEKS                       R12 R11 K21 ["Tooltip"]
      158 CALL                             R8 3 -1
      159 RETURN                           R8 -1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLE                         R2 R3 R4
        3 GETUPVAL                         R3 2
        4 GETIMPORT                        R4 K3 [Enum.SortDirection.Descending]
        6 JUMPIFNOTEQ                      R3 R4 ; [+8]
        8 GETTABLE                         R4 R0 R2
        9 GETTABLE                         R5 R1 R2
       10 JUMPIFLT                         R4 R5 ; [+2]
       12 LOADB                            R3 0 +1
       13 LOADB                            R3 1
       14 RETURN                           R3 1
       15 GETTABLE                         R4 R0 R2
       16 GETTABLE                         R5 R1 R2
       17 JUMPIFLT                         R5 R4 ; [+2]
       19 LOADB                            R3 0 +1
       20 LOADB                            R3 1
       21 RETURN                           R3 1

PROTO_2:
        0 NEWTABLE                         R2 0 3
        2 LOADK                            R3 K0 ["Name"]
        3 LOADK                            R4 K1 ["Count"]
        4 LOADK                            R5 K2 ["Size"]
        5 SETLIST                          R2 R3 3 [1]
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R4 1
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          VAL R2
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 CALL                             R3 2 0
       14 GETUPVAL                         R3 2
       15 DUPTABLE                         R5 K6 [{"sortIndex", "sortOrder", "rows"}]
       16 SETTABLEKS                       R0 R5 K3 ["sortIndex"]
       18 SETTABLEKS                       R1 R5 K4 ["sortOrder"]
       20 GETUPVAL                         R6 2
       21 GETUPVAL                         R10 2
       22 GETTABLEKS                       R9 R10 K7 ["state"]
       24 GETTABLEKS                       R8 R9 K8 ["pageIndex"]
       26 GETUPVAL                         R11 2
       27 GETTABLEKS                       R10 R11 K7 ["state"]
       29 GETTABLEKS                       R9 R10 K9 ["pageSize"]
       31 GETUPVAL                         R12 2
       32 GETTABLEKS                       R11 R12 K7 ["state"]
       34 GETTABLEKS                       R10 R11 K10 ["responsive"]
       36 NAMECALL                         R6 R6 K11 ["getPageRows"]
       38 CALL                             R6 4 1
       39 SETTABLEKS                       R6 R5 K5 ["rows"]
       41 NAMECALL                         R3 R3 K12 ["setState"]
       43 CALL                             R3 2 0
       44 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K2 [{"pageIndex", "rows"}]
        2 SETTABLEKS                       R0 R3 K0 ["pageIndex"]
        4 GETUPVAL                         R4 0
        5 MOVE                             R6 R0
        6 GETUPVAL                         R9 0
        7 GETTABLEKS                       R8 R9 K3 ["state"]
        9 GETTABLEKS                       R7 R8 K4 ["pageSize"]
       11 GETUPVAL                         R10 0
       12 GETTABLEKS                       R9 R10 K3 ["state"]
       14 GETTABLEKS                       R8 R9 K5 ["responsive"]
       16 NAMECALL                         R4 R4 K6 ["getPageRows"]
       18 CALL                             R4 4 1
       19 SETTABLEKS                       R4 R3 K1 ["rows"]
       21 NAMECALL                         R1 R1 K7 ["setState"]
       23 CALL                             R1 2 0
       24 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K2 [{"pageSize", "rows"}]
        2 SETTABLEKS                       R0 R3 K0 ["pageSize"]
        4 GETUPVAL                         R4 0
        5 GETUPVAL                         R8 0
        6 GETTABLEKS                       R7 R8 K3 ["state"]
        8 GETTABLEKS                       R6 R7 K4 ["pageIndex"]
       10 MOVE                             R7 R0
       11 GETUPVAL                         R10 0
       12 GETTABLEKS                       R9 R10 K3 ["state"]
       14 GETTABLEKS                       R8 R9 K5 ["responsive"]
       16 NAMECALL                         R4 R4 K6 ["getPageRows"]
       18 CALL                             R4 4 1
       19 SETTABLEKS                       R4 R3 K1 ["rows"]
       21 NAMECALL                         R1 R1 K7 ["setState"]
       23 CALL                             R1 2 0
       24 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R4 K1 [{"selectedRow"}]
        2 GETUPVAL                         R10 0
        3 GETTABLEKS                       R9 R10 K3 ["state"]
        5 GETTABLEKS                       R8 R9 K4 ["pageIndex"]
        7 SUBK                             R7 R8 K2 [1]
        8 GETUPVAL                         R10 0
        9 GETTABLEKS                       R9 R10 K3 ["state"]
       11 GETTABLEKS                       R8 R9 K5 ["pageSize"]
       13 MUL                              R6 R7 R8
       14 ADD                              R5 R1 R6
       15 SETTABLEKS                       R5 R4 K0 ["selectedRow"]
       17 NAMECALL                         R2 R2 K6 ["setState"]
       19 CALL                             R2 2 0
       20 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R6 R0 K2 ["Name"]
        2 FASTCALL1                        STRING_LEN R6 ; [+2]
        3 GETIMPORT                        R5 K5 [string.len]
        5 CALL                             R5 1 1
        6 DIVK                             R4 R5 K1 [20]
        7 FASTCALL1                        MATH_CEIL R4 ; [+2]
        8 GETIMPORT                        R3 K8 [math.ceil]
       10 CALL                             R3 1 1
       11 SUBK                             R2 R3 K0 [1]
       12 LOADN                            R4 0
       13 JUMPIFNOTLT                      R4 R2 ; [+4]
       15 MULK                             R4 R2 K1 [20]
       16 ADD                              R3 R1 R4
       17 RETURN                           R3 1
       18 MOVE                             R3 R1
       19 RETURN                           R3 1

PROTO_7:
        0 DUPTABLE                         R1 K7 [{"sortIndex", "sortOrder", "pageIndex", "pageSize", "rows", "selectedRow", "responsive"}]
        1 LOADNIL                          R2
        2 SETTABLEKS                       R2 R1 K0 ["sortIndex"]
        4 LOADNIL                          R2
        5 SETTABLEKS                       R2 R1 K1 ["sortOrder"]
        7 LOADN                            R2 1
        8 SETTABLEKS                       R2 R1 K2 ["pageIndex"]
       10 LOADN                            R2 5
       11 SETTABLEKS                       R2 R1 K3 ["pageSize"]
       13 LOADN                            R4 1
       14 LOADN                            R5 5
       15 GETTABLEKS                       R7 R0 K8 ["props"]
       17 GETTABLEKS                       R6 R7 K9 ["UseGetRowHeight"]
       19 NAMECALL                         R2 R0 K10 ["getPageRows"]
       21 CALL                             R2 4 1
       22 SETTABLEKS                       R2 R1 K4 ["rows"]
       24 LOADNIL                          R2
       25 SETTABLEKS                       R2 R1 K5 ["selectedRow"]
       27 GETTABLEKS                       R3 R0 K8 ["props"]
       29 GETTABLEKS                       R2 R3 K9 ["UseGetRowHeight"]
       31 SETTABLEKS                       R2 R1 K6 ["responsive"]
       33 SETTABLEKS                       R1 R0 K11 ["state"]
       35 NEWCLOSURE                       R1 P0
       36 CAPTURE                          UPVAL U0
       37 CAPTURE                          UPVAL U1
       38 CAPTURE                          VAL R0
       39 SETTABLEKS                       R1 R0 K12 ["onSortChange"]
       41 NEWCLOSURE                       R1 P1
       42 CAPTURE                          VAL R0
       43 SETTABLEKS                       R1 R0 K13 ["onPageChange"]
       45 NEWCLOSURE                       R1 P2
       46 CAPTURE                          VAL R0
       47 SETTABLEKS                       R1 R0 K14 ["onPageSizeChange"]
       49 NEWCLOSURE                       R1 P3
       50 CAPTURE                          VAL R0
       51 SETTABLEKS                       R1 R0 K15 ["onSelectRow"]
       53 DUPCLOSURE                       R1 K16 [PROTO_6]
       54 SETTABLEKS                       R1 R0 K17 ["getRowHeight"]
       56 RETURN                           R0 0

PROTO_8:
        0 SUBK                             R6 R1 K0 [1]
        1 MUL                              R5 R6 R2
        2 ADDK                             R4 R5 K0 [1]
        3 JUMPIFNOT                        R3 ; [+7]
        4 GETUPVAL                         R5 0
        5 GETUPVAL                         R6 1
        6 MOVE                             R7 R4
        7 ADD                              R9 R4 R2
        8 SUBK                             R8 R9 K0 [1]
        9 CALL                             R5 3 1
       10 RETURN                           R5 1
       11 GETUPVAL                         R5 0
       12 GETUPVAL                         R6 2
       13 MOVE                             R7 R4
       14 ADD                              R9 R4 R2
       15 SUBK                             R8 R9 K0 [1]
       16 CALL                             R5 3 1
       17 RETURN                           R5 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R0 K1 ["props"]
        4 LOADNIL                          R3
        5 GETTABLEKS                       R4 R1 K2 ["selectedRow"]
        7 JUMPIFNOT                        R4 ; [+13]
        8 GETTABLEKS                       R4 R1 K2 ["selectedRow"]
       10 GETTABLEKS                       R8 R0 K0 ["state"]
       12 GETTABLEKS                       R7 R8 K4 ["pageIndex"]
       14 SUBK                             R6 R7 K3 [1]
       15 GETTABLEKS                       R8 R0 K0 ["state"]
       17 GETTABLEKS                       R7 R8 K5 ["pageSize"]
       19 MUL                              R5 R6 R7
       20 SUB                              R3 R4 R5
       21 GETTABLEKS                       R4 R2 K6 ["UseGetRowHeight"]
       23 JUMPIFNOT                        R4 ; [+88]
       24 DUPTABLE                         R6 K8 [{"responsive"}]
       25 LOADB                            R7 1
       26 SETTABLEKS                       R7 R6 K7 ["responsive"]
       28 NAMECALL                         R4 R0 K9 ["setState"]
       30 CALL                             R4 2 0
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R4 R5 K10 ["createElement"]
       34 GETUPVAL                         R5 1
       35 DUPTABLE                         R6 K25 [{"AutomaticSize", "SortIndex", "SortOrder", "PageIndex", "PageSize", "PageCount", "OnPageChange", "OnSortChange", "SelectedRow", "OnSelectRow", "Columns", "Rows", "GetRowHeight", "CellComponent"}]
       36 GETIMPORT                        R7 K28 [Enum.AutomaticSize.Y]
       38 SETTABLEKS                       R7 R6 K11 ["AutomaticSize"]
       40 GETTABLEKS                       R7 R1 K29 ["sortIndex"]
       42 SETTABLEKS                       R7 R6 K12 ["SortIndex"]
       44 GETTABLEKS                       R7 R1 K30 ["sortOrder"]
       46 SETTABLEKS                       R7 R6 K13 ["SortOrder"]
       48 GETTABLEKS                       R7 R1 K4 ["pageIndex"]
       50 SETTABLEKS                       R7 R6 K14 ["PageIndex"]
       52 GETTABLEKS                       R7 R1 K5 ["pageSize"]
       54 SETTABLEKS                       R7 R6 K15 ["PageSize"]
       56 GETUPVAL                         R10 2
       57 LENGTH                           R9 R10
       58 GETTABLEKS                       R10 R1 K5 ["pageSize"]
       60 DIV                              R8 R9 R10
       61 FASTCALL1                        MATH_CEIL R8 ; [+2]
       62 GETIMPORT                        R7 K33 [math.ceil]
       64 CALL                             R7 1 1
       65 SETTABLEKS                       R7 R6 K16 ["PageCount"]
       67 GETTABLEKS                       R7 R0 K34 ["onPageChange"]
       69 SETTABLEKS                       R7 R6 K17 ["OnPageChange"]
       71 GETTABLEKS                       R7 R0 K35 ["onSortChange"]
       73 SETTABLEKS                       R7 R6 K18 ["OnSortChange"]
       75 SETTABLEKS                       R3 R6 K19 ["SelectedRow"]
       77 GETTABLEKS                       R7 R0 K36 ["onSelectRow"]
       79 SETTABLEKS                       R7 R6 K20 ["OnSelectRow"]
       81 NEWTABLE                         R7 0 3
       83 DUPTABLE                         R8 K38 [{"Name"}]
       84 LOADK                            R9 K37 ["Name"]
       85 SETTABLEKS                       R9 R8 K37 ["Name"]
       87 DUPTABLE                         R9 K38 [{"Name"}]
       88 LOADK                            R10 K39 ["Count"]
       89 SETTABLEKS                       R10 R9 K37 ["Name"]
       91 DUPTABLE                         R10 K38 [{"Name"}]
       92 LOADK                            R11 K40 ["Size"]
       93 SETTABLEKS                       R11 R10 K37 ["Name"]
       95 SETLIST                          R7 R8 3 [1]
       97 SETTABLEKS                       R7 R6 K21 ["Columns"]
       99 GETTABLEKS                       R7 R1 K41 ["rows"]
      101 SETTABLEKS                       R7 R6 K22 ["Rows"]
      103 GETTABLEKS                       R7 R0 K42 ["getRowHeight"]
      105 SETTABLEKS                       R7 R6 K23 ["GetRowHeight"]
      107 GETUPVAL                         R7 3
      108 SETTABLEKS                       R7 R6 K24 ["CellComponent"]
      110 CALL                             R4 2 -1
      111 RETURN                           R4 -1
      112 GETUPVAL                         R5 0
      113 GETTABLEKS                       R4 R5 K10 ["createElement"]
      115 GETUPVAL                         R5 1
      116 DUPTABLE                         R6 K44 [{"Size", "SortIndex", "SortOrder", "PageIndex", "PageSize", "PageCount", "OnPageSizeChange", "OnPageChange", "OnSortChange", "SelectedRow", "OnSelectRow", "Columns", "Rows"}]
      117 GETIMPORT                        R7 K47 [UDim2.new]
      119 LOADN                            R8 1
      120 LOADN                            R9 0
      121 LOADN                            R10 0
      122 LOADN                            R11 200
      123 CALL                             R7 4 1
      124 SETTABLEKS                       R7 R6 K40 ["Size"]
      126 GETTABLEKS                       R7 R1 K29 ["sortIndex"]
      128 SETTABLEKS                       R7 R6 K12 ["SortIndex"]
      130 GETTABLEKS                       R7 R1 K30 ["sortOrder"]
      132 SETTABLEKS                       R7 R6 K13 ["SortOrder"]
      134 GETTABLEKS                       R7 R1 K4 ["pageIndex"]
      136 SETTABLEKS                       R7 R6 K14 ["PageIndex"]
      138 GETTABLEKS                       R7 R1 K5 ["pageSize"]
      140 SETTABLEKS                       R7 R6 K15 ["PageSize"]
      142 GETUPVAL                         R10 4
      143 LENGTH                           R9 R10
      144 GETTABLEKS                       R10 R1 K5 ["pageSize"]
      146 DIV                              R8 R9 R10
      147 FASTCALL1                        MATH_CEIL R8 ; [+2]
      148 GETIMPORT                        R7 K33 [math.ceil]
      150 CALL                             R7 1 1
      151 SETTABLEKS                       R7 R6 K16 ["PageCount"]
      153 GETTABLEKS                       R7 R0 K48 ["onPageSizeChange"]
      155 SETTABLEKS                       R7 R6 K43 ["OnPageSizeChange"]
      157 GETTABLEKS                       R7 R0 K34 ["onPageChange"]
      159 SETTABLEKS                       R7 R6 K17 ["OnPageChange"]
      161 GETTABLEKS                       R7 R0 K35 ["onSortChange"]
      163 SETTABLEKS                       R7 R6 K18 ["OnSortChange"]
      165 SETTABLEKS                       R3 R6 K19 ["SelectedRow"]
      167 GETTABLEKS                       R7 R0 K36 ["onSelectRow"]
      169 SETTABLEKS                       R7 R6 K20 ["OnSelectRow"]
      171 NEWTABLE                         R7 0 3
      173 DUPTABLE                         R8 K38 [{"Name"}]
      174 LOADK                            R9 K37 ["Name"]
      175 SETTABLEKS                       R9 R8 K37 ["Name"]
      177 DUPTABLE                         R9 K38 [{"Name"}]
      178 LOADK                            R10 K39 ["Count"]
      179 SETTABLEKS                       R10 R9 K37 ["Name"]
      181 DUPTABLE                         R10 K38 [{"Name"}]
      182 LOADK                            R11 K40 ["Size"]
      183 SETTABLEKS                       R11 R10 K37 ["Name"]
      185 SETLIST                          R7 R8 3 [1]
      187 SETTABLEKS                       R7 R6 K21 ["Columns"]
      189 GETTABLEKS                       R7 R1 K41 ["rows"]
      191 SETTABLEKS                       R7 R6 K22 ["Rows"]
      193 CALL                             R4 2 -1
      194 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R5 R0 K2 ["UI"]
       20 GETTABLEKS                       R4 R5 K8 ["Components"]
       22 GETTABLEKS                       R3 R4 K9 ["PaginatedTable"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R5 R0 K4 ["Parent"]
       29 GETTABLEKS                       R4 R5 K10 ["Dash"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K11 ["slice"]
       34 GETIMPORT                        R5 K14 [table.insert]
       36 GETIMPORT                        R6 K16 [table.sort]
       38 GETTABLEKS                       R7 R0 K2 ["UI"]
       40 GETIMPORT                        R8 K6 [require]
       42 GETTABLEKS                       R10 R7 K8 ["Components"]
       44 GETTABLEKS                       R9 R10 K17 ["Pane"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K6 [require]
       49 GETTABLEKS                       R11 R7 K8 ["Components"]
       51 GETTABLEKS                       R10 R11 K18 ["Tooltip"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K6 [require]
       56 GETTABLEKS                       R12 R7 K8 ["Components"]
       58 GETTABLEKS                       R11 R12 K19 ["TextLabel"]
       60 CALL                             R10 1 1
       61 GETTABLEKS                       R11 R1 K20 ["PureComponent"]
       63 LOADK                            R13 K21 ["ControlledTable"]
       64 NAMECALL                         R11 R11 K22 ["extend"]
       66 CALL                             R11 2 1
       67 NEWTABLE                         R12 0 0
       69 LOADN                            R15 1
       70 LOADN                            R13 23
       71 LOADN                            R14 1
       72 FORNPREP                         R13
       73 DUPTABLE                         R18 K26 [{"Name", "Count", "Size"}]
       74 LOADK                            R20 K27 ["Row "]
       75 MOVE                             R21 R15
       76 CONCAT                           R19 R20 R21
       77 SETTABLEKS                       R19 R18 K23 ["Name"]
       79 GETIMPORT                        R21 K31 [math.random]
       81 CALL                             R21 0 1
       82 MULK                             R20 R21 K28 [100]
       83 FASTCALL1                        MATH_FLOOR R20 ; [+2]
       84 GETIMPORT                        R19 K33 [math.floor]
       86 CALL                             R19 1 1
       87 SETTABLEKS                       R19 R18 K24 ["Count"]
       89 GETIMPORT                        R24 K31 [math.random]
       91 CALL                             R24 0 1
       92 MULK                             R23 R24 K28 [100]
       93 FASTCALL1                        MATH_FLOOR R23 ; [+2]
       94 GETIMPORT                        R22 K33 [math.floor]
       96 CALL                             R22 1 1
       97 MULK                             R20 R22 K34 [10]
       98 LOADK                            R21 K35 ["px"]
       99 CONCAT                           R19 R20 R21
      100 SETTABLEKS                       R19 R18 K25 ["Size"]
      102 FASTCALL2                        TABLE_INSERT R12 R18 ; [+3]
      104 MOVE                             R17 R12
      105 MOVE                             R16 R5
      106 CALL                             R16 2 0
      107 FORNLOOP                         R13
      108 NEWTABLE                         R13 0 0
      110 LOADN                            R16 1
      111 LOADN                            R14 23
      112 LOADN                            R15 1
      113 FORNPREP                         R14
      114 LOADK                            R18 K27 ["Row "]
      115 MOVE                             R19 R16
      116 CONCAT                           R17 R18 R19
      117 MODK                             R18 R16 K36 [4]
      118 JUMPIFNOTEQKN                    R18 K37 [0] ; [+2]
      120 LOADK                            R17 K38 ["This cell/row will have a larger row height because it has more characters"]
      121 DUPTABLE                         R20 K26 [{"Name", "Count", "Size"}]
      122 SETTABLEKS                       R17 R20 K23 ["Name"]
      124 GETIMPORT                        R23 K31 [math.random]
      126 CALL                             R23 0 1
      127 MULK                             R22 R23 K28 [100]
      128 FASTCALL1                        MATH_FLOOR R22 ; [+2]
      129 GETIMPORT                        R21 K33 [math.floor]
      131 CALL                             R21 1 1
      132 SETTABLEKS                       R21 R20 K24 ["Count"]
      134 GETIMPORT                        R26 K31 [math.random]
      136 CALL                             R26 0 1
      137 MULK                             R25 R26 K28 [100]
      138 FASTCALL1                        MATH_FLOOR R25 ; [+2]
      139 GETIMPORT                        R24 K33 [math.floor]
      141 CALL                             R24 1 1
      142 MULK                             R22 R24 K34 [10]
      143 LOADK                            R23 K35 ["px"]
      144 CONCAT                           R21 R22 R23
      145 SETTABLEKS                       R21 R20 K25 ["Size"]
      147 FASTCALL2                        TABLE_INSERT R13 R20 ; [+3]
      149 MOVE                             R19 R13
      150 MOVE                             R18 R5
      151 CALL                             R18 2 0
      152 FORNLOOP                         R14
      153 DUPCLOSURE                       R14 K39 [PROTO_0]
      154 CAPTURE                          VAL R1
      155 CAPTURE                          VAL R8
      156 CAPTURE                          VAL R10
      157 CAPTURE                          VAL R9
      158 DUPCLOSURE                       R15 K40 [PROTO_7]
      159 CAPTURE                          VAL R6
      160 CAPTURE                          VAL R12
      161 SETTABLEKS                       R15 R11 K41 ["init"]
      163 DUPCLOSURE                       R15 K42 [PROTO_8]
      164 CAPTURE                          VAL R4
      165 CAPTURE                          VAL R13
      166 CAPTURE                          VAL R12
      167 SETTABLEKS                       R15 R11 K43 ["getPageRows"]
      169 DUPCLOSURE                       R15 K44 [PROTO_9]
      170 CAPTURE                          VAL R1
      171 CAPTURE                          VAL R2
      172 CAPTURE                          VAL R13
      173 CAPTURE                          VAL R14
      174 CAPTURE                          VAL R12
      175 SETTABLEKS                       R15 R11 K45 ["render"]
      177 DUPTABLE                         R15 K47 [{"stories"}]
      178 NEWTABLE                         R16 0 2
      180 DUPTABLE                         R17 K50 [{"name", "story"}]
      181 LOADK                            R18 K51 ["Pagination"]
      182 SETTABLEKS                       R18 R17 K48 ["name"]
      184 GETTABLEKS                       R18 R1 K52 ["createElement"]
      186 MOVE                             R19 R11
      187 CALL                             R18 1 1
      188 SETTABLEKS                       R18 R17 K49 ["story"]
      190 DUPTABLE                         R18 K50 [{"name", "story"}]
      191 LOADK                            R19 K53 ["Pagination with GetRowHeight"]
      192 SETTABLEKS                       R19 R18 K48 ["name"]
      194 GETTABLEKS                       R19 R1 K52 ["createElement"]
      196 MOVE                             R20 R11
      197 DUPTABLE                         R21 K55 [{"UseGetRowHeight"}]
      198 LOADB                            R22 1
      199 SETTABLEKS                       R22 R21 K54 ["UseGetRowHeight"]
      201 CALL                             R19 2 1
      202 SETTABLEKS                       R19 R18 K49 ["story"]
      204 SETLIST                          R16 R17 2 [1]
      206 SETTABLEKS                       R16 R15 K46 ["stories"]
      208 RETURN                           R15 1
