PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["pathStringForSorting"]
        2 GETTABLEKS                       R4 R1 K0 ["pathStringForSorting"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["new"]
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 CALL                             R3 2 1
        6 GETIMPORT                        R4 K3 [table.sort]
        8 MOVE                             R5 R0
        9 DUPCLOSURE                       R6 K4 [PROTO_0]
       10 CALL                             R4 2 0
       11 GETIMPORT                        R4 K6 [ipairs]
       13 MOVE                             R5 R0
       14 CALL                             R4 1 3
       15 FORGPREP_INEXT                   R4
       16 GETTABLEKS                       R11 R8 K7 ["path"]
       18 GETTABLEKS                       R12 R8 K8 ["method"]
       20 NAMECALL                         R9 R3 K9 ["addRoot"]
       22 CALL                             R9 3 0
       23 FORGLOOP                         R4 2 [inext] ; [-8]
       25 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["TestPlan"]
        9 CALL                             R0 1 1
       10 NEWTABLE                         R1 1 0
       12 DUPCLOSURE                       R2 K6 [PROTO_1]
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R2 R1 K7 ["createPlan"]
       16 RETURN                           R1 1
