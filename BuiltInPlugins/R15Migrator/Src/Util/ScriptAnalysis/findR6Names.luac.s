PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["MatchBeforeOrAfter"]
        3 MOVE                             R4 R2
        4 MOVE                             R5 R0
        5 MOVE                             R6 R1
        6 LOADK                            R7 K1 ["%w"]
        7 LOADK                            R8 K1 ["%w"]
        8 CALL                             R3 5 1
        9 JUMPIFNOT                        R3 ; [+2]
       10 LOADB                            R3 0
       11 RETURN                           R3 1
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K2 ["MatchBeforeAndAfter"]
       15 MOVE                             R4 R2
       16 MOVE                             R5 R0
       17 MOVE                             R6 R1
       18 LOADK                            R7 K3 ["[\"]"]
       19 LOADK                            R8 K3 ["[\"]"]
       20 CALL                             R3 5 1
       21 JUMPIFNOT                        R3 ; [+2]
       22 LOADB                            R3 1
       23 RETURN                           R3 1
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R3 R4 K2 ["MatchBeforeAndAfter"]
       27 MOVE                             R4 R2
       28 MOVE                             R5 R0
       29 MOVE                             R6 R1
       30 LOADK                            R7 K4 ["[']"]
       31 LOADK                            R8 K4 ["[']"]
       32 CALL                             R3 5 1
       33 JUMPIFNOT                        R3 ; [+2]
       34 LOADB                            R3 1
       35 RETURN                           R3 1
       36 GETUPVAL                         R4 0
       37 GETTABLEKS                       R3 R4 K2 ["MatchBeforeAndAfter"]
       39 MOVE                             R4 R2
       40 MOVE                             R5 R0
       41 MOVE                             R6 R1
       42 LOADK                            R7 K5 ["[.]"]
       43 LOADK                            R8 K6 ["[[:%s.=,\r\n\t]"]
       44 LOADB                            R9 0
       45 LOADB                            R10 1
       46 CALL                             R3 7 1
       47 JUMPIFNOT                        R3 ; [+2]
       48 LOADB                            R3 1
       49 RETURN                           R3 1
       50 LOADB                            R3 0
       51 RETURN                           R3 1

PROTO_1:
        0 LOADN                            R5 1
        1 MOVE                             R6 R2
        2 LOADNIL                          R7
        3 LOADNIL                          R8
        4 FORGPREP                         R6
        5 LOADNIL                          R11
        6 LOADNIL                          R12
        7 GETIMPORT                        R13 K2 [string.find]
        9 MOVE                             R14 R0
       10 MOVE                             R15 R10
       11 MOVE                             R16 R5
       12 CALL                             R13 3 2
       13 MOVE                             R11 R13
       14 MOVE                             R12 R14
       15 JUMPIFNOT                        R11 ; [+16]
       16 JUMPIFNOT                        R12 ; [+15]
       17 JUMPIFNOT                        R3 ; [+6]
       18 GETUPVAL                         R13 0
       19 MOVE                             R14 R11
       20 MOVE                             R15 R12
       21 MOVE                             R16 R0
       22 CALL                             R13 3 1
       23 JUMPIFNOT                        R13 ; [+7]
       24 MOVE                             R13 R4
       25 MOVE                             R14 R11
       26 MOVE                             R15 R12
       27 MOVE                             R16 R10
       28 MOVE                             R17 R0
       29 MOVE                             R18 R1
       30 CALL                             R13 5 0
       31 MOVE                             R5 R12
       32 JUMPIFNOTEQKNIL                  R11 ; [+3]
       34 JUMPIFEQKNIL                     R12 ; [+2]
       36 JUMPBACK                         ; [-30]
       37 LOADN                            R5 1
       38 FORGLOOP                         R6 2 ; [-34]
       40 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["StringUtil"]
        9 CALL                             R1 1 1
       10 DUPCLOSURE                       R2 K6 [PROTO_0]
       11 CAPTURE                          VAL R1
       12 DUPCLOSURE                       R3 K7 [PROTO_1]
       13 CAPTURE                          VAL R2
       14 RETURN                           R3 1
