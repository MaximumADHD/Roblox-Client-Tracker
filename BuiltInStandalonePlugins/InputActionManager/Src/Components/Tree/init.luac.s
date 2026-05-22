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
       26 DUPTABLE                         R9 K5 [{"LayoutOrder", "tag"}]
       27 GETTABLEKS                       R10 R0 K3 ["LayoutOrder"]
       29 SETTABLEKS                       R10 R9 K3 ["LayoutOrder"]
       31 LOADK                            R10 K6 ["size-full-0 grow col align-y-top bg-surface-200"]
       32 SETTABLEKS                       R10 R9 K4 ["tag"]
       34 DUPTABLE                         R10 K10 [{"Header", "Divider", "ScrollView"}]
       35 GETUPVAL                         R11 3
       36 GETTABLEKS                       R11 R11 K2 ["createElement"]
       38 GETUPVAL                         R12 6
       39 DUPTABLE                         R13 K12 [{"LayoutOrder", "onChildAdded"}]
       40 MOVE                             R14 R1
       41 CALL                             R14 0 1
       42 SETTABLEKS                       R14 R13 K3 ["LayoutOrder"]
       44 SETTABLEKS                       R4 R13 K11 ["onChildAdded"]
       46 CALL                             R11 2 1
       47 SETTABLEKS                       R11 R10 K7 ["Header"]
       49 GETUPVAL                         R11 3
       50 GETTABLEKS                       R11 R11 K2 ["createElement"]
       52 GETUPVAL                         R12 7
       53 DUPTABLE                         R13 K14 [{"LayoutOrder", "orientation", "tag"}]
       54 MOVE                             R14 R1
       55 CALL                             R14 0 1
       56 SETTABLEKS                       R14 R13 K3 ["LayoutOrder"]
       58 GETUPVAL                         R14 8
       59 GETTABLEKS                       R14 R14 K15 ["Enums"]
       61 GETTABLEKS                       R14 R14 K16 ["Orientation"]
       63 GETTABLEKS                       R14 R14 K17 ["Horizontal"]
       65 SETTABLEKS                       R14 R13 K13 ["orientation"]
       67 LOADK                            R14 K18 ["auto-x"]
       68 SETTABLEKS                       R14 R13 K4 ["tag"]
       70 CALL                             R11 2 1
       71 SETTABLEKS                       R11 R10 K8 ["Divider"]
       73 GETUPVAL                         R11 3
       74 GETTABLEKS                       R11 R11 K2 ["createElement"]
       76 GETUPVAL                         R12 9
       77 DUPTABLE                         R13 K20 [{"LayoutOrder", "scroll", "tag"}]
       78 MOVE                             R14 R1
       79 CALL                             R14 0 1
       80 SETTABLEKS                       R14 R13 K3 ["LayoutOrder"]
       82 DUPTABLE                         R14 K23 [{"AutomaticCanvasSize", "CanvasSize"}]
       83 GETIMPORT                        R15 K27 [Enum.AutomaticSize.Y]
       85 SETTABLEKS                       R15 R14 K21 ["AutomaticCanvasSize"]
       87 GETIMPORT                        R15 K30 [UDim2.fromScale]
       89 LOADN                            R16 0
       90 LOADN                            R17 0
       91 CALL                             R15 2 1
       92 SETTABLEKS                       R15 R14 K22 ["CanvasSize"]
       94 SETTABLEKS                       R14 R13 K19 ["scroll"]
       96 LOADK                            R14 K31 ["size-full-0 grow"]
       97 SETTABLEKS                       R14 R13 K4 ["tag"]
       99 DUPTABLE                         R14 K33 [{"Content"}]
      100 GETUPVAL                         R15 3
      101 GETTABLEKS                       R15 R15 K2 ["createElement"]
      103 GETUPVAL                         R16 5
      104 DUPTABLE                         R17 K34 [{"tag"}]
      105 LOADK                            R18 K35 ["size-full-0 auto-y col"]
      106 SETTABLEKS                       R18 R17 K4 ["tag"]
      108 DUPTABLE                         R18 K38 [{"Children", "Creating"}]
      109 GETUPVAL                         R19 3
      110 GETTABLEKS                       R19 R19 K2 ["createElement"]
      112 GETUPVAL                         R20 5
      113 DUPTABLE                         R21 K34 [{"tag"}]
      114 LOADK                            R22 K35 ["size-full-0 auto-y col"]
      115 SETTABLEKS                       R22 R21 K4 ["tag"]
      117 MOVE                             R22 R6
      118 CALL                             R19 3 1
      119 SETTABLEKS                       R19 R18 K36 ["Children"]
      121 MOVE                             R19 R3
      122 JUMPIFNOT                        R19 ; [+24]
      123 GETUPVAL                         R19 3
      124 GETTABLEKS                       R19 R19 K2 ["createElement"]
      126 GETUPVAL                         R20 10
      127 DUPTABLE                         R21 K40 [{"LayoutOrder", "nodeProps"}]
      128 MOVE                             R22 R1
      129 CALL                             R22 0 1
      130 SETTABLEKS                       R22 R21 K3 ["LayoutOrder"]
      132 DUPTABLE                         R22 K45 [{"depth", "icon", "name", "onCreated"}]
      133 LOADN                            R23 0
      134 SETTABLEKS                       R23 R22 K41 ["depth"]
      136 LOADK                            R23 K46 ["InputContext"]
      137 SETTABLEKS                       R23 R22 K42 ["icon"]
      139 LOADK                            R23 K46 ["InputContext"]
      140 SETTABLEKS                       R23 R22 K43 ["name"]
      142 SETTABLEKS                       R5 R22 K44 ["onCreated"]
      144 SETTABLEKS                       R22 R21 K39 ["nodeProps"]
      146 CALL                             R19 2 1
      147 SETTABLEKS                       R19 R18 K37 ["Creating"]
      149 CALL                             R15 3 1
      150 SETTABLEKS                       R15 R14 K32 ["Content"]
      152 CALL                             R11 3 1
      153 SETTABLEKS                       R11 R10 K9 ["ScrollView"]
      155 CALL                             R7 3 -1
      156 RETURN                           R7 -1

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
       38 GETTABLEKS                       R8 R6 K14 ["Tree"]
       40 GETTABLEKS                       R8 R8 K15 ["Context"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K5 [require]
       45 GETTABLEKS                       R9 R6 K14 ["Tree"]
       47 GETTABLEKS                       R9 R9 K15 ["Context"]
       49 GETTABLEKS                       R9 R9 K16 ["EmptyRow"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K5 [require]
       54 GETTABLEKS                       R10 R6 K14 ["Tree"]
       56 GETTABLEKS                       R10 R10 K17 ["Header"]
       58 CALL                             R9 1 1
       59 GETTABLEKS                       R10 R3 K18 ["ScrollView"]
       61 GETIMPORT                        R11 K5 [require]
       63 GETTABLEKS                       R12 R0 K12 ["Src"]
       65 GETTABLEKS                       R12 R12 K19 ["Types"]
       67 CALL                             R11 1 1
       68 GETIMPORT                        R12 K5 [require]
       70 GETTABLEKS                       R13 R0 K12 ["Src"]
       72 GETTABLEKS                       R13 R13 K20 ["Hooks"]
       74 GETTABLEKS                       R13 R13 K21 ["useContextOrder"]
       76 CALL                             R12 1 1
       77 GETIMPORT                        R13 K5 [require]
       79 GETTABLEKS                       R14 R0 K12 ["Src"]
       81 GETTABLEKS                       R14 R14 K20 ["Hooks"]
       83 GETTABLEKS                       R14 R14 K22 ["useCreateContext"]
       85 CALL                             R13 1 1
       86 DUPCLOSURE                       R14 K23 [PROTO_1]
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R12
       89 CAPTURE                          VAL R13
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R8
       98 RETURN                           R14 1
