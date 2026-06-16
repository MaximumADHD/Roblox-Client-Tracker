PROTO_0:
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

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 2
        7 CALL                             R3 0 3
        8 GETUPVAL                         R6 3
        9 GETTABLEKS                       R6 R6 K1 ["useMemo"]
       11 NEWCLOSURE                       R7 P0
       12 CAPTURE                          VAL R2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          VAL R1
       16 NEWTABLE                         R8 0 1
       18 MOVE                             R9 R2
       19 SETLIST                          R8 R9 1 [1]
       21 CALL                             R6 2 1
       22 GETUPVAL                         R7 3
       23 GETTABLEKS                       R7 R7 K2 ["createElement"]
       25 GETUPVAL                         R8 5
       26 DUPTABLE                         R9 K6 [{"LayoutOrder", "scroll", "tag"}]
       27 GETTABLEKS                       R10 R0 K3 ["LayoutOrder"]
       29 SETTABLEKS                       R10 R9 K3 ["LayoutOrder"]
       31 DUPTABLE                         R10 K11 [{"AutomaticCanvasSize", "CanvasSize", "HorizontalScrollBarInset", "ScrollingDirection"}]
       32 GETIMPORT                        R11 K15 [Enum.AutomaticSize.X]
       34 SETTABLEKS                       R11 R10 K7 ["AutomaticCanvasSize"]
       36 GETIMPORT                        R11 K18 [UDim2.fromScale]
       38 LOADN                            R12 0
       39 LOADN                            R13 0
       40 CALL                             R11 2 1
       41 SETTABLEKS                       R11 R10 K8 ["CanvasSize"]
       43 GETIMPORT                        R11 K21 [Enum.ScrollBarInset.Always]
       45 SETTABLEKS                       R11 R10 K9 ["HorizontalScrollBarInset"]
       47 GETIMPORT                        R11 K22 [Enum.ScrollingDirection.X]
       49 SETTABLEKS                       R11 R10 K10 ["ScrollingDirection"]
       51 SETTABLEKS                       R10 R9 K4 ["scroll"]
       53 LOADK                            R10 K23 ["size-full-0 grow col align-y-top"]
       54 SETTABLEKS                       R10 R9 K5 ["tag"]
       56 DUPTABLE                         R10 K25 [{"Container"}]
       57 GETUPVAL                         R11 3
       58 GETTABLEKS                       R11 R11 K2 ["createElement"]
       60 GETUPVAL                         R12 6
       61 DUPTABLE                         R13 K26 [{"tag"}]
       62 LOADK                            R14 K27 ["size-0-full auto-x col align-y-top"]
       63 SETTABLEKS                       R14 R13 K5 ["tag"]
       65 DUPTABLE                         R14 K31 [{"Header", "Divider", "ScrollView"}]
       66 GETUPVAL                         R15 3
       67 GETTABLEKS                       R15 R15 K2 ["createElement"]
       69 GETUPVAL                         R16 7
       70 DUPTABLE                         R17 K33 [{"LayoutOrder", "onChildAdded"}]
       71 MOVE                             R18 R1
       72 CALL                             R18 0 1
       73 SETTABLEKS                       R18 R17 K3 ["LayoutOrder"]
       75 SETTABLEKS                       R4 R17 K32 ["onChildAdded"]
       77 CALL                             R15 2 1
       78 SETTABLEKS                       R15 R14 K28 ["Header"]
       80 GETUPVAL                         R15 3
       81 GETTABLEKS                       R15 R15 K2 ["createElement"]
       83 GETUPVAL                         R16 8
       84 DUPTABLE                         R17 K35 [{"LayoutOrder", "orientation", "tag"}]
       85 MOVE                             R18 R1
       86 CALL                             R18 0 1
       87 SETTABLEKS                       R18 R17 K3 ["LayoutOrder"]
       89 GETUPVAL                         R18 9
       90 GETTABLEKS                       R18 R18 K36 ["Enums"]
       92 GETTABLEKS                       R18 R18 K37 ["Orientation"]
       94 GETTABLEKS                       R18 R18 K38 ["Horizontal"]
       96 SETTABLEKS                       R18 R17 K34 ["orientation"]
       98 LOADK                            R18 K39 ["auto-x grow"]
       99 SETTABLEKS                       R18 R17 K5 ["tag"]
      101 CALL                             R15 2 1
      102 SETTABLEKS                       R15 R14 K29 ["Divider"]
      104 GETUPVAL                         R15 3
      105 GETTABLEKS                       R15 R15 K2 ["createElement"]
      107 GETUPVAL                         R16 5
      108 DUPTABLE                         R17 K6 [{"LayoutOrder", "scroll", "tag"}]
      109 MOVE                             R18 R1
      110 CALL                             R18 0 1
      111 SETTABLEKS                       R18 R17 K3 ["LayoutOrder"]
      113 DUPTABLE                         R18 K41 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "VerticalScrollBarInset"}]
      114 GETIMPORT                        R19 K43 [Enum.AutomaticSize.XY]
      116 SETTABLEKS                       R19 R18 K7 ["AutomaticCanvasSize"]
      118 GETIMPORT                        R19 K18 [UDim2.fromScale]
      120 LOADN                            R20 0
      121 LOADN                            R21 0
      122 CALL                             R19 2 1
      123 SETTABLEKS                       R19 R18 K8 ["CanvasSize"]
      125 GETIMPORT                        R19 K45 [Enum.ScrollingDirection.Y]
      127 SETTABLEKS                       R19 R18 K10 ["ScrollingDirection"]
      129 GETIMPORT                        R19 K47 [Enum.ScrollBarInset.ScrollBar]
      131 SETTABLEKS                       R19 R18 K40 ["VerticalScrollBarInset"]
      133 SETTABLEKS                       R18 R17 K4 ["scroll"]
      135 LOADK                            R18 K48 ["size-full-0 grow"]
      136 SETTABLEKS                       R18 R17 K5 ["tag"]
      138 DUPTABLE                         R18 K50 [{"Content"}]
      139 GETUPVAL                         R19 3
      140 GETTABLEKS                       R19 R19 K2 ["createElement"]
      142 GETUPVAL                         R20 6
      143 DUPTABLE                         R21 K26 [{"tag"}]
      144 LOADK                            R22 K51 ["auto-xy col"]
      145 SETTABLEKS                       R22 R21 K5 ["tag"]
      147 DUPTABLE                         R22 K54 [{"Children", "Creating"}]
      148 GETUPVAL                         R23 3
      149 GETTABLEKS                       R23 R23 K2 ["createElement"]
      151 GETUPVAL                         R24 6
      152 DUPTABLE                         R25 K26 [{"tag"}]
      153 LOADK                            R26 K51 ["auto-xy col"]
      154 SETTABLEKS                       R26 R25 K5 ["tag"]
      156 MOVE                             R26 R6
      157 CALL                             R23 3 1
      158 SETTABLEKS                       R23 R22 K52 ["Children"]
      160 MOVE                             R23 R3
      161 JUMPIFNOT                        R23 ; [+24]
      162 GETUPVAL                         R23 3
      163 GETTABLEKS                       R23 R23 K2 ["createElement"]
      165 GETUPVAL                         R24 10
      166 DUPTABLE                         R25 K56 [{"LayoutOrder", "nodeProps"}]
      167 MOVE                             R26 R1
      168 CALL                             R26 0 1
      169 SETTABLEKS                       R26 R25 K3 ["LayoutOrder"]
      171 DUPTABLE                         R26 K61 [{"depth", "icon", "name", "onCreated"}]
      172 LOADN                            R27 0
      173 SETTABLEKS                       R27 R26 K57 ["depth"]
      175 LOADK                            R27 K62 ["InputContext"]
      176 SETTABLEKS                       R27 R26 K58 ["icon"]
      178 LOADK                            R27 K62 ["InputContext"]
      179 SETTABLEKS                       R27 R26 K59 ["name"]
      181 SETTABLEKS                       R5 R26 K60 ["onCreated"]
      183 SETTABLEKS                       R26 R25 K55 ["nodeProps"]
      185 CALL                             R23 2 1
      186 SETTABLEKS                       R23 R22 K53 ["Creating"]
      188 CALL                             R19 3 1
      189 SETTABLEKS                       R19 R18 K49 ["Content"]
      191 CALL                             R15 3 1
      192 SETTABLEKS                       R15 R14 K30 ["ScrollView"]
      194 CALL                             R11 3 1
      195 SETTABLEKS                       R11 R10 K24 ["Container"]
      197 CALL                             R7 3 -1
      198 RETURN                           R7 -1

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
       28 GETTABLEKS                       R4 R3 K10 ["Divider"]
       30 GETTABLEKS                       R5 R3 K11 ["View"]
       32 GETTABLEKS                       R6 R0 K12 ["Src"]
       34 GETTABLEKS                       R6 R6 K13 ["Components"]
       36 GETIMPORT                        R7 K5 [require]
       38 GETTABLEKS                       R8 R6 K14 ["Table"]
       40 GETTABLEKS                       R8 R8 K15 ["Context"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K5 [require]
       45 GETTABLEKS                       R9 R6 K14 ["Table"]
       47 GETTABLEKS                       R9 R9 K16 ["Row"]
       49 GETTABLEKS                       R9 R9 K17 ["Empty"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K5 [require]
       54 GETTABLEKS                       R10 R6 K18 ["Tree"]
       56 GETTABLEKS                       R10 R10 K19 ["Header"]
       58 CALL                             R9 1 1
       59 GETTABLEKS                       R10 R3 K20 ["ScrollView"]
       61 GETIMPORT                        R11 K5 [require]
       63 GETTABLEKS                       R12 R0 K12 ["Src"]
       65 GETTABLEKS                       R12 R12 K21 ["Types"]
       67 CALL                             R11 1 1
       68 GETIMPORT                        R12 K5 [require]
       70 GETTABLEKS                       R13 R0 K12 ["Src"]
       72 GETTABLEKS                       R13 R13 K22 ["Hooks"]
       74 GETTABLEKS                       R13 R13 K15 ["Context"]
       76 GETTABLEKS                       R13 R13 K23 ["useContextOrder"]
       78 CALL                             R12 1 1
       79 GETIMPORT                        R13 K5 [require]
       81 GETTABLEKS                       R14 R0 K12 ["Src"]
       83 GETTABLEKS                       R14 R14 K22 ["Hooks"]
       85 GETTABLEKS                       R14 R14 K15 ["Context"]
       87 GETTABLEKS                       R14 R14 K24 ["useCreateContext"]
       89 CALL                             R13 1 1
       90 DUPCLOSURE                       R14 K25 [PROTO_1]
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R12
       93 CAPTURE                          VAL R13
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R8
      102 RETURN                           R14 1
