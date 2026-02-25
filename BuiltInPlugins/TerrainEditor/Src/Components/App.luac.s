PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+20]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K0 ["current"]
        8 GETTABLEKS                       R2 R3 K1 ["Parent"]
       10 NAMECALL                         R0 R0 K2 ["setRoot"]
       12 CALL                             R0 2 0
       13 GETUPVAL                         R0 1
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R4 R5 K0 ["current"]
       17 GETTABLEKS                       R3 R4 K3 ["AbsoluteSize"]
       19 GETTABLEKS                       R2 R3 K4 ["X"]
       21 NAMECALL                         R0 R0 K5 ["setPluginWidth"]
       23 CALL                             R0 2 0
       24 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+11]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K0 ["current"]
        8 GETTABLEKS                       R3 R4 K1 ["AbsoluteSize"]
       10 GETTABLEKS                       R2 R3 K2 ["X"]
       12 NAMECALL                         R0 R0 K3 ["setPluginWidth"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["use"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 GETIMPORT                        R2 K3 [Vector2.new]
        7 LOADN                            R3 0
        8 LOADN                            R4 0
        9 CALL                             R2 2 -1
       10 CALL                             R1 -1 2
       11 GETUPVAL                         R3 2
       12 CALL                             R3 0 1
       13 GETUPVAL                         R4 3
       14 NEWCLOSURE                       R5 P0
       15 CAPTURE                          VAL R3
       16 CAPTURE                          VAL R0
       17 NEWTABLE                         R6 0 0
       19 CALL                             R4 2 0
       20 GETUPVAL                         R4 4
       21 NEWCLOSURE                       R5 P1
       22 CAPTURE                          VAL R3
       23 CAPTURE                          VAL R0
       24 NEWTABLE                         R6 0 1
       26 MOVE                             R7 R0
       27 SETLIST                          R6 R7 1 [1]
       29 CALL                             R4 2 1
       30 GETUPVAL                         R6 5
       31 GETTABLEKS                       R5 R6 K2 ["new"]
       33 CALL                             R5 0 1
       34 GETUPVAL                         R7 6
       35 GETTABLEKS                       R6 R7 K4 ["createElement"]
       37 GETUPVAL                         R7 7
       38 NEWTABLE                         R8 8 0
       40 SETTABLEKS                       R3 R8 K5 ["ForwardRef"]
       42 GETIMPORT                        R9 K8 [UDim2.fromScale]
       44 LOADN                            R10 1
       45 LOADN                            R11 1
       46 CALL                             R9 2 1
       47 SETTABLEKS                       R9 R8 K9 ["Size"]
       49 GETIMPORT                        R9 K13 [Enum.FillDirection.Vertical]
       51 SETTABLEKS                       R9 R8 K14 ["Layout"]
       53 GETIMPORT                        R9 K17 [Enum.VerticalAlignment.Top]
       55 SETTABLEKS                       R9 R8 K15 ["VerticalAlignment"]
       57 GETUPVAL                         R11 6
       58 GETTABLEKS                       R10 R11 K18 ["Change"]
       60 GETTABLEKS                       R9 R10 K19 ["AbsoluteSize"]
       62 SETTABLE                         R4 R8 R9
       63 DUPTABLE                         R9 K23 [{"Toolbar", "ToolSettings", "ToolGizmos"}]
       64 GETUPVAL                         R11 6
       65 GETTABLEKS                       R10 R11 K4 ["createElement"]
       67 GETUPVAL                         R11 8
       68 DUPTABLE                         R12 K26 [{"LayoutOrder", "OnAbsoluteSizeChanged"}]
       69 NAMECALL                         R13 R5 K27 ["getNextOrder"]
       71 CALL                             R13 1 1
       72 SETTABLEKS                       R13 R12 K24 ["LayoutOrder"]
       74 SETTABLEKS                       R2 R12 K25 ["OnAbsoluteSizeChanged"]
       76 CALL                             R10 2 1
       77 SETTABLEKS                       R10 R9 K20 ["Toolbar"]
       79 GETUPVAL                         R11 6
       80 GETTABLEKS                       R10 R11 K4 ["createElement"]
       82 GETUPVAL                         R11 9
       83 DUPTABLE                         R12 K28 [{"LayoutOrder", "Size"}]
       84 NAMECALL                         R13 R5 K27 ["getNextOrder"]
       86 CALL                             R13 1 1
       87 SETTABLEKS                       R13 R12 K24 ["LayoutOrder"]
       89 GETIMPORT                        R13 K29 [UDim2.new]
       91 LOADN                            R14 1
       92 LOADN                            R15 0
       93 LOADN                            R16 1
       94 GETTABLEKS                       R18 R1 K30 ["Y"]
       96 MINUS                            R17 R18
       97 CALL                             R13 4 1
       98 SETTABLEKS                       R13 R12 K9 ["Size"]
      100 CALL                             R10 2 1
      101 SETTABLEKS                       R10 R9 K21 ["ToolSettings"]
      103 GETUPVAL                         R11 6
      104 GETTABLEKS                       R10 R11 K4 ["createElement"]
      106 GETUPVAL                         R11 10
      107 DUPTABLE                         R12 K28 [{"LayoutOrder", "Size"}]
      108 NAMECALL                         R13 R5 K27 ["getNextOrder"]
      110 CALL                             R13 1 1
      111 SETTABLEKS                       R13 R12 K24 ["LayoutOrder"]
      113 GETIMPORT                        R13 K29 [UDim2.new]
      115 CALL                             R13 0 1
      116 SETTABLEKS                       R13 R12 K9 ["Size"]
      118 CALL                             R10 2 1
      119 SETTABLEKS                       R10 R9 K22 ["ToolGizmos"]
      121 CALL                             R6 3 -1
      122 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
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
       21 GETTABLEKS                       R4 R2 K9 ["Util"]
       23 GETTABLEKS                       R3 R4 K10 ["LayoutOrderIterator"]
       25 GETTABLEKS                       R4 R1 K11 ["useCallback"]
       27 GETTABLEKS                       R5 R1 K12 ["useEffect"]
       29 GETTABLEKS                       R6 R1 K13 ["useRef"]
       31 GETTABLEKS                       R7 R1 K14 ["useState"]
       33 GETTABLEKS                       R8 R2 K15 ["UI"]
       35 GETTABLEKS                       R9 R8 K16 ["Pane"]
       37 GETIMPORT                        R10 K5 [require]
       39 GETTABLEKS                       R13 R0 K17 ["Src"]
       41 GETTABLEKS                       R12 R13 K18 ["Components"]
       43 GETTABLEKS                       R11 R12 K19 ["Toolbar"]
       45 CALL                             R10 1 1
       46 GETIMPORT                        R11 K5 [require]
       48 GETTABLEKS                       R14 R0 K17 ["Src"]
       50 GETTABLEKS                       R13 R14 K18 ["Components"]
       52 GETTABLEKS                       R12 R13 K20 ["ToolGizmos"]
       54 CALL                             R11 1 1
       55 GETIMPORT                        R12 K5 [require]
       57 GETTABLEKS                       R15 R0 K17 ["Src"]
       59 GETTABLEKS                       R14 R15 K18 ["Components"]
       61 GETTABLEKS                       R13 R14 K21 ["ToolSettings"]
       63 CALL                             R12 1 1
       64 GETIMPORT                        R13 K5 [require]
       66 GETTABLEKS                       R16 R0 K17 ["Src"]
       68 GETTABLEKS                       R15 R16 K22 ["Controllers"]
       70 GETTABLEKS                       R14 R15 K23 ["PluginController"]
       72 CALL                             R13 1 1
       73 DUPCLOSURE                       R14 K24 [PROTO_2]
       74 CAPTURE                          VAL R13
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R9
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R12
       84 CAPTURE                          VAL R11
       85 RETURN                           R14 1
