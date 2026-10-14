PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["View"]
        6 DUPTABLE                         R3 K6 [{["LayoutOrder"], ["tag"] = "row align-y-center size-full-0 auto-y padding-xsmall radius-small", ["onActivated"]}]
        7 GETTABLEKS                       R4 R0 K2 ["LayoutOrder"]
        9 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       11 GETTABLEKS                       R4 R0 K5 ["onActivated"]
       13 SETTABLEKS                       R4 R3 K5 ["onActivated"]
       15 DUPTABLE                         R4 K9 [{"SearchText", "AssetTypeText"}]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K0 ["createElement"]
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R6 R6 K10 ["Text"]
       22 DUPTABLE                         R7 K13 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "fill auto-y text-body-small text-align-x-left text-truncate-split"}]
       23 GETTABLEKS                       R8 R0 K14 ["SearchTerm"]
       25 SETTABLEKS                       R8 R7 K10 ["Text"]
       27 CALL                             R5 2 1
       28 SETTABLEKS                       R5 R4 K7 ["SearchText"]
       30 GETTABLEKS                       R6 R0 K15 ["AssetType"]
       32 JUMPIFNOT                        R6 ; [+13]
       33 GETUPVAL                         R5 0
       34 GETTABLEKS                       R5 R5 K0 ["createElement"]
       36 GETUPVAL                         R6 1
       37 GETTABLEKS                       R6 R6 K10 ["Text"]
       39 DUPTABLE                         R7 K18 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "auto-xy text-caption-small text-align-x-left content-muted"}]
       40 GETTABLEKS                       R8 R0 K15 ["AssetType"]
       42 SETTABLEKS                       R8 R7 K10 ["Text"]
       44 CALL                             R5 2 1
       45 JUMP                             ; [+1]
       46 LOADNIL                          R5
       47 SETTABLEKS                       R5 R4 K8 ["AssetTypeText"]
       49 CALL                             R1 3 -1
       50 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnSearchRequested"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 NAMECALL                         R0 R0 K1 ["Connect"]
        7 CALL                             R0 2 1
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          VAL R0
       10 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 LOADK                            R2 K0 [""]
        7 NAMECALL                         R0 R0 K1 ["setPendingSearchTerm"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+6]
        2 GETTABLEKS                       R2 R0 K0 ["SearchOptions"]
        4 JUMPIFNOTEQKNIL                  R2 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+12]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R2 2
        4 GETTABLEKS                       R2 R2 K0 ["SearchTerm"]
        6 NAMECALL                         R0 R0 K1 ["setPendingSearchTerm"]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 1
       10 NAMECALL                         R0 R0 K2 ["requestSearch"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R0 1
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R2 R2 K0 ["SearchTerm"]
       18 NAMECALL                         R0 R0 K1 ["setPendingSearchTerm"]
       20 CALL                             R0 2 0
       21 GETUPVAL                         R0 1
       22 GETUPVAL                         R2 2
       23 GETTABLEKS                       R2 R2 K3 ["SearchOptions"]
       25 NAMECALL                         R0 R0 K4 ["setSearchOptions"]
       27 CALL                             R0 2 0
       28 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K5 [{"LayoutOrder", "SearchTerm", "AssetType", "onActivated"}]
        5 SETTABLEKS                       R1 R4 K1 ["LayoutOrder"]
        7 GETTABLEKS                       R5 R0 K2 ["SearchTerm"]
        9 SETTABLEKS                       R5 R4 K2 ["SearchTerm"]
       11 GETUPVAL                         R6 2
       12 JUMPIF                           R6 ; [+13]
       13 GETTABLEKS                       R6 R0 K6 ["SearchOptions"]
       15 JUMPIFNOT                        R6 ; [+10]
       16 GETUPVAL                         R5 3
       17 LOADK                            R7 K3 ["AssetType"]
       18 GETTABLEKS                       R8 R0 K6 ["SearchOptions"]
       20 GETTABLEKS                       R8 R8 K3 ["AssetType"]
       22 NAMECALL                         R5 R5 K7 ["getText"]
       24 CALL                             R5 3 1
       25 JUMP                             ; [+1]
       26 LOADNIL                          R5
       27 SETTABLEKS                       R5 R4 K3 ["AssetType"]
       29 NEWCLOSURE                       R5 P0
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R5 R4 K4 ["onActivated"]
       35 CALL                             R2 2 -1
       36 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["filter"]
        3 GETUPVAL                         R2 1
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U2
        6 CALL                             R1 2 1
        7 GETUPVAL                         R2 3
        8 GETTABLEKS                       R2 R2 K1 ["createElement"]
       10 GETUPVAL                         R3 4
       11 GETTABLEKS                       R3 R3 K2 ["Popover"]
       13 GETTABLEKS                       R3 R3 K3 ["Root"]
       15 DUPTABLE                         R4 K5 [{"isOpen"}]
       16 GETUPVAL                         R5 5
       17 SETTABLEKS                       R5 R4 K4 ["isOpen"]
       19 DUPTABLE                         R5 K8 [{"Anchor", "Content"}]
       20 GETUPVAL                         R6 3
       21 GETTABLEKS                       R6 R6 K1 ["createElement"]
       23 GETUPVAL                         R7 4
       24 GETTABLEKS                       R7 R7 K2 ["Popover"]
       26 GETTABLEKS                       R7 R7 K6 ["Anchor"]
       28 DUPTABLE                         R8 K10 [{"anchorRef"}]
       29 GETUPVAL                         R9 6
       30 SETTABLEKS                       R9 R8 K9 ["anchorRef"]
       32 CALL                             R6 2 1
       33 SETTABLEKS                       R6 R5 K6 ["Anchor"]
       35 GETUPVAL                         R6 3
       36 GETTABLEKS                       R6 R6 K1 ["createElement"]
       38 GETUPVAL                         R7 4
       39 GETTABLEKS                       R7 R7 K2 ["Popover"]
       41 GETTABLEKS                       R7 R7 K7 ["Content"]
       43 DUPTABLE                         R8 K16 [{["align"], ["side"], ["hasArrow"] = False, ["onPressedOutside"]}]
       44 GETUPVAL                         R9 4
       45 GETTABLEKS                       R9 R9 K17 ["Enums"]
       47 GETTABLEKS                       R9 R9 K18 ["PopoverAlign"]
       49 GETTABLEKS                       R9 R9 K19 ["Center"]
       51 SETTABLEKS                       R9 R8 K11 ["align"]
       53 GETUPVAL                         R9 4
       54 GETTABLEKS                       R9 R9 K17 ["Enums"]
       56 GETTABLEKS                       R9 R9 K20 ["PopoverSide"]
       58 GETTABLEKS                       R9 R9 K21 ["Bottom"]
       60 SETTABLEKS                       R9 R8 K12 ["side"]
       62 NEWCLOSURE                       R9 P1
       63 CAPTURE                          UPVAL U7
       64 SETTABLEKS                       R9 R8 K15 ["onPressedOutside"]
       66 GETUPVAL                         R9 3
       67 GETTABLEKS                       R9 R9 K1 ["createElement"]
       69 GETUPVAL                         R10 4
       70 GETTABLEKS                       R10 R10 K22 ["View"]
       72 DUPTABLE                         R11 K26 [{["tag"] = "col gap-small padding-small stroke-default radius-medium", ["Size"]}]
       73 GETUPVAL                         R13 8
       74 JUMPIFEQKNIL                     R13 ; [+13]
       76 GETIMPORT                        R12 K29 [UDim2.new]
       78 LOADN                            R13 0
       79 GETUPVAL                         R14 8
       80 GETTABLEKS                       R14 R14 K30 ["AbsoluteSize"]
       82 GETTABLEKS                       R14 R14 K31 ["X"]
       84 LOADN                            R15 1
       85 LOADN                            R16 0
       86 CALL                             R12 4 1
       87 JUMP                             ; [+1]
       88 LOADNIL                          R12
       89 SETTABLEKS                       R12 R11 K25 ["Size"]
       91 GETUPVAL                         R12 0
       92 GETTABLEKS                       R12 R12 K32 ["map"]
       94 MOVE                             R13 R1
       95 NEWCLOSURE                       R14 P2
       96 CAPTURE                          UPVAL U3
       97 CAPTURE                          UPVAL U9
       98 CAPTURE                          UPVAL U2
       99 CAPTURE                          UPVAL U10
      100 CAPTURE                          UPVAL U11
      101 CALL                             R12 2 -1
      102 CALL                             R9 -1 -1
      103 CALL                             R6 -1 1
      104 SETTABLEKS                       R6 R5 K7 ["Content"]
      106 CALL                             R2 3 -1
      107 RETURN                           R2 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+9]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["IsSearchRequested"]
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETUPVAL                         R0 2
        7 NAMECALL                         R0 R0 K1 ["endSearchSession"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 2
       12 LOADK                            R2 K2 [""]
       13 NAMECALL                         R0 R0 K3 ["setPendingSearchTerm"]
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 NAMECALL                         R0 R0 K0 ["requestSearch"]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 LOADB                            R1 0
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 1
        4 MOVE                             R3 R0
        5 NAMECALL                         R1 R1 K0 ["setPendingSearchTerm"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 NAMECALL                         R0 R0 K0 ["initiateSearch"]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 LOADB                            R1 1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["use"]
        7 CALL                             R3 0 1
        8 GETUPVAL                         R4 3
        9 GETTABLEKS                       R4 R4 K0 ["use"]
       11 CALL                             R4 0 1
       12 GETUPVAL                         R5 4
       13 GETTABLEKS                       R5 R5 K0 ["use"]
       15 CALL                             R5 0 1
       16 GETUPVAL                         R6 5
       17 CALL                             R6 0 1
       18 GETUPVAL                         R8 6
       19 GETUPVAL                         R9 7
       20 GETTABLEKS                       R9 R9 K1 ["IxpVariable"]
       22 GETTABLEKS                       R9 R9 K2 ["Omnisearch"]
       24 CALL                             R8 1 1
       25 GETUPVAL                         R9 7
       26 GETTABLEKS                       R9 R9 K3 ["IxpValue"]
       28 GETTABLEKS                       R9 R9 K4 ["Experiment"]
       30 JUMPIFEQ                         R8 R9 ; [+2]
       32 LOADB                            R7 0 +1
       33 LOADB                            R7 1
       34 MOVE                             R11 R6
       35 NAMECALL                         R9 R4 K5 ["getScopeRoot"]
       37 CALL                             R9 2 1
       38 OR                               R8 R9 R6
       39 MOVE                             R9 R7
       40 JUMPIFNOT                        R9 ; [+5]
       41 MOVE                             R12 R6
       42 NAMECALL                         R10 R5 K6 ["canSearchInScope"]
       44 CALL                             R10 2 1
       45 NOT                              R9 R10
       46 GETUPVAL                         R10 8
       47 MOVE                             R11 R8
       48 MOVE                             R12 R3
       49 CALL                             R10 2 1
       50 JUMPIFNOT                        R9 ; [+2]
       51 LOADK                            R11 K7 [""]
       52 JUMP                             ; [+15]
       53 JUMPIFNOT                        R7 ; [+9]
       54 LOADK                            R13 K8 ["Search"]
       55 LOADK                            R14 K9 ["Placeholder.SearchInScope"]
       56 DUPTABLE                         R15 K11 [{"scopeName"}]
       57 SETTABLEKS                       R10 R15 K10 ["scopeName"]
       59 NAMECALL                         R11 R3 K12 ["getText"]
       61 CALL                             R11 4 1
       62 JUMP                             ; [+5]
       63 LOADK                            R13 K8 ["Search"]
       64 LOADK                            R14 K13 ["Placeholder"]
       65 NAMECALL                         R11 R3 K12 ["getText"]
       67 CALL                             R11 3 1
       68 GETUPVAL                         R12 9
       69 GETTABLEKS                       R12 R12 K14 ["useState"]
       71 LOADB                            R13 0
       72 CALL                             R12 1 2
       73 GETUPVAL                         R14 9
       74 GETTABLEKS                       R14 R14 K15 ["useRef"]
       76 LOADNIL                          R15
       77 CALL                             R14 1 1
       78 GETTABLEKS                       R15 R14 K16 ["current"]
       80 GETUPVAL                         R16 9
       81 GETTABLEKS                       R16 R16 K17 ["useEffect"]
       83 NEWCLOSURE                       R17 P0
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R13
       86 NEWTABLE                         R18 0 0
       88 CALL                             R16 2 0
       89 GETUPVAL                         R16 9
       90 GETTABLEKS                       R16 R16 K17 ["useEffect"]
       92 NEWCLOSURE                       R17 P1
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R13
       95 CAPTURE                          VAL R5
       96 NEWTABLE                         R18 0 1
       98 MOVE                             R19 R9
       99 SETLIST                          R18 R19 1 [1]
      101 CALL                             R16 2 0
      102 NEWCLOSURE                       R16 P2
      103 CAPTURE                          UPVAL U10
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R7
      106 CAPTURE                          UPVAL U9
      107 CAPTURE                          UPVAL U11
      108 CAPTURE                          VAL R12
      109 CAPTURE                          VAL R14
      110 CAPTURE                          VAL R13
      111 CAPTURE                          VAL R15
      112 CAPTURE                          UPVAL U12
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R5
      115 GETUPVAL                         R17 9
      116 GETTABLEKS                       R17 R17 K18 ["createElement"]
      118 GETUPVAL                         R18 11
      119 GETTABLEKS                       R18 R18 K19 ["View"]
      121 DUPTABLE                         R19 K23 [{["LayoutOrder"], ["tag"] = "fill auto-y"}]
      122 GETTABLEKS                       R20 R0 K20 ["LayoutOrder"]
      124 SETTABLEKS                       R20 R19 K20 ["LayoutOrder"]
      126 DUPTABLE                         R20 K26 [{"SearchInput", "History"}]
      127 GETUPVAL                         R21 9
      128 GETTABLEKS                       R21 R21 K18 ["createElement"]
      130 GETUPVAL                         R22 11
      131 GETTABLEKS                       R22 R22 K27 ["TextInput"]
      133 DUPTABLE                         R23 K41 [{["label"] = "", ["leadingIcon"], ["iconTrailing"], ["placeholder"], ["text"], ["size"], ["width"], ["variant"], ["isDisabled"], ["onReturnPressed"], ["onChanged"], ["onFocusGained"], ["ref"]}]
      134 GETUPVAL                         R24 11
      135 GETTABLEKS                       R24 R24 K42 ["Enums"]
      137 GETTABLEKS                       R24 R24 K43 ["IconName"]
      139 GETTABLEKS                       R24 R24 K44 ["MagnifyingGlass"]
      141 SETTABLEKS                       R24 R23 K29 ["leadingIcon"]
      143 JUMPIF                           R9 ; [+23]
      144 GETTABLEKS                       R26 R1 K45 ["PendingSearchTerm"]
      146 LENGTH                           R25 R26
      147 LOADN                            R26 0
      148 JUMPIFNOTLT                      R26 R25 ; [+18]
      150 DUPTABLE                         R24 K48 [{"name", "onActivated"}]
      151 GETUPVAL                         R25 11
      152 GETTABLEKS                       R25 R25 K42 ["Enums"]
      154 GETTABLEKS                       R25 R25 K43 ["IconName"]
      156 GETTABLEKS                       R25 R25 K49 ["CircleX"]
      158 SETTABLEKS                       R25 R24 K46 ["name"]
      160 NEWCLOSURE                       R25 P3
      161 CAPTURE                          VAL R7
      162 CAPTURE                          VAL R1
      163 CAPTURE                          VAL R5
      164 SETTABLEKS                       R25 R24 K47 ["onActivated"]
      166 JUMP                             ; [+1]
      167 LOADNIL                          R24
      168 SETTABLEKS                       R24 R23 K30 ["iconTrailing"]
      170 SETTABLEKS                       R11 R23 K31 ["placeholder"]
      172 GETTABLEKS                       R24 R1 K45 ["PendingSearchTerm"]
      174 SETTABLEKS                       R24 R23 K32 ["text"]
      176 GETUPVAL                         R24 11
      177 GETTABLEKS                       R24 R24 K42 ["Enums"]
      179 GETTABLEKS                       R24 R24 K50 ["InputSize"]
      181 GETTABLEKS                       R24 R24 K51 ["XSmall"]
      183 SETTABLEKS                       R24 R23 K33 ["size"]
      185 GETIMPORT                        R24 K54 [UDim.new]
      187 LOADN                            R25 1
      188 LOADN                            R26 0
      189 CALL                             R24 2 1
      190 SETTABLEKS                       R24 R23 K34 ["width"]
      192 GETUPVAL                         R24 11
      193 GETTABLEKS                       R24 R24 K42 ["Enums"]
      195 GETTABLEKS                       R24 R24 K55 ["InputVariant"]
      197 GETTABLEKS                       R24 R24 K56 ["Standard"]
      199 SETTABLEKS                       R24 R23 K35 ["variant"]
      201 SETTABLEKS                       R9 R23 K36 ["isDisabled"]
      203 NEWCLOSURE                       R24 P4
      204 CAPTURE                          VAL R9
      205 CAPTURE                          VAL R5
      206 CAPTURE                          VAL R13
      207 SETTABLEKS                       R24 R23 K37 ["onReturnPressed"]
      209 NEWCLOSURE                       R24 P5
      210 CAPTURE                          VAL R9
      211 CAPTURE                          VAL R5
      212 SETTABLEKS                       R24 R23 K38 ["onChanged"]
      214 NEWCLOSURE                       R24 P6
      215 CAPTURE                          VAL R9
      216 CAPTURE                          VAL R5
      217 CAPTURE                          VAL R13
      218 SETTABLEKS                       R24 R23 K39 ["onFocusGained"]
      220 SETTABLEKS                       R14 R23 K40 ["ref"]
      222 CALL                             R21 2 1
      223 SETTABLEKS                       R21 R20 K24 ["SearchInput"]
      225 LENGTH                           R22 R2
      226 LOADN                            R23 0
      227 JUMPIFNOTLT                      R23 R22 ; [+7]
      229 GETUPVAL                         R21 9
      230 GETTABLEKS                       R21 R21 K18 ["createElement"]
      232 MOVE                             R22 R16
      233 CALL                             R21 1 1
      234 JUMP                             ; [+1]
      235 LOADNIL                          R21
      236 SETTABLEKS                       R21 R20 K25 ["History"]
      238 CALL                             R17 3 -1
      239 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Packages"]
       25 GETTABLEKS                       R4 R4 K10 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Packages"]
       32 GETTABLEKS                       R5 R5 K11 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K8 ["Packages"]
       39 GETTABLEKS                       R6 R6 K12 ["Dash"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R3 K13 ["ContextServices"]
       44 GETTABLEKS                       R7 R6 K14 ["Localization"]
       46 GETIMPORT                        R8 K5 [require]
       48 GETTABLEKS                       R9 R0 K6 ["Src"]
       50 GETTABLEKS                       R9 R9 K15 ["Controllers"]
       52 GETTABLEKS                       R9 R9 K16 ["ExplorerController"]
       54 CALL                             R8 1 1
       55 GETIMPORT                        R9 K5 [require]
       57 GETTABLEKS                       R10 R0 K6 ["Src"]
       59 GETTABLEKS                       R10 R10 K15 ["Controllers"]
       61 GETTABLEKS                       R10 R10 K17 ["SearchController"]
       63 CALL                             R9 1 1
       64 GETIMPORT                        R10 K5 [require]
       66 GETTABLEKS                       R11 R0 K6 ["Src"]
       68 GETTABLEKS                       R11 R11 K18 ["Hooks"]
       70 GETTABLEKS                       R11 R11 K19 ["useCurrentScope"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K5 [require]
       75 GETTABLEKS                       R12 R0 K6 ["Src"]
       77 GETTABLEKS                       R12 R12 K18 ["Hooks"]
       79 GETTABLEKS                       R12 R12 K20 ["useSearchInfo"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K5 [require]
       84 GETTABLEKS                       R13 R0 K6 ["Src"]
       86 GETTABLEKS                       R13 R13 K18 ["Hooks"]
       88 GETTABLEKS                       R13 R13 K21 ["useSearchHistory"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R14 R0 K6 ["Src"]
       95 GETTABLEKS                       R14 R14 K18 ["Hooks"]
       97 GETTABLEKS                       R14 R14 K22 ["useIxpValue"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETTABLEKS                       R15 R0 K6 ["Src"]
      104 GETTABLEKS                       R15 R15 K23 ["Util"]
      106 GETTABLEKS                       R15 R15 K24 ["getLocalizedScopeName"]
      108 CALL                             R14 1 1
      109 DUPCLOSURE                       R15 K25 [PROTO_0]
      110 CAPTURE                          VAL R2
      111 CAPTURE                          VAL R4
      112 DUPCLOSURE                       R16 K26 [PROTO_14]
      113 CAPTURE                          VAL R11
      114 CAPTURE                          VAL R12
      115 CAPTURE                          VAL R7
      116 CAPTURE                          VAL R8
      117 CAPTURE                          VAL R9
      118 CAPTURE                          VAL R10
      119 CAPTURE                          VAL R13
      120 CAPTURE                          VAL R1
      121 CAPTURE                          VAL R14
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R5
      124 CAPTURE                          VAL R4
      125 CAPTURE                          VAL R15
      126 RETURN                           R16 1
