PROTO_0:
        0 GETUPVAL                         R7 0
        1 MOVE                             R8 R0
        2 CALL                             R7 1 1
        3 GETTABLEKS                       R9 R7 K0 ["variants"]
        5 MOVE                             R10 R2
        6 JUMPIF                           R10 ; [+3]
        7 GETUPVAL                         R11 1
        8 GETTABLEKS                       R10 R11 K1 ["Standard"]
       10 GETTABLE                         R8 R9 R10
       11 GETUPVAL                         R9 2
       12 GETTABLEKS                       R10 R7 K2 ["common"]
       14 GETTABLEKS                       R12 R7 K3 ["sizes"]
       16 GETTABLE                         R11 R12 R1
       17 GETUPVAL                         R14 1
       18 GETTABLEKS                       R13 R14 K4 ["Utility"]
       20 JUMPIFEQ                         R2 R13 ; [+3]
       22 MOVE                             R12 R8
       23 JUMP                             ; [+2]
       24 NEWTABLE                         R12 0 0
       26 JUMPIFNOT                        R3 ; [+4]
       27 GETTABLEKS                       R14 R7 K5 ["radius"]
       29 GETTABLE                         R13 R14 R3
       30 JUMP                             ; [+3]
       31 GETTABLEKS                       R14 R7 K6 ["defaultRadius"]
       33 GETTABLE                         R13 R14 R1
       34 JUMPIFEQKNIL                     R5 ; [+5]
       36 GETTABLEKS                       R15 R7 K7 ["hoverState"]
       38 GETTABLE                         R14 R15 R5
       39 JUMP                             ; [+2]
       40 NEWTABLE                         R14 0 0
       42 JUMPIFEQKNIL                     R4 ; [+5]
       44 GETTABLEKS                       R16 R7 K8 ["focusedState"]
       46 GETTABLE                         R15 R16 R4
       47 JUMP                             ; [+2]
       48 NEWTABLE                         R15 0 0
       50 JUMPIFEQKNIL                     R6 ; [+5]
       52 GETTABLEKS                       R17 R7 K9 ["errorState"]
       54 GETTABLE                         R16 R17 R6
       55 JUMP                             ; [+2]
       56 NEWTABLE                         R16 0 0
       58 GETUPVAL                         R19 1
       59 GETTABLEKS                       R18 R19 K4 ["Utility"]
       61 JUMPIFNOTEQ                      R2 R18 ; [+3]
       63 MOVE                             R17 R8
       64 JUMP                             ; [+2]
       65 NEWTABLE                         R17 0 0
       67 CALL                             R9 8 -1
       68 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R3 K7 ["InputSize"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Enums"]
       18 GETTABLEKS                       R3 R4 K8 ["InputVariant"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Enums"]
       25 GETTABLEKS                       R4 R5 K9 ["Radius"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Utility"]
       32 GETTABLEKS                       R5 R6 K11 ["composeStyleVariant"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETIMPORT                        R8 K1 [script]
       39 GETTABLEKS                       R7 R8 K12 ["Parent"]
       41 GETTABLEKS                       R6 R7 K13 ["getInputVariantsFactory"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R9 R0 K14 ["Providers"]
       48 GETTABLEKS                       R8 R9 K15 ["Style"]
       50 GETTABLEKS                       R7 R8 K16 ["Tokens"]
       52 CALL                             R6 1 1
       53 DUPCLOSURE                       R7 K17 [PROTO_0]
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R4
       57 RETURN                           R7 1
