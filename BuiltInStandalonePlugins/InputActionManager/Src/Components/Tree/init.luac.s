PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETUPVAL                         R7 1
        7 GETTABLEKS                       R6 R7 K0 ["createElement"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 2
        7 LOADK                            R4 K1 ["InputContext"]
        8 CALL                             R3 1 3
        9 GETUPVAL                         R7 3
       10 GETTABLEKS                       R6 R7 K2 ["useMemo"]
       12 NEWCLOSURE                       R7 P0
       13 CAPTURE                          VAL R2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          VAL R1
       17 NEWTABLE                         R8 0 1
       19 MOVE                             R9 R2
       20 SETLIST                          R8 R9 1 [1]
       22 CALL                             R6 2 1
       23 GETUPVAL                         R8 3
       24 GETTABLEKS                       R7 R8 K3 ["createElement"]
       26 GETUPVAL                         R8 5
       27 DUPTABLE                         R9 K6 [{"LayoutOrder", "tag"}]
       28 GETTABLEKS                       R10 R0 K4 ["LayoutOrder"]
       30 SETTABLEKS                       R10 R9 K4 ["LayoutOrder"]
       32 LOADK                            R10 K7 ["size-full-0 grow col align-y-top bg-surface-200"]
       33 SETTABLEKS                       R10 R9 K5 ["tag"]
       35 DUPTABLE                         R10 K11 [{"Header", "Divider", "ScrollView"}]
       36 GETUPVAL                         R12 3
       37 GETTABLEKS                       R11 R12 K3 ["createElement"]
       39 GETUPVAL                         R12 6
       40 DUPTABLE                         R13 K13 [{"LayoutOrder", "onChildAdded"}]
       41 MOVE                             R14 R1
       42 CALL                             R14 0 1
       43 SETTABLEKS                       R14 R13 K4 ["LayoutOrder"]
       45 SETTABLEKS                       R4 R13 K12 ["onChildAdded"]
       47 CALL                             R11 2 1
       48 SETTABLEKS                       R11 R10 K8 ["Header"]
       50 GETUPVAL                         R12 3
       51 GETTABLEKS                       R11 R12 K3 ["createElement"]
       53 GETUPVAL                         R12 7
       54 DUPTABLE                         R13 K15 [{"LayoutOrder", "orientation", "tag"}]
       55 MOVE                             R14 R1
       56 CALL                             R14 0 1
       57 SETTABLEKS                       R14 R13 K4 ["LayoutOrder"]
       59 GETUPVAL                         R17 8
       60 GETTABLEKS                       R16 R17 K16 ["Enums"]
       62 GETTABLEKS                       R15 R16 K17 ["Orientation"]
       64 GETTABLEKS                       R14 R15 K18 ["Horizontal"]
       66 SETTABLEKS                       R14 R13 K14 ["orientation"]
       68 LOADK                            R14 K19 ["auto-x"]
       69 SETTABLEKS                       R14 R13 K5 ["tag"]
       71 CALL                             R11 2 1
       72 SETTABLEKS                       R11 R10 K9 ["Divider"]
       74 GETUPVAL                         R12 3
       75 GETTABLEKS                       R11 R12 K3 ["createElement"]
       77 GETUPVAL                         R12 9
       78 DUPTABLE                         R13 K21 [{"LayoutOrder", "scroll", "tag"}]
       79 MOVE                             R14 R1
       80 CALL                             R14 0 1
       81 SETTABLEKS                       R14 R13 K4 ["LayoutOrder"]
       83 DUPTABLE                         R14 K24 [{"AutomaticCanvasSize", "CanvasSize"}]
       84 GETIMPORT                        R15 K28 [Enum.AutomaticSize.Y]
       86 SETTABLEKS                       R15 R14 K22 ["AutomaticCanvasSize"]
       88 GETIMPORT                        R15 K31 [UDim2.fromScale]
       90 LOADN                            R16 0
       91 LOADN                            R17 0
       92 CALL                             R15 2 1
       93 SETTABLEKS                       R15 R14 K23 ["CanvasSize"]
       95 SETTABLEKS                       R14 R13 K20 ["scroll"]
       97 LOADK                            R14 K32 ["size-full-0 grow"]
       98 SETTABLEKS                       R14 R13 K5 ["tag"]
      100 DUPTABLE                         R14 K34 [{"Content"}]
      101 GETUPVAL                         R16 3
      102 GETTABLEKS                       R15 R16 K3 ["createElement"]
      104 GETUPVAL                         R16 5
      105 DUPTABLE                         R17 K35 [{"tag"}]
      106 LOADK                            R18 K36 ["size-full-0 auto-y col"]
      107 SETTABLEKS                       R18 R17 K5 ["tag"]
      109 DUPTABLE                         R18 K39 [{"Children", "Creating"}]
      110 GETUPVAL                         R20 3
      111 GETTABLEKS                       R19 R20 K3 ["createElement"]
      113 GETUPVAL                         R20 5
      114 DUPTABLE                         R21 K35 [{"tag"}]
      115 LOADK                            R22 K36 ["size-full-0 auto-y col"]
      116 SETTABLEKS                       R22 R21 K5 ["tag"]
      118 MOVE                             R22 R6
      119 CALL                             R19 3 1
      120 SETTABLEKS                       R19 R18 K37 ["Children"]
      122 MOVE                             R19 R3
      123 JUMPIFNOT                        R19 ; [+25]
      124 GETUPVAL                         R20 3
      125 GETTABLEKS                       R19 R20 K3 ["createElement"]
      127 GETUPVAL                         R20 10
      128 DUPTABLE                         R21 K45 [{"bindings", "depth", "icon", "LayoutOrder", "name", "onCreated"}]
      129 NEWTABLE                         R22 0 0
      131 SETTABLEKS                       R22 R21 K40 ["bindings"]
      133 LOADN                            R22 0
      134 SETTABLEKS                       R22 R21 K41 ["depth"]
      136 LOADK                            R22 K1 ["InputContext"]
      137 SETTABLEKS                       R22 R21 K42 ["icon"]
      139 MOVE                             R22 R1
      140 CALL                             R22 0 1
      141 SETTABLEKS                       R22 R21 K4 ["LayoutOrder"]
      143 LOADK                            R22 K1 ["InputContext"]
      144 SETTABLEKS                       R22 R21 K43 ["name"]
      146 SETTABLEKS                       R5 R21 K44 ["onCreated"]
      148 CALL                             R19 2 1
      149 SETTABLEKS                       R19 R18 K38 ["Creating"]
      151 CALL                             R15 3 1
      152 SETTABLEKS                       R15 R14 K33 ["Content"]
      154 CALL                             R11 3 1
      155 SETTABLEKS                       R11 R10 K10 ["ScrollView"]
      157 CALL                             R7 3 -1
      158 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["Divider"]
       30 GETTABLEKS                       R5 R3 K11 ["View"]
       32 GETTABLEKS                       R7 R0 K12 ["Src"]
       34 GETTABLEKS                       R6 R7 K13 ["Components"]
       36 GETIMPORT                        R7 K5 [require]
       38 GETTABLEKS                       R9 R6 K14 ["Tree"]
       40 GETTABLEKS                       R8 R9 K15 ["Context"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K5 [require]
       45 GETTABLEKS                       R10 R6 K14 ["Tree"]
       47 GETTABLEKS                       R9 R10 K16 ["EmptyRow"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K5 [require]
       52 GETTABLEKS                       R11 R6 K14 ["Tree"]
       54 GETTABLEKS                       R10 R11 K17 ["Header"]
       56 CALL                             R9 1 1
       57 GETTABLEKS                       R10 R3 K18 ["ScrollView"]
       59 GETIMPORT                        R11 K5 [require]
       61 GETTABLEKS                       R13 R0 K12 ["Src"]
       63 GETTABLEKS                       R12 R13 K19 ["Types"]
       65 CALL                             R11 1 1
       66 GETIMPORT                        R12 K5 [require]
       68 GETTABLEKS                       R15 R0 K12 ["Src"]
       70 GETTABLEKS                       R14 R15 K20 ["Hooks"]
       72 GETTABLEKS                       R13 R14 K21 ["useContextOrder"]
       74 CALL                             R12 1 1
       75 GETIMPORT                        R13 K5 [require]
       77 GETTABLEKS                       R16 R0 K12 ["Src"]
       79 GETTABLEKS                       R15 R16 K20 ["Hooks"]
       81 GETTABLEKS                       R14 R15 K22 ["useCreating"]
       83 CALL                             R13 1 1
       84 DUPCLOSURE                       R14 K23 [PROTO_1]
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R12
       87 CAPTURE                          VAL R13
       88 CAPTURE                          VAL R1
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R8
       96 RETURN                           R14 1
