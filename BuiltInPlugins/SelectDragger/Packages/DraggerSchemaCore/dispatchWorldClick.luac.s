PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["ClickedItem"]
        2 GETTABLEKS                       R3 R0 K1 ["ClickedPosition"]
        4 JUMPIFNOT                        R2 ; [+58]
        5 LOADK                            R6 K2 ["Part"]
        6 NAMECALL                         R4 R2 K3 ["IsA"]
        8 CALL                             R4 2 1
        9 JUMPIFNOT                        R4 ; [+53]
       10 GETTABLEKS                       R4 R2 K4 ["Shape"]
       12 GETIMPORT                        R5 K8 [Enum.PartType.Ball]
       14 JUMPIFNOTEQ                      R4 R5 ; [+48]
       16 GETTABLEKS                       R4 R2 K9 ["CFrame"]
       18 MOVE                             R6 R3
       19 NAMECALL                         R4 R4 K10 ["PointToObjectSpace"]
       21 CALL                             R4 2 1
       22 GETTABLEKS                       R9 R4 K12 ["X"]
       24 DIV                              R8 R9 R1
       25 ADDK                             R7 R8 K11 [0.5]
       26 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       27 GETIMPORT                        R6 K15 [math.floor]
       29 CALL                             R6 1 1
       30 MUL                              R5 R6 R1
       31 GETTABLEKS                       R10 R4 K16 ["Y"]
       33 DIV                              R9 R10 R1
       34 ADDK                             R8 R9 K11 [0.5]
       35 FASTCALL1                        MATH_FLOOR R8 ; [+2]
       36 GETIMPORT                        R7 K15 [math.floor]
       38 CALL                             R7 1 1
       39 MUL                              R6 R7 R1
       40 GETTABLEKS                       R11 R4 K17 ["Z"]
       42 DIV                              R10 R11 R1
       43 ADDK                             R9 R10 K11 [0.5]
       44 FASTCALL1                        MATH_FLOOR R9 ; [+2]
       45 GETIMPORT                        R8 K15 [math.floor]
       47 CALL                             R8 1 1
       48 MUL                              R7 R8 R1
       49 GETTABLEKS                       R8 R2 K9 ["CFrame"]
       51 FASTCALL3                        VECTOR R5 R6 R7
       53 MOVE                             R11 R5
       54 MOVE                             R12 R6
       55 MOVE                             R13 R7
       56 GETIMPORT                        R10 K20 [Vector3.new]
       58 CALL                             R10 3 1
       59 NAMECALL                         R8 R8 K21 ["PointToWorldSpace"]
       61 CALL                             R8 2 -1
       62 RETURN                           R8 -1
       63 GETTABLEKS                       R4 R0 K22 ["ClickedMetadata"]
       65 GETTABLEKS                       R4 R4 K23 ["TargetMatrix"]
       67 GETTABLEKS                       R7 R0 K1 ["ClickedPosition"]
       69 NAMECALL                         R5 R4 K10 ["PointToObjectSpace"]
       71 CALL                             R5 2 1
       72 GETTABLEKS                       R11 R5 K12 ["X"]
       74 DIV                              R10 R11 R1
       75 ADDK                             R9 R10 K11 [0.5]
       76 FASTCALL1                        MATH_FLOOR R9 ; [+2]
       77 GETIMPORT                        R8 K15 [math.floor]
       79 CALL                             R8 1 1
       80 MUL                              R7 R8 R1
       81 GETTABLEKS                       R8 R5 K16 ["Y"]
       83 GETTABLEKS                       R13 R5 K17 ["Z"]
       85 DIV                              R12 R13 R1
       86 ADDK                             R11 R12 K11 [0.5]
       87 FASTCALL1                        MATH_FLOOR R11 ; [+2]
       88 GETIMPORT                        R10 K15 [math.floor]
       90 CALL                             R10 1 1
       91 MUL                              R9 R10 R1
       92 FASTCALL                         VECTOR ; [+2]
       93 GETIMPORT                        R6 K20 [Vector3.new]
       95 CALL                             R6 3 1
       96 MOVE                             R5 R6
       97 MOVE                             R8 R5
       98 NAMECALL                         R6 R4 K21 ["PointToWorldSpace"]
      100 CALL                             R6 2 -1
      101 RETURN                           R6 -1

