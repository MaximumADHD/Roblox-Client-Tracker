PROTO_0:
        0 GETTABLEKS                       R2 R0 K1 ["Title"]
        2 ORK                              R1 R2 K0 [""]
        3 GETTABLEKS                       R2 R0 K2 ["Name"]
        5 JUMPIF                           R2 ; [+5]
        6 LOADK                            R4 K3 ["%s"]
        7 LOADK                            R5 K0 [""]
        8 NAMECALL                         R2 R1 K4 ["gsub"]
       10 CALL                             R2 3 1
       11 GETTABLEKS                       R4 R0 K5 ["Id"]
       13 OR                               R3 R4 R2
       14 RETURN                           R1 3

PROTO_1:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["props"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["Change"]
        7 GETTABLEKS                       R2 R2 K2 ["Enabled"]
        9 GETTABLE                         R0 R1 R2
       10 JUMPIFNOT                        R0 ; [+14]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K0 ["props"]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K1 ["Change"]
       17 GETTABLEKS                       R2 R2 K2 ["Enabled"]
       19 GETTABLE                         R0 R1 R2
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K3 ["widget"]
       23 GETVARARGS                       R2 -1
       24 CALL                             R0 -1 0
       25 RETURN                           R0 0

PROTO_2:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["props"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["Event"]
        7 GETTABLEKS                       R2 R2 K2 ["AncestryChanged"]
        9 GETTABLE                         R0 R1 R2
       10 JUMPIFNOT                        R0 ; [+14]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K0 ["props"]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K1 ["Event"]
       17 GETTABLEKS                       R2 R2 K2 ["AncestryChanged"]
       19 GETTABLE                         R0 R1 R2
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K3 ["widget"]
       23 GETVARARGS                       R2 -1
       24 CALL                             R0 -1 0
       25 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R2 K2 [{[1] = }]
        1 SETTABLEKS                       R2 R0 K3 ["state"]
        3 GETTABLEKS                       R6 R1 K5 ["Title"]
        5 ORK                              R5 R6 K4 [""]
        6 GETTABLEKS                       R6 R1 K6 ["Name"]
        8 JUMPIF                           R6 ; [+5]
        9 LOADK                            R8 K7 ["%s"]
       10 LOADK                            R9 K4 [""]
       11 NAMECALL                         R6 R5 K8 ["gsub"]
       13 CALL                             R6 3 1
       14 GETTABLEKS                       R8 R1 K9 ["Id"]
       16 OR                               R7 R8 R6
       17 MOVE                             R2 R5
       18 MOVE                             R3 R6
       19 MOVE                             R4 R7
       20 GETUPVAL                         R5 0
       21 MOVE                             R6 R0
       22 MOVE                             R7 R4
       23 CALL                             R5 2 1
       24 SETTABLEKS                       R5 R0 K10 ["widget"]
       26 GETTABLEKS                       R5 R0 K10 ["widget"]
       28 LOADK                            R7 K11 ["ScreenGui"]
       29 NAMECALL                         R5 R5 K12 ["IsA"]
       31 CALL                             R5 2 1
       32 JUMPIF                           R5 ; [+4]
       33 GETTABLEKS                       R5 R0 K10 ["widget"]
       35 SETTABLEKS                       R2 R5 K5 ["Title"]
       37 GETTABLEKS                       R5 R0 K10 ["widget"]
       39 SETTABLEKS                       R3 R5 K6 ["Name"]
       41 GETTABLEKS                       R5 R0 K10 ["widget"]
       43 GETTABLEKS                       R6 R1 K13 ["ZIndexBehavior"]
       45 JUMPIF                           R6 ; [+2]
       46 GETIMPORT                        R6 K16 [Enum.ZIndexBehavior.Global]
       48 SETTABLEKS                       R6 R5 K13 ["ZIndexBehavior"]
       50 GETTABLEKS                       R5 R0 K10 ["widget"]
       52 LOADK                            R7 K17 ["Enabled"]
       53 NAMECALL                         R5 R5 K18 ["GetPropertyChangedSignal"]
       55 CALL                             R5 2 1
       56 NEWCLOSURE                       R7 P0
       57 CAPTURE                          VAL R0
       58 CAPTURE                          UPVAL U1
       59 NAMECALL                         R5 R5 K19 ["connect"]
       61 CALL                             R5 2 0
       62 GETTABLEKS                       R5 R0 K10 ["widget"]
       64 GETTABLEKS                       R5 R5 K20 ["AncestryChanged"]
       66 NEWCLOSURE                       R7 P1
       67 CAPTURE                          VAL R0
       68 CAPTURE                          UPVAL U1
       69 NAMECALL                         R5 R5 K19 ["connect"]
       71 CALL                             R5 2 0
       72 GETTABLEKS                       R5 R1 K21 ["ForwardRef"]
       74 JUMPIFNOT                        R5 ; [+4]
       75 MOVE                             R6 R5
       76 GETTABLEKS                       R7 R0 K10 ["widget"]
       78 CALL                             R6 1 0
       79 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R7 R1 K1 ["Title"]
        2 ORK                              R6 R7 K0 [""]
        3 GETTABLEKS                       R7 R1 K2 ["Name"]
        5 JUMPIF                           R7 ; [+5]
        6 LOADK                            R9 K3 ["%s"]
        7 LOADK                            R10 K0 [""]
        8 NAMECALL                         R7 R6 K4 ["gsub"]
       10 CALL                             R7 3 1
       11 GETTABLEKS                       R9 R1 K5 ["Id"]
       13 OR                               R8 R9 R7
       14 MOVE                             R3 R6
       15 MOVE                             R4 R7
       16 MOVE                             R5 R8
       17 GETTABLEKS                       R9 R0 K6 ["props"]
       19 GETTABLEKS                       R11 R9 K1 ["Title"]
       21 ORK                              R10 R11 K0 [""]
       22 GETTABLEKS                       R11 R9 K2 ["Name"]
       24 JUMPIF                           R11 ; [+5]
       25 LOADK                            R13 K3 ["%s"]
       26 LOADK                            R14 K0 [""]
       27 NAMECALL                         R11 R10 K4 ["gsub"]
       29 CALL                             R11 3 1
       30 GETTABLEKS                       R13 R9 K5 ["Id"]
       32 OR                               R12 R13 R11
       33 MOVE                             R6 R10
       34 MOVE                             R7 R11
       35 MOVE                             R8 R12
       36 JUMPIFEQ                         R6 R3 ; [+5]
       38 GETTABLEKS                       R9 R0 K7 ["widget"]
       40 SETTABLEKS                       R6 R9 K1 ["Title"]
       42 JUMPIFEQ                         R7 R4 ; [+5]
       44 GETTABLEKS                       R9 R0 K7 ["widget"]
       46 SETTABLEKS                       R7 R9 K2 ["Name"]
       48 GETTABLEKS                       R9 R0 K6 ["props"]
       50 GETTABLEKS                       R9 R9 K8 ["ZIndexBehavior"]
       52 GETTABLEKS                       R10 R1 K8 ["ZIndexBehavior"]
       54 JUMPIFEQ                         R9 R10 ; [+9]
       56 GETTABLEKS                       R9 R0 K7 ["widget"]
       58 GETTABLEKS                       R10 R0 K6 ["props"]
       60 GETTABLEKS                       R10 R10 K8 ["ZIndexBehavior"]
       62 SETTABLEKS                       R10 R9 K8 ["ZIndexBehavior"]
       64 GETTABLEKS                       R9 R0 K6 ["props"]
       66 GETTABLEKS                       R9 R9 K9 ["Enabled"]
       68 GETTABLEKS                       R10 R1 K9 ["Enabled"]
       70 JUMPIFEQ                         R9 R10 ; [+9]
       72 GETTABLEKS                       R9 R0 K7 ["widget"]
       74 GETTABLEKS                       R10 R0 K6 ["props"]
       76 GETTABLEKS                       R10 R10 K9 ["Enabled"]
       78 SETTABLEKS                       R10 R9 K9 ["Enabled"]
       80 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["Portal"]
        6 DUPTABLE                         R3 K3 [{"target"}]
        7 GETTABLEKS                       R4 R0 K4 ["widget"]
        9 SETTABLEKS                       R4 R3 K2 ["target"]
       11 GETTABLEKS                       R5 R0 K5 ["props"]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K6 ["Children"]
       16 GETTABLE                         R4 R5 R6
       17 CALL                             R1 3 -1
       18 RETURN                           R1 -1

PROTO_6:
        0 DUPTABLE                         R3 K1 [{"pluginGui"}]
        1 GETTABLEKS                       R4 R0 K2 ["widget"]
        3 SETTABLEKS                       R4 R3 K0 ["pluginGui"]
        5 NAMECALL                         R1 R0 K3 ["setState"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["widget"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["widget"]
        5 NAMECALL                         R1 R1 K1 ["Destroy"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["PureComponent"]
        3 MOVE                             R4 R0
        4 NAMECALL                         R2 R2 K1 ["extend"]
        6 CALL                             R2 2 1
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U0
       10 SETTABLEKS                       R3 R2 K2 ["init"]
       12 DUPCLOSURE                       R3 K3 [PROTO_4]
       13 SETTABLEKS                       R3 R2 K4 ["didUpdate"]
       15 DUPCLOSURE                       R3 K5 [PROTO_5]
       16 CAPTURE                          UPVAL U0
       17 SETTABLEKS                       R3 R2 K6 ["render"]
       19 DUPCLOSURE                       R3 K7 [PROTO_6]
       20 SETTABLEKS                       R3 R2 K8 ["didMount"]
       22 DUPCLOSURE                       R3 K9 [PROTO_7]
       23 SETTABLEKS                       R3 R2 K10 ["willUnmount"]
       25 GETUPVAL                         R3 1
       26 MOVE                             R4 R2
       27 CALL                             R3 1 1
       28 MOVE                             R2 R3
       29 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Framework"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K8 ["Wrappers"]
       25 GETTABLEKS                       R4 R4 K9 ["withForwardRef"]
       27 DUPCLOSURE                       R5 K10 [PROTO_0]
       28 DUPCLOSURE                       R6 K11 [PROTO_8]
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R4
       31 RETURN                           R6 1
