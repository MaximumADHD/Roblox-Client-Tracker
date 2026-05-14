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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Change"]
        6 GETTABLEKS                       R2 R2 K2 ["Enabled"]
        8 GETTABLE                         R0 R1 R2
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K3 ["widget"]
       12 GETTABLEKS                       R1 R1 K2 ["Enabled"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R6 R1 K1 ["Title"]
        2 ORK                              R5 R6 K0 [""]
        3 GETTABLEKS                       R6 R1 K2 ["Name"]
        5 JUMPIF                           R6 ; [+5]
        6 LOADK                            R8 K3 ["%s"]
        7 LOADK                            R9 K0 [""]
        8 NAMECALL                         R6 R5 K4 ["gsub"]
       10 CALL                             R6 3 1
       11 GETTABLEKS                       R8 R1 K5 ["Id"]
       13 OR                               R7 R8 R6
       14 MOVE                             R2 R5
       15 MOVE                             R3 R6
       16 MOVE                             R4 R7
       17 GETUPVAL                         R5 0
       18 MOVE                             R6 R0
       19 MOVE                             R7 R4
       20 CALL                             R5 2 1
       21 SETTABLEKS                       R5 R0 K6 ["widget"]
       23 GETTABLEKS                       R5 R0 K6 ["widget"]
       25 LOADK                            R7 K7 ["PluginGui"]
       26 NAMECALL                         R5 R5 K8 ["IsA"]
       28 CALL                             R5 2 1
       29 JUMPIFNOT                        R5 ; [+4]
       30 GETTABLEKS                       R5 R0 K6 ["widget"]
       32 SETTABLEKS                       R2 R5 K1 ["Title"]
       34 GETTABLEKS                       R5 R0 K6 ["widget"]
       36 SETTABLEKS                       R3 R5 K2 ["Name"]
       38 GETTABLEKS                       R5 R0 K6 ["widget"]
       40 GETTABLEKS                       R6 R1 K9 ["ZIndexBehavior"]
       42 JUMPIF                           R6 ; [+2]
       43 GETIMPORT                        R6 K12 [Enum.ZIndexBehavior.Global]
       45 SETTABLEKS                       R6 R5 K9 ["ZIndexBehavior"]
       47 GETTABLEKS                       R6 R0 K13 ["props"]
       49 GETUPVAL                         R7 1
       50 GETTABLEKS                       R7 R7 K14 ["Ref"]
       52 GETTABLE                         R5 R6 R7
       53 JUMPIFNOT                        R5 ; [+9]
       54 GETTABLEKS                       R6 R0 K13 ["props"]
       56 GETUPVAL                         R7 1
       57 GETTABLEKS                       R7 R7 K14 ["Ref"]
       59 GETTABLE                         R5 R6 R7
       60 GETTABLEKS                       R6 R0 K6 ["widget"]
       62 CALL                             R5 1 0
       63 GETTABLEKS                       R6 R0 K13 ["props"]
       65 GETUPVAL                         R7 1
       66 GETTABLEKS                       R7 R7 K15 ["Change"]
       68 GETTABLEKS                       R7 R7 K16 ["Enabled"]
       70 GETTABLE                         R5 R6 R7
       71 JUMPIFNOT                        R5 ; [+14]
       72 GETTABLEKS                       R5 R0 K6 ["widget"]
       74 LOADK                            R7 K16 ["Enabled"]
       75 NAMECALL                         R5 R5 K17 ["GetPropertyChangedSignal"]
       77 CALL                             R5 2 1
       78 NEWCLOSURE                       R7 P0
       79 CAPTURE                          VAL R0
       80 CAPTURE                          UPVAL U1
       81 NAMECALL                         R5 R5 K18 ["Connect"]
       83 CALL                             R5 2 1
       84 SETTABLEKS                       R5 R0 K19 ["changedConnection"]
       86 RETURN                           R0 0

PROTO_3:
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
       36 JUMPIFEQ                         R6 R3 ; [+12]
       38 GETTABLEKS                       R9 R0 K7 ["widget"]
       40 LOADK                            R11 K8 ["PluginGui"]
       41 NAMECALL                         R9 R9 K9 ["IsA"]
       43 CALL                             R9 2 1
       44 JUMPIFNOT                        R9 ; [+4]
       45 GETTABLEKS                       R9 R0 K7 ["widget"]
       47 SETTABLEKS                       R6 R9 K1 ["Title"]
       49 JUMPIFEQ                         R7 R4 ; [+5]
       51 GETTABLEKS                       R9 R0 K7 ["widget"]
       53 SETTABLEKS                       R7 R9 K2 ["Name"]
       55 GETTABLEKS                       R9 R0 K6 ["props"]
       57 GETTABLEKS                       R9 R9 K10 ["ZIndexBehavior"]
       59 GETTABLEKS                       R10 R1 K10 ["ZIndexBehavior"]
       61 JUMPIFEQ                         R9 R10 ; [+9]
       63 GETTABLEKS                       R9 R0 K7 ["widget"]
       65 GETTABLEKS                       R10 R0 K6 ["props"]
       67 GETTABLEKS                       R10 R10 K10 ["ZIndexBehavior"]
       69 SETTABLEKS                       R10 R9 K10 ["ZIndexBehavior"]
       71 GETTABLEKS                       R9 R0 K6 ["props"]
       73 GETTABLEKS                       R9 R9 K11 ["Enabled"]
       75 GETTABLEKS                       R10 R1 K11 ["Enabled"]
       77 JUMPIFEQ                         R9 R10 ; [+9]
       79 GETTABLEKS                       R9 R0 K7 ["widget"]
       81 GETTABLEKS                       R10 R0 K6 ["props"]
       83 GETTABLEKS                       R10 R10 K11 ["Enabled"]
       85 SETTABLEKS                       R10 R9 K11 ["Enabled"]
       87 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["changedConnection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["changedConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 GETTABLEKS                       R1 R0 K2 ["widget"]
       10 JUMPIFNOT                        R1 ; [+5]
       11 GETTABLEKS                       R1 R0 K2 ["widget"]
       13 NAMECALL                         R1 R1 K3 ["Destroy"]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["PureComponent"]
        3 MOVE                             R4 R0
        4 NAMECALL                         R2 R2 K1 ["extend"]
        6 CALL                             R2 2 1
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U0
       10 SETTABLEKS                       R3 R2 K2 ["init"]
       12 DUPCLOSURE                       R3 K3 [PROTO_3]
       13 SETTABLEKS                       R3 R2 K4 ["didUpdate"]
       15 DUPCLOSURE                       R3 K5 [PROTO_4]
       16 CAPTURE                          UPVAL U0
       17 SETTABLEKS                       R3 R2 K6 ["render"]
       19 DUPCLOSURE                       R3 K7 [PROTO_5]
       20 SETTABLEKS                       R3 R2 K8 ["willUnmount"]
       22 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 DUPCLOSURE                       R3 K9 [PROTO_6]
       16 CAPTURE                          VAL R1
       17 RETURN                           R3 1
