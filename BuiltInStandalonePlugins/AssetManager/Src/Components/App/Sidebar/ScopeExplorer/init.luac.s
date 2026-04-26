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
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

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
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 GETUPVAL                         R4 3
       11 GETUPVAL                         R7 4
       12 GETTABLEKS                       R6 R7 K2 ["MenuContext"]
       14 GETTABLEKS                       R5 R6 K3 ["Sidebar"]
       16 CALL                             R4 1 1
       17 GETUPVAL                         R5 5
       18 CALL                             R5 0 1
       19 JUMPIFNOT                        R5 ; [+85]
       20 GETUPVAL                         R5 6
       21 CALL                             R5 0 1
       22 GETUPVAL                         R7 7
       23 GETTABLEKS                       R6 R7 K4 ["useCallback"]
       25 NEWCLOSURE                       R7 P0
       26 CAPTURE                          VAL R5
       27 NEWTABLE                         R8 0 1
       29 MOVE                             R9 R5
       30 SETLIST                          R8 R9 1 [1]
       32 CALL                             R6 2 1
       33 GETUPVAL                         R8 7
       34 GETTABLEKS                       R7 R8 K4 ["useCallback"]
       36 NEWCLOSURE                       R8 P1
       37 CAPTURE                          VAL R2
       38 NEWTABLE                         R9 0 1
       40 MOVE                             R10 R2
       41 SETLIST                          R9 R10 1 [1]
       43 CALL                             R7 2 1
       44 GETUPVAL                         R9 7
       45 GETTABLEKS                       R8 R9 K5 ["createElement"]
       47 GETUPVAL                         R9 8
       48 NEWTABLE                         R10 4 0
       50 GETTABLEKS                       R11 R0 K6 ["LayoutOrder"]
       52 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
       54 NEWCLOSURE                       R11 P2
       55 CAPTURE                          VAL R4
       56 SETTABLEKS                       R11 R10 K7 ["OnRightClick"]
       58 GETUPVAL                         R12 7
       59 GETTABLEKS                       R11 R12 K8 ["Tag"]
       61 LOADK                            R12 K9 ["Explorer X-Column"]
       62 SETTABLE                         R12 R10 R11
       63 DUPTABLE                         R11 K11 [{"TreeView"}]
       64 GETUPVAL                         R13 7
       65 GETTABLEKS                       R12 R13 K5 ["createElement"]
       67 GETUPVAL                         R13 9
       68 NEWTABLE                         R14 8 0
       70 NAMECALL                         R15 R1 K12 ["getNextOrder"]
       72 CALL                             R15 1 1
       73 SETTABLEKS                       R15 R14 K6 ["LayoutOrder"]
       75 GETTABLEKS                       R15 R0 K13 ["ExplorerItems"]
       77 SETTABLEKS                       R15 R14 K14 ["RootItems"]
       79 GETTABLEKS                       R15 R3 K15 ["Expansion"]
       81 SETTABLEKS                       R15 R14 K15 ["Expansion"]
       83 NEWCLOSURE                       R15 P3
       84 CAPTURE                          VAL R7
       85 SETTABLEKS                       R15 R14 K16 ["GetChildren"]
       87 SETTABLEKS                       R6 R14 K17 ["GetRowProps"]
       89 DUPCLOSURE                       R15 K18 [PROTO_4]
       90 SETTABLEKS                       R15 R14 K19 ["GetItemId"]
       92 GETUPVAL                         R15 10
       93 SETTABLEKS                       R15 R14 K20 ["RowComponent"]
       95 GETUPVAL                         R16 7
       96 GETTABLEKS                       R15 R16 K8 ["Tag"]
       98 LOADK                            R16 K21 [""]
       99 SETTABLE                         R16 R14 R15
      100 CALL                             R12 2 1
      101 SETTABLEKS                       R12 R11 K10 ["TreeView"]
      103 CALL                             R8 3 -1
      104 RETURN                           R8 -1
      105 GETUPVAL                         R6 7
      106 GETTABLEKS                       R5 R6 K5 ["createElement"]
      108 GETUPVAL                         R6 8
      109 NEWTABLE                         R7 4 0
      111 GETTABLEKS                       R8 R0 K6 ["LayoutOrder"]
      113 SETTABLEKS                       R8 R7 K6 ["LayoutOrder"]
      115 NEWCLOSURE                       R8 P5
      116 CAPTURE                          VAL R4
      117 SETTABLEKS                       R8 R7 K7 ["OnRightClick"]
      119 GETUPVAL                         R9 7
      120 GETTABLEKS                       R8 R9 K8 ["Tag"]
      122 LOADK                            R9 K9 ["Explorer X-Column"]
      123 SETTABLE                         R9 R7 R8
      124 DUPTABLE                         R8 K11 [{"TreeView"}]
      125 GETUPVAL                         R10 7
      126 GETTABLEKS                       R9 R10 K5 ["createElement"]
      128 GETUPVAL                         R10 9
      129 NEWTABLE                         R11 8 0
      131 NAMECALL                         R12 R1 K12 ["getNextOrder"]
      133 CALL                             R12 1 1
      134 SETTABLEKS                       R12 R11 K6 ["LayoutOrder"]
      136 GETTABLEKS                       R12 R0 K13 ["ExplorerItems"]
      138 SETTABLEKS                       R12 R11 K14 ["RootItems"]
      140 GETTABLEKS                       R12 R3 K15 ["Expansion"]
      142 SETTABLEKS                       R12 R11 K15 ["Expansion"]
      144 DUPCLOSURE                       R12 K22 [PROTO_6]
      145 SETTABLEKS                       R12 R11 K23 ["OnExpansionChange"]
      147 GETUPVAL                         R12 11
      148 SETTABLEKS                       R12 R11 K20 ["RowComponent"]
      150 GETUPVAL                         R13 7
      151 GETTABLEKS                       R12 R13 K8 ["Tag"]
      153 LOADK                            R13 K21 [""]
      154 SETTABLE                         R13 R11 R12
      155 CALL                             R9 2 1
      156 SETTABLEKS                       R9 R8 K10 ["TreeView"]
      158 CALL                             R5 3 -1
      159 RETURN                           R5 -1

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
       28 GETTABLEKS                       R4 R2 K11 ["UI"]
       30 GETTABLEKS                       R5 R4 K12 ["Pane"]
       32 GETTABLEKS                       R6 R4 K13 ["TreeView"]
       34 GETIMPORT                        R7 K5 [require]
       36 GETIMPORT                        R9 K1 [script]
       38 GETTABLEKS                       R8 R9 K14 ["ExplorerRow"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K5 [require]
       43 GETIMPORT                        R10 K1 [script]
       45 GETTABLEKS                       R9 R10 K15 ["Row"]
       47 CALL                             R8 1 1
       48 GETIMPORT                        R9 K5 [require]
       50 GETTABLEKS                       R12 R0 K9 ["Src"]
       52 GETTABLEKS                       R11 R12 K16 ["Controllers"]
       54 GETTABLEKS                       R10 R11 K17 ["ExplorerController"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K5 [require]
       59 GETTABLEKS                       R13 R0 K9 ["Src"]
       61 GETTABLEKS                       R12 R13 K18 ["Hooks"]
       63 GETTABLEKS                       R11 R12 K19 ["useContextMenu"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K5 [require]
       68 GETTABLEKS                       R14 R0 K9 ["Src"]
       70 GETTABLEKS                       R13 R14 K18 ["Hooks"]
       72 GETTABLEKS                       R12 R13 K20 ["useExplorerInfo"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K5 [require]
       77 GETTABLEKS                       R15 R0 K9 ["Src"]
       79 GETTABLEKS                       R14 R15 K18 ["Hooks"]
       81 GETTABLEKS                       R13 R14 K21 ["useIsFetchingFolders"]
       83 CALL                             R12 1 1
       84 GETTABLEKS                       R14 R2 K22 ["Util"]
       86 GETTABLEKS                       R13 R14 K23 ["LayoutOrderIterator"]
       88 GETIMPORT                        R14 K5 [require]
       90 GETTABLEKS                       R17 R0 K9 ["Src"]
       92 GETTABLEKS                       R16 R17 K24 ["Flags"]
       94 GETTABLEKS                       R15 R16 K25 ["getFFlagAmrOrganizationFoundation"]
       96 CALL                             R14 1 1
       97 DUPCLOSURE                       R15 K26 [PROTO_7]
       98 CAPTURE                          VAL R13
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R11
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R14
      104 CAPTURE                          VAL R12
      105 CAPTURE                          VAL R1
      106 CAPTURE                          VAL R5
      107 CAPTURE                          VAL R6
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R7
      110 RETURN                           R15 1
