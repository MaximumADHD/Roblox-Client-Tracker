PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagFixDirectionalCurveEditorNilInput"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+3]
        5 JUMPIFNOTEQKNIL                  R0 ; [+2]
        7 RETURN                           R0 0
        8 GETIMPORT                        R1 K3 [Vector2.new]
       10 MOVE                             R2 R0
       11 GETUPVAL                         R3 1
       12 CALL                             R1 2 1
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R2 R2 K4 ["CurveHook"]
       16 GETTABLEKS                       R2 R2 K5 ["update"]
       18 MOVE                             R3 R1
       19 LOADB                            R4 1
       20 CALL                             R2 2 0
       21 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagFixDirectionalCurveEditorNilInput"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+3]
        5 JUMPIFNOTEQKNIL                  R0 ; [+2]
        7 RETURN                           R0 0
        8 GETIMPORT                        R1 K3 [Vector2.new]
       10 GETUPVAL                         R2 1
       11 MOVE                             R3 R0
       12 CALL                             R1 2 1
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R2 R2 K4 ["CurveHook"]
       16 GETTABLEKS                       R2 R2 K5 ["update"]
       18 MOVE                             R3 R1
       19 LOADB                            R4 1
       20 CALL                             R2 2 0
       21 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CurveHook"]
        3 GETTABLEKS                       R0 R0 K1 ["remove"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["Context"]
        8 GETTABLEKS                       R3 R3 K2 ["Consumer"]
       10 CALL                             R2 1 1
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K3 ["Localization"]
       14 GETTABLEKS                       R4 R4 K4 ["Key"]
       16 GETTABLE                         R3 R2 R4
       17 GETTABLEKS                       R4 R0 K5 ["CurveHook"]
       19 GETTABLEKS                       R4 R4 K6 ["getSelectedKeypoint"]
       21 CALL                             R4 0 1
       22 JUMPIFNOT                        R4 ; [+3]
       23 GETTABLEKS                       R5 R4 K7 ["X"]
       25 JUMP                             ; [+1]
       26 LOADNIL                          R5
       27 JUMPIFNOT                        R4 ; [+3]
       28 GETTABLEKS                       R6 R4 K8 ["Y"]
       30 JUMP                             ; [+1]
       31 LOADNIL                          R6
       32 GETUPVAL                         R7 3
       33 NEWCLOSURE                       R8 P0
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          VAL R6
       36 CAPTURE                          VAL R0
       37 NEWTABLE                         R9 0 1
       39 GETTABLEKS                       R10 R0 K5 ["CurveHook"]
       41 SETLIST                          R9 R10 1 [1]
       43 CALL                             R7 2 1
       44 GETUPVAL                         R8 3
       45 NEWCLOSURE                       R9 P1
       46 CAPTURE                          UPVAL U4
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R0
       49 NEWTABLE                         R10 0 1
       51 GETTABLEKS                       R11 R0 K5 ["CurveHook"]
       53 SETLIST                          R10 R11 1 [1]
       55 CALL                             R8 2 1
       56 GETUPVAL                         R9 3
       57 NEWCLOSURE                       R10 P2
       58 CAPTURE                          VAL R0
       59 NEWTABLE                         R11 0 1
       61 GETTABLEKS                       R12 R0 K5 ["CurveHook"]
       63 SETLIST                          R11 R12 1 [1]
       65 CALL                             R9 2 1
       66 GETUPVAL                         R10 5
       67 GETTABLEKS                       R10 R10 K9 ["createElement"]
       69 GETUPVAL                         R11 6
       70 NEWTABLE                         R12 4 0
       72 LOADN                            R13 2
       73 SETTABLEKS                       R13 R12 K10 ["LayoutOrder"]
       75 GETIMPORT                        R13 K13 [UDim2.fromScale]
       77 LOADN                            R14 1
       78 LOADN                            R15 0
       79 CALL                             R13 2 1
       80 SETTABLEKS                       R13 R12 K14 ["Size"]
       82 GETUPVAL                         R13 5
       83 GETTABLEKS                       R13 R13 K15 ["Tag"]
       85 LOADK                            R14 K16 ["X-Center X-Middle X-RowM X-Fit"]
       86 SETTABLE                         R14 R12 R13
       87 DUPTABLE                         R13 K18 [{"X", "Y", "Delete"}]
       88 GETUPVAL                         R14 5
       89 GETTABLEKS                       R14 R14 K9 ["createElement"]
       91 GETUPVAL                         R15 7
       92 DUPTABLE                         R16 K23 [{"LayoutOrder", "Text", "Schema", "Value", "OnChanged"}]
       93 NAMECALL                         R17 R1 K24 ["getNextOrder"]
       95 CALL                             R17 1 1
       96 SETTABLEKS                       R17 R16 K10 ["LayoutOrder"]
       98 LOADK                            R19 K25 ["Label"]
       99 LOADK                            R20 K26 ["Angle"]
      100 NAMECALL                         R17 R3 K27 ["getText"]
      102 CALL                             R17 3 1
      103 SETTABLEKS                       R17 R16 K19 ["Text"]
      105 GETUPVAL                         R17 8
      106 SETTABLEKS                       R17 R16 K20 ["Schema"]
      108 SETTABLEKS                       R5 R16 K21 ["Value"]
      110 SETTABLEKS                       R7 R16 K22 ["OnChanged"]
      112 CALL                             R14 2 1
      113 SETTABLEKS                       R14 R13 K7 ["X"]
      115 GETUPVAL                         R14 5
      116 GETTABLEKS                       R14 R14 K9 ["createElement"]
      118 GETUPVAL                         R15 7
      119 DUPTABLE                         R16 K23 [{"LayoutOrder", "Text", "Schema", "Value", "OnChanged"}]
      120 NAMECALL                         R17 R1 K24 ["getNextOrder"]
      122 CALL                             R17 1 1
      123 SETTABLEKS                       R17 R16 K10 ["LayoutOrder"]
      125 LOADK                            R19 K25 ["Label"]
      126 LOADK                            R20 K28 ["Volume"]
      127 NAMECALL                         R17 R3 K27 ["getText"]
      129 CALL                             R17 3 1
      130 SETTABLEKS                       R17 R16 K19 ["Text"]
      132 GETUPVAL                         R17 9
      133 SETTABLEKS                       R17 R16 K20 ["Schema"]
      135 SETTABLEKS                       R6 R16 K21 ["Value"]
      137 SETTABLEKS                       R8 R16 K22 ["OnChanged"]
      139 CALL                             R14 2 1
      140 SETTABLEKS                       R14 R13 K8 ["Y"]
      142 GETUPVAL                         R14 5
      143 GETTABLEKS                       R14 R14 K9 ["createElement"]
      145 GETUPVAL                         R15 10
      146 DUPTABLE                         R16 K30 [{"LayoutOrder", "Text", "OnClick"}]
      147 NAMECALL                         R17 R1 K24 ["getNextOrder"]
      149 CALL                             R17 1 1
      150 SETTABLEKS                       R17 R16 K10 ["LayoutOrder"]
      152 LOADK                            R19 K31 ["Control"]
      153 LOADK                            R20 K17 ["Delete"]
      154 NAMECALL                         R17 R3 K27 ["getText"]
      156 CALL                             R17 3 1
      157 SETTABLEKS                       R17 R16 K19 ["Text"]
      159 SETTABLEKS                       R9 R16 K29 ["OnClick"]
      161 CALL                             R14 2 1
      162 SETTABLEKS                       R14 R13 K17 ["Delete"]
      164 CALL                             R10 3 -1
      165 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DirectionalCurveEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useCallback"]
       16 GETTABLEKS                       R3 R1 K9 ["useContext"]
       18 GETIMPORT                        R4 K5 [require]
       20 GETTABLEKS                       R5 R0 K6 ["Packages"]
       22 GETTABLEKS                       R5 R5 K10 ["Framework"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       27 GETTABLEKS                       R6 R4 K12 ["UI"]
       29 GETTABLEKS                       R6 R6 K13 ["IconButton"]
       31 GETTABLEKS                       R7 R4 K12 ["UI"]
       33 GETTABLEKS                       R7 R7 K14 ["Pane"]
       35 GETTABLEKS                       R8 R4 K15 ["Util"]
       37 GETTABLEKS                       R8 R8 K16 ["LayoutOrderIterator"]
       39 GETIMPORT                        R9 K5 [require]
       41 GETTABLEKS                       R10 R0 K17 ["Src"]
       43 GETTABLEKS                       R10 R10 K18 ["Types"]
       45 CALL                             R9 1 1
       46 GETIMPORT                        R10 K5 [require]
       48 GETTABLEKS                       R11 R0 K17 ["Src"]
       50 GETTABLEKS                       R11 R11 K19 ["Components"]
       52 GETTABLEKS                       R11 R11 K20 ["LabelCell"]
       54 CALL                             R10 1 1
       55 GETIMPORT                        R11 K5 [require]
       57 GETTABLEKS                       R12 R0 K21 ["Bin"]
       59 GETTABLEKS                       R12 R12 K22 ["Common"]
       61 GETTABLEKS                       R12 R12 K23 ["defineLuaFlags"]
       63 CALL                             R11 1 1
       64 DUPTABLE                         R12 K26 [{"Type", "Min"}]
       65 LOADK                            R13 K27 ["Number"]
       66 SETTABLEKS                       R13 R12 K24 ["Type"]
       68 LOADN                            R13 0
       69 SETTABLEKS                       R13 R12 K25 ["Min"]
       71 DUPTABLE                         R13 K29 [{"Type", "Min", "Max"}]
       72 LOADK                            R14 K27 ["Number"]
       73 SETTABLEKS                       R14 R13 K24 ["Type"]
       75 LOADN                            R14 0
       76 SETTABLEKS                       R14 R13 K25 ["Min"]
       78 LOADN                            R14 1
       79 SETTABLEKS                       R14 R13 K28 ["Max"]
       81 DUPCLOSURE                       R14 K30 [PROTO_3]
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R11
       87 CAPTURE                          VAL R1
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R12
       91 CAPTURE                          VAL R13
       92 CAPTURE                          VAL R6
       93 RETURN                           R14 1
