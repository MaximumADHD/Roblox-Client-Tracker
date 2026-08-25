PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+6]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R2 2
        4 NAMECALL                         R0 R0 K0 ["setCurrentScope"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 3
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K1 ["Uid"]
       12 NAMECALL                         R0 R0 K2 ["setScope"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["ScopeInfo"]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 JUMPIFEQ                         R2 R1 ; [+2]
        6 LOADB                            R3 0 +1
        7 LOADB                            R3 1
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K1 ["use"]
       11 CALL                             R4 0 1
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R5 R5 K1 ["use"]
       15 CALL                             R5 0 1
       16 GETUPVAL                         R6 3
       17 GETTABLEKS                       R6 R6 K1 ["use"]
       19 CALL                             R6 0 1
       20 GETUPVAL                         R7 4
       21 CALL                             R7 0 1
       22 GETTABLEKS                       R8 R7 K2 ["ShowSearchOptions"]
       24 NEWCLOSURE                       R9 P0
       25 CAPTURE                          VAL R8
       26 CAPTURE                          VAL R5
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R6
       29 GETUPVAL                         R10 5
       30 GETTABLEKS                       R10 R10 K3 ["createElement"]
       32 GETUPVAL                         R11 6
       33 GETTABLEKS                       R11 R11 K4 ["View"]
       35 DUPTABLE                         R12 K8 [{"LayoutOrder", "tag", "onActivated"}]
       36 GETTABLEKS                       R13 R0 K5 ["LayoutOrder"]
       38 SETTABLEKS                       R13 R12 K5 ["LayoutOrder"]
       40 LOADK                            R14 K9 ["row gap-small size-full-0 auto-y padding-xsmall radius-small %*"]
       41 JUMPIFNOT                        R3 ; [+2]
       42 LOADK                            R16 K10 ["bg-surface-300"]
       43 JUMP                             ; [+1]
       44 LOADK                            R16 K11 [""]
       45 NAMECALL                         R14 R14 K12 ["format"]
       47 CALL                             R14 2 1
       48 MOVE                             R13 R14
       49 SETTABLEKS                       R13 R12 K6 ["tag"]
       51 SETTABLEKS                       R9 R12 K7 ["onActivated"]
       53 DUPTABLE                         R13 K15 [{"ScopeIcon", "ScopeName"}]
       54 GETUPVAL                         R14 5
       55 GETTABLEKS                       R14 R14 K3 ["createElement"]
       57 GETUPVAL                         R15 7
       58 DUPTABLE                         R16 K18 [{["LayoutOrder"] = 1, ["ScopeType"]}]
       59 GETTABLEKS                       R17 R1 K19 ["Type"]
       61 SETTABLEKS                       R17 R16 K17 ["ScopeType"]
       63 CALL                             R14 2 1
       64 SETTABLEKS                       R14 R13 K13 ["ScopeIcon"]
       66 GETUPVAL                         R14 5
       67 GETTABLEKS                       R14 R14 K3 ["createElement"]
       69 GETUPVAL                         R15 6
       70 GETTABLEKS                       R15 R15 K20 ["Text"]
       72 DUPTABLE                         R16 K23 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "fill auto-y text-caption-medium text-align-x-left text-truncate-split"}]
       73 GETUPVAL                         R17 8
       74 MOVE                             R18 R1
       75 MOVE                             R19 R4
       76 CALL                             R17 2 1
       77 SETTABLEKS                       R17 R16 K20 ["Text"]
       79 CALL                             R14 2 1
       80 SETTABLEKS                       R14 R13 K14 ["ScopeName"]
       82 CALL                             R10 3 -1
       83 RETURN                           R10 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["getScopeWithUid"]
        4 CALL                             R1 2 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K1 ; [+4]
       11 LOADK                            R4 K1 ["Scope in search source list is not valid"]
       12 GETIMPORT                        R2 K3 [assert]
       14 CALL                             R2 2 0
       15 RETURN                           R1 1

