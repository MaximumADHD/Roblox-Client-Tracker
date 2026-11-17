PROTO_0:
        0 MOVE                             R3 R2
        1 LOADK                            R4 K0 ["selected"]
        2 GETTABLEKS                       R6 R0 K2 ["selectionState"]
        4 ANDK                             R5 R6 K1 ["Explorer-Selected"]
        5 CALL                             R3 2 0
        6 MOVE                             R3 R2
        7 LOADK                            R4 K3 ["selectionKind"]
        8 GETTABLEKS                       R5 R0 K2 ["selectionState"]
       10 JUMPIFNOT                        R5 ; [+8]
       11 LOADK                            R5 K4 ["Explorer-SelectionKind-%*"]
       12 GETTABLEKS                       R7 R0 K2 ["selectionState"]
       14 GETTABLEKS                       R7 R7 K5 ["kind"]
       16 NAMECALL                         R5 R5 K6 ["format"]
       18 CALL                             R5 2 1
       19 CALL                             R3 2 0
       20 MOVE                             R3 R2
       21 LOADK                            R4 K7 ["selectionSegment"]
       22 GETTABLEKS                       R5 R0 K2 ["selectionState"]
       24 JUMPIFNOT                        R5 ; [+8]
       25 LOADK                            R5 K8 ["Explorer-SelectionSegment-%*"]
       26 GETTABLEKS                       R7 R0 K2 ["selectionState"]
       28 GETTABLEKS                       R7 R7 K9 ["segment"]
       30 NAMECALL                         R5 R5 K6 ["format"]
       32 CALL                             R5 2 1
       33 CALL                             R3 2 0
       34 MOVE                             R3 R2
       35 LOADK                            R4 K10 ["isSelectedWithin"]
       36 GETTABLEKS                       R6 R0 K10 ["isSelectedWithin"]
       38 JUMPIFNOT                        R6 ; [+2]
       39 LOADK                            R5 K11 ["Explorer-SelectedWithin"]
       40 JUMP                             ; [+1]
       41 LOADNIL                          R5
       42 CALL                             R3 2 0
       43 JUMPIFNOT                        R1 ; [+2]
       44 LOADNIL                          R3
       45 JUMP                             ; [+2]
       46 GETTABLEKS                       R3 R0 K12 ["hoverState"]
       48 MOVE                             R4 R2
       49 LOADK                            R5 K13 ["hovered"]
       50 ANDK                             R6 R3 K14 ["Explorer-Hovered"]
       51 CALL                             R4 2 0
       52 MOVE                             R4 R2
       53 LOADK                            R5 K15 ["hoveredKind"]
       54 MOVE                             R6 R3
       55 JUMPIFNOT                        R6 ; [+5]
       56 LOADK                            R6 K16 ["Explorer-HoveredKind-%*"]
       57 MOVE                             R8 R3
       58 NAMECALL                         R6 R6 K6 ["format"]
       60 CALL                             R6 2 1
       61 CALL                             R4 2 0
       62 MOVE                             R4 R2
       63 LOADK                            R5 K17 ["dragging"]
       64 JUMPIFEQKNIL                     R1 ; [+11]
       66 GETTABLEKS                       R7 R1 K18 ["targetId"]
       68 GETTABLEKS                       R8 R0 K19 ["datum"]
       70 GETTABLEKS                       R8 R8 K20 ["id"]
       72 JUMPIFNOTEQ                      R7 R8 ; [+3]
       74 LOADK                            R6 K21 ["Explorer-DraggingInto"]
       75 JUMP                             ; [+1]
       76 LOADK                            R6 K22 [""]
       77 CALL                             R4 2 0
       78 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Hooks"]
       11 GETTABLEKS                       R2 R2 K7 ["useDragAndDrop"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Hooks"]
       18 GETTABLEKS                       R3 R3 K8 ["useImperativeTagger"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Hooks"]
       25 GETTABLEKS                       R4 R4 K9 ["useVisibleExplorerNodeRange"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K10 [PROTO_0]
       29 RETURN                           R4 1
