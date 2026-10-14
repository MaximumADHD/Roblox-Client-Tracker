PROTO_0:
        0 DUPTABLE                         R0 K5 [{"toggleNode", "toggleHighlight", "isHighlighted", "openScript", "onToggleExpanded"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["toggleNode"]
        4 SETTABLEKS                       R1 R0 K0 ["toggleNode"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["toggleHighlight"]
        9 SETTABLEKS                       R1 R0 K1 ["toggleHighlight"]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K2 ["isHighlighted"]
       14 SETTABLEKS                       R1 R0 K2 ["isHighlighted"]
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K3 ["openScript"]
       19 SETTABLEKS                       R1 R0 K3 ["openScript"]
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K6 ["toggleExpanded"]
       24 SETTABLEKS                       R1 R0 K4 ["onToggleExpanded"]
       26 RETURN                           R0 1

PROTO_1:
        0 LOADB                            R1 1
        1 GETUPVAL                         R2 0
        2 JUMPIFEQKS                       R2 K0 [""] ; [+18]
        4 GETIMPORT                        R2 K3 [string.find]
        6 GETIMPORT                        R3 K5 [string.lower]
        8 ORK                              R4 R0 K0 [""]
        9 CALL                             R3 1 1
       10 GETIMPORT                        R4 K5 [string.lower]
       12 GETUPVAL                         R5 0
       13 CALL                             R4 1 1
       14 LOADN                            R5 1
       15 LOADB                            R6 1
       16 CALL                             R2 4 1
       17 JUMPIFNOTEQKNIL                  R2 ; [+2]
       19 LOADB                            R1 0 +1
       20 LOADB                            R1 1
       21 RETURN                           R1 1

PROTO_2:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 NEWTABLE                         R1 0 0
        4 LOADN                            R2 0
        5 GETIMPORT                        R3 K1 [ipairs]
        7 GETUPVAL                         R4 1
        8 CALL                             R3 1 3
        9 FORGPREP_INEXT                   R3
       10 NEWTABLE                         R8 0 0
       12 GETTABLEKS                       R9 R7 K2 ["children"]
       14 JUMPIFNOT                        R9 ; [+39]
       15 GETIMPORT                        R9 K1 [ipairs]
       17 GETTABLEKS                       R10 R7 K2 ["children"]
       19 CALL                             R9 1 3
       20 FORGPREP_INEXT                   R9
       21 GETTABLEKS                       R15 R13 K3 ["text"]
       23 LOADB                            R14 1
       24 GETUPVAL                         R16 0
       25 JUMPIFEQKS                       R16 K4 [""] ; [+18]
       27 GETIMPORT                        R16 K7 [string.find]
       29 GETIMPORT                        R17 K9 [string.lower]
       31 ORK                              R18 R15 K4 [""]
       32 CALL                             R17 1 1
       33 GETIMPORT                        R18 K9 [string.lower]
       35 GETUPVAL                         R19 0
       36 CALL                             R18 1 1
       37 LOADN                            R19 1
       38 LOADB                            R20 1
       39 CALL                             R16 4 1
       40 JUMPIFNOTEQKNIL                  R16 ; [+2]
       42 LOADB                            R14 0 +1
       43 LOADB                            R14 1
       44 JUMPIFNOT                        R14 ; [+7]
       45 FASTCALL2                        TABLE_INSERT R8 R13 ; [+5]
       47 MOVE                             R15 R8
       48 MOVE                             R16 R13
       49 GETIMPORT                        R14 K12 [table.insert]
       51 CALL                             R14 2 0
       52 FORGLOOP                         R9 2 [inext] ; [-32]
       54 GETTABLEKS                       R10 R7 K3 ["text"]
       56 LOADB                            R9 1
       57 GETUPVAL                         R11 0
       58 JUMPIFEQKS                       R11 K4 [""] ; [+18]
       60 GETIMPORT                        R11 K7 [string.find]
       62 GETIMPORT                        R12 K9 [string.lower]
       64 ORK                              R13 R10 K4 [""]
       65 CALL                             R12 1 1
       66 GETIMPORT                        R13 K9 [string.lower]
       68 GETUPVAL                         R14 0
       69 CALL                             R13 1 1
       70 LOADN                            R14 1
       71 LOADB                            R15 1
       72 CALL                             R11 4 1
       73 JUMPIFNOTEQKNIL                  R11 ; [+2]
       75 LOADB                            R9 0 +1
       76 LOADB                            R9 1
       77 JUMPIF                           R9 ; [+4]
       78 LENGTH                           R9 R8
       79 LOADN                            R10 0
       80 JUMPIFNOTLT                      R10 R9 ; [+63]
       82 ADDK                             R2 R2 K13 [1]
       83 GETUPVAL                         R11 2
       84 GETUPVAL                         R12 3
       85 MOVE                             R13 R7
       86 CALL                             R12 1 1
       87 GETTABLE                         R10 R11 R12
       88 JUMPIFEQKB                       R10 TRUE ; [+2]
       90 LOADB                            R9 0 +1
       91 LOADB                            R9 1
       92 GETUPVAL                         R10 3
       93 MOVE                             R11 R7
       94 CALL                             R10 1 1
       95 GETUPVAL                         R11 4
       96 GETTABLEKS                       R11 R11 K14 ["createElement"]
       98 GETUPVAL                         R12 5
       99 DUPTABLE                         R13 K22 [{["node"], ["depth"] = 0, ["order"], ["expanded"], ["controller"], ["localization"]}]
      100 SETTABLEKS                       R7 R13 K15 ["node"]
      102 SETTABLEKS                       R2 R13 K18 ["order"]
      104 SETTABLEKS                       R9 R13 K19 ["expanded"]
      106 GETUPVAL                         R14 6
      107 SETTABLEKS                       R14 R13 K20 ["controller"]
      109 GETUPVAL                         R14 7
      110 SETTABLEKS                       R14 R13 K21 ["localization"]
      112 CALL                             R11 2 1
      113 SETTABLE                         R11 R1 R10
      114 JUMPIFNOT                        R9 ; [+29]
      115 GETIMPORT                        R10 K1 [ipairs]
      117 MOVE                             R11 R8
      118 CALL                             R10 1 3
      119 FORGPREP_INEXT                   R10
      120 ADDK                             R2 R2 K13 [1]
      121 GETUPVAL                         R15 3
      122 MOVE                             R16 R14
      123 CALL                             R15 1 1
      124 GETUPVAL                         R16 4
      125 GETTABLEKS                       R16 R16 K14 ["createElement"]
      127 GETUPVAL                         R17 5
      128 DUPTABLE                         R18 K24 [{["node"], ["depth"] = 1, ["order"], ["parentEnabled"], ["controller"]}]
      129 SETTABLEKS                       R14 R18 K15 ["node"]
      131 SETTABLEKS                       R2 R18 K18 ["order"]
      133 GETTABLEKS                       R19 R7 K25 ["enabled"]
      135 SETTABLEKS                       R19 R18 K23 ["parentEnabled"]
      137 GETUPVAL                         R19 6
      138 SETTABLEKS                       R19 R18 K20 ["controller"]
      140 CALL                             R16 2 1
      141 SETTABLE                         R16 R1 R15
      142 FORGLOOP                         R10 2 [inext] ; [-23]
      144 FORGLOOP                         R3 2 [inext] ; [-135]
      146 DUPTABLE                         R3 K28 [{"rows", "count"}]
      147 SETTABLEKS                       R1 R3 K26 ["rows"]
      149 SETTABLEKS                       R2 R3 K27 ["count"]
      151 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["localization"]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R3 R2 K1 ["tree"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K2 ["useState"]
        9 LOADK                            R5 K3 [""]
       10 CALL                             R4 1 2
       11 GETTABLEKS                       R6 R2 K4 ["expanded"]
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R7 R7 K5 ["useMemo"]
       16 NEWCLOSURE                       R8 P0
       17 CAPTURE                          VAL R2
       18 NEWTABLE                         R9 0 5
       20 GETTABLEKS                       R10 R2 K6 ["toggleNode"]
       22 GETTABLEKS                       R11 R2 K7 ["toggleHighlight"]
       24 GETTABLEKS                       R12 R2 K8 ["isHighlighted"]
       26 GETTABLEKS                       R13 R2 K9 ["openScript"]
       28 GETTABLEKS                       R14 R2 K10 ["toggleExpanded"]
       30 SETLIST                          R9 R10 5 [1]
       32 CALL                             R7 2 1
       33 GETUPVAL                         R8 1
       34 GETTABLEKS                       R8 R8 K5 ["useMemo"]
       36 NEWCLOSURE                       R9 P1
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R6
       40 CAPTURE                          UPVAL U2
       41 CAPTURE                          UPVAL U1
       42 CAPTURE                          UPVAL U3
       43 CAPTURE                          VAL R7
       44 CAPTURE                          VAL R1
       45 NEWTABLE                         R10 0 5
       47 MOVE                             R11 R3
       48 MOVE                             R12 R4
       49 MOVE                             R13 R6
       50 MOVE                             R14 R7
       51 MOVE                             R15 R1
       52 SETLIST                          R10 R11 5 [1]
       54 CALL                             R8 2 1
       55 GETTABLEKS                       R9 R8 K11 ["rows"]
       57 GETTABLEKS                       R10 R8 K12 ["count"]
       59 NEWTABLE                         R11 4 0
       61 LENGTH                           R12 R3
       62 LOADN                            R13 0
       63 JUMPIFNOTLT                      R13 R12 ; [+60]
       65 GETUPVAL                         R12 1
       66 GETTABLEKS                       R12 R12 K13 ["createElement"]
       68 GETUPVAL                         R13 4
       69 GETTABLEKS                       R13 R13 K14 ["View"]
       71 DUPTABLE                         R14 K19 [{["LayoutOrder"] = 1, ["tag"] = "size-full-0 auto-y padding-xsmall"}]
       72 DUPTABLE                         R15 K21 [{"Input"}]
       73 GETUPVAL                         R16 1
       74 GETTABLEKS                       R16 R16 K13 ["createElement"]
       76 GETUPVAL                         R17 4
       77 GETTABLEKS                       R17 R17 K22 ["TextInput"]
       79 DUPTABLE                         R18 K34 [{["testId"] = "--collections-filter", ["text"], ["placeholder"], ["label"] = "", ["size"], ["variant"], ["hasClearButton"] = True, ["width"], ["onChanged"]}]
       80 SETTABLEKS                       R4 R18 K25 ["text"]
       82 LOADK                            R21 K35 ["App"]
       83 LOADK                            R22 K36 ["FilterPlaceholder"]
       84 NAMECALL                         R19 R1 K37 ["getText"]
       86 CALL                             R19 3 1
       87 SETTABLEKS                       R19 R18 K26 ["placeholder"]
       89 GETUPVAL                         R19 4
       90 GETTABLEKS                       R19 R19 K38 ["Enums"]
       92 GETTABLEKS                       R19 R19 K39 ["InputSize"]
       94 GETTABLEKS                       R19 R19 K40 ["XSmall"]
       96 SETTABLEKS                       R19 R18 K28 ["size"]
       98 GETUPVAL                         R19 4
       99 GETTABLEKS                       R19 R19 K38 ["Enums"]
      101 GETTABLEKS                       R19 R19 K41 ["InputVariant"]
      103 GETTABLEKS                       R19 R19 K42 ["Contrast"]
      105 SETTABLEKS                       R19 R18 K29 ["variant"]
      107 GETIMPORT                        R19 K45 [UDim.new]
      109 LOADN                            R20 1
      110 LOADN                            R21 0
      111 CALL                             R19 2 1
      112 SETTABLEKS                       R19 R18 K32 ["width"]
      114 NEWCLOSURE                       R19 P2
      115 CAPTURE                          VAL R5
      116 SETTABLEKS                       R19 R18 K33 ["onChanged"]
      118 CALL                             R16 2 1
      119 SETTABLEKS                       R16 R15 K20 ["Input"]
      121 CALL                             R12 3 1
      122 SETTABLEKS                       R12 R11 K46 ["Search"]
      124 JUMPIFNOTEQKN                    R10 K47 [0] ; [+33]
      126 LENGTH                           R12 R3
      127 JUMPIFNOTEQKN                    R12 K47 [0] ; [+30]
      129 GETUPVAL                         R12 1
      130 GETTABLEKS                       R12 R12 K13 ["createElement"]
      132 GETUPVAL                         R13 4
      133 GETTABLEKS                       R13 R13 K14 ["View"]
      135 DUPTABLE                         R14 K50 [{["LayoutOrder"] = 2, ["tag"] = "col align-x-center align-y-center grow size-full-0"}]
      136 DUPTABLE                         R15 K52 [{"Text"}]
      137 GETUPVAL                         R16 1
      138 GETTABLEKS                       R16 R16 K13 ["createElement"]
      140 GETUPVAL                         R17 4
      141 GETTABLEKS                       R17 R17 K51 ["Text"]
      143 DUPTABLE                         R18 K55 [{["testId"] = "--collections-empty", ["Text"], ["tag"] = "auto-xy text-body-small text-align-x-center content-muted"}]
      144 LOADK                            R21 K35 ["App"]
      145 LOADK                            R22 K56 ["NoCollections"]
      146 NAMECALL                         R19 R1 K37 ["getText"]
      148 CALL                             R19 3 1
      149 SETTABLEKS                       R19 R18 K51 ["Text"]
      151 CALL                             R16 2 1
      152 SETTABLEKS                       R16 R15 K51 ["Text"]
      154 CALL                             R12 3 1
      155 SETTABLEKS                       R12 R11 K57 ["Empty"]
      157 JUMP                             ; [+34]
      158 GETUPVAL                         R12 1
      159 GETTABLEKS                       R12 R12 K13 ["createElement"]
      161 GETUPVAL                         R13 4
      162 GETTABLEKS                       R13 R13 K58 ["ScrollView"]
      164 DUPTABLE                         R14 K62 [{["LayoutOrder"] = 2, ["tag"] = "grow size-full-0", ["layout"], ["scroll"]}]
      165 DUPTABLE                         R15 K64 [{"FillDirection"}]
      166 GETIMPORT                        R16 K67 [Enum.FillDirection.Vertical]
      168 SETTABLEKS                       R16 R15 K63 ["FillDirection"]
      170 SETTABLEKS                       R15 R14 K60 ["layout"]
      172 DUPTABLE                         R15 K71 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      173 GETIMPORT                        R16 K74 [Enum.AutomaticSize.Y]
      175 SETTABLEKS                       R16 R15 K68 ["AutomaticCanvasSize"]
      177 GETIMPORT                        R16 K76 [UDim2.new]
      179 CALL                             R16 0 1
      180 SETTABLEKS                       R16 R15 K69 ["CanvasSize"]
      182 GETIMPORT                        R16 K77 [Enum.ScrollingDirection.Y]
      184 SETTABLEKS                       R16 R15 K70 ["ScrollingDirection"]
      186 SETTABLEKS                       R15 R14 K61 ["scroll"]
      188 MOVE                             R15 R9
      189 CALL                             R12 3 1
      190 SETTABLEKS                       R12 R11 K78 ["Content"]
      192 GETUPVAL                         R12 1
      193 GETTABLEKS                       R12 R12 K13 ["createElement"]
      195 GETUPVAL                         R13 4
      196 GETTABLEKS                       R13 R13 K14 ["View"]
      198 DUPTABLE                         R14 K80 [{["tag"] = "col size-full-full bg-surface-0"}]
      199 MOVE                             R15 R11
      200 CALL                             R12 3 -1
      201 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CollectionDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Host"]
       27 GETTABLEKS                       R4 R4 K11 ["CollectionsProvider"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Host"]
       36 GETTABLEKS                       R5 R5 K12 ["Components"]
       38 GETTABLEKS                       R5 R5 K13 ["Row"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K9 ["Src"]
       45 GETTABLEKS                       R6 R6 K10 ["Host"]
       47 GETTABLEKS                       R6 R6 K14 ["optimisticState"]
       49 CALL                             R5 1 1
       50 GETTABLEKS                       R6 R3 K15 ["useCollections"]
       52 GETTABLEKS                       R7 R5 K16 ["nodeKey"]
       54 DUPCLOSURE                       R8 K17 [PROTO_4]
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R1
       60 RETURN                           R8 1
