PROTO_0:
        0 LOADN                            R3 0
        1 LOADN                            R4 0
        2 LOADN                            R5 0
        3 GETIMPORT                        R6 K1 [ipairs]
        5 MOVE                             R7 R0
        6 CALL                             R6 1 3
        7 FORGPREP_INEXT                   R6
        8 GETTABLEKS                       R11 R10 K2 ["Offset"]
       10 ADD                              R3 R3 R11
       11 GETTABLEKS                       R11 R10 K3 ["Scale"]
       13 ADD                              R4 R4 R11
       14 GETTABLEKS                       R11 R10 K2 ["Offset"]
       16 JUMPIFNOTEQKN                    R11 K4 [0] ; [+5]
       18 GETTABLEKS                       R11 R10 K3 ["Scale"]
       20 JUMPIFEQKN                       R11 K4 [0] ; [+2]
       22 ADDK                             R5 R5 K5 [1]
       23 FORGLOOP                         R6 2 [inext] ; [-16]
       25 JUMPIFNOTEQKN                    R5 K4 [0] ; [+7]
       27 GETIMPORT                        R6 K8 [UDim.new]
       29 LOADN                            R7 1
       30 LOADN                            R8 0
       31 CALL                             R6 2 -1
       32 RETURN                           R6 -1
       33 ORK                              R7 R1 K4 [0]
       34 MULK                             R6 R7 K9 [2]
       35 ADD                              R3 R3 R6
       36 ORK                              R7 R2 K4 [0]
       37 SUBK                             R8 R5 K5 [1]
       38 MUL                              R6 R7 R8
       39 ADD                              R3 R3 R6
       40 GETIMPORT                        R6 K8 [UDim.new]
       42 SUBRK                            R7 R5 K4 [0]
       43 MINUS                            R8 R3
       44 CALL                             R6 2 -1
       45 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K7 [PROTO_0]
       17 RETURN                           R2 1
