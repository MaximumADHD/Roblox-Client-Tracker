PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R2
        2 NAMECALL                         R0 R0 K0 ["setContentGrid"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["current"]
        8 NAMECALL                         R0 R0 K1 ["setContentGrid"]
       10 CALL                             R0 2 0
       11 NEWCLOSURE                       R0 P0
       12 CAPTURE                          UPVAL U1
       13 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["handleRightClick"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R4 K5 [{"Cell", "ParentScope", "Key", "Size", "Position"}]
        1 SETTABLEKS                       R0 R4 K0 ["Cell"]
        3 GETUPVAL                         R5 0
        4 SETTABLEKS                       R5 R4 K1 ["ParentScope"]
        6 SETTABLEKS                       R1 R4 K2 ["Key"]
        8 SETTABLEKS                       R3 R4 K3 ["Size"]
       10 SETTABLEKS                       R2 R4 K4 ["Position"]
       12 RETURN                           R4 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R1
        2 NAMECALL                         R2 R2 K0 ["requestNextPage"]
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K0 ["use"]
       11 CALL                             R3 0 1
       12 LOADNIL                          R4
       13 GETUPVAL                         R5 3
       14 CALL                             R5 0 1
       15 JUMPIFNOT                        R5 ; [+3]
       16 GETUPVAL                         R5 4
       17 CALL                             R5 0 1
       18 MOVE                             R4 R5
       19 GETUPVAL                         R5 5
       20 CALL                             R5 0 1
       21 GETUPVAL                         R6 6
       22 CALL                             R6 0 1
       23 GETTABLEKS                       R7 R6 K1 ["GridSize"]
       25 GETUPVAL                         R9 7
       26 LOADK                            R11 K2 ["CellHeightDiff"]
       27 NAMECALL                         R9 R9 K3 ["GetAttribute"]
       29 CALL                             R9 2 1
       30 ADD                              R8 R7 R9
       31 NAMECALL                         R9 R3 K4 ["getGridPadding"]
       33 CALL                             R9 1 1
       34 GETUPVAL                         R10 8
       35 LOADNIL                          R11
       36 CALL                             R10 1 1
       37 GETUPVAL                         R11 9
       38 NEWCLOSURE                       R12 P0
       39 CAPTURE                          VAL R10
       40 CAPTURE                          VAL R3
       41 NEWTABLE                         R13 0 1
       43 GETTABLEKS                       R14 R10 K5 ["current"]
       45 SETLIST                          R13 R14 1 [1]
       47 CALL                             R11 2 0
       48 GETUPVAL                         R12 10
       49 GETTABLEKS                       R11 R12 K6 ["createElement"]
       51 GETUPVAL                         R12 11
       52 NEWTABLE                         R13 4 0
       54 GETTABLEKS                       R14 R0 K7 ["LayoutOrder"]
       56 SETTABLEKS                       R14 R13 K7 ["LayoutOrder"]
       58 NEWCLOSURE                       R14 P1
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R1
       61 SETTABLEKS                       R14 R13 K8 ["OnRightClick"]
       63 GETUPVAL                         R15 10
       64 GETTABLEKS                       R14 R15 K9 ["Tag"]
       66 LOADK                            R16 K10 ["ContentGrid X-Top X-Column X-Center %*"]
       67 GETUPVAL                         R20 10
       68 GETTABLEKS                       R19 R20 K9 ["Tag"]
       70 GETTABLE                         R18 R0 R19
       71 NAMECALL                         R16 R16 K11 ["format"]
       73 CALL                             R16 2 1
       74 MOVE                             R15 R16
       75 SETTABLE                         R15 R13 R14
       76 DUPTABLE                         R14 K13 [{"View"}]
       77 GETUPVAL                         R16 10
       78 GETTABLEKS                       R15 R16 K6 ["createElement"]
       80 GETUPVAL                         R16 12
       81 DUPTABLE                         R17 K21 [{"Cells", "CellSize", "CellPadding", "GetCellProps", "CellComponent", "OnLoadRange", "ref"}]
       82 SETTABLEKS                       R5 R17 K14 ["Cells"]
       84 GETIMPORT                        R18 K24 [UDim2.fromOffset]
       86 MOVE                             R19 R7
       87 MOVE                             R20 R8
       88 CALL                             R18 2 1
       89 SETTABLEKS                       R18 R17 K15 ["CellSize"]
       91 SETTABLEKS                       R9 R17 K16 ["CellPadding"]
       93 GETUPVAL                         R19 3
       94 CALL                             R19 0 1
       95 JUMPIFNOT                        R19 ; [+3]
       96 NEWCLOSURE                       R18 P2
       97 CAPTURE                          REF R4
       98 JUMP                             ; [+1]
       99 LOADNIL                          R18
      100 SETTABLEKS                       R18 R17 K17 ["GetCellProps"]
      102 GETUPVAL                         R18 13
      103 SETTABLEKS                       R18 R17 K18 ["CellComponent"]
      105 NEWCLOSURE                       R18 P3
      106 CAPTURE                          VAL R2
      107 SETTABLEKS                       R18 R17 K19 ["OnLoadRange"]
      109 SETTABLEKS                       R10 R17 K20 ["ref"]
      111 CALL                             R15 2 1
      112 SETTABLEKS                       R15 R14 K12 ["View"]
      114 CALL                             R11 3 -1
      115 CLOSEUPVALS                      R4
      116 RETURN                           R11 -1

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
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["Localization"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R7 R0 K11 ["Src"]
       29 GETTABLEKS                       R6 R7 K12 ["Types"]
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R6 R2 K13 ["UI"]
       34 GETTABLEKS                       R7 R6 K14 ["Grid"]
       36 GETTABLEKS                       R8 R6 K15 ["Pane"]
       38 GETIMPORT                        R9 K5 [require]
       40 GETIMPORT                        R11 K1 [script]
       42 GETTABLEKS                       R10 R11 K16 ["ItemCell"]
       44 CALL                             R9 1 1
       45 GETIMPORT                        R10 K5 [require]
       47 GETTABLEKS                       R13 R0 K11 ["Src"]
       49 GETTABLEKS                       R12 R13 K17 ["Controllers"]
       51 GETTABLEKS                       R11 R12 K18 ["ItemsController"]
       53 CALL                             R10 1 1
       54 GETIMPORT                        R11 K5 [require]
       56 GETTABLEKS                       R14 R0 K11 ["Src"]
       58 GETTABLEKS                       R13 R14 K17 ["Controllers"]
       60 GETTABLEKS                       R12 R13 K19 ["LayoutController"]
       62 CALL                             R11 1 1
       63 GETTABLEKS                       R12 R1 K20 ["useEffect"]
       65 GETTABLEKS                       R13 R1 K21 ["useRef"]
       67 GETIMPORT                        R14 K5 [require]
       69 GETTABLEKS                       R17 R0 K11 ["Src"]
       71 GETTABLEKS                       R16 R17 K22 ["Hooks"]
       73 GETTABLEKS                       R15 R16 K23 ["useItems"]
       75 CALL                             R14 1 1
       76 GETIMPORT                        R15 K5 [require]
       78 GETTABLEKS                       R18 R0 K11 ["Src"]
       80 GETTABLEKS                       R17 R18 K22 ["Hooks"]
       82 GETTABLEKS                       R16 R17 K24 ["useLayoutInfo"]
       84 CALL                             R15 1 1
       85 GETIMPORT                        R16 K5 [require]
       87 GETTABLEKS                       R19 R0 K11 ["Src"]
       89 GETTABLEKS                       R18 R19 K22 ["Hooks"]
       91 GETTABLEKS                       R17 R18 K25 ["useCurrentScope"]
       93 CALL                             R16 1 1
       94 GETIMPORT                        R17 K5 [require]
       96 GETTABLEKS                       R20 R0 K11 ["Src"]
       98 GETTABLEKS                       R19 R20 K26 ["Resources"]
      100 GETTABLEKS                       R18 R19 K27 ["PluginStyles"]
      102 CALL                             R17 1 1
      103 GETIMPORT                        R18 K5 [require]
      105 GETTABLEKS                       R21 R0 K11 ["Src"]
      107 GETTABLEKS                       R20 R21 K28 ["Flags"]
      109 GETTABLEKS                       R19 R20 K29 ["getFFlagAmrUpdatedItemsCache"]
      111 CALL                             R18 1 1
      112 DUPCLOSURE                       R19 K30 [PROTO_5]
      113 CAPTURE                          VAL R4
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R18
      117 CAPTURE                          VAL R16
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R15
      120 CAPTURE                          VAL R17
      121 CAPTURE                          VAL R13
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R8
      125 CAPTURE                          VAL R7
      126 CAPTURE                          VAL R9
      127 RETURN                           R19 1
