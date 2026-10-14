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
        0 LOADK                            R4 K0 ["\"%*\"%%s*:%%s*\""]
        1 MOVE                             R6 R1
        2 NAMECALL                         R4 R4 K1 ["format"]
        4 CALL                             R4 2 1
        5 NAMECALL                         R2 R0 K2 ["find"]
        7 CALL                             R2 2 2
        8 JUMPIF                           R3 ; [+2]
        9 LOADNIL                          R4
       10 RETURN                           R4 1
       11 ADDK                             R6 R3 K3 [1]
       12 NAMECALL                         R4 R0 K4 ["sub"]
       14 CALL                             R4 2 1
       15 LOADK                            R7 K5 ["\\\""]
       16 LOADK                            R8 K6 ["\\'"]
       17 NAMECALL                         R5 R4 K7 ["gsub"]
       19 CALL                             R5 3 1
       20 LOADK                            R7 K8 ["\""]
       21 NAMECALL                         R5 R5 K2 ["find"]
       23 CALL                             R5 2 1
       24 JUMPIFNOT                        R5 ; [+6]
       25 LOADN                            R8 1
       26 SUBK                             R9 R5 K3 [1]
       27 NAMECALL                         R6 R4 K4 ["sub"]
       29 CALL                             R6 3 1
       30 MOVE                             R4 R6
       31 MOVE                             R6 R4
       32 LOADK                            R9 K9 ["\\n"]
       33 LOADK                            R10 K10 ["\n"]
       34 NAMECALL                         R7 R6 K7 ["gsub"]
       36 CALL                             R7 3 1
       37 MOVE                             R6 R7
       38 LOADK                            R9 K11 ["\\t"]
       39 LOADK                            R10 K12 ["\t"]
       40 NAMECALL                         R7 R6 K7 ["gsub"]
       42 CALL                             R7 3 1
       43 MOVE                             R6 R7
       44 LOADK                            R9 K13 ["\\r"]
       45 LOADK                            R10 K14 ["\r"]
       46 NAMECALL                         R7 R6 K7 ["gsub"]
       48 CALL                             R7 3 1
       49 MOVE                             R6 R7
       50 LOADK                            R9 K5 ["\\\""]
       51 LOADK                            R10 K8 ["\""]
       52 NAMECALL                         R7 R6 K7 ["gsub"]
       54 CALL                             R7 3 1
       55 MOVE                             R6 R7
       56 MOVE                             R4 R6
       57 RETURN                           R4 1

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
