PROTO_0:
        0 LOADK                            R3 K0 ["\\n"]
        1 LOADK                            R4 K1 ["\n"]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 1
        5 MOVE                             R0 R1
        6 LOADK                            R3 K3 ["\\t"]
        7 LOADK                            R4 K4 ["\t"]
        8 NAMECALL                         R1 R0 K2 ["gsub"]
       10 CALL                             R1 3 1
       11 MOVE                             R0 R1
       12 LOADK                            R3 K5 ["\\r"]
       13 LOADK                            R4 K6 ["\r"]
       14 NAMECALL                         R1 R0 K2 ["gsub"]
       16 CALL                             R1 3 1
       17 MOVE                             R0 R1
       18 LOADK                            R3 K7 ["\\\""]
       19 LOADK                            R4 K8 ["\""]
       20 NAMECALL                         R1 R0 K2 ["gsub"]
       22 CALL                             R1 3 1
       23 MOVE                             R0 R1
       24 RETURN                           R0 1

PROTO_1:
        0 LOADK                            R3 K0 ["\"code\"%s*:%s*\""]
        1 NAMECALL                         R1 R0 K1 ["find"]
        3 CALL                             R1 2 2
        4 JUMPIF                           R2 ; [+2]
        5 LOADNIL                          R3
        6 RETURN                           R3 1
        7 ADDK                             R5 R2 K2 [1]
        8 NAMECALL                         R3 R0 K3 ["sub"]
       10 CALL                             R3 2 1
       11 LOADK                            R6 K4 ["\\\""]
       12 LOADK                            R7 K5 ["\\'"]
       13 NAMECALL                         R4 R3 K6 ["gsub"]
       15 CALL                             R4 3 1
       16 LOADK                            R6 K7 ["\""]
       17 NAMECALL                         R4 R4 K1 ["find"]
       19 CALL                             R4 2 1
       20 JUMPIFNOT                        R4 ; [+6]
       21 LOADN                            R7 1
       22 SUBK                             R8 R4 K2 [1]
       23 NAMECALL                         R5 R3 K3 ["sub"]
       25 CALL                             R5 3 1
       26 MOVE                             R3 R5
       27 MOVE                             R5 R3
       28 LOADK                            R8 K8 ["\\n"]
       29 LOADK                            R9 K9 ["\n"]
       30 NAMECALL                         R6 R5 K6 ["gsub"]
       32 CALL                             R6 3 1
       33 MOVE                             R5 R6
       34 LOADK                            R8 K10 ["\\t"]
       35 LOADK                            R9 K11 ["\t"]
       36 NAMECALL                         R6 R5 K6 ["gsub"]
       38 CALL                             R6 3 1
       39 MOVE                             R5 R6
       40 LOADK                            R8 K12 ["\\r"]
       41 LOADK                            R9 K13 ["\r"]
       42 NAMECALL                         R6 R5 K6 ["gsub"]
       44 CALL                             R6 3 1
       45 MOVE                             R5 R6
       46 LOADK                            R8 K4 ["\\\""]
       47 LOADK                            R9 K7 ["\""]
       48 NAMECALL                         R6 R5 K6 ["gsub"]
       50 CALL                             R6 3 1
       51 MOVE                             R5 R6
       52 MOVE                             R3 R5
       53 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 DUPTABLE                         R2 K3 [{"parseJSONForCode"}]
        4 SETTABLEKS                       R1 R2 K2 ["parseJSONForCode"]
        6 RETURN                           R2 1
