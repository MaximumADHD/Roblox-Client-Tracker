PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Item"]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R4 R2 K1 ["Uid"]
        6 GETTABLEKS                       R5 R1 K1 ["Uid"]
        8 JUMPIFEQ                         R4 R5 ; [+2]
       10 LOADB                            R3 0 +1
       11 LOADB                            R3 1
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R5 R0 K2 ["Position"]
       15 GETTABLEKS                       R5 R5 K3 ["Y"]
       17 GETTABLEKS                       R5 R5 K4 ["Offset"]
       19 CALL                             R4 1 1
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R5 R5 K5 ["createElement"]
       23 GETUPVAL                         R6 3
       24 GETTABLEKS                       R6 R6 K6 ["View"]
       26 DUPTABLE                         R7 K9 [{"LayoutOrder", "Position", "tag"}]
       27 GETTABLEKS                       R8 R0 K10 ["Index"]
       29 SETTABLEKS                       R8 R7 K7 ["LayoutOrder"]
       31 GETTABLEKS                       R8 R0 K2 ["Position"]
       33 SETTABLEKS                       R8 R7 K2 ["Position"]
       35 LOADK                            R9 K11 ["size-full-600 radius-small data-testid=underlay-row %*"]
       36 JUMPIFNOT                        R3 ; [+2]
       37 LOADK                            R11 K12 ["bg-action-selected"]
       38 JUMP                             ; [+4]
       39 JUMPIFNOT                        R4 ; [+2]
       40 LOADK                            R11 K13 ["am-bg-action-hover"]
       41 JUMP                             ; [+1]
       42 LOADK                            R11 K14 [""]
       43 NAMECALL                         R9 R9 K15 ["format"]
       45 CALL                             R9 2 1
       46 MOVE                             R8 R9
       47 SETTABLEKS                       R8 R7 K8 ["tag"]
       49 CALL                             R5 2 -1
       50 RETURN                           R5 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Item"]
        2 GETTABLEKS                       R1 R1 K1 ["Type"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["ScopeType"]
        7 GETTABLEKS                       R2 R2 K3 ["Header"]
        9 JUMPIFNOTEQ                      R1 R2 ; [+3]
       11 LOADNIL                          R1
       12 RETURN                           R1 1
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K4 ["createElement"]
       16 GETUPVAL                         R2 2
       17 DUPTABLE                         R3 K7 [{"Index", "Item", "Position"}]
       18 GETTABLEKS                       R4 R0 K5 ["Index"]
       20 SETTABLEKS                       R4 R3 K5 ["Index"]
       22 GETTABLEKS                       R4 R0 K0 ["Item"]
       24 SETTABLEKS                       R4 R3 K0 ["Item"]
       26 GETTABLEKS                       R4 R0 K6 ["Position"]
       28 SETTABLEKS                       R4 R3 K6 ["Position"]
       30 CALL                             R1 2 -1
       31 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Hooks"]
       34 GETTABLEKS                       R5 R5 K12 ["useCurrentScope"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K9 ["Src"]
       41 GETTABLEKS                       R6 R6 K11 ["Hooks"]
       43 GETTABLEKS                       R6 R6 K13 ["useSidebarScopeHovered"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETIMPORT                        R7 K1 [script]
       50 GETTABLEKS                       R7 R7 K14 ["Parent"]
       52 GETTABLEKS                       R7 R7 K15 ["Row"]
       54 CALL                             R6 1 1
       55 DUPCLOSURE                       R7 K16 [PROTO_0]
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R1
       60 DUPCLOSURE                       R8 K17 [PROTO_1]
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R7
       64 RETURN                           R8 1
