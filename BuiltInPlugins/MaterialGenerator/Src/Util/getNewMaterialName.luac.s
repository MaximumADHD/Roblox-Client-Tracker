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
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETIMPORT                        R8 K2 [string.lower]
        8 MOVE                             R9 R7
        9 CALL                             R8 1 1
       10 LOADB                            R9 1
       11 SETTABLE                         R9 R2 R8
       12 FORGLOOP                         R3 2 ; [-7]
       14 GETIMPORT                        R3 K2 [string.lower]
       16 MOVE                             R4 R0
       17 CALL                             R3 1 1
       18 GETTABLE                         R4 R2 R3
       19 JUMPIF                           R4 ; [+1]
       20 RETURN                           R0 1
       21 LOADN                            R4 0
       22 ADDK                             R4 R4 K3 [1]
       23 GETIMPORT                        R6 K5 [string.format]
       25 LOADK                            R7 K6 ["%s %0d"]
       26 MOVE                             R8 R3
       27 MOVE                             R9 R4
       28 CALL                             R6 3 1
       29 GETTABLE                         R5 R2 R6
       30 JUMPIFNOT                        R5 ; [+1]
       31 JUMPBACK                         ; [-10]
       32 GETIMPORT                        R5 K5 [string.format]
       34 LOADK                            R6 K6 ["%s %0d"]
       35 MOVE                             R7 R0
       36 MOVE                             R8 R4
       37 CALL                             R5 3 -1
       38 RETURN                           R5 -1

PROTO_2:
        0 MOVE                             R3 R0
        1 NAMECALL                         R4 R3 K0 ["lower"]
        3 CALL                             R4 1 1
        4 MOVE                             R3 R4
        5 LOADK                            R6 K1 ["[ _](%a)"]
        6 GETIMPORT                        R7 K4 [string.upper]
        8 NAMECALL                         R4 R3 K5 ["gsub"]
       10 CALL                             R4 3 1
       11 MOVE                             R3 R4
       12 LOADK                            R6 K6 ["^%a"]
       13 GETIMPORT                        R7 K4 [string.upper]
       15 NAMECALL                         R4 R3 K5 ["gsub"]
       17 CALL                             R4 3 1
       18 MOVE                             R3 R4
       19 MOVE                             R2 R3
       20 GETUPVAL                         R3 0
       21 MOVE                             R4 R2
       22 MOVE                             R5 R1
       23 JUMPIF                           R5 ; [+2]
       24 NEWTABLE                         R5 0 0
       26 CALL                             R3 2 -1
       27 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 DUPCLOSURE                       R2 K5 [PROTO_1]
        9 DUPCLOSURE                       R3 K6 [PROTO_2]
       10 CAPTURE                          VAL R2
       11 RETURN                           R3 1
