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
        0 LOADK                            R5 K0 ["\"%*\"%%s*:%%s*\""]
        1 MOVE                             R7 R1
        2 NAMECALL                         R5 R5 K1 ["format"]
        4 CALL                             R5 2 1
        5 MOVE                             R4 R5
        6 NAMECALL                         R2 R0 K2 ["find"]
        8 CALL                             R2 2 2
        9 JUMPIF                           R3 ; [+2]
       10 LOADNIL                          R4
       11 RETURN                           R4 1
       12 ADDK                             R6 R3 K3 [1]
       13 NAMECALL                         R4 R0 K4 ["sub"]
       15 CALL                             R4 2 1
       16 LOADK                            R7 K5 ["\\\""]
       17 LOADK                            R8 K6 ["\\'"]
       18 NAMECALL                         R5 R4 K7 ["gsub"]
       20 CALL                             R5 3 1
       21 LOADK                            R7 K8 ["\""]
       22 NAMECALL                         R5 R5 K2 ["find"]
       24 CALL                             R5 2 1
       25 JUMPIFNOT                        R5 ; [+6]
       26 LOADN                            R8 1
       27 SUBK                             R9 R5 K3 [1]
       28 NAMECALL                         R6 R4 K4 ["sub"]
       30 CALL                             R6 3 1
       31 MOVE                             R4 R6
       32 MOVE                             R6 R4
       33 LOADK                            R9 K9 ["\\n"]
       34 LOADK                            R10 K10 ["\n"]
       35 NAMECALL                         R7 R6 K7 ["gsub"]
       37 CALL                             R7 3 1
       38 MOVE                             R6 R7
       39 LOADK                            R9 K11 ["\\t"]
       40 LOADK                            R10 K12 ["\t"]
       41 NAMECALL                         R7 R6 K7 ["gsub"]
       43 CALL                             R7 3 1
       44 MOVE                             R6 R7
       45 LOADK                            R9 K13 ["\\r"]
       46 LOADK                            R10 K14 ["\r"]
       47 NAMECALL                         R7 R6 K7 ["gsub"]
       49 CALL                             R7 3 1
       50 MOVE                             R6 R7
       51 LOADK                            R9 K5 ["\\\""]
       52 LOADK                            R10 K8 ["\""]
       53 NAMECALL                         R7 R6 K7 ["gsub"]
       55 CALL                             R7 3 1
       56 MOVE                             R6 R7
       57 MOVE                             R4 R6
       58 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADK                            R3 K0 ["code"]
        3 CALL                             R1 2 1
        4 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 DUPCLOSURE                       R2 K2 [PROTO_2]
        4 CAPTURE                          VAL R1
        5 DUPTABLE                         R3 K5 [{"parseJSONForKey", "parseJSONForCode"}]
        6 SETTABLEKS                       R1 R3 K3 ["parseJSONForKey"]
        8 SETTABLEKS                       R2 R3 K4 ["parseJSONForCode"]
       10 RETURN                           R3 1
