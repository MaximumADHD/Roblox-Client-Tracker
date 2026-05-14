PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["shouldDebugUrls"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETIMPORT                        R1 K2 [print]
        7 LOADK                            R2 K3 ["getFiatProduct Response: "]
        8 MOVE                             R3 R0
        9 CALL                             R1 2 0
       10 GETTABLEKS                       R1 R0 K4 ["responseBody"]
       12 GETUPVAL                         R2 1
       13 GETUPVAL                         R4 2
       14 GETUPVAL                         R5 3
       15 MOVE                             R6 R1
       16 CALL                             R4 2 -1
       17 NAMECALL                         R2 R2 K5 ["dispatch"]
       19 CALL                             R2 -1 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["responseCode"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["NOT_FOUND"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+14]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K2 ["getDefaultFiatProduct"]
       10 CALL                             R1 0 1
       11 GETUPVAL                         R2 2
       12 GETUPVAL                         R4 3
       13 GETUPVAL                         R5 4
       14 MOVE                             R6 R1
       15 CALL                             R4 2 -1
       16 NAMECALL                         R2 R2 K3 ["dispatch"]
       18 CALL                             R2 -1 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R1 2
       21 GETUPVAL                         R3 5
       22 MOVE                             R4 R0
       23 CALL                             R3 1 -1
       24 NAMECALL                         R1 R1 K3 ["dispatch"]
       26 CALL                             R1 -1 0
       27 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 NAMECALL                         R1 R1 K0 ["getFiatProduct"]
        5 CALL                             R1 3 1
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U1
       11 NEWCLOSURE                       R4 P1
       12 CAPTURE                          UPVAL U5
       13 CAPTURE                          UPVAL U6
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U7
       18 NAMECALL                         R1 R1 K1 ["andThen"]
       20 CALL                             R1 3 0
       21 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R2
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Actions"]
       13 GETTABLEKS                       R2 R2 K8 ["NetworkError"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Libs"]
       20 GETTABLEKS                       R3 R3 K10 ["Http"]
       22 GETTABLEKS                       R3 R3 K11 ["StatusCodes"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K7 ["Actions"]
       31 GETTABLEKS                       R4 R4 K12 ["SetFiatProduct"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K13 ["Util"]
       40 GETTABLEKS                       R5 R5 K14 ["FiatUtil"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Src"]
       47 GETTABLEKS                       R6 R6 K13 ["Util"]
       49 GETTABLEKS                       R6 R6 K15 ["DebugFlags"]
       51 CALL                             R5 1 1
       52 DUPCLOSURE                       R6 K16 [PROTO_3]
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R1
       58 RETURN                           R6 1
