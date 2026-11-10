PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setScrollY"]
        3 GETTABLEKS                       R2 R0 K1 ["CanvasPosition"]
        5 GETTABLEKS                       R2 R2 K2 ["Y"]
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K3 ["setHeaderOffset"]
       11 GETIMPORT                        R2 K6 [UDim2.fromOffset]
       13 GETTABLEKS                       R4 R0 K1 ["CanvasPosition"]
       15 GETTABLEKS                       R4 R4 K7 ["X"]
       17 MINUS                            R3 R4
       18 LOADN                            R4 0
       19 CALL                             R2 2 -1
       20 CALL                             R1 -1 0
       21 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setViewportHeight"]
        3 GETTABLEKS                       R2 R0 K1 ["AbsoluteSize"]
        5 GETTABLEKS                       R2 R2 K2 ["Y"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Widget"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R3 R1 K1 ["columnDefinitions"]
        7 GETTABLEKS                       R4 R0 K0 ["Widget"]
        9 CALL                             R2 2 1
       10 NEWTABLE                         R3 0 0
       12 GETTABLEKS                       R4 R2 K2 ["getVisibleRowRange"]
       14 GETTABLEKS                       R6 R1 K3 ["rows"]
       16 LENGTH                           R5 R6
       17 CALL                             R4 1 1
       18 GETTABLEKS                       R7 R4 K4 ["Min"]
       20 GETTABLEKS                       R5 R4 K5 ["Max"]
       22 LOADN                            R6 1
       23 FORNPREP                         R5
       24 GETTABLEKS                       R9 R1 K3 ["rows"]
       26 GETTABLE                         R8 R9 R7
       27 JUMPIFEQKNIL                     R8 ; [+21]
       29 FASTCALL1                        TOSTRING R7 ; [+3]
       30 MOVE                             R10 R7
       31 GETIMPORT                        R9 K7 [tostring]
       33 CALL                             R9 1 1
       34 GETUPVAL                         R10 2
       35 GETTABLEKS                       R10 R10 K8 ["createElement"]
       37 GETUPVAL                         R11 3
       38 DUPTABLE                         R12 K13 [{"Row", "Index", "RowData", "TableState"}]
       39 SETTABLEKS                       R8 R12 K9 ["Row"]
       41 SETTABLEKS                       R7 R12 K10 ["Index"]
       43 SETTABLEKS                       R1 R12 K11 ["RowData"]
       45 SETTABLEKS                       R2 R12 K12 ["TableState"]
       47 CALL                             R10 2 1
       48 SETTABLE                         R10 R3 R9
       49 FORNLOOP                         R5
       50 NEWTABLE                         R5 0 0
       52 GETTABLEKS                       R6 R2 K14 ["getColumnDividers"]
       54 CALL                             R6 0 3
       55 FORGPREP                         R6
       56 GETTABLEKS                       R11 R10 K15 ["name"]
       58 GETUPVAL                         R12 2
       59 GETTABLEKS                       R12 R12 K8 ["createElement"]
       61 GETUPVAL                         R13 4
       62 DUPTABLE                         R14 K20 [{"DividerX", "ColumnIndex", "ResizeColumnTo", "OnResizeFinished"}]
       63 GETTABLEKS                       R15 R10 K21 ["x"]
       65 SETTABLEKS                       R15 R14 K16 ["DividerX"]
       67 GETTABLEKS                       R15 R10 K22 ["columnIndex"]
       69 SETTABLEKS                       R15 R14 K17 ["ColumnIndex"]
       71 GETTABLEKS                       R15 R2 K23 ["resizeColumnTo"]
       73 SETTABLEKS                       R15 R14 K18 ["ResizeColumnTo"]
       75 GETTABLEKS                       R15 R2 K24 ["onColumnResizeFinished"]
       77 SETTABLEKS                       R15 R14 K19 ["OnResizeFinished"]
       79 CALL                             R12 2 1
       80 SETTABLE                         R12 R5 R11
       81 FORGLOOP                         R6 2 ; [-26]
       83 GETUPVAL                         R6 2
       84 GETTABLEKS                       R6 R6 K8 ["createElement"]
       86 GETUPVAL                         R7 5
       87 DUPTABLE                         R8 K27 [{["tag"] = "size-full-full"}]
       88 DUPTABLE                         R9 K30 [{"Content", "MenuAnchor"}]
       89 GETUPVAL                         R10 2
       90 GETTABLEKS                       R10 R10 K8 ["createElement"]
       92 GETUPVAL                         R11 5
       93 DUPTABLE                         R12 K32 [{["tag"] = "col size-full-full flex-y-fill"}]
       94 DUPTABLE                         R13 K34 [{"Table"}]
       95 GETUPVAL                         R14 2
       96 GETTABLEKS                       R14 R14 K8 ["createElement"]
       98 GETUPVAL                         R15 5
       99 DUPTABLE                         R16 K38 [{["tag"] = "col size-full-full bg-surface-0", ["LayoutOrder"] = 2}]
      100 DUPTABLE                         R17 K40 [{"Header", "Content"}]
      101 GETUPVAL                         R18 2
      102 GETTABLEKS                       R18 R18 K8 ["createElement"]
      104 GETUPVAL                         R19 6
      105 DUPTABLE                         R20 K41 [{"RowData", "TableState"}]
      106 SETTABLEKS                       R1 R20 K11 ["RowData"]
      108 SETTABLEKS                       R2 R20 K12 ["TableState"]
      110 CALL                             R18 2 1
      111 SETTABLEKS                       R18 R17 K39 ["Header"]
      113 GETUPVAL                         R18 2
      114 GETTABLEKS                       R18 R18 K8 ["createElement"]
      116 GETUPVAL                         R19 7
      117 DUPTABLE                         R20 K49 [{["tag"] = "size-full-0 grow", ["LayoutOrder"] = 1, ["onCanvasPositionChanged"], ["onAbsoluteWindowSizeChanged"], ["scroll"], ["onActivated"], ["stateLayer"]}]
      118 NEWCLOSURE                       R21 P0
      119 CAPTURE                          VAL R2
      120 SETTABLEKS                       R21 R20 K44 ["onCanvasPositionChanged"]
      122 NEWCLOSURE                       R21 P1
      123 CAPTURE                          VAL R2
      124 SETTABLEKS                       R21 R20 K45 ["onAbsoluteWindowSizeChanged"]
      126 DUPTABLE                         R21 K52 [{"CanvasSize", "AutomaticCanvasSize"}]
      127 GETIMPORT                        R22 K55 [UDim2.fromOffset]
      129 GETTABLEKS                       R23 R2 K56 ["totalColumnWidth"]
      131 GETTABLEKS                       R26 R1 K3 ["rows"]
      133 LENGTH                           R25 R26
      134 GETTABLEKS                       R26 R2 K57 ["rowHeight"]
      136 MUL                              R24 R25 R26
      137 CALL                             R22 2 1
      138 SETTABLEKS                       R22 R21 K50 ["CanvasSize"]
      140 GETIMPORT                        R22 K61 [Enum.AutomaticSize.None]
      142 SETTABLEKS                       R22 R21 K51 ["AutomaticCanvasSize"]
      144 SETTABLEKS                       R21 R20 K46 ["scroll"]
      146 GETTABLEKS                       R21 R1 K62 ["clearSelection"]
      148 SETTABLEKS                       R21 R20 K47 ["onActivated"]
      150 DUPTABLE                         R21 K64 [{"affordance"}]
      151 GETUPVAL                         R22 8
      152 GETTABLEKS                       R22 R22 K65 ["Enums"]
      154 GETTABLEKS                       R22 R22 K66 ["StateLayerAffordance"]
      156 GETTABLEKS                       R22 R22 K60 ["None"]
      158 SETTABLEKS                       R22 R21 K63 ["affordance"]
      160 SETTABLEKS                       R21 R20 K48 ["stateLayer"]
      162 DUPTABLE                         R21 K69 [{"Rows", "Dividers"}]
      163 GETUPVAL                         R22 2
      164 GETTABLEKS                       R22 R22 K8 ["createElement"]
      166 GETUPVAL                         R23 2
      167 GETTABLEKS                       R23 R23 K70 ["Fragment"]
      169 NEWTABLE                         R24 0 0
      171 MOVE                             R25 R3
      172 CALL                             R22 3 1
      173 SETTABLEKS                       R22 R21 K67 ["Rows"]
      175 GETUPVAL                         R22 2
      176 GETTABLEKS                       R22 R22 K8 ["createElement"]
      178 GETUPVAL                         R23 2
      179 GETTABLEKS                       R23 R23 K70 ["Fragment"]
      181 NEWTABLE                         R24 0 0
      183 MOVE                             R25 R5
      184 CALL                             R22 3 1
      185 SETTABLEKS                       R22 R21 K68 ["Dividers"]
      187 CALL                             R18 3 1
      188 SETTABLEKS                       R18 R17 K28 ["Content"]
      190 CALL                             R14 3 1
      191 SETTABLEKS                       R14 R13 K33 ["Table"]
      193 CALL                             R10 3 1
      194 SETTABLEKS                       R10 R9 K28 ["Content"]
      196 GETUPVAL                         R10 2
      197 GETTABLEKS                       R10 R10 K8 ["createElement"]
      199 GETUPVAL                         R11 9
      200 DUPTABLE                         R12 K72 [{"ViewportWidth", "RowData", "TableState"}]
      201 GETTABLEKS                       R14 R0 K0 ["Widget"]
      203 JUMPIFNOT                        R14 ; [+7]
      204 GETTABLEKS                       R13 R0 K0 ["Widget"]
      206 GETTABLEKS                       R13 R13 K73 ["AbsoluteSize"]
      208 GETTABLEKS                       R13 R13 K74 ["X"]
      210 JUMP                             ; [+1]
      211 LOADK                            R13 K75 [Infinity]
      212 SETTABLEKS                       R13 R12 K71 ["ViewportWidth"]
      214 SETTABLEKS                       R1 R12 K11 ["RowData"]
      216 SETTABLEKS                       R2 R12 K12 ["TableState"]
      218 CALL                             R10 2 1
      219 SETTABLEKS                       R10 R9 K29 ["MenuAnchor"]
      221 CALL                             R6 3 -1
      222 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioActivityMonitor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ScrollView"]
       23 GETTABLEKS                       R4 R2 K10 ["View"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R0 K11 ["Src"]
       29 GETTABLEKS                       R6 R6 K12 ["Util"]
       31 GETTABLEKS                       R6 R6 K13 ["useRowData"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R0 K11 ["Src"]
       38 GETTABLEKS                       R7 R7 K12 ["Util"]
       40 GETTABLEKS                       R7 R7 K14 ["useTableState"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R8 R0 K11 ["Src"]
       47 GETTABLEKS                       R8 R8 K15 ["Components"]
       49 GETTABLEKS                       R8 R8 K16 ["HeaderContextMenu"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K5 [require]
       54 GETTABLEKS                       R9 R0 K11 ["Src"]
       56 GETTABLEKS                       R9 R9 K15 ["Components"]
       58 GETTABLEKS                       R9 R9 K17 ["TableHeader"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K11 ["Src"]
       65 GETTABLEKS                       R10 R10 K15 ["Components"]
       67 GETTABLEKS                       R10 R10 K18 ["TableRow"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K11 ["Src"]
       74 GETTABLEKS                       R11 R11 K15 ["Components"]
       76 GETTABLEKS                       R11 R11 K19 ["VerticalDivider"]
       78 CALL                             R10 1 1
       79 DUPCLOSURE                       R11 K20 [PROTO_2]
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R7
       90 RETURN                           R11 1
