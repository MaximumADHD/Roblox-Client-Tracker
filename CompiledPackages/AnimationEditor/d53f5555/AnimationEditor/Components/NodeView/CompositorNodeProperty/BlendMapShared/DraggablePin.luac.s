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
        1 GETTABLEKS                       R2 R3 K0 ["beginUndoTransaction"]
        3 LOADK                            R3 K1 ["DraggablePin Drag"]
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["LockExtents"]
        3 LOADB                            R3 0
        4 CALL                             R2 1 0
        5 GETUPVAL                         R2 1
        6 LOADNIL                          R3
        7 CALL                             R2 1 0
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R2 R3 K1 ["finishUndoTransaction"]
       11 CALL                             R2 0 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["useContext"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R4 R5 K2 ["Context"]
       11 CALL                             R3 1 1
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K3 ["useMemo"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          VAL R1
       19 NEWTABLE                         R6 0 3
       21 GETTABLEKS                       R7 R0 K4 ["InputMode"]
       23 MOVE                             R8 R1
       24 GETTABLEKS                       R9 R0 K5 ["Extents"]
       26 SETLIST                          R6 R7 3 [1]
       28 CALL                             R4 2 1
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R5 R6 K6 ["useCallback"]
       32 NEWCLOSURE                       R6 P1
       33 CAPTURE                          VAL R3
       34 NEWTABLE                         R7 0 1
       36 MOVE                             R8 R3
       37 SETLIST                          R7 R8 1 [1]
       39 CALL                             R5 2 1
       40 GETUPVAL                         R7 0
       41 GETTABLEKS                       R6 R7 K6 ["useCallback"]
       43 NEWCLOSURE                       R7 P2
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U3
       46 CAPTURE                          VAL R2
       47 NEWTABLE                         R8 0 6
       49 GETTABLEKS                       R9 R0 K7 ["AbsToMap"]
       51 GETTABLEKS                       R10 R0 K8 ["Index"]
       53 GETTABLEKS                       R11 R0 K9 ["OnPinDragged"]
       55 GETTABLEKS                       R12 R0 K4 ["InputMode"]
       57 GETTABLEKS                       R13 R0 K10 ["LockExtents"]
       59 MOVE                             R14 R3
       60 SETLIST                          R8 R9 6 [1]
       62 CALL                             R6 2 1
       63 GETUPVAL                         R8 0
       64 GETTABLEKS                       R7 R8 K6 ["useCallback"]
       66 NEWCLOSURE                       R8 P3
       67 CAPTURE                          VAL R0
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R3
       70 NEWTABLE                         R9 0 2
       72 GETTABLEKS                       R10 R0 K10 ["LockExtents"]
       74 MOVE                             R11 R3
       75 SETLIST                          R9 R10 2 [1]
       77 CALL                             R7 2 1
       78 LOADK                            R9 K11 ["Point_"]
       79 GETTABLEKS                       R11 R0 K8 ["Index"]
       81 FASTCALL1                        TOSTRING R11 ; [+2]
       82 GETIMPORT                        R10 K13 [tostring]
       84 CALL                             R10 1 1
       85 CONCAT                           R8 R9 R10
       86 JUMPIFNOT                        R1 ; [+2]
       87 MOVE                             R9 R4
       88 JUMP                             ; [+2]
       89 GETTABLEKS                       R9 R0 K14 ["Position"]
       91 JUMPIFNOT                        R1 ; [+2]
       92 LOADN                            R10 1
       93 JUMP                             ; [+1]
       94 LOADN                            R10 0
       95 GETUPVAL                         R12 0
       96 GETTABLEKS                       R11 R12 K15 ["createElement"]
       98 GETUPVAL                         R13 0
       99 GETTABLEKS                       R12 R13 K16 ["Fragment"]
      101 NEWTABLE                         R13 0 0
      103 NEWTABLE                         R14 2 0
      105 GETUPVAL                         R16 0
      106 GETTABLEKS                       R15 R16 K15 ["createElement"]
      108 GETUPVAL                         R17 4
      109 GETTABLEKS                       R16 R17 K17 ["Point"]
      111 DUPTABLE                         R17 K24 [{"Position", "Size", "ZIndex", "Image", "Color3", "Transparency", "Tag"}]
      112 SETTABLEKS                       R9 R17 K14 ["Position"]
      114 LOADN                            R18 12
      115 SETTABLEKS                       R18 R17 K18 ["Size"]
      117 GETTABLEKS                       R18 R0 K19 ["ZIndex"]
      119 SETTABLEKS                       R18 R17 K19 ["ZIndex"]
      121 GETTABLEKS                       R18 R0 K20 ["Image"]
      123 SETTABLEKS                       R18 R17 K20 ["Image"]
      125 GETTABLEKS                       R18 R0 K21 ["Color3"]
      127 SETTABLEKS                       R18 R17 K21 ["Color3"]
      129 SETTABLEKS                       R10 R17 K22 ["Transparency"]
      131 LOADK                            R19 K25 ["data-testid=%*"]
      132 MOVE                             R21 R8
      133 NAMECALL                         R19 R19 K26 ["format"]
      135 CALL                             R19 2 1
      136 MOVE                             R18 R19
      137 SETTABLEKS                       R18 R17 K23 ["Tag"]
      139 DUPTABLE                         R18 K28 [{"DragDetector"}]
      140 GETUPVAL                         R20 0
      141 GETTABLEKS                       R19 R20 K15 ["createElement"]
      143 LOADK                            R20 K29 ["UIDragDetector"]
      144 NEWTABLE                         R21 4 0
      146 GETIMPORT                        R22 K33 [Enum.UIDragDetectorDragStyle.Scriptable]
      148 SETTABLEKS                       R22 R21 K34 ["DragStyle"]
      150 GETUPVAL                         R24 0
      151 GETTABLEKS                       R23 R24 K35 ["Event"]
      153 GETTABLEKS                       R22 R23 K36 ["DragStart"]
      155 SETTABLE                         R5 R21 R22
      156 GETUPVAL                         R24 0
      157 GETTABLEKS                       R23 R24 K35 ["Event"]
      159 GETTABLEKS                       R22 R23 K37 ["DragContinue"]
      161 SETTABLE                         R6 R21 R22
      162 GETUPVAL                         R24 0
      163 GETTABLEKS                       R23 R24 K35 ["Event"]
      165 GETTABLEKS                       R22 R23 K38 ["DragEnd"]
      167 SETTABLE                         R7 R21 R22
      168 CALL                             R19 2 1
      169 SETTABLEKS                       R19 R18 K27 ["DragDetector"]
      171 CALL                             R15 3 1
      172 SETTABLE                         R15 R14 R8
      173 LOADK                            R16 K39 ["PreviewPoint_"]
      174 GETTABLEKS                       R18 R0 K8 ["Index"]
      176 FASTCALL1                        TOSTRING R18 ; [+2]
      177 GETIMPORT                        R17 K13 [tostring]
      179 CALL                             R17 1 1
      180 CONCAT                           R15 R16 R17
      181 JUMPIFNOT                        R1 ; [+26]
      182 GETUPVAL                         R17 0
      183 GETTABLEKS                       R16 R17 K15 ["createElement"]
      185 GETUPVAL                         R18 4
      186 GETTABLEKS                       R17 R18 K17 ["Point"]
      188 DUPTABLE                         R18 K40 [{"Position", "Size", "ZIndex", "Image", "Color3"}]
      189 SETTABLEKS                       R1 R18 K14 ["Position"]
      191 LOADN                            R19 12
      192 SETTABLEKS                       R19 R18 K18 ["Size"]
      194 GETTABLEKS                       R19 R0 K19 ["ZIndex"]
      196 SETTABLEKS                       R19 R18 K19 ["ZIndex"]
      198 GETTABLEKS                       R19 R0 K20 ["Image"]
      200 SETTABLEKS                       R19 R18 K20 ["Image"]
      202 GETTABLEKS                       R19 R0 K21 ["Color3"]
      204 SETTABLEKS                       R19 R18 K21 ["Color3"]
      206 CALL                             R16 2 1
      207 JUMP                             ; [+1]
      208 LOADNIL                          R16
      209 SETTABLE                         R16 R14 R15
      210 CALL                             R11 3 -1
      211 RETURN                           R11 -1

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
       23 GETTABLEKS                       R5 R0 K10 ["Contexts"]
       25 GETTABLEKS                       R4 R5 K11 ["NativeGraphContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R8 R0 K12 ["Components"]
       32 GETTABLEKS                       R7 R8 K13 ["NodeView"]
       34 GETTABLEKS                       R6 R7 K14 ["CompositorNodeProperty"]
       36 GETTABLEKS                       R5 R6 K15 ["PropertyUtils"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R7 R0 K8 ["Parent"]
       43 GETTABLEKS                       R6 R7 K16 ["React"]
       45 CALL                             R5 1 1
       46 DUPCLOSURE                       R6 K17 [PROTO_4]
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R2
       52 RETURN                           R6 1
