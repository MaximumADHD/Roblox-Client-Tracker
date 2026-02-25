PROTO_0:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 MOVE                             R2 R0
        3 GETUPVAL                         R3 0
        4 CALL                             R1 2 1
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K3 ["CurveHook"]
        8 GETTABLEKS                       R2 R3 K4 ["update"]
       10 MOVE                             R3 R1
       11 LOADB                            R4 1
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R1 2 1
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K3 ["CurveHook"]
        8 GETTABLEKS                       R2 R3 K4 ["update"]
       10 MOVE                             R3 R1
       11 LOADB                            R4 1
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["CurveHook"]
        3 GETTABLEKS                       R0 R1 K1 ["remove"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R4 R5 K1 ["Context"]
        8 GETTABLEKS                       R3 R4 K2 ["Consumer"]
       10 CALL                             R2 1 1
       11 GETUPVAL                         R6 2
       12 GETTABLEKS                       R5 R6 K3 ["Localization"]
       14 GETTABLEKS                       R4 R5 K4 ["Key"]
       16 GETTABLE                         R3 R2 R4
       17 GETTABLEKS                       R5 R0 K5 ["CurveHook"]
       19 GETTABLEKS                       R4 R5 K6 ["getSelectedKeypoint"]
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
       34 CAPTURE                          VAL R6
       35 CAPTURE                          VAL R0
       36 NEWTABLE                         R9 0 1
       38 GETTABLEKS                       R10 R0 K5 ["CurveHook"]
       40 SETLIST                          R9 R10 1 [1]
       42 CALL                             R7 2 1
       43 GETUPVAL                         R8 3
       44 NEWCLOSURE                       R9 P1
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R0
       47 NEWTABLE                         R10 0 1
       49 GETTABLEKS                       R11 R0 K5 ["CurveHook"]
       51 SETLIST                          R10 R11 1 [1]
       53 CALL                             R8 2 1
       54 GETUPVAL                         R9 3
       55 NEWCLOSURE                       R10 P2
       56 CAPTURE                          VAL R0
       57 NEWTABLE                         R11 0 1
       59 GETTABLEKS                       R12 R0 K5 ["CurveHook"]
       61 SETLIST                          R11 R12 1 [1]
       63 CALL                             R9 2 1
       64 GETUPVAL                         R11 4
       65 GETTABLEKS                       R10 R11 K9 ["createElement"]
       67 GETUPVAL                         R11 5
       68 NEWTABLE                         R12 4 0
       70 LOADN                            R13 2
       71 SETTABLEKS                       R13 R12 K10 ["LayoutOrder"]
       73 GETIMPORT                        R13 K13 [UDim2.fromScale]
       75 LOADN                            R14 1
       76 LOADN                            R15 0
       77 CALL                             R13 2 1
       78 SETTABLEKS                       R13 R12 K14 ["Size"]
       80 GETUPVAL                         R14 4
       81 GETTABLEKS                       R13 R14 K15 ["Tag"]
       83 LOADK                            R14 K16 ["X-Center X-Middle X-RowM X-Fit"]
       84 SETTABLE                         R14 R12 R13
       85 DUPTABLE                         R13 K18 [{"X", "Y", "Delete"}]
       86 GETUPVAL                         R15 4
       87 GETTABLEKS                       R14 R15 K9 ["createElement"]
       89 GETUPVAL                         R15 6
       90 DUPTABLE                         R16 K23 [{"LayoutOrder", "Text", "Schema", "Value", "OnChanged"}]
       91 NAMECALL                         R17 R1 K24 ["getNextOrder"]
       93 CALL                             R17 1 1
       94 SETTABLEKS                       R17 R16 K10 ["LayoutOrder"]
       96 LOADK                            R19 K25 ["Label"]
       97 LOADK                            R20 K26 ["Angle"]
       98 NAMECALL                         R17 R3 K27 ["getText"]
      100 CALL                             R17 3 1
      101 SETTABLEKS                       R17 R16 K19 ["Text"]
      103 GETUPVAL                         R17 7
      104 SETTABLEKS                       R17 R16 K20 ["Schema"]
      106 SETTABLEKS                       R5 R16 K21 ["Value"]
      108 SETTABLEKS                       R7 R16 K22 ["OnChanged"]
      110 CALL                             R14 2 1
      111 SETTABLEKS                       R14 R13 K7 ["X"]
      113 GETUPVAL                         R15 4
      114 GETTABLEKS                       R14 R15 K9 ["createElement"]
      116 GETUPVAL                         R15 6
      117 DUPTABLE                         R16 K23 [{"LayoutOrder", "Text", "Schema", "Value", "OnChanged"}]
      118 NAMECALL                         R17 R1 K24 ["getNextOrder"]
      120 CALL                             R17 1 1
      121 SETTABLEKS                       R17 R16 K10 ["LayoutOrder"]
      123 LOADK                            R19 K25 ["Label"]
      124 LOADK                            R20 K28 ["Volume"]
      125 NAMECALL                         R17 R3 K27 ["getText"]
      127 CALL                             R17 3 1
      128 SETTABLEKS                       R17 R16 K19 ["Text"]
      130 GETUPVAL                         R17 8
      131 SETTABLEKS                       R17 R16 K20 ["Schema"]
      133 SETTABLEKS                       R6 R16 K21 ["Value"]
      135 SETTABLEKS                       R8 R16 K22 ["OnChanged"]
      137 CALL                             R14 2 1
      138 SETTABLEKS                       R14 R13 K8 ["Y"]
      140 GETUPVAL                         R15 4
      141 GETTABLEKS                       R14 R15 K9 ["createElement"]
      143 GETUPVAL                         R15 9
      144 DUPTABLE                         R16 K30 [{"LayoutOrder", "Text", "OnClick"}]
      145 NAMECALL                         R17 R1 K24 ["getNextOrder"]
      147 CALL                             R17 1 1
      148 SETTABLEKS                       R17 R16 K10 ["LayoutOrder"]
      150 LOADK                            R19 K31 ["Control"]
      151 LOADK                            R20 K17 ["Delete"]
      152 NAMECALL                         R17 R3 K27 ["getText"]
      154 CALL                             R17 3 1
      155 SETTABLEKS                       R17 R16 K19 ["Text"]
      157 SETTABLEKS                       R9 R16 K29 ["OnClick"]
      159 CALL                             R14 2 1
      160 SETTABLEKS                       R14 R13 K17 ["Delete"]
      162 CALL                             R10 3 -1
      163 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DirectionalCurveEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useCallback"]
       16 GETTABLEKS                       R3 R1 K9 ["useContext"]
       18 GETIMPORT                        R4 K5 [require]
       20 GETTABLEKS                       R6 R0 K6 ["Packages"]
       22 GETTABLEKS                       R5 R6 K10 ["Framework"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       27 GETTABLEKS                       R7 R4 K12 ["UI"]
       29 GETTABLEKS                       R6 R7 K13 ["IconButton"]
       31 GETTABLEKS                       R8 R4 K12 ["UI"]
       33 GETTABLEKS                       R7 R8 K14 ["Pane"]
       35 GETTABLEKS                       R9 R4 K15 ["Util"]
       37 GETTABLEKS                       R8 R9 K16 ["LayoutOrderIterator"]
       39 GETIMPORT                        R9 K5 [require]
       41 GETTABLEKS                       R11 R0 K17 ["Src"]
       43 GETTABLEKS                       R10 R11 K18 ["Types"]
       45 CALL                             R9 1 1
       46 GETIMPORT                        R10 K5 [require]
       48 GETTABLEKS                       R13 R0 K17 ["Src"]
       50 GETTABLEKS                       R12 R13 K19 ["Components"]
       52 GETTABLEKS                       R11 R12 K20 ["LabelCell"]
       54 CALL                             R10 1 1
       55 DUPTABLE                         R11 K23 [{"Type", "Min"}]
       56 LOADK                            R12 K24 ["Number"]
       57 SETTABLEKS                       R12 R11 K21 ["Type"]
       59 LOADN                            R12 0
       60 SETTABLEKS                       R12 R11 K22 ["Min"]
       62 DUPTABLE                         R12 K26 [{"Type", "Min", "Max"}]
       63 LOADK                            R13 K24 ["Number"]
       64 SETTABLEKS                       R13 R12 K21 ["Type"]
       66 LOADN                            R13 0
       67 SETTABLEKS                       R13 R12 K22 ["Min"]
       69 LOADN                            R13 1
       70 SETTABLEKS                       R13 R12 K25 ["Max"]
       72 DUPCLOSURE                       R13 K27 [PROTO_3]
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R10
       80 CAPTURE                          VAL R11
       81 CAPTURE                          VAL R12
       82 CAPTURE                          VAL R6
       83 RETURN                           R13 1
