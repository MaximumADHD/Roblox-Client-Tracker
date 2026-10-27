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
       39 GETUPVAL                         R9 8
       40 MOVE                             R10 R8
       41 CALL                             R9 1 1
       42 MOVE                             R10 R7
       43 JUMPIFNOT                        R10 ; [+14]
       44 MOVE                             R12 R6
       45 NAMECALL                         R10 R5 K6 ["rootScopeTypeIsSearchable"]
       47 CALL                             R10 2 1
       48 JUMPIFNOT                        R10 ; [+9]
       49 GETUPVAL                         R11 7
       50 GETTABLEKS                       R11 R11 K7 ["InventoryFolderStatus"]
       52 GETTABLEKS                       R11 R11 K8 ["FoldersReady"]
       54 JUMPIFNOTEQ                      R9 R11 ; [+2]
       56 LOADB                            R10 0 +1
       57 LOADB                            R10 1
       58 MOVE                             R11 R7
       59 JUMPIFNOT                        R11 ; [+5]
       60 MOVE                             R14 R6
       61 NAMECALL                         R12 R5 K6 ["rootScopeTypeIsSearchable"]
       63 CALL                             R12 2 1
       64 NOT                              R11 R12
       65 GETUPVAL                         R12 9
       66 MOVE                             R13 R8
       67 MOVE                             R14 R3
       68 CALL                             R12 2 1
       69 JUMPIFNOT                        R11 ; [+2]
       70 LOADK                            R13 K9 [""]
       71 JUMP                             ; [+15]
       72 JUMPIFNOT                        R7 ; [+9]
       73 LOADK                            R15 K10 ["Search"]
       74 LOADK                            R16 K11 ["Placeholder.SearchInScope"]
       75 DUPTABLE                         R17 K13 [{"scopeName"}]
       76 SETTABLEKS                       R12 R17 K12 ["scopeName"]
       78 NAMECALL                         R13 R3 K14 ["getText"]
       80 CALL                             R13 4 1
       81 JUMP                             ; [+5]
       82 LOADK                            R15 K10 ["Search"]
       83 LOADK                            R16 K15 ["Placeholder"]
       84 NAMECALL                         R13 R3 K14 ["getText"]
       86 CALL                             R13 3 1
       87 GETUPVAL                         R14 10
       88 GETTABLEKS                       R14 R14 K16 ["useState"]
       90 LOADB                            R15 0
       91 CALL                             R14 1 2
       92 GETUPVAL                         R16 10
       93 GETTABLEKS                       R16 R16 K17 ["useRef"]
       95 LOADNIL                          R17
       96 CALL                             R16 1 1
       97 GETTABLEKS                       R17 R16 K18 ["current"]
       99 GETUPVAL                         R18 10
      100 GETTABLEKS                       R18 R18 K19 ["useEffect"]
      102 NEWCLOSURE                       R19 P0
      103 CAPTURE                          VAL R5
      104 CAPTURE                          VAL R15
      105 NEWTABLE                         R20 0 0
      107 CALL                             R18 2 0
      108 GETUPVAL                         R18 10
      109 GETTABLEKS                       R18 R18 K19 ["useEffect"]
      111 NEWCLOSURE                       R19 P1
      112 CAPTURE                          VAL R11
      113 CAPTURE                          VAL R15
      114 CAPTURE                          VAL R5
      115 NEWTABLE                         R20 0 1
      117 MOVE                             R21 R11
      118 SETLIST                          R20 R21 1 [1]
      120 CALL                             R18 2 0
      121 NEWCLOSURE                       R18 P2
      122 CAPTURE                          UPVAL U11
      123 CAPTURE                          VAL R2
      124 CAPTURE                          VAL R7
      125 CAPTURE                          UPVAL U10
      126 CAPTURE                          UPVAL U12
      127 CAPTURE                          VAL R14
      128 CAPTURE                          VAL R16
      129 CAPTURE                          VAL R15
      130 CAPTURE                          VAL R17
      131 CAPTURE                          UPVAL U13
      132 CAPTURE                          VAL R3
      133 CAPTURE                          VAL R5
      134 GETUPVAL                         R19 10
      135 GETTABLEKS                       R19 R19 K20 ["createElement"]
      137 GETUPVAL                         R20 12
      138 GETTABLEKS                       R20 R20 K21 ["View"]
      140 DUPTABLE                         R21 K25 [{["LayoutOrder"], ["tag"] = "fill auto-y"}]
      141 GETTABLEKS                       R22 R0 K22 ["LayoutOrder"]
      143 SETTABLEKS                       R22 R21 K22 ["LayoutOrder"]
      145 DUPTABLE                         R22 K29 [{"SearchBackfillStatus", "SearchInput", "History"}]
      146 JUMPIFNOT                        R10 ; [+6]
      147 GETUPVAL                         R23 10
      148 GETTABLEKS                       R23 R23 K20 ["createElement"]
      150 GETUPVAL                         R24 14
      151 CALL                             R23 1 1
      152 JUMP                             ; [+1]
      153 LOADNIL                          R23
      154 SETTABLEKS                       R23 R22 K26 ["SearchBackfillStatus"]
      156 JUMPIF                           R10 ; [+106]
      157 GETUPVAL                         R23 10
      158 GETTABLEKS                       R23 R23 K20 ["createElement"]
      160 GETUPVAL                         R24 12
      161 GETTABLEKS                       R24 R24 K30 ["TextInput"]
      163 DUPTABLE                         R25 K44 [{["label"] = "", ["leadingIcon"], ["iconTrailing"], ["placeholder"], ["text"], ["size"], ["width"], ["variant"], ["isDisabled"], ["onReturnPressed"], ["onChanged"], ["onFocusGained"], ["ref"]}]
      164 GETUPVAL                         R26 12
      165 GETTABLEKS                       R26 R26 K45 ["Enums"]
      167 GETTABLEKS                       R26 R26 K46 ["IconName"]
      169 GETTABLEKS                       R26 R26 K47 ["MagnifyingGlass"]
      171 SETTABLEKS                       R26 R25 K32 ["leadingIcon"]
      173 JUMPIF                           R11 ; [+32]
      174 GETTABLEKS                       R28 R1 K48 ["PendingSearchTerm"]
      176 LENGTH                           R27 R28
      177 LOADN                            R28 0
      178 JUMPIFNOTLT                      R28 R27 ; [+27]
      180 DUPTABLE                         R26 K51 [{"name", "onActivated"}]
      181 JUMPIFNOT                        R7 ; [+8]
      182 GETUPVAL                         R27 12
      183 GETTABLEKS                       R27 R27 K45 ["Enums"]
      185 GETTABLEKS                       R27 R27 K46 ["IconName"]
      187 GETTABLEKS                       R27 R27 K52 ["XSmall"]
      189 JUMP                             ; [+7]
      190 GETUPVAL                         R27 12
      191 GETTABLEKS                       R27 R27 K45 ["Enums"]
      193 GETTABLEKS                       R27 R27 K46 ["IconName"]
      195 GETTABLEKS                       R27 R27 K53 ["CircleX"]
      197 SETTABLEKS                       R27 R26 K49 ["name"]
      199 NEWCLOSURE                       R27 P3
      200 CAPTURE                          VAL R7
      201 CAPTURE                          VAL R1
      202 CAPTURE                          VAL R5
      203 SETTABLEKS                       R27 R26 K50 ["onActivated"]
      205 JUMP                             ; [+1]
      206 LOADNIL                          R26
      207 SETTABLEKS                       R26 R25 K33 ["iconTrailing"]
      209 SETTABLEKS                       R13 R25 K34 ["placeholder"]
      211 GETTABLEKS                       R26 R1 K48 ["PendingSearchTerm"]
      213 SETTABLEKS                       R26 R25 K35 ["text"]
      215 GETUPVAL                         R26 12
      216 GETTABLEKS                       R26 R26 K45 ["Enums"]
      218 GETTABLEKS                       R26 R26 K54 ["InputSize"]
      220 GETTABLEKS                       R26 R26 K52 ["XSmall"]
      222 SETTABLEKS                       R26 R25 K36 ["size"]
      224 GETIMPORT                        R26 K57 [UDim.new]
      226 LOADN                            R27 1
      227 LOADN                            R28 0
      228 CALL                             R26 2 1
      229 SETTABLEKS                       R26 R25 K37 ["width"]
      231 GETUPVAL                         R26 12
      232 GETTABLEKS                       R26 R26 K45 ["Enums"]
      234 GETTABLEKS                       R26 R26 K58 ["InputVariant"]
      236 GETTABLEKS                       R26 R26 K59 ["Standard"]
      238 SETTABLEKS                       R26 R25 K38 ["variant"]
      240 SETTABLEKS                       R11 R25 K39 ["isDisabled"]
      242 NEWCLOSURE                       R26 P4
      243 CAPTURE                          VAL R11
      244 CAPTURE                          VAL R5
      245 CAPTURE                          VAL R15
      246 SETTABLEKS                       R26 R25 K40 ["onReturnPressed"]
      248 NEWCLOSURE                       R26 P5
      249 CAPTURE                          VAL R11
      250 CAPTURE                          VAL R5
      251 SETTABLEKS                       R26 R25 K41 ["onChanged"]
      253 NEWCLOSURE                       R26 P6
      254 CAPTURE                          VAL R11
      255 CAPTURE                          VAL R5
      256 CAPTURE                          VAL R15
      257 SETTABLEKS                       R26 R25 K42 ["onFocusGained"]
      259 SETTABLEKS                       R16 R25 K43 ["ref"]
      261 CALL                             R23 2 1
      262 JUMP                             ; [+1]
      263 LOADNIL                          R23
      264 SETTABLEKS                       R23 R22 K27 ["SearchInput"]
      266 JUMPIF                           R10 ; [+10]
      267 LENGTH                           R24 R2
      268 LOADN                            R25 0
      269 JUMPIFNOTLT                      R25 R24 ; [+7]
      271 GETUPVAL                         R23 10
      272 GETTABLEKS                       R23 R23 K20 ["createElement"]
      274 MOVE                             R24 R18
      275 CALL                             R23 1 1
      276 JUMP                             ; [+1]
      277 LOADNIL                          R23
      278 SETTABLEKS                       R23 R22 K28 ["History"]
      280 CALL                             R19 3 -1
      281 RETURN                           R19 -1

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
       66 GETIMPORT                        R11 K1 [script]
       68 GETTABLEKS                       R11 R11 K18 ["Parent"]
       70 GETTABLEKS                       R11 R11 K19 ["SearchBackfillStatus"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K5 [require]
       75 GETTABLEKS                       R12 R0 K6 ["Src"]
       77 GETTABLEKS                       R12 R12 K20 ["Hooks"]
       79 GETTABLEKS                       R12 R12 K21 ["useCurrentScope"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K5 [require]
       84 GETTABLEKS                       R13 R0 K6 ["Src"]
       86 GETTABLEKS                       R13 R13 K20 ["Hooks"]
       88 GETTABLEKS                       R13 R13 K22 ["useIsFolderReady"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R14 R0 K6 ["Src"]
       95 GETTABLEKS                       R14 R14 K20 ["Hooks"]
       97 GETTABLEKS                       R14 R14 K23 ["useSearchInfo"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETTABLEKS                       R15 R0 K6 ["Src"]
      104 GETTABLEKS                       R15 R15 K20 ["Hooks"]
      106 GETTABLEKS                       R15 R15 K24 ["useSearchHistory"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K5 [require]
      111 GETTABLEKS                       R16 R0 K6 ["Src"]
      113 GETTABLEKS                       R16 R16 K20 ["Hooks"]
      115 GETTABLEKS                       R16 R16 K25 ["useIxpValue"]
      117 CALL                             R15 1 1
      118 GETIMPORT                        R16 K5 [require]
      120 GETTABLEKS                       R17 R0 K6 ["Src"]
      122 GETTABLEKS                       R17 R17 K26 ["Util"]
      124 GETTABLEKS                       R17 R17 K27 ["getLocalizedScopeName"]
      126 CALL                             R16 1 1
      127 DUPCLOSURE                       R17 K28 [PROTO_0]
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R4
      130 DUPCLOSURE                       R18 K29 [PROTO_14]
      131 CAPTURE                          VAL R13
      132 CAPTURE                          VAL R14
      133 CAPTURE                          VAL R7
      134 CAPTURE                          VAL R8
      135 CAPTURE                          VAL R9
      136 CAPTURE                          VAL R11
      137 CAPTURE                          VAL R15
      138 CAPTURE                          VAL R1
      139 CAPTURE                          VAL R12
      140 CAPTURE                          VAL R16
      141 CAPTURE                          VAL R2
      142 CAPTURE                          VAL R5
      143 CAPTURE                          VAL R4
      144 CAPTURE                          VAL R17
      145 CAPTURE                          VAL R10
      146 RETURN                           R18 1