PROTO_1:
        0 LOADNIL                          R3
        1 LOADNIL                          R4
        2 GETTABLEKS                       R5 R2 K0 ["ClickedItem"]
        4 JUMPIFNOT                        R5 ; [+12]
        5 LOADK                            R8 K1 ["Attachment"]
        6 NAMECALL                         R6 R5 K2 ["IsA"]
        8 CALL                             R6 2 1
        9 JUMPIFNOT                        R6 ; [+7]
       10 GETTABLEKS                       R6 R2 K0 ["ClickedItem"]
       12 GETTABLEKS                       R4 R6 K3 ["WorldPosition"]
       14 GETTABLEKS                       R3 R2 K0 ["ClickedItem"]
       16 JUMP                             ; [+69]
       17 GETTABLEKS                       R6 R2 K4 ["ClickedMetadata"]
       19 GETTABLEKS                       R6 R6 K5 ["TargetMatrix"]
       21 GETUPVAL                         R7 0
       22 CALL                             R7 0 1
       23 JUMPIFNOT                        R7 ; [+48]
       24 NAMECALL                         R7 R0 K6 ["shouldUseBoundingBoxes"]
       26 CALL                             R7 1 1
       27 JUMPIFNOT                        R7 ; [+44]
       28 JUMPIFNOT                        R6 ; [+43]
       29 GETTABLEKS                       R9 R2 K7 ["ClickedPosition"]
       31 NAMECALL                         R7 R6 K8 ["PointToObjectSpace"]
       33 CALL                             R7 2 1
       34 GETTABLEKS                       R8 R7 K9 ["X"]
       36 GETTABLEKS                       R9 R7 K10 ["Z"]
       38 NAMECALL                         R10 R0 K11 ["getGridSnapEnabled"]
       40 CALL                             R10 1 1
       41 JUMPIFNOT                        R10 ; [+17]
       42 NAMECALL                         R10 R0 K12 ["getGridSize"]
       44 CALL                             R10 1 1
       45 DIV                              R13 R8 R10
       46 ADDK                             R12 R13 K13 [0.5]
       47 FASTCALL1                        MATH_FLOOR R12 ; [+2]
       48 GETIMPORT                        R11 K16 [math.floor]
       50 CALL                             R11 1 1
       51 MUL                              R8 R11 R10
       52 DIV                              R13 R9 R10
       53 ADDK                             R12 R13 K13 [0.5]
       54 FASTCALL1                        MATH_FLOOR R12 ; [+2]
       55 GETIMPORT                        R11 K16 [math.floor]
       57 CALL                             R11 1 1
       58 MUL                              R9 R11 R10
       59 LOADN                            R14 0
       60 FASTCALL3                        VECTOR R8 R14 R9
       62 MOVE                             R13 R8
       63 MOVE                             R15 R9
       64 GETIMPORT                        R12 K19 [Vector3.new]
       66 CALL                             R12 3 1
       67 NAMECALL                         R10 R6 K20 ["PointToWorldSpace"]
       69 CALL                             R10 2 1
       70 MOVE                             R4 R10
       71 JUMP                             ; [+14]
       72 NAMECALL                         R7 R0 K11 ["getGridSnapEnabled"]
       74 CALL                             R7 1 1
       75 JUMPIFNOT                        R7 ; [+8]
       76 GETUPVAL                         R7 1
       77 MOVE                             R8 R2
       78 NAMECALL                         R9 R0 K12 ["getGridSize"]
       80 CALL                             R9 1 -1
       81 CALL                             R7 -1 1
       82 MOVE                             R4 R7
       83 JUMP                             ; [+2]
       84 GETTABLEKS                       R4 R2 K7 ["ClickedPosition"]
       86 GETTABLEKS                       R6 R1 K21 ["_selectionInfo"]
       88 NAMECALL                         R6 R6 K22 ["getLocalBoundingBox"]
       90 CALL                             R6 1 1
       91 MOVE                             R9 R4
       92 NAMECALL                         R7 R6 K8 ["PointToObjectSpace"]
       94 CALL                             R7 2 1
       95 GETTABLEKS                       R10 R2 K7 ["ClickedPosition"]
       97 NAMECALL                         R8 R6 K8 ["PointToObjectSpace"]
       99 CALL                             R8 2 1
      100 GETTABLEKS                       R9 R2 K4 ["ClickedMetadata"]
      102 GETTABLEKS                       R9 R9 K23 ["IsPivot"]
      104 JUMPIFNOT                        R9 ; [+2]
      105 LOADK                            R8 K24 [{0, 0, 0}]
      106 LOADK                            R7 K24 [{0, 0, 0}]
      107 LOADNIL                          R9
      108 NAMECALL                         R10 R0 K25 ["isAltKeyDown"]
      110 CALL                             R10 1 1
      111 JUMPIF                           R10 ; [+19]
      112 GETTABLEKS                       R10 R2 K26 ["SelectionDidContainSelectable"]
      114 JUMPIF                           R10 ; [+3]
      115 GETTABLEKS                       R10 R2 K27 ["DoubleClicked"]
      117 JUMPIFNOT                        R10 ; [+13]
      118 JUMPIFNOT                        R5 ; [+12]
      119 LOADK                            R12 K28 ["BasePart"]
      120 NAMECALL                         R10 R5 K2 ["IsA"]
      122 CALL                             R10 2 1
      123 JUMPIFNOT                        R10 ; [+7]
      124 GETUPVAL                         R10 2
      125 GETTABLEKS                       R11 R2 K0 ["ClickedItem"]
      127 GETTABLEKS                       R12 R2 K7 ["ClickedPosition"]
      129 CALL                             R10 2 1
      130 MOVE                             R9 R10
      131 DUPTABLE                         R10 K34 [{"draggedPoint", "clickedPoint", "clickedMetadata", "clickedFaceInstance", "attachmentBeingDragged"}]
      132 SETTABLEKS                       R7 R10 K29 ["draggedPoint"]
      134 SETTABLEKS                       R8 R10 K30 ["clickedPoint"]
      136 GETTABLEKS                       R11 R2 K4 ["ClickedMetadata"]
      138 SETTABLEKS                       R11 R10 K31 ["clickedMetadata"]
      140 SETTABLEKS                       R9 R10 K32 ["clickedFaceInstance"]
      142 SETTABLEKS                       R3 R10 K33 ["attachmentBeingDragged"]
      144 RETURN                           R10 1

