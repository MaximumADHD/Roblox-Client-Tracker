PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["OnRightClick"]
        5 JUMPIFNOT                        R1 ; [+12]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K0 ["props"]
        9 GETTABLEKS                       R1 R2 K1 ["OnRightClick"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K0 ["props"]
       14 GETTABLEKS                       R2 R3 K2 ["Row"]
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
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R5 R6 K4 ["createElement"]
       15 GETUPVAL                         R6 2
       16 DUPTABLE                         R7 K21 [{"key", "CellProps", "Columns", "ColumnIndex", "Emphasis", "HighlightCell", "Style", "OnEdited", "Row", "RowIndex", "SetCellContentsWidth", "StyleModifier", "Tooltip", "Value", "Variant", "Width"}]
       17 GETUPVAL                         R9 3
       18 JUMPIFNOT                        R9 ; [+2]
       19 MOVE                             R8 R2
       20 JUMP                             ; [+1]
       21 LOADNIL                          R8
       22 SETTABLEKS                       R8 R7 K5 ["key"]
       24 GETUPVAL                         R9 4
       25 GETTABLEKS                       R8 R9 K6 ["CellProps"]
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
       43 GETUPVAL                         R9 4
       44 GETTABLEKS                       R8 R9 K12 ["OnEdited"]
       46 SETTABLEKS                       R8 R7 K12 ["OnEdited"]
       48 GETUPVAL                         R8 0
       49 SETTABLEKS                       R8 R7 K13 ["Row"]
       51 GETUPVAL                         R8 9
       52 SETTABLEKS                       R8 R7 K14 ["RowIndex"]
       54 GETUPVAL                         R9 4
       55 GETTABLEKS                       R8 R9 K15 ["SetCellContentsWidth"]
       57 SETTABLEKS                       R8 R7 K15 ["SetCellContentsWidth"]
       59 GETUPVAL                         R9 4
       60 GETTABLEKS                       R8 R9 K16 ["StyleModifier"]
       62 SETTABLEKS                       R8 R7 K16 ["StyleModifier"]
       64 SETTABLEKS                       R4 R7 K17 ["Tooltip"]
       66 SETTABLEKS                       R3 R7 K18 ["Value"]
       68 GETUPVAL                         R9 10
       69 JUMPIFNOT                        R9 ; [+4]
       70 GETUPVAL                         R9 4
       71 GETTABLEKS                       R8 R9 K19 ["Variant"]
       73 JUMP                             ; [+1]
       74 LOADNIL                          R8
       75 SETTABLEKS                       R8 R7 K19 ["Variant"]
       77 GETTABLEKS                       R8 R0 K20 ["Width"]
       79 SETTABLEKS                       R8 R7 K20 ["Width"]
       81 CALL                             R5 2 -1
       82 RETURN                           R5 -1

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
       27 GETTABLEN                        R10 R6 1
       28 GETTABLEKS                       R9 R10 K9 ["Key"]
       30 GETTABLEKS                       R10 R3 K10 ["item"]
       32 JUMPIFNOT                        R10 ; [+16]
       33 GETTABLEKS                       R12 R3 K10 ["item"]
       35 GETTABLE                         R11 R12 R9
       36 FASTCALL1                        TYPEOF R11 ; [+2]
       37 GETIMPORT                        R10 K12 [typeof]
       39 CALL                             R10 1 1
       40 JUMPIFNOTEQKS                    R10 K13 ["table"] ; [+8]
       42 GETTABLEKS                       R12 R3 K10 ["item"]
       44 GETTABLE                         R11 R12 R9
       45 GETTABLEKS                       R10 R11 K6 ["FullSpan"]
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
       71 JUMPIFNOT                        R8 ; [+73]
       72 GETTABLE                         R13 R3 R9
       73 ORK                              R12 R13 K20 [""]
       74 NEWTABLE                         R13 0 1
       76 GETUPVAL                         R15 1
       77 GETTABLEKS                       R14 R15 K21 ["createElement"]
       79 MOVE                             R15 R5
       80 DUPTABLE                         R16 K33 [{"key", "CellProps", "Columns", "ColumnIndex", "Emphasis", "HighlightCell", "OnEdited", "Row", "RowIndex", "Style", "StyleModifier", "Tooltip", "Width", "Value", "Variant"}]
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
       96 LOADN                            R17 1
       97 SETTABLEKS                       R17 R16 K24 ["ColumnIndex"]
       99 SETTABLEKS                       R10 R16 K25 ["Emphasis"]
      101 SETTABLEKS                       R11 R16 K26 ["HighlightCell"]
      103 GETTABLEKS                       R17 R1 K27 ["OnEdited"]
      105 SETTABLEKS                       R17 R16 K27 ["OnEdited"]
      107 SETTABLEKS                       R3 R16 K2 ["Row"]
      109 SETTABLEKS                       R4 R16 K3 ["RowIndex"]
      111 SETTABLEKS                       R2 R16 K28 ["Style"]
      113 GETTABLEKS                       R17 R1 K29 ["StyleModifier"]
      115 SETTABLEKS                       R17 R16 K29 ["StyleModifier"]
      117 GETTABLEN                        R19 R6 1
      118 GETTABLEKS                       R18 R19 K35 ["TooltipKey"]
      120 GETTABLE                         R17 R3 R18
      121 SETTABLEKS                       R17 R16 K30 ["Tooltip"]
      123 GETIMPORT                        R17 K38 [UDim.new]
      125 LOADN                            R18 1
      126 LOADN                            R19 0
      127 CALL                             R17 2 1
      128 SETTABLEKS                       R17 R16 K31 ["Width"]
      130 SETTABLEKS                       R12 R16 K32 ["Value"]
      132 GETUPVAL                         R18 4
      133 JUMPIFNOT                        R18 ; [+3]
      134 GETTABLEKS                       R17 R1 K15 ["Variant"]
      136 JUMP                             ; [+1]
      137 LOADNIL                          R17
      138 SETTABLEKS                       R17 R16 K15 ["Variant"]
      140 CALL                             R14 2 -1
      141 SETLIST                          R13 R14 -1 [1]
      143 MOVE                             R7 R13
      144 JUMP                             ; [+16]
      145 GETUPVAL                         R12 5
      146 MOVE                             R13 R6
      147 NEWCLOSURE                       R14 P0
      148 CAPTURE                          VAL R3
      149 CAPTURE                          UPVAL U1
      150 CAPTURE                          VAL R5
      151 CAPTURE                          UPVAL U3
      152 CAPTURE                          VAL R1
      153 CAPTURE                          VAL R6
      154 CAPTURE                          VAL R10
      155 CAPTURE                          VAL R11
      156 CAPTURE                          VAL R2
      157 CAPTURE                          VAL R4
      158 CAPTURE                          UPVAL U4
      159 CALL                             R12 2 1
      160 MOVE                             R7 R12
      161 GETUPVAL                         R12 6
      162 GETTABLEKS                       R13 R1 K39 ["RowHeight"]
      164 GETTABLEKS                       R14 R2 K39 ["RowHeight"]
      166 CALL                             R12 2 1
      167 GETUPVAL                         R13 7
      168 JUMPIFNOT                        R13 ; [+53]
      169 GETUPVAL                         R14 1
      170 GETTABLEKS                       R13 R14 K21 ["createElement"]
      172 GETUPVAL                         R14 8
      173 DUPTABLE                         R15 K42 [{"HorizontalAlignment", "Layout"}]
      174 GETIMPORT                        R16 K45 [Enum.HorizontalAlignment.Left]
      176 SETTABLEKS                       R16 R15 K40 ["HorizontalAlignment"]
      178 GETIMPORT                        R16 K48 [Enum.FillDirection.Horizontal]
      180 SETTABLEKS                       R16 R15 K41 ["Layout"]
      182 MOVE                             R16 R7
      183 CALL                             R13 3 1
      184 GETUPVAL                         R15 1
      185 GETTABLEKS                       R14 R15 K21 ["createElement"]
      187 GETUPVAL                         R15 8
      188 GETUPVAL                         R16 9
      189 NEWTABLE                         R17 4 0
      191 GETTABLEKS                       R18 R0 K49 ["onRightClickRow"]
      193 SETTABLEKS                       R18 R17 K50 ["OnRightClick"]
      195 GETTABLEKS                       R18 R1 K51 ["Size"]
      197 JUMPIF                           R18 ; [+7]
      198 GETIMPORT                        R18 K53 [UDim2.new]
      200 LOADN                            R19 1
      201 LOADN                            R20 0
      202 LOADN                            R21 0
      203 MOVE                             R22 R12
      204 CALL                             R18 4 1
      205 SETTABLEKS                       R18 R17 K51 ["Size"]
      207 GETTABLEKS                       R18 R1 K54 ["Position"]
      209 SETTABLEKS                       R18 R17 K54 ["Position"]
      211 GETUPVAL                         R19 10
      212 GETTABLEKS                       R18 R19 K55 ["Tag"]
      214 LOADK                            R19 K56 ["Component-TableRow"]
      215 SETTABLE                         R19 R17 R18
      216 GETTABLEKS                       R18 R1 K57 ["WrapperProps"]
      218 CALL                             R16 2 1
      219 MOVE                             R17 R13
      220 CALL                             R14 3 -1
      221 RETURN                           R14 -1
      222 GETUPVAL                         R14 1
      223 GETTABLEKS                       R13 R14 K21 ["createElement"]
      225 GETUPVAL                         R14 8
      226 GETUPVAL                         R15 9
      227 DUPTABLE                         R16 K58 [{"HorizontalAlignment", "Layout", "OnRightClick", "Position", "Size", "Style"}]
      228 GETIMPORT                        R17 K45 [Enum.HorizontalAlignment.Left]
      230 SETTABLEKS                       R17 R16 K40 ["HorizontalAlignment"]
      232 GETIMPORT                        R17 K48 [Enum.FillDirection.Horizontal]
      234 SETTABLEKS                       R17 R16 K41 ["Layout"]
      236 GETTABLEKS                       R17 R0 K49 ["onRightClickRow"]
      238 SETTABLEKS                       R17 R16 K50 ["OnRightClick"]
      240 GETTABLEKS                       R17 R1 K54 ["Position"]
      242 SETTABLEKS                       R17 R16 K54 ["Position"]
      244 GETTABLEKS                       R17 R1 K51 ["Size"]
      246 JUMPIF                           R17 ; [+7]
      247 GETIMPORT                        R17 K53 [UDim2.new]
      249 LOADN                            R18 1
      250 LOADN                            R19 0
      251 LOADN                            R20 0
      252 MOVE                             R21 R12
      253 CALL                             R17 4 1
      254 SETTABLEKS                       R17 R16 K51 ["Size"]
      256 LOADK                            R17 K59 ["Box"]
      257 SETTABLEKS                       R17 R16 K28 ["Style"]
      259 GETTABLEKS                       R17 R1 K57 ["WrapperProps"]
      261 CALL                             R15 2 1
      262 MOVE                             R16 R7
      263 CALL                             R13 3 -1
      264 RETURN                           R13 -1

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
       18 GETTABLEKS                       R4 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R4 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["withContext"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R6 R0 K10 ["Util"]
       29 GETTABLEKS                       R5 R6 K11 ["prioritize"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R7 R0 K12 ["SharedFlags"]
       36 GETTABLEKS                       R6 R7 K13 ["getFFlagDevFrameworkFixMissingKeyErrors"]
       38 CALL                             R5 1 1
       39 CALL                             R5 0 1
       40 GETIMPORT                        R6 K6 [require]
       42 GETTABLEKS                       R8 R0 K12 ["SharedFlags"]
       44 GETTABLEKS                       R7 R8 K14 ["getFFlagDevFrameworkCompactTreeTable"]
       46 CALL                             R6 1 1
       47 CALL                             R6 0 1
       48 GETIMPORT                        R7 K6 [require]
       50 GETTABLEKS                       R9 R0 K10 ["Util"]
       52 GETTABLEKS                       R8 R9 K15 ["isRoact17"]
       54 CALL                             R7 1 1
       55 MOVE                             R8 R1
       56 CALL                             R7 1 1
       57 GETTABLEKS                       R9 R0 K4 ["Parent"]
       59 LOADK                            R11 K16 ["React"]
       60 NAMECALL                         R9 R9 K17 ["FindFirstChild"]
       62 CALL                             R9 2 1
       63 JUMPIFNOT                        R9 ; [+8]
       64 GETIMPORT                        R8 K6 [require]
       66 GETTABLEKS                       R10 R0 K4 ["Parent"]
       68 GETTABLEKS                       R9 R10 K16 ["React"]
       70 CALL                             R8 1 1
       71 JUMP                             ; [+1]
       72 LOADNIL                          R8
       73 GETIMPORT                        R9 K6 [require]
       75 GETTABLEKS                       R11 R0 K18 ["Styling"]
       77 GETTABLEKS                       R10 R11 K19 ["supportsStyleSheets"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K6 [require]
       82 GETIMPORT                        R12 K1 [script]
       84 GETTABLEKS                       R11 R12 K20 ["TableCell"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K6 [require]
       89 GETTABLEKS                       R13 R0 K21 ["Wrappers"]
       91 GETTABLEKS                       R12 R13 K22 ["withControl"]
       93 CALL                             R11 1 1
       94 GETIMPORT                        R12 K6 [require]
       96 GETTABLEKS                       R14 R0 K4 ["Parent"]
       98 GETTABLEKS                       R13 R14 K23 ["Dash"]
      100 CALL                             R12 1 1
      101 GETTABLEKS                       R13 R12 K24 ["assign"]
      103 GETTABLEKS                       R14 R12 K25 ["map"]
      105 GETTABLEKS                       R15 R0 K2 ["UI"]
      107 GETIMPORT                        R16 K6 [require]
      109 GETTABLEKS                       R18 R15 K26 ["Components"]
      111 GETTABLEKS                       R17 R18 K27 ["Pane"]
      113 CALL                             R16 1 1
      114 GETTABLEKS                       R17 R1 K28 ["PureComponent"]
      116 LOADK                            R19 K29 ["TableRow"]
      117 NAMECALL                         R17 R17 K30 ["extend"]
      119 CALL                             R17 2 1
      120 DUPCLOSURE                       R18 K31 [PROTO_1]
      121 SETTABLEKS                       R18 R17 K32 ["init"]
      123 DUPCLOSURE                       R18 K33 [PROTO_3]
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R1
      126 CAPTURE                          VAL R5
      127 CAPTURE                          VAL R7
      128 CAPTURE                          VAL R6
      129 CAPTURE                          VAL R14
      130 CAPTURE                          VAL R4
      131 CAPTURE                          VAL R9
      132 CAPTURE                          VAL R16
      133 CAPTURE                          VAL R13
      134 CAPTURE                          VAL R8
      135 SETTABLEKS                       R18 R17 K34 ["render"]
      137 MOVE                             R18 R3
      138 DUPTABLE                         R19 K36 [{"Stylizer"}]
      139 GETTABLEKS                       R20 R2 K35 ["Stylizer"]
      141 SETTABLEKS                       R20 R19 K35 ["Stylizer"]
      143 CALL                             R18 1 1
      144 MOVE                             R19 R17
      145 CALL                             R18 1 1
      146 MOVE                             R17 R18
      147 MOVE                             R18 R11
      148 MOVE                             R19 R17
      149 CALL                             R18 1 -1
      150 RETURN                           R18 -1
