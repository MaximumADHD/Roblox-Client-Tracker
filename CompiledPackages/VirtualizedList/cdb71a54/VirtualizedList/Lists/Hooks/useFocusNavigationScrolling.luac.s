PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["index"]
        2 GETTABLEKS                       R3 R0 K1 ["averageItemLength"]
        4 MUL                              R1 R2 R3
        5 GETUPVAL                         R2 0
        6 JUMPIFNOT                        R2 ; [+14]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["current"]
       10 JUMPIFNOT                        R2 ; [+10]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K2 ["current"]
       14 DUPTABLE                         R4 K4 [{"offset"}]
       15 SETTABLEKS                       R1 R4 K3 ["offset"]
       17 NAMECALL                         R2 R2 K5 ["scrollToOffset"]
       19 CALL                             R2 2 0
       20 RETURN                           R0 0
       21 GETIMPORT                        R2 K7 [warn]
       23 LOADK                            R3 K8 ["Animated scrolling failed, the ref to the ScrollView is nil.This could indicate that you are selecting focus before the ScrollView has mounted."]
       24 CALL                             R2 1 0
       25 RETURN                           R0 0

PROTO_1:
        0 JUMPIFNOT                        R3 ; [+73]
        1 MOVE                             R6 R0
        2 NAMECALL                         R4 R3 K0 ["IsDescendantOf"]
        4 CALL                             R4 2 1
        5 JUMPIFNOT                        R4 ; [+68]
        6 GETUPVAL                         R6 0
        7 NAMECALL                         R4 R3 K1 ["FindFirstAncestor"]
        9 CALL                             R4 2 1
       10 JUMPIFNOT                        R4 ; [+3]
       11 GETTABLEKS                       R5 R4 K2 ["LayoutOrder"]
       13 JUMPIF                           R5 ; [+2]
       14 LOADNIL                          R5
       15 RETURN                           R5 1
       16 GETTABLEKS                       R5 R4 K2 ["LayoutOrder"]
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R6 R6 K3 ["current"]
       21 JUMPIFEQ                         R5 R6 ; [+12]
       23 GETTABLEKS                       R5 R4 K2 ["LayoutOrder"]
       25 GETUPVAL                         R7 2
       26 LENGTH                           R6 R7
       27 JUMPIFLT                         R6 R5 ; [+6]
       29 GETTABLEKS                       R5 R4 K2 ["LayoutOrder"]
       31 LOADN                            R6 1
       32 JUMPIFNOTLT                      R5 R6 ; [+3]
       34 LOADNIL                          R5
       35 RETURN                           R5 1
       36 GETUPVAL                         R5 1
       37 GETTABLEKS                       R6 R4 K2 ["LayoutOrder"]
       39 SETTABLEKS                       R6 R5 K3 ["current"]
       41 GETUPVAL                         R5 3
       42 JUMPIFNOT                        R5 ; [+5]
       43 GETUPVAL                         R5 3
       44 GETUPVAL                         R6 1
       45 GETTABLEKS                       R6 R6 K3 ["current"]
       47 CALL                             R5 1 0
       48 GETUPVAL                         R5 4
       49 JUMPIFNOT                        R5 ; [+4]
       50 GETUPVAL                         R5 4
       51 GETTABLEKS                       R5 R5 K3 ["current"]
       53 JUMPIF                           R5 ; [+2]
       54 LOADNIL                          R5
       55 RETURN                           R5 1
       56 GETUPVAL                         R5 4
       57 GETTABLEKS                       R5 R5 K3 ["current"]
       59 DUPTABLE                         R7 K7 [{"index", "animated", "viewOffset"}]
       60 GETUPVAL                         R8 1
       61 GETTABLEKS                       R8 R8 K3 ["current"]
       63 SETTABLEKS                       R8 R7 K4 ["index"]
       65 GETUPVAL                         R8 5
       66 SETTABLEKS                       R8 R7 K5 ["animated"]
       68 GETUPVAL                         R8 6
       69 SETTABLEKS                       R8 R7 K6 ["viewOffset"]
       71 NAMECALL                         R5 R5 K8 ["scrollToIndex"]
       73 CALL                             R5 2 0
       74 LOADNIL                          R4
       75 RETURN                           R4 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["cellRendererKey"]
        2 JUMPIFNOT                        R2 ; [+3]
        3 GETTABLEKS                       R1 R0 K0 ["cellRendererKey"]
        5 JUMP                             ; [+1]
        6 LOADK                            R1 K1 ["CellRendererView"]
        7 GETTABLEKS                       R3 R0 K2 ["initialIndex"]
        9 JUMPIFNOT                        R3 ; [+3]
       10 GETTABLEKS                       R2 R0 K2 ["initialIndex"]
       12 JUMP                             ; [+1]
       13 LOADN                            R2 1
       14 GETTABLEKS                       R3 R0 K3 ["listRef"]
       16 GETTABLEKS                       R4 R0 K4 ["onSelectedIndexChanged"]
       18 GETTABLEKS                       R5 R0 K5 ["viewOffset"]
       20 GETTABLEKS                       R7 R0 K6 ["animated"]
       22 JUMPIFEQKNIL                     R7 ; [+4]
       24 GETTABLEKS                       R6 R0 K6 ["animated"]
       26 JUMP                             ; [+1]
       27 LOADB                            R6 1
       28 GETUPVAL                         R7 0
       29 GETTABLEKS                       R7 R7 K7 ["useRef"]
       31 MOVE                             R8 R2
       32 CALL                             R7 1 1
       33 GETTABLEKS                       R8 R0 K8 ["data"]
       35 GETUPVAL                         R9 0
       36 GETTABLEKS                       R9 R9 K9 ["useCallback"]
       38 NEWCLOSURE                       R10 P0
       39 CAPTURE                          VAL R3
       40 NEWTABLE                         R11 0 1
       42 MOVE                             R12 R3
       43 SETLIST                          R11 R12 1 [1]
       45 CALL                             R9 2 1
       46 GETUPVAL                         R10 0
       47 GETTABLEKS                       R10 R10 K9 ["useCallback"]
       49 NEWCLOSURE                       R11 P1
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R8
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R5
       57 NEWTABLE                         R12 0 7
       59 MOVE                             R13 R3
       60 MOVE                             R14 R7
       61 MOVE                             R15 R1
       62 MOVE                             R16 R4
       63 MOVE                             R17 R6
       64 MOVE                             R18 R5
       65 MOVE                             R19 R8
       66 SETLIST                          R12 R13 7 [1]
       68 CALL                             R10 2 1
       69 MOVE                             R11 R10
       70 MOVE                             R12 R9
       71 RETURN                           R11 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R3 R1 K5 ["React"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K4 [require]
       18 GETIMPORT                        R4 K1 [script]
       20 GETTABLEKS                       R4 R4 K2 ["Parent"]
       22 GETTABLEKS                       R4 R4 K2 ["Parent"]
       24 GETTABLEKS                       R4 R4 K6 ["FlatList"]
       26 CALL                             R3 1 1
       27 DUPCLOSURE                       R4 K7 [PROTO_2]
       28 CAPTURE                          VAL R2
       29 RETURN                           R4 1
