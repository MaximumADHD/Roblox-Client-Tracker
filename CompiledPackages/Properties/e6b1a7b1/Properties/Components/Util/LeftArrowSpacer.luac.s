PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R3 R0 K0 ["addTrailingGap"]
        4 JUMPIFNOT                        R3 ; [+5]
        5 GETTABLEKS                       R3 R1 K1 ["Gap"]
        7 GETTABLEKS                       R2 R3 K2 ["Small"]
        9 JUMP                             ; [+1]
       10 LOADN                            R2 0
       11 GETUPVAL                         R3 1
       12 GETUPVAL                         R4 2
       13 DUPTABLE                         R5 K5 [{"LayoutOrder", "Size"}]
       14 GETTABLEKS                       R6 R0 K3 ["LayoutOrder"]
       16 SETTABLEKS                       R6 R5 K3 ["LayoutOrder"]
       18 GETIMPORT                        R6 K8 [UDim2.new]
       20 LOADN                            R7 0
       21 GETTABLEKS                       R10 R1 K4 ["Size"]
       23 GETTABLEKS                       R9 R10 K9 ["Size_300"]
       25 ADD                              R8 R9 R2
       26 LOADN                            R9 1
       27 LOADN                            R10 0
       28 CALL                             R6 4 1
       29 SETTABLEKS                       R6 R5 K4 ["Size"]
       31 DUPTABLE                         R6 K11 [{"Visual"}]
       32 GETTABLEKS                       R7 R0 K12 ["arrow"]
       34 JUMPIFNOT                        R7 ; [+21]
       35 GETUPVAL                         R7 1
       36 GETUPVAL                         R8 3
       37 DUPTABLE                         R9 K15 [{"tag", "Image"}]
       38 LOADK                            R10 K16 ["size-400-400 anchor-center-center position-center-center"]
       39 SETTABLEKS                       R10 R9 K13 ["tag"]
       41 GETUPVAL                         R11 4
       42 GETTABLEKS                       R10 R11 K17 ["explorer"]
       44 GETTABLEKS                       R13 R0 K12 ["arrow"]
       46 GETTABLEKS                       R12 R13 K18 ["expanded"]
       48 JUMPIFNOT                        R12 ; [+2]
       49 LOADK                            R11 K18 ["expanded"]
       50 JUMP                             ; [+1]
       51 LOADK                            R11 K19 ["collapsed"]
       52 CALL                             R10 1 1
       53 SETTABLEKS                       R10 R9 K14 ["Image"]
       55 CALL                             R7 2 1
       56 SETTABLEKS                       R7 R6 K10 ["Visual"]
       58 CALL                             R3 3 -1
       59 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Util"]
       18 GETTABLEKS                       R4 R5 K9 ["ImageUrl"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R1 K10 ["React"]
       25 CALL                             R4 1 1
       26 GETTABLEKS                       R5 R2 K11 ["Image"]
       28 GETTABLEKS                       R6 R2 K12 ["View"]
       30 GETTABLEKS                       R8 R2 K13 ["Hooks"]
       32 GETTABLEKS                       R7 R8 K14 ["useTokens"]
       34 GETTABLEKS                       R8 R4 K15 ["createElement"]
       36 DUPCLOSURE                       R9 K16 [PROTO_0]
       37 CAPTURE                          VAL R7
       38 CAPTURE                          VAL R8
       39 CAPTURE                          VAL R6
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R3
       42 RETURN                           R9 1
