PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Mode"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["DRAGGABLE_PIN_MODES"]
        6 GETTABLEKS                       R1 R1 K2 ["Blend1D"]
        8 JUMPIFNOTEQ                      R0 R1 ; [+22]
       10 GETIMPORT                        R0 K5 [Vector2.new]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K7 ["Extents"]
       15 GETTABLEKS                       R3 R3 K8 ["Min"]
       17 GETTABLEKS                       R3 R3 K9 ["X"]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K7 ["Extents"]
       22 GETTABLEKS                       R4 R4 K10 ["Max"]
       24 GETTABLEKS                       R4 R4 K9 ["X"]
       26 ADD                              R2 R3 R4
       27 DIVK                             R1 R2 K6 [2]
       28 LOADN                            R2 0
       29 CALL                             R0 2 -1
       30 RETURN                           R0 -1
       31 GETUPVAL                         R0 0
       32 GETTABLEKS                       R0 R0 K0 ["Mode"]
       34 GETUPVAL                         R1 1
       35 GETTABLEKS                       R1 R1 K1 ["DRAGGABLE_PIN_MODES"]
       37 GETTABLEKS                       R1 R1 K11 ["Blend2D"]
       39 JUMPIFNOTEQ                      R0 R1 ; [+26]
       41 GETUPVAL                         R0 2
       42 JUMPIFNOT                        R0 ; [+20]
       43 GETUPVAL                         R0 0
       44 GETTABLEKS                       R0 R0 K12 ["InputMode"]
       46 GETIMPORT                        R1 K16 [Enum.AnimationNodeBlend2DInputMode.Cartesian]
       48 JUMPIFNOTEQ                      R0 R1 ; [+14]
       50 GETUPVAL                         R2 0
       51 GETTABLEKS                       R2 R2 K7 ["Extents"]
       53 GETTABLEKS                       R2 R2 K8 ["Min"]
       55 GETUPVAL                         R3 0
       56 GETTABLEKS                       R3 R3 K7 ["Extents"]
       58 GETTABLEKS                       R3 R3 K10 ["Max"]
       60 ADD                              R1 R2 R3
       61 DIVK                             R0 R1 K6 [2]
       62 RETURN                           R0 1
       63 GETIMPORT                        R0 K18 [Vector2.zero]
       65 RETURN                           R0 1
       66 GETIMPORT                        R0 K20 [error]
       68 LOADK                            R2 K21 ["Unknown DraggablePin mode: "]
       69 GETUPVAL                         R4 0
       70 GETTABLEKS                       R4 R4 K0 ["Mode"]
       72 FASTCALL1                        TOSTRING R4 ; [+2]
       73 GETIMPORT                        R3 K23 [tostring]
       75 CALL                             R3 1 1
       76 CONCAT                           R1 R2 R3
       77 CALL                             R0 1 0
       78 GETIMPORT                        R0 K18 [Vector2.zero]
       80 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["beginUndoTransaction"]
        3 LOADK                            R3 K1 ["DraggablePin Drag"]
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["AbsToMap"]
        3 MOVE                             R3 R1
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K1 ["Clamp"]
        7 CALL                             R2 2 1
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K2 ["OnPinDragged"]
       11 JUMPIFNOT                        R3 ; [+8]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K2 ["OnPinDragged"]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K3 ["Index"]
       18 MOVE                             R5 R2
       19 CALL                             R3 2 0
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K4 ["InputMode"]
       23 GETIMPORT                        R4 K8 [Enum.AnimationNodeBlend2DInputMode.Polar]
       25 JUMPIFNOTEQ                      R3 R4 ; [+7]
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R3 R3 K9 ["toCartesian"]
       30 MOVE                             R4 R2
       31 CALL                             R3 1 1
       32 MOVE                             R2 R3
       33 GETUPVAL                         R3 0
       34 GETTABLEKS                       R3 R3 K10 ["LockExtents"]
       36 LOADB                            R4 1
       37 CALL                             R3 1 0
       38 GETUPVAL                         R3 2
       39 MOVE                             R4 R2
       40 CALL                             R3 1 0
       41 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["LockExtents"]
        3 LOADB                            R3 0
        4 CALL                             R2 1 0
        5 GETUPVAL                         R2 1
        6 LOADNIL                          R3
        7 CALL                             R2 1 0
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K1 ["finishUndoTransaction"]
       11 CALL                             R2 0 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useContext"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K2 ["Context"]
       11 CALL                             R3 1 1
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K3 ["useMemo"]
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
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K6 ["useCallback"]
       32 NEWCLOSURE                       R6 P1
       33 CAPTURE                          VAL R3
       34 NEWTABLE                         R7 0 1
       36 MOVE                             R8 R3
       37 SETLIST                          R7 R8 1 [1]
       39 CALL                             R5 2 1
       40 GETUPVAL                         R6 0
       41 GETTABLEKS                       R6 R6 K6 ["useCallback"]
       43 NEWCLOSURE                       R7 P2
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U3
       46 CAPTURE                          VAL R2
       47 NEWTABLE                         R8 0 7
       49 GETTABLEKS                       R9 R0 K7 ["AbsToMap"]
       51 GETTABLEKS                       R10 R0 K8 ["Clamp"]
       53 GETTABLEKS                       R11 R0 K9 ["Index"]
       55 GETTABLEKS                       R12 R0 K10 ["OnPinDragged"]
       57 GETTABLEKS                       R13 R0 K4 ["InputMode"]
       59 GETTABLEKS                       R14 R0 K11 ["LockExtents"]
       61 MOVE                             R15 R3
       62 SETLIST                          R8 R9 7 [1]
       64 CALL                             R6 2 1
       65 GETUPVAL                         R7 0
       66 GETTABLEKS                       R7 R7 K6 ["useCallback"]
       68 NEWCLOSURE                       R8 P3
       69 CAPTURE                          VAL R0
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R3
       72 NEWTABLE                         R9 0 2
       74 GETTABLEKS                       R10 R0 K11 ["LockExtents"]
       76 MOVE                             R11 R3
       77 SETLIST                          R9 R10 2 [1]
       79 CALL                             R7 2 1
       80 LOADK                            R9 K12 ["Point_"]
       81 GETTABLEKS                       R11 R0 K9 ["Index"]
       83 FASTCALL1                        TOSTRING R11 ; [+2]
       84 GETIMPORT                        R10 K14 [tostring]
       86 CALL                             R10 1 1
       87 CONCAT                           R8 R9 R10
       88 JUMPIFNOT                        R1 ; [+2]
       89 MOVE                             R9 R4
       90 JUMP                             ; [+2]
       91 GETTABLEKS                       R9 R0 K15 ["Position"]
       93 JUMPIFNOT                        R1 ; [+2]
       94 LOADN                            R10 1
       95 JUMP                             ; [+1]
       96 LOADN                            R10 0
       97 GETUPVAL                         R11 0
       98 GETTABLEKS                       R11 R11 K16 ["createElement"]
      100 GETUPVAL                         R12 0
      101 GETTABLEKS                       R12 R12 K17 ["Fragment"]
      103 NEWTABLE                         R13 0 0
      105 NEWTABLE                         R14 2 0
      107 GETUPVAL                         R15 0
      108 GETTABLEKS                       R15 R15 K16 ["createElement"]
      110 GETUPVAL                         R16 4
      111 GETTABLEKS                       R16 R16 K18 ["Point"]
      113 DUPTABLE                         R17 K25 [{"Position", "Size", "ZIndex", "Image", "Color3", "Transparency", "Tag"}]
      114 SETTABLEKS                       R9 R17 K15 ["Position"]
      116 GETTABLEKS                       R18 R0 K19 ["Size"]
      118 SETTABLEKS                       R18 R17 K19 ["Size"]
      120 GETTABLEKS                       R18 R0 K20 ["ZIndex"]
      122 SETTABLEKS                       R18 R17 K20 ["ZIndex"]
      124 GETTABLEKS                       R18 R0 K21 ["Image"]
      126 SETTABLEKS                       R18 R17 K21 ["Image"]
      128 GETTABLEKS                       R18 R0 K22 ["Color3"]
      130 SETTABLEKS                       R18 R17 K22 ["Color3"]
      132 SETTABLEKS                       R10 R17 K23 ["Transparency"]
      134 LOADK                            R19 K26 ["data-testid=%*"]
      135 MOVE                             R21 R8
      136 NAMECALL                         R19 R19 K27 ["format"]
      138 CALL                             R19 2 1
      139 MOVE                             R18 R19
      140 SETTABLEKS                       R18 R17 K24 ["Tag"]
      142 DUPTABLE                         R18 K29 [{"DragDetector"}]
      143 GETUPVAL                         R20 5
      144 CALL                             R20 0 1
      145 JUMPIFNOT                        R20 ; [+3]
      146 GETTABLEKS                       R20 R0 K10 ["OnPinDragged"]
      148 JUMPIFNOT                        R20 ; [+30]
      149 GETUPVAL                         R19 0
      150 GETTABLEKS                       R19 R19 K16 ["createElement"]
      152 LOADK                            R20 K30 ["UIDragDetector"]
      153 NEWTABLE                         R21 4 0
      155 GETIMPORT                        R22 K34 [Enum.UIDragDetectorDragStyle.Scriptable]
      157 SETTABLEKS                       R22 R21 K35 ["DragStyle"]
      159 GETUPVAL                         R22 0
      160 GETTABLEKS                       R22 R22 K36 ["Event"]
      162 GETTABLEKS                       R22 R22 K37 ["DragStart"]
      164 SETTABLE                         R5 R21 R22
      165 GETUPVAL                         R22 0
      166 GETTABLEKS                       R22 R22 K36 ["Event"]
      168 GETTABLEKS                       R22 R22 K38 ["DragContinue"]
      170 SETTABLE                         R6 R21 R22
      171 GETUPVAL                         R22 0
      172 GETTABLEKS                       R22 R22 K36 ["Event"]
      174 GETTABLEKS                       R22 R22 K39 ["DragEnd"]
      176 SETTABLE                         R7 R21 R22
      177 CALL                             R19 2 1
      178 JUMP                             ; [+1]
      179 LOADNIL                          R19
      180 SETTABLEKS                       R19 R18 K28 ["DragDetector"]
      182 CALL                             R15 3 1
      183 SETTABLE                         R15 R14 R8
      184 LOADK                            R16 K40 ["PreviewPoint_"]
      185 GETTABLEKS                       R18 R0 K9 ["Index"]
      187 FASTCALL1                        TOSTRING R18 ; [+2]
      188 GETIMPORT                        R17 K14 [tostring]
      190 CALL                             R17 1 1
      191 CONCAT                           R15 R16 R17
      192 JUMPIFNOT                        R1 ; [+27]
      193 GETUPVAL                         R16 0
      194 GETTABLEKS                       R16 R16 K16 ["createElement"]
      196 GETUPVAL                         R17 4
      197 GETTABLEKS                       R17 R17 K18 ["Point"]
      199 DUPTABLE                         R18 K41 [{"Position", "Size", "ZIndex", "Image", "Color3"}]
      200 SETTABLEKS                       R1 R18 K15 ["Position"]
      202 GETTABLEKS                       R19 R0 K19 ["Size"]
      204 SETTABLEKS                       R19 R18 K19 ["Size"]
      206 GETTABLEKS                       R19 R0 K20 ["ZIndex"]
      208 SETTABLEKS                       R19 R18 K20 ["ZIndex"]
      210 GETTABLEKS                       R19 R0 K21 ["Image"]
      212 SETTABLEKS                       R19 R18 K21 ["Image"]
      214 GETTABLEKS                       R19 R0 K22 ["Color3"]
      216 SETTABLEKS                       R19 R18 K22 ["Color3"]
      218 CALL                             R16 2 1
      219 JUMP                             ; [+1]
      220 LOADNIL                          R16
      221 SETTABLE                         R16 R14 R15
      222 CALL                             R11 3 -1
      223 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Graphing"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Contexts"]
       25 GETTABLEKS                       R4 R4 K11 ["NativeGraphContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Components"]
       32 GETTABLEKS                       R5 R5 K13 ["NodeView"]
       34 GETTABLEKS                       R5 R5 K14 ["CompositorNodeProperty"]
       36 GETTABLEKS                       R5 R5 K15 ["PropertyUtils"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K8 ["Parent"]
       43 GETTABLEKS                       R6 R6 K16 ["React"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K17 ["Flags"]
       50 GETTABLEKS                       R7 R7 K18 ["getFFlagAnimGraphUIWeightSlider"]
       52 CALL                             R6 1 1
       53 DUPCLOSURE                       R7 K19 [PROTO_4]
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R6
       60 RETURN                           R7 1
