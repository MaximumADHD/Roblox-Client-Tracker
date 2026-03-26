PROTO_0:
        0 NEWTABLE                         R1 4 0
        2 GETUPVAL                         R2 0
        3 JUMPIFEQKNIL                     R2 ; [+7]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 GETUPVAL                         R4 0
        8 CALL                             R2 2 2
        9 SETTABLEKS                       R3 R1 K0 ["color3"]
       11 GETUPVAL                         R2 2
       12 JUMPIFEQKNIL                     R2 ; [+7]
       14 GETUPVAL                         R2 1
       15 MOVE                             R3 R0
       16 GETUPVAL                         R4 2
       17 CALL                             R2 2 2
       18 SETTABLEKS                       R3 R1 K1 ["brickColor"]
       20 GETUPVAL                         R2 3
       21 JUMPIFEQKNIL                     R2 ; [+7]
       23 GETUPVAL                         R2 1
       24 MOVE                             R3 R0
       25 GETUPVAL                         R4 3
       26 CALL                             R2 2 2
       27 SETTABLEKS                       R3 R1 K2 ["transparency"]
       29 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQKNIL                     R2 ; [+7]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R5 R1 K0 ["transparency"]
        8 CALL                             R2 3 0
        9 GETUPVAL                         R2 2
       10 JUMPIFEQKNIL                     R2 ; [+9]
       12 GETTABLEKS                       R2 R1 K1 ["color3"]
       14 GETUPVAL                         R3 1
       15 MOVE                             R4 R0
       16 GETUPVAL                         R5 2
       17 MOVE                             R6 R2
       18 CALL                             R3 3 0
       19 JUMP                             ; [+19]
       20 GETUPVAL                         R2 3
       21 JUMPIFNOT                        R2 ; [+17]
       22 GETTABLEKS                       R2 R1 K2 ["brickColor"]
       24 JUMPIFNOTEQKNIL                  R2 ; [+2]
       26 LOADB                            R4 0 +1
       27 LOADB                            R4 1
       28 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       30 LOADK                            R5 K3 ["Somehow there's a CombinedColor property without a color"]
       31 GETIMPORT                        R3 K5 [assert]
       33 CALL                             R3 2 0
       34 GETUPVAL                         R3 1
       35 MOVE                             R4 R0
       36 GETUPVAL                         R5 3
       37 MOVE                             R6 R2
       38 CALL                             R3 3 0
       39 LOADB                            R2 1
       40 RETURN                           R2 1

PROTO_2:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 NEWCLOSURE                       R4 P1
        6 CAPTURE                          VAL R2
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R1
       10 DUPTABLE                         R5 K2 [{"read", "write"}]
       11 SETTABLEKS                       R3 R5 K0 ["read"]
       13 SETTABLEKS                       R4 R5 K1 ["write"]
       15 RETURN                           R5 1

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
       14 GETTABLEKS                       R6 R0 K7 ["Util"]
       16 GETTABLEKS                       R5 R6 K8 ["PropertyInteraction"]
       18 GETTABLEKS                       R4 R5 K9 ["Interactors"]
       20 GETTABLEKS                       R3 R4 K10 ["PropertyInteractor"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["PropertyTypes"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETIMPORT                        R7 K1 [script]
       32 GETTABLEKS                       R6 R7 K12 ["Parent"]
       34 GETTABLEKS                       R5 R6 K13 ["VirtualPropertyDataTypes"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R2 K14 ["read"]
       39 GETTABLEKS                       R6 R2 K15 ["write"]
       41 DUPCLOSURE                       R7 K16 [PROTO_2]
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R6
       44 RETURN                           R7 1
