PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["defaultTokens"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K1 ["rules"]
       10 GETTABLEKS                       R2 R2 K2 ["ListLayoutRules"]
       12 CALL                             R2 0 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K1 ["rules"]
       16 GETTABLEKS                       R3 R3 K3 ["ListLayoutSpacingRules"]
       18 GETTABLEKS                       R4 R1 K4 ["gaps"]
       20 GETTABLEKS                       R5 R1 K5 ["gutters"]
       22 CALL                             R3 2 1
       23 NEWTABLE                         R4 0 2
       25 MOVE                             R7 R2
       26 MOVE                             R8 R3
       27 SETLIST                          R4 R7 2 [1]
       29 LOADNIL                          R5
       30 LOADNIL                          R6
       31 FORGPREP                         R4
       32 MOVE                             R9 R8
       33 LOADNIL                          R10
       34 LOADNIL                          R11
       35 FORGPREP                         R9
       36 GETTABLEKS                       R14 R13 K6 ["pseudo"]
       38 JUMPIFNOTEQKS                    R14 K7 ["UIListLayout"] ; [+8]
       40 GETTABLEKS                       R14 R13 K8 ["tag"]
       42 JUMPIFNOT                        R14 ; [+4]
       43 GETTABLEKS                       R14 R13 K8 ["tag"]
       45 LOADB                            R15 1
       46 SETTABLE                         R15 R0 R14
       47 FORGLOOP                         R9 2 ; [-12]
       49 FORGLOOP                         R4 2 ; [-18]
       51 RETURN                           R0 1

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
       20 GETTABLEKS                       R3 R3 K10 ["formatTokens"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["StyleSheet"]
       27 GETTABLEKS                       R4 R4 K11 ["Rules"]
       29 GETTABLEKS                       R4 R4 K12 ["staticRules"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K13 [PROTO_0]
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R3
       36 RETURN                           R4 1
