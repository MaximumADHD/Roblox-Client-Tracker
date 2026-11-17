PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R2 R0 K1 ["visibleNodeObservable"]
        7 GETUPVAL                         R3 1
        8 CALL                             R3 0 1
        9 GETUPVAL                         R4 2
       10 LOADK                            R5 K2 ["Frame"]
       11 NEWTABLE                         R6 2 0
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R7 R7 K3 ["Tag"]
       16 LOADK                            R8 K4 ["Explorer-View Explorer-OverlaysRow"]
       17 SETTABLE                         R8 R6 R7
       18 SETTABLEKS                       R1 R6 K5 ["ref"]
       20 DUPTABLE                         R7 K8 [{"List", "RenameBox"}]
       21 GETUPVAL                         R8 2
       22 LOADK                            R9 K2 ["Frame"]
       23 NEWTABLE                         R10 1 0
       25 GETUPVAL                         R11 0
       26 GETTABLEKS                       R11 R11 K3 ["Tag"]
       28 LOADK                            R12 K9 ["Explorer-View X-Row X-Middle"]
       29 SETTABLE                         R12 R10 R11
       30 DUPTABLE                         R11 K14 [{"NodeDetailsPlaceholder", "InsertObjectContainer", "Gap", "Fields"}]
       31 GETUPVAL                         R12 2
       32 GETUPVAL                         R13 3
       33 DUPTABLE                         R14 K16 [{"scrollWidthObservable", "visibleNodeObservable"}]
       34 GETTABLEKS                       R15 R0 K15 ["scrollWidthObservable"]
       36 SETTABLEKS                       R15 R14 K15 ["scrollWidthObservable"]
       38 GETTABLEKS                       R15 R0 K1 ["visibleNodeObservable"]
       40 SETTABLEKS                       R15 R14 K1 ["visibleNodeObservable"]
       42 CALL                             R12 2 1
       43 SETTABLEKS                       R12 R11 K10 ["NodeDetailsPlaceholder"]
       45 GETUPVAL                         R12 2
       46 LOADK                            R13 K2 ["Frame"]
       47 DUPTABLE                         R14 K21 [{["BackgroundTransparency"] = 1, ["LayoutOrder"], ["Size"]}]
       48 MOVE                             R15 R3
       49 CALL                             R15 0 1
       50 SETTABLEKS                       R15 R14 K19 ["LayoutOrder"]
       52 GETIMPORT                        R15 K24 [UDim2.fromOffset]
       54 GETUPVAL                         R16 4
       55 GETTABLEKS                       R16 R16 K25 ["explorerRowHeight"]
       57 GETUPVAL                         R17 4
       58 GETTABLEKS                       R17 R17 K25 ["explorerRowHeight"]
       60 CALL                             R15 2 1
       61 SETTABLEKS                       R15 R14 K20 ["Size"]
       63 DUPTABLE                         R15 K27 [{"InsertObject"}]
       64 GETUPVAL                         R16 2
       65 GETUPVAL                         R17 5
       66 DUPTABLE                         R18 K31 [{"session", "visibleNodeObservable", "boxSelecting", "windowIsHoveredObservable"}]
       67 GETTABLEKS                       R19 R0 K28 ["session"]
       69 SETTABLEKS                       R19 R18 K28 ["session"]
       71 GETTABLEKS                       R19 R0 K1 ["visibleNodeObservable"]
       73 SETTABLEKS                       R19 R18 K1 ["visibleNodeObservable"]
       75 GETTABLEKS                       R19 R0 K29 ["boxSelecting"]
       77 SETTABLEKS                       R19 R18 K29 ["boxSelecting"]
       79 GETTABLEKS                       R19 R0 K30 ["windowIsHoveredObservable"]
       81 SETTABLEKS                       R19 R18 K30 ["windowIsHoveredObservable"]
       83 CALL                             R16 2 1
       84 SETTABLEKS                       R16 R15 K26 ["InsertObject"]
       86 CALL                             R12 3 1
       87 SETTABLEKS                       R12 R11 K11 ["InsertObjectContainer"]
       89 GETUPVAL                         R12 2
       90 LOADK                            R13 K2 ["Frame"]
       91 NEWTABLE                         R14 4 0
       93 LOADN                            R15 1
       94 SETTABLEKS                       R15 R14 K17 ["BackgroundTransparency"]
       96 MOVE                             R15 R3
       97 CALL                             R15 0 1
       98 SETTABLEKS                       R15 R14 K19 ["LayoutOrder"]
      100 GETUPVAL                         R15 0
      101 GETTABLEKS                       R15 R15 K3 ["Tag"]
      103 LOADK                            R16 K32 ["Explorer-FillX"]
      104 SETTABLE                         R16 R14 R15
      105 CALL                             R12 2 1
      106 SETTABLEKS                       R12 R11 K12 ["Gap"]
      108 GETUPVAL                         R12 2
      109 GETUPVAL                         R13 6
      110 DUPTABLE                         R14 K34 [{"visibleNodeObservable", "session", "layoutOrder"}]
      111 SETTABLEKS                       R2 R14 K1 ["visibleNodeObservable"]
      113 GETTABLEKS                       R15 R0 K28 ["session"]
      115 SETTABLEKS                       R15 R14 K28 ["session"]
      117 MOVE                             R15 R3
      118 CALL                             R15 0 1
      119 SETTABLEKS                       R15 R14 K33 ["layoutOrder"]
      121 CALL                             R12 2 1
      122 SETTABLEKS                       R12 R11 K13 ["Fields"]
      124 CALL                             R8 3 1
      125 SETTABLEKS                       R8 R7 K6 ["List"]
      127 GETUPVAL                         R8 2
      128 GETUPVAL                         R9 7
      129 DUPTABLE                         R10 K36 [{"session", "visibleNodeObservable", "scrollWidthObservable", "scrollingFrameRef"}]
      130 GETTABLEKS                       R11 R0 K28 ["session"]
      132 SETTABLEKS                       R11 R10 K28 ["session"]
      134 GETTABLEKS                       R11 R0 K1 ["visibleNodeObservable"]
      136 SETTABLEKS                       R11 R10 K1 ["visibleNodeObservable"]
      138 GETTABLEKS                       R11 R0 K15 ["scrollWidthObservable"]
      140 SETTABLEKS                       R11 R10 K15 ["scrollWidthObservable"]
      142 GETTABLEKS                       R11 R0 K35 ["scrollingFrameRef"]
      144 SETTABLEKS                       R11 R10 K35 ["scrollingFrameRef"]
      146 CALL                             R8 2 1
      147 SETTABLEKS                       R8 R7 K7 ["RenameBox"]
      149 CALL                             R4 3 -1
      150 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["FieldsList"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["Overlays"]
       27 GETTABLEKS                       R4 R4 K11 ["InsertObject"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Components"]
       34 GETTABLEKS                       R5 R5 K12 ["NodeDetailsPlaceholder"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Util"]
       41 GETTABLEKS                       R6 R6 K13 ["Observable"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K14 ["Parent"]
       48 GETTABLEKS                       R7 R7 K15 ["React"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K8 ["Components"]
       55 GETTABLEKS                       R8 R8 K10 ["Overlays"]
       57 GETTABLEKS                       R8 R8 K16 ["RenameBoxOverlay"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K17 ["RpcTypes"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K6 ["Util"]
       69 GETTABLEKS                       R10 R10 K18 ["createNextOrder"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K19 ["Hooks"]
       76 GETTABLEKS                       R11 R11 K20 ["useVisibleExplorerNodeRange"]
       78 CALL                             R10 1 1
       79 GETTABLEKS                       R11 R6 K21 ["createElement"]
       81 DUPCLOSURE                       R12 K22 [PROTO_0]
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R11
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R7
       90 GETTABLEKS                       R13 R6 K23 ["memo"]
       92 MOVE                             R14 R12
       93 CALL                             R13 1 1
       94 MOVE                             R12 R13
       95 RETURN                           R12 1
