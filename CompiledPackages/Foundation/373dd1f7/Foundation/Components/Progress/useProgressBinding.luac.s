PROTO_0:
        0 DIVK                             R2 R0 K0 [100]
        1 LOADN                            R3 0
        2 LOADN                            R4 1
        3 FASTCALL                         MATH_CLAMP ; [+2]
        4 GETIMPORT                        R1 K3 [math.clamp]
        6 CALL                             R1 3 1
        7 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["isBinding"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+10]
        6 DUPCLOSURE                       R3 K1 [PROTO_0]
        7 NAMECALL                         R1 R0 K2 ["map"]
        9 CALL                             R1 2 1
       10 MOVE                             R2 R1
       11 JUMPIFEQKNIL                     R0 ; [+2]
       13 LOADB                            R3 0 +1
       14 LOADB                            R3 1
       15 RETURN                           R2 2
       16 JUMPIFEQKNIL                     R0 ; [+9]
       18 DIVK                             R2 R0 K3 [100]
       19 LOADN                            R3 0
       20 LOADN                            R4 1
       21 FASTCALL                         MATH_CLAMP ; [+2]
       22 GETIMPORT                        R1 K6 [math.clamp]
       24 CALL                             R1 3 1
       25 JUMP                             ; [+1]
       26 LOADNIL                          R1
       27 JUMPIFEQKNIL                     R0 ; [+2]
       29 LOADB                            R2 0 +1
       30 LOADB                            R2 1
       31 RETURN                           R1 2

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
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["ReactIs"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["Types"]
       25 CALL                             R4 1 1
       26 DUPCLOSURE                       R5 K11 [PROTO_1]
       27 CAPTURE                          VAL R3
       28 RETURN                           R5 1
