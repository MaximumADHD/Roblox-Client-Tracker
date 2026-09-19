PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["props"]
        3 CALL                             R1 1 2
        4 JUMPIFNOT                        R1 ; [+24]
        5 GETUPVAL                         R3 1
        6 JUMPIFNOT                        R3 ; [+33]
        7 GETTABLEKS                       R3 R0 K0 ["props"]
        9 GETTABLEKS                       R3 R3 K1 ["Stylizer"]
       11 GETUPVAL                         R4 1
       12 MOVE                             R5 R3
       13 CALL                             R4 1 2
       14 MOVE                             R1 R4
       15 MOVE                             R2 R5
       16 JUMPIF                           R1 ; [+23]
       17 LOADK                            R4 K2 ["%s\n\tFound in the StyleTable of the Component %q."]
       18 MOVE                             R6 R2
       19 GETUPVAL                         R8 2
       20 FASTCALL1                        TOSTRING R8 ; [+2]
       21 GETIMPORT                        R7 K4 [tostring]
       23 CALL                             R7 1 1
       24 NAMECALL                         R4 R4 K5 ["format"]
       26 CALL                             R4 3 1
       27 MOVE                             R2 R4
       28 JUMP                             ; [+11]
       29 LOADK                            R3 K6 ["%s\n\tFound in the props table of the Component %q."]
       30 MOVE                             R5 R2
       31 GETUPVAL                         R7 2
       32 FASTCALL1                        TOSTRING R7 ; [+2]
       33 GETIMPORT                        R6 K4 [tostring]
       35 CALL                             R6 1 1
       36 NAMECALL                         R3 R3 K5 ["format"]
       38 CALL                             R3 3 1
       39 MOVE                             R2 R3
       40 FASTCALL2                        ASSERT R1 R2 ; [+5]
       42 MOVE                             R4 R1
       43 MOVE                             R5 R2
       44 GETIMPORT                        R3 K8 [assert]
       46 CALL                             R3 2 0
       47 NAMECALL                         R3 R0 K9 ["__renderAfterValidation"]
       49 CALL                             R3 1 -1
       50 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["props"]
        3 CALL                             R1 1 2
        4 JUMPIF                           R1 ; [+11]
        5 LOADK                            R3 K1 ["%s\n\tFound in the props table of the Component %q."]
        6 MOVE                             R5 R2
        7 GETUPVAL                         R7 1
        8 FASTCALL1                        TOSTRING R7 ; [+2]
        9 GETIMPORT                        R6 K3 [tostring]
       11 CALL                             R6 1 1
       12 NAMECALL                         R3 R3 K4 ["format"]
       14 CALL                             R3 3 1
       15 MOVE                             R2 R3
       16 FASTCALL2                        ASSERT R1 R2 ; [+5]
       18 MOVE                             R4 R1
       19 MOVE                             R5 R2
       20 GETIMPORT                        R3 K6 [assert]
       22 CALL                             R3 2 0
       23 NAMECALL                         R3 R0 K7 ["__renderAfterValidation"]
       25 CALL                             R3 1 -1
       26 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["__renderAfterValidation"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 LOADB                            R0 1
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K1 ["__renderWithContext"]
        9 JUMPIFNOT                        R0 ; [+14]
       10 GETUPVAL                         R0 0
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K1 ["__renderWithContext"]
       14 SETTABLEKS                       R1 R0 K0 ["__renderAfterValidation"]
       16 NEWCLOSURE                       R0 P0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U0
       20 GETUPVAL                         R1 0
       21 SETTABLEKS                       R0 R1 K1 ["__renderWithContext"]
       23 JUMP                             ; [+12]
       24 GETUPVAL                         R0 0
       25 GETUPVAL                         R1 0
       26 GETTABLEKS                       R1 R1 K2 ["render"]
       28 SETTABLEKS                       R1 R0 K0 ["__renderAfterValidation"]
       30 NEWCLOSURE                       R0 P1
       31 CAPTURE                          UPVAL U1
       32 CAPTURE                          UPVAL U0
       33 GETUPVAL                         R1 0
       34 SETTABLEKS                       R0 R1 K2 ["render"]
       36 LOADB                            R0 1
       37 RETURN                           R0 1

PROTO_3:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R2
        4 SETTABLEKS                       R3 R0 K0 ["validateProps"]
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 1
        1 GETTABLEKS                       R1 R1 K0 ["Source"]
        3 JUMPIFNOTEQKS                    R1 K1 [""] ; [+2]
        5 LOADB                            R0 0 +1
        6 LOADB                            R0 1
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_5:
        0 LOADB                            R2 0
        1 GETIMPORT                        R3 K1 [pcall]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          REF R2
        5 CAPTURE                          VAL R1
        6 CALL                             R3 1 0
        7 JUMPIFNOT                        R2 ; [+20]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K2 ["new"]
       11 MOVE                             R4 R0
       12 MOVE                             R5 R1
       13 CALL                             R3 2 1
       14 NAMECALL                         R4 R3 K3 ["parse"]
       16 CALL                             R4 1 1
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K4 ["toInterface"]
       20 MOVE                             R6 R4
       21 CALL                             R5 1 2
       22 NEWCLOSURE                       R7 P1
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R5
       25 CAPTURE                          VAL R6
       26 SETTABLEKS                       R7 R0 K5 ["validateProps"]
       28 CLOSEUPVALS                      R2
       29 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["DocParser"]
        9 CALL                             R0 1 1
       10 DUPCLOSURE                       R1 K6 [PROTO_3]
       11 DUPCLOSURE                       R2 K7 [PROTO_5]
       12 CAPTURE                          VAL R0
       13 RETURN                           R2 1
