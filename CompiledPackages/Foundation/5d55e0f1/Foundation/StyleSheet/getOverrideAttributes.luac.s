PROTO_0:
        0 LOADK                            R3 K0 ["%."]
        1 LOADK                            R4 K1 [""]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 1
        5 LOADK                            R3 K3 ["_"]
        6 LOADK                            R4 K1 [""]
        7 NAMECALL                         R1 R1 K2 ["gsub"]
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1

PROTO_1:
        0 FASTCALL1                        TYPE R2 ; [+3]
        1 MOVE                             R4 R2
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+19]
        7 MOVE                             R3 R2
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 GETUPVAL                         R8 0
       12 MOVE                             R9 R0
       13 MOVE                             R11 R1
       14 FASTCALL1                        TOSTRING R6 ; [+3]
       15 MOVE                             R13 R6
       16 GETIMPORT                        R12 K4 [tostring]
       18 CALL                             R12 1 1
       19 CONCAT                           R10 R11 R12
       20 MOVE                             R11 R7
       21 CALL                             R8 3 0
       22 FORGLOOP                         R3 2 ; [-12]
       24 RETURN                           R0 0
       25 SETTABLE                         R2 R0 R1
       26 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R3 0 0
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K0 ["FoundationTokenOverrides"]
        5 JUMPIF                           R4 ; [+1]
        6 RETURN                           R3 1
        7 JUMPIFNOT                        R2 ; [+5]
        8 GETIMPORT                        R4 K2 [next]
       10 MOVE                             R5 R2
       11 CALL                             R4 1 1
       12 JUMPIF                           R4 ; [+1]
       13 RETURN                           R3 1
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R4 R5 K3 ["getTokens"]
       17 MOVE                             R5 R0
       18 MOVE                             R6 R1
       19 LOADN                            R7 1
       20 CALL                             R4 3 1
       21 MOVE                             R5 R2
       22 LOADNIL                          R6
       23 LOADNIL                          R7
       24 FORGPREP                         R5
       25 GETUPVAL                         R11 2
       26 GETTABLEKS                       R10 R11 K4 ["getTokenValue"]
       28 MOVE                             R11 R4
       29 MOVE                             R12 R9
       30 CALL                             R10 2 1
       31 JUMPIFEQKNIL                     R10 ; [+15]
       33 GETUPVAL                         R11 3
       34 MOVE                             R12 R3
       35 LOADK                            R15 K5 ["%."]
       36 LOADK                            R16 K6 [""]
       37 NAMECALL                         R13 R8 K7 ["gsub"]
       39 CALL                             R13 3 1
       40 LOADK                            R15 K8 ["_"]
       41 LOADK                            R16 K6 [""]
       42 NAMECALL                         R13 R13 K7 ["gsub"]
       44 CALL                             R13 3 1
       45 MOVE                             R14 R10
       46 CALL                             R11 3 0
       47 FORGLOOP                         R5 2 ; [-23]
       49 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R3 K7 ["Device"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Utility"]
       18 GETTABLEKS                       R3 R4 K9 ["Flags"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Enums"]
       25 GETTABLEKS                       R4 R5 K10 ["Theme"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R8 R0 K11 ["Providers"]
       32 GETTABLEKS                       R7 R8 K12 ["Style"]
       34 GETTABLEKS                       R6 R7 K13 ["Tokens"]
       36 GETTABLEKS                       R5 R6 K14 ["TokenProcessingUtilities"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R8 R0 K11 ["Providers"]
       43 GETTABLEKS                       R7 R8 K12 ["Style"]
       45 GETTABLEKS                       R6 R7 K13 ["Tokens"]
       47 CALL                             R5 1 1
       48 DUPCLOSURE                       R6 K15 [PROTO_0]
       49 DUPCLOSURE                       R7 K16 [PROTO_1]
       50 CAPTURE                          VAL R7
       51 DUPCLOSURE                       R8 K17 [PROTO_2]
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R7
       56 RETURN                           R8 1