PROTO_2:
        0 GETTABLEKS                       R3 R2 K0 ["ClickedItem"]
        2 JUMPIFNOT                        R3 ; [+17]
        3 LOADK                            R6 K1 ["Constraint"]
        4 NAMECALL                         R4 R3 K2 ["IsA"]
        6 CALL                             R4 2 1
        7 JUMPIF                           R4 ; [+10]
        8 LOADK                            R6 K3 ["WeldConstraint"]
        9 NAMECALL                         R4 R3 K2 ["IsA"]
       11 CALL                             R4 2 1
       12 JUMPIF                           R4 ; [+5]
       13 LOADK                            R6 K4 ["NoCollisionConstraint"]
       14 NAMECALL                         R4 R3 K2 ["IsA"]
       16 CALL                             R4 2 1
       17 JUMPIFNOT                        R4 ; [+2]
       18 LOADK                            R4 K5 ["Ready"]
       19 RETURN                           R4 1
       20 GETTABLEKS                       R4 R2 K6 ["SelectionNowContainsSelectable"]
       22 JUMPIFNOT                        R4 ; [+18]
       23 NAMECALL                         R4 R1 K7 ["doesAllowFreeformDrag"]
       25 CALL                             R4 1 1
       26 JUMPIFNOT                        R4 ; [+12]
       27 GETTABLEKS                       R4 R2 K8 ["ClickedPosition"]
       29 JUMPIF                           R4 ; [+2]
       30 LOADK                            R4 K5 ["Ready"]
       31 RETURN                           R4 1
       32 LOADK                            R4 K9 ["FreeformSelectionDrag"]
       33 GETUPVAL                         R5 0
       34 MOVE                             R6 R0
       35 MOVE                             R7 R1
       36 MOVE                             R8 R2
       37 CALL                             R5 3 1
       38 RETURN                           R4 2
       39 LOADK                            R4 K5 ["Ready"]
       40 RETURN                           R4 1
       41 LOADK                            R4 K10 ["DragSelecting"]
       42 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETTABLEKS                       R2 R1 K3 ["DraggerFramework"]
        9 GETIMPORT                        R3 K5 [require]
       11 GETTABLEKS                       R4 R2 K6 ["Utility"]
       13 GETTABLEKS                       R4 R4 K7 ["getFaceInstance"]
       15 CALL                             R3 1 1
       16 GETIMPORT                        R4 K5 [require]
       18 GETTABLEKS                       R5 R2 K8 ["Flags"]
       20 GETTABLEKS                       R5 R5 K9 ["getEngineFeatureDraggerServiceUseBoundingBoxes"]
       22 CALL                             R4 1 1
       23 DUPCLOSURE                       R5 K10 [PROTO_0]
       24 DUPCLOSURE                       R6 K11 [PROTO_1]
       25 CAPTURE                          VAL R4
       26 CAPTURE                          VAL R5
       27 CAPTURE                          VAL R3
       28 DUPCLOSURE                       R7 K12 [PROTO_2]
       29 CAPTURE                          VAL R6
       30 RETURN                           R7 1
