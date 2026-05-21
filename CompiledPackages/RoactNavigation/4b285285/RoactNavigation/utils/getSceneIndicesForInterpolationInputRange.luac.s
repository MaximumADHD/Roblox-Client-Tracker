PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["scene"]
        2 GETTABLEKS                       R2 R0 K1 ["scenes"]
        4 GETTABLEKS                       R3 R1 K2 ["index"]
        6 LENGTH                           R4 R2
        7 GETTABLE                         R6 R2 R4
        8 GETTABLEKS                       R6 R6 K3 ["isActive"]
       10 NOT                              R5 R6
       11 JUMPIFNOT                        R5 ; [+66]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K4 ["indexOf"]
       15 MOVE                             R7 R2
       16 MOVE                             R8 R1
       17 CALL                             R6 2 1
       18 LOADNIL                          R7
       19 MOVE                             R8 R2
       20 LOADNIL                          R9
       21 LOADNIL                          R10
       22 FORGPREP                         R8
       23 GETTABLEKS                       R13 R12 K3 ["isActive"]
       25 JUMPIFNOT                        R13 ; [+2]
       26 MOVE                             R7 R11
       27 JUMP                             ; [+2]
       28 FORGLOOP                         R8 2 ; [-6]
       30 GETTABLE                         R8 R2 R7
       31 GETTABLEKS                       R8 R8 K2 ["index"]
       33 GETTABLE                         R9 R2 R4
       34 GETTABLEKS                       R9 R9 K2 ["index"]
       36 JUMPIFEQ                         R3 R8 ; [+17]
       38 JUMPIFNOTEQ                      R6 R4 ; [+15]
       40 DUPTABLE                         R10 K7 [{"first", "last"}]
       41 SUBK                             R13 R3 K8 [1]
       42 FASTCALL2                        MATH_MIN R8 R13 ; [+4]
       44 MOVE                             R12 R8
       45 GETIMPORT                        R11 K11 [math.min]
       47 CALL                             R11 2 1
       48 SETTABLEKS                       R11 R10 K5 ["first"]
       50 ADDK                             R11 R3 K8 [1]
       51 SETTABLEKS                       R11 R10 K6 ["last"]
       53 RETURN                           R10 1
       54 JUMPIFNOTEQ                      R3 R8 ; [+17]
       56 JUMPIFNOTEQ                      R6 R7 ; [+15]
       58 DUPTABLE                         R10 K7 [{"first", "last"}]
       59 SUBK                             R11 R3 K8 [1]
       60 SETTABLEKS                       R11 R10 K5 ["first"]
       62 ADDK                             R13 R3 K8 [1]
       63 FASTCALL2                        MATH_MAX R9 R13 ; [+4]
       65 MOVE                             R12 R9
       66 GETIMPORT                        R11 K13 [math.max]
       68 CALL                             R11 2 1
       69 SETTABLEKS                       R11 R10 K6 ["last"]
       71 RETURN                           R10 1
       72 JUMPIFEQ                         R3 R8 ; [+3]
       74 JUMPIFNOTLT                      R7 R6 ; [+3]
       76 LOADNIL                          R10
       77 RETURN                           R10 1
       78 DUPTABLE                         R6 K7 [{"first", "last"}]
       79 SUBK                             R7 R3 K8 [1]
       80 SETTABLEKS                       R7 R6 K5 ["first"]
       82 ADDK                             R7 R3 K8 [1]
       83 SETTABLEKS                       R7 R6 K6 ["last"]
       85 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K6 ["Array"]
       16 DUPCLOSURE                       R3 K7 [PROTO_0]
       17 CAPTURE                          VAL R2
       18 RETURN                           R3 1
