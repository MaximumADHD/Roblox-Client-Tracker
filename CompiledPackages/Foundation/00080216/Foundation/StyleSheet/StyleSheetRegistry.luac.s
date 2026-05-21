PROTO_0:
        0 MOVE                             R3 R1
        1 JUMPIF                           R3 ; [+3]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["Desktop"]
        5 ORK                              R4 R2 K1 [1]
        6 GETIMPORT                        R5 K4 [Instance.new]
        8 LOADK                            R6 K5 ["StyleSheet"]
        9 CALL                             R5 1 1
       10 LOADK                            R7 K6 ["%*-%*-%*"]
       11 MOVE                             R9 R0
       12 MOVE                             R10 R3
       13 MOVE                             R11 R4
       14 NAMECALL                         R7 R7 K7 ["format"]
       16 CALL                             R7 4 1
       17 MOVE                             R6 R7
       18 SETTABLEKS                       R6 R5 K8 ["Name"]
       20 GETUPVAL                         R6 1
       21 SETTABLEKS                       R6 R5 K9 ["Parent"]
       23 DUPTABLE                         R6 K17 [{"theme", "device", "scale", "instance", "tags", "rules", "attributes"}]
       24 SETTABLEKS                       R0 R6 K10 ["theme"]
       26 SETTABLEKS                       R3 R6 K11 ["device"]
       28 SETTABLEKS                       R4 R6 K12 ["scale"]
       30 SETTABLEKS                       R5 R6 K13 ["instance"]
       32 NEWTABLE                         R7 0 0
       34 SETTABLEKS                       R7 R6 K14 ["tags"]
       36 GETUPVAL                         R7 2
       37 MOVE                             R8 R0
       38 MOVE                             R9 R3
       39 CALL                             R7 2 1
       40 SETTABLEKS                       R7 R6 K15 ["rules"]
       42 NEWTABLE                         R7 0 0
       44 SETTABLEKS                       R7 R6 K16 ["attributes"]
       46 RETURN                           R6 1

PROTO_1:
        0 LOADK                            R3 K0 ["."]
        1 MOVE                             R4 R1
        2 CONCAT                           R2 R3 R4
        3 GETTABLEKS                       R4 R0 K1 ["modifier"]
        5 JUMPIFEQKNIL                     R4 ; [+6]
        7 LOADK                            R4 K2 [":"]
        8 GETTABLEKS                       R5 R0 K1 ["modifier"]
       10 CONCAT                           R3 R4 R5
       11 JUMP                             ; [+1]
       12 LOADK                            R3 K3 [""]
       13 GETTABLEKS                       R5 R0 K4 ["pseudo"]
       15 JUMPIFEQKNIL                     R5 ; [+6]
       17 LOADK                            R5 K5 [" ::"]
       18 GETTABLEKS                       R6 R0 K4 ["pseudo"]
       20 CONCAT                           R4 R5 R6
       21 JUMP                             ; [+1]
       22 LOADK                            R4 K3 [""]
       23 MOVE                             R6 R2
       24 MOVE                             R7 R3
       25 MOVE                             R8 R4
       26 CONCAT                           R5 R6 R8
       27 GETTABLEKS                       R6 R0 K4 ["pseudo"]
       29 JUMPIFEQKNIL                     R6 ; [+9]
       31 MOVE                             R6 R5
       32 LOADK                            R7 K6 [", "]
       33 MOVE                             R8 R2
       34 MOVE                             R9 R3
       35 LOADK                            R10 K7 [" > "]
       36 GETTABLEKS                       R11 R0 K4 ["pseudo"]
       38 CONCAT                           R5 R6 R11
       39 GETIMPORT                        R6 K10 [Instance.new]
       41 LOADK                            R7 K11 ["StyleRule"]
       42 CALL                             R6 1 1
       43 SETTABLEKS                       R5 R6 K12 ["Name"]
       45 GETTABLEKS                       R8 R0 K14 ["priority"]
       47 ORK                              R7 R8 K13 [1]
       48 SETTABLEKS                       R7 R6 K15 ["Priority"]
       50 SETTABLEKS                       R5 R6 K16 ["Selector"]
       52 GETTABLEKS                       R9 R0 K17 ["properties"]
       54 NAMECALL                         R7 R6 K18 ["SetProperties"]
       56 CALL                             R7 2 0
       57 RETURN                           R6 1

PROTO_2:
        0 JUMPIF                           R1 ; [+1]
        1 RETURN                           R0 0
        2 MOVE                             R2 R1
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R8 R0 K0 ["attributes"]
        8 GETTABLEKS                       R9 R6 K1 ["name"]
       10 GETTABLE                         R7 R8 R9
       11 JUMPIF                           R7 ; [+27]
       12 GETUPVAL                         R8 0
       13 GETTABLEKS                       R8 R8 K2 ["FoundationDisableTokenScaling"]
       15 JUMPIFNOT                        R8 ; [+3]
       16 GETTABLEKS                       R7 R6 K3 ["value"]
       18 JUMP                             ; [+6]
       19 GETUPVAL                         R7 1
       20 GETTABLEKS                       R8 R6 K3 ["value"]
       22 GETTABLEKS                       R9 R0 K4 ["scale"]
       24 CALL                             R7 2 1
       25 GETTABLEKS                       R8 R0 K0 ["attributes"]
       27 GETTABLEKS                       R9 R6 K1 ["name"]
       29 LOADB                            R10 1
       30 SETTABLE                         R10 R8 R9
       31 GETTABLEKS                       R8 R0 K5 ["instance"]
       33 GETTABLEKS                       R10 R6 K1 ["name"]
       35 MOVE                             R11 R7
       36 NAMECALL                         R8 R8 K6 ["SetAttribute"]
       38 CALL                             R8 3 0
       39 FORGLOOP                         R2 2 ; [-34]
       41 RETURN                           R0 0

