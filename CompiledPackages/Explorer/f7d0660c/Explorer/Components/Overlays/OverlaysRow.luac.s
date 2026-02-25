PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R2 R0 K1 ["visibleNodeObservable"]
        7 GETUPVAL                         R3 1
        8 CALL                             R3 0 1
        9 GETUPVAL                         R4 2
       10 LOADK                            R5 K2 ["Frame"]
       11 NEWTABLE                         R6 2 0
       13 GETUPVAL                         R8 0
       14 GETTABLEKS                       R7 R8 K3 ["Tag"]
       16 LOADK                            R8 K4 ["Explorer-View Explorer-OverlaysRow"]
       17 SETTABLE                         R8 R6 R7
       18 SETTABLEKS                       R1 R6 K5 ["ref"]
       20 DUPTABLE                         R7 K8 [{"List", "RenameBox"}]
       21 GETUPVAL                         R8 2
       22 LOADK                            R9 K2 ["Frame"]
       23 NEWTABLE                         R10 1 0
       25 GETUPVAL                         R12 0
       26 GETTABLEKS                       R11 R12 K3 ["Tag"]
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
       47 DUPTABLE                         R14 K20 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
       48 LOADN                            R15 1
       49 SETTABLEKS                       R15 R14 K17 ["BackgroundTransparency"]
       51 MOVE                             R15 R3
       52 CALL                             R15 0 1
       53 SETTABLEKS                       R15 R14 K18 ["LayoutOrder"]
       55 GETIMPORT                        R15 K23 [UDim2.fromOffset]
       57 GETUPVAL                         R17 4
       58 GETTABLEKS                       R16 R17 K24 ["explorerRowHeight"]
       60 GETUPVAL                         R18 4
       61 GETTABLEKS                       R17 R18 K24 ["explorerRowHeight"]
       63 CALL                             R15 2 1
       64 SETTABLEKS                       R15 R14 K19 ["Size"]
       66 DUPTABLE                         R15 K26 [{"InsertObject"}]
       67 GETUPVAL                         R16 2
       68 GETUPVAL                         R17 5
       69 DUPTABLE                         R18 K30 [{"session", "visibleNodeObservable", "boxSelecting", "windowIsHoveredObservable"}]
       70 GETTABLEKS                       R19 R0 K27 ["session"]
       72 SETTABLEKS                       R19 R18 K27 ["session"]
       74 GETTABLEKS                       R19 R0 K1 ["visibleNodeObservable"]
       76 SETTABLEKS                       R19 R18 K1 ["visibleNodeObservable"]
       78 GETTABLEKS                       R19 R0 K28 ["boxSelecting"]
       80 SETTABLEKS                       R19 R18 K28 ["boxSelecting"]
       82 GETTABLEKS                       R19 R0 K29 ["windowIsHoveredObservable"]
       84 SETTABLEKS                       R19 R18 K29 ["windowIsHoveredObservable"]
       86 CALL                             R16 2 1
       87 SETTABLEKS                       R16 R15 K25 ["InsertObject"]
       89 CALL                             R12 3 1
       90 SETTABLEKS                       R12 R11 K11 ["InsertObjectContainer"]
       92 GETUPVAL                         R12 2
       93 LOADK                            R13 K2 ["Frame"]
       94 NEWTABLE                         R14 4 0
       96 LOADN                            R15 1
       97 SETTABLEKS                       R15 R14 K17 ["BackgroundTransparency"]
       99 MOVE                             R15 R3
      100 CALL                             R15 0 1
      101 SETTABLEKS                       R15 R14 K18 ["LayoutOrder"]
      103 GETUPVAL                         R16 0
      104 GETTABLEKS                       R15 R16 K3 ["Tag"]
      106 LOADK                            R16 K31 ["Explorer-FillX"]
      107 SETTABLE                         R16 R14 R15
      108 CALL                             R12 2 1
      109 SETTABLEKS                       R12 R11 K12 ["Gap"]
      111 GETUPVAL                         R12 2
      112 GETUPVAL                         R13 6
      113 DUPTABLE                         R14 K33 [{"visibleNodeObservable", "session", "layoutOrder"}]
      114 SETTABLEKS                       R2 R14 K1 ["visibleNodeObservable"]
      116 GETTABLEKS                       R15 R0 K27 ["session"]
      118 SETTABLEKS                       R15 R14 K27 ["session"]
      120 MOVE                             R15 R3
      121 CALL                             R15 0 1
      122 SETTABLEKS                       R15 R14 K32 ["layoutOrder"]
      124 CALL                             R12 2 1
      125 SETTABLEKS                       R12 R11 K13 ["Fields"]
      127 CALL                             R8 3 1
      128 SETTABLEKS                       R8 R7 K6 ["List"]
      130 GETUPVAL                         R8 2
      131 GETUPVAL                         R9 7
      132 DUPTABLE                         R10 K35 [{"session", "visibleNodeObservable", "scrollWidthObservable", "scrollingFrameRef"}]
      133 GETTABLEKS                       R11 R0 K27 ["session"]
      135 SETTABLEKS                       R11 R10 K27 ["session"]
      137 GETTABLEKS                       R11 R0 K1 ["visibleNodeObservable"]
      139 SETTABLEKS                       R11 R10 K1 ["visibleNodeObservable"]
      141 GETTABLEKS                       R11 R0 K15 ["scrollWidthObservable"]
      143 SETTABLEKS                       R11 R10 K15 ["scrollWidthObservable"]
      145 GETTABLEKS                       R11 R0 K34 ["scrollingFrameRef"]
      147 SETTABLEKS                       R11 R10 K34 ["scrollingFrameRef"]
      149 CALL                             R8 2 1
      150 SETTABLEKS                       R8 R7 K7 ["RenameBox"]
      152 CALL                             R4 3 -1
      153 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R4 K9 ["FieldsList"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R6 K10 ["Overlays"]
       27 GETTABLEKS                       R4 R5 K11 ["InsertObject"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K8 ["Components"]
       34 GETTABLEKS                       R5 R6 K12 ["NodeDetailsPlaceholder"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K6 ["Util"]
       41 GETTABLEKS                       R6 R7 K13 ["Observable"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R8 R0 K14 ["Parent"]
       48 GETTABLEKS                       R7 R8 K15 ["React"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R10 R0 K8 ["Components"]
       55 GETTABLEKS                       R9 R10 K10 ["Overlays"]
       57 GETTABLEKS                       R8 R9 K16 ["RenameBoxOverlay"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K17 ["RpcTypes"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R11 R0 K6 ["Util"]
       69 GETTABLEKS                       R10 R11 K18 ["createNextOrder"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R12 R0 K19 ["Hooks"]
       76 GETTABLEKS                       R11 R12 K20 ["useVisibleExplorerNodeRange"]
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
