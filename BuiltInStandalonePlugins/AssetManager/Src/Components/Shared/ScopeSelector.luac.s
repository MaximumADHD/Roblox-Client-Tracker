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
        9 CALL                             R3 0 1
       10 GETUPVAL                         R4 3
       11 CALL                             R4 0 1
       12 GETUPVAL                         R5 4
       13 CALL                             R5 0 1
       14 GETTABLEKS                       R6 R5 K1 ["ShowSearchOptions"]
       16 GETUPVAL                         R7 5
       17 GETTABLEKS                       R7 R7 K2 ["useState"]
       19 LOADK                            R8 K3 [""]
       20 CALL                             R7 1 2
       21 GETUPVAL                         R9 5
       22 GETTABLEKS                       R9 R9 K4 ["useRef"]
       24 LOADNIL                          R10
       25 CALL                             R9 1 1
       26 GETUPVAL                         R10 5
       27 GETTABLEKS                       R10 R10 K5 ["useMemo"]
       29 NEWCLOSURE                       R11 P0
       30 CAPTURE                          VAL R6
       31 CAPTURE                          UPVAL U6
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R3
       35 CAPTURE                          UPVAL U7
       36 CAPTURE                          UPVAL U8
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R7
       39 CAPTURE                          UPVAL U9
       40 NEWTABLE                         R12 0 4
       42 MOVE                             R13 R4
       43 GETTABLEKS                       R14 R3 K6 ["Items"]
       45 MOVE                             R15 R6
       46 MOVE                             R16 R7
       47 SETLIST                          R12 R13 4 [1]
       49 CALL                             R10 2 1
       50 GETUPVAL                         R11 5
       51 GETTABLEKS                       R11 R11 K7 ["useEffect"]
       53 NEWCLOSURE                       R12 P1
       54 CAPTURE                          VAL R9
       55 NEWTABLE                         R13 0 0
       57 CALL                             R11 2 0
       58 GETUPVAL                         R11 5
       59 GETTABLEKS                       R11 R11 K8 ["createElement"]
       61 GETUPVAL                         R12 10
       62 GETTABLEKS                       R12 R12 K9 ["View"]
       64 DUPTABLE                         R13 K13 [{["Size"], ["tag"] = "col gap-xsmall padding-xsmall stroke-default radius-medium bg-surface-100"}]
       65 GETIMPORT                        R14 K16 [UDim2.fromOffset]
       67 GETTABLEKS                       R15 R0 K17 ["Width"]
       69 JUMPIF                           R15 ; [+3]
       70 GETUPVAL                         R15 11
       71 GETTABLEKS                       R15 R15 K18 ["CompactScopeListWidth"]
       73 GETUPVAL                         R17 11
       74 GETTABLEKS                       R17 R17 K19 ["CompactScopeListMaxHeight"]
       76 GETUPVAL                         R19 11
       77 GETTABLEKS                       R19 R19 K20 ["CompactScopeListMinHeight"]
       79 GETUPVAL                         R21 11
       80 GETTABLEKS                       R21 R21 K21 ["CompactScopeListItemHeight"]
       82 LENGTH                           R22 R10
       83 MUL                              R20 R21 R22
       84 ADD                              R18 R19 R20
       85 FASTCALL2                        MATH_MIN R17 R18 ; [+3]
       87 GETIMPORT                        R16 K24 [math.min]
       89 CALL                             R16 2 1
       90 CALL                             R14 2 1
       91 SETTABLEKS                       R14 R13 K10 ["Size"]
       93 DUPTABLE                         R14 K27 [{"Search", "ScopeList"}]
       94 GETUPVAL                         R15 5
       95 GETTABLEKS                       R15 R15 K8 ["createElement"]
       97 GETUPVAL                         R16 10
       98 GETTABLEKS                       R16 R16 K28 ["TextInput"]
      100 DUPTABLE                         R17 K39 [{["LayoutOrder"] = 1, ["label"] = "", ["placeholder"], ["text"], ["size"], ["width"], ["variant"], ["onChanged"], ["textBoxRef"]}]
      101 LOADK                            R20 K25 ["Search"]
      102 LOADK                            R21 K40 ["Placeholder"]
      103 NAMECALL                         R18 R1 K41 ["getText"]
      105 CALL                             R18 3 1
      106 SETTABLEKS                       R18 R17 K32 ["placeholder"]
      108 SETTABLEKS                       R7 R17 K33 ["text"]
      110 GETUPVAL                         R18 10
      111 GETTABLEKS                       R18 R18 K42 ["Enums"]
      113 GETTABLEKS                       R18 R18 K43 ["InputSize"]
      115 GETTABLEKS                       R18 R18 K44 ["XSmall"]
      117 SETTABLEKS                       R18 R17 K34 ["size"]
      119 GETIMPORT                        R18 K47 [UDim.new]
      121 LOADN                            R19 1
      122 LOADN                            R20 0
      123 CALL                             R18 2 1
      124 SETTABLEKS                       R18 R17 K35 ["width"]
      126 GETUPVAL                         R18 10
      127 GETTABLEKS                       R18 R18 K42 ["Enums"]
      129 GETTABLEKS                       R18 R18 K48 ["InputVariant"]
      131 GETTABLEKS                       R18 R18 K49 ["Standard"]
      133 SETTABLEKS                       R18 R17 K36 ["variant"]
      135 NEWCLOSURE                       R18 P2
      136 CAPTURE                          VAL R8
      137 SETTABLEKS                       R18 R17 K37 ["onChanged"]
      139 SETTABLEKS                       R9 R17 K38 ["textBoxRef"]
      141 CALL                             R15 2 1
      142 SETTABLEKS                       R15 R14 K25 ["Search"]
      144 GETUPVAL                         R15 5
      145 GETTABLEKS                       R15 R15 K8 ["createElement"]
      147 GETUPVAL                         R16 10
      148 GETTABLEKS                       R16 R16 K50 ["ScrollView"]
      150 DUPTABLE                         R17 K55 [{["LayoutOrder"] = 2, ["layout"], ["scroll"], ["tag"] = "fill size-full-0"}]
      151 DUPTABLE                         R18 K57 [{"FillDirection"}]
      152 GETIMPORT                        R19 K60 [Enum.FillDirection.Vertical]
      154 SETTABLEKS                       R19 R18 K56 ["FillDirection"]
      156 SETTABLEKS                       R18 R17 K52 ["layout"]
      158 DUPTABLE                         R18 K64 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      159 GETIMPORT                        R19 K67 [Enum.AutomaticSize.Y]
      161 SETTABLEKS                       R19 R18 K61 ["AutomaticCanvasSize"]
      163 GETIMPORT                        R19 K16 [UDim2.fromOffset]
      165 LOADN                            R20 0
      166 LOADN                            R21 0
      167 CALL                             R19 2 1
      168 SETTABLEKS                       R19 R18 K62 ["CanvasSize"]
      170 GETIMPORT                        R19 K68 [Enum.ScrollingDirection.Y]
      172 SETTABLEKS                       R19 R18 K63 ["ScrollingDirection"]
      174 SETTABLEKS                       R18 R17 K53 ["scroll"]
      176 GETUPVAL                         R18 5
      177 GETTABLEKS                       R18 R18 K8 ["createElement"]
      179 GETUPVAL                         R19 10
      180 GETTABLEKS                       R19 R19 K9 ["View"]
      182 DUPTABLE                         R20 K70 [{["tag"] = "col gap-xxsmall size-full-0 auto-y"}]
      183 GETUPVAL                         R21 6
      184 GETTABLEKS                       R21 R21 K71 ["map"]
      186 MOVE                             R22 R10
      187 DUPCLOSURE                       R23 K72 [PROTO_6]
      188 CAPTURE                          UPVAL U5
      189 CAPTURE                          UPVAL U12
      190 CALL                             R21 2 -1
      191 CALL                             R18 -1 -1
      192 CALL                             R15 -1 1
      193 SETTABLEKS                       R15 R14 K26 ["ScopeList"]
      195 CALL                             R11 3 -1
      196 RETURN                           R11 -1

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
       20 GETUPVAL                         R7 3
       21 GETTABLEKS                       R7 R7 K4 ["useEffect"]
       23 NEWCLOSURE                       R8 P0
       24 CAPTURE                          VAL R5
       25 NEWTABLE                         R9 0 1
       27 MOVE                             R10 R3
       28 SETLIST                          R9 R10 1 [1]
       30 CALL                             R7 2 0
       31 GETUPVAL                         R7 3
       32 GETTABLEKS                       R7 R7 K5 ["createElement"]
       34 GETUPVAL                         R8 4
       35 GETTABLEKS                       R8 R8 K6 ["Popover"]
       37 GETTABLEKS                       R8 R8 K7 ["Root"]
       39 DUPTABLE                         R9 K9 [{"isOpen"}]
       40 SETTABLEKS                       R4 R9 K8 ["isOpen"]
       42 DUPTABLE                         R10 K13 [{"Anchor", "Selector", "Content"}]
       43 GETUPVAL                         R11 3
       44 GETTABLEKS                       R11 R11 K5 ["createElement"]
       46 GETUPVAL                         R12 4
       47 GETTABLEKS                       R12 R12 K6 ["Popover"]
       49 GETTABLEKS                       R12 R12 K10 ["Anchor"]
       51 DUPTABLE                         R13 K15 [{"anchorRef"}]
       52 SETTABLEKS                       R6 R13 K14 ["anchorRef"]
       54 CALL                             R11 2 1
       55 SETTABLEKS                       R11 R10 K10 ["Anchor"]
       57 GETUPVAL                         R11 3
       58 GETTABLEKS                       R11 R11 K5 ["createElement"]
       60 GETUPVAL                         R12 4
       61 GETTABLEKS                       R12 R12 K16 ["View"]
       63 DUPTABLE                         R13 K23 [{["LayoutOrder"], ["ref"], ["tag"], ["testId"] = "scope-selector", ["onActivated"]}]
       64 GETTABLEKS                       R14 R0 K17 ["LayoutOrder"]
       66 SETTABLEKS                       R14 R13 K17 ["LayoutOrder"]
       68 SETTABLEKS                       R6 R13 K18 ["ref"]
       70 NEWTABLE                         R14 4 0
       72 LOADB                            R15 1
       73 SETTABLEKS                       R15 R14 K24 ["row flex-x-between align-y-center shrink padding-xsmall radius-small clip"]
       75 GETTABLEKS                       R16 R0 K25 ["FillWidth"]
       77 NOT                              R15 R16
       78 SETTABLEKS                       R15 R14 K26 ["auto-xy"]
       80 GETTABLEKS                       R15 R0 K25 ["FillWidth"]
       82 SETTABLEKS                       R15 R14 K27 ["size-full-0 auto-y"]
       84 SETTABLEKS                       R14 R13 K19 ["tag"]
       86 NEWCLOSURE                       R14 P1
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R4
       89 SETTABLEKS                       R14 R13 K22 ["onActivated"]
       91 DUPTABLE                         R14 K30 [{"ScopeDetails", "ChevronIcon"}]
       92 GETUPVAL                         R15 3
       93 GETTABLEKS                       R15 R15 K5 ["createElement"]
       95 GETUPVAL                         R16 4
       96 GETTABLEKS                       R16 R16 K16 ["View"]
       98 DUPTABLE                         R17 K31 [{"tag"}]
       99 LOADK                            R19 K32 ["row gap-xsmall %*"]
      100 GETTABLEKS                       R22 R0 K25 ["FillWidth"]
      102 JUMPIFNOT                        R22 ; [+2]
      103 LOADK                            R21 K33 ["fill auto-y"]
      104 JUMP                             ; [+1]
      105 LOADK                            R21 K26 ["auto-xy"]
      106 NAMECALL                         R19 R19 K34 ["format"]
      108 CALL                             R19 2 1
      109 MOVE                             R18 R19
      110 SETTABLEKS                       R18 R17 K19 ["tag"]
      112 DUPTABLE                         R18 K37 [{"Icon", "Name"}]
      113 GETUPVAL                         R19 3
      114 GETTABLEKS                       R19 R19 K5 ["createElement"]
      116 GETUPVAL                         R20 5
      117 DUPTABLE                         R21 K39 [{"LayoutOrder", "ScopeType"}]
      118 NAMECALL                         R22 R1 K40 ["getNextOrder"]
      120 CALL                             R22 1 1
      121 SETTABLEKS                       R22 R21 K17 ["LayoutOrder"]
      123 GETTABLEKS                       R22 R3 K41 ["Type"]
      125 SETTABLEKS                       R22 R21 K38 ["ScopeType"]
      127 CALL                             R19 2 1
      128 SETTABLEKS                       R19 R18 K35 ["Icon"]
      130 GETTABLEKS                       R20 R0 K42 ["ShowTitle"]
      132 JUMPIFNOT                        R20 ; [+20]
      133 GETUPVAL                         R19 3
      134 GETTABLEKS                       R19 R19 K5 ["createElement"]
      136 GETUPVAL                         R20 4
      137 GETTABLEKS                       R20 R20 K43 ["Text"]
      139 DUPTABLE                         R21 K45 [{["LayoutOrder"], ["Text"], ["tag"] = "shrink auto-xy text-caption-medium text-truncate-split"}]
      140 NAMECALL                         R22 R1 K40 ["getNextOrder"]
      142 CALL                             R22 1 1
      143 SETTABLEKS                       R22 R21 K17 ["LayoutOrder"]
      145 GETUPVAL                         R22 6
      146 MOVE                             R23 R3
      147 MOVE                             R24 R2
      148 CALL                             R22 2 1
      149 SETTABLEKS                       R22 R21 K43 ["Text"]
      151 CALL                             R19 2 1
      152 JUMP                             ; [+1]
      153 LOADNIL                          R19
      154 SETTABLEKS                       R19 R18 K36 ["Name"]
      156 CALL                             R15 3 1
      157 SETTABLEKS                       R15 R14 K28 ["ScopeDetails"]
      159 GETUPVAL                         R15 3
      160 GETTABLEKS                       R15 R15 K5 ["createElement"]
      162 GETUPVAL                         R16 4
      163 GETTABLEKS                       R16 R16 K35 ["Icon"]
      165 DUPTABLE                         R17 K48 [{"LayoutOrder", "name", "size"}]
      166 NAMECALL                         R18 R1 K40 ["getNextOrder"]
      168 CALL                             R18 1 1
      169 SETTABLEKS                       R18 R17 K17 ["LayoutOrder"]
      171 JUMPIFNOT                        R4 ; [+8]
      172 GETUPVAL                         R18 4
      173 GETTABLEKS                       R18 R18 K49 ["Enums"]
      175 GETTABLEKS                       R18 R18 K50 ["IconName"]
      177 GETTABLEKS                       R18 R18 K51 ["ChevronSmallUp"]
      179 JUMP                             ; [+7]
      180 GETUPVAL                         R18 4
      181 GETTABLEKS                       R18 R18 K49 ["Enums"]
      183 GETTABLEKS                       R18 R18 K50 ["IconName"]
      185 GETTABLEKS                       R18 R18 K52 ["ChevronSmallDown"]
      187 SETTABLEKS                       R18 R17 K46 ["name"]
      189 GETUPVAL                         R18 4
      190 GETTABLEKS                       R18 R18 K49 ["Enums"]
      192 GETTABLEKS                       R18 R18 K53 ["IconSize"]
      194 GETTABLEKS                       R18 R18 K54 ["Small"]
      196 SETTABLEKS                       R18 R17 K47 ["size"]
      198 CALL                             R15 2 1
      199 SETTABLEKS                       R15 R14 K29 ["ChevronIcon"]
      201 CALL                             R11 3 1
      202 SETTABLEKS                       R11 R10 K11 ["Selector"]
      204 GETUPVAL                         R11 3
      205 GETTABLEKS                       R11 R11 K5 ["createElement"]
      207 GETUPVAL                         R12 4
      208 GETTABLEKS                       R12 R12 K6 ["Popover"]
      210 GETTABLEKS                       R12 R12 K12 ["Content"]
      212 DUPTABLE                         R13 K60 [{["hasArrow"] = False, ["side"], ["align"], ["onPressedOutside"]}]
      213 GETUPVAL                         R14 4
      214 GETTABLEKS                       R14 R14 K49 ["Enums"]
      216 GETTABLEKS                       R14 R14 K61 ["PopoverSide"]
      218 GETTABLEKS                       R14 R14 K62 ["Bottom"]
      220 SETTABLEKS                       R14 R13 K57 ["side"]
      222 GETUPVAL                         R14 4
      223 GETTABLEKS                       R14 R14 K49 ["Enums"]
      225 GETTABLEKS                       R14 R14 K63 ["PopoverAlign"]
      227 GETTABLEKS                       R14 R14 K64 ["Start"]
      229 SETTABLEKS                       R14 R13 K58 ["align"]
      231 NEWCLOSURE                       R14 P2
      232 CAPTURE                          VAL R5
      233 SETTABLEKS                       R14 R13 K59 ["onPressedOutside"]
      235 GETUPVAL                         R14 3
      236 GETTABLEKS                       R14 R14 K5 ["createElement"]
      238 GETUPVAL                         R15 7
      239 DUPTABLE                         R16 K66 [{"Width"}]
      240 GETTABLEKS                       R18 R0 K25 ["FillWidth"]
      242 JUMPIFNOT                        R18 ; [+10]
      243 GETTABLEKS                       R18 R6 K67 ["current"]
      245 JUMPIFNOT                        R18 ; [+7]
      246 GETTABLEKS                       R17 R6 K67 ["current"]
      248 GETTABLEKS                       R17 R17 K68 ["AbsoluteSize"]
      250 GETTABLEKS                       R17 R17 K69 ["X"]
      252 JUMP                             ; [+1]
      253 LOADNIL                          R17
      254 SETTABLEKS                       R17 R16 K65 ["Width"]
      256 CALL                             R14 2 -1
      257 CALL                             R11 -1 1
      258 SETTABLEKS                       R11 R10 K12 ["Content"]
      260 CALL                             R7 3 -1
      261 RETURN                           R7 -1

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
      137 GETTABLEKS                       R19 R19 K13 ["Util"]
      139 GETTABLEKS                       R19 R19 K31 ["hasMatchingTerm"]
      141 CALL                             R18 1 1
      142 GETIMPORT                        R19 K5 [require]
      144 GETTABLEKS                       R20 R0 K6 ["Src"]
      146 GETTABLEKS                       R20 R20 K13 ["Util"]
      148 GETTABLEKS                       R20 R20 K32 ["getLocalizedScopeName"]
      150 CALL                             R19 1 1
      151 DUPCLOSURE                       R20 K33 [PROTO_1]
      152 CAPTURE                          VAL R14
      153 CAPTURE                          VAL R8
      154 CAPTURE                          VAL R11
      155 CAPTURE                          VAL R13
      156 CAPTURE                          VAL R17
      157 CAPTURE                          VAL R3
      158 CAPTURE                          VAL R4
      159 CAPTURE                          VAL R9
      160 CAPTURE                          VAL R19
      161 DUPCLOSURE                       R21 K34 [PROTO_7]
      162 CAPTURE                          VAL R8
      163 CAPTURE                          VAL R12
      164 CAPTURE                          VAL R15
      165 CAPTURE                          VAL R16
      166 CAPTURE                          VAL R17
      167 CAPTURE                          VAL R3
      168 CAPTURE                          VAL R2
      169 CAPTURE                          VAL R1
      170 CAPTURE                          VAL R19
      171 CAPTURE                          VAL R18
      172 CAPTURE                          VAL R4
      173 CAPTURE                          VAL R10
      174 CAPTURE                          VAL R20
      175 DUPCLOSURE                       R22 K35 [PROTO_11]
      176 CAPTURE                          VAL R6
      177 CAPTURE                          VAL R8
      178 CAPTURE                          VAL R14
      179 CAPTURE                          VAL R3
      180 CAPTURE                          VAL R4
      181 CAPTURE                          VAL R9
      182 CAPTURE                          VAL R19
      183 CAPTURE                          VAL R21
      184 RETURN                           R22 1
