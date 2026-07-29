PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["AbsolutePosition"]
        2 GETTABLEKS                       R4 R0 K1 ["AbsoluteSize"]
        4 ADD                              R3 R2 R4
        5 GETTABLEKS                       R4 R0 K2 ["Parent"]
        7 JUMPIFEQKNIL                     R4 ; [+72]
        9 LOADK                            R7 K3 ["GuiObject"]
       10 NAMECALL                         R5 R4 K4 ["IsA"]
       12 CALL                             R5 2 1
       13 JUMPIFNOT                        R5 ; [+61]
       14 LOADK                            R7 K5 ["ScrollingFrame"]
       15 NAMECALL                         R5 R4 K4 ["IsA"]
       17 CALL                             R5 2 1
       18 JUMPIF                           R5 ; [+3]
       19 GETTABLEKS                       R6 R4 K6 ["ClipsDescendants"]
       21 JUMPIFNOT                        R6 ; [+53]
       22 GETTABLEKS                       R6 R4 K0 ["AbsolutePosition"]
       24 JUMPIFNOT                        R5 ; [+3]
       25 GETTABLEKS                       R7 R4 K7 ["AbsoluteWindowSize"]
       27 JUMP                             ; [+2]
       28 GETTABLEKS                       R7 R4 K1 ["AbsoluteSize"]
       30 ADD                              R8 R6 R7
       31 GETIMPORT                        R9 K10 [Vector2.new]
       33 GETTABLEKS                       R11 R2 K11 ["X"]
       35 GETTABLEKS                       R12 R6 K11 ["X"]
       37 FASTCALL2                        MATH_MAX R11 R12 ; [+3]
       39 GETIMPORT                        R10 K14 [math.max]
       41 CALL                             R10 2 1
       42 GETTABLEKS                       R12 R2 K15 ["Y"]
       44 GETTABLEKS                       R13 R6 K15 ["Y"]
       46 FASTCALL2                        MATH_MAX R12 R13 ; [+3]
       48 GETIMPORT                        R11 K14 [math.max]
       50 CALL                             R11 2 1
       51 CALL                             R9 2 1
       52 MOVE                             R2 R9
       53 GETIMPORT                        R9 K10 [Vector2.new]
       55 GETTABLEKS                       R11 R3 K11 ["X"]
       57 GETTABLEKS                       R12 R8 K11 ["X"]
       59 FASTCALL2                        MATH_MIN R11 R12 ; [+3]
       61 GETIMPORT                        R10 K17 [math.min]
       63 CALL                             R10 2 1
       64 GETTABLEKS                       R12 R3 K15 ["Y"]
       66 GETTABLEKS                       R13 R8 K15 ["Y"]
       68 FASTCALL2                        MATH_MIN R12 R13 ; [+3]
       70 GETIMPORT                        R11 K17 [math.min]
       72 CALL                             R11 2 1
       73 CALL                             R9 2 1
       74 MOVE                             R3 R9
       75 JUMPIFEQ                         R4 R1 ; [+4]
       77 GETTABLEKS                       R4 R4 K2 ["Parent"]
       79 JUMPBACK                         ; [-73]
       80 GETTABLEKS                       R5 R3 K11 ["X"]
       82 GETTABLEKS                       R6 R2 K11 ["X"]
       84 JUMPIFLE                         R5 R6 ; [+7]
       86 GETTABLEKS                       R5 R3 K15 ["Y"]
       88 GETTABLEKS                       R6 R2 K15 ["Y"]
       90 JUMPIFNOTLE                      R5 R6 ; [+3]
       92 LOADNIL                          R5
       93 RETURN                           R5 1
       94 GETIMPORT                        R5 K19 [Rect.new]
       96 MOVE                             R6 R2
       97 MOVE                             R7 R3
       98 CALL                             R5 2 -1
       99 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
