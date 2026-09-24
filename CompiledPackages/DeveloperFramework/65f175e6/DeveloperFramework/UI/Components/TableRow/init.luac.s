PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["OnRightClick"]
        5 JUMPIFNOT                        R1 ; [+12]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["props"]
        9 GETTABLEKS                       R1 R1 K1 ["OnRightClick"]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K0 ["props"]
       14 GETTABLEKS                       R2 R2 K2 ["Row"]
       16 MOVE                             R3 R0
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onRightClickRow"]
        4 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["Key"]
        2 JUMPIF                           R2 ; [+2]
        3 GETTABLEKS                       R2 R0 K1 ["Name"]
        5 GETUPVAL                         R5 0
        6 GETTABLE                         R4 R5 R2
        7 ORK                              R3 R4 K2 [""]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R6 R0 K3 ["TooltipKey"]
       11 GETTABLE                         R4 R5 R6
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K4 ["createElement"]
       15 GETUPVAL                         R6 2
       16 DUPTABLE                         R7 K21 [{"key", "CellProps", "Columns", "ColumnIndex", "Emphasis", "HighlightCell", "Style", "OnEdited", "Row", "RowIndex", "SetCellContentsWidth", "StyleModifier", "Tooltip", "Value", "Variant", "Width"}]
       17 GETUPVAL                         R9 3
       18 JUMPIFNOT                        R9 ; [+2]
       19 MOVE                             R8 R2
       20 JUMP                             ; [+1]
       21 LOADNIL                          R8
       22 SETTABLEKS                       R8 R7 K5 ["key"]
       24 GETUPVAL                         R8 4
       25 GETTABLEKS                       R8 R8 K6 ["CellProps"]
       27 SETTABLEKS                       R8 R7 K6 ["CellProps"]
       29 GETUPVAL                         R8 5
       30 SETTABLEKS                       R8 R7 K7 ["Columns"]
       32 SETTABLEKS                       R1 R7 K8 ["ColumnIndex"]
       34 GETUPVAL                         R8 6
       35 SETTABLEKS                       R8 R7 K9 ["Emphasis"]
       37 GETUPVAL                         R8 7
       38 SETTABLEKS                       R8 R7 K10 ["HighlightCell"]
       40 GETUPVAL                         R8 8
       41 SETTABLEKS                       R8 R7 K11 ["Style"]
       43 GETUPVAL                         R8 4
       44 GETTABLEKS                       R8 R8 K12 ["OnEdited"]
       46 SETTABLEKS                       R8 R7 K12 ["OnEdited"]
       48 GETUPVAL                         R8 0
       49 SETTABLEKS                       R8 R7 K13 ["Row"]
       51 GETUPVAL                         R8 9
       52 SETTABLEKS                       R8 R7 K14 ["RowIndex"]
       54 GETUPVAL                         R8 4
       55 GETTABLEKS                       R8 R8 K15 ["SetCellContentsWidth"]
       57 SETTABLEKS                       R8 R7 K15 ["SetCellContentsWidth"]
       59 GETUPVAL                         R8 4
       60 GETTABLEKS                       R8 R8 K16 ["StyleModifier"]
       62 SETTABLEKS                       R8 R7 K16 ["StyleModifier"]
       64 SETTABLEKS                       R4 R7 K17 ["Tooltip"]
       66 SETTABLEKS                       R3 R7 K18 ["Value"]
       68 GETUPVAL                         R8 4
       69 GETTABLEKS                       R8 R8 K19 ["Variant"]
       71 SETTABLEKS                       R8 R7 K19 ["Variant"]
       73 GETTABLEKS                       R8 R0 K20 ["Width"]
       75 SETTABLEKS                       R8 R7 K20 ["Width"]
       77 CALL                             R5 2 -1
       78 RETURN                           R5 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Row"]
        6 GETTABLEKS                       R4 R1 K3 ["RowIndex"]
        8 GETTABLEKS                       R5 R1 K4 ["CellComponent"]
       10 JUMPIF                           R5 ; [+1]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R6 R1 K5 ["Columns"]
       14 LOADNIL                          R7
       15 GETTABLEKS                       R8 R1 K6 ["FullSpan"]
       17 JUMPIFNOT                        R8 ; [+9]
       18 GETTABLEKS                       R8 R3 K7 ["depth"]
       20 JUMPIFNOT                        R8 ; [+6]
       21 GETTABLEKS                       R9 R3 K7 ["depth"]
       23 JUMPIFEQKN                       R9 K8 [0] ; [+2]
       25 LOADB                            R8 0 +1
       26 LOADB                            R8 1
       27 GETTABLEN                        R9 R6 1
       28 GETTABLEKS                       R9 R9 K9 ["Key"]
       30 GETTABLEKS                       R10 R3 K10 ["item"]
       32 JUMPIFNOT                        R10 ; [+16]
       33 GETTABLEKS                       R12 R3 K10 ["item"]
       35 GETTABLE                         R11 R12 R9
       36 FASTCALL1                        TYPEOF R11 ; [+2]
       37 GETIMPORT                        R10 K12 [typeof]
       39 CALL                             R10 1 1
       40 JUMPIFNOTEQKS                    R10 K13 ["table"] ; [+8]
       42 GETTABLEKS                       R11 R3 K10 ["item"]
       44 GETTABLE                         R10 R11 R9
       45 GETTABLEKS                       R10 R10 K6 ["FullSpan"]
       47 JUMPIFNOT                        R10 ; [+1]
       48 LOADB                            R8 1
       49 GETTABLEKS                       R11 R1 K14 ["FullSpanEmphasis"]
       51 JUMPIFNOT                        R11 ; [+2]
       52 MOVE                             R10 R8
       53 JUMP                             ; [+15]
       54 GETTABLEKS                       R11 R1 K15 ["Variant"]
       56 JUMPIFNOTEQKS                    R11 K16 ["modern"] ; [+7]
       58 MODK                             R11 R4 K17 [2]
       59 JUMPIFEQKN                       R11 K8 [0] ; [+2]
       61 LOADB                            R10 0 +1
       62 LOADB                            R10 1
       63 JUMP                             ; [+5]
       64 MODK                             R11 R4 K17 [2]
       65 JUMPIFEQKN                       R11 K18 [1] ; [+2]
       67 LOADB                            R10 0 +1
       68 LOADB                            R10 1
       69 GETTABLEKS                       R11 R1 K19 ["HighlightRow"]
       71 JUMPIFNOT                        R8 ; [+66]
       72 GETTABLE                         R13 R3 R9
       73 ORK                              R12 R13 K20 [""]
       74 NEWTABLE                         R13 0 1
       76 GETUPVAL                         R14 1
       77 GETTABLEKS                       R14 R14 K21 ["createElement"]
       79 MOVE                             R15 R5
       80 DUPTABLE                         R16 K33 [{["key"], ["CellProps"], ["Columns"], ["ColumnIndex"] = 1, ["Emphasis"], ["HighlightCell"], ["OnEdited"], ["Row"], ["RowIndex"], ["Style"], ["StyleModifier"], ["Tooltip"], ["Width"], ["Value"], ["Variant"]}]
       81 GETUPVAL                         R18 2
       82 JUMPIFNOT                        R18 ; [+4]
       83 GETUPVAL                         R18 3
       84 JUMPIFNOT                        R18 ; [+2]
       85 LOADK                            R17 K34 ["FullSpanCell"]
       86 JUMP                             ; [+1]
       87 LOADNIL                          R17
       88 SETTABLEKS                       R17 R16 K22 ["key"]
       90 GETTABLEKS                       R17 R1 K23 ["CellProps"]
       92 SETTABLEKS                       R17 R16 K23 ["CellProps"]
       94 SETTABLEKS                       R6 R16 K5 ["Columns"]
       96 SETTABLEKS                       R10 R16 K25 ["Emphasis"]
       98 SETTABLEKS                       R11 R16 K26 ["HighlightCell"]
      100 GETTABLEKS                       R17 R1 K27 ["OnEdited"]
      102 SETTABLEKS                       R17 R16 K27 ["OnEdited"]
      104 SETTABLEKS                       R3 R16 K2 ["Row"]
      106 SETTABLEKS                       R4 R16 K3 ["RowIndex"]
      108 SETTABLEKS                       R2 R16 K28 ["Style"]
      110 GETTABLEKS                       R17 R1 K29 ["StyleModifier"]
      112 SETTABLEKS                       R17 R16 K29 ["StyleModifier"]
      114 GETTABLEN                        R18 R6 1
      115 GETTABLEKS                       R18 R18 K35 ["TooltipKey"]
      117 GETTABLE                         R17 R3 R18
      118 SETTABLEKS                       R17 R16 K30 ["Tooltip"]
      120 GETIMPORT                        R17 K38 [UDim.new]
      122 LOADN                            R18 1
      123 LOADN                            R19 0
      124 CALL                             R17 2 1
      125 SETTABLEKS                       R17 R16 K31 ["Width"]
      127 SETTABLEKS                       R12 R16 K32 ["Value"]
      129 GETTABLEKS                       R17 R1 K15 ["Variant"]
      131 SETTABLEKS                       R17 R16 K15 ["Variant"]
      133 CALL                             R14 2 -1
      134 SETLIST                          R13 R14 -1 [1]
      136 MOVE                             R7 R13
      137 JUMP                             ; [+15]
      138 GETUPVAL                         R12 4
      139 MOVE                             R13 R6
      140 NEWCLOSURE                       R14 P0
      141 CAPTURE                          VAL R3
      142 CAPTURE                          UPVAL U1
      143 CAPTURE                          VAL R5
      144 CAPTURE                          UPVAL U3
      145 CAPTURE                          VAL R1
      146 CAPTURE                          VAL R6
      147 CAPTURE                          VAL R10
      148 CAPTURE                          VAL R11
      149 CAPTURE                          VAL R2
      150 CAPTURE                          VAL R4
      151 CALL                             R12 2 1
      152 MOVE                             R7 R12
      153 GETUPVAL                         R12 5
      154 GETTABLEKS                       R13 R1 K39 ["RowHeight"]
      156 GETTABLEKS                       R14 R2 K39 ["RowHeight"]
      158 CALL                             R12 2 1
      159 GETUPVAL                         R13 6
      160 JUMPIFNOT                        R13 ; [+53]
      161 GETUPVAL                         R13 1
      162 GETTABLEKS                       R13 R13 K21 ["createElement"]
      164 GETUPVAL                         R14 7
      165 DUPTABLE                         R15 K42 [{"HorizontalAlignment", "Layout"}]
      166 GETIMPORT                        R16 K45 [Enum.HorizontalAlignment.Left]
      168 SETTABLEKS                       R16 R15 K40 ["HorizontalAlignment"]
      170 GETIMPORT                        R16 K48 [Enum.FillDirection.Horizontal]
      172 SETTABLEKS                       R16 R15 K41 ["Layout"]
      174 MOVE                             R16 R7
      175 CALL                             R13 3 1
      176 GETUPVAL                         R14 1
      177 GETTABLEKS                       R14 R14 K21 ["createElement"]
      179 GETUPVAL                         R15 7
      180 GETUPVAL                         R16 8
      181 NEWTABLE                         R17 4 0
      183 GETTABLEKS                       R18 R0 K49 ["onRightClickRow"]
      185 SETTABLEKS                       R18 R17 K50 ["OnRightClick"]
      187 GETTABLEKS                       R18 R1 K51 ["Size"]
      189 JUMPIF                           R18 ; [+7]
      190 GETIMPORT                        R18 K53 [UDim2.new]
      192 LOADN                            R19 1
      193 LOADN                            R20 0
      194 LOADN                            R21 0
      195 MOVE                             R22 R12
      196 CALL                             R18 4 1
      197 SETTABLEKS                       R18 R17 K51 ["Size"]
      199 GETTABLEKS                       R18 R1 K54 ["Position"]
      201 SETTABLEKS                       R18 R17 K54 ["Position"]
      203 GETUPVAL                         R18 9
      204 GETTABLEKS                       R18 R18 K55 ["Tag"]
      206 LOADK                            R19 K56 ["Component-TableRow"]
      207 SETTABLE                         R19 R17 R18
      208 GETTABLEKS                       R18 R1 K57 ["WrapperProps"]
      210 CALL                             R16 2 1
      211 MOVE                             R17 R13
      212 CALL                             R14 3 -1
      213 RETURN                           R14 -1
      214 GETUPVAL                         R13 1
      215 GETTABLEKS                       R13 R13 K21 ["createElement"]
      217 GETUPVAL                         R14 7
      218 GETUPVAL                         R15 8
      219 DUPTABLE                         R16 K59 [{["HorizontalAlignment"], ["Layout"], ["OnRightClick"], ["Position"], ["Size"], ["Style"] = "Box"}]
      220 GETIMPORT                        R17 K45 [Enum.HorizontalAlignment.Left]
      222 SETTABLEKS                       R17 R16 K40 ["HorizontalAlignment"]
      224 GETIMPORT                        R17 K48 [Enum.FillDirection.Horizontal]
      226 SETTABLEKS                       R17 R16 K41 ["Layout"]
      228 GETTABLEKS                       R17 R0 K49 ["onRightClickRow"]
      230 SETTABLEKS                       R17 R16 K50 ["OnRightClick"]
      232 GETTABLEKS                       R17 R1 K54 ["Position"]
      234 SETTABLEKS                       R17 R16 K54 ["Position"]
      236 GETTABLEKS                       R17 R1 K51 ["Size"]
      238 JUMPIF                           R17 ; [+7]
      239 GETIMPORT                        R17 K53 [UDim2.new]
      241 LOADN                            R18 1
      242 LOADN                            R19 0
      243 LOADN                            R20 0
      244 MOVE                             R21 R12
      245 CALL                             R17 4 1
      246 SETTABLEKS                       R17 R16 K51 ["Size"]
      248 GETTABLEKS                       R17 R1 K57 ["WrapperProps"]
      250 CALL                             R15 2 1
      251 MOVE                             R16 R7
      252 CALL                             R13 3 -1
      253 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["withContext"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Util"]
       29 GETTABLEKS                       R5 R5 K11 ["prioritize"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R0 K12 ["SharedFlags"]
       36 GETTABLEKS                       R6 R6 K13 ["getFFlagDevFrameworkFixMissingKeyErrors"]
       38 CALL                             R5 1 1
       39 CALL                             R5 0 1
       40 GETIMPORT                        R6 K6 [require]
       42 GETTABLEKS                       R7 R0 K10 ["Util"]
       44 GETTABLEKS                       R7 R7 K14 ["isRoact17"]
       46 CALL                             R6 1 1
       47 MOVE                             R7 R1
       48 CALL                             R6 1 1
       49 GETTABLEKS                       R8 R0 K4 ["Parent"]
       51 LOADK                            R10 K15 ["React"]
       52 NAMECALL                         R8 R8 K16 ["FindFirstChild"]
       54 CALL                             R8 2 1
       55 JUMPIFNOT                        R8 ; [+8]
       56 GETIMPORT                        R7 K6 [require]
       58 GETTABLEKS                       R8 R0 K4 ["Parent"]
       60 GETTABLEKS                       R8 R8 K15 ["React"]
       62 CALL                             R7 1 1
       63 JUMP                             ; [+1]
       64 LOADNIL                          R7
       65 GETIMPORT                        R8 K6 [require]
       67 GETTABLEKS                       R9 R0 K17 ["Styling"]
       69 GETTABLEKS                       R9 R9 K18 ["supportsStyleSheets"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K6 [require]
       74 GETIMPORT                        R10 K1 [script]
       76 GETTABLEKS                       R10 R10 K19 ["TableCell"]
       78 CALL                             R9 1 1
       79 GETIMPORT                        R10 K6 [require]
       81 GETTABLEKS                       R11 R0 K20 ["Wrappers"]
       83 GETTABLEKS                       R11 R11 K21 ["withControl"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K6 [require]
       88 GETTABLEKS                       R12 R0 K4 ["Parent"]
       90 GETTABLEKS                       R12 R12 K22 ["Dash"]
       92 CALL                             R11 1 1
       93 GETTABLEKS                       R12 R11 K23 ["assign"]
       95 GETTABLEKS                       R13 R11 K24 ["map"]
       97 GETTABLEKS                       R14 R0 K2 ["UI"]
       99 GETIMPORT                        R15 K6 [require]
      101 GETTABLEKS                       R16 R14 K25 ["Components"]
      103 GETTABLEKS                       R16 R16 K26 ["Pane"]
      105 CALL                             R15 1 1
      106 GETTABLEKS                       R16 R1 K27 ["PureComponent"]
      108 LOADK                            R18 K28 ["TableRow"]
      109 NAMECALL                         R16 R16 K29 ["extend"]
      111 CALL                             R16 2 1
      112 DUPCLOSURE                       R17 K30 [PROTO_1]
      113 SETTABLEKS                       R17 R16 K31 ["init"]
      115 DUPCLOSURE                       R17 K32 [PROTO_3]
      116 CAPTURE                          VAL R9
      117 CAPTURE                          VAL R1
      118 CAPTURE                          VAL R5
      119 CAPTURE                          VAL R6
      120 CAPTURE                          VAL R13
      121 CAPTURE                          VAL R4
      122 CAPTURE                          VAL R8
      123 CAPTURE                          VAL R15
      124 CAPTURE                          VAL R12
      125 CAPTURE                          VAL R7
      126 SETTABLEKS                       R17 R16 K33 ["render"]
      128 MOVE                             R17 R3
      129 DUPTABLE                         R18 K35 [{"Stylizer"}]
      130 GETTABLEKS                       R19 R2 K34 ["Stylizer"]
      132 SETTABLEKS                       R19 R18 K34 ["Stylizer"]
      134 CALL                             R17 1 1
      135 MOVE                             R18 R16
      136 CALL                             R17 1 1
      137 MOVE                             R16 R17
      138 MOVE                             R17 R10
      139 MOVE                             R18 R16
      140 CALL                             R17 1 -1
      141 RETURN                           R17 -1
