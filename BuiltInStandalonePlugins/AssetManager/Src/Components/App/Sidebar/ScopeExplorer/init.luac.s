PROTO_0:
        0 DUPTABLE                         R4 K6 [{"Key", "Index", "Item", "Depth", "Position", "IsLoading"}]
        1 SETTABLEKS                       R1 R4 K0 ["Key"]
        3 SETTABLEKS                       R1 R4 K1 ["Index"]
        5 GETTABLEKS                       R5 R0 K7 ["item"]
        7 SETTABLEKS                       R5 R4 K2 ["Item"]
        9 GETTABLEKS                       R5 R0 K8 ["depth"]
       11 SETTABLEKS                       R5 R4 K3 ["Depth"]
       13 SETTABLEKS                       R2 R4 K4 ["Position"]
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R9 R0 K7 ["item"]
       18 GETTABLEKS                       R8 R9 K10 ["Uid"]
       20 GETTABLE                         R6 R7 R8
       21 ORK                              R5 R6 K9 [False]
       22 SETTABLEKS                       R5 R4 K5 ["IsLoading"]
       24 RETURN                           R4 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 MOVE                             R8 R1
        7 GETUPVAL                         R9 0
        8 MOVE                             R11 R6
        9 NAMECALL                         R9 R9 K0 ["getScopeWithUid"]
       11 CALL                             R9 2 -1
       12 FASTCALL                         TABLE_INSERT ; [+2]
       13 GETIMPORT                        R7 K3 [table.insert]
       15 CALL                             R7 -1 0
       16 FORGLOOP                         R2 2 ; [-11]
       18 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+3]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 2
        7 GETUPVAL                         R4 3
        8 GETTABLEKS                       R3 R4 K0 ["MenuContext"]
       10 GETTABLEKS                       R2 R3 K1 ["Sidebar"]
       12 GETTABLE                         R0 R1 R2
       13 GETUPVAL                         R1 4
       14 GETUPVAL                         R2 5
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Children"]
        3 JUMPIF                           R2 ; [+2]
        4 NEWTABLE                         R2 0 0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["Uid"]
        2 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+3]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 2
        7 GETUPVAL                         R4 3
        8 GETTABLEKS                       R3 R4 K0 ["MenuContext"]
       10 GETTABLEKS                       R2 R3 K1 ["Sidebar"]
       12 GETTABLE                         R0 R1 R2
       13 GETUPVAL                         R1 4
       14 GETUPVAL                         R2 5
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["new"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K0 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 CALL                             R4 0 1
       14 GETUPVAL                         R5 4
       15 GETUPVAL                         R8 5
       16 GETTABLEKS                       R7 R8 K2 ["MenuContext"]
       18 GETTABLEKS                       R6 R7 K3 ["Sidebar"]
       20 CALL                             R5 1 1
       21 GETUPVAL                         R6 6
       22 CALL                             R6 0 1
       23 JUMPIFNOT                        R6 ; [+90]
       24 GETUPVAL                         R6 7
       25 CALL                             R6 0 1
       26 GETUPVAL                         R8 8
       27 GETTABLEKS                       R7 R8 K4 ["useCallback"]
       29 NEWCLOSURE                       R8 P0
       30 CAPTURE                          VAL R6
       31 NEWTABLE                         R9 0 1
       33 MOVE                             R10 R6
       34 SETLIST                          R9 R10 1 [1]
       36 CALL                             R7 2 1
       37 GETUPVAL                         R9 8
       38 GETTABLEKS                       R8 R9 K4 ["useCallback"]
       40 NEWCLOSURE                       R9 P1
       41 CAPTURE                          VAL R3
       42 NEWTABLE                         R10 0 1
       44 MOVE                             R11 R3
       45 SETLIST                          R10 R11 1 [1]
       47 CALL                             R8 2 1
       48 GETUPVAL                         R10 8
       49 GETTABLEKS                       R9 R10 K5 ["createElement"]
       51 GETUPVAL                         R10 9
       52 NEWTABLE                         R11 4 0
       54 GETTABLEKS                       R12 R0 K6 ["LayoutOrder"]
       56 SETTABLEKS                       R12 R11 K6 ["LayoutOrder"]
       58 NEWCLOSURE                       R12 P2
       59 CAPTURE                          UPVAL U10
       60 CAPTURE                          VAL R5
       61 CAPTURE                          UPVAL U11
       62 CAPTURE                          UPVAL U5
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R3
       65 SETTABLEKS                       R12 R11 K7 ["OnRightClick"]
       67 GETUPVAL                         R13 8
       68 GETTABLEKS                       R12 R13 K8 ["Tag"]
       70 LOADK                            R13 K9 ["Explorer X-Column"]
       71 SETTABLE                         R13 R11 R12
       72 DUPTABLE                         R12 K11 [{"TreeView"}]
       73 GETUPVAL                         R14 8
       74 GETTABLEKS                       R13 R14 K5 ["createElement"]
       76 GETUPVAL                         R14 12
       77 NEWTABLE                         R15 8 0
       79 NAMECALL                         R16 R2 K12 ["getNextOrder"]
       81 CALL                             R16 1 1
       82 SETTABLEKS                       R16 R15 K6 ["LayoutOrder"]
       84 GETTABLEKS                       R16 R0 K13 ["ExplorerItems"]
       86 SETTABLEKS                       R16 R15 K14 ["RootItems"]
       88 GETTABLEKS                       R16 R4 K15 ["Expansion"]
       90 SETTABLEKS                       R16 R15 K15 ["Expansion"]
       92 NEWCLOSURE                       R16 P3
       93 CAPTURE                          VAL R8
       94 SETTABLEKS                       R16 R15 K16 ["GetChildren"]
       96 SETTABLEKS                       R7 R15 K17 ["GetRowProps"]
       98 DUPCLOSURE                       R16 K18 [PROTO_4]
       99 SETTABLEKS                       R16 R15 K19 ["GetItemId"]
      101 GETUPVAL                         R16 13
      102 SETTABLEKS                       R16 R15 K20 ["RowComponent"]
      104 GETUPVAL                         R17 8
      105 GETTABLEKS                       R16 R17 K8 ["Tag"]
      107 LOADK                            R17 K21 [""]
      108 SETTABLE                         R17 R15 R16
      109 CALL                             R13 2 1
      110 SETTABLEKS                       R13 R12 K10 ["TreeView"]
      112 CALL                             R9 3 -1
      113 RETURN                           R9 -1
      114 GETUPVAL                         R7 8
      115 GETTABLEKS                       R6 R7 K5 ["createElement"]
      117 GETUPVAL                         R7 9
      118 NEWTABLE                         R8 4 0
      120 GETTABLEKS                       R9 R0 K6 ["LayoutOrder"]
      122 SETTABLEKS                       R9 R8 K6 ["LayoutOrder"]
      124 NEWCLOSURE                       R9 P5
      125 CAPTURE                          UPVAL U10
      126 CAPTURE                          VAL R5
      127 CAPTURE                          UPVAL U11
      128 CAPTURE                          UPVAL U5
      129 CAPTURE                          VAL R1
      130 CAPTURE                          VAL R3
      131 SETTABLEKS                       R9 R8 K7 ["OnRightClick"]
      133 GETUPVAL                         R10 8
      134 GETTABLEKS                       R9 R10 K8 ["Tag"]
      136 LOADK                            R10 K9 ["Explorer X-Column"]
      137 SETTABLE                         R10 R8 R9
      138 DUPTABLE                         R9 K11 [{"TreeView"}]
      139 GETUPVAL                         R11 8
      140 GETTABLEKS                       R10 R11 K5 ["createElement"]
      142 GETUPVAL                         R11 12
      143 NEWTABLE                         R12 8 0
      145 NAMECALL                         R13 R2 K12 ["getNextOrder"]
      147 CALL                             R13 1 1
      148 SETTABLEKS                       R13 R12 K6 ["LayoutOrder"]
      150 GETTABLEKS                       R13 R0 K13 ["ExplorerItems"]
      152 SETTABLEKS                       R13 R12 K14 ["RootItems"]
      154 GETTABLEKS                       R13 R4 K15 ["Expansion"]
      156 SETTABLEKS                       R13 R12 K15 ["Expansion"]
      158 DUPCLOSURE                       R13 K22 [PROTO_6]
      159 SETTABLEKS                       R13 R12 K23 ["OnExpansionChange"]
      161 GETUPVAL                         R13 14
      162 SETTABLEKS                       R13 R12 K20 ["RowComponent"]
      164 GETUPVAL                         R14 8
      165 GETTABLEKS                       R13 R14 K8 ["Tag"]
      167 LOADK                            R14 K21 [""]
      168 SETTABLE                         R14 R12 R13
      169 CALL                             R10 2 1
      170 SETTABLEKS                       R10 R9 K10 ["TreeView"]
      172 CALL                             R6 3 -1
      173 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R5 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K11 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K12 ["Localization"]
       32 GETTABLEKS                       R6 R2 K13 ["UI"]
       34 GETTABLEKS                       R7 R6 K14 ["Pane"]
       36 GETTABLEKS                       R8 R6 K15 ["TreeView"]
       38 GETIMPORT                        R9 K5 [require]
       40 GETIMPORT                        R11 K1 [script]
       42 GETTABLEKS                       R10 R11 K16 ["ExplorerRow"]
       44 CALL                             R9 1 1
       45 GETIMPORT                        R10 K5 [require]
       47 GETIMPORT                        R12 K1 [script]
       49 GETTABLEKS                       R11 R12 K17 ["Row"]
       51 CALL                             R10 1 1
       52 GETIMPORT                        R11 K5 [require]
       54 GETTABLEKS                       R14 R0 K9 ["Src"]
       56 GETTABLEKS                       R13 R14 K18 ["Controllers"]
       58 GETTABLEKS                       R12 R13 K19 ["ExplorerController"]
       60 CALL                             R11 1 1
       61 GETIMPORT                        R12 K5 [require]
       63 GETTABLEKS                       R15 R0 K9 ["Src"]
       65 GETTABLEKS                       R14 R15 K20 ["Hooks"]
       67 GETTABLEKS                       R13 R14 K21 ["useContextMenu"]
       69 CALL                             R12 1 1
       70 GETIMPORT                        R13 K5 [require]
       72 GETTABLEKS                       R16 R0 K9 ["Src"]
       74 GETTABLEKS                       R15 R16 K20 ["Hooks"]
       76 GETTABLEKS                       R14 R15 K22 ["useExplorerInfo"]
       78 CALL                             R13 1 1
       79 GETIMPORT                        R14 K5 [require]
       81 GETTABLEKS                       R17 R0 K9 ["Src"]
       83 GETTABLEKS                       R16 R17 K20 ["Hooks"]
       85 GETTABLEKS                       R15 R16 K23 ["useIsFetchingFolders"]
       87 CALL                             R14 1 1
       88 GETTABLEKS                       R16 R2 K24 ["Util"]
       90 GETTABLEKS                       R15 R16 K25 ["LayoutOrderIterator"]
       92 GETIMPORT                        R16 K5 [require]
       94 GETTABLEKS                       R19 R0 K9 ["Src"]
       96 GETTABLEKS                       R18 R19 K24 ["Util"]
       98 GETTABLEKS                       R17 R18 K26 ["renderContextMenu"]
      100 CALL                             R16 1 1
      101 GETIMPORT                        R17 K5 [require]
      103 GETTABLEKS                       R20 R0 K9 ["Src"]
      105 GETTABLEKS                       R19 R20 K27 ["Flags"]
      107 GETTABLEKS                       R18 R19 K28 ["getFFlagAmrOrganizationFoundation"]
      109 CALL                             R17 1 1
      110 GETIMPORT                        R18 K5 [require]
      112 GETTABLEKS                       R21 R0 K9 ["Src"]
      114 GETTABLEKS                       R20 R21 K27 ["Flags"]
      116 GETTABLEKS                       R19 R20 K29 ["getFFlagAmrContextMenuRefactor"]
      118 CALL                             R18 1 1
      119 DUPCLOSURE                       R19 K30 [PROTO_7]
      120 CAPTURE                          VAL R5
      121 CAPTURE                          VAL R15
      122 CAPTURE                          VAL R11
      123 CAPTURE                          VAL R13
      124 CAPTURE                          VAL R12
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R17
      127 CAPTURE                          VAL R14
      128 CAPTURE                          VAL R1
      129 CAPTURE                          VAL R7
      130 CAPTURE                          VAL R18
      131 CAPTURE                          VAL R16
      132 CAPTURE                          VAL R8
      133 CAPTURE                          VAL R10
      134 CAPTURE                          VAL R9
      135 RETURN                           R19 1
