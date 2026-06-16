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
       40 LOADK                            R14 K9 ["row size-full-0 auto-y padding-xsmall gap-small radius-small %*"]
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
       58 DUPTABLE                         R16 K17 [{"LayoutOrder", "ScopeType"}]
       59 LOADN                            R17 1
       60 SETTABLEKS                       R17 R16 K5 ["LayoutOrder"]
       62 GETTABLEKS                       R17 R1 K18 ["Type"]
       64 SETTABLEKS                       R17 R16 K16 ["ScopeType"]
       66 CALL                             R14 2 1
       67 SETTABLEKS                       R14 R13 K13 ["ScopeIcon"]
       69 GETUPVAL                         R14 5
       70 GETTABLEKS                       R14 R14 K3 ["createElement"]
       72 GETUPVAL                         R15 6
       73 GETTABLEKS                       R15 R15 K19 ["Text"]
       75 DUPTABLE                         R16 K20 [{"LayoutOrder", "Text", "tag"}]
       76 LOADN                            R17 2
       77 SETTABLEKS                       R17 R16 K5 ["LayoutOrder"]
       79 GETUPVAL                         R17 8
       80 MOVE                             R18 R1
       81 MOVE                             R19 R4
       82 CALL                             R17 2 1
       83 SETTABLEKS                       R17 R16 K19 ["Text"]
       85 LOADK                            R17 K21 ["fill auto-y text-align-x-left text-caption-medium text-truncate-split"]
       86 SETTABLEKS                       R17 R16 K6 ["tag"]
       88 CALL                             R14 2 1
       89 SETTABLEKS                       R14 R13 K14 ["ScopeName"]
       91 CALL                             R10 3 -1
       92 RETURN                           R10 -1

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
        0 GETTABLEKS                       R2 R1 K0 ["Scope"]
        2 RETURN                           R2 1

