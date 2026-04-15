PROTO_0:
        0 MOVE                             R3 R2
        1 LOADK                            R4 K0 ["selected"]
        2 GETTABLEKS                       R6 R0 K2 ["selectionState"]
        4 ANDK                             R5 R6 K1 ["Explorer-Selected"]
        5 CALL                             R3 2 0
        6 MOVE                             R3 R2
        7 LOADK                            R4 K3 ["selectionKind"]
        8 GETTABLEKS                       R5 R0 K2 ["selectionState"]
       10 JUMPIFNOT                        R5 ; [+9]
       11 LOADK                            R6 K4 ["Explorer-SelectionKind-%*"]
       12 GETTABLEKS                       R9 R0 K2 ["selectionState"]
       14 GETTABLEKS                       R8 R9 K5 ["kind"]
       16 NAMECALL                         R6 R6 K6 ["format"]
       18 CALL                             R6 2 1
       19 MOVE                             R5 R6
       20 CALL                             R3 2 0
       21 MOVE                             R3 R2
       22 LOADK                            R4 K7 ["selectionSegment"]
       23 GETTABLEKS                       R5 R0 K2 ["selectionState"]
       25 JUMPIFNOT                        R5 ; [+9]
       26 LOADK                            R6 K8 ["Explorer-SelectionSegment-%*"]
       27 GETTABLEKS                       R9 R0 K2 ["selectionState"]
       29 GETTABLEKS                       R8 R9 K9 ["segment"]
       31 NAMECALL                         R6 R6 K6 ["format"]
       33 CALL                             R6 2 1
       34 MOVE                             R5 R6
       35 CALL                             R3 2 0
       36 MOVE                             R3 R2
       37 LOADK                            R4 K10 ["isSelectedWithin"]
       38 GETTABLEKS                       R6 R0 K10 ["isSelectedWithin"]
       40 JUMPIFNOT                        R6 ; [+2]
       41 LOADK                            R5 K11 ["Explorer-SelectedWithin"]
       42 JUMP                             ; [+1]
       43 LOADNIL                          R5
       44 CALL                             R3 2 0
       45 JUMPIFNOT                        R1 ; [+2]
       46 LOADNIL                          R3
       47 JUMP                             ; [+2]
       48 GETTABLEKS                       R3 R0 K12 ["hoverState"]
       50 MOVE                             R4 R2
       51 LOADK                            R5 K13 ["hovered"]
       52 ANDK                             R6 R3 K14 ["Explorer-Hovered"]
       53 CALL                             R4 2 0
       54 MOVE                             R4 R2
       55 LOADK                            R5 K15 ["hoveredKind"]
       56 MOVE                             R6 R3
       57 JUMPIFNOT                        R6 ; [+6]
       58 LOADK                            R7 K16 ["Explorer-HoveredKind-%*"]
       59 MOVE                             R9 R3
       60 NAMECALL                         R7 R7 K6 ["format"]
       62 CALL                             R7 2 1
       63 MOVE                             R6 R7
       64 CALL                             R4 2 0
       65 MOVE                             R4 R2
       66 LOADK                            R5 K17 ["dragging"]
       67 JUMPIFEQKNIL                     R1 ; [+11]
       69 GETTABLEKS                       R7 R1 K18 ["targetId"]
       71 GETTABLEKS                       R9 R0 K19 ["datum"]
       73 GETTABLEKS                       R8 R9 K20 ["id"]
       75 JUMPIFNOTEQ                      R7 R8 ; [+3]
       77 LOADK                            R6 K21 ["Explorer-DraggingInto"]
       78 JUMP                             ; [+1]
       79 LOADK                            R6 K22 [""]
       80 CALL                             R4 2 0
       81 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Hooks"]
       11 GETTABLEKS                       R2 R3 K7 ["useDragAndDrop"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Hooks"]
       18 GETTABLEKS                       R3 R4 K8 ["useImperativeTagger"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Hooks"]
       25 GETTABLEKS                       R4 R5 K9 ["useVisibleExplorerNodeRange"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K10 [PROTO_0]
       29 RETURN                           R4 1
