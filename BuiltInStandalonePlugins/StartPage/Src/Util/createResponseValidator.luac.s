PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        3 CALL                             R1 1 1
        4 JUMPIFNOT                        R1 ; [+43]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R3 R0 K0 ["responseBody"]
        8 DUPTABLE                         R4 K2 [{"multiline"}]
        9 LOADB                            R5 1
       10 SETTABLEKS                       R5 R4 K1 ["multiline"]
       12 CALL                             R2 2 1
       13 GETIMPORT                        R3 K4 [error]
       15 LOADK                            R5 K5 ["Response does not match schema"]
       16 LOADK                            R10 K6 ["\nReason: %*"]
       17 MOVE                             R12 R1
       18 NAMECALL                         R10 R10 K7 ["format"]
       20 CALL                             R10 2 1
       21 MOVE                             R6 R10
       22 LOADK                            R10 K8 ["\nMethod: %*"]
       23 GETTABLEKS                       R12 R0 K9 ["requestOptions"]
       25 GETTABLEKS                       R12 R12 K10 ["Method"]
       27 NAMECALL                         R10 R10 K7 ["format"]
       29 CALL                             R10 2 1
       30 MOVE                             R7 R10
       31 LOADK                            R10 K11 ["\nURL: %*"]
       32 GETTABLEKS                       R12 R0 K9 ["requestOptions"]
       34 GETTABLEKS                       R12 R12 K12 ["Url"]
       36 NAMECALL                         R10 R10 K7 ["format"]
       38 CALL                             R10 2 1
       39 MOVE                             R8 R10
       40 LOADK                            R10 K13 ["\nBody:\n%*"]
       41 MOVE                             R12 R2
       42 NAMECALL                         R10 R10 K7 ["format"]
       44 CALL                             R10 2 1
       45 MOVE                             R9 R10
       46 CONCAT                           R4 R5 R9
       47 CALL                             R3 1 0
       48 GETTABLEKS                       R2 R0 K0 ["responseBody"]
       50 RETURN                           R2 1

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["TypedDash"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["TypedNetworking"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R1 K10 ["pretty"]
       27 DUPCLOSURE                       R4 K11 [PROTO_1]
       28 CAPTURE                          VAL R3
       29 RETURN                           R4 1
