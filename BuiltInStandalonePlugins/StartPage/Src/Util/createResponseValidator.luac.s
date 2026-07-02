PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        3 CALL                             R1 1 1
        4 JUMPIFNOT                        R1 ; [+40]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R3 R0 K0 ["responseBody"]
        8 DUPTABLE                         R4 K3 [{["multiline"] = True}]
        9 CALL                             R2 2 1
       10 GETIMPORT                        R3 K5 [error]
       12 LOADK                            R5 K6 ["Response does not match schema"]
       13 LOADK                            R10 K7 ["\nReason: %*"]
       14 MOVE                             R12 R1
       15 NAMECALL                         R10 R10 K8 ["format"]
       17 CALL                             R10 2 1
       18 MOVE                             R6 R10
       19 LOADK                            R10 K9 ["\nMethod: %*"]
       20 GETTABLEKS                       R12 R0 K10 ["requestOptions"]
       22 GETTABLEKS                       R12 R12 K11 ["Method"]
       24 NAMECALL                         R10 R10 K8 ["format"]
       26 CALL                             R10 2 1
       27 MOVE                             R7 R10
       28 LOADK                            R10 K12 ["\nURL: %*"]
       29 GETTABLEKS                       R12 R0 K10 ["requestOptions"]
       31 GETTABLEKS                       R12 R12 K13 ["Url"]
       33 NAMECALL                         R10 R10 K8 ["format"]
       35 CALL                             R10 2 1
       36 MOVE                             R8 R10
       37 LOADK                            R10 K14 ["\nBody:\n%*"]
       38 MOVE                             R12 R2
       39 NAMECALL                         R10 R10 K8 ["format"]
       41 CALL                             R10 2 1
       42 MOVE                             R9 R10
       43 CONCAT                           R4 R5 R9
       44 CALL                             R3 1 0
       45 GETTABLEKS                       R2 R0 K0 ["responseBody"]
       47 RETURN                           R2 1

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
