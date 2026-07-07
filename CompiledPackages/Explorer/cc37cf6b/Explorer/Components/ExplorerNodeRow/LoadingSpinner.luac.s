PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["hoveredKind"]
        2 GETTABLEKS                       R4 R0 K1 ["hoverState"]
        4 JUMPIFNOTEQKS                    R4 K2 ["Hovered"] ; [+3]
        6 LOADK                            R3 K3 ["Explorer-HoveredKind-Hovered"]
        7 JUMP                             ; [+1]
        8 LOADNIL                          R3
        9 CALL                             R1 2 0
       10 GETUPVAL                         R1 0
       11 LOADK                            R2 K4 ["selectionKind"]
       12 GETTABLEKS                       R4 R0 K5 ["selectionState"]
       14 JUMPIFNOT                        R4 ; [+10]
       15 LOADK                            R4 K6 ["Explorer-SelectionKind-%*"]
       16 GETTABLEKS                       R6 R0 K5 ["selectionState"]
       18 GETTABLEKS                       R6 R6 K7 ["kind"]
       20 NAMECALL                         R4 R4 K8 ["format"]
       22 CALL                             R4 2 1
       23 MOVE                             R3 R4
       24 JUMP                             ; [+1]
       25 LOADNIL                          R3
       26 CALL                             R1 2 0
       27 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["isStreamingIn"]
        2 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["isStreamingIn"]
        2 JUMPIF                           R2 ; [+4]
        3 GETIMPORT                        R2 K3 [Vector2.new]
        5 CALL                             R2 0 -1
        6 RETURN                           R2 -1
        7 MODK                             R5 R0 K5 [1.5]
        8 DIVK                             R4 R5 K5 [1.5]
        9 MULK                             R3 R4 K4 [255]
       10 FASTCALL1                        MATH_ROUND R3 ; [+2]
       11 GETIMPORT                        R2 K8 [math.round]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K3 [Vector2.new]
       16 MODK                             R5 R2 K10 [16]
       17 MULK                             R4 R5 K9 [8]
       18 IDIVK                            R6 R2 K10 [16]
       19 MULK                             R5 R6 K9 [8]
       20 CALL                             R3 2 -1
       21 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["useRef"]
        8 LOADNIL                          R3
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 1
       11 MOVE                             R4 R2
       12 CALL                             R3 1 1
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R4 R4 K1 ["useEffect"]
       16 GETTABLEKS                       R5 R0 K2 ["visibleNodeObservable"]
       18 NEWCLOSURE                       R6 P0
       19 CAPTURE                          VAL R3
       20 NEWTABLE                         R7 0 0
       22 CALL                             R4 3 0
       23 GETUPVAL                         R4 3
       24 LOADK                            R5 K3 ["Frame"]
       25 NEWTABLE                         R6 8 0
       27 GETIMPORT                        R7 K6 [Vector2.new]
       29 LOADN                            R8 1
       30 LOADN                            R9 0
       31 CALL                             R7 2 1
       32 SETTABLEKS                       R7 R6 K7 ["AnchorPoint"]
       34 LOADN                            R7 1
       35 SETTABLEKS                       R7 R6 K8 ["BackgroundTransparency"]
       37 GETIMPORT                        R7 K11 [UDim2.fromScale]
       39 LOADN                            R8 1
       40 LOADN                            R9 0
       41 CALL                             R7 2 1
       42 SETTABLEKS                       R7 R6 K12 ["Position"]
       44 GETIMPORT                        R7 K14 [UDim2.fromOffset]
       46 LOADN                            R8 8
       47 LOADN                            R9 8
       48 CALL                             R7 2 1
       49 SETTABLEKS                       R7 R6 K15 ["Size"]
       51 GETTABLEKS                       R7 R0 K2 ["visibleNodeObservable"]
       53 GETTABLEKS                       R7 R7 K16 ["getBinding"]
       55 CALL                             R7 0 1
       56 DUPCLOSURE                       R9 K17 [PROTO_1]
       57 NAMECALL                         R7 R7 K18 ["map"]
       59 CALL                             R7 2 1
       60 SETTABLEKS                       R7 R6 K19 ["Visible"]
       62 GETUPVAL                         R7 0
       63 GETTABLEKS                       R7 R7 K20 ["Tag"]
       65 LOADK                            R8 K21 ["Explorer-LoadingSpinner"]
       66 SETTABLE                         R8 R6 R7
       67 SETTABLEKS                       R1 R6 K22 ["ref"]
       69 DUPTABLE                         R7 K25 [{"Background", "Image"}]
       70 GETUPVAL                         R8 3
       71 LOADK                            R9 K3 ["Frame"]
       72 NEWTABLE                         R10 4 0
       74 GETIMPORT                        R11 K11 [UDim2.fromScale]
       76 LOADN                            R12 1
       77 LOADN                            R13 1
       78 CALL                             R11 2 1
       79 SETTABLEKS                       R11 R10 K15 ["Size"]
       81 SETTABLEKS                       R2 R10 K22 ["ref"]
       83 GETUPVAL                         R11 0
       84 GETTABLEKS                       R11 R11 K20 ["Tag"]
       86 LOADK                            R12 K26 ["Explorer-LoadingSpinner-Background"]
       87 SETTABLE                         R12 R10 R11
       88 DUPTABLE                         R11 K28 [{"UICorner"}]
       89 GETUPVAL                         R12 3
       90 LOADK                            R13 K27 ["UICorner"]
       91 DUPTABLE                         R14 K30 [{"CornerRadius"}]
       92 GETIMPORT                        R15 K32 [UDim.new]
       94 LOADN                            R16 1
       95 LOADN                            R17 0
       96 CALL                             R15 2 1
       97 SETTABLEKS                       R15 R14 K29 ["CornerRadius"]
       99 CALL                             R12 2 1
      100 SETTABLEKS                       R12 R11 K27 ["UICorner"]
      102 CALL                             R8 3 1
      103 SETTABLEKS                       R8 R7 K23 ["Background"]
      105 GETUPVAL                         R8 3
      106 LOADK                            R9 K33 ["ImageLabel"]
      107 NEWTABLE                         R10 8 0
      109 LOADK                            R11 K34 ["rbxasset://textures/Explorer/spinner_spritesheet.png"]
      110 SETTABLEKS                       R11 R10 K24 ["Image"]
      112 GETUPVAL                         R11 4
      113 DUPCLOSURE                       R12 K35 [PROTO_2]
      114 GETTABLEKS                       R13 R0 K36 ["clockBinding"]
      116 GETTABLEKS                       R14 R0 K2 ["visibleNodeObservable"]
      118 GETTABLEKS                       R14 R14 K16 ["getBinding"]
      120 CALL                             R14 0 -1
      121 CALL                             R11 -1 1
      122 SETTABLEKS                       R11 R10 K37 ["ImageRectOffset"]
      124 GETIMPORT                        R11 K6 [Vector2.new]
      126 LOADN                            R12 8
      127 LOADN                            R13 8
      128 CALL                             R11 2 1
      129 SETTABLEKS                       R11 R10 K38 ["ImageRectSize"]
      131 LOADN                            R11 2
      132 SETTABLEKS                       R11 R10 K39 ["ZIndex"]
      134 GETUPVAL                         R11 0
      135 GETTABLEKS                       R11 R11 K20 ["Tag"]
      137 LOADK                            R12 K40 ["Explorer-View Explorer-Content-Standard"]
      138 SETTABLE                         R12 R10 R11
      139 CALL                             R8 2 1
      140 SETTABLEKS                       R8 R7 K24 ["Image"]
      142 CALL                             R4 3 -1
      143 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Observable"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Util"]
       25 GETTABLEKS                       R4 R4 K10 ["joinAndMapBindings"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Hooks"]
       32 GETTABLEKS                       R5 R5 K12 ["useImperativeTagger"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Hooks"]
       39 GETTABLEKS                       R6 R6 K13 ["useVisibleExplorerNodeRange"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R2 K14 ["createElement"]
       44 DUPCLOSURE                       R7 K15 [PROTO_3]
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R3
       50 GETTABLEKS                       R8 R2 K16 ["memo"]
       52 MOVE                             R9 R7
       53 CALL                             R8 1 1
       54 MOVE                             R7 R8
       55 RETURN                           R7 1
