PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["Columns"]
        4 GETTABLEKS                       R4 R1 K2 ["ColumnIndex"]
        6 GETTABLE                         R2 R3 R4
        7 GETTABLEKS                       R3 R2 K3 ["Key"]
        9 GETTABLEKS                       R4 R1 K4 ["Width"]
       11 JUMPIF                           R4 ; [+8]
       12 GETIMPORT                        R4 K7 [UDim.new]
       14 GETTABLEKS                       R7 R1 K1 ["Columns"]
       16 LENGTH                           R6 R7
       17 DIVRK                            R5 R8 K6 ["new"]
       18 LOADN                            R6 0
       19 CALL                             R4 2 1
       20 GETTABLEKS                       R5 R1 K9 ["Row"]
       22 GETTABLEKS                       R6 R1 K10 ["CellProps"]
       24 GETTABLEKS                       R8 R5 K11 ["item"]
       26 GETTABLE                         R7 R8 R3
       27 JUMPIFEQKS                       R3 K12 ["isEnabled"] ; [+2]
       29 LOADB                            R8 0 +1
       30 LOADB                            R8 1
       31 JUMPIFEQKS                       R3 K13 ["continueExecution"] ; [+2]
       33 LOADB                            R9 0 +1
       34 LOADB                            R9 1
       35 JUMPIFEQKS                       R3 K14 ["removeOnHit"] ; [+2]
       37 LOADB                            R10 0 +1
       38 LOADB                            R10 1
       39 GETUPVAL                         R11 0
       40 GETTABLEKS                       R12 R1 K15 ["Style"]
       42 GETTABLEKS                       R13 R6 K16 ["CellStyle"]
       44 CALL                             R11 2 1
       45 GETTABLEKS                       R14 R1 K18 ["RowIndex"]
       47 MODK                             R13 R14 K17 [2]
       48 JUMPIFNOTEQKN                    R13 K8 [1] ; [+4]
       50 GETTABLEKS                       R12 R11 K19 ["BackgroundOdd"]
       52 JUMPIF                           R12 ; [+2]
       53 GETTABLEKS                       R12 R11 K20 ["BackgroundEven"]
       55 GETTABLEKS                       R13 R1 K21 ["HighlightCell"]
       57 JUMPIFNOT                        R13 ; [+24]
       58 GETUPVAL                         R14 1
       59 GETTABLEKS                       R14 R14 K22 ["Hover"]
       61 GETTABLE                         R13 R11 R14
       62 JUMPIFNOT                        R13 ; [+19]
       63 GETTABLEKS                       R15 R1 K18 ["RowIndex"]
       65 MODK                             R14 R15 K17 [2]
       66 JUMPIFNOTEQKN                    R14 K8 [1] ; [+8]
       68 GETUPVAL                         R14 1
       69 GETTABLEKS                       R14 R14 K22 ["Hover"]
       71 GETTABLE                         R13 R11 R14
       72 GETTABLEKS                       R13 R13 K19 ["BackgroundOdd"]
       74 JUMPIF                           R13 ; [+6]
       75 GETUPVAL                         R14 1
       76 GETTABLEKS                       R14 R14 K22 ["Hover"]
       78 GETTABLE                         R13 R11 R14
       79 GETTABLEKS                       R13 R13 K20 ["BackgroundEven"]
       81 MOVE                             R12 R13
       82 GETTABLEKS                       R13 R5 K11 ["item"]
       84 GETTABLEKS                       R13 R13 K23 ["children"]
       86 JUMPIFNOT                        R13 ; [+10]
       87 GETTABLEKS                       R15 R5 K11 ["item"]
       89 GETTABLEKS                       R15 R15 K23 ["children"]
       91 LENGTH                           R14 R15
       92 LOADN                            R15 0
       93 JUMPIFLT                         R15 R14 ; [+2]
       95 LOADB                            R13 0 +1
       96 LOADB                            R13 1
       97 JUMPIFNOT                        R8 ; [+23]
       98 GETUPVAL                         R14 2
       99 GETTABLEKS                       R14 R14 K24 ["createElement"]
      101 GETUPVAL                         R15 3
      102 DUPTABLE                         R16 K27 [{"ColumnIndex", "Row", "Style", "HasChildren", "BackgroundColor", "Width", "CellProps"}]
      103 GETTABLEKS                       R17 R1 K2 ["ColumnIndex"]
      105 SETTABLEKS                       R17 R16 K2 ["ColumnIndex"]
      107 SETTABLEKS                       R5 R16 K9 ["Row"]
      109 SETTABLEKS                       R11 R16 K15 ["Style"]
      111 SETTABLEKS                       R13 R16 K25 ["HasChildren"]
      113 SETTABLEKS                       R12 R16 K26 ["BackgroundColor"]
      115 SETTABLEKS                       R4 R16 K4 ["Width"]
      117 SETTABLEKS                       R6 R16 K10 ["CellProps"]
      119 CALL                             R14 2 -1
      120 RETURN                           R14 -1
      121 JUMPIFNOT                        R9 ; [+19]
      122 GETUPVAL                         R14 2
      123 GETTABLEKS                       R14 R14 K24 ["createElement"]
      125 GETUPVAL                         R15 4
      126 DUPTABLE                         R16 K29 [{"Row", "Style", "HasChildren", "BackgroundColor", "Width", "Value"}]
      127 SETTABLEKS                       R5 R16 K9 ["Row"]
      129 SETTABLEKS                       R11 R16 K15 ["Style"]
      131 SETTABLEKS                       R13 R16 K25 ["HasChildren"]
      133 SETTABLEKS                       R12 R16 K26 ["BackgroundColor"]
      135 SETTABLEKS                       R4 R16 K4 ["Width"]
      137 SETTABLEKS                       R7 R16 K28 ["Value"]
      139 CALL                             R14 2 -1
      140 RETURN                           R14 -1
      141 JUMPIFNOT                        R10 ; [+19]
      142 GETUPVAL                         R14 2
      143 GETTABLEKS                       R14 R14 K24 ["createElement"]
      145 GETUPVAL                         R15 5
      146 DUPTABLE                         R16 K29 [{"Row", "Style", "HasChildren", "BackgroundColor", "Width", "Value"}]
      147 SETTABLEKS                       R5 R16 K9 ["Row"]
      149 SETTABLEKS                       R11 R16 K15 ["Style"]
      151 SETTABLEKS                       R13 R16 K25 ["HasChildren"]
      153 SETTABLEKS                       R12 R16 K26 ["BackgroundColor"]
      155 SETTABLEKS                       R4 R16 K4 ["Width"]
      157 SETTABLEKS                       R7 R16 K28 ["Value"]
      159 CALL                             R14 2 -1
      160 RETURN                           R14 -1
      161 GETUPVAL                         R14 2
      162 GETTABLEKS                       R14 R14 K24 ["createElement"]
      164 GETUPVAL                         R15 6
      165 DUPTABLE                         R16 K33 [{"CellProps", "Columns", "ColumnIndex", "Row", "Width", "Style", "RowIndex", "HighlightCell", "OnRightClick", "SetCellContentsWidth", "Emphasis"}]
      166 GETTABLEKS                       R17 R1 K10 ["CellProps"]
      168 SETTABLEKS                       R17 R16 K10 ["CellProps"]
      170 GETTABLEKS                       R17 R1 K1 ["Columns"]
      172 SETTABLEKS                       R17 R16 K1 ["Columns"]
      174 GETTABLEKS                       R17 R1 K2 ["ColumnIndex"]
      176 SETTABLEKS                       R17 R16 K2 ["ColumnIndex"]
      178 GETTABLEKS                       R17 R1 K9 ["Row"]
      180 SETTABLEKS                       R17 R16 K9 ["Row"]
      182 GETTABLEKS                       R17 R1 K4 ["Width"]
      184 SETTABLEKS                       R17 R16 K4 ["Width"]
      186 GETTABLEKS                       R17 R1 K15 ["Style"]
      188 SETTABLEKS                       R17 R16 K15 ["Style"]
      190 GETTABLEKS                       R17 R1 K18 ["RowIndex"]
      192 SETTABLEKS                       R17 R16 K18 ["RowIndex"]
      194 GETTABLEKS                       R17 R1 K21 ["HighlightCell"]
      196 SETTABLEKS                       R17 R16 K21 ["HighlightCell"]
      198 GETTABLEKS                       R17 R1 K30 ["OnRightClick"]
      200 SETTABLEKS                       R17 R16 K30 ["OnRightClick"]
      202 GETTABLEKS                       R17 R1 K31 ["SetCellContentsWidth"]
      204 SETTABLEKS                       R17 R16 K31 ["SetCellContentsWidth"]
      206 GETTABLEKS                       R17 R1 K32 ["Emphasis"]
      208 SETTABLEKS                       R17 R16 K32 ["Emphasis"]
      210 CALL                             R14 2 -1
      211 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["Framework"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K8 ["Util"]
       27 GETTABLEKS                       R3 R3 K9 ["StyleModifier"]
       29 GETTABLEKS                       R4 R2 K10 ["Dash"]
       31 GETTABLEKS                       R5 R4 K11 ["join"]
       33 GETTABLEKS                       R6 R2 K12 ["ContextServices"]
       35 GETTABLEKS                       R7 R6 K13 ["Analytics"]
       37 GETTABLEKS                       R8 R2 K14 ["UI"]
       39 GETTABLEKS                       R9 R8 K15 ["TreeTableCell"]
       41 GETIMPORT                        R10 K4 [require]
       43 GETTABLEKS                       R11 R0 K16 ["Src"]
       45 GETTABLEKS                       R11 R11 K17 ["Components"]
       47 GETTABLEKS                       R11 R11 K18 ["Breakpoints"]
       49 GETTABLEKS                       R11 R11 K19 ["BreakpointsEnabledCell"]
       51 CALL                             R10 1 1
       52 GETIMPORT                        R11 K4 [require]
       54 GETTABLEKS                       R12 R0 K16 ["Src"]
       56 GETTABLEKS                       R12 R12 K17 ["Components"]
       58 GETTABLEKS                       R12 R12 K18 ["Breakpoints"]
       60 GETTABLEKS                       R12 R12 K20 ["BreakpointsContinueExecutionCell"]
       62 CALL                             R11 1 1
       63 GETIMPORT                        R12 K4 [require]
       65 GETTABLEKS                       R13 R0 K16 ["Src"]
       67 GETTABLEKS                       R13 R13 K17 ["Components"]
       69 GETTABLEKS                       R13 R13 K18 ["Breakpoints"]
       71 GETTABLEKS                       R13 R13 K21 ["BreakpointsRemoveOnHitCell"]
       73 CALL                             R12 1 1
       74 GETTABLEKS                       R13 R1 K22 ["PureComponent"]
       76 LOADK                            R15 K23 ["BreakpointsTreeTableCell"]
       77 NAMECALL                         R13 R13 K24 ["extend"]
       79 CALL                             R13 2 1
       80 DUPCLOSURE                       R14 K25 [PROTO_0]
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R11
       86 CAPTURE                          VAL R12
       87 CAPTURE                          VAL R9
       88 SETTABLEKS                       R14 R13 K26 ["render"]
       90 GETTABLEKS                       R14 R6 K27 ["withContext"]
       92 DUPTABLE                         R15 K28 [{"Analytics"}]
       93 SETTABLEKS                       R7 R15 K13 ["Analytics"]
       95 CALL                             R14 1 1
       96 MOVE                             R15 R13
       97 CALL                             R14 1 1
       98 MOVE                             R13 R14
       99 RETURN                           R13 1
