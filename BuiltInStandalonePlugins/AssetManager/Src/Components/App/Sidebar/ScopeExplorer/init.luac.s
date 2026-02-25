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
        2 JUMPIFNOT                        R0 ; [+11]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K0 ["MenuContext"]
        7 GETTABLEKS                       R2 R3 K1 ["Sidebar"]
        9 GETTABLE                         R0 R1 R2
       10 GETUPVAL                         R1 3
       11 GETUPVAL                         R2 4
       12 CALL                             R0 2 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R0 4
       15 GETUPVAL                         R2 3
       16 NAMECALL                         R0 R0 K2 ["handleRightClick_DEPRECATED"]
       18 CALL                             R0 2 0
       19 RETURN                           R0 0

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
        2 JUMPIFNOT                        R0 ; [+11]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K0 ["MenuContext"]
        7 GETTABLEKS                       R2 R3 K1 ["Sidebar"]
        9 GETTABLE                         R0 R1 R2
       10 GETUPVAL                         R1 3
       11 GETUPVAL                         R2 4
       12 CALL                             R0 2 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R0 4
       15 GETUPVAL                         R2 3
       16 NAMECALL                         R0 R0 K2 ["handleRightClick_DEPRECATED"]
       18 CALL                             R0 2 0
       19 RETURN                           R0 0

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
       15 CALL                             R5 0 1
       16 JUMPIFNOT                        R5 ; [+89]
       17 GETUPVAL                         R5 5
       18 CALL                             R5 0 1
       19 GETUPVAL                         R7 6
       20 GETTABLEKS                       R6 R7 K2 ["useCallback"]
       22 NEWCLOSURE                       R7 P0
       23 CAPTURE                          VAL R5
       24 NEWTABLE                         R8 0 1
       26 MOVE                             R9 R5
       27 SETLIST                          R8 R9 1 [1]
       29 CALL                             R6 2 1
       30 GETUPVAL                         R8 6
       31 GETTABLEKS                       R7 R8 K2 ["useCallback"]
       33 NEWCLOSURE                       R8 P1
       34 CAPTURE                          VAL R3
       35 NEWTABLE                         R9 0 1
       37 MOVE                             R10 R3
       38 SETLIST                          R9 R10 1 [1]
       40 CALL                             R7 2 1
       41 GETUPVAL                         R9 6
       42 GETTABLEKS                       R8 R9 K3 ["createElement"]
       44 GETUPVAL                         R9 7
       45 NEWTABLE                         R10 4 0
       47 GETTABLEKS                       R11 R0 K4 ["LayoutOrder"]
       49 SETTABLEKS                       R11 R10 K4 ["LayoutOrder"]
       51 NEWCLOSURE                       R11 P2
       52 CAPTURE                          UPVAL U8
       53 CAPTURE                          UPVAL U9
       54 CAPTURE                          UPVAL U10
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R3
       57 SETTABLEKS                       R11 R10 K5 ["OnRightClick"]
       59 GETUPVAL                         R12 6
       60 GETTABLEKS                       R11 R12 K6 ["Tag"]
       62 LOADK                            R12 K7 ["Explorer X-Column"]
       63 SETTABLE                         R12 R10 R11
       64 DUPTABLE                         R11 K9 [{"TreeView"}]
       65 GETUPVAL                         R13 6
       66 GETTABLEKS                       R12 R13 K3 ["createElement"]
       68 GETUPVAL                         R13 11
       69 NEWTABLE                         R14 8 0
       71 NAMECALL                         R15 R2 K10 ["getNextOrder"]
       73 CALL                             R15 1 1
       74 SETTABLEKS                       R15 R14 K4 ["LayoutOrder"]
       76 GETTABLEKS                       R15 R0 K11 ["ExplorerItems"]
       78 SETTABLEKS                       R15 R14 K12 ["RootItems"]
       80 GETTABLEKS                       R15 R4 K13 ["Expansion"]
       82 SETTABLEKS                       R15 R14 K13 ["Expansion"]
       84 NEWCLOSURE                       R15 P3
       85 CAPTURE                          VAL R7
       86 SETTABLEKS                       R15 R14 K14 ["GetChildren"]
       88 SETTABLEKS                       R6 R14 K15 ["GetRowProps"]
       90 DUPCLOSURE                       R15 K16 [PROTO_4]
       91 SETTABLEKS                       R15 R14 K17 ["GetItemId"]
       93 GETUPVAL                         R15 12
       94 SETTABLEKS                       R15 R14 K18 ["RowComponent"]
       96 GETUPVAL                         R16 6
       97 GETTABLEKS                       R15 R16 K6 ["Tag"]
       99 LOADK                            R16 K19 [""]
      100 SETTABLE                         R16 R14 R15
      101 CALL                             R12 2 1
      102 SETTABLEKS                       R12 R11 K8 ["TreeView"]
      104 CALL                             R8 3 -1
      105 RETURN                           R8 -1
      106 GETUPVAL                         R6 6
      107 GETTABLEKS                       R5 R6 K3 ["createElement"]
      109 GETUPVAL                         R6 7
      110 NEWTABLE                         R7 4 0
      112 GETTABLEKS                       R8 R0 K4 ["LayoutOrder"]
      114 SETTABLEKS                       R8 R7 K4 ["LayoutOrder"]
      116 NEWCLOSURE                       R8 P5
      117 CAPTURE                          UPVAL U8
      118 CAPTURE                          UPVAL U9
      119 CAPTURE                          UPVAL U10
      120 CAPTURE                          VAL R1
      121 CAPTURE                          VAL R3
      122 SETTABLEKS                       R8 R7 K5 ["OnRightClick"]
      124 GETUPVAL                         R9 6
      125 GETTABLEKS                       R8 R9 K6 ["Tag"]
      127 LOADK                            R9 K7 ["Explorer X-Column"]
      128 SETTABLE                         R9 R7 R8
      129 DUPTABLE                         R8 K9 [{"TreeView"}]
      130 GETUPVAL                         R10 6
      131 GETTABLEKS                       R9 R10 K3 ["createElement"]
      133 GETUPVAL                         R10 11
      134 NEWTABLE                         R11 8 0
      136 NAMECALL                         R12 R2 K10 ["getNextOrder"]
      138 CALL                             R12 1 1
      139 SETTABLEKS                       R12 R11 K4 ["LayoutOrder"]
      141 GETTABLEKS                       R12 R0 K11 ["ExplorerItems"]
      143 SETTABLEKS                       R12 R11 K12 ["RootItems"]
      145 GETTABLEKS                       R12 R4 K13 ["Expansion"]
      147 SETTABLEKS                       R12 R11 K13 ["Expansion"]
      149 DUPCLOSURE                       R12 K20 [PROTO_6]
      150 SETTABLEKS                       R12 R11 K21 ["OnExpansionChange"]
      152 GETUPVAL                         R12 13
      153 SETTABLEKS                       R12 R11 K18 ["RowComponent"]
      155 GETUPVAL                         R13 6
      156 GETTABLEKS                       R12 R13 K6 ["Tag"]
      158 LOADK                            R13 K19 [""]
      159 SETTABLE                         R13 R11 R12
      160 CALL                             R9 2 1
      161 SETTABLEKS                       R9 R8 K8 ["TreeView"]
      163 CALL                             R5 3 -1
      164 RETURN                           R5 -1

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
       67 GETTABLEKS                       R13 R14 K21 ["useExplorerInfo"]
       69 CALL                             R12 1 1
       70 GETIMPORT                        R13 K5 [require]
       72 GETTABLEKS                       R16 R0 K9 ["Src"]
       74 GETTABLEKS                       R15 R16 K20 ["Hooks"]
       76 GETTABLEKS                       R14 R15 K22 ["useIsFetchingFolders"]
       78 CALL                             R13 1 1
       79 GETTABLEKS                       R15 R2 K23 ["Util"]
       81 GETTABLEKS                       R14 R15 K24 ["LayoutOrderIterator"]
       83 GETIMPORT                        R15 K5 [require]
       85 GETTABLEKS                       R18 R0 K9 ["Src"]
       87 GETTABLEKS                       R17 R18 K23 ["Util"]
       89 GETTABLEKS                       R16 R17 K25 ["renderContextMenu"]
       91 CALL                             R15 1 1
       92 GETIMPORT                        R16 K5 [require]
       94 GETTABLEKS                       R19 R0 K9 ["Src"]
       96 GETTABLEKS                       R18 R19 K26 ["Flags"]
       98 GETTABLEKS                       R17 R18 K27 ["getFFlagAmrOrganizationFoundation"]
      100 CALL                             R16 1 1
      101 GETIMPORT                        R17 K5 [require]
      103 GETTABLEKS                       R20 R0 K9 ["Src"]
      105 GETTABLEKS                       R19 R20 K26 ["Flags"]
      107 GETTABLEKS                       R18 R19 K28 ["getFFlagAmrCleanupContextAndInput"]
      109 CALL                             R17 1 1
      110 DUPCLOSURE                       R18 K29 [PROTO_7]
      111 CAPTURE                          VAL R5
      112 CAPTURE                          VAL R14
      113 CAPTURE                          VAL R11
      114 CAPTURE                          VAL R12
      115 CAPTURE                          VAL R16
      116 CAPTURE                          VAL R13
      117 CAPTURE                          VAL R1
      118 CAPTURE                          VAL R7
      119 CAPTURE                          VAL R17
      120 CAPTURE                          VAL R15
      121 CAPTURE                          VAL R3
      122 CAPTURE                          VAL R8
      123 CAPTURE                          VAL R10
      124 CAPTURE                          VAL R9
      125 RETURN                           R18 1
