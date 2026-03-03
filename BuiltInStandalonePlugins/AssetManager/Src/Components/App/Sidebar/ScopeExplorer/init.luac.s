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
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["MenuContext"]
        4 GETTABLEKS                       R2 R3 K1 ["Sidebar"]
        6 GETTABLE                         R0 R1 R2
        7 GETUPVAL                         R1 2
        8 GETUPVAL                         R2 3
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

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
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["MenuContext"]
        4 GETTABLEKS                       R2 R3 K1 ["Sidebar"]
        6 GETTABLE                         R0 R1 R2
        7 GETUPVAL                         R1 2
        8 GETUPVAL                         R2 3
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

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
       16 JUMPIFNOT                        R5 ; [+88]
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
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R3
       56 SETTABLEKS                       R11 R10 K5 ["OnRightClick"]
       58 GETUPVAL                         R12 6
       59 GETTABLEKS                       R11 R12 K6 ["Tag"]
       61 LOADK                            R12 K7 ["Explorer X-Column"]
       62 SETTABLE                         R12 R10 R11
       63 DUPTABLE                         R11 K9 [{"TreeView"}]
       64 GETUPVAL                         R13 6
       65 GETTABLEKS                       R12 R13 K3 ["createElement"]
       67 GETUPVAL                         R13 10
       68 NEWTABLE                         R14 8 0
       70 NAMECALL                         R15 R2 K10 ["getNextOrder"]
       72 CALL                             R15 1 1
       73 SETTABLEKS                       R15 R14 K4 ["LayoutOrder"]
       75 GETTABLEKS                       R15 R0 K11 ["ExplorerItems"]
       77 SETTABLEKS                       R15 R14 K12 ["RootItems"]
       79 GETTABLEKS                       R15 R4 K13 ["Expansion"]
       81 SETTABLEKS                       R15 R14 K13 ["Expansion"]
       83 NEWCLOSURE                       R15 P3
       84 CAPTURE                          VAL R7
       85 SETTABLEKS                       R15 R14 K14 ["GetChildren"]
       87 SETTABLEKS                       R6 R14 K15 ["GetRowProps"]
       89 DUPCLOSURE                       R15 K16 [PROTO_4]
       90 SETTABLEKS                       R15 R14 K17 ["GetItemId"]
       92 GETUPVAL                         R15 11
       93 SETTABLEKS                       R15 R14 K18 ["RowComponent"]
       95 GETUPVAL                         R16 6
       96 GETTABLEKS                       R15 R16 K6 ["Tag"]
       98 LOADK                            R16 K19 [""]
       99 SETTABLE                         R16 R14 R15
      100 CALL                             R12 2 1
      101 SETTABLEKS                       R12 R11 K8 ["TreeView"]
      103 CALL                             R8 3 -1
      104 RETURN                           R8 -1
      105 GETUPVAL                         R6 6
      106 GETTABLEKS                       R5 R6 K3 ["createElement"]
      108 GETUPVAL                         R6 7
      109 NEWTABLE                         R7 4 0
      111 GETTABLEKS                       R8 R0 K4 ["LayoutOrder"]
      113 SETTABLEKS                       R8 R7 K4 ["LayoutOrder"]
      115 NEWCLOSURE                       R8 P5
      116 CAPTURE                          UPVAL U8
      117 CAPTURE                          UPVAL U9
      118 CAPTURE                          VAL R1
      119 CAPTURE                          VAL R3
      120 SETTABLEKS                       R8 R7 K5 ["OnRightClick"]
      122 GETUPVAL                         R9 6
      123 GETTABLEKS                       R8 R9 K6 ["Tag"]
      125 LOADK                            R9 K7 ["Explorer X-Column"]
      126 SETTABLE                         R9 R7 R8
      127 DUPTABLE                         R8 K9 [{"TreeView"}]
      128 GETUPVAL                         R10 6
      129 GETTABLEKS                       R9 R10 K3 ["createElement"]
      131 GETUPVAL                         R10 10
      132 NEWTABLE                         R11 8 0
      134 NAMECALL                         R12 R2 K10 ["getNextOrder"]
      136 CALL                             R12 1 1
      137 SETTABLEKS                       R12 R11 K4 ["LayoutOrder"]
      139 GETTABLEKS                       R12 R0 K11 ["ExplorerItems"]
      141 SETTABLEKS                       R12 R11 K12 ["RootItems"]
      143 GETTABLEKS                       R12 R4 K13 ["Expansion"]
      145 SETTABLEKS                       R12 R11 K13 ["Expansion"]
      147 DUPCLOSURE                       R12 K20 [PROTO_6]
      148 SETTABLEKS                       R12 R11 K21 ["OnExpansionChange"]
      150 GETUPVAL                         R12 12
      151 SETTABLEKS                       R12 R11 K18 ["RowComponent"]
      153 GETUPVAL                         R13 6
      154 GETTABLEKS                       R12 R13 K6 ["Tag"]
      156 LOADK                            R13 K19 [""]
      157 SETTABLE                         R13 R11 R12
      158 CALL                             R9 2 1
      159 SETTABLEKS                       R9 R8 K8 ["TreeView"]
      161 CALL                             R5 3 -1
      162 RETURN                           R5 -1

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
      101 DUPCLOSURE                       R17 K28 [PROTO_7]
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R14
      104 CAPTURE                          VAL R11
      105 CAPTURE                          VAL R12
      106 CAPTURE                          VAL R16
      107 CAPTURE                          VAL R13
      108 CAPTURE                          VAL R1
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R15
      111 CAPTURE                          VAL R3
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R9
      115 RETURN                           R17 1
