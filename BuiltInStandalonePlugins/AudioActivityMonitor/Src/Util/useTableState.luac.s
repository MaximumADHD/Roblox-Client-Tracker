PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["loadColumnVisibilities"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["loadColumnWidths"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 1
        4 GETTABLE                         R3 R1 R0
        5 NOT                              R2 R3
        6 SETTABLE                         R2 R1 R0
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R1
        9 CALL                             R2 1 0
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K3 ["storeColumnVisibilities"]
       13 GETUPVAL                         R3 3
       14 MOVE                             R4 R1
       15 CALL                             R2 2 0
       16 GETUPVAL                         R2 4
       17 GETTABLEKS                       R2 R2 K4 ["reportColumnToggled"]
       19 GETUPVAL                         R4 3
       20 GETTABLE                         R3 R4 R0
       21 GETTABLEKS                       R3 R3 K5 ["name"]
       23 GETTABLE                         R4 R1 R0
       24 CALL                             R2 2 0
       25 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["loadColumnVisibilities"]
        4 GETUPVAL                         R2 2
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 0
        7 GETUPVAL                         R0 3
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K1 ["loadColumnWidths"]
       11 GETUPVAL                         R2 2
       12 CALL                             R1 1 -1
       13 CALL                             R0 -1 0
       14 RETURN                           R0 0

PROTO_4:
        0 LOADN                            R2 0
        1 LOADN                            R5 1
        2 MOVE                             R3 R0
        3 LOADN                            R4 1
        4 FORNPREP                         R3
        5 GETUPVAL                         R7 0
        6 GETTABLE                         R6 R7 R5
        7 JUMPIFNOT                        R6 ; [+3]
        8 GETUPVAL                         R7 1
        9 GETTABLE                         R6 R7 R5
       10 ADD                              R2 R2 R6
       11 FORNLOOP                         R3
       12 GETIMPORT                        R3 K2 [table.clone]
       14 GETUPVAL                         R4 1
       15 CALL                             R3 1 1
       16 SUB                              R4 R1 R2
       17 MOVE                             R7 R0
       18 LOADN                            R5 1
       19 LOADN                            R6 -1
       20 FORNPREP                         R5
       21 GETUPVAL                         R9 0
       22 GETTABLE                         R8 R9 R7
       23 JUMPIFNOT                        R8 ; [+16]
       24 GETTABLE                         R8 R3 R7
       25 ADD                              R8 R8 R4
       26 SETTABLE                         R8 R3 R7
       27 GETTABLE                         R8 R3 R7
       28 SUBK                             R4 R8 K3 [50]
       29 LOADN                            R8 0
       30 JUMPIFLE                         R8 R4 ; [+10]
       32 GETTABLE                         R9 R3 R7
       33 FASTCALL2K                       MATH_MAX R9 K3 ; [+4]
       35 LOADK                            R10 K3 [50]
       36 GETIMPORT                        R8 K6 [math.max]
       38 CALL                             R8 2 1
       39 SETTABLE                         R8 R3 R7
       40 FORNLOOP                         R5
       41 GETUPVAL                         R5 2
       42 MOVE                             R6 R3
       43 CALL                             R5 1 0
       44 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["storeColumnWidths"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R1 2 0
        6 GETUPVAL                         R1 3
        7 GETTABLEKS                       R1 R1 K1 ["reportColumnResized"]
        9 GETUPVAL                         R3 1
       10 GETTABLE                         R2 R3 R0
       11 GETTABLEKS                       R2 R2 K2 ["name"]
       13 GETUPVAL                         R4 2
       14 GETTABLE                         R3 R4 R0
       15 CALL                             R1 2 0
       16 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R0 0 0
        2 LOADN                            R1 0
        3 GETUPVAL                         R2 0
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETUPVAL                         R8 1
        8 GETTABLE                         R7 R8 R5
        9 JUMPIFNOT                        R7 ; [+18]
       10 GETUPVAL                         R8 2
       11 GETTABLE                         R7 R8 R5
       12 ADD                              R1 R1 R7
       13 DUPTABLE                         R9 K3 [{"name", "columnIndex", "x"}]
       14 GETTABLEKS                       R10 R6 K0 ["name"]
       16 SETTABLEKS                       R10 R9 K0 ["name"]
       18 SETTABLEKS                       R5 R9 K1 ["columnIndex"]
       20 SETTABLEKS                       R1 R9 K2 ["x"]
       22 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
       24 MOVE                             R8 R0
       25 GETIMPORT                        R7 K6 [table.insert]
       27 CALL                             R7 2 0
       28 FORGLOOP                         R2 2 ; [-22]
       30 RETURN                           R0 1

PROTO_7:
        0 GETIMPORT                        R2 K2 [Vector2.new]
        2 LOADN                            R3 0
        3 LOADN                            R4 0
        4 CALL                             R2 2 1
        5 GETUPVAL                         R3 0
        6 JUMPIFNOT                        R3 ; [+5]
        7 GETUPVAL                         R3 0
        8 NAMECALL                         R3 R3 K3 ["GetRelativeMousePosition"]
       10 CALL                             R3 1 1
       11 MOVE                             R2 R3
       12 GETUPVAL                         R3 1
       13 MOVE                             R4 R2
       14 CALL                             R3 1 0
       15 GETUPVAL                         R3 2
       16 LOADB                            R4 1
       17 CALL                             R3 1 0
       18 GETUPVAL                         R3 3
       19 MOVE                             R4 R0
       20 CALL                             R3 1 0
       21 GETUPVAL                         R3 4
       22 MOVE                             R4 R1
       23 CALL                             R3 1 0
       24 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 LOADN                            R2 0
        2 JUMPIFLE                         R1 R2 ; [+4]
        4 LOADN                            R1 0
        5 JUMPIFNOTLE                      R0 R1 ; [+7]
        7 GETIMPORT                        R1 K2 [NumberRange.new]
        9 LOADN                            R2 0
       10 LOADN                            R3 0
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1
       13 LOADN                            R2 1
       14 GETUPVAL                         R7 1
       15 GETUPVAL                         R8 2
       16 DIV                              R6 R7 R8
       17 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       18 GETIMPORT                        R5 K7 [math.floor]
       20 CALL                             R5 1 1
       21 ADDK                             R4 R5 K4 [1]
       22 SUBK                             R3 R4 K3 [6]
       23 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
       25 GETIMPORT                        R1 K9 [math.max]
       27 CALL                             R1 2 1
       28 GETUPVAL                         R8 1
       29 GETUPVAL                         R9 0
       30 ADD                              R7 R8 R9
       31 GETUPVAL                         R8 2
       32 DIV                              R6 R7 R8
       33 FASTCALL1                        MATH_CEIL R6 ; [+2]
       34 GETIMPORT                        R5 K11 [math.ceil]
       36 CALL                             R5 1 1
       37 ADDK                             R4 R5 K3 [6]
       38 FASTCALL2                        MATH_MIN R0 R4 ; [+4]
       40 MOVE                             R3 R0
       41 GETIMPORT                        R2 K13 [math.min]
       43 CALL                             R2 2 1
       44 FASTCALL2                        MATH_MIN R1 R2 ; [+5]
       46 MOVE                             R4 R1
       47 MOVE                             R5 R2
       48 GETIMPORT                        R3 K13 [math.min]
       50 CALL                             R3 2 1
       51 MOVE                             R1 R3
       52 GETIMPORT                        R3 K2 [NumberRange.new]
       54 MOVE                             R4 R1
       55 MOVE                             R5 R2
       56 CALL                             R3 2 -1
       57 RETURN                           R3 -1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Hooks"]
        3 GETTABLEKS                       R2 R2 K1 ["useTokens"]
        5 CALL                             R2 0 1
        6 GETTABLEKS                       R3 R2 K2 ["Size"]
        8 GETTABLEKS                       R3 R3 K3 ["Size_600"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K4 ["useState"]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R0
       16 CALL                             R4 1 2
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R6 R6 K4 ["useState"]
       20 NEWCLOSURE                       R7 P1
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          VAL R0
       23 CALL                             R6 1 2
       24 GETUPVAL                         R8 1
       25 GETTABLEKS                       R8 R8 K4 ["useState"]
       27 LOADN                            R9 0
       28 CALL                             R8 1 2
       29 GETUPVAL                         R10 1
       30 GETTABLEKS                       R10 R10 K4 ["useState"]
       32 LOADN                            R11 0
       33 CALL                             R10 1 2
       34 GETUPVAL                         R12 1
       35 GETTABLEKS                       R12 R12 K5 ["useBinding"]
       37 GETIMPORT                        R13 K8 [UDim2.fromOffset]
       39 LOADN                            R14 0
       40 LOADN                            R15 0
       41 CALL                             R13 2 -1
       42 CALL                             R12 -1 2
       43 GETUPVAL                         R14 1
       44 GETTABLEKS                       R14 R14 K4 ["useState"]
       46 LOADB                            R15 0
       47 CALL                             R14 1 2
       48 GETUPVAL                         R16 1
       49 GETTABLEKS                       R16 R16 K4 ["useState"]
       51 LOADB                            R17 0
       52 CALL                             R16 1 2
       53 GETUPVAL                         R18 1
       54 GETTABLEKS                       R18 R18 K4 ["useState"]
       56 LOADB                            R19 0
       57 CALL                             R18 1 2
       58 GETUPVAL                         R20 1
       59 GETTABLEKS                       R20 R20 K4 ["useState"]
       61 GETIMPORT                        R21 K11 [Vector2.new]
       63 LOADN                            R22 0
       64 LOADN                            R23 0
       65 CALL                             R21 2 -1
       66 CALL                             R20 -1 2
       67 LOADN                            R22 0
       68 MOVE                             R23 R0
       69 LOADNIL                          R24
       70 LOADNIL                          R25
       71 FORGPREP                         R23
       72 GETTABLE                         R28 R4 R26
       73 JUMPIFNOT                        R28 ; [+2]
       74 GETTABLE                         R28 R6 R26
       75 ADD                              R22 R22 R28
       76 FORGLOOP                         R23 2 ; [-5]
       78 NEWCLOSURE                       R23 P2
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R5
       81 CAPTURE                          UPVAL U2
       82 CAPTURE                          VAL R0
       83 CAPTURE                          UPVAL U3
       84 NEWCLOSURE                       R24 P3
       85 CAPTURE                          VAL R5
       86 CAPTURE                          UPVAL U2
       87 CAPTURE                          VAL R0
       88 CAPTURE                          VAL R7
       89 NEWCLOSURE                       R25 P4
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R7
       93 NEWCLOSURE                       R26 P5
       94 CAPTURE                          UPVAL U2
       95 CAPTURE                          VAL R0
       96 CAPTURE                          VAL R6
       97 CAPTURE                          UPVAL U3
       98 NEWCLOSURE                       R27 P6
       99 CAPTURE                          VAL R0
      100 CAPTURE                          VAL R4
      101 CAPTURE                          VAL R6
      102 NEWCLOSURE                       R28 P7
      103 CAPTURE                          VAL R1
      104 CAPTURE                          VAL R21
      105 CAPTURE                          VAL R15
      106 CAPTURE                          VAL R17
      107 CAPTURE                          VAL R19
      108 NEWCLOSURE                       R29 P8
      109 CAPTURE                          VAL R15
      110 NEWCLOSURE                       R30 P9
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R3
      114 DUPTABLE                         R31 K34 [{"rowHeight", "totalColumnWidth", "columnVisibilities", "columnWidths", "scrollY", "setScrollY", "viewportHeight", "setViewportHeight", "headerOffset", "setHeaderOffset", "isContextMenuOpen", "contextMenuShowsColumnList", "contextMenuShowsMeteringOptions", "contextMenuPosition", "openContextMenu", "closeContextMenu", "toggleColumnVisibility", "reloadColumnsFromSettings", "resizeColumnTo", "onColumnResizeFinished", "getColumnDividers", "getVisibleRowRange"}]
      115 SETTABLEKS                       R3 R31 K12 ["rowHeight"]
      117 SETTABLEKS                       R22 R31 K13 ["totalColumnWidth"]
      119 SETTABLEKS                       R4 R31 K14 ["columnVisibilities"]
      121 SETTABLEKS                       R6 R31 K15 ["columnWidths"]
      123 SETTABLEKS                       R8 R31 K16 ["scrollY"]
      125 SETTABLEKS                       R9 R31 K17 ["setScrollY"]
      127 SETTABLEKS                       R10 R31 K18 ["viewportHeight"]
      129 SETTABLEKS                       R11 R31 K19 ["setViewportHeight"]
      131 SETTABLEKS                       R12 R31 K20 ["headerOffset"]
      133 SETTABLEKS                       R13 R31 K21 ["setHeaderOffset"]
      135 SETTABLEKS                       R14 R31 K22 ["isContextMenuOpen"]
      137 SETTABLEKS                       R16 R31 K23 ["contextMenuShowsColumnList"]
      139 SETTABLEKS                       R18 R31 K24 ["contextMenuShowsMeteringOptions"]
      141 SETTABLEKS                       R20 R31 K25 ["contextMenuPosition"]
      143 SETTABLEKS                       R28 R31 K26 ["openContextMenu"]
      145 SETTABLEKS                       R29 R31 K27 ["closeContextMenu"]
      147 SETTABLEKS                       R23 R31 K28 ["toggleColumnVisibility"]
      149 SETTABLEKS                       R24 R31 K29 ["reloadColumnsFromSettings"]
      151 SETTABLEKS                       R25 R31 K30 ["resizeColumnTo"]
      153 SETTABLEKS                       R26 R31 K31 ["onColumnResizeFinished"]
      155 SETTABLEKS                       R27 R31 K32 ["getColumnDividers"]
      157 SETTABLEKS                       R30 R31 K33 ["getVisibleRowRange"]
      159 RETURN                           R31 1

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
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Util"]
       34 GETTABLEKS                       R5 R5 K12 ["SettingsUtil"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K9 ["Src"]
       41 GETTABLEKS                       R6 R6 K11 ["Util"]
       43 GETTABLEKS                       R6 R6 K13 ["TelemetryUtil"]
       45 CALL                             R5 1 1
       46 DUPCLOSURE                       R6 K14 [PROTO_10]
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R5
       51 RETURN                           R6 1
