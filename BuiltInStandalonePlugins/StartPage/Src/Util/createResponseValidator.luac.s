PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        3 CALL                             R1 1 1
        4 JUMPIFNOT                        R1 ; [+36]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R3 R0 K0 ["responseBody"]
        8 DUPTABLE                         R4 K3 [{["multiline"] = True}]
        9 CALL                             R2 2 1
       10 GETIMPORT                        R3 K5 [error]
       12 LOADK                            R5 K6 ["Response does not match schema"]
       13 LOADK                            R6 K7 ["\nReason: %*"]
       14 MOVE                             R8 R1
       15 NAMECALL                         R6 R6 K8 ["format"]
       17 CALL                             R6 2 1
       18 LOADK                            R7 K9 ["\nMethod: %*"]
       19 GETTABLEKS                       R9 R0 K10 ["requestOptions"]
       21 GETTABLEKS                       R9 R9 K11 ["Method"]
       23 NAMECALL                         R7 R7 K8 ["format"]
       25 CALL                             R7 2 1
       26 LOADK                            R8 K12 ["\nURL: %*"]
       27 GETTABLEKS                       R10 R0 K10 ["requestOptions"]
       29 GETTABLEKS                       R10 R10 K13 ["Url"]
       31 NAMECALL                         R8 R8 K8 ["format"]
       33 CALL                             R8 2 1
       34 LOADK                            R9 K14 ["\nBody:\n%*"]
       35 MOVE                             R11 R2
       36 NAMECALL                         R9 R9 K8 ["format"]
       38 CALL                             R9 2 1
       39 CONCAT                           R4 R5 R9
       40 CALL                             R3 1 0
       41 GETTABLEKS                       R2 R0 K0 ["responseBody"]
       43 RETURN                           R2 1

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
