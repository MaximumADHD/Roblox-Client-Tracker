PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+9]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["current"]
        5 JUMPIFNOTEQKS                    R0 K1 [""] ; [+14]
        7 GETUPVAL                         R0 2
        8 GETUPVAL                         R1 3
        9 CALL                             R0 1 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 1
       12 GETTABLEKS                       R0 R0 K0 ["current"]
       14 GETUPVAL                         R1 3
       15 JUMPIFNOTEQ                      R0 R1 ; [+4]
       17 GETUPVAL                         R0 2
       18 LOADK                            R1 K1 [""]
       19 CALL                             R0 1 0
       20 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["showScriptMenu"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 LOADK                            R5 K1 ["App"]
        6 LOADK                            R6 K2 ["GoToScript"]
        7 NAMECALL                         R3 R3 K3 ["getText"]
        9 CALL                             R3 3 -1
       10 CALL                             R1 -1 0
       11 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R0 K6 [{"toggleNode", "toggleHighlight", "isHighlighted", "openScript", "showScriptMenu", "onToggleExpanded"}]
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
       21 NEWCLOSURE                       R1 P0
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          UPVAL U1
       24 SETTABLEKS                       R1 R0 K4 ["showScriptMenu"]
       26 GETUPVAL                         R1 0
       27 GETTABLEKS                       R1 R1 K7 ["toggleExpanded"]
       29 SETTABLEKS                       R1 R0 K5 ["onToggleExpanded"]
       31 RETURN                           R0 1

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+23]
        2 LOADB                            R1 1
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["mode"]
        6 JUMPIFEQKNIL                     R2 ; [+7]
        8 GETTABLEKS                       R2 R0 K1 ["contains"]
       10 JUMPIFEQKB                       R2 TRUE ; [+2]
       12 LOADB                            R1 0 +1
       13 LOADB                            R1 1
       14 MOVE                             R2 R1
       15 JUMPIFNOT                        R1 ; [+6]
       16 GETTABLEKS                       R3 R0 K2 ["children"]
       18 JUMPIF                           R3 ; [+5]
       19 NEWTABLE                         R3 0 0
       21 RETURN                           R2 2
       22 NEWTABLE                         R3 0 0
       24 RETURN                           R2 2
       25 NEWTABLE                         R1 0 0
       27 GETTABLEKS                       R2 R0 K2 ["children"]
       29 JUMPIFNOT                        R2 ; [+39]
       30 GETIMPORT                        R2 K4 [ipairs]
       32 GETTABLEKS                       R3 R0 K2 ["children"]
       34 CALL                             R2 1 3
       35 FORGPREP_INEXT                   R2
       36 GETTABLEKS                       R8 R6 K5 ["text"]
       38 LOADB                            R7 1
       39 GETUPVAL                         R9 2
       40 JUMPIFEQKS                       R9 K6 [""] ; [+18]
       42 GETIMPORT                        R9 K9 [string.find]
       44 GETIMPORT                        R10 K11 [string.lower]
       46 ORK                              R11 R8 K6 [""]
       47 CALL                             R10 1 1
       48 GETIMPORT                        R11 K11 [string.lower]
       50 GETUPVAL                         R12 2
       51 CALL                             R11 1 1
       52 LOADN                            R12 1
       53 LOADB                            R13 1
       54 CALL                             R9 4 1
       55 JUMPIFNOTEQKNIL                  R9 ; [+2]
       57 LOADB                            R7 0 +1
       58 LOADB                            R7 1
       59 JUMPIFNOT                        R7 ; [+7]
       60 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       62 MOVE                             R8 R1
       63 MOVE                             R9 R6
       64 GETIMPORT                        R7 K14 [table.insert]
       66 CALL                             R7 2 0
       67 FORGLOOP                         R2 2 [inext] ; [-32]
       69 GETTABLEKS                       R3 R0 K5 ["text"]
       71 LOADB                            R2 1
       72 GETUPVAL                         R4 2
       73 JUMPIFEQKS                       R4 K6 [""] ; [+18]
       75 GETIMPORT                        R4 K9 [string.find]
       77 GETIMPORT                        R5 K11 [string.lower]
       79 ORK                              R6 R3 K6 [""]
       80 CALL                             R5 1 1
       81 GETIMPORT                        R6 K11 [string.lower]
       83 GETUPVAL                         R7 2
       84 CALL                             R6 1 1
       85 LOADN                            R7 1
       86 LOADB                            R8 1
       87 CALL                             R4 4 1
       88 JUMPIFNOTEQKNIL                  R4 ; [+2]
       90 LOADB                            R2 0 +1
       91 LOADB                            R2 1
       92 JUMPIF                           R2 ; [+6]
       93 LENGTH                           R3 R1
       94 LOADN                            R4 0
       95 JUMPIFLT                         R4 R3 ; [+2]
       97 LOADB                            R2 0 +1
       98 LOADB                            R2 1
       99 MOVE                             R3 R1
      100 RETURN                           R2 2

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["parse"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETTABLEKS                       R2 R0 K1 ["kind"]
        7 JUMPIFEQKS                       R2 K2 ["contains"] ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U1
       13 NEWCLOSURE                       R3 P1
       14 CAPTURE                          VAL R1
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U1
       17 NEWTABLE                         R4 0 0
       19 LOADN                            R5 0
       20 GETIMPORT                        R6 K4 [ipairs]
       22 GETUPVAL                         R7 2
       23 CALL                             R6 1 3
       24 FORGPREP_INEXT                   R6
       25 MOVE                             R11 R3
       26 MOVE                             R12 R10
       27 CALL                             R11 1 2
       28 JUMPIFNOT                        R11 ; [+65]
       29 ADDK                             R5 R5 K5 [1]
       30 GETUPVAL                         R15 3
       31 GETUPVAL                         R16 4
       32 MOVE                             R17 R10
       33 CALL                             R16 1 1
       34 GETTABLE                         R14 R15 R16
       35 JUMPIFEQKB                       R14 TRUE ; [+2]
       37 LOADB                            R13 0 +1
       38 LOADB                            R13 1
       39 GETUPVAL                         R14 4
       40 MOVE                             R15 R10
       41 CALL                             R14 1 1
       42 GETUPVAL                         R15 5
       43 GETTABLEKS                       R15 R15 K6 ["createElement"]
       45 GETUPVAL                         R16 6
       46 DUPTABLE                         R17 K14 [{["node"], ["depth"] = 0, ["order"], ["expanded"], ["controller"], ["localization"]}]
       47 SETTABLEKS                       R10 R17 K7 ["node"]
       49 SETTABLEKS                       R5 R17 K10 ["order"]
       51 SETTABLEKS                       R13 R17 K11 ["expanded"]
       53 GETUPVAL                         R18 7
       54 SETTABLEKS                       R18 R17 K12 ["controller"]
       56 GETUPVAL                         R18 8
       57 SETTABLEKS                       R18 R17 K13 ["localization"]
       59 CALL                             R15 2 1
       60 SETTABLE                         R15 R4 R14
       61 JUMPIFNOT                        R13 ; [+32]
       62 GETIMPORT                        R14 K4 [ipairs]
       64 MOVE                             R15 R12
       65 CALL                             R14 1 3
       66 FORGPREP_INEXT                   R14
       67 ADDK                             R5 R5 K5 [1]
       68 GETUPVAL                         R19 4
       69 MOVE                             R20 R18
       70 CALL                             R19 1 1
       71 GETUPVAL                         R20 5
       72 GETTABLEKS                       R20 R20 K6 ["createElement"]
       74 GETUPVAL                         R21 6
       75 DUPTABLE                         R22 K16 [{["node"], ["depth"] = 1, ["order"], ["parentEnabled"], ["controller"], ["localization"]}]
       76 SETTABLEKS                       R18 R22 K7 ["node"]
       78 SETTABLEKS                       R5 R22 K10 ["order"]
       80 GETTABLEKS                       R23 R10 K17 ["enabled"]
       82 SETTABLEKS                       R23 R22 K15 ["parentEnabled"]
       84 GETUPVAL                         R23 7
       85 SETTABLEKS                       R23 R22 K12 ["controller"]
       87 GETUPVAL                         R23 8
       88 SETTABLEKS                       R23 R22 K13 ["localization"]
       90 CALL                             R20 2 1
       91 SETTABLE                         R20 R4 R19
       92 FORGLOOP                         R14 2 [inext] ; [-26]
       94 FORGLOOP                         R6 2 [inext] ; [-70]
       96 DUPTABLE                         R6 K20 [{"rows", "count"}]
       97 SETTABLEKS                       R4 R6 K18 ["rows"]
       99 SETTABLEKS                       R5 R6 K19 ["count"]
      101 RETURN                           R6 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["localization"]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R3 R2 K1 ["tree"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K2 ["useState"]
        9 LOADK                            R5 K3 [""]
       10 CALL                             R4 1 2
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K4 ["useRef"]
       14 MOVE                             R7 R4
       15 CALL                             R6 1 1
       16 GETUPVAL                         R7 1
       17 GETTABLEKS                       R7 R7 K5 ["useEffect"]
       19 NEWCLOSURE                       R8 P0
       20 CAPTURE                          VAL R6
       21 CAPTURE                          VAL R4
       22 NEWTABLE                         R9 0 1
       24 MOVE                             R10 R4
       25 SETLIST                          R9 R10 1 [1]
       27 CALL                             R7 2 0
       28 GETTABLEKS                       R7 R2 K6 ["setSearchQuery"]
       30 GETUPVAL                         R8 1
       31 GETTABLEKS                       R8 R8 K5 ["useEffect"]
       33 NEWCLOSURE                       R9 P1
       34 CAPTURE                          VAL R7
       35 CAPTURE                          VAL R4
       36 NEWTABLE                         R10 0 2
       38 MOVE                             R11 R4
       39 MOVE                             R12 R7
       40 SETLIST                          R10 R11 2 [1]
       42 CALL                             R8 2 0
       43 GETTABLEKS                       R8 R2 K7 ["selectionActive"]
       45 GETUPVAL                         R9 1
       46 GETTABLEKS                       R9 R9 K5 ["useEffect"]
       48 NEWCLOSURE                       R10 P2
       49 CAPTURE                          VAL R8
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R5
       52 CAPTURE                          UPVAL U2
       53 NEWTABLE                         R11 0 1
       55 MOVE                             R12 R8
       56 SETLIST                          R11 R12 1 [1]
       58 CALL                             R9 2 0
       59 GETTABLEKS                       R9 R2 K8 ["expanded"]
       61 GETUPVAL                         R10 1
       62 GETTABLEKS                       R10 R10 K9 ["useMemo"]
       64 NEWCLOSURE                       R11 P3
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R1
       67 NEWTABLE                         R12 0 7
       69 GETTABLEKS                       R13 R2 K10 ["toggleNode"]
       71 GETTABLEKS                       R14 R2 K11 ["toggleHighlight"]
       73 GETTABLEKS                       R15 R2 K12 ["isHighlighted"]
       75 GETTABLEKS                       R16 R2 K13 ["openScript"]
       77 GETTABLEKS                       R17 R2 K14 ["showScriptMenu"]
       79 GETTABLEKS                       R18 R2 K15 ["toggleExpanded"]
       81 MOVE                             R19 R1
       82 SETLIST                          R12 R13 7 [1]
       84 CALL                             R10 2 1
       85 GETUPVAL                         R11 1
       86 GETTABLEKS                       R11 R11 K9 ["useMemo"]
       88 NEWCLOSURE                       R12 P4
       89 CAPTURE                          UPVAL U3
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R9
       93 CAPTURE                          UPVAL U4
       94 CAPTURE                          UPVAL U1
       95 CAPTURE                          UPVAL U5
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R1
       98 NEWTABLE                         R13 0 5
      100 MOVE                             R14 R3
      101 MOVE                             R15 R4
      102 MOVE                             R16 R9
      103 MOVE                             R17 R10
      104 MOVE                             R18 R1
      105 SETLIST                          R13 R14 5 [1]
      107 CALL                             R11 2 1
      108 GETTABLEKS                       R12 R11 K16 ["rows"]
      110 GETTABLEKS                       R13 R11 K17 ["count"]
      112 NEWTABLE                         R14 4 0
      114 LENGTH                           R15 R3
      115 LOADN                            R16 0
      116 JUMPIFNOTLT                      R16 R15 ; [+60]
      118 GETUPVAL                         R15 1
      119 GETTABLEKS                       R15 R15 K18 ["createElement"]
      121 GETUPVAL                         R16 6
      122 GETTABLEKS                       R16 R16 K19 ["View"]
      124 DUPTABLE                         R17 K24 [{["LayoutOrder"] = 1, ["tag"] = "size-full-0 auto-y padding-xsmall"}]
      125 DUPTABLE                         R18 K26 [{"Input"}]
      126 GETUPVAL                         R19 1
      127 GETTABLEKS                       R19 R19 K18 ["createElement"]
      129 GETUPVAL                         R20 6
      130 GETTABLEKS                       R20 R20 K27 ["TextInput"]
      132 DUPTABLE                         R21 K39 [{["testId"] = "--collections-filter", ["text"], ["placeholder"], ["label"] = "", ["size"], ["variant"], ["hasClearButton"] = True, ["width"], ["onChanged"]}]
      133 SETTABLEKS                       R4 R21 K30 ["text"]
      135 LOADK                            R24 K40 ["App"]
      136 LOADK                            R25 K41 ["FilterPlaceholder"]
      137 NAMECALL                         R22 R1 K42 ["getText"]
      139 CALL                             R22 3 1
      140 SETTABLEKS                       R22 R21 K31 ["placeholder"]
      142 GETUPVAL                         R22 6
      143 GETTABLEKS                       R22 R22 K43 ["Enums"]
      145 GETTABLEKS                       R22 R22 K44 ["InputSize"]
      147 GETTABLEKS                       R22 R22 K45 ["XSmall"]
      149 SETTABLEKS                       R22 R21 K33 ["size"]
      151 GETUPVAL                         R22 6
      152 GETTABLEKS                       R22 R22 K43 ["Enums"]
      154 GETTABLEKS                       R22 R22 K46 ["InputVariant"]
      156 GETTABLEKS                       R22 R22 K47 ["Contrast"]
      158 SETTABLEKS                       R22 R21 K34 ["variant"]
      160 GETIMPORT                        R22 K50 [UDim.new]
      162 LOADN                            R23 1
      163 LOADN                            R24 0
      164 CALL                             R22 2 1
      165 SETTABLEKS                       R22 R21 K37 ["width"]
      167 NEWCLOSURE                       R22 P5
      168 CAPTURE                          VAL R5
      169 SETTABLEKS                       R22 R21 K38 ["onChanged"]
      171 CALL                             R19 2 1
      172 SETTABLEKS                       R19 R18 K25 ["Input"]
      174 CALL                             R15 3 1
      175 SETTABLEKS                       R15 R14 K51 ["Search"]
      177 JUMPIFNOTEQKN                    R13 K52 [0] ; [+33]
      179 LENGTH                           R15 R3
      180 JUMPIFNOTEQKN                    R15 K52 [0] ; [+30]
      182 GETUPVAL                         R15 1
      183 GETTABLEKS                       R15 R15 K18 ["createElement"]
      185 GETUPVAL                         R16 6
      186 GETTABLEKS                       R16 R16 K19 ["View"]
      188 DUPTABLE                         R17 K55 [{["LayoutOrder"] = 2, ["tag"] = "col align-x-center align-y-center grow size-full-0"}]
      189 DUPTABLE                         R18 K57 [{"Text"}]
      190 GETUPVAL                         R19 1
      191 GETTABLEKS                       R19 R19 K18 ["createElement"]
      193 GETUPVAL                         R20 6
      194 GETTABLEKS                       R20 R20 K56 ["Text"]
      196 DUPTABLE                         R21 K60 [{["testId"] = "--collections-empty", ["Text"], ["tag"] = "auto-xy text-body-small text-align-x-center content-muted"}]
      197 LOADK                            R24 K40 ["App"]
      198 LOADK                            R25 K61 ["NoCollections"]
      199 NAMECALL                         R22 R1 K42 ["getText"]
      201 CALL                             R22 3 1
      202 SETTABLEKS                       R22 R21 K56 ["Text"]
      204 CALL                             R19 2 1
      205 SETTABLEKS                       R19 R18 K56 ["Text"]
      207 CALL                             R15 3 1
      208 SETTABLEKS                       R15 R14 K62 ["Empty"]
      210 JUMP                             ; [+34]
      211 GETUPVAL                         R15 1
      212 GETTABLEKS                       R15 R15 K18 ["createElement"]
      214 GETUPVAL                         R16 6
      215 GETTABLEKS                       R16 R16 K63 ["ScrollView"]
      217 DUPTABLE                         R17 K67 [{["LayoutOrder"] = 2, ["tag"] = "grow size-full-0", ["layout"], ["scroll"]}]
      218 DUPTABLE                         R18 K69 [{"FillDirection"}]
      219 GETIMPORT                        R19 K72 [Enum.FillDirection.Vertical]
      221 SETTABLEKS                       R19 R18 K68 ["FillDirection"]
      223 SETTABLEKS                       R18 R17 K65 ["layout"]
      225 DUPTABLE                         R18 K76 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      226 GETIMPORT                        R19 K79 [Enum.AutomaticSize.Y]
      228 SETTABLEKS                       R19 R18 K73 ["AutomaticCanvasSize"]
      230 GETIMPORT                        R19 K81 [UDim2.new]
      232 CALL                             R19 0 1
      233 SETTABLEKS                       R19 R18 K74 ["CanvasSize"]
      235 GETIMPORT                        R19 K82 [Enum.ScrollingDirection.Y]
      237 SETTABLEKS                       R19 R18 K75 ["ScrollingDirection"]
      239 SETTABLEKS                       R18 R17 K66 ["scroll"]
      241 MOVE                             R18 R12
      242 CALL                             R15 3 1
      243 SETTABLEKS                       R15 R14 K83 ["Content"]
      245 GETUPVAL                         R15 1
      246 GETTABLEKS                       R15 R15 K18 ["createElement"]
      248 GETUPVAL                         R16 6
      249 GETTABLEKS                       R16 R16 K19 ["View"]
      251 DUPTABLE                         R17 K85 [{["tag"] = "col size-full-full bg-surface-0"}]
      252 MOVE                             R18 R14
      253 CALL                             R15 3 -1
      254 RETURN                           R15 -1

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
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K9 ["Src"]
       54 GETTABLEKS                       R7 R7 K10 ["Host"]
       56 GETTABLEKS                       R7 R7 K15 ["searchQuery"]
       58 CALL                             R6 1 1
       59 GETTABLEKS                       R7 R3 K16 ["useCollections"]
       61 GETTABLEKS                       R8 R5 K17 ["nodeKey"]
       63 GETTABLEKS                       R9 R6 K18 ["SELECTION_QUERY"]
       65 DUPCLOSURE                       R10 K19 [PROTO_9]
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R1
       73 RETURN                           R10 1
