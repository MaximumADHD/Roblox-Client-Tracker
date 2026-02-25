PROTO_0:
        0 DUPTABLE                         R1 K1 [{"_root"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K2 ["new"]
        4 LOADN                            R3 1
        5 LOADN                            R4 1
        6 CALL                             R2 2 1
        7 SETTABLEKS                       R2 R1 K0 ["_root"]
        9 GETUPVAL                         R2 1
       10 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
       12 GETIMPORT                        R0 K4 [setmetatable]
       14 CALL                             R0 2 1
       15 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["_root"]
        2 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R2 0 1
        2 GETTABLEKS                       R3 R0 K0 ["_root"]
        4 SETLIST                          R2 R3 1 [1]
        6 LENGTH                           R3 R2
        7 LOADN                            R4 0
        8 JUMPIFNOTLT                      R4 R3 ; [+26]
       10 GETTABLEN                        R3 R2 1
       11 GETIMPORT                        R4 K3 [table.remove]
       13 MOVE                             R5 R2
       14 LOADN                            R6 1
       15 CALL                             R4 2 0
       16 GETIMPORT                        R4 K5 [ipairs]
       18 GETTABLEKS                       R5 R3 K6 ["Children"]
       20 CALL                             R4 1 3
       21 FORGPREP_INEXT                   R4
       22 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       24 MOVE                             R10 R2
       25 MOVE                             R11 R8
       26 GETIMPORT                        R9 K8 [table.insert]
       28 CALL                             R9 2 0
       29 FORGLOOP                         R4 2 [inext] ; [-8]
       31 MOVE                             R4 R1
       32 MOVE                             R5 R3
       33 CALL                             R4 1 0
       34 JUMPBACK                         ; [-29]
       35 RETURN                           R0 0

PROTO_3:
        0 MOVE                             R2 R0
        1 JUMPIFNOT                        R2 ; [+8]
        2 MOVE                             R3 R1
        3 MOVE                             R4 R2
        4 CALL                             R3 1 1
        5 JUMPIFNOT                        R3 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R2 R2 K0 ["Parent"]
        9 JUMPBACK                         ; [-9]
       10 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["CodeBlock"]
        9 CALL                             R1 1 1
       10 NEWTABLE                         R2 8 0
       12 SETTABLEKS                       R2 R2 K6 ["__index"]
       14 DUPCLOSURE                       R3 K7 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R2
       17 SETTABLEKS                       R3 R2 K8 ["new"]
       19 DUPCLOSURE                       R3 K9 [PROTO_1]
       20 SETTABLEKS                       R3 R2 K10 ["GetRoot"]
       22 DUPCLOSURE                       R3 K11 [PROTO_2]
       23 SETTABLEKS                       R3 R2 K12 ["TraverseBF"]
       25 DUPCLOSURE                       R3 K13 [PROTO_3]
       26 SETTABLEKS                       R3 R2 K14 ["TraverseUp"]
       28 RETURN                           R2 1
