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
       63 GETTABLEKS                       R5 R0 K22 ["ClickedMetadata"]
       65 GETTABLEKS                       R4 R5 K23 ["TargetMatrix"]
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
       16 JUMP                             ; [+14]
       17 NAMECALL                         R6 R0 K4 ["getGridSnapEnabled"]
       19 CALL                             R6 1 1
       20 JUMPIFNOT                        R6 ; [+8]
       21 GETUPVAL                         R6 0
       22 MOVE                             R7 R2
       23 NAMECALL                         R8 R0 K5 ["getGridSize"]
       25 CALL                             R8 1 -1
       26 CALL                             R6 -1 1
       27 MOVE                             R4 R6
       28 JUMP                             ; [+2]
       29 GETTABLEKS                       R4 R2 K6 ["ClickedPosition"]
       31 GETTABLEKS                       R6 R1 K7 ["_selectionInfo"]
       33 NAMECALL                         R6 R6 K8 ["getLocalBoundingBox"]
       35 CALL                             R6 1 1
       36 MOVE                             R9 R4
       37 NAMECALL                         R7 R6 K9 ["PointToObjectSpace"]
       39 CALL                             R7 2 1
       40 GETTABLEKS                       R10 R2 K6 ["ClickedPosition"]
       42 NAMECALL                         R8 R6 K9 ["PointToObjectSpace"]
       44 CALL                             R8 2 1
       45 GETTABLEKS                       R10 R2 K10 ["ClickedMetadata"]
       47 GETTABLEKS                       R9 R10 K11 ["IsPivot"]
       49 JUMPIFNOT                        R9 ; [+2]
       50 LOADK                            R8 K12 [{0, 0, 0}]
       51 LOADK                            R7 K12 [{0, 0, 0}]
       52 LOADNIL                          R9
       53 NAMECALL                         R10 R0 K13 ["isAltKeyDown"]
       55 CALL                             R10 1 1
       56 JUMPIF                           R10 ; [+19]
       57 GETTABLEKS                       R10 R2 K14 ["SelectionDidContainSelectable"]
       59 JUMPIF                           R10 ; [+3]
       60 GETTABLEKS                       R10 R2 K15 ["DoubleClicked"]
       62 JUMPIFNOT                        R10 ; [+13]
       63 JUMPIFNOT                        R5 ; [+12]
       64 LOADK                            R12 K16 ["BasePart"]
       65 NAMECALL                         R10 R5 K2 ["IsA"]
       67 CALL                             R10 2 1
       68 JUMPIFNOT                        R10 ; [+7]
       69 GETUPVAL                         R10 1
       70 GETTABLEKS                       R11 R2 K0 ["ClickedItem"]
       72 GETTABLEKS                       R12 R2 K6 ["ClickedPosition"]
       74 CALL                             R10 2 1
       75 MOVE                             R9 R10
       76 DUPTABLE                         R10 K22 [{"draggedPoint", "clickedPoint", "clickedMetadata", "clickedFaceInstance", "attachmentBeingDragged"}]
       77 SETTABLEKS                       R7 R10 K17 ["draggedPoint"]
       79 SETTABLEKS                       R8 R10 K18 ["clickedPoint"]
       81 GETTABLEKS                       R11 R2 K10 ["ClickedMetadata"]
       83 SETTABLEKS                       R11 R10 K19 ["clickedMetadata"]
       85 SETTABLEKS                       R9 R10 K20 ["clickedFaceInstance"]
       87 SETTABLEKS                       R3 R10 K21 ["attachmentBeingDragged"]
       89 RETURN                           R10 1

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

PROTO_3:
        0 LOADNIL                          R3
        1 LOADNIL                          R4
        2 GETTABLEKS                       R5 R2 K0 ["ClickedItem"]
        4 LOADK                            R7 K1 ["Attachment"]
        5 NAMECALL                         R5 R5 K2 ["IsA"]
        7 CALL                             R5 2 1
        8 JUMPIFNOT                        R5 ; [+7]
        9 GETTABLEKS                       R5 R2 K0 ["ClickedItem"]
       11 GETTABLEKS                       R3 R5 K3 ["WorldPosition"]
       13 GETTABLEKS                       R4 R2 K0 ["ClickedItem"]
       15 JUMP                             ; [+27]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R6 R2 K0 ["ClickedItem"]
       19 GETTABLEKS                       R7 R2 K4 ["ClickedPosition"]
       21 CALL                             R5 2 1
       22 LOADK                            R6 K5 [∞]
       23 GETIMPORT                        R7 K7 [ipairs]
       25 GETTABLEKS                       R8 R5 K8 ["vertices"]
       27 CALL                             R7 1 3
       28 FORGPREP_INEXT                   R7
       29 GETTABLEKS                       R14 R11 K9 ["position"]
       31 GETTABLEKS                       R15 R2 K4 ["ClickedPosition"]
       33 SUB                              R13 R14 R15
       34 GETTABLEKS                       R12 R13 K10 ["Magnitude"]
       36 JUMPIFNOTLT                      R12 R6 ; [+4]
       38 MOVE                             R6 R12
       39 GETTABLEKS                       R3 R11 K9 ["position"]
       41 FORGLOOP                         R7 2 [inext] ; [-13]
       43 GETTABLEKS                       R5 R1 K11 ["_selectionInfo"]
       45 NAMECALL                         R5 R5 K12 ["getLocalBoundingBox"]
       47 CALL                             R5 1 1
       48 MOVE                             R8 R3
       49 NAMECALL                         R6 R5 K13 ["PointToObjectSpace"]
       51 CALL                             R6 2 1
       52 GETTABLEKS                       R9 R2 K4 ["ClickedPosition"]
       54 NAMECALL                         R7 R5 K13 ["PointToObjectSpace"]
       56 CALL                             R7 2 1
       57 LOADNIL                          R8
       58 NAMECALL                         R9 R0 K14 ["isAltKeyDown"]
       60 CALL                             R9 1 1
       61 JUMPIF                           R9 ; [+20]
       62 GETTABLEKS                       R9 R2 K15 ["SelectionDidContainSelectable"]
       64 JUMPIF                           R9 ; [+3]
       65 GETTABLEKS                       R9 R2 K16 ["DoubleClicked"]
       67 JUMPIFNOT                        R9 ; [+14]
       68 GETTABLEKS                       R9 R2 K0 ["ClickedItem"]
       70 LOADK                            R11 K17 ["BasePart"]
       71 NAMECALL                         R9 R9 K2 ["IsA"]
       73 CALL                             R9 2 1
       74 JUMPIFNOT                        R9 ; [+7]
       75 GETUPVAL                         R9 1
       76 GETTABLEKS                       R10 R2 K0 ["ClickedItem"]
       78 GETTABLEKS                       R11 R2 K4 ["ClickedPosition"]
       80 CALL                             R9 2 1
       81 MOVE                             R8 R9
       82 DUPTABLE                         R9 K22 [{"basisPoint", "clickPoint", "clickedFaceInstance", "attachmentBeingDragged"}]
       83 SETTABLEKS                       R6 R9 K18 ["basisPoint"]
       85 SETTABLEKS                       R7 R9 K19 ["clickPoint"]
       87 SETTABLEKS                       R8 R9 K20 ["clickedFaceInstance"]
       89 SETTABLEKS                       R4 R9 K21 ["attachmentBeingDragged"]
       91 RETURN                           R9 1

