PROTO_0:
        0 DIVK                             R2 R0 K0 [100]
        1 LOADN                            R3 0
        2 LOADN                            R4 1
        3 FASTCALL                         MATH_CLAMP ; [+2]
        4 GETIMPORT                        R1 K3 [math.clamp]
        6 CALL                             R1 3 1
        7 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 0
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["FoundationProgressBindableValue"]
        3 JUMPIFNOT                        R1 ; [+32]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["isBinding"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 1
        9 JUMPIFNOT                        R1 ; [+10]
       10 DUPCLOSURE                       R3 K2 [PROTO_0]
       11 NAMECALL                         R1 R0 K3 ["map"]
       13 CALL                             R1 2 1
       14 MOVE                             R2 R1
       15 JUMPIFEQKNIL                     R0 ; [+2]
       17 LOADB                            R3 0 +1
       18 LOADB                            R3 1
       19 RETURN                           R2 2
       20 JUMPIFEQKNIL                     R0 ; [+9]
       22 DIVK                             R2 R0 K4 [100]
       23 LOADN                            R3 0
       24 LOADN                            R4 1
       25 FASTCALL                         MATH_CLAMP ; [+2]
       26 GETIMPORT                        R1 K7 [math.clamp]
       28 CALL                             R1 3 1
       29 JUMP                             ; [+1]
       30 LOADNIL                          R1
       31 JUMPIFEQKNIL                     R0 ; [+2]
       33 LOADB                            R2 0 +1
       34 LOADB                            R2 1
       35 RETURN                           R1 2
       36 LOADNIL                          R1
       37 JUMPIFEQKNIL                     R0 ; [+9]
       39 DIVK                             R3 R0 K4 [100]
       40 LOADN                            R4 0
       41 LOADN                            R5 1
       42 FASTCALL                         MATH_CLAMP ; [+2]
       43 GETIMPORT                        R2 K7 [math.clamp]
       45 CALL                             R2 3 1
       46 MOVE                             R1 R2
       47 GETUPVAL                         R3 2
       48 GETTABLEKS                       R2 R3 K8 ["useBinding"]
       50 MOVE                             R3 R1
       51 CALL                             R2 1 2
       52 GETUPVAL                         R5 2
       53 GETTABLEKS                       R4 R5 K9 ["useEffect"]
       55 NEWCLOSURE                       R5 P1
       56 CAPTURE                          REF R1
       57 CAPTURE                          VAL R3
       58 NEWTABLE                         R6 0 1
       60 MOVE                             R7 R1
       61 SETLIST                          R6 R7 1 [1]
       63 CALL                             R4 2 0
       64 MOVE                             R4 R2
       65 JUMPIFEQKNIL                     R0 ; [+2]
       67 LOADB                            R5 0 +1
       68 LOADB                            R5 1
       69 CLOSEUPVALS                      R1
       70 RETURN                           R4 2
       71 CLOSEUPVALS                      R1

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
       21 GETTABLEKS                       R6 R0 K9 ["Utility"]
       23 GETTABLEKS                       R5 R6 K10 ["Flags"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K11 ["Components"]
       30 GETTABLEKS                       R6 R7 K12 ["Types"]
       32 CALL                             R5 1 1
       33 DUPCLOSURE                       R6 K13 [PROTO_2]
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R2
       37 RETURN                           R6 1
