PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+13]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["current"]
        7 GETIMPORT                        R2 K3 [Vector2.new]
        9 GETTABLEKS                       R3 R0 K4 ["CanvasPosition"]
       11 GETTABLEKS                       R3 R3 K5 ["X"]
       13 LOADN                            R4 0
       14 CALL                             R2 2 1
       15 SETTABLEKS                       R2 R1 K4 ["CanvasPosition"]
       17 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R6 R6 K0 ["createElement"]
        9 GETUPVAL                         R7 2
       10 DUPTABLE                         R8 K3 [{"LayoutOrder", "uuid"}]
       11 GETUPVAL                         R9 3
       12 CALL                             R9 0 1
       13 SETTABLEKS                       R9 R8 K1 ["LayoutOrder"]
       15 SETTABLEKS                       R5 R8 K2 ["uuid"]
       17 CALL                             R6 2 1
       18 SETTABLE                         R6 R0 R5
       19 FORGLOOP                         R1 2 ; [-14]
       21 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 2
        7 CALL                             R3 0 3
        8 GETUPVAL                         R6 3
        9 GETTABLEKS                       R6 R6 K1 ["useRef"]
       11 LOADNIL                          R7
       12 CALL                             R6 1 1
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R7 R7 K2 ["useEventCallback"]
       16 NEWCLOSURE                       R8 P0
       17 CAPTURE                          VAL R6
       18 CALL                             R7 1 1
       19 GETUPVAL                         R8 3
       20 GETTABLEKS                       R8 R8 K3 ["useMemo"]
       22 NEWCLOSURE                       R9 P1
       23 CAPTURE                          VAL R2
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          VAL R1
       27 NEWTABLE                         R10 0 1
       29 MOVE                             R11 R2
       30 SETLIST                          R10 R11 1 [1]
       32 CALL                             R8 2 1
       33 GETUPVAL                         R9 3
       34 GETTABLEKS                       R9 R9 K4 ["createElement"]
       36 GETUPVAL                         R10 5
       37 DUPTABLE                         R11 K7 [{"LayoutOrder", "tag"}]
       38 GETTABLEKS                       R12 R0 K5 ["LayoutOrder"]
       40 SETTABLEKS                       R12 R11 K5 ["LayoutOrder"]
       42 LOADK                            R12 K8 ["size-full-0 grow col align-y-top"]
       43 SETTABLEKS                       R12 R11 K6 ["tag"]
       45 DUPTABLE                         R12 K11 [{"Header", "Content"}]
       46 GETUPVAL                         R13 3
       47 GETTABLEKS                       R13 R13 K4 ["createElement"]
       49 GETUPVAL                         R14 6
       50 DUPTABLE                         R15 K14 [{"LayoutOrder", "onChildAdded", "scrollingFrameRef"}]
       51 MOVE                             R16 R1
       52 CALL                             R16 0 1
       53 SETTABLEKS                       R16 R15 K5 ["LayoutOrder"]
       55 SETTABLEKS                       R4 R15 K12 ["onChildAdded"]
       57 SETTABLEKS                       R6 R15 K13 ["scrollingFrameRef"]
       59 CALL                             R13 2 1
       60 SETTABLEKS                       R13 R12 K9 ["Header"]
       62 GETUPVAL                         R13 3
       63 GETTABLEKS                       R13 R13 K4 ["createElement"]
       65 GETUPVAL                         R14 7
       66 DUPTABLE                         R15 K17 [{"LayoutOrder", "onCanvasPositionChanged", "scroll", "tag"}]
       67 MOVE                             R16 R1
       68 CALL                             R16 0 1
       69 SETTABLEKS                       R16 R15 K5 ["LayoutOrder"]
       71 SETTABLEKS                       R7 R15 K15 ["onCanvasPositionChanged"]
       73 DUPTABLE                         R16 K23 [{"AutomaticCanvasSize", "HorizontalScrollBarInset", "ScrollingDirection", "scrollBarVisibility", "VerticalScrollBarInset"}]
       74 GETIMPORT                        R17 K27 [Enum.AutomaticSize.XY]
       76 SETTABLEKS                       R17 R16 K18 ["AutomaticCanvasSize"]
       78 GETIMPORT                        R17 K30 [Enum.ScrollBarInset.None]
       80 SETTABLEKS                       R17 R16 K19 ["HorizontalScrollBarInset"]
       82 GETIMPORT                        R17 K31 [Enum.ScrollingDirection.XY]
       84 SETTABLEKS                       R17 R16 K20 ["ScrollingDirection"]
       86 GETUPVAL                         R17 8
       87 GETTABLEKS                       R17 R17 K32 ["Always"]
       89 SETTABLEKS                       R17 R16 K21 ["scrollBarVisibility"]
       91 GETIMPORT                        R17 K30 [Enum.ScrollBarInset.None]
       93 SETTABLEKS                       R17 R16 K22 ["VerticalScrollBarInset"]
       95 SETTABLEKS                       R16 R15 K16 ["scroll"]
       97 LOADK                            R16 K33 ["size-full-0 col grow"]
       98 SETTABLEKS                       R16 R15 K6 ["tag"]
      100 DUPTABLE                         R16 K36 [{"Children", "Creating"}]
      101 GETUPVAL                         R17 3
      102 GETTABLEKS                       R17 R17 K4 ["createElement"]
      104 GETUPVAL                         R18 5
      105 DUPTABLE                         R19 K7 [{"LayoutOrder", "tag"}]
      106 MOVE                             R20 R1
      107 CALL                             R20 0 1
      108 SETTABLEKS                       R20 R19 K5 ["LayoutOrder"]
      110 LOADK                            R20 K37 ["size-full-0 auto-xy col"]
      111 SETTABLEKS                       R20 R19 K6 ["tag"]
      113 MOVE                             R20 R8
      114 CALL                             R17 3 1
      115 SETTABLEKS                       R17 R16 K34 ["Children"]
      117 MOVE                             R17 R3
      118 JUMPIFNOT                        R17 ; [+26]
      119 GETUPVAL                         R17 3
      120 GETTABLEKS                       R17 R17 K4 ["createElement"]
      122 GETUPVAL                         R18 9
      123 DUPTABLE                         R19 K39 [{"LayoutOrder", "nodeProps", "onChildAdded"}]
      124 MOVE                             R20 R1
      125 CALL                             R20 0 1
      126 SETTABLEKS                       R20 R19 K5 ["LayoutOrder"]
      128 DUPTABLE                         R20 K44 [{"depth", "icon", "name", "onCreated"}]
      129 LOADN                            R21 0
      130 SETTABLEKS                       R21 R20 K40 ["depth"]
      132 LOADK                            R21 K45 ["InputContext"]
      133 SETTABLEKS                       R21 R20 K41 ["icon"]
      135 LOADK                            R21 K45 ["InputContext"]
      136 SETTABLEKS                       R21 R20 K42 ["name"]
      138 SETTABLEKS                       R5 R20 K43 ["onCreated"]
      140 SETTABLEKS                       R20 R19 K38 ["nodeProps"]
      142 SETTABLEKS                       R4 R19 K12 ["onChildAdded"]
      144 CALL                             R17 2 1
      145 SETTABLEKS                       R17 R16 K35 ["Creating"]
      147 CALL                             R13 3 1
      148 SETTABLEKS                       R13 R12 K10 ["Content"]
      150 CALL                             R9 3 -1
      151 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["View"]
       30 GETTABLEKS                       R5 R3 K11 ["Enums"]
       32 GETTABLEKS                       R5 R5 K12 ["Visibility"]
       34 GETTABLEKS                       R6 R0 K13 ["Src"]
       36 GETTABLEKS                       R6 R6 K14 ["Components"]
       38 GETIMPORT                        R7 K5 [require]
       40 GETTABLEKS                       R8 R6 K15 ["Table"]
       42 GETTABLEKS                       R8 R8 K16 ["Context"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K5 [require]
       47 GETTABLEKS                       R9 R6 K15 ["Table"]
       49 GETTABLEKS                       R9 R9 K17 ["Row"]
       51 GETTABLEKS                       R9 R9 K18 ["Empty"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K5 [require]
       56 GETTABLEKS                       R10 R6 K19 ["Tree"]
       58 GETTABLEKS                       R10 R10 K20 ["Header"]
       60 CALL                             R9 1 1
       61 GETTABLEKS                       R10 R3 K21 ["ScrollView"]
       63 GETIMPORT                        R11 K5 [require]
       65 GETTABLEKS                       R12 R0 K13 ["Src"]
       67 GETTABLEKS                       R12 R12 K22 ["Types"]
       69 CALL                             R11 1 1
       70 GETIMPORT                        R12 K5 [require]
       72 GETTABLEKS                       R13 R0 K13 ["Src"]
       74 GETTABLEKS                       R13 R13 K23 ["Hooks"]
       76 GETTABLEKS                       R13 R13 K16 ["Context"]
       78 GETTABLEKS                       R13 R13 K24 ["useContextOrder"]
       80 CALL                             R12 1 1
       81 GETIMPORT                        R13 K5 [require]
       83 GETTABLEKS                       R14 R0 K13 ["Src"]
       85 GETTABLEKS                       R14 R14 K23 ["Hooks"]
       87 GETTABLEKS                       R14 R14 K16 ["Context"]
       89 GETTABLEKS                       R14 R14 K25 ["useCreateContext"]
       91 CALL                             R13 1 1
       92 DUPCLOSURE                       R14 K26 [PROTO_2]
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R12
       95 CAPTURE                          VAL R13
       96 CAPTURE                          VAL R1
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R5
      102 CAPTURE                          VAL R8
      103 RETURN                           R14 1
