PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 0
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 LOADNIL                          R1
        1 GETTABLEKS                       R2 R0 K0 ["value"]
        3 JUMPIFEQKNIL                     R2 ; [+11]
        5 GETTABLEKS                       R4 R0 K0 ["value"]
        7 DIVK                             R3 R4 K1 [100]
        8 LOADN                            R4 0
        9 LOADN                            R5 1
       10 FASTCALL                         MATH_CLAMP ; [+2]
       11 GETIMPORT                        R2 K4 [math.clamp]
       13 CALL                             R2 3 1
       14 MOVE                             R1 R2
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K5 ["useBinding"]
       18 MOVE                             R3 R1
       19 CALL                             R2 1 2
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K6 ["useEffect"]
       23 NEWCLOSURE                       R5 P0
       24 CAPTURE                          REF R1
       25 CAPTURE                          VAL R3
       26 NEWTABLE                         R6 0 1
       28 MOVE                             R7 R1
       29 SETLIST                          R6 R7 1 [1]
       31 CALL                             R4 2 0
       32 MOVE                             R4 R2
       33 GETTABLEKS                       R6 R0 K0 ["value"]
       35 JUMPIFEQKNIL                     R6 ; [+2]
       37 LOADB                            R5 0 +1
       38 LOADB                            R5 1
       39 CLOSEUPVALS                      R1
       40 RETURN                           R4 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 DUPCLOSURE                       R3 K8 [PROTO_1]
       15 CAPTURE                          VAL R2
       16 RETURN                           R3 1
