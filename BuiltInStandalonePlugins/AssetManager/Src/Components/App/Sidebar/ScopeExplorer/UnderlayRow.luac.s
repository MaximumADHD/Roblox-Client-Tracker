PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["clearRecentlyCreatedFolder"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["clearRecentlyCreatedFolder"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 GETIMPORT                        R0 K3 [task.cancel]
        9 GETUPVAL                         R1 2
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 NAMECALL                         R0 R0 K1 ["getRecentlyCreatedFolder"]
        8 CALL                             R0 1 1
        9 JUMPIFNOT                        R0 ; [+5]
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K2 ["Uid"]
       13 JUMPIFEQ                         R0 R1 ; [+2]
       15 RETURN                           R0 0
       16 GETUPVAL                         R1 3
       17 LOADB                            R2 1
       18 CALL                             R1 1 0
       19 GETUPVAL                         R1 1
       20 MOVE                             R3 R0
       21 NAMECALL                         R1 R1 K3 ["getFolderIndex"]
       23 CALL                             R1 2 1
       24 JUMPIFEQKNIL                     R1 ; [+6]
       26 GETUPVAL                         R2 4
       27 MOVE                             R4 R1
       28 NAMECALL                         R2 R2 K4 ["scrollToSidebarItem"]
       30 CALL                             R2 2 0
       31 GETIMPORT                        R2 K7 [task.delay]
       33 GETUPVAL                         R3 5
       34 GETTABLEKS                       R3 R3 K8 ["RecentlyCreatedFolderHighlightTime"]
       36 NEWCLOSURE                       R4 P0
       37 CAPTURE                          UPVAL U1
       38 CAPTURE                          UPVAL U3
       39 CALL                             R2 2 1
       40 NEWCLOSURE                       R3 P1
       41 CAPTURE                          UPVAL U1
       42 CAPTURE                          UPVAL U3
       43 CAPTURE                          VAL R2
       44 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R5 R5 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R5 K1 ["Sidebar"]
        6 GETUPVAL                         R6 2
        7 NAMECALL                         R3 R3 K2 ["handleMouse1Down"]
        9 CALL                             R3 3 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R5 R5 K0 ["UiZone"]
        4 GETTABLEKS                       R5 R5 K1 ["Sidebar"]
        6 GETUPVAL                         R6 2
        7 NAMECALL                         R3 R3 K2 ["handleMouse1Up"]
        9 CALL                             R3 3 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K0 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K1 ["useRef"]
       15 LOADNIL                          R5
       16 CALL                             R4 1 1
       17 GETTABLEKS                       R5 R0 K2 ["Item"]
       19 GETUPVAL                         R6 4
       20 CALL                             R6 0 1
       21 GETUPVAL                         R7 5
       22 GETUPVAL                         R8 6
       23 GETTABLEKS                       R8 R8 K3 ["MenuContext"]
       25 GETTABLEKS                       R8 R8 K4 ["Sidebar"]
       27 DUPTABLE                         R9 K7 [{"Scope", "Depth"}]
       28 SETTABLEKS                       R5 R9 K5 ["Scope"]
       30 GETTABLEKS                       R10 R0 K6 ["Depth"]
       32 SETTABLEKS                       R10 R9 K6 ["Depth"]
       34 CALL                             R7 2 1
       35 GETTABLEKS                       R9 R6 K8 ["Uid"]
       37 GETTABLEKS                       R10 R5 K8 ["Uid"]
       39 JUMPIFEQ                         R9 R10 ; [+2]
       41 LOADB                            R8 0 +1
       42 LOADB                            R8 1
       43 GETUPVAL                         R9 7
       44 GETTABLEKS                       R10 R0 K9 ["Position"]
       46 GETTABLEKS                       R10 R10 K10 ["Y"]
       48 GETTABLEKS                       R10 R10 K11 ["Offset"]
       50 CALL                             R9 1 1
       51 GETUPVAL                         R10 8
       52 MOVE                             R11 R4
       53 MOVE                             R12 R5
       54 CALL                             R10 2 1
       55 GETUPVAL                         R11 3
       56 GETTABLEKS                       R11 R11 K12 ["useState"]
       58 LOADB                            R12 0
       59 CALL                             R11 1 2
       60 GETUPVAL                         R13 3
       61 GETTABLEKS                       R13 R13 K13 ["useEffect"]
       63 NEWCLOSURE                       R14 P0
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R12
       68 CAPTURE                          VAL R1
       69 CAPTURE                          UPVAL U9
       70 NEWTABLE                         R15 0 2
       72 MOVE                             R16 R5
       73 GETTABLEKS                       R17 R5 K8 ["Uid"]
       75 SETLIST                          R15 R16 2 [1]
       77 CALL                             R13 2 0
       78 GETUPVAL                         R13 3
       79 GETTABLEKS                       R13 R13 K14 ["createElement"]
       81 GETUPVAL                         R14 10
       82 GETTABLEKS                       R14 R14 K15 ["View"]
       84 DUPTABLE                         R15 K20 [{"LayoutOrder", "Position", "ref", "tag", "testId"}]
       85 GETTABLEKS                       R16 R0 K21 ["Index"]
       87 SETTABLEKS                       R16 R15 K16 ["LayoutOrder"]
       89 GETTABLEKS                       R16 R0 K9 ["Position"]
       91 SETTABLEKS                       R16 R15 K9 ["Position"]
       93 SETTABLEKS                       R4 R15 K17 ["ref"]
       95 NEWTABLE                         R16 4 0
       97 LOADB                            R17 1
       98 SETTABLEKS                       R17 R16 K22 ["size-full-600 radius-small"]
      100 JUMPIFNOT                        R8 ; [+2]
      101 LOADK                            R17 K23 ["bg-action-selected"]
      102 JUMP                             ; [+4]
      103 JUMPIFNOT                        R9 ; [+2]
      104 LOADK                            R17 K24 ["am-bg-action-hover"]
      105 JUMP                             ; [+1]
      106 LOADK                            R17 K25 [""]
      107 LOADB                            R18 1
      108 SETTABLE                         R18 R16 R17
      109 OR                               R17 R10 R11
      110 SETTABLEKS                       R17 R16 K26 ["stroke-standard stroke-position-inner stroke-system-emphasis"]
      112 SETTABLEKS                       R16 R15 K18 ["tag"]
      114 LOADK                            R16 K27 ["underlay-row%*"]
      115 JUMPIFNOT                        R11 ; [+2]
      116 LOADK                            R18 K28 ["-new"]
      117 JUMP                             ; [+1]
      118 LOADK                            R18 K25 [""]
      119 NAMECALL                         R16 R16 K29 ["format"]
      121 CALL                             R16 2 1
      122 SETTABLEKS                       R16 R15 K19 ["testId"]
      124 DUPTABLE                         R16 K31 [{"ClickTarget"}]
      125 GETUPVAL                         R18 11
      126 CALL                             R18 0 1
      127 JUMPIFNOT                        R18 ; [+41]
      128 GETUPVAL                         R17 3
      129 GETTABLEKS                       R17 R17 K14 ["createElement"]
      131 LOADK                            R18 K32 ["ImageButton"]
      132 NEWTABLE                         R19 4 0
      134 GETUPVAL                         R20 3
      135 GETTABLEKS                       R20 R20 K33 ["Event"]
      137 GETTABLEKS                       R20 R20 K34 ["MouseButton1Down"]
      139 NEWCLOSURE                       R21 P1
      140 CAPTURE                          VAL R3
      141 CAPTURE                          UPVAL U6
      142 CAPTURE                          VAL R5
      143 SETTABLE                         R21 R19 R20
      144 GETUPVAL                         R20 3
      145 GETTABLEKS                       R20 R20 K33 ["Event"]
      147 GETTABLEKS                       R20 R20 K35 ["MouseButton1Up"]
      149 NEWCLOSURE                       R21 P2
      150 CAPTURE                          VAL R3
      151 CAPTURE                          UPVAL U6
      152 CAPTURE                          VAL R5
      153 SETTABLE                         R21 R19 R20
      154 GETUPVAL                         R20 3
      155 GETTABLEKS                       R20 R20 K33 ["Event"]
      157 GETTABLEKS                       R20 R20 K36 ["MouseButton2Click"]
      159 NEWCLOSURE                       R21 P3
      160 CAPTURE                          VAL R7
      161 SETTABLE                         R21 R19 R20
      162 GETUPVAL                         R20 3
      163 GETTABLEKS                       R20 R20 K37 ["Tag"]
      165 LOADK                            R21 K38 ["size-full gui-object-defaults data-testid=underlay-row-click-target"]
      166 SETTABLE                         R21 R19 R20
      167 CALL                             R17 2 1
      168 JUMP                             ; [+1]
      169 LOADNIL                          R17
      170 SETTABLEKS                       R17 R16 K30 ["ClickTarget"]
      172 CALL                             R13 3 -1
      173 RETURN                           R13 -1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["Item"]
        2 GETTABLEKS                       R1 R1 K1 ["Type"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["ScopeType"]
        7 GETTABLEKS                       R2 R2 K3 ["Header"]
        9 JUMPIFNOTEQ                      R1 R2 ; [+3]
       11 LOADNIL                          R1
       12 RETURN                           R1 1
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K4 ["createElement"]
       16 GETUPVAL                         R2 2
       17 DUPTABLE                         R3 K8 [{"Index", "Item", "Position", "Depth"}]
       18 GETTABLEKS                       R4 R0 K5 ["Index"]
       20 SETTABLEKS                       R4 R3 K5 ["Index"]
       22 GETTABLEKS                       R4 R0 K0 ["Item"]
       24 SETTABLEKS                       R4 R3 K0 ["Item"]
       26 GETTABLEKS                       R4 R0 K6 ["Position"]
       28 SETTABLEKS                       R4 R3 K6 ["Position"]
       30 GETTABLEKS                       R4 R0 K7 ["Depth"]
       32 SETTABLEKS                       R4 R3 K7 ["Depth"]
       34 CALL                             R1 2 -1
       35 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
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
       25 GETTABLEKS                       R4 R4 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Resources"]
       34 GETTABLEKS                       R5 R5 K12 ["Constants"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K9 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["Controllers"]
       43 GETTABLEKS                       R6 R6 K14 ["LayoutController"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K9 ["Src"]
       50 GETTABLEKS                       R7 R7 K13 ["Controllers"]
       52 GETTABLEKS                       R7 R7 K15 ["ExplorerController"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K9 ["Src"]
       59 GETTABLEKS                       R8 R8 K13 ["Controllers"]
       61 GETTABLEKS                       R8 R8 K16 ["Input"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K9 ["Src"]
       68 GETTABLEKS                       R9 R9 K17 ["Hooks"]
       70 GETTABLEKS                       R9 R9 K18 ["useCurrentScope"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R10 R0 K9 ["Src"]
       77 GETTABLEKS                       R10 R10 K17 ["Hooks"]
       79 GETTABLEKS                       R10 R10 K19 ["useContextMenu"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETTABLEKS                       R11 R0 K9 ["Src"]
       86 GETTABLEKS                       R11 R11 K17 ["Hooks"]
       88 GETTABLEKS                       R11 R11 K20 ["useSidebarScopeHovered"]
       90 CALL                             R10 1 1
       91 GETIMPORT                        R11 K5 [require]
       93 GETTABLEKS                       R12 R0 K9 ["Src"]
       95 GETTABLEKS                       R12 R12 K17 ["Hooks"]
       97 GETTABLEKS                       R12 R12 K21 ["useSidebarScopeDragHovered"]
       99 CALL                             R11 1 1
      100 GETIMPORT                        R12 K5 [require]
      102 GETTABLEKS                       R13 R0 K9 ["Src"]
      104 GETTABLEKS                       R13 R13 K22 ["Flags"]
      106 GETTABLEKS                       R13 R13 K23 ["getFFlagAmrFixSidebar"]
      108 CALL                             R12 1 1
      109 GETIMPORT                        R13 K5 [require]
      111 GETIMPORT                        R14 K1 [script]
      113 GETTABLEKS                       R14 R14 K24 ["Parent"]
      115 GETTABLEKS                       R14 R14 K25 ["Row"]
      117 CALL                             R13 1 1
      118 DUPCLOSURE                       R14 K26 [PROTO_6]
      119 CAPTURE                          VAL R5
      120 CAPTURE                          VAL R6
      121 CAPTURE                          VAL R7
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R8
      124 CAPTURE                          VAL R9
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R10
      127 CAPTURE                          VAL R11
      128 CAPTURE                          VAL R4
      129 CAPTURE                          VAL R1
      130 CAPTURE                          VAL R12
      131 DUPCLOSURE                       R15 K27 [PROTO_7]
      132 CAPTURE                          VAL R3
      133 CAPTURE                          VAL R2
      134 CAPTURE                          VAL R14
      135 RETURN                           R15 1
