PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 0
        2 NAMECALL                         R0 R0 K0 ["GenerateGUID"]
        4 CALL                             R0 2 1
        5 LOADK                            R2 K1 ["s"]
        6 LOADN                            R5 1
        7 LOADN                            R6 5
        8 NAMECALL                         R3 R0 K2 ["sub"]
       10 CALL                             R3 3 1
       11 CONCAT                           R1 R2 R3
       12 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R3 K0 ["%s"]
        1 LOADK                            R4 K1 ["_"]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 1
        5 LOADK                            R3 K3 ["-"]
        6 LOADK                            R4 K1 ["_"]
        7 NAMECALL                         R1 R1 K2 ["gsub"]
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1

PROTO_2:
        0 LOADK                            R3 K0 ["-"]
        1 LOADN                            R4 1
        2 LOADB                            R5 1
        3 NAMECALL                         R1 R0 K1 ["find"]
        5 CALL                             R1 4 1
        6 JUMPIF                           R1 ; [+9]
        7 GETIMPORT                        R2 K3 [error]
        9 LOADK                            R4 K4 ["Invalid identifier: %*"]
       10 MOVE                             R6 R0
       11 NAMECALL                         R4 R4 K5 ["format"]
       13 CALL                             R4 2 1
       14 MOVE                             R3 R4
       15 CALL                             R2 1 0
       16 LOADK                            R4 K0 ["-"]
       17 ADDK                             R5 R1 K6 [1]
       18 LOADB                            R6 1
       19 NAMECALL                         R2 R0 K1 ["find"]
       21 CALL                             R2 4 1
       22 JUMPIF                           R2 ; [+9]
       23 GETIMPORT                        R3 K3 [error]
       25 LOADK                            R5 K4 ["Invalid identifier: %*"]
       26 MOVE                             R7 R0
       27 NAMECALL                         R5 R5 K5 ["format"]
       29 CALL                             R5 2 1
       30 MOVE                             R4 R5
       31 CALL                             R3 1 0
       32 LOADN                            R5 1
       33 SUBK                             R6 R2 K6 [1]
       34 NAMECALL                         R3 R0 K7 ["sub"]
       36 CALL                             R3 3 1
       37 ADDK                             R6 R2 K6 [1]
       38 NAMECALL                         R4 R0 K7 ["sub"]
       40 CALL                             R4 2 1
       41 RETURN                           R3 2

PROTO_3:
        0 LOADK                            R2 K0 ["%*-%*"]
        1 GETUPVAL                         R5 0
        2 LOADB                            R7 0
        3 NAMECALL                         R5 R5 K1 ["GenerateGUID"]
        5 CALL                             R5 2 1
        6 LOADK                            R6 K2 ["s"]
        7 LOADN                            R9 1
        8 LOADN                            R10 5
        9 NAMECALL                         R7 R5 K3 ["sub"]
       11 CALL                             R7 3 1
       12 CONCAT                           R4 R6 R7
       13 LOADK                            R7 K4 ["%s"]
       14 LOADK                            R8 K5 ["_"]
       15 NAMECALL                         R5 R0 K6 ["gsub"]
       17 CALL                             R5 3 1
       18 LOADK                            R7 K7 ["-"]
       19 LOADK                            R8 K5 ["_"]
       20 NAMECALL                         R5 R5 K6 ["gsub"]
       22 CALL                             R5 3 1
       23 NAMECALL                         R2 R2 K8 ["format"]
       25 CALL                             R2 3 1
       26 MOVE                             R1 R2
       27 RETURN                           R1 1