PROTO_4:
        0 GETTABLEKS                       R3 R2 K0 ["ClickedItem"]
        2 JUMPIF                           R3 ; [+2]
        3 LOADK                            R3 K1 ["DragSelecting"]
        4 RETURN                           R3 1
        5 GETTABLEKS                       R3 R2 K0 ["ClickedItem"]
        7 LOADK                            R5 K2 ["Constraint"]
        8 NAMECALL                         R3 R3 K3 ["IsA"]
       10 CALL                             R3 2 1
       11 JUMPIF                           R3 ; [+14]
       12 GETTABLEKS                       R3 R2 K0 ["ClickedItem"]
       14 LOADK                            R5 K4 ["WeldConstraint"]
       15 NAMECALL                         R3 R3 K3 ["IsA"]
       17 CALL                             R3 2 1
       18 JUMPIF                           R3 ; [+7]
       19 GETTABLEKS                       R3 R2 K0 ["ClickedItem"]
       21 LOADK                            R5 K5 ["NoCollisionConstraint"]
       22 NAMECALL                         R3 R3 K3 ["IsA"]
       24 CALL                             R3 2 1
       25 JUMPIFNOT                        R3 ; [+2]
       26 LOADK                            R3 K6 ["Ready"]
       27 RETURN                           R3 1
       28 GETTABLEKS                       R3 R2 K7 ["SelectionNowContainsSelectable"]
       30 JUMPIFNOT                        R3 ; [+18]
       31 NAMECALL                         R3 R1 K8 ["doesAllowFreeformDrag"]
       33 CALL                             R3 1 1
       34 JUMPIFNOT                        R3 ; [+12]
       35 GETTABLEKS                       R3 R2 K9 ["ClickedPosition"]
       37 JUMPIF                           R3 ; [+2]
       38 LOADK                            R3 K6 ["Ready"]
       39 RETURN                           R3 1
       40 LOADK                            R3 K10 ["FreeformSelectionDrag"]
       41 GETUPVAL                         R4 0
       42 MOVE                             R5 R0
       43 MOVE                             R6 R1
       44 MOVE                             R7 R2
       45 CALL                             R4 3 1
       46 RETURN                           R3 2
       47 LOADK                            R3 K6 ["Ready"]
       48 RETURN                           R3 1
       49 LOADK                            R3 K1 ["DragSelecting"]
       50 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETTABLEKS                       R2 R1 K3 ["DraggerFramework"]
        9 GETIMPORT                        R3 K5 [require]
       11 GETTABLEKS                       R5 R2 K6 ["Utility"]
       13 GETTABLEKS                       R4 R5 K7 ["getGeometry"]
       15 CALL                             R3 1 1
       16 GETIMPORT                        R4 K5 [require]
       18 GETTABLEKS                       R6 R2 K6 ["Utility"]
       20 GETTABLEKS                       R5 R6 K8 ["getFaceInstance"]
       22 CALL                             R4 1 1
       23 GETIMPORT                        R5 K5 [require]
       25 GETTABLEKS                       R7 R2 K9 ["Flags"]
       27 GETTABLEKS                       R6 R7 K10 ["getFFlagDraggerImprovements"]
       29 CALL                             R5 1 1
       30 DUPCLOSURE                       R6 K11 [PROTO_0]
       31 MOVE                             R7 R5
       32 CALL                             R7 0 1
       33 JUMPIFNOT                        R7 ; [+6]
       34 DUPCLOSURE                       R7 K12 [PROTO_1]
       35 CAPTURE                          VAL R6
       36 CAPTURE                          VAL R4
       37 DUPCLOSURE                       R8 K13 [PROTO_2]
       38 CAPTURE                          VAL R7
       39 RETURN                           R8 1
       40 DUPCLOSURE                       R7 K14 [PROTO_3]
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R4
       43 DUPCLOSURE                       R8 K15 [PROTO_4]
       44 CAPTURE                          VAL R7
       45 RETURN                           R8 1
