PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R2
        2 NAMECALL                         R0 R0 K0 ["setContentList"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["current"]
        8 NAMECALL                         R0 R0 K1 ["setContentList"]
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
        0 DUPTABLE                         R4 K4 [{"Key", "Position", "ItemPath", "ParentScope"}]
        1 SETTABLEKS                       R1 R4 K0 ["Key"]
        3 SETTABLEKS                       R2 R4 K1 ["Position"]
        5 GETUPVAL                         R6 0
        6 CALL                             R6 0 1
        7 JUMPIFNOT                        R6 ; [+2]
        8 MOVE                             R5 R0
        9 JUMP                             ; [+1]
       10 LOADNIL                          R5
       11 SETTABLEKS                       R5 R4 K2 ["ItemPath"]
       13 GETUPVAL                         R6 0
       14 CALL                             R6 0 1
       15 JUMPIFNOT                        R6 ; [+2]
       16 GETUPVAL                         R5 1
       17 JUMP                             ; [+1]
       18 LOADNIL                          R5
       19 SETTABLEKS                       R5 R4 K3 ["ParentScope"]
       21 RETURN                           R4 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R1
        2 NAMECALL                         R2 R2 K0 ["requestNextPage"]
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K1 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R4 R5 K1 ["use"]
       15 CALL                             R4 0 1
       16 LOADNIL                          R5
       17 GETUPVAL                         R6 4
       18 CALL                             R6 0 1
       19 JUMPIFNOT                        R6 ; [+3]
       20 GETUPVAL                         R6 5
       21 CALL                             R6 0 1
       22 MOVE                             R5 R6
       23 GETUPVAL                         R6 6
       24 CALL                             R6 0 1
       25 GETUPVAL                         R7 7
       26 LOADNIL                          R8
       27 CALL                             R7 1 1
       28 GETUPVAL                         R8 8
       29 NEWCLOSURE                       R9 P0
       30 CAPTURE                          VAL R7
       31 CAPTURE                          VAL R4
       32 NEWTABLE                         R10 0 0
       34 CALL                             R8 2 0
       35 GETUPVAL                         R9 9
       36 GETTABLEKS                       R8 R9 K2 ["createElement"]
       38 GETUPVAL                         R9 10
       39 NEWTABLE                         R10 4 0
       41 GETTABLEKS                       R11 R0 K3 ["LayoutOrder"]
       43 SETTABLEKS                       R11 R10 K3 ["LayoutOrder"]
       45 NEWCLOSURE                       R11 P1
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R2
       48 SETTABLEKS                       R11 R10 K4 ["OnRightClick"]
       50 GETUPVAL                         R12 9
       51 GETTABLEKS                       R11 R12 K5 ["Tag"]
       53 LOADK                            R13 K6 ["ContentList X-Top X-Column X-Center %*"]
       54 GETUPVAL                         R17 9
       55 GETTABLEKS                       R16 R17 K5 ["Tag"]
       57 GETTABLE                         R15 R0 R16
       58 NAMECALL                         R13 R13 K7 ["format"]
       60 CALL                             R13 2 1
       61 MOVE                             R12 R13
       62 SETTABLE                         R12 R10 R11
       63 DUPTABLE                         R11 K10 [{"HeaderRow", "ListContainer"}]
       64 GETUPVAL                         R13 9
       65 GETTABLEKS                       R12 R13 K2 ["createElement"]
       67 GETUPVAL                         R13 11
       68 DUPTABLE                         R14 K11 [{"LayoutOrder"}]
       69 NAMECALL                         R15 R1 K12 ["getNextOrder"]
       71 CALL                             R15 1 1
       72 SETTABLEKS                       R15 R14 K3 ["LayoutOrder"]
       74 CALL                             R12 2 1
       75 SETTABLEKS                       R12 R11 K8 ["HeaderRow"]
       77 GETUPVAL                         R13 9
       78 GETTABLEKS                       R12 R13 K2 ["createElement"]
       80 GETUPVAL                         R13 10
       81 NEWTABLE                         R14 2 0
       83 NAMECALL                         R15 R1 K12 ["getNextOrder"]
       85 CALL                             R15 1 1
       86 SETTABLEKS                       R15 R14 K3 ["LayoutOrder"]
       88 GETUPVAL                         R16 9
       89 GETTABLEKS                       R15 R16 K5 ["Tag"]
       91 LOADK                            R16 K13 ["ItemList"]
       92 SETTABLE                         R16 R14 R15
       93 DUPTABLE                         R15 K15 [{"List"}]
       94 GETUPVAL                         R17 9
       95 GETTABLEKS                       R16 R17 K2 ["createElement"]
       97 GETUPVAL                         R17 12
       98 NEWTABLE                         R18 16 0
      100 NAMECALL                         R19 R1 K12 ["getNextOrder"]
      102 CALL                             R19 1 1
      103 SETTABLEKS                       R19 R18 K3 ["LayoutOrder"]
      105 NEWCLOSURE                       R19 P2
      106 CAPTURE                          UPVAL U4
      107 CAPTURE                          REF R5
      108 SETTABLEKS                       R19 R18 K16 ["GetRowProps"]
      110 SETTABLEKS                       R6 R18 K17 ["Rows"]
      112 GETUPVAL                         R19 13
      113 SETTABLEKS                       R19 R18 K18 ["RowComponent"]
      115 GETUPVAL                         R19 14
      116 LOADK                            R21 K19 ["ContentListRowHeight"]
      117 NAMECALL                         R19 R19 K20 ["GetAttribute"]
      119 CALL                             R19 2 1
      120 SETTABLEKS                       R19 R18 K21 ["RowHeight"]
      122 NEWCLOSURE                       R19 P3
      123 CAPTURE                          VAL R3
      124 SETTABLEKS                       R19 R18 K22 ["OnLoadRange"]
      126 GETIMPORT                        R19 K26 [Enum.ScrollBarInset.None]
      128 SETTABLEKS                       R19 R18 K27 ["VerticalScrollBarInset"]
      130 GETIMPORT                        R19 K30 [Enum.ScrollingDirection.XY]
      132 SETTABLEKS                       R19 R18 K28 ["ScrollingDirection"]
      134 SETTABLEKS                       R7 R18 K31 ["ref"]
      136 GETUPVAL                         R20 9
      137 GETTABLEKS                       R19 R20 K5 ["Tag"]
      139 LOADK                            R20 K32 ["MyList"]
      140 SETTABLE                         R20 R18 R19
      141 CALL                             R16 2 1
      142 SETTABLEKS                       R16 R15 K14 ["List"]
      144 CALL                             R12 3 1
      145 SETTABLEKS                       R12 R11 K9 ["ListContainer"]
      147 CALL                             R8 3 -1
      148 CLOSEUPVALS                      R5
      149 RETURN                           R8 -1

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
       25 GETTABLEKS                       R5 R2 K11 ["UI"]
       27 GETTABLEKS                       R6 R5 K12 ["Pane"]
       29 GETTABLEKS                       R7 R5 K13 ["List"]
       31 GETIMPORT                        R8 K5 [require]
       33 GETIMPORT                        R10 K1 [script]
       35 GETTABLEKS                       R9 R10 K14 ["HeaderRow"]
       37 CALL                             R8 1 1
       38 GETIMPORT                        R9 K5 [require]
       40 GETIMPORT                        R11 K1 [script]
       42 GETTABLEKS                       R10 R11 K15 ["ItemRow"]
       44 CALL                             R9 1 1
       45 GETIMPORT                        R10 K5 [require]
       47 GETTABLEKS                       R13 R0 K16 ["Src"]
       49 GETTABLEKS                       R12 R13 K17 ["Controllers"]
       51 GETTABLEKS                       R11 R12 K18 ["ItemsController"]
       53 CALL                             R10 1 1
       54 GETIMPORT                        R11 K5 [require]
       56 GETTABLEKS                       R14 R0 K16 ["Src"]
       58 GETTABLEKS                       R13 R14 K17 ["Controllers"]
       60 GETTABLEKS                       R12 R13 K19 ["LayoutController"]
       62 CALL                             R11 1 1
       63 GETTABLEKS                       R12 R1 K20 ["useRef"]
       65 GETTABLEKS                       R13 R1 K21 ["useEffect"]
       67 GETIMPORT                        R14 K5 [require]
       69 GETTABLEKS                       R17 R0 K16 ["Src"]
       71 GETTABLEKS                       R16 R17 K22 ["Hooks"]
       73 GETTABLEKS                       R15 R16 K23 ["useCurrentScope"]
       75 CALL                             R14 1 1
       76 GETIMPORT                        R15 K5 [require]
       78 GETTABLEKS                       R18 R0 K16 ["Src"]
       80 GETTABLEKS                       R17 R18 K22 ["Hooks"]
       82 GETTABLEKS                       R16 R17 K24 ["useItems"]
       84 CALL                             R15 1 1
       85 GETIMPORT                        R16 K5 [require]
       87 GETTABLEKS                       R18 R0 K16 ["Src"]
       89 GETTABLEKS                       R17 R18 K25 ["Types"]
       91 CALL                             R16 1 1
       92 GETTABLEKS                       R18 R2 K26 ["Util"]
       94 GETTABLEKS                       R17 R18 K27 ["LayoutOrderIterator"]
       96 GETIMPORT                        R18 K5 [require]
       98 GETTABLEKS                       R21 R0 K16 ["Src"]
      100 GETTABLEKS                       R20 R21 K28 ["Resources"]
      102 GETTABLEKS                       R19 R20 K29 ["PluginStyles"]
      104 CALL                             R18 1 1
      105 GETIMPORT                        R19 K5 [require]
      107 GETTABLEKS                       R22 R0 K16 ["Src"]
      109 GETTABLEKS                       R21 R22 K30 ["Flags"]
      111 GETTABLEKS                       R20 R21 K31 ["getFFlagAmrUpdatedItemsCache"]
      113 CALL                             R19 1 1
      114 DUPCLOSURE                       R20 K32 [PROTO_5]
      115 CAPTURE                          VAL R17
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R10
      118 CAPTURE                          VAL R11
      119 CAPTURE                          VAL R19
      120 CAPTURE                          VAL R14
      121 CAPTURE                          VAL R15
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R13
      124 CAPTURE                          VAL R1
      125 CAPTURE                          VAL R6
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R7
      128 CAPTURE                          VAL R9
      129 CAPTURE                          VAL R18
      130 RETURN                           R20 1