PROTO_4:
        0 LOADK                            R3 K0 ["-"]
        1 LOADN                            R4 1
        2 LOADB                            R5 1
        3 NAMECALL                         R1 R0 K1 ["find"]
        5 CALL                             R1 4 1
        6 JUMPIF                           R1 ; [+9]
        7 GETIMPORT                        R2 K3 [error]
        9 LOADK                            R4 K4 ["Invalid identifier: %*"]
       10 MOVE                             R6 R0
       11 NAMECALL                         R4 R4 K5 ["format"]
       13 CALL                             R4 2 1
       14 MOVE                             R3 R4
       15 CALL                             R2 1 0
       16 LOADK                            R4 K0 ["-"]
       17 ADDK                             R5 R1 K6 [1]
       18 LOADB                            R6 1
       19 NAMECALL                         R2 R0 K1 ["find"]
       21 CALL                             R2 4 1
       22 JUMPIFNOT                        R2 ; [+9]
       23 GETIMPORT                        R3 K3 [error]
       25 LOADK                            R5 K4 ["Invalid identifier: %*"]
       26 MOVE                             R7 R0
       27 NAMECALL                         R5 R5 K5 ["format"]
       29 CALL                             R5 2 1
       30 MOVE                             R4 R5
       31 CALL                             R3 1 0
       32 LOADN                            R5 1
       33 SUBK                             R6 R1 K6 [1]
       34 NAMECALL                         R3 R0 K7 ["sub"]
       36 CALL                             R3 3 1
       37 ADDK                             R6 R1 K6 [1]
       38 NAMECALL                         R4 R0 K7 ["sub"]
       40 CALL                             R4 2 1
       41 RETURN                           R3 2

PROTO_5:
        0 LOADK                            R3 K0 ["%*-%*"]
        1 MOVE                             R5 R0
        2 GETTABLEKS                       R6 R1 K1 ["name"]
        4 NAMECALL                         R3 R3 K2 ["format"]
        6 CALL                             R3 3 1
        7 MOVE                             R2 R3
        8 LOADK                            R5 K3 ["[^a-zA-Z0-9_-]"]
        9 LOADK                            R6 K4 ["_"]
       10 NAMECALL                         R3 R2 K5 ["gsub"]
       12 CALL                             R3 3 1
       13 MOVE                             R2 R3
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K6 ["join"]
       17 MOVE                             R4 R1
       18 DUPTABLE                         R5 K7 [{"name"}]
       19 SETTABLEKS                       R2 R5 K1 ["name"]
       21 CALL                             R3 2 -1
       22 RETURN                           R3 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 2
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["unpackServerIdentifier"]
        6 MOVE                             R4 R1
        7 CALL                             R3 1 2
        8 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ModelContextProtocol"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K8 [game]
       14 LOADK                            R4 K9 ["HttpService"]
       15 NAMECALL                         R2 R2 K10 ["GetService"]
       17 CALL                             R2 2 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R5 R0 K11 ["Parent"]
       22 GETTABLEKS                       R4 R5 K12 ["Dash"]
       24 CALL                             R3 1 1
       25 NEWTABLE                         R4 4 0
       27 DUPCLOSURE                       R5 K13 [PROTO_0]
       28 CAPTURE                          VAL R2
       29 DUPCLOSURE                       R6 K14 [PROTO_1]
       30 DUPCLOSURE                       R7 K15 [PROTO_2]
       31 DUPCLOSURE                       R8 K16 [PROTO_3]
       32 CAPTURE                          VAL R2
       33 SETTABLEKS                       R8 R4 K17 ["getNewServerName"]
       35 DUPCLOSURE                       R8 K18 [PROTO_4]
       36 SETTABLEKS                       R8 R4 K19 ["unpackServerIdentifier"]
       38 DUPCLOSURE                       R8 K20 [PROTO_5]
       39 CAPTURE                          VAL R3
       40 SETTABLEKS                       R8 R4 K21 ["updateToolNameAlias"]
       42 DUPCLOSURE                       R8 K22 [PROTO_6]
       43 CAPTURE                          VAL R7
       44 CAPTURE                          VAL R4
       45 SETTABLEKS                       R8 R4 K23 ["getServerNameFromToolNameAlias"]
       47 RETURN                           R4 1