PROTO_3:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 JUMPIFNOT                        R1 ; [+9]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["map"]
        6 GETUPVAL                         R2 2
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U3
        9 CALL                             R1 2 1
       10 MOVE                             R0 R1
       11 JUMP                             ; [+3]
       12 GETUPVAL                         R1 4
       13 GETTABLEKS                       R0 R1 K1 ["Items"]
       15 NEWTABLE                         R1 0 0
       17 MOVE                             R2 R0
       18 LOADNIL                          R3
       19 LOADNIL                          R4
       20 FORGPREP                         R2
       21 GETTABLEKS                       R7 R6 K2 ["Type"]
       23 GETUPVAL                         R8 5
       24 GETTABLEKS                       R8 R8 K3 ["ScopeType"]
       26 GETTABLEKS                       R8 R8 K4 ["Header"]
       28 JUMPIFEQ                         R7 R8 ; [+25]
       30 GETUPVAL                         R7 6
       31 MOVE                             R8 R6
       32 GETUPVAL                         R9 7
       33 CALL                             R7 2 1
       34 GETUPVAL                         R9 8
       35 LENGTH                           R8 R9
       36 JUMPIFEQKN                       R8 K5 [0] ; [+10]
       38 GETUPVAL                         R8 9
       39 MOVE                             R9 R7
       40 NEWTABLE                         R10 0 1
       42 GETUPVAL                         R11 8
       43 SETLIST                          R10 R11 1 [1]
       45 CALL                             R8 2 1
       46 JUMPIFNOT                        R8 ; [+7]
       47 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       49 MOVE                             R9 R1
       50 MOVE                             R10 R6
       51 GETIMPORT                        R8 K8 [table.insert]
       53 CALL                             R8 2 0
       54 FORGLOOP                         R2 2 ; [-34]
       56 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 NAMECALL                         R0 R0 K1 ["focus"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K3 [{"LayoutOrder", "ScopeInfo"}]
        5 SETTABLEKS                       R1 R4 K1 ["LayoutOrder"]
        7 SETTABLEKS                       R0 R4 K2 ["ScopeInfo"]
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 3
       10 GETUPVAL                         R6 3
       11 CALL                             R6 0 1
       12 GETUPVAL                         R7 4
       13 CALL                             R7 0 1
       14 GETUPVAL                         R8 5
       15 CALL                             R8 0 1
       16 GETTABLEKS                       R9 R8 K1 ["ShowSearchOptions"]
       18 GETUPVAL                         R10 6
       19 GETTABLEKS                       R10 R10 K2 ["useState"]
       21 LOADK                            R11 K3 [""]
       22 CALL                             R10 1 2
       23 GETUPVAL                         R12 6
       24 GETTABLEKS                       R12 R12 K4 ["useRef"]
       26 LOADNIL                          R13
       27 CALL                             R12 1 1
       28 GETUPVAL                         R13 6
       29 GETTABLEKS                       R13 R13 K5 ["useMemo"]
       31 NEWCLOSURE                       R14 P0
       32 CAPTURE                          VAL R9
       33 CAPTURE                          UPVAL U7
       34 CAPTURE                          VAL R7
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R6
       37 CAPTURE                          UPVAL U8
       38 CAPTURE                          UPVAL U9
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R10
       41 CAPTURE                          UPVAL U10
       42 NEWTABLE                         R15 0 4
       44 MOVE                             R16 R7
       45 GETTABLEKS                       R17 R6 K6 ["Items"]
       47 MOVE                             R18 R9
       48 MOVE                             R19 R10
       49 SETLIST                          R15 R16 4 [1]
       51 CALL                             R13 2 1
       52 GETUPVAL                         R14 6
       53 GETTABLEKS                       R14 R14 K7 ["useEffect"]
       55 NEWCLOSURE                       R15 P1
       56 CAPTURE                          VAL R12
       57 NEWTABLE                         R16 0 0
       59 CALL                             R14 2 0
       60 GETUPVAL                         R14 6
       61 GETTABLEKS                       R14 R14 K8 ["createElement"]
       63 GETUPVAL                         R15 11
       64 GETTABLEKS                       R15 R15 K9 ["View"]
       66 DUPTABLE                         R16 K13 [{["Size"], ["tag"] = "col gap-xsmall padding-xsmall stroke-default radius-medium bg-surface-100"}]
       67 GETIMPORT                        R17 K16 [UDim2.fromOffset]
       69 GETTABLEKS                       R18 R0 K17 ["Width"]
       71 JUMPIF                           R18 ; [+9]
       72 GETUPVAL                         R19 12
       73 GETTABLEKS                       R19 R19 K18 ["CompactScopeListWidth"]
       75 FASTCALL2                        MATH_MIN R19 R3 ; [+4]
       77 MOVE                             R20 R3
       78 GETIMPORT                        R18 K21 [math.min]
       80 CALL                             R18 2 1
       81 GETUPVAL                         R20 12
       82 GETTABLEKS                       R20 R20 K22 ["CompactScopeListMaxHeight"]
       84 GETUPVAL                         R22 12
       85 GETTABLEKS                       R22 R22 K23 ["CompactScopeListMinHeight"]
       87 GETUPVAL                         R24 12
       88 GETTABLEKS                       R24 R24 K24 ["CompactScopeListItemHeight"]
       90 LENGTH                           R25 R13
       91 MUL                              R23 R24 R25
       92 ADD                              R21 R22 R23
       93 FASTCALL2                        MATH_MIN R20 R21 ; [+3]
       95 GETIMPORT                        R19 K21 [math.min]
       97 CALL                             R19 2 1
       98 CALL                             R17 2 1
       99 SETTABLEKS                       R17 R16 K10 ["Size"]
      101 DUPTABLE                         R17 K27 [{"Search", "ScopeList"}]
      102 GETUPVAL                         R18 6
      103 GETTABLEKS                       R18 R18 K8 ["createElement"]
      105 GETUPVAL                         R19 11
      106 GETTABLEKS                       R19 R19 K28 ["TextInput"]
      108 DUPTABLE                         R20 K39 [{["LayoutOrder"] = 1, ["label"] = "", ["placeholder"], ["text"], ["size"], ["width"], ["variant"], ["onChanged"], ["textBoxRef"]}]
      109 LOADK                            R23 K25 ["Search"]
      110 LOADK                            R24 K40 ["Placeholder"]
      111 NAMECALL                         R21 R1 K41 ["getText"]
      113 CALL                             R21 3 1
      114 SETTABLEKS                       R21 R20 K32 ["placeholder"]
      116 SETTABLEKS                       R10 R20 K33 ["text"]
      118 GETUPVAL                         R21 11
      119 GETTABLEKS                       R21 R21 K42 ["Enums"]
      121 GETTABLEKS                       R21 R21 K43 ["InputSize"]
      123 GETTABLEKS                       R21 R21 K44 ["XSmall"]
      125 SETTABLEKS                       R21 R20 K34 ["size"]
      127 GETIMPORT                        R21 K47 [UDim.new]
      129 LOADN                            R22 1
      130 LOADN                            R23 0
      131 CALL                             R21 2 1
      132 SETTABLEKS                       R21 R20 K35 ["width"]
      134 GETUPVAL                         R21 11
      135 GETTABLEKS                       R21 R21 K42 ["Enums"]
      137 GETTABLEKS                       R21 R21 K48 ["InputVariant"]
      139 GETTABLEKS                       R21 R21 K49 ["Standard"]
      141 SETTABLEKS                       R21 R20 K36 ["variant"]
      143 NEWCLOSURE                       R21 P2
      144 CAPTURE                          VAL R11
      145 SETTABLEKS                       R21 R20 K37 ["onChanged"]
      147 SETTABLEKS                       R12 R20 K38 ["textBoxRef"]
      149 CALL                             R18 2 1
      150 SETTABLEKS                       R18 R17 K25 ["Search"]
      152 GETUPVAL                         R18 6
      153 GETTABLEKS                       R18 R18 K8 ["createElement"]
      155 GETUPVAL                         R19 11
      156 GETTABLEKS                       R19 R19 K50 ["ScrollView"]
      158 DUPTABLE                         R20 K55 [{["LayoutOrder"] = 2, ["layout"], ["scroll"], ["tag"] = "fill size-full-0"}]
      159 DUPTABLE                         R21 K57 [{"FillDirection"}]
      160 GETIMPORT                        R22 K60 [Enum.FillDirection.Vertical]
      162 SETTABLEKS                       R22 R21 K56 ["FillDirection"]
      164 SETTABLEKS                       R21 R20 K52 ["layout"]
      166 DUPTABLE                         R21 K64 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      167 GETIMPORT                        R22 K67 [Enum.AutomaticSize.Y]
      169 SETTABLEKS                       R22 R21 K61 ["AutomaticCanvasSize"]
      171 GETIMPORT                        R22 K16 [UDim2.fromOffset]
      173 LOADN                            R23 0
      174 LOADN                            R24 0
      175 CALL                             R22 2 1
      176 SETTABLEKS                       R22 R21 K62 ["CanvasSize"]
      178 GETIMPORT                        R22 K68 [Enum.ScrollingDirection.Y]
      180 SETTABLEKS                       R22 R21 K63 ["ScrollingDirection"]
      182 SETTABLEKS                       R21 R20 K53 ["scroll"]
      184 GETUPVAL                         R21 6
      185 GETTABLEKS                       R21 R21 K8 ["createElement"]
      187 GETUPVAL                         R22 11
      188 GETTABLEKS                       R22 R22 K9 ["View"]
      190 DUPTABLE                         R23 K70 [{["tag"] = "col gap-xxsmall size-full-0 auto-y"}]
      191 GETUPVAL                         R24 7
      192 GETTABLEKS                       R24 R24 K71 ["map"]
      194 MOVE                             R25 R13
      195 DUPCLOSURE                       R26 K72 [PROTO_6]
      196 CAPTURE                          UPVAL U6
      197 CAPTURE                          UPVAL U13
      198 CALL                             R24 2 -1
      199 CALL                             R21 -1 -1
      200 CALL                             R18 -1 1
      201 SETTABLEKS                       R18 R17 K26 ["ScopeList"]
      203 CALL                             R14 3 -1
      204 RETURN                           R14 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K2 ["useState"]
       13 LOADB                            R5 0
       14 CALL                             R4 1 2
       15 GETUPVAL                         R6 3
       16 GETTABLEKS                       R6 R6 K3 ["useRef"]
       18 LOADNIL                          R7
       19 CALL                             R6 1 1
       20 GETTABLEKS                       R7 R6 K4 ["current"]
       22 GETUPVAL                         R8 3
       23 GETTABLEKS                       R8 R8 K5 ["useEffect"]
       25 NEWCLOSURE                       R9 P0
       26 CAPTURE                          VAL R5
       27 NEWTABLE                         R10 0 1
       29 MOVE                             R11 R3
       30 SETLIST                          R10 R11 1 [1]
       32 CALL                             R8 2 0
       33 GETUPVAL                         R8 3
       34 GETTABLEKS                       R8 R8 K6 ["createElement"]
       36 GETUPVAL                         R9 4
       37 GETTABLEKS                       R9 R9 K7 ["Popover"]
       39 GETTABLEKS                       R9 R9 K8 ["Root"]
       41 DUPTABLE                         R10 K10 [{"isOpen"}]
       42 SETTABLEKS                       R4 R10 K9 ["isOpen"]
       44 DUPTABLE                         R11 K14 [{"Anchor", "Selector", "Content"}]
       45 GETUPVAL                         R12 3
       46 GETTABLEKS                       R12 R12 K6 ["createElement"]
       48 GETUPVAL                         R13 4
       49 GETTABLEKS                       R13 R13 K7 ["Popover"]
       51 GETTABLEKS                       R13 R13 K11 ["Anchor"]
       53 DUPTABLE                         R14 K16 [{"anchorRef"}]
       54 SETTABLEKS                       R6 R14 K15 ["anchorRef"]
       56 CALL                             R12 2 1
       57 SETTABLEKS                       R12 R11 K11 ["Anchor"]
       59 GETUPVAL                         R12 3
       60 GETTABLEKS                       R12 R12 K6 ["createElement"]
       62 GETUPVAL                         R13 4
       63 GETTABLEKS                       R13 R13 K17 ["View"]
       65 DUPTABLE                         R14 K24 [{["LayoutOrder"], ["ref"], ["tag"], ["testId"] = "scope-selector", ["onActivated"]}]
       66 GETTABLEKS                       R15 R0 K18 ["LayoutOrder"]
       68 SETTABLEKS                       R15 R14 K18 ["LayoutOrder"]
       70 SETTABLEKS                       R6 R14 K19 ["ref"]
       72 NEWTABLE                         R15 4 0
       74 LOADB                            R16 1
       75 SETTABLEKS                       R16 R15 K25 ["row flex-x-between align-y-center shrink padding-xsmall radius-small clip"]
       77 GETTABLEKS                       R17 R0 K26 ["FillWidth"]
       79 NOT                              R16 R17
       80 SETTABLEKS                       R16 R15 K27 ["auto-xy"]
       82 GETTABLEKS                       R16 R0 K26 ["FillWidth"]
       84 SETTABLEKS                       R16 R15 K28 ["size-full-0 auto-y"]
       86 SETTABLEKS                       R4 R15 K29 ["bg-surface-300"]
       88 SETTABLEKS                       R15 R14 K20 ["tag"]
       90 NEWCLOSURE                       R15 P1
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R4
       93 SETTABLEKS                       R15 R14 K23 ["onActivated"]
       95 DUPTABLE                         R15 K32 [{"ScopeDetails", "ChevronIcon"}]
       96 GETUPVAL                         R16 3
       97 GETTABLEKS                       R16 R16 K6 ["createElement"]
       99 GETUPVAL                         R17 4
      100 GETTABLEKS                       R17 R17 K17 ["View"]
      102 DUPTABLE                         R18 K33 [{"tag"}]
      103 LOADK                            R20 K34 ["row gap-xsmall %*"]
      104 GETTABLEKS                       R23 R0 K26 ["FillWidth"]
      106 JUMPIFNOT                        R23 ; [+2]
      107 LOADK                            R22 K35 ["fill auto-y"]
      108 JUMP                             ; [+1]
      109 LOADK                            R22 K27 ["auto-xy"]
      110 NAMECALL                         R20 R20 K36 ["format"]
      112 CALL                             R20 2 1
      113 MOVE                             R19 R20
      114 SETTABLEKS                       R19 R18 K20 ["tag"]
      116 DUPTABLE                         R19 K39 [{"Icon", "Name"}]
      117 GETUPVAL                         R20 3
      118 GETTABLEKS                       R20 R20 K6 ["createElement"]
      120 GETUPVAL                         R21 5
      121 DUPTABLE                         R22 K41 [{"LayoutOrder", "ScopeType"}]
      122 NAMECALL                         R23 R1 K42 ["getNextOrder"]
      124 CALL                             R23 1 1
      125 SETTABLEKS                       R23 R22 K18 ["LayoutOrder"]
      127 GETTABLEKS                       R23 R3 K43 ["Type"]
      129 SETTABLEKS                       R23 R22 K40 ["ScopeType"]
      131 CALL                             R20 2 1
      132 SETTABLEKS                       R20 R19 K37 ["Icon"]
      134 GETTABLEKS                       R21 R0 K44 ["ShowTitle"]
      136 JUMPIFNOT                        R21 ; [+20]
      137 GETUPVAL                         R20 3
      138 GETTABLEKS                       R20 R20 K6 ["createElement"]
      140 GETUPVAL                         R21 4
      141 GETTABLEKS                       R21 R21 K45 ["Text"]
      143 DUPTABLE                         R22 K47 [{["LayoutOrder"], ["Text"], ["tag"] = "shrink auto-xy text-caption-medium text-truncate-split"}]
      144 NAMECALL                         R23 R1 K42 ["getNextOrder"]
      146 CALL                             R23 1 1
      147 SETTABLEKS                       R23 R22 K18 ["LayoutOrder"]
      149 GETUPVAL                         R23 6
      150 MOVE                             R24 R3
      151 MOVE                             R25 R2
      152 CALL                             R23 2 1
      153 SETTABLEKS                       R23 R22 K45 ["Text"]
      155 CALL                             R20 2 1
      156 JUMP                             ; [+1]
      157 LOADNIL                          R20
      158 SETTABLEKS                       R20 R19 K38 ["Name"]
      160 CALL                             R16 3 1
      161 SETTABLEKS                       R16 R15 K30 ["ScopeDetails"]
      163 GETUPVAL                         R16 3
      164 GETTABLEKS                       R16 R16 K6 ["createElement"]
      166 GETUPVAL                         R17 4
      167 GETTABLEKS                       R17 R17 K37 ["Icon"]
      169 DUPTABLE                         R18 K50 [{"LayoutOrder", "name", "size"}]
      170 NAMECALL                         R19 R1 K42 ["getNextOrder"]
      172 CALL                             R19 1 1
      173 SETTABLEKS                       R19 R18 K18 ["LayoutOrder"]
      175 JUMPIFNOT                        R4 ; [+8]
      176 GETUPVAL                         R19 4
      177 GETTABLEKS                       R19 R19 K51 ["Enums"]
      179 GETTABLEKS                       R19 R19 K52 ["IconName"]
      181 GETTABLEKS                       R19 R19 K53 ["ChevronSmallUp"]
      183 JUMP                             ; [+7]
      184 GETUPVAL                         R19 4
      185 GETTABLEKS                       R19 R19 K51 ["Enums"]
      187 GETTABLEKS                       R19 R19 K52 ["IconName"]
      189 GETTABLEKS                       R19 R19 K54 ["ChevronSmallDown"]
      191 SETTABLEKS                       R19 R18 K48 ["name"]
      193 GETUPVAL                         R19 4
      194 GETTABLEKS                       R19 R19 K51 ["Enums"]
      196 GETTABLEKS                       R19 R19 K55 ["IconSize"]
      198 GETTABLEKS                       R19 R19 K56 ["Small"]
      200 SETTABLEKS                       R19 R18 K49 ["size"]
      202 CALL                             R16 2 1
      203 SETTABLEKS                       R16 R15 K31 ["ChevronIcon"]
      205 CALL                             R12 3 1
      206 SETTABLEKS                       R12 R11 K12 ["Selector"]
      208 GETUPVAL                         R12 3
      209 GETTABLEKS                       R12 R12 K6 ["createElement"]
      211 GETUPVAL                         R13 4
      212 GETTABLEKS                       R13 R13 K7 ["Popover"]
      214 GETTABLEKS                       R13 R13 K13 ["Content"]
      216 DUPTABLE                         R14 K62 [{["hasArrow"] = False, ["side"], ["align"], ["onPressedOutside"]}]
      217 GETUPVAL                         R15 4
      218 GETTABLEKS                       R15 R15 K51 ["Enums"]
      220 GETTABLEKS                       R15 R15 K63 ["PopoverSide"]
      222 GETTABLEKS                       R15 R15 K64 ["Bottom"]
      224 SETTABLEKS                       R15 R14 K59 ["side"]
      226 GETUPVAL                         R15 4
      227 GETTABLEKS                       R15 R15 K51 ["Enums"]
      229 GETTABLEKS                       R15 R15 K65 ["PopoverAlign"]
      231 GETTABLEKS                       R15 R15 K66 ["Start"]
      233 SETTABLEKS                       R15 R14 K60 ["align"]
      235 NEWCLOSURE                       R15 P2
      236 CAPTURE                          VAL R5
      237 SETTABLEKS                       R15 R14 K61 ["onPressedOutside"]
      239 GETUPVAL                         R15 3
      240 GETTABLEKS                       R15 R15 K6 ["createElement"]
      242 GETUPVAL                         R16 7
      243 DUPTABLE                         R17 K68 [{"Width"}]
      244 GETTABLEKS                       R19 R0 K26 ["FillWidth"]
      246 JUMPIFNOT                        R19 ; [+6]
      247 JUMPIFNOT                        R7 ; [+5]
      248 GETTABLEKS                       R18 R7 K69 ["AbsoluteSize"]
      250 GETTABLEKS                       R18 R18 K70 ["X"]
      252 JUMP                             ; [+1]
      253 LOADNIL                          R18
      254 SETTABLEKS                       R18 R17 K67 ["Width"]
      256 CALL                             R15 2 -1
      257 CALL                             R12 -1 1
      258 SETTABLEKS                       R12 R11 K13 ["Content"]
      260 CALL                             R8 3 -1
      261 RETURN                           R8 -1

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
       18 GETTABLEKS                       R3 R3 K9 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Packages"]
       25 GETTABLEKS                       R4 R4 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Packages"]
       32 GETTABLEKS                       R5 R5 K11 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K8 ["Packages"]
       39 GETTABLEKS                       R6 R6 K12 ["Framework"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R5 K13 ["Util"]
       44 GETTABLEKS                       R6 R6 K14 ["LayoutOrderIterator"]
       46 GETTABLEKS                       R7 R5 K15 ["ContextServices"]
       48 GETTABLEKS                       R8 R7 K16 ["Localization"]
       50 GETIMPORT                        R9 K5 [require]
       52 GETTABLEKS                       R10 R0 K6 ["Src"]
       54 GETTABLEKS                       R10 R10 K17 ["Components"]
       56 GETTABLEKS                       R10 R10 K18 ["Shared"]
       58 GETTABLEKS                       R10 R10 K19 ["ScopeIcon"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K5 [require]
       63 GETTABLEKS                       R11 R0 K6 ["Src"]
       65 GETTABLEKS                       R11 R11 K20 ["Resources"]
       67 GETTABLEKS                       R11 R11 K21 ["StyleConstants"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K5 [require]
       72 GETTABLEKS                       R12 R0 K6 ["Src"]
       74 GETTABLEKS                       R12 R12 K22 ["Controllers"]
       76 GETTABLEKS                       R12 R12 K23 ["PluginController"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K5 [require]
       81 GETTABLEKS                       R13 R0 K6 ["Src"]
       83 GETTABLEKS                       R13 R13 K22 ["Controllers"]
       85 GETTABLEKS                       R13 R13 K24 ["ExplorerController"]
       87 CALL                             R12 1 1
       88 GETIMPORT                        R13 K5 [require]
       90 GETTABLEKS                       R14 R0 K6 ["Src"]
       92 GETTABLEKS                       R14 R14 K22 ["Controllers"]
       94 GETTABLEKS                       R14 R14 K25 ["SearchController"]
       96 CALL                             R13 1 1
       97 GETIMPORT                        R14 K5 [require]
       99 GETTABLEKS                       R15 R0 K6 ["Src"]
      101 GETTABLEKS                       R15 R15 K26 ["Hooks"]
      103 GETTABLEKS                       R15 R15 K27 ["useCurrentScope"]
      105 CALL                             R14 1 1
      106 GETIMPORT                        R15 K5 [require]
      108 GETTABLEKS                       R16 R0 K6 ["Src"]
      110 GETTABLEKS                       R16 R16 K26 ["Hooks"]
      112 GETTABLEKS                       R16 R16 K28 ["useExplorerInfo"]
      114 CALL                             R15 1 1
      115 GETIMPORT                        R16 K5 [require]
      117 GETTABLEKS                       R17 R0 K6 ["Src"]
      119 GETTABLEKS                       R17 R17 K26 ["Hooks"]
      121 GETTABLEKS                       R17 R17 K29 ["useSourceList"]
      123 CALL                             R16 1 1
      124 GETIMPORT                        R17 K5 [require]
      126 GETTABLEKS                       R18 R0 K6 ["Src"]
      128 GETTABLEKS                       R18 R18 K26 ["Hooks"]
      130 GETTABLEKS                       R18 R18 K30 ["useSearchInfo"]
      132 CALL                             R17 1 1
      133 GETIMPORT                        R18 K5 [require]
      135 GETTABLEKS                       R19 R0 K6 ["Src"]
      137 GETTABLEKS                       R19 R19 K26 ["Hooks"]
      139 GETTABLEKS                       R19 R19 K31 ["usePluginSize"]
      141 CALL                             R18 1 1
      142 GETIMPORT                        R19 K5 [require]
      144 GETTABLEKS                       R20 R0 K6 ["Src"]
      146 GETTABLEKS                       R20 R20 K13 ["Util"]
      148 GETTABLEKS                       R20 R20 K32 ["hasMatchingTerm"]
      150 CALL                             R19 1 1
      151 GETIMPORT                        R20 K5 [require]
      153 GETTABLEKS                       R21 R0 K6 ["Src"]
      155 GETTABLEKS                       R21 R21 K13 ["Util"]
      157 GETTABLEKS                       R21 R21 K33 ["getLocalizedScopeName"]
      159 CALL                             R20 1 1
      160 DUPCLOSURE                       R21 K34 [PROTO_1]
      161 CAPTURE                          VAL R14
      162 CAPTURE                          VAL R8
      163 CAPTURE                          VAL R11
      164 CAPTURE                          VAL R13
      165 CAPTURE                          VAL R17
      166 CAPTURE                          VAL R3
      167 CAPTURE                          VAL R4
      168 CAPTURE                          VAL R9
      169 CAPTURE                          VAL R20
      170 DUPCLOSURE                       R22 K35 [PROTO_7]
      171 CAPTURE                          VAL R8
      172 CAPTURE                          VAL R12
      173 CAPTURE                          VAL R18
      174 CAPTURE                          VAL R15
      175 CAPTURE                          VAL R16
      176 CAPTURE                          VAL R17
      177 CAPTURE                          VAL R3
      178 CAPTURE                          VAL R2
      179 CAPTURE                          VAL R1
      180 CAPTURE                          VAL R20
      181 CAPTURE                          VAL R19
      182 CAPTURE                          VAL R4
      183 CAPTURE                          VAL R10
      184 CAPTURE                          VAL R21
      185 DUPCLOSURE                       R23 K36 [PROTO_11]
      186 CAPTURE                          VAL R6
      187 CAPTURE                          VAL R8
      188 CAPTURE                          VAL R14
      189 CAPTURE                          VAL R3
      190 CAPTURE                          VAL R4
      191 CAPTURE                          VAL R9
      192 CAPTURE                          VAL R20
      193 CAPTURE                          VAL R22
      194 RETURN                           R23 1
