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
       27 JUMPIFEQKNIL                     R8 ; [+14]
       29 FASTCALL1                        TOSTRING R7 ; [+3]
       30 MOVE                             R10 R7
       31 GETIMPORT                        R9 K7 [tostring]
       33 CALL                             R9 1 1
       34 GETUPVAL                         R10 2
       35 GETTABLEKS                       R10 R10 K8 ["createElement"]
       37 GETUPVAL                         R11 2
       38 GETTABLEKS                       R11 R11 K9 ["Fragment"]
       40 CALL                             R10 1 1
       41 SETTABLE                         R10 R3 R9
       42 FORNLOOP                         R5
       43 NEWTABLE                         R5 0 0
       45 GETTABLEKS                       R6 R2 K10 ["getColumnDividers"]
       47 CALL                             R6 0 3
       48 FORGPREP                         R6
       49 GETTABLEKS                       R11 R10 K11 ["name"]
       51 GETUPVAL                         R12 2
       52 GETTABLEKS                       R12 R12 K8 ["createElement"]
       54 GETUPVAL                         R13 2
       55 GETTABLEKS                       R13 R13 K9 ["Fragment"]
       57 CALL                             R12 1 1
       58 SETTABLE                         R12 R5 R11
       59 FORGLOOP                         R6 2 ; [-11]
       61 GETUPVAL                         R6 2
       62 GETTABLEKS                       R6 R6 K8 ["createElement"]
       64 GETUPVAL                         R7 3
       65 DUPTABLE                         R8 K14 [{["tag"] = "size-full-full"}]
       66 DUPTABLE                         R9 K16 [{"Content"}]
       67 GETUPVAL                         R10 2
       68 GETTABLEKS                       R10 R10 K8 ["createElement"]
       70 GETUPVAL                         R11 3
       71 DUPTABLE                         R12 K18 [{["tag"] = "col size-full-full flex-y-fill"}]
       72 DUPTABLE                         R13 K20 [{"Table"}]
       73 GETUPVAL                         R14 2
       74 GETTABLEKS                       R14 R14 K8 ["createElement"]
       76 GETUPVAL                         R15 3
       77 DUPTABLE                         R16 K24 [{["tag"] = "col size-full-full bg-surface-0", ["LayoutOrder"] = 2}]
       78 DUPTABLE                         R17 K26 [{"Header", "Content"}]
       79 GETUPVAL                         R18 2
       80 GETTABLEKS                       R18 R18 K8 ["createElement"]
       82 GETUPVAL                         R19 4
       83 DUPTABLE                         R20 K29 [{"RowData", "TableState"}]
       84 SETTABLEKS                       R1 R20 K27 ["RowData"]
       86 SETTABLEKS                       R2 R20 K28 ["TableState"]
       88 CALL                             R18 2 1
       89 SETTABLEKS                       R18 R17 K25 ["Header"]
       91 GETUPVAL                         R18 2
       92 GETTABLEKS                       R18 R18 K8 ["createElement"]
       94 GETUPVAL                         R19 5
       95 DUPTABLE                         R20 K37 [{["tag"] = "size-full-0 grow", ["LayoutOrder"] = 1, ["onCanvasPositionChanged"], ["onAbsoluteWindowSizeChanged"], ["scroll"], ["onActivated"], ["stateLayer"]}]
       96 NEWCLOSURE                       R21 P0
       97 CAPTURE                          VAL R2
       98 SETTABLEKS                       R21 R20 K32 ["onCanvasPositionChanged"]
      100 NEWCLOSURE                       R21 P1
      101 CAPTURE                          VAL R2
      102 SETTABLEKS                       R21 R20 K33 ["onAbsoluteWindowSizeChanged"]
      104 DUPTABLE                         R21 K40 [{"CanvasSize", "AutomaticCanvasSize"}]
      105 GETIMPORT                        R22 K43 [UDim2.fromOffset]
      107 GETTABLEKS                       R23 R2 K44 ["totalColumnWidth"]
      109 GETTABLEKS                       R26 R1 K3 ["rows"]
      111 LENGTH                           R25 R26
      112 GETTABLEKS                       R26 R2 K45 ["rowHeight"]
      114 MUL                              R24 R25 R26
      115 CALL                             R22 2 1
      116 SETTABLEKS                       R22 R21 K38 ["CanvasSize"]
      118 GETIMPORT                        R22 K49 [Enum.AutomaticSize.None]
      120 SETTABLEKS                       R22 R21 K39 ["AutomaticCanvasSize"]
      122 SETTABLEKS                       R21 R20 K34 ["scroll"]
      124 GETTABLEKS                       R21 R1 K50 ["clearSelection"]
      126 SETTABLEKS                       R21 R20 K35 ["onActivated"]
      128 DUPTABLE                         R21 K52 [{"affordance"}]
      129 GETUPVAL                         R22 6
      130 GETTABLEKS                       R22 R22 K53 ["Enums"]
      132 GETTABLEKS                       R22 R22 K54 ["StateLayerAffordance"]
      134 GETTABLEKS                       R22 R22 K48 ["None"]
      136 SETTABLEKS                       R22 R21 K51 ["affordance"]
      138 SETTABLEKS                       R21 R20 K36 ["stateLayer"]
      140 DUPTABLE                         R21 K57 [{"Rows", "Dividers"}]
      141 GETUPVAL                         R22 2
      142 GETTABLEKS                       R22 R22 K8 ["createElement"]
      144 GETUPVAL                         R23 2
      145 GETTABLEKS                       R23 R23 K9 ["Fragment"]
      147 NEWTABLE                         R24 0 0
      149 MOVE                             R25 R3
      150 CALL                             R22 3 1
      151 SETTABLEKS                       R22 R21 K55 ["Rows"]
      153 GETUPVAL                         R22 2
      154 GETTABLEKS                       R22 R22 K8 ["createElement"]
      156 GETUPVAL                         R23 2
      157 GETTABLEKS                       R23 R23 K9 ["Fragment"]
      159 NEWTABLE                         R24 0 0
      161 MOVE                             R25 R5
      162 CALL                             R22 3 1
      163 SETTABLEKS                       R22 R21 K56 ["Dividers"]
      165 CALL                             R18 3 1
      166 SETTABLEKS                       R18 R17 K15 ["Content"]
      168 CALL                             R14 3 1
      169 SETTABLEKS                       R14 R13 K19 ["Table"]
      171 CALL                             R10 3 1
      172 SETTABLEKS                       R10 R9 K15 ["Content"]
      174 CALL                             R6 3 -1
      175 RETURN                           R6 -1

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
       49 GETTABLEKS                       R8 R8 K16 ["TableHeader"]
       51 CALL                             R7 1 1
       52 DUPCLOSURE                       R8 K17 [PROTO_2]
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R2
       60 RETURN                           R8 1
