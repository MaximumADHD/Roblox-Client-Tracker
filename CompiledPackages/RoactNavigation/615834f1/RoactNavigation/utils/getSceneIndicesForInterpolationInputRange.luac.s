PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["scene"]
        2 GETTABLEKS                       R2 R0 K1 ["scenes"]
        4 GETTABLEKS                       R3 R1 K2 ["index"]
        6 LENGTH                           R4 R2
        7 GETTABLE                         R7 R2 R4
        8 GETTABLEKS                       R6 R7 K3 ["isActive"]
       10 NOT                              R5 R6
       11 JUMPIFNOT                        R5 ; [+69]
       12 GETUPVAL                         R8 0
       13 GETTABLEKS                       R7 R8 K4 ["List"]
       15 GETTABLEKS                       R6 R7 K5 ["find"]
       17 MOVE                             R7 R2
       18 MOVE                             R8 R1
       19 CALL                             R6 2 1
       20 LOADNIL                          R7
       21 GETIMPORT                        R8 K7 [ipairs]
       23 MOVE                             R9 R2
       24 CALL                             R8 1 3
       25 FORGPREP_INEXT                   R8
       26 GETTABLEKS                       R13 R12 K3 ["isActive"]
       28 JUMPIFNOT                        R13 ; [+2]
       29 MOVE                             R7 R11
       30 JUMP                             ; [+2]
       31 FORGLOOP                         R8 2 [inext] ; [-6]
       33 GETTABLE                         R9 R2 R7
       34 GETTABLEKS                       R8 R9 K2 ["index"]
       36 GETTABLE                         R10 R2 R4
       37 GETTABLEKS                       R9 R10 K2 ["index"]
       39 JUMPIFEQ                         R3 R8 ; [+17]
       41 JUMPIFNOTEQ                      R6 R4 ; [+15]
       43 DUPTABLE                         R10 K10 [{"first", "last"}]
       44 SUBK                             R13 R3 K11 [1]
       45 FASTCALL2                        MATH_MIN R8 R13 ; [+4]
       47 MOVE                             R12 R8
       48 GETIMPORT                        R11 K14 [math.min]
       50 CALL                             R11 2 1
       51 SETTABLEKS                       R11 R10 K8 ["first"]
       53 ADDK                             R11 R3 K11 [1]
       54 SETTABLEKS                       R11 R10 K9 ["last"]
       56 RETURN                           R10 1
       57 JUMPIFNOTEQ                      R3 R8 ; [+17]
       59 JUMPIFNOTEQ                      R6 R7 ; [+15]
       61 DUPTABLE                         R10 K10 [{"first", "last"}]
       62 SUBK                             R11 R3 K11 [1]
       63 SETTABLEKS                       R11 R10 K8 ["first"]
       65 ADDK                             R13 R3 K11 [1]
       66 FASTCALL2                        MATH_MAX R9 R13 ; [+4]
       68 MOVE                             R12 R9
       69 GETIMPORT                        R11 K16 [math.max]
       71 CALL                             R11 2 1
       72 SETTABLEKS                       R11 R10 K9 ["last"]
       74 RETURN                           R10 1
       75 JUMPIFEQ                         R3 R8 ; [+3]
       77 JUMPIFNOTLT                      R7 R6 ; [+3]
       79 LOADNIL                          R10
       80 RETURN                           R10 1
       81 DUPTABLE                         R6 K10 [{"first", "last"}]
       82 SUBK                             R7 R3 K11 [1]
       83 SETTABLEKS                       R7 R6 K8 ["first"]
       85 ADDK                             R7 R3 K11 [1]
       86 SETTABLEKS                       R7 R6 K9 ["last"]
       88 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R5 K3 [script]
        5 GETTABLEKS                       R4 R5 K4 ["Parent"]
        7 GETTABLEKS                       R3 R4 K4 ["Parent"]
        9 GETTABLEKS                       R2 R3 K4 ["Parent"]
       11 GETTABLEKS                       R1 R2 K5 ["Cryo"]
       13 CALL                             R0 1 1
       14 DUPCLOSURE                       R1 K6 [PROTO_0]
       15 CAPTURE                          VAL R0
       16 RETURN                           R1 1
