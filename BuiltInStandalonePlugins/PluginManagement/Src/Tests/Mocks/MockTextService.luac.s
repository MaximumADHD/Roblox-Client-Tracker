PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 RETURN                           R0 1

PROTO_1:
        0 LOADN                            R5 0
        1 LOADN                            R8 1
        2 LENGTH                           R6 R1
        3 LOADN                            R7 1
        4 FORNPREP                         R6
        5 GETUPVAL                         R11 0
        6 MOVE                             R14 R8
        7 MOVE                             R15 R8
        8 NAMECALL                         R12 R1 K1 ["sub"]
       10 CALL                             R12 3 1
       11 GETTABLE                         R10 R11 R12
       12 ORK                              R9 R10 K0 [6]
       13 ADD                              R5 R5 R9
       14 FORNLOOP                         R6
       15 GETIMPORT                        R6 K4 [Vector2.new]
       17 FASTCALL1                        MATH_CEIL R5 ; [+3]
       18 MOVE                             R8 R5
       19 GETIMPORT                        R7 K7 [math.ceil]
       21 CALL                             R7 1 1
       22 LOADN                            R8 0
       23 CALL                             R6 2 -1
       24 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 32 0
        3 LOADN                            R1 3
        4 SETTABLEKS                       R1 R0 K0 ["."]
        6 LOADN                            R1 7
        7 SETTABLEKS                       R1 R0 K1 ["a"]
        9 LOADN                            R1 7
       10 SETTABLEKS                       R1 R0 K2 ["b"]
       12 LOADN                            R1 6
       13 SETTABLEKS                       R1 R0 K3 ["c"]
       15 LOADN                            R1 8
       16 SETTABLEKS                       R1 R0 K4 ["d"]
       18 LOADN                            R1 7
       19 SETTABLEKS                       R1 R0 K5 ["e"]
       21 LOADN                            R1 4
       22 SETTABLEKS                       R1 R0 K6 ["f"]
       24 LOADN                            R1 7
       25 SETTABLEKS                       R1 R0 K7 ["g"]
       27 LOADN                            R1 7
       28 SETTABLEKS                       R1 R0 K8 ["h"]
       30 LOADN                            R1 3
       31 SETTABLEKS                       R1 R0 K9 ["i"]
       33 LOADN                            R1 3
       34 SETTABLEKS                       R1 R0 K10 ["j"]
       36 LOADN                            R1 7
       37 SETTABLEKS                       R1 R0 K11 ["k"]
       39 LOADN                            R1 3
       40 SETTABLEKS                       R1 R0 K12 ["l"]
       42 LOADN                            R1 11
       43 SETTABLEKS                       R1 R0 K13 ["m"]
       45 LOADN                            R1 7
       46 SETTABLEKS                       R1 R0 K14 ["n"]
       48 LOADN                            R1 7
       49 SETTABLEKS                       R1 R0 K15 ["o"]
       51 LOADN                            R1 8
       52 SETTABLEKS                       R1 R0 K16 ["p"]
       54 LOADN                            R1 8
       55 SETTABLEKS                       R1 R0 K17 ["q"]
       57 LOADN                            R1 5
       58 SETTABLEKS                       R1 R0 K18 ["r"]
       60 LOADN                            R1 6
       61 SETTABLEKS                       R1 R0 K19 ["s"]
       63 LOADN                            R1 5
       64 SETTABLEKS                       R1 R0 K20 ["t"]
       66 LOADN                            R1 7
       67 SETTABLEKS                       R1 R0 K21 ["u"]
       69 LOADN                            R1 6
       70 SETTABLEKS                       R1 R0 K22 ["v"]
       72 LOADN                            R1 10
       73 SETTABLEKS                       R1 R0 K23 ["w"]
       75 LOADN                            R1 6
       76 SETTABLEKS                       R1 R0 K24 ["x"]
       78 LOADN                            R1 6
       79 SETTABLEKS                       R1 R0 K25 ["y"]
       81 LOADN                            R1 6
       82 SETTABLEKS                       R1 R0 K26 ["z"]
       84 NEWTABLE                         R1 4 0
       86 SETTABLEKS                       R1 R1 K27 ["__index"]
       88 DUPCLOSURE                       R2 K28 [PROTO_0]
       89 CAPTURE                          VAL R1
       90 SETTABLEKS                       R2 R1 K29 ["new"]
       92 DUPCLOSURE                       R2 K30 [PROTO_1]
       93 CAPTURE                          VAL R0
       94 SETTABLEKS                       R2 R1 K31 ["GetTextSize"]
       96 RETURN                           R1 1
