PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Mode"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["DRAGGABLE_PIN_MODES"]
        6 GETTABLEKS                       R1 R2 K2 ["Blend1D"]
        8 JUMPIFNOTEQ                      R0 R1 ; [+22]
       10 GETIMPORT                        R0 K5 [Vector2.new]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K7 ["Extents"]
       15 GETTABLEKS                       R4 R5 K8 ["Min"]
       17 GETTABLEKS                       R3 R4 K9 ["X"]
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R6 R7 K7 ["Extents"]
       22 GETTABLEKS                       R5 R6 K10 ["Max"]
       24 GETTABLEKS                       R4 R5 K9 ["X"]
       26 ADD                              R2 R3 R4
       27 DIVK                             R1 R2 K6 [2]
       28 LOADN                            R2 0
       29 CALL                             R0 2 -1
       30 RETURN                           R0 -1
       31 GETUPVAL                         R1 0
       32 GETTABLEKS                       R0 R1 K0 ["Mode"]
       34 GETUPVAL                         R3 1
       35 GETTABLEKS                       R2 R3 K1 ["DRAGGABLE_PIN_MODES"]
       37 GETTABLEKS                       R1 R2 K11 ["Blend2D"]
       39 JUMPIFNOTEQ                      R0 R1 ; [+26]
       41 GETUPVAL                         R0 2
       42 JUMPIFNOT                        R0 ; [+20]
       43 GETUPVAL                         R1 0
       44 GETTABLEKS                       R0 R1 K12 ["InputMode"]
       46 GETIMPORT                        R1 K16 [Enum.AnimationNodeBlend2DInputMode.Cartesian]
       48 JUMPIFNOTEQ                      R0 R1 ; [+14]
       50 GETUPVAL                         R4 0
       51 GETTABLEKS                       R3 R4 K7 ["Extents"]
       53 GETTABLEKS                       R2 R3 K8 ["Min"]
       55 GETUPVAL                         R5 0
       56 GETTABLEKS                       R4 R5 K7 ["Extents"]
       58 GETTABLEKS                       R3 R4 K10 ["Max"]
       60 ADD                              R1 R2 R3
       61 DIVK                             R0 R1 K6 [2]
       62 RETURN                           R0 1
       63 GETIMPORT                        R0 K18 [Vector2.zero]
       65 RETURN                           R0 1
       66 GETIMPORT                        R0 K20 [error]
       68 LOADK                            R2 K21 ["Unknown DraggablePin mode: "]
       69 GETUPVAL                         R5 0
       70 GETTABLEKS                       R4 R5 K0 ["Mode"]
       72 FASTCALL1                        TOSTRING R4 ; [+2]
       73 GETIMPORT                        R3 K23 [tostring]
       75 CALL                             R3 1 1
       76 CONCAT                           R1 R2 R3
       77 CALL                             R0 1 0
       78 GETIMPORT                        R0 K18 [Vector2.zero]
       80 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["AbsToMap"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["OnPinDragged"]
        8 JUMPIFNOT                        R3 ; [+8]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K1 ["OnPinDragged"]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K2 ["Index"]
       15 MOVE                             R5 R2
       16 CALL                             R3 2 0
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R3 R4 K3 ["InputMode"]
       20 GETIMPORT                        R4 K7 [Enum.AnimationNodeBlend2DInputMode.Polar]
       22 JUMPIFNOTEQ                      R3 R4 ; [+7]
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R3 R4 K8 ["toCartesian"]
       27 MOVE                             R4 R2
       28 CALL                             R3 1 1
       29 MOVE                             R2 R3
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R3 R4 K9 ["LockExtents"]
       33 LOADB                            R4 1
       34 CALL                             R3 1 0
       35 GETUPVAL                         R3 2
       36 MOVE                             R4 R2
       37 CALL                             R3 1 0
       38 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["LockExtents"]
        3 LOADB                            R3 0
        4 CALL                             R2 1 0
        5 GETUPVAL                         R2 1
        6 LOADNIL                          R3
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["useMemo"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R1
       12 NEWTABLE                         R5 0 3
       14 GETTABLEKS                       R6 R0 K2 ["InputMode"]
       16 MOVE                             R7 R1
       17 GETTABLEKS                       R8 R0 K3 ["Extents"]
       19 SETLIST                          R5 R6 3 [1]
       21 CALL                             R3 2 1
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R4 R5 K4 ["useCallback"]
       25 NEWCLOSURE                       R5 P1
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          VAL R2
       29 NEWTABLE                         R6 0 5
       31 GETTABLEKS                       R7 R0 K5 ["AbsToMap"]
       33 GETTABLEKS                       R8 R0 K6 ["Index"]
       35 GETTABLEKS                       R9 R0 K7 ["OnPinDragged"]
       37 GETTABLEKS                       R10 R0 K2 ["InputMode"]
       39 GETTABLEKS                       R11 R0 K8 ["LockExtents"]
       41 SETLIST                          R6 R7 5 [1]
       43 CALL                             R4 2 1
       44 GETUPVAL                         R6 0
       45 GETTABLEKS                       R5 R6 K4 ["useCallback"]
       47 NEWCLOSURE                       R6 P2
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R2
       50 NEWTABLE                         R7 0 1
       52 GETTABLEKS                       R8 R0 K8 ["LockExtents"]
       54 SETLIST                          R7 R8 1 [1]
       56 CALL                             R5 2 1
       57 LOADK                            R7 K9 ["Point_"]
       58 GETTABLEKS                       R9 R0 K6 ["Index"]
       60 FASTCALL1                        TOSTRING R9 ; [+2]
       61 GETIMPORT                        R8 K11 [tostring]
       63 CALL                             R8 1 1
       64 CONCAT                           R6 R7 R8
       65 JUMPIFNOT                        R1 ; [+2]
       66 MOVE                             R7 R3
       67 JUMP                             ; [+2]
       68 GETTABLEKS                       R7 R0 K12 ["Position"]
       70 JUMPIFNOT                        R1 ; [+2]
       71 LOADN                            R8 1
       72 JUMP                             ; [+1]
       73 LOADN                            R8 0
       74 GETUPVAL                         R10 0
       75 GETTABLEKS                       R9 R10 K13 ["createElement"]
       77 GETUPVAL                         R11 0
       78 GETTABLEKS                       R10 R11 K14 ["Fragment"]
       80 NEWTABLE                         R11 0 0
       82 NEWTABLE                         R12 2 0
       84 GETUPVAL                         R14 0
       85 GETTABLEKS                       R13 R14 K13 ["createElement"]
       87 GETUPVAL                         R15 3
       88 GETTABLEKS                       R14 R15 K15 ["Point"]
       90 DUPTABLE                         R15 K22 [{"Position", "Size", "ZIndex", "Image", "Color3", "Transparency", "Tag"}]
       91 SETTABLEKS                       R7 R15 K12 ["Position"]
       93 LOADN                            R16 12
       94 SETTABLEKS                       R16 R15 K16 ["Size"]
       96 GETTABLEKS                       R16 R0 K17 ["ZIndex"]
       98 SETTABLEKS                       R16 R15 K17 ["ZIndex"]
      100 GETTABLEKS                       R16 R0 K18 ["Image"]
      102 SETTABLEKS                       R16 R15 K18 ["Image"]
      104 GETTABLEKS                       R16 R0 K19 ["Color3"]
      106 SETTABLEKS                       R16 R15 K19 ["Color3"]
      108 SETTABLEKS                       R8 R15 K20 ["Transparency"]
      110 LOADK                            R17 K23 ["data-testid=%*"]
      111 MOVE                             R19 R6
      112 NAMECALL                         R17 R17 K24 ["format"]
      114 CALL                             R17 2 1
      115 MOVE                             R16 R17
      116 SETTABLEKS                       R16 R15 K21 ["Tag"]
      118 DUPTABLE                         R16 K26 [{"DragDetector"}]
      119 GETUPVAL                         R18 0
      120 GETTABLEKS                       R17 R18 K13 ["createElement"]
      122 LOADK                            R18 K27 ["UIDragDetector"]
      123 NEWTABLE                         R19 4 0
      125 GETIMPORT                        R20 K31 [Enum.UIDragDetectorDragStyle.Scriptable]
      127 SETTABLEKS                       R20 R19 K32 ["DragStyle"]
      129 GETUPVAL                         R22 0
      130 GETTABLEKS                       R21 R22 K33 ["Event"]
      132 GETTABLEKS                       R20 R21 K34 ["DragContinue"]
      134 SETTABLE                         R4 R19 R20
      135 GETUPVAL                         R22 0
      136 GETTABLEKS                       R21 R22 K33 ["Event"]
      138 GETTABLEKS                       R20 R21 K35 ["DragEnd"]
      140 SETTABLE                         R5 R19 R20
      141 CALL                             R17 2 1
      142 SETTABLEKS                       R17 R16 K25 ["DragDetector"]
      144 CALL                             R13 3 1
      145 SETTABLE                         R13 R12 R6
      146 LOADK                            R14 K36 ["PreviewPoint_"]
      147 GETTABLEKS                       R16 R0 K6 ["Index"]
      149 FASTCALL1                        TOSTRING R16 ; [+2]
      150 GETIMPORT                        R15 K11 [tostring]
      152 CALL                             R15 1 1
      153 CONCAT                           R13 R14 R15
      154 JUMPIFNOT                        R1 ; [+26]
      155 GETUPVAL                         R15 0
      156 GETTABLEKS                       R14 R15 K13 ["createElement"]
      158 GETUPVAL                         R16 3
      159 GETTABLEKS                       R15 R16 K15 ["Point"]
      161 DUPTABLE                         R16 K37 [{"Position", "Size", "ZIndex", "Image", "Color3"}]
      162 SETTABLEKS                       R1 R16 K12 ["Position"]
      164 LOADN                            R17 12
      165 SETTABLEKS                       R17 R16 K16 ["Size"]
      167 GETTABLEKS                       R17 R0 K17 ["ZIndex"]
      169 SETTABLEKS                       R17 R16 K17 ["ZIndex"]
      171 GETTABLEKS                       R17 R0 K18 ["Image"]
      173 SETTABLEKS                       R17 R16 K18 ["Image"]
      175 GETTABLEKS                       R17 R0 K19 ["Color3"]
      177 SETTABLEKS                       R17 R16 K19 ["Color3"]
      179 CALL                             R14 2 1
      180 JUMP                             ; [+1]
      181 LOADNIL                          R14
      182 SETTABLE                         R14 R12 R13
      183 CALL                             R9 3 -1
      184 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["Graphing"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R7 R0 K10 ["Components"]
       25 GETTABLEKS                       R6 R7 K11 ["NodeView"]
       27 GETTABLEKS                       R5 R6 K12 ["CompositorNodeProperty"]
       29 GETTABLEKS                       R4 R5 K13 ["PropertyUtils"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R6 R0 K8 ["Parent"]
       36 GETTABLEKS                       R5 R6 K14 ["React"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K15 [PROTO_3]
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R2
       44 RETURN                           R5 1
