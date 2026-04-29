PROTO_0:
        0 MOVE                             R4 R1
        1 JUMPIF                           R4 ; [+3]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K0 ["Desktop"]
        5 ORK                              R5 R2 K1 [1]
        6 GETIMPORT                        R6 K4 [Instance.new]
        8 LOADK                            R7 K5 ["StyleSheet"]
        9 CALL                             R6 1 1
       10 JUMPIFEQKNIL                     R3 ; [+15]
       12 LOADK                            R8 K6 ["%*-%*-%*-%*"]
       13 MOVE                             R10 R0
       14 MOVE                             R11 R4
       15 MOVE                             R12 R5
       16 FASTCALL1                        TOSTRING R3 ; [+3]
       17 MOVE                             R14 R3
       18 GETIMPORT                        R13 K8 [tostring]
       20 CALL                             R13 1 1
       21 NAMECALL                         R8 R8 K9 ["format"]
       23 CALL                             R8 5 1
       24 MOVE                             R7 R8
       25 JUMP                             ; [+8]
       26 LOADK                            R8 K10 ["%*-%*-%*"]
       27 MOVE                             R10 R0
       28 MOVE                             R11 R4
       29 MOVE                             R12 R5
       30 NAMECALL                         R8 R8 K9 ["format"]
       32 CALL                             R8 4 1
       33 MOVE                             R7 R8
       34 SETTABLEKS                       R7 R6 K11 ["Name"]
       36 GETUPVAL                         R7 1
       37 SETTABLEKS                       R7 R6 K12 ["Parent"]
       39 DUPTABLE                         R7 K22 [{"theme", "device", "scale", "tokenOverrides", "overrideAttributes", "instance", "tags", "rules", "attributes"}]
       40 SETTABLEKS                       R0 R7 K13 ["theme"]
       42 SETTABLEKS                       R4 R7 K14 ["device"]
       44 SETTABLEKS                       R5 R7 K15 ["scale"]
       46 SETTABLEKS                       R3 R7 K16 ["tokenOverrides"]
       48 GETUPVAL                         R8 2
       49 MOVE                             R9 R0
       50 MOVE                             R10 R4
       51 MOVE                             R11 R3
       52 CALL                             R8 3 1
       53 SETTABLEKS                       R8 R7 K17 ["overrideAttributes"]
       55 SETTABLEKS                       R6 R7 K18 ["instance"]
       57 NEWTABLE                         R8 0 0
       59 SETTABLEKS                       R8 R7 K19 ["tags"]
       61 GETUPVAL                         R8 3
       62 MOVE                             R9 R0
       63 MOVE                             R10 R4
       64 CALL                             R8 2 1
       65 SETTABLEKS                       R8 R7 K20 ["rules"]
       67 NEWTABLE                         R8 0 0
       69 SETTABLEKS                       R8 R7 K21 ["attributes"]
       71 RETURN                           R7 1

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
       11 JUMPIF                           R7 ; [+36]
       12 GETTABLEKS                       R8 R0 K2 ["overrideAttributes"]
       14 GETTABLEKS                       R9 R6 K1 ["name"]
       16 GETTABLE                         R7 R8 R9
       17 JUMPIFEQKNIL                     R7 ; [+3]
       19 MOVE                             R8 R7
       20 JUMP                             ; [+2]
       21 GETTABLEKS                       R8 R6 K3 ["value"]
       23 GETUPVAL                         R11 0
       24 GETTABLEKS                       R10 R11 K4 ["FoundationDisableTokenScaling"]
       26 JUMPIFNOT                        R10 ; [+2]
       27 MOVE                             R9 R8
       28 JUMP                             ; [+5]
       29 GETUPVAL                         R9 1
       30 MOVE                             R10 R8
       31 GETTABLEKS                       R11 R0 K5 ["scale"]
       33 CALL                             R9 2 1
       34 GETTABLEKS                       R10 R0 K0 ["attributes"]
       36 GETTABLEKS                       R11 R6 K1 ["name"]
       38 LOADB                            R12 1
       39 SETTABLE                         R12 R10 R11
       40 GETTABLEKS                       R10 R0 K6 ["instance"]
       42 GETTABLEKS                       R12 R6 K1 ["name"]
       44 MOVE                             R13 R9
       45 NAMECALL                         R10 R10 K7 ["SetAttribute"]
       47 CALL                             R10 3 0
       48 FORGLOOP                         R2 2 ; [-43]
       50 RETURN                           R0 0

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
        0 MOVE                             R4 R1
        1 JUMPIF                           R4 ; [+3]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K0 ["Desktop"]
        5 ORK                              R5 R2 K1 [1]
        6 GETUPVAL                         R6 1
        7 LOADNIL                          R7
        8 LOADNIL                          R8
        9 FORGPREP                         R6
       10 GETTABLEKS                       R11 R10 K2 ["theme"]
       12 JUMPIFNOTEQ                      R11 R0 ; [+14]
       14 GETTABLEKS                       R11 R10 K3 ["device"]
       16 JUMPIFNOTEQ                      R11 R4 ; [+10]
       18 GETTABLEKS                       R11 R10 K4 ["scale"]
       20 JUMPIFNOTEQ                      R11 R5 ; [+6]
       22 GETTABLEKS                       R11 R10 K5 ["tokenOverrides"]
       24 JUMPIFNOTEQ                      R11 R3 ; [+2]
       26 RETURN                           R9 1
       27 FORGLOOP                         R6 2 ; [-18]
       29 GETUPVAL                         R6 2
       30 MOVE                             R7 R0
       31 MOVE                             R8 R4
       32 MOVE                             R9 R5
       33 MOVE                             R10 R3
       34 CALL                             R6 4 1
       35 GETUPVAL                         R7 1
       36 GETTABLEKS                       R8 R6 K6 ["instance"]
       38 SETTABLE                         R6 R7 R8
       39 GETTABLEKS                       R7 R6 K6 ["instance"]
       41 RETURN                           R7 1

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
        9 GETTABLEKS                       R3 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R3 K7 ["Device"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Enums"]
       18 GETTABLEKS                       R3 R4 K8 ["Theme"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Providers"]
       25 GETTABLEKS                       R5 R6 K10 ["Style"]
       27 GETTABLEKS                       R4 R5 K11 ["Tokens"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETIMPORT                        R8 K1 [script]
       34 GETTABLEKS                       R7 R8 K12 ["Parent"]
       36 GETTABLEKS                       R6 R7 K13 ["Rules"]
       38 GETTABLEKS                       R5 R6 K14 ["Types"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R7 R0 K15 ["Utility"]
       45 GETTABLEKS                       R6 R7 K16 ["Flags"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R8 R0 K15 ["Utility"]
       52 GETTABLEKS                       R7 R8 K17 ["getGeneratedRules"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETIMPORT                        R10 K1 [script]
       59 GETTABLEKS                       R9 R10 K12 ["Parent"]
       61 GETTABLEKS                       R8 R9 K18 ["getOverrideAttributes"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R10 R0 K15 ["Utility"]
       68 GETTABLEKS                       R9 R10 K19 ["scaleValue"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K22 [Instance.new]
       73 LOADK                            R10 K23 ["Folder"]
       74 CALL                             R9 1 1
       75 LOADK                            R10 K24 ["FoundationStyleSheets"]
       76 SETTABLEKS                       R10 R9 K25 ["Name"]
       78 SETTABLEKS                       R0 R9 K12 ["Parent"]
       80 NEWTABLE                         R10 0 0
       82 DUPCLOSURE                       R11 K26 [PROTO_0]
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R6
       87 DUPCLOSURE                       R12 K27 [PROTO_1]
       88 DUPCLOSURE                       R13 K28 [PROTO_2]
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R8
       91 DUPCLOSURE                       R14 K29 [PROTO_3]
       92 CAPTURE                          VAL R12
       93 CAPTURE                          VAL R13
       94 DUPCLOSURE                       R15 K30 [PROTO_4]
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R11
       98 DUPCLOSURE                       R16 K31 [PROTO_5]
       99 CAPTURE                          VAL R10
      100 CAPTURE                          VAL R14
      101 DUPTABLE                         R17 K34 [{"getStyleSheet", "addStyleTags"}]
      102 SETTABLEKS                       R15 R17 K32 ["getStyleSheet"]
      104 SETTABLEKS                       R16 R17 K33 ["addStyleTags"]
      106 RETURN                           R17 1
