PROTO_0:
        0 LOADK                            R4 K0 ["style"]
        1 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+12]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R5 R1 K2 ["Name"]
        8 NAMECALL                         R3 R3 K3 ["add"]
       10 CALL                             R3 2 1
       11 MOVE                             R4 R3
       12 GETIMPORT                        R5 K5 [require]
       14 MOVE                             R6 R2
       15 CALL                             R5 1 -1
       16 RETURN                           R4 -1
       17 LOADNIL                          R3
       18 RETURN                           R3 1

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["mock"]
        4 CALL                             R1 0 1
        5 JUMPIF                           R1 ; [+6]
        6 GETUPVAL                         R1 1
        7 JUMPIF                           R1 ; [+4]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K1 ["new"]
       11 CALL                             R1 0 1
       12 GETUPVAL                         R2 2
       13 GETUPVAL                         R3 3
       14 NAMECALL                         R3 R3 K2 ["GetChildren"]
       16 CALL                             R3 1 1
       17 DUPCLOSURE                       R4 K3 [PROTO_0]
       18 CAPTURE                          UPVAL U4
       19 CALL                             R2 2 1
       20 GETUPVAL                         R5 5
       21 JUMPIF                           R5 ; [+2]
       22 NEWTABLE                         R5 0 0
       24 NAMECALL                         R3 R1 K4 ["extend"]
       26 CALL                             R3 2 1
       27 MOVE                             R5 R2
       28 NAMECALL                         R3 R3 K4 ["extend"]
       30 CALL                             R3 2 -1
       31 RETURN                           R3 -1

PROTO_2:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R2
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R1
        7 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K2 ["Parent"]
       11 GETTABLEKS                       R2 R2 K5 ["Dash"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K6 ["collect"]
       16 GETTABLEKS                       R3 R0 K7 ["Style"]
       18 GETIMPORT                        R4 K4 [require]
       20 GETTABLEKS                       R5 R3 K8 ["Themes"]
       22 GETTABLEKS                       R5 R5 K9 ["StudioTheme"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K4 [require]
       27 GETTABLEKS                       R6 R3 K10 ["ComponentSymbols"]
       29 CALL                             R5 1 1
       30 DUPCLOSURE                       R6 K11 [PROTO_2]
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R5
       34 RETURN                           R6 1
