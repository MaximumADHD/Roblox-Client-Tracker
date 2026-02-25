PROTO_0:
        0 LOADK                            R3 K0 ["StyleCategory"]
        1 NAMECALL                         R1 R0 K1 ["GetAttribute"]
        3 CALL                             R1 2 1
        4 JUMPIFNOTEQKS                    R1 K2 ["Themes"] ; [+8]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K3 ["Standard"]
        9 GETTABLEKS                       R2 R3 K4 ["ThemeSheet"]
       11 CALL                             R2 0 -1
       12 RETURN                           R2 -1
       13 JUMPIFNOTEQKS                    R1 K5 ["Tokens"] ; [+8]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K3 ["Standard"]
       18 GETTABLEKS                       R2 R3 K6 ["TokenSheet"]
       20 CALL                             R2 0 -1
       21 RETURN                           R2 -1
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R3 R4 K8 ["getClassIcon"]
       25 GETTABLEKS                       R4 R0 K9 ["ClassName"]
       27 CALL                             R3 1 1
       28 ORK                              R2 R3 K7 [""]
       29 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 NEWTABLE                         R3 2 0
        6 GETTABLEKS                       R4 R0 K1 ["LayoutOrder"]
        8 SETTABLEKS                       R4 R3 K1 ["LayoutOrder"]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K2 ["Tag"]
       13 LOADK                            R5 K3 ["X-Fit X-RowS X-Middle TokenSource"]
       14 SETTABLE                         R5 R3 R4
       15 DUPTABLE                         R4 K6 [{"Icon", "NameLabel"}]
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R5 R6 K0 ["createElement"]
       19 GETUPVAL                         R6 2
       20 NEWTABLE                         R7 4 0
       22 GETTABLEKS                       R9 R0 K7 ["Source"]
       24 LOADK                            R12 K8 ["StyleCategory"]
       25 NAMECALL                         R10 R9 K9 ["GetAttribute"]
       27 CALL                             R10 2 1
       28 JUMPIFNOTEQKS                    R10 K10 ["Themes"] ; [+9]
       30 GETUPVAL                         R13 3
       31 GETTABLEKS                       R12 R13 K11 ["Standard"]
       33 GETTABLEKS                       R11 R12 K12 ["ThemeSheet"]
       35 CALL                             R11 0 1
       36 MOVE                             R8 R11
       37 JUMP                             ; [+17]
       38 JUMPIFNOTEQKS                    R10 K13 ["Tokens"] ; [+9]
       40 GETUPVAL                         R13 3
       41 GETTABLEKS                       R12 R13 K11 ["Standard"]
       43 GETTABLEKS                       R11 R12 K14 ["TokenSheet"]
       45 CALL                             R11 0 1
       46 MOVE                             R8 R11
       47 JUMP                             ; [+7]
       48 GETUPVAL                         R12 4
       49 GETTABLEKS                       R11 R12 K16 ["getClassIcon"]
       51 GETTABLEKS                       R12 R9 K17 ["ClassName"]
       53 CALL                             R11 1 1
       54 ORK                              R8 R11 K15 [""]
       55 SETTABLEKS                       R8 R7 K18 ["Image"]
       57 LOADN                            R8 1
       58 SETTABLEKS                       R8 R7 K1 ["LayoutOrder"]
       60 GETUPVAL                         R9 0
       61 GETTABLEKS                       R8 R9 K2 ["Tag"]
       63 LOADK                            R9 K19 ["TokenSourceIcon"]
       64 SETTABLE                         R9 R7 R8
       65 CALL                             R5 2 1
       66 SETTABLEKS                       R5 R4 K4 ["Icon"]
       68 GETUPVAL                         R6 0
       69 GETTABLEKS                       R5 R6 K0 ["createElement"]
       71 GETUPVAL                         R6 5
       72 NEWTABLE                         R7 4 0
       74 LOADN                            R8 2
       75 SETTABLEKS                       R8 R7 K1 ["LayoutOrder"]
       77 GETTABLEKS                       R9 R0 K7 ["Source"]
       79 GETTABLEKS                       R8 R9 K20 ["Name"]
       81 SETTABLEKS                       R8 R7 K21 ["Text"]
       83 GETUPVAL                         R9 0
       84 GETTABLEKS                       R8 R9 K2 ["Tag"]
       86 LOADK                            R9 K22 ["X-Fit"]
       87 SETTABLE                         R9 R7 R8
       88 CALL                             R5 2 1
       89 SETTABLEKS                       R5 R4 K5 ["NameLabel"]
       91 CALL                             R1 3 -1
       92 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["React"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R4 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R4 K7 ["Framework"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R4 R2 K8 ["UI"]
       27 GETTABLEKS                       R3 R4 K9 ["Pane"]
       29 GETTABLEKS                       R5 R2 K8 ["UI"]
       31 GETTABLEKS                       R4 R5 K10 ["TextLabel"]
       33 GETTABLEKS                       R6 R2 K8 ["UI"]
       35 GETTABLEKS                       R5 R6 K11 ["Image"]
       37 GETIMPORT                        R6 K4 [require]
       39 GETTABLEKS                       R9 R0 K12 ["Src"]
       41 GETTABLEKS                       R8 R9 K13 ["Resources"]
       43 GETTABLEKS                       R7 R8 K14 ["ModernIcons"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K4 [require]
       48 GETTABLEKS                       R10 R0 K12 ["Src"]
       50 GETTABLEKS                       R9 R10 K15 ["Util"]
       52 GETTABLEKS                       R8 R9 K16 ["MenuHelpers"]
       54 CALL                             R7 1 1
       55 DUPCLOSURE                       R8 K17 [PROTO_0]
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R7
       58 DUPCLOSURE                       R9 K18 [PROTO_1]
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R4
       65 RETURN                           R9 1
