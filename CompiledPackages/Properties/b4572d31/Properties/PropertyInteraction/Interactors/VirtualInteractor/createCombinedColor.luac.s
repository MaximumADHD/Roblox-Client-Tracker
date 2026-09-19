PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 DUPCLOSURE                       R0 K0 [PROTO_2]
        1 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 GETTABLEKS                       R1 R1 K0 ["Color"]
        6 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R1
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R1
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R1
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

PROTO_10:
        0 DUPTABLE                         R1 K2 [{"color3", "transparency"}]
        1 GETUPVAL                         R2 0
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 SETTABLEKS                       R2 R1 K0 ["color3"]
        6 GETUPVAL                         R2 1
        7 MOVE                             R3 R0
        8 CALL                             R2 1 1
        9 SETTABLEKS                       R2 R1 K1 ["transparency"]
       11 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["color3"]
        4 CALL                             R2 2 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 GETIMPORT                        R4 K3 [BrickColor.new]
        9 GETTABLEKS                       R5 R1 K0 ["color3"]
       11 CALL                             R4 1 -1
       12 CALL                             R2 -1 0
       13 GETUPVAL                         R2 2
       14 MOVE                             R3 R0
       15 GETTABLEKS                       R4 R1 K4 ["transparency"]
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_12:
        0 LOADB                            R4 1
        1 JUMPIFNOTEQKNIL                  R0 ; [+5]
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 LOADB                            R4 0 +1
        6 LOADB                            R4 1
        7 FASTCALL1                        ASSERT R4 ; [+2]
        8 GETIMPORT                        R3 K1 [assert]
       10 CALL                             R3 1 0
       11 GETIMPORT                        R4 K4 [Color3.new]
       13 LOADN                            R5 1
       14 LOADN                            R6 1
       15 LOADN                            R7 1
       16 CALL                             R4 3 1
       17 NEWCLOSURE                       R3 P0
       18 CAPTURE                          VAL R4
       19 JUMPIFEQKNIL                     R0 ; [+5]
       21 NEWCLOSURE                       R3 P1
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          VAL R0
       24 JUMP                             ; [+5]
       25 JUMPIFEQKNIL                     R1 ; [+4]
       27 NEWCLOSURE                       R3 P2
       28 CAPTURE                          UPVAL U0
       29 CAPTURE                          VAL R1
       30 LOADN                            R5 0
       31 NEWCLOSURE                       R4 P0
       32 CAPTURE                          VAL R5
       33 JUMPIFEQKNIL                     R2 ; [+4]
       35 NEWCLOSURE                       R4 P3
       36 CAPTURE                          UPVAL U0
       37 CAPTURE                          VAL R2
       38 DUPCLOSURE                       R5 K5 [PROTO_2]
       39 JUMPIFEQKNIL                     R0 ; [+4]
       41 NEWCLOSURE                       R5 P5
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          VAL R0
       44 DUPCLOSURE                       R6 K5 [PROTO_2]
       45 JUMPIFNOTEQKNIL                  R0 ; [+6]
       47 JUMPIFEQKNIL                     R1 ; [+4]
       49 NEWCLOSURE                       R6 P6
       50 CAPTURE                          UPVAL U1
       51 CAPTURE                          VAL R1
       52 DUPCLOSURE                       R7 K5 [PROTO_2]
       53 JUMPIFEQKNIL                     R2 ; [+4]
       55 NEWCLOSURE                       R7 P7
       56 CAPTURE                          UPVAL U1
       57 CAPTURE                          VAL R2
       58 DUPTABLE                         R8 K8 [{"read", "write"}]
       59 NEWCLOSURE                       R9 P8
       60 CAPTURE                          REF R3
       61 CAPTURE                          REF R4
       62 SETTABLEKS                       R9 R8 K6 ["read"]
       64 NEWCLOSURE                       R9 P9
       65 CAPTURE                          REF R5
       66 CAPTURE                          REF R6
       67 CAPTURE                          REF R7
       68 SETTABLEKS                       R9 R8 K7 ["write"]
       70 CLOSEUPVALS                      R3
       71 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["PropertyEditorTypes"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["PropertyInteraction"]
       16 GETTABLEKS                       R3 R3 K8 ["Interactors"]
       18 GETTABLEKS                       R3 R3 K9 ["PropertyInteractor"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["PropertyTypes"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETIMPORT                        R5 K1 [script]
       30 GETTABLEKS                       R5 R5 K11 ["Parent"]
       32 GETTABLEKS                       R5 R5 K12 ["VirtualPropertyDataTypes"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R2 K13 ["read"]
       37 GETTABLEKS                       R6 R2 K14 ["write"]
       39 DUPCLOSURE                       R7 K15 [PROTO_1]
       40 DUPCLOSURE                       R8 K16 [PROTO_3]
       41 DUPCLOSURE                       R9 K17 [PROTO_12]
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R6
       44 RETURN                           R9 1
