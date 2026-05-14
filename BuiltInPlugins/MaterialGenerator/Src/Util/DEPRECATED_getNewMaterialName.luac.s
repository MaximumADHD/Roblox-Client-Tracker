PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["lower"]
        2 CALL                             R1 1 1
        3 MOVE                             R0 R1
        4 LOADK                            R3 K1 ["[ _](%a)"]
        5 GETIMPORT                        R4 K4 [string.upper]
        7 NAMECALL                         R1 R0 K5 ["gsub"]
        9 CALL                             R1 3 1
       10 MOVE                             R0 R1
       11 LOADK                            R3 K6 ["^%a"]
       12 GETIMPORT                        R4 K4 [string.upper]
       14 NAMECALL                         R1 R0 K5 ["gsub"]
       16 CALL                             R1 3 1
       17 MOVE                             R0 R1
       18 RETURN                           R0 1

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 JUMPIFNOT                        R1 ; [+22]
        3 GETIMPORT                        R3 K1 [pairs]
        5 NAMECALL                         R4 R1 K2 ["GetDescendants"]
        7 CALL                             R4 1 -1
        8 CALL                             R3 -1 3
        9 FORGPREP_NEXT                    R3
       10 LOADK                            R10 K3 ["MaterialVariant"]
       11 NAMECALL                         R8 R7 K4 ["IsA"]
       13 CALL                             R8 2 1
       14 JUMPIFNOT                        R8 ; [+8]
       15 GETIMPORT                        R8 K7 [string.lower]
       17 GETTABLEKS                       R9 R7 K8 ["Name"]
       19 CALL                             R8 1 1
       20 GETTABLEKS                       R9 R7 K8 ["Name"]
       22 SETTABLE                         R9 R2 R8
       23 FORGLOOP                         R3 2 ; [-14]
       25 GETIMPORT                        R3 K7 [string.lower]
       27 MOVE                             R4 R0
       28 CALL                             R3 1 1
       29 GETTABLE                         R4 R2 R3
       30 JUMPIF                           R4 ; [+1]
       31 RETURN                           R0 1
       32 LOADN                            R4 0
       33 ADDK                             R4 R4 K9 [1]
       34 GETIMPORT                        R6 K11 [string.format]
       36 LOADK                            R7 K12 ["%s %0d"]
       37 MOVE                             R8 R3
       38 MOVE                             R9 R4
       39 CALL                             R6 3 1
       40 GETTABLE                         R5 R2 R6
       41 JUMPIFNOT                        R5 ; [+1]
       42 JUMPBACK                         ; [-10]
       43 GETIMPORT                        R5 K11 [string.format]
       45 LOADK                            R6 K12 ["%s %0d"]
       46 MOVE                             R7 R0
       47 MOVE                             R8 R4
       48 CALL                             R5 3 -1
       49 RETURN                           R5 -1

PROTO_2:
        0 MOVE                             R4 R0
        1 LOADK                            R5 K0 [" Material"]
        2 CONCAT                           R3 R4 R5
        3 NAMECALL                         R4 R3 K1 ["lower"]
        5 CALL                             R4 1 1
        6 MOVE                             R3 R4
        7 LOADK                            R6 K2 ["[ _](%a)"]
        8 GETIMPORT                        R7 K5 [string.upper]
       10 NAMECALL                         R4 R3 K6 ["gsub"]
       12 CALL                             R4 3 1
       13 MOVE                             R3 R4
       14 LOADK                            R6 K7 ["^%a"]
       15 GETIMPORT                        R7 K5 [string.upper]
       17 NAMECALL                         R4 R3 K6 ["gsub"]
       19 CALL                             R4 3 1
       20 MOVE                             R3 R4
       21 MOVE                             R2 R3
       22 GETUPVAL                         R3 0
       23 MOVE                             R4 R2
       24 MOVE                             R5 R1
       25 CALL                             R3 2 -1
       26 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 DUPCLOSURE                       R1 K3 [PROTO_0]
       10 DUPCLOSURE                       R2 K4 [PROTO_1]
       11 DUPCLOSURE                       R3 K5 [PROTO_2]
       12 CAPTURE                          VAL R2
       13 RETURN                           R3 1