PROTO_4:
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
       11 JUMP                             ; [+16]
       12 GETUPVAL                         R1 4
       13 CALL                             R1 0 1
       14 JUMPIFNOT                        R1 ; [+4]
       15 GETUPVAL                         R1 5
       16 GETTABLEKS                       R0 R1 K1 ["Items"]
       18 JUMP                             ; [+9]
       19 GETUPVAL                         R1 1
       20 GETTABLEKS                       R1 R1 K2 ["collectArray"]
       22 GETUPVAL                         R2 5
       23 GETTABLEKS                       R2 R2 K1 ["Items"]
       25 DUPCLOSURE                       R3 K3 [PROTO_3]
       26 CALL                             R1 2 1
       27 MOVE                             R0 R1
       28 NEWTABLE                         R1 0 0
       30 MOVE                             R2 R0
       31 LOADNIL                          R3
       32 LOADNIL                          R4
       33 FORGPREP                         R2
       34 GETTABLEKS                       R7 R6 K4 ["Type"]
       36 GETUPVAL                         R8 6
       37 GETTABLEKS                       R8 R8 K5 ["ScopeType"]
       39 GETTABLEKS                       R8 R8 K6 ["Header"]
       41 JUMPIFEQ                         R7 R8 ; [+25]
       43 GETUPVAL                         R7 7
       44 MOVE                             R8 R6
       45 GETUPVAL                         R9 8
       46 CALL                             R7 2 1
       47 GETUPVAL                         R9 9
       48 LENGTH                           R8 R9
       49 JUMPIFEQKN                       R8 K7 [0] ; [+10]
       51 GETUPVAL                         R8 10
       52 MOVE                             R9 R7
       53 NEWTABLE                         R10 0 1
       55 GETUPVAL                         R11 9
       56 SETLIST                          R10 R11 1 [1]
       58 CALL                             R8 2 1
       59 JUMPIFNOT                        R8 ; [+7]
       60 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       62 MOVE                             R9 R1
       63 MOVE                             R10 R6
       64 GETIMPORT                        R8 K10 [table.insert]
       66 CALL                             R8 2 0
       67 FORGLOOP                         R2 2 ; [-34]
       69 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 NAMECALL                         R0 R0 K1 ["focus"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K3 [{"LayoutOrder", "ScopeInfo"}]
        5 SETTABLEKS                       R1 R4 K1 ["LayoutOrder"]
        7 SETTABLEKS                       R0 R4 K2 ["ScopeInfo"]
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

PROTO_8:
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
       34 CAPTURE                          UPVAL U7
       35 CAPTURE                          VAL R3
       36 CAPTURE                          UPVAL U8
       37 CAPTURE                          UPVAL U9
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R7
       40 CAPTURE                          UPVAL U10
       41 NEWTABLE                         R12 0 4
       43 MOVE                             R13 R4
       44 GETTABLEKS                       R14 R3 K6 ["Items"]
       46 MOVE                             R15 R6
       47 MOVE                             R16 R7
       48 SETLIST                          R12 R13 4 [1]
       50 CALL                             R10 2 1
       51 GETUPVAL                         R11 5
       52 GETTABLEKS                       R11 R11 K7 ["useEffect"]
       54 NEWCLOSURE                       R12 P1
       55 CAPTURE                          VAL R9
       56 NEWTABLE                         R13 0 0
       58 CALL                             R11 2 0
       59 GETUPVAL                         R11 5
       60 GETTABLEKS                       R11 R11 K8 ["createElement"]
       62 GETUPVAL                         R12 11
       63 GETTABLEKS                       R12 R12 K9 ["View"]
       65 DUPTABLE                         R13 K12 [{"Size", "tag"}]
       66 GETIMPORT                        R14 K15 [UDim2.fromOffset]
       68 GETUPVAL                         R15 12
       69 GETTABLEKS                       R15 R15 K16 ["CompactScopeListWidth"]
       71 GETUPVAL                         R17 12
       72 GETTABLEKS                       R17 R17 K17 ["CompactScopeListMaxHeight"]
       74 GETUPVAL                         R19 12
       75 GETTABLEKS                       R19 R19 K18 ["CompactScopeListMinHeight"]
       77 GETUPVAL                         R21 12
       78 GETTABLEKS                       R21 R21 K19 ["CompactScopeListItemHeight"]
       80 LENGTH                           R22 R10
       81 MUL                              R20 R21 R22
       82 ADD                              R18 R19 R20
       83 FASTCALL2                        MATH_MIN R17 R18 ; [+3]
       85 GETIMPORT                        R16 K22 [math.min]
       87 CALL                             R16 2 1
       88 CALL                             R14 2 1
       89 SETTABLEKS                       R14 R13 K10 ["Size"]
       91 LOADK                            R14 K23 ["col bg-surface-100 padding-xsmall gap-xsmall radius-medium stroke-default"]
       92 SETTABLEKS                       R14 R13 K11 ["tag"]
       94 DUPTABLE                         R14 K26 [{"Search", "ScopeList"}]
       95 GETUPVAL                         R15 5
       96 GETTABLEKS                       R15 R15 K8 ["createElement"]
       98 GETUPVAL                         R16 11
       99 GETTABLEKS                       R16 R16 K27 ["TextInput"]
      101 DUPTABLE                         R17 K37 [{"LayoutOrder", "label", "placeholder", "text", "size", "width", "variant", "onChanged", "textBoxRef"}]
      102 LOADN                            R18 1
      103 SETTABLEKS                       R18 R17 K28 ["LayoutOrder"]
      105 LOADK                            R18 K3 [""]
      106 SETTABLEKS                       R18 R17 K29 ["label"]
      108 LOADK                            R20 K24 ["Search"]
      109 LOADK                            R21 K38 ["Placeholder"]
      110 NAMECALL                         R18 R1 K39 ["getText"]
      112 CALL                             R18 3 1
      113 SETTABLEKS                       R18 R17 K30 ["placeholder"]
      115 SETTABLEKS                       R7 R17 K31 ["text"]
      117 GETUPVAL                         R18 11
      118 GETTABLEKS                       R18 R18 K40 ["Enums"]
      120 GETTABLEKS                       R18 R18 K41 ["InputSize"]
      122 GETTABLEKS                       R18 R18 K42 ["XSmall"]
      124 SETTABLEKS                       R18 R17 K32 ["size"]
      126 GETIMPORT                        R18 K45 [UDim.new]
      128 LOADN                            R19 1
      129 LOADN                            R20 0
      130 CALL                             R18 2 1
      131 SETTABLEKS                       R18 R17 K33 ["width"]
      133 GETUPVAL                         R18 11
      134 GETTABLEKS                       R18 R18 K40 ["Enums"]
      136 GETTABLEKS                       R18 R18 K46 ["InputVariant"]
      138 GETTABLEKS                       R18 R18 K47 ["Standard"]
      140 SETTABLEKS                       R18 R17 K34 ["variant"]
      142 NEWCLOSURE                       R18 P2
      143 CAPTURE                          VAL R8
      144 SETTABLEKS                       R18 R17 K35 ["onChanged"]
      146 SETTABLEKS                       R9 R17 K36 ["textBoxRef"]
      148 CALL                             R15 2 1
      149 SETTABLEKS                       R15 R14 K24 ["Search"]
      151 GETUPVAL                         R15 5
      152 GETTABLEKS                       R15 R15 K8 ["createElement"]
      154 GETUPVAL                         R16 11
      155 GETTABLEKS                       R16 R16 K48 ["ScrollView"]
      157 DUPTABLE                         R17 K51 [{"LayoutOrder", "layout", "scroll", "tag"}]
      158 LOADN                            R18 2
      159 SETTABLEKS                       R18 R17 K28 ["LayoutOrder"]
      161 DUPTABLE                         R18 K53 [{"FillDirection"}]
      162 GETIMPORT                        R19 K56 [Enum.FillDirection.Vertical]
      164 SETTABLEKS                       R19 R18 K52 ["FillDirection"]
      166 SETTABLEKS                       R18 R17 K49 ["layout"]
      168 DUPTABLE                         R18 K60 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      169 GETIMPORT                        R19 K63 [Enum.AutomaticSize.Y]
      171 SETTABLEKS                       R19 R18 K57 ["AutomaticCanvasSize"]
      173 GETIMPORT                        R19 K15 [UDim2.fromOffset]
      175 LOADN                            R20 0
      176 LOADN                            R21 0
      177 CALL                             R19 2 1
      178 SETTABLEKS                       R19 R18 K58 ["CanvasSize"]
      180 GETIMPORT                        R19 K64 [Enum.ScrollingDirection.Y]
      182 SETTABLEKS                       R19 R18 K59 ["ScrollingDirection"]
      184 SETTABLEKS                       R18 R17 K50 ["scroll"]
      186 LOADK                            R18 K65 ["size-full-0 fill"]
      187 SETTABLEKS                       R18 R17 K11 ["tag"]
      189 GETUPVAL                         R18 5
      190 GETTABLEKS                       R18 R18 K8 ["createElement"]
      192 GETUPVAL                         R19 11
      193 GETTABLEKS                       R19 R19 K9 ["View"]
      195 DUPTABLE                         R20 K66 [{"tag"}]
      196 LOADK                            R21 K67 ["col size-full-0 auto-y gap-xxsmall"]
      197 SETTABLEKS                       R21 R20 K11 ["tag"]
      199 GETUPVAL                         R21 6
      200 GETTABLEKS                       R21 R21 K68 ["map"]
      202 MOVE                             R22 R10
      203 DUPCLOSURE                       R23 K69 [PROTO_7]
      204 CAPTURE                          UPVAL U5
      205 CAPTURE                          UPVAL U13
      206 CALL                             R21 2 -1
      207 CALL                             R18 -1 -1
      208 CALL                             R15 -1 1
      209 SETTABLEKS                       R15 R14 K25 ["ScopeList"]
      211 CALL                             R11 3 -1
      212 RETURN                           R11 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_12:
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
       16 GETTABLEKS                       R6 R6 K3 ["useEffect"]
       18 NEWCLOSURE                       R7 P0
       19 CAPTURE                          VAL R5
       20 NEWTABLE                         R8 0 1
       22 MOVE                             R9 R3
       23 SETLIST                          R8 R9 1 [1]
       25 CALL                             R6 2 0
       26 GETUPVAL                         R6 3
       27 GETTABLEKS                       R6 R6 K4 ["createElement"]
       29 GETUPVAL                         R7 4
       30 GETTABLEKS                       R7 R7 K5 ["Popover"]
       32 GETTABLEKS                       R7 R7 K6 ["Root"]
       34 DUPTABLE                         R8 K8 [{"isOpen"}]
       35 SETTABLEKS                       R4 R8 K7 ["isOpen"]
       37 DUPTABLE                         R9 K11 [{"Anchor", "Content"}]
       38 GETUPVAL                         R10 3
       39 GETTABLEKS                       R10 R10 K4 ["createElement"]
       41 GETUPVAL                         R11 4
       42 GETTABLEKS                       R11 R11 K5 ["Popover"]
       44 GETTABLEKS                       R11 R11 K9 ["Anchor"]
       46 DUPTABLE                         R12 K13 [{"LayoutOrder"}]
       47 GETTABLEKS                       R13 R0 K12 ["LayoutOrder"]
       49 SETTABLEKS                       R13 R12 K12 ["LayoutOrder"]
       51 GETUPVAL                         R13 3
       52 GETTABLEKS                       R13 R13 K4 ["createElement"]
       54 GETUPVAL                         R14 4
       55 GETTABLEKS                       R14 R14 K14 ["View"]
       57 DUPTABLE                         R15 K18 [{"tag", "testId", "onActivated"}]
       58 LOADK                            R16 K19 ["row auto-xy align-y-center gap-xsmall padding-xsmall radius-small"]
       59 SETTABLEKS                       R16 R15 K15 ["tag"]
       61 LOADK                            R16 K20 ["compact-scope-selector"]
       62 SETTABLEKS                       R16 R15 K16 ["testId"]
       64 NEWCLOSURE                       R16 P1
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R4
       67 SETTABLEKS                       R16 R15 K17 ["onActivated"]
       69 DUPTABLE                         R16 K24 [{"ScopeIcon", "ScopeName", "ChevronIcon"}]
       70 GETUPVAL                         R17 3
       71 GETTABLEKS                       R17 R17 K4 ["createElement"]
       73 GETUPVAL                         R18 5
       74 DUPTABLE                         R19 K26 [{"LayoutOrder", "ScopeType"}]
       75 NAMECALL                         R20 R1 K27 ["getNextOrder"]
       77 CALL                             R20 1 1
       78 SETTABLEKS                       R20 R19 K12 ["LayoutOrder"]
       80 GETTABLEKS                       R20 R3 K28 ["Type"]
       82 SETTABLEKS                       R20 R19 K25 ["ScopeType"]
       84 CALL                             R17 2 1
       85 SETTABLEKS                       R17 R16 K21 ["ScopeIcon"]
       87 GETTABLEKS                       R18 R0 K29 ["ShowTitle"]
       89 JUMPIFNOT                        R18 ; [+23]
       90 GETUPVAL                         R17 3
       91 GETTABLEKS                       R17 R17 K4 ["createElement"]
       93 GETUPVAL                         R18 4
       94 GETTABLEKS                       R18 R18 K30 ["Text"]
       96 DUPTABLE                         R19 K31 [{"LayoutOrder", "Text", "tag"}]
       97 NAMECALL                         R20 R1 K27 ["getNextOrder"]
       99 CALL                             R20 1 1
      100 SETTABLEKS                       R20 R19 K12 ["LayoutOrder"]
      102 GETUPVAL                         R20 6
      103 MOVE                             R21 R3
      104 MOVE                             R22 R2
      105 CALL                             R20 2 1
      106 SETTABLEKS                       R20 R19 K30 ["Text"]
      108 LOADK                            R20 K32 ["auto-xy text-caption-medium text-truncate-split"]
      109 SETTABLEKS                       R20 R19 K15 ["tag"]
      111 CALL                             R17 2 1
      112 JUMP                             ; [+1]
      113 LOADNIL                          R17
      114 SETTABLEKS                       R17 R16 K22 ["ScopeName"]
      116 GETUPVAL                         R17 3
      117 GETTABLEKS                       R17 R17 K4 ["createElement"]
      119 GETUPVAL                         R18 4
      120 GETTABLEKS                       R18 R18 K33 ["Icon"]
      122 DUPTABLE                         R19 K36 [{"LayoutOrder", "name", "size"}]
      123 NAMECALL                         R20 R1 K27 ["getNextOrder"]
      125 CALL                             R20 1 1
      126 SETTABLEKS                       R20 R19 K12 ["LayoutOrder"]
      128 JUMPIFNOT                        R4 ; [+8]
      129 GETUPVAL                         R20 4
      130 GETTABLEKS                       R20 R20 K37 ["Enums"]
      132 GETTABLEKS                       R20 R20 K38 ["IconName"]
      134 GETTABLEKS                       R20 R20 K39 ["ChevronSmallUp"]
      136 JUMP                             ; [+7]
      137 GETUPVAL                         R20 4
      138 GETTABLEKS                       R20 R20 K37 ["Enums"]
      140 GETTABLEKS                       R20 R20 K38 ["IconName"]
      142 GETTABLEKS                       R20 R20 K40 ["ChevronSmallDown"]
      144 SETTABLEKS                       R20 R19 K34 ["name"]
      146 GETUPVAL                         R20 4
      147 GETTABLEKS                       R20 R20 K37 ["Enums"]
      149 GETTABLEKS                       R20 R20 K41 ["IconSize"]
      151 GETTABLEKS                       R20 R20 K42 ["Small"]
      153 SETTABLEKS                       R20 R19 K35 ["size"]
      155 CALL                             R17 2 1
      156 SETTABLEKS                       R17 R16 K23 ["ChevronIcon"]
      158 CALL                             R13 3 -1
      159 CALL                             R10 -1 1
      160 SETTABLEKS                       R10 R9 K9 ["Anchor"]
      162 GETUPVAL                         R10 3
      163 GETTABLEKS                       R10 R10 K4 ["createElement"]
      165 GETUPVAL                         R11 4
      166 GETTABLEKS                       R11 R11 K5 ["Popover"]
      168 GETTABLEKS                       R11 R11 K10 ["Content"]
      170 DUPTABLE                         R12 K47 [{"hasArrow", "side", "align", "onPressedOutside"}]
      171 LOADB                            R13 0
      172 SETTABLEKS                       R13 R12 K43 ["hasArrow"]
      174 GETUPVAL                         R13 4
      175 GETTABLEKS                       R13 R13 K37 ["Enums"]
      177 GETTABLEKS                       R13 R13 K48 ["PopoverSide"]
      179 GETTABLEKS                       R13 R13 K49 ["Bottom"]
      181 SETTABLEKS                       R13 R12 K44 ["side"]
      183 GETUPVAL                         R13 4
      184 GETTABLEKS                       R13 R13 K37 ["Enums"]
      186 GETTABLEKS                       R13 R13 K50 ["PopoverAlign"]
      188 GETTABLEKS                       R13 R13 K51 ["Start"]
      190 SETTABLEKS                       R13 R12 K45 ["align"]
      192 NEWCLOSURE                       R13 P2
      193 CAPTURE                          VAL R5
      194 SETTABLEKS                       R13 R12 K46 ["onPressedOutside"]
      196 GETUPVAL                         R13 3
      197 GETTABLEKS                       R13 R13 K4 ["createElement"]
      199 GETUPVAL                         R14 7
      200 CALL                             R13 1 -1
      201 CALL                             R10 -1 1
      202 SETTABLEKS                       R10 R9 K10 ["Content"]
      204 CALL                             R6 3 -1
      205 RETURN                           R6 -1

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
      151 GETIMPORT                        R20 K5 [require]
      153 GETTABLEKS                       R21 R0 K6 ["Src"]
      155 GETTABLEKS                       R21 R21 K33 ["Flags"]
      157 GETTABLEKS                       R21 R21 K34 ["getFFlagAmrOrganizationFoundation"]
      159 CALL                             R20 1 1
      160 DUPCLOSURE                       R21 K35 [PROTO_1]
      161 CAPTURE                          VAL R14
      162 CAPTURE                          VAL R8
      163 CAPTURE                          VAL R11
      164 CAPTURE                          VAL R13
      165 CAPTURE                          VAL R17
      166 CAPTURE                          VAL R3
      167 CAPTURE                          VAL R4
      168 CAPTURE                          VAL R9
      169 CAPTURE                          VAL R19
      170 DUPCLOSURE                       R22 K36 [PROTO_8]
      171 CAPTURE                          VAL R8
      172 CAPTURE                          VAL R12
      173 CAPTURE                          VAL R15
      174 CAPTURE                          VAL R16
      175 CAPTURE                          VAL R17
      176 CAPTURE                          VAL R3
      177 CAPTURE                          VAL R2
      178 CAPTURE                          VAL R20
      179 CAPTURE                          VAL R1
      180 CAPTURE                          VAL R19
      181 CAPTURE                          VAL R18
      182 CAPTURE                          VAL R4
      183 CAPTURE                          VAL R10
      184 CAPTURE                          VAL R21
      185 DUPCLOSURE                       R23 K37 [PROTO_12]
      186 CAPTURE                          VAL R6
      187 CAPTURE                          VAL R8
      188 CAPTURE                          VAL R14
      189 CAPTURE                          VAL R3
      190 CAPTURE                          VAL R4
      191 CAPTURE                          VAL R9
      192 CAPTURE                          VAL R19
      193 CAPTURE                          VAL R22
      194 RETURN                           R23 1