PROTO_3:
        0 MOVE                             R2 R1
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLEKS                       R8 R0 K0 ["tags"]
        6 GETTABLE                         R7 R8 R6
        7 JUMPIF                           R7 ; [+45]
        8 GETTABLEKS                       R8 R0 K1 ["rules"]
       10 GETTABLE                         R7 R8 R6
       11 JUMPIFNOT                        R7 ; [+41]
       12 GETUPVAL                         R8 0
       13 MOVE                             R9 R7
       14 MOVE                             R10 R6
       15 CALL                             R8 2 1
       16 GETTABLEKS                       R9 R0 K2 ["instance"]
       18 SETTABLEKS                       R9 R8 K3 ["Parent"]
       20 GETUPVAL                         R9 1
       21 MOVE                             R10 R0
       22 GETTABLEKS                       R11 R7 K4 ["attributes"]
       24 CALL                             R9 2 0
       25 GETTABLEKS                       R9 R7 K5 ["children"]
       27 JUMPIFNOT                        R9 ; [+21]
       28 GETTABLEKS                       R9 R7 K5 ["children"]
       30 LOADNIL                          R10
       31 LOADNIL                          R11
       32 FORGPREP                         R9
       33 GETUPVAL                         R14 0
       34 MOVE                             R15 R13
       35 GETTABLEKS                       R16 R13 K6 ["tag"]
       37 CALL                             R14 2 1
       38 GETTABLEKS                       R15 R0 K2 ["instance"]
       40 SETTABLEKS                       R15 R14 K3 ["Parent"]
       42 GETUPVAL                         R15 1
       43 MOVE                             R16 R0
       44 GETTABLEKS                       R17 R13 K4 ["attributes"]
       46 CALL                             R15 2 0
       47 FORGLOOP                         R9 2 ; [-15]
       49 GETTABLEKS                       R9 R0 K0 ["tags"]
       51 LOADB                            R10 1
       52 SETTABLE                         R10 R9 R6
       53 FORGLOOP                         R2 2 ; [-50]
       55 RETURN                           R0 0

PROTO_4:
        0 MOVE                             R3 R1
        1 JUMPIF                           R3 ; [+3]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["Desktop"]
        5 ORK                              R4 R2 K1 [1]
        6 GETUPVAL                         R5 1
        7 LOADNIL                          R6
        8 LOADNIL                          R7
        9 FORGPREP                         R5
       10 GETTABLEKS                       R10 R9 K2 ["theme"]
       12 JUMPIFNOTEQ                      R10 R0 ; [+10]
       14 GETTABLEKS                       R10 R9 K3 ["device"]
       16 JUMPIFNOTEQ                      R10 R3 ; [+6]
       18 GETTABLEKS                       R10 R9 K4 ["scale"]
       20 JUMPIFNOTEQ                      R10 R4 ; [+2]
       22 RETURN                           R8 1
       23 FORGLOOP                         R5 2 ; [-14]
       25 GETUPVAL                         R5 2
       26 MOVE                             R6 R0
       27 MOVE                             R7 R3
       28 MOVE                             R8 R4
       29 CALL                             R5 3 1
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R7 R5 K5 ["instance"]
       33 SETTABLE                         R5 R6 R7
       34 GETTABLEKS                       R6 R5 K5 ["instance"]
       36 RETURN                           R6 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIF                           R2 ; [+4]
        3 GETIMPORT                        R3 K1 [error]
        5 LOADK                            R4 K2 ["StyleSheet not found in registry"]
        6 CALL                             R3 1 0
        7 GETUPVAL                         R3 1
        8 MOVE                             R4 R2
        9 MOVE                             R5 R1
       10 CALL                             R3 2 0
       11 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R2 K7 ["Device"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Enums"]
       18 GETTABLEKS                       R3 R3 K8 ["Theme"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K9 ["Parent"]
       27 GETTABLEKS                       R4 R4 K10 ["Rules"]
       29 GETTABLEKS                       R4 R4 K11 ["Types"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K12 ["Utility"]
       36 GETTABLEKS                       R5 R5 K13 ["Flags"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K12 ["Utility"]
       43 GETTABLEKS                       R6 R6 K14 ["getGeneratedRules"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K12 ["Utility"]
       50 GETTABLEKS                       R7 R7 K15 ["scaleValue"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K18 [Instance.new]
       55 LOADK                            R8 K19 ["Folder"]
       56 CALL                             R7 1 1
       57 LOADK                            R8 K20 ["FoundationStyleSheets"]
       58 SETTABLEKS                       R8 R7 K21 ["Name"]
       60 SETTABLEKS                       R0 R7 K9 ["Parent"]
       62 NEWTABLE                         R8 0 0
       64 DUPCLOSURE                       R9 K22 [PROTO_0]
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R5
       68 DUPCLOSURE                       R10 K23 [PROTO_1]
       69 DUPCLOSURE                       R11 K24 [PROTO_2]
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R6
       72 DUPCLOSURE                       R12 K25 [PROTO_3]
       73 CAPTURE                          VAL R10
       74 CAPTURE                          VAL R11
       75 DUPCLOSURE                       R13 K26 [PROTO_4]
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R9
       79 DUPCLOSURE                       R14 K27 [PROTO_5]
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R12
       82 DUPTABLE                         R15 K30 [{"getStyleSheet", "addStyleTags"}]
       83 SETTABLEKS                       R13 R15 K28 ["getStyleSheet"]
       85 SETTABLEKS                       R14 R15 K29 ["addStyleTags"]
       87 RETURN                           R15 1
