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
       40 LOADK                            R13 K9 ["row gap-small size-full-0 auto-y padding-xsmall radius-small %*"]
       41 JUMPIFNOT                        R3 ; [+2]
       42 LOADK                            R15 K10 ["bg-surface-300"]
       43 JUMP                             ; [+1]
       44 LOADK                            R15 K11 [""]
       45 NAMECALL                         R13 R13 K12 ["format"]
       47 CALL                             R13 2 1
       48 SETTABLEKS                       R13 R12 K6 ["tag"]
       50 SETTABLEKS                       R9 R12 K7 ["onActivated"]
       52 DUPTABLE                         R13 K15 [{"ScopeIcon", "ScopeName"}]
       53 GETUPVAL                         R14 5
       54 GETTABLEKS                       R14 R14 K3 ["createElement"]
       56 GETUPVAL                         R15 7
       57 DUPTABLE                         R16 K18 [{["LayoutOrder"] = 1, ["ScopeType"]}]
       58 GETTABLEKS                       R17 R1 K19 ["Type"]
       60 SETTABLEKS                       R17 R16 K17 ["ScopeType"]
       62 CALL                             R14 2 1
       63 SETTABLEKS                       R14 R13 K13 ["ScopeIcon"]
       65 GETUPVAL                         R14 5
       66 GETTABLEKS                       R14 R14 K3 ["createElement"]
       68 GETUPVAL                         R15 6
       69 GETTABLEKS                       R15 R15 K20 ["Text"]
       71 DUPTABLE                         R16 K23 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "fill auto-y text-caption-medium text-align-x-left text-truncate-split"}]
       72 GETUPVAL                         R17 8
       73 MOVE                             R18 R1
       74 MOVE                             R19 R4
       75 CALL                             R17 2 1
       76 SETTABLEKS                       R17 R16 K20 ["Text"]
       78 CALL                             R14 2 1
       79 SETTABLEKS                       R14 R13 K14 ["ScopeName"]
       81 CALL                             R10 3 -1
       82 RETURN                           R10 -1

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
        9 CALL                             R3 0 2
       10 GETUPVAL                         R5 3
       11 CALL                             R5 0 1
       12 GETUPVAL                         R6 4
       13 CALL                             R6 0 1
       14 GETUPVAL                         R7 5
       15 CALL                             R7 0 1
       16 GETTABLEKS                       R8 R7 K1 ["ShowSearchOptions"]
       18 GETUPVAL                         R9 6
       19 GETTABLEKS                       R9 R9 K2 ["useState"]
       21 LOADK                            R10 K3 [""]
       22 CALL                             R9 1 2
       23 GETUPVAL                         R11 6
       24 GETTABLEKS                       R11 R11 K4 ["useRef"]
       26 LOADNIL                          R12
       27 CALL                             R11 1 1
       28 GETUPVAL                         R12 6
       29 GETTABLEKS                       R12 R12 K5 ["useMemo"]
       31 NEWCLOSURE                       R13 P0
       32 CAPTURE                          VAL R8
       33 CAPTURE                          UPVAL U7
       34 CAPTURE                          VAL R6
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R5
       37 CAPTURE                          UPVAL U8
       38 CAPTURE                          UPVAL U9
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R9
       41 CAPTURE                          UPVAL U10
       42 NEWTABLE                         R14 0 4
       44 MOVE                             R15 R6
       45 GETTABLEKS                       R16 R5 K6 ["Items"]
       47 MOVE                             R17 R8
       48 MOVE                             R18 R9
       49 SETLIST                          R14 R15 4 [1]
       51 CALL                             R12 2 1
       52 GETUPVAL                         R13 6
       53 GETTABLEKS                       R13 R13 K7 ["useEffect"]
       55 NEWCLOSURE                       R14 P1
       56 CAPTURE                          VAL R11
       57 NEWTABLE                         R15 0 0
       59 CALL                             R13 2 0
       60 GETUPVAL                         R13 6
       61 GETTABLEKS                       R13 R13 K8 ["createElement"]
       63 GETUPVAL                         R14 11
       64 GETTABLEKS                       R14 R14 K9 ["View"]
       66 DUPTABLE                         R15 K13 [{["Size"], ["tag"] = "col gap-xsmall padding-xsmall stroke-default radius-medium bg-surface-100"}]
       67 GETIMPORT                        R16 K16 [UDim2.fromOffset]
       69 GETTABLEKS                       R17 R0 K17 ["Width"]
       71 JUMPIF                           R17 ; [+9]
       72 GETUPVAL                         R18 12
       73 GETTABLEKS                       R18 R18 K18 ["CompactScopeListWidth"]
       75 FASTCALL2                        MATH_MIN R18 R3 ; [+4]
       77 MOVE                             R19 R3
       78 GETIMPORT                        R17 K21 [math.min]
       80 CALL                             R17 2 1
       81 GETUPVAL                         R19 12
       82 GETTABLEKS                       R19 R19 K22 ["CompactScopeListMaxHeight"]
       84 GETUPVAL                         R21 12
       85 GETTABLEKS                       R21 R21 K23 ["CompactScopeListMinHeight"]
       87 GETUPVAL                         R23 12
       88 GETTABLEKS                       R23 R23 K24 ["CompactScopeListItemHeight"]
       90 LENGTH                           R24 R12
       91 MUL                              R22 R23 R24
       92 ADD                              R20 R21 R22
       93 FASTCALL2                        MATH_MIN R19 R20 ; [+3]
       95 GETIMPORT                        R18 K21 [math.min]
       97 CALL                             R18 2 1
       98 CALL                             R16 2 1
       99 SETTABLEKS                       R16 R15 K10 ["Size"]
      101 DUPTABLE                         R16 K27 [{"Search", "ScopeList"}]
      102 GETUPVAL                         R17 6
      103 GETTABLEKS                       R17 R17 K8 ["createElement"]
      105 GETUPVAL                         R18 11
      106 GETTABLEKS                       R18 R18 K28 ["TextInput"]
      108 DUPTABLE                         R19 K39 [{["LayoutOrder"] = 1, ["label"] = "", ["placeholder"], ["text"], ["size"], ["width"], ["variant"], ["onChanged"], ["textBoxRef"]}]
      109 LOADK                            R22 K25 ["Search"]
      110 LOADK                            R23 K40 ["Placeholder"]
      111 NAMECALL                         R20 R1 K41 ["getText"]
      113 CALL                             R20 3 1
      114 SETTABLEKS                       R20 R19 K32 ["placeholder"]
      116 SETTABLEKS                       R9 R19 K33 ["text"]
      118 GETUPVAL                         R20 11
      119 GETTABLEKS                       R20 R20 K42 ["Enums"]
      121 GETTABLEKS                       R20 R20 K43 ["InputSize"]
      123 GETTABLEKS                       R20 R20 K44 ["XSmall"]
      125 SETTABLEKS                       R20 R19 K34 ["size"]
      127 GETIMPORT                        R20 K47 [UDim.new]
      129 LOADN                            R21 1
      130 LOADN                            R22 0
      131 CALL                             R20 2 1
      132 SETTABLEKS                       R20 R19 K35 ["width"]
      134 GETUPVAL                         R20 11
      135 GETTABLEKS                       R20 R20 K42 ["Enums"]
      137 GETTABLEKS                       R20 R20 K48 ["InputVariant"]
      139 GETTABLEKS                       R20 R20 K49 ["Standard"]
      141 SETTABLEKS                       R20 R19 K36 ["variant"]
      143 NEWCLOSURE                       R20 P2
      144 CAPTURE                          VAL R10
      145 SETTABLEKS                       R20 R19 K37 ["onChanged"]
      147 SETTABLEKS                       R11 R19 K38 ["textBoxRef"]
      149 CALL                             R17 2 1
      150 SETTABLEKS                       R17 R16 K25 ["Search"]
      152 GETUPVAL                         R17 6
      153 GETTABLEKS                       R17 R17 K8 ["createElement"]
      155 GETUPVAL                         R18 11
      156 GETTABLEKS                       R18 R18 K50 ["ScrollView"]
      158 DUPTABLE                         R19 K55 [{["LayoutOrder"] = 2, ["layout"], ["scroll"], ["tag"] = "fill size-full-0"}]
      159 DUPTABLE                         R20 K57 [{"FillDirection"}]
      160 GETIMPORT                        R21 K60 [Enum.FillDirection.Vertical]
      162 SETTABLEKS                       R21 R20 K56 ["FillDirection"]
      164 SETTABLEKS                       R20 R19 K52 ["layout"]
      166 DUPTABLE                         R20 K64 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      167 GETIMPORT                        R21 K67 [Enum.AutomaticSize.Y]
      169 SETTABLEKS                       R21 R20 K61 ["AutomaticCanvasSize"]
      171 GETIMPORT                        R21 K16 [UDim2.fromOffset]
      173 LOADN                            R22 0
      174 LOADN                            R23 0
      175 CALL                             R21 2 1
      176 SETTABLEKS                       R21 R20 K62 ["CanvasSize"]
      178 GETIMPORT                        R21 K68 [Enum.ScrollingDirection.Y]
      180 SETTABLEKS                       R21 R20 K63 ["ScrollingDirection"]
      182 SETTABLEKS                       R20 R19 K53 ["scroll"]
      184 GETUPVAL                         R20 6
      185 GETTABLEKS                       R20 R20 K8 ["createElement"]
      187 GETUPVAL                         R21 11
      188 GETTABLEKS                       R21 R21 K9 ["View"]
      190 DUPTABLE                         R22 K70 [{["tag"] = "col gap-xxsmall size-full-0 auto-y"}]
      191 GETUPVAL                         R23 7
      192 GETTABLEKS                       R23 R23 K71 ["map"]
      194 MOVE                             R24 R12
      195 DUPCLOSURE                       R25 K72 [PROTO_6]
      196 CAPTURE                          UPVAL U6
      197 CAPTURE                          UPVAL U13
      198 CALL                             R23 2 -1
      199 CALL                             R20 -1 -1
      200 CALL                             R17 -1 1
      201 SETTABLEKS                       R17 R16 K26 ["ScopeList"]
      203 CALL                             R13 3 -1
      204 RETURN                           R13 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+15]
        4 GETUPVAL                         R0 1
        5 JUMPIF                           R0 ; [+13]
        6 GETUPVAL                         R0 2
        7 NAMECALL                         R0 R0 K1 ["getTutorialController"]
        9 CALL                             R0 1 1
       10 JUMPIFNOT                        R0 ; [+8]
       11 GETUPVAL                         R3 3
       12 GETTABLEKS                       R3 R3 K2 ["TutorialEvent"]
       14 GETTABLEKS                       R3 R3 K3 ["ScopeSelectorClosed"]
       16 NAMECALL                         R1 R0 K4 ["notify"]
       18 CALL                             R1 2 0
       19 GETUPVAL                         R0 0
       20 GETUPVAL                         R1 1
       21 SETTABLEKS                       R1 R0 K0 ["current"]
       23 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K1 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 CALL                             R4 0 1
       14 GETUPVAL                         R5 4
       15 GETTABLEKS                       R5 R5 K2 ["useState"]
       17 LOADB                            R6 0
       18 CALL                             R5 1 2
       19 GETUPVAL                         R7 4
       20 GETTABLEKS                       R7 R7 K3 ["useRef"]
       22 LOADNIL                          R8
       23 CALL                             R7 1 1
       24 GETUPVAL                         R8 4
       25 GETTABLEKS                       R8 R8 K2 ["useState"]
       27 LOADNIL                          R9
       28 CALL                             R8 1 2
       29 GETUPVAL                         R10 4
       30 GETTABLEKS                       R10 R10 K4 ["useCallback"]
       32 NEWCLOSURE                       R11 P0
       33 CAPTURE                          VAL R7
       34 CAPTURE                          VAL R9
       35 NEWTABLE                         R12 0 0
       37 CALL                             R10 2 1
       38 GETUPVAL                         R11 5
       39 CALL                             R11 0 1
       40 GETUPVAL                         R12 4
       41 GETTABLEKS                       R12 R12 K5 ["useEffect"]
       43 NEWCLOSURE                       R13 P1
       44 CAPTURE                          VAL R6
       45 NEWTABLE                         R14 0 1
       47 MOVE                             R15 R4
       48 SETLIST                          R14 R15 1 [1]
       50 CALL                             R12 2 0
       51 GETUPVAL                         R12 4
       52 GETTABLEKS                       R12 R12 K3 ["useRef"]
       54 LOADB                            R13 0
       55 CALL                             R12 1 1
       56 GETUPVAL                         R13 4
       57 GETTABLEKS                       R13 R13 K5 ["useEffect"]
       59 NEWCLOSURE                       R14 P2
       60 CAPTURE                          VAL R12
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R3
       63 CAPTURE                          UPVAL U6
       64 NEWTABLE                         R15 0 1
       66 MOVE                             R16 R5
       67 SETLIST                          R15 R16 1 [1]
       69 CALL                             R13 2 0
       70 GETUPVAL                         R13 4
       71 GETTABLEKS                       R13 R13 K6 ["createElement"]
       73 GETUPVAL                         R14 7
       74 GETTABLEKS                       R14 R14 K7 ["Popover"]
       76 GETTABLEKS                       R14 R14 K8 ["Root"]
       78 DUPTABLE                         R15 K10 [{"isOpen"}]
       79 SETTABLEKS                       R5 R15 K9 ["isOpen"]
       81 DUPTABLE                         R16 K15 [{"Anchor", "SidebarTutorialTooltip", "Selector", "Content"}]
       82 GETUPVAL                         R17 4
       83 GETTABLEKS                       R17 R17 K6 ["createElement"]
       85 GETUPVAL                         R18 7
       86 GETTABLEKS                       R18 R18 K7 ["Popover"]
       88 GETTABLEKS                       R18 R18 K11 ["Anchor"]
       90 DUPTABLE                         R19 K17 [{"anchorRef"}]
       91 SETTABLEKS                       R7 R19 K16 ["anchorRef"]
       93 CALL                             R17 2 1
       94 SETTABLEKS                       R17 R16 K11 ["Anchor"]
       96 JUMPIFNOT                        R11 ; [+41]
       97 GETUPVAL                         R17 4
       98 GETTABLEKS                       R17 R17 K6 ["createElement"]
      100 GETUPVAL                         R18 8
      101 DUPTABLE                         R19 K25 [{["tutorialId"], ["stepId"], ["anchorInstance"], ["textKeyOverride"] = "Intro.SidebarCompactText", ["side"], ["align"]}]
      102 GETUPVAL                         R20 6
      103 GETTABLEKS                       R20 R20 K26 ["TutorialId"]
      105 GETTABLEKS                       R20 R20 K27 ["Intro"]
      107 SETTABLEKS                       R20 R19 K18 ["tutorialId"]
      109 GETUPVAL                         R20 6
      110 GETTABLEKS                       R20 R20 K28 ["TutorialStepId"]
      112 GETTABLEKS                       R20 R20 K29 ["Sidebar"]
      114 SETTABLEKS                       R20 R19 K19 ["stepId"]
      116 SETTABLEKS                       R8 R19 K20 ["anchorInstance"]
      118 GETUPVAL                         R20 7
      119 GETTABLEKS                       R20 R20 K30 ["Enums"]
      121 GETTABLEKS                       R20 R20 K31 ["PopoverSide"]
      123 GETTABLEKS                       R20 R20 K32 ["Bottom"]
      125 SETTABLEKS                       R20 R19 K23 ["side"]
      127 GETUPVAL                         R20 7
      128 GETTABLEKS                       R20 R20 K30 ["Enums"]
      130 GETTABLEKS                       R20 R20 K33 ["PopoverAlign"]
      132 GETTABLEKS                       R20 R20 K34 ["Center"]
      134 SETTABLEKS                       R20 R19 K24 ["align"]
      136 CALL                             R17 2 1
      137 JUMP                             ; [+1]
      138 LOADNIL                          R17
      139 SETTABLEKS                       R17 R16 K12 ["SidebarTutorialTooltip"]
      141 GETUPVAL                         R17 4
      142 GETTABLEKS                       R17 R17 K6 ["createElement"]
      144 GETUPVAL                         R18 7
      145 GETTABLEKS                       R18 R18 K35 ["View"]
      147 DUPTABLE                         R19 K42 [{["LayoutOrder"], ["ref"], ["tag"], ["testId"] = "scope-selector", ["onActivated"]}]
      148 GETTABLEKS                       R20 R0 K36 ["LayoutOrder"]
      150 SETTABLEKS                       R20 R19 K36 ["LayoutOrder"]
      152 SETTABLEKS                       R10 R19 K37 ["ref"]
      154 NEWTABLE                         R20 4 0
      156 LOADB                            R21 1
      157 SETTABLEKS                       R21 R20 K43 ["row flex-x-between align-y-center shrink padding-xsmall radius-small clip"]
      159 GETTABLEKS                       R22 R0 K44 ["FillWidth"]
      161 NOT                              R21 R22
      162 SETTABLEKS                       R21 R20 K45 ["auto-xy"]
      164 GETTABLEKS                       R21 R0 K44 ["FillWidth"]
      166 SETTABLEKS                       R21 R20 K46 ["size-full-0 auto-y"]
      168 SETTABLEKS                       R5 R20 K47 ["bg-surface-300"]
      170 SETTABLEKS                       R20 R19 K38 ["tag"]
      172 NEWCLOSURE                       R20 P3
      173 CAPTURE                          VAL R6
      174 CAPTURE                          VAL R5
      175 SETTABLEKS                       R20 R19 K41 ["onActivated"]
      177 DUPTABLE                         R20 K50 [{"ScopeDetails", "ChevronIcon"}]
      178 GETUPVAL                         R21 4
      179 GETTABLEKS                       R21 R21 K6 ["createElement"]
      181 GETUPVAL                         R22 7
      182 GETTABLEKS                       R22 R22 K35 ["View"]
      184 DUPTABLE                         R23 K51 [{"tag"}]
      185 LOADK                            R24 K52 ["row gap-xsmall %*"]
      186 GETTABLEKS                       R27 R0 K44 ["FillWidth"]
      188 JUMPIFNOT                        R27 ; [+2]
      189 LOADK                            R26 K53 ["fill auto-y"]
      190 JUMP                             ; [+1]
      191 LOADK                            R26 K45 ["auto-xy"]
      192 NAMECALL                         R24 R24 K54 ["format"]
      194 CALL                             R24 2 1
      195 SETTABLEKS                       R24 R23 K38 ["tag"]
      197 DUPTABLE                         R24 K57 [{"Icon", "Name"}]
      198 GETUPVAL                         R25 4
      199 GETTABLEKS                       R25 R25 K6 ["createElement"]
      201 GETUPVAL                         R26 9
      202 DUPTABLE                         R27 K59 [{"LayoutOrder", "ScopeType"}]
      203 NAMECALL                         R28 R1 K60 ["getNextOrder"]
      205 CALL                             R28 1 1
      206 SETTABLEKS                       R28 R27 K36 ["LayoutOrder"]
      208 GETTABLEKS                       R28 R4 K61 ["Type"]
      210 SETTABLEKS                       R28 R27 K58 ["ScopeType"]
      212 CALL                             R25 2 1
      213 SETTABLEKS                       R25 R24 K55 ["Icon"]
      215 GETTABLEKS                       R26 R0 K62 ["ShowTitle"]
      217 JUMPIFNOT                        R26 ; [+20]
      218 GETUPVAL                         R25 4
      219 GETTABLEKS                       R25 R25 K6 ["createElement"]
      221 GETUPVAL                         R26 7
      222 GETTABLEKS                       R26 R26 K63 ["Text"]
      224 DUPTABLE                         R27 K65 [{["LayoutOrder"], ["Text"], ["tag"] = "shrink auto-xy text-caption-medium text-truncate-split"}]
      225 NAMECALL                         R28 R1 K60 ["getNextOrder"]
      227 CALL                             R28 1 1
      228 SETTABLEKS                       R28 R27 K36 ["LayoutOrder"]
      230 GETUPVAL                         R28 10
      231 MOVE                             R29 R4
      232 MOVE                             R30 R2
      233 CALL                             R28 2 1
      234 SETTABLEKS                       R28 R27 K63 ["Text"]
      236 CALL                             R25 2 1
      237 JUMP                             ; [+1]
      238 LOADNIL                          R25
      239 SETTABLEKS                       R25 R24 K56 ["Name"]
      241 CALL                             R21 3 1
      242 SETTABLEKS                       R21 R20 K48 ["ScopeDetails"]
      244 GETUPVAL                         R21 4
      245 GETTABLEKS                       R21 R21 K6 ["createElement"]
      247 GETUPVAL                         R22 7
      248 GETTABLEKS                       R22 R22 K55 ["Icon"]
      250 DUPTABLE                         R23 K68 [{"LayoutOrder", "name", "size"}]
      251 NAMECALL                         R24 R1 K60 ["getNextOrder"]
      253 CALL                             R24 1 1
      254 SETTABLEKS                       R24 R23 K36 ["LayoutOrder"]
      256 JUMPIFNOT                        R5 ; [+8]
      257 GETUPVAL                         R24 7
      258 GETTABLEKS                       R24 R24 K30 ["Enums"]
      260 GETTABLEKS                       R24 R24 K69 ["IconName"]
      262 GETTABLEKS                       R24 R24 K70 ["ChevronSmallUp"]
      264 JUMP                             ; [+7]
      265 GETUPVAL                         R24 7
      266 GETTABLEKS                       R24 R24 K30 ["Enums"]
      268 GETTABLEKS                       R24 R24 K69 ["IconName"]
      270 GETTABLEKS                       R24 R24 K71 ["ChevronSmallDown"]
      272 SETTABLEKS                       R24 R23 K66 ["name"]
      274 GETUPVAL                         R24 7
      275 GETTABLEKS                       R24 R24 K30 ["Enums"]
      277 GETTABLEKS                       R24 R24 K72 ["IconSize"]
      279 GETTABLEKS                       R24 R24 K73 ["Small"]
      281 SETTABLEKS                       R24 R23 K67 ["size"]
      283 CALL                             R21 2 1
      284 SETTABLEKS                       R21 R20 K49 ["ChevronIcon"]
      286 CALL                             R17 3 1
      287 SETTABLEKS                       R17 R16 K13 ["Selector"]
      289 GETUPVAL                         R17 4
      290 GETTABLEKS                       R17 R17 K6 ["createElement"]
      292 GETUPVAL                         R18 7
      293 GETTABLEKS                       R18 R18 K7 ["Popover"]
      295 GETTABLEKS                       R18 R18 K14 ["Content"]
      297 DUPTABLE                         R19 K77 [{["hasArrow"] = False, ["side"], ["align"], ["onPressedOutside"]}]
      298 GETUPVAL                         R20 7
      299 GETTABLEKS                       R20 R20 K30 ["Enums"]
      301 GETTABLEKS                       R20 R20 K31 ["PopoverSide"]
      303 GETTABLEKS                       R20 R20 K32 ["Bottom"]
      305 SETTABLEKS                       R20 R19 K23 ["side"]
      307 GETUPVAL                         R20 7
      308 GETTABLEKS                       R20 R20 K30 ["Enums"]
      310 GETTABLEKS                       R20 R20 K33 ["PopoverAlign"]
      312 GETTABLEKS                       R20 R20 K78 ["Start"]
      314 SETTABLEKS                       R20 R19 K24 ["align"]
      316 NEWCLOSURE                       R20 P4
      317 CAPTURE                          VAL R6
      318 SETTABLEKS                       R20 R19 K76 ["onPressedOutside"]
      320 GETUPVAL                         R20 4
      321 GETTABLEKS                       R20 R20 K6 ["createElement"]
      323 GETUPVAL                         R21 11
      324 DUPTABLE                         R22 K80 [{"Width"}]
      325 GETTABLEKS                       R24 R0 K44 ["FillWidth"]
      327 JUMPIFNOT                        R24 ; [+6]
      328 JUMPIFNOT                        R8 ; [+5]
      329 GETTABLEKS                       R23 R8 K81 ["AbsoluteSize"]
      331 GETTABLEKS                       R23 R23 K82 ["X"]
      333 JUMP                             ; [+1]
      334 LOADNIL                          R23
      335 SETTABLEKS                       R23 R22 K79 ["Width"]
      337 CALL                             R20 2 -1
      338 CALL                             R17 -1 1
      339 SETTABLEKS                       R17 R16 K14 ["Content"]
      341 CALL                             R13 3 -1
      342 RETURN                           R13 -1

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
       65 GETTABLEKS                       R11 R11 K17 ["Components"]
       67 GETTABLEKS                       R11 R11 K18 ["Shared"]
       69 GETTABLEKS                       R11 R11 K20 ["TutorialTooltip"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K5 [require]
       74 GETTABLEKS                       R12 R0 K6 ["Src"]
       76 GETTABLEKS                       R12 R12 K21 ["Resources"]
       78 GETTABLEKS                       R12 R12 K22 ["StyleConstants"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K5 [require]
       83 GETTABLEKS                       R13 R0 K6 ["Src"]
       85 GETTABLEKS                       R13 R13 K23 ["Controllers"]
       87 GETTABLEKS                       R13 R13 K24 ["PluginController"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K5 [require]
       92 GETTABLEKS                       R14 R0 K6 ["Src"]
       94 GETTABLEKS                       R14 R14 K23 ["Controllers"]
       96 GETTABLEKS                       R14 R14 K25 ["ExplorerController"]
       98 CALL                             R13 1 1
       99 GETIMPORT                        R14 K5 [require]
      101 GETTABLEKS                       R15 R0 K6 ["Src"]
      103 GETTABLEKS                       R15 R15 K23 ["Controllers"]
      105 GETTABLEKS                       R15 R15 K26 ["SearchController"]
      107 CALL                             R14 1 1
      108 GETIMPORT                        R15 K5 [require]
      110 GETTABLEKS                       R16 R0 K6 ["Src"]
      112 GETTABLEKS                       R16 R16 K27 ["Hooks"]
      114 GETTABLEKS                       R16 R16 K28 ["useCurrentScope"]
      116 CALL                             R15 1 1
      117 GETIMPORT                        R16 K5 [require]
      119 GETTABLEKS                       R17 R0 K6 ["Src"]
      121 GETTABLEKS                       R17 R17 K27 ["Hooks"]
      123 GETTABLEKS                       R17 R17 K29 ["useExplorerInfo"]
      125 CALL                             R16 1 1
      126 GETIMPORT                        R17 K5 [require]
      128 GETTABLEKS                       R18 R0 K6 ["Src"]
      130 GETTABLEKS                       R18 R18 K27 ["Hooks"]
      132 GETTABLEKS                       R18 R18 K30 ["useSourceList"]
      134 CALL                             R17 1 1
      135 GETIMPORT                        R18 K5 [require]
      137 GETTABLEKS                       R19 R0 K6 ["Src"]
      139 GETTABLEKS                       R19 R19 K27 ["Hooks"]
      141 GETTABLEKS                       R19 R19 K31 ["useSearchInfo"]
      143 CALL                             R18 1 1
      144 GETIMPORT                        R19 K5 [require]
      146 GETTABLEKS                       R20 R0 K6 ["Src"]
      148 GETTABLEKS                       R20 R20 K27 ["Hooks"]
      150 GETTABLEKS                       R20 R20 K32 ["usePluginSize"]
      152 CALL                             R19 1 1
      153 GETIMPORT                        R20 K5 [require]
      155 GETTABLEKS                       R21 R0 K6 ["Src"]
      157 GETTABLEKS                       R21 R21 K27 ["Hooks"]
      159 GETTABLEKS                       R21 R21 K33 ["useIsCompact"]
      161 CALL                             R20 1 1
      162 GETIMPORT                        R21 K5 [require]
      164 GETTABLEKS                       R22 R0 K6 ["Src"]
      166 GETTABLEKS                       R22 R22 K13 ["Util"]
      168 GETTABLEKS                       R22 R22 K34 ["hasMatchingTerm"]
      170 CALL                             R21 1 1
      171 GETIMPORT                        R22 K5 [require]
      173 GETTABLEKS                       R23 R0 K6 ["Src"]
      175 GETTABLEKS                       R23 R23 K13 ["Util"]
      177 GETTABLEKS                       R23 R23 K35 ["getLocalizedScopeName"]
      179 CALL                             R22 1 1
      180 DUPCLOSURE                       R23 K36 [PROTO_1]
      181 CAPTURE                          VAL R15
      182 CAPTURE                          VAL R8
      183 CAPTURE                          VAL R12
      184 CAPTURE                          VAL R14
      185 CAPTURE                          VAL R18
      186 CAPTURE                          VAL R3
      187 CAPTURE                          VAL R4
      188 CAPTURE                          VAL R9
      189 CAPTURE                          VAL R22
      190 DUPCLOSURE                       R24 K37 [PROTO_7]
      191 CAPTURE                          VAL R8
      192 CAPTURE                          VAL R13
      193 CAPTURE                          VAL R19
      194 CAPTURE                          VAL R16
      195 CAPTURE                          VAL R17
      196 CAPTURE                          VAL R18
      197 CAPTURE                          VAL R3
      198 CAPTURE                          VAL R2
      199 CAPTURE                          VAL R1
      200 CAPTURE                          VAL R22
      201 CAPTURE                          VAL R21
      202 CAPTURE                          VAL R4
      203 CAPTURE                          VAL R11
      204 CAPTURE                          VAL R23
      205 DUPCLOSURE                       R25 K38 [PROTO_13]
      206 CAPTURE                          VAL R6
      207 CAPTURE                          VAL R8
      208 CAPTURE                          VAL R12
      209 CAPTURE                          VAL R15
      210 CAPTURE                          VAL R3
      211 CAPTURE                          VAL R20
      212 CAPTURE                          VAL R1
      213 CAPTURE                          VAL R4
      214 CAPTURE                          VAL R10
      215 CAPTURE                          VAL R9
      216 CAPTURE                          VAL R22
      217 CAPTURE                          VAL R24
      218 RETURN                           R25 1
