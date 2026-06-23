PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["defaultTokens"]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R1
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K1 ["rulesGenerator"]
       11 MOVE                             R4 R1
       12 MOVE                             R5 R2
       13 CALL                             R3 2 2
       14 MOVE                             R5 R4
       15 LOADNIL                          R6
       16 LOADNIL                          R7
       17 FORGPREP                         R5
       18 GETTABLEKS                       R10 R9 K2 ["pseudo"]
       20 JUMPIFNOTEQKS                    R10 K3 ["UIListLayout"] ; [+8]
       22 GETTABLEKS                       R10 R9 K4 ["tag"]
       24 JUMPIFNOT                        R10 ; [+4]
       25 GETTABLEKS                       R10 R9 K4 ["tag"]
       27 LOADB                            R11 1
       28 SETTABLE                         R11 R0 R10
       29 FORGLOOP                         R5 2 ; [-12]
       31 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Providers"]
       11 GETTABLEKS                       R2 R2 K7 ["Style"]
       13 GETTABLEKS                       R2 R2 K8 ["Tokens"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["StyleSheet"]
       20 GETTABLEKS                       R3 R3 K10 ["Rules"]
       22 GETTABLEKS                       R3 R3 K11 ["attributeRules"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K9 ["StyleSheet"]
       29 GETTABLEKS                       R4 R4 K12 ["formatTokens"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K13 [PROTO_0]
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R2
       36 RETURN                           R4 1
