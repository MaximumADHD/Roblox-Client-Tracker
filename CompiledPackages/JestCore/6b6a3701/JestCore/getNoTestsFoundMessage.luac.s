PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["toJSBoolean"]
        3 GETTABLEKS                       R3 R1 K1 ["passWithNoTests"]
        5 CALL                             R2 1 1
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K0 ["toJSBoolean"]
        9 GETTABLEKS                       R4 R1 K1 ["passWithNoTests"]
       11 CALL                             R3 1 1
       12 JUMPIFNOT                        R3 ; [+8]
       13 DUPTABLE                         R3 K4 [{"exitWith0", "message"}]
       14 SETTABLEKS                       R2 R3 K2 ["exitWith0"]
       16 GETUPVAL                         R4 1
       17 CALL                             R4 0 1
       18 SETTABLEKS                       R4 R3 K3 ["message"]
       20 RETURN                           R3 1
       21 DUPTABLE                         R3 K4 [{"exitWith0", "message"}]
       22 SETTABLEKS                       R2 R3 K2 ["exitWith0"]
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R5 R6 K0 ["toJSBoolean"]
       27 LOADB                            R6 1
       28 LENGTH                           R7 R0
       29 JUMPIFEQKN                       R7 K5 [1] ; [+3]
       31 GETTABLEKS                       R6 R1 K6 ["verbose"]
       33 CALL                             R5 1 1
       34 JUMPIFNOT                        R5 ; [+6]
       35 GETUPVAL                         R4 2
       36 MOVE                             R5 R0
       37 MOVE                             R6 R1
       38 MOVE                             R7 R2
       39 CALL                             R4 3 1
       40 JUMP                             ; [+5]
       41 GETUPVAL                         R4 3
       42 MOVE                             R5 R0
       43 MOVE                             R6 R1
       44 MOVE                             R7 R2
       45 CALL                             R4 3 1
       46 SETTABLEKS                       R4 R3 K3 ["message"]
       48 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Boolean"]
       14 NEWTABLE                         R3 1 0
       16 GETIMPORT                        R4 K4 [require]
       18 GETTABLEKS                       R5 R0 K7 ["JestTypes"]
       20 CALL                             R4 1 1
       21 GETIMPORT                        R6 K4 [require]
       23 GETIMPORT                        R9 K1 [script]
       25 GETTABLEKS                       R8 R9 K2 ["Parent"]
       27 GETTABLEKS                       R7 R8 K8 ["getNoTestFound"]
       29 CALL                             R6 1 1
       30 GETTABLEKS                       R5 R6 K9 ["default"]
       32 GETIMPORT                        R7 K4 [require]
       34 GETIMPORT                        R10 K1 [script]
       36 GETTABLEKS                       R9 R10 K2 ["Parent"]
       38 GETTABLEKS                       R8 R9 K10 ["getNoTestFoundPassWithNoTests"]
       40 CALL                             R7 1 1
       41 GETTABLEKS                       R6 R7 K9 ["default"]
       43 GETIMPORT                        R8 K4 [require]
       45 GETIMPORT                        R11 K1 [script]
       47 GETTABLEKS                       R10 R11 K2 ["Parent"]
       49 GETTABLEKS                       R9 R10 K11 ["getNoTestFoundVerbose"]
       51 CALL                             R8 1 1
       52 GETTABLEKS                       R7 R8 K9 ["default"]
       54 GETIMPORT                        R8 K4 [require]
       56 GETIMPORT                        R11 K1 [script]
       58 GETTABLEKS                       R10 R11 K2 ["Parent"]
       60 GETTABLEKS                       R9 R10 K12 ["types"]
       62 CALL                             R8 1 1
       63 DUPCLOSURE                       R9 K13 [PROTO_0]
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R5
       68 SETTABLEKS                       R9 R3 K9 ["default"]
       70 RETURN                           R3 1
