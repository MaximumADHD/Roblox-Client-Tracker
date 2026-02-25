PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["unmount"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 NAMECALL                         R0 R0 K1 ["Destroy"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 3
       10 LOADB                            R1 1
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["unmount"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 NAMECALL                         R0 R0 K1 ["Destroy"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 3
       10 LOADB                            R1 0
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["unmount"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 NAMECALL                         R0 R0 K1 ["Destroy"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 3
       10 LOADB                            R1 0
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_3:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R3 1
        3 DUPTABLE                         R4 K2 [{"Size", "Modal"}]
        4 GETUPVAL                         R5 2
        5 SETTABLEKS                       R5 R4 K0 ["Size"]
        7 LOADB                            R5 1
        8 SETTABLEKS                       R5 R4 K1 ["Modal"]
       10 NAMECALL                         R1 R1 K3 ["CreateQWidgetPluginGui"]
       12 CALL                             R1 3 1
       13 LOADB                            R2 1
       14 SETTABLEKS                       R2 R1 K4 ["Enabled"]
       16 GETUPVAL                         R2 1
       17 SETTABLEKS                       R2 R1 K5 ["Title"]
       19 NEWCLOSURE                       R2 P0
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          REF R0
       22 CAPTURE                          VAL R1
       23 CAPTURE                          UPVAL U4
       24 NEWCLOSURE                       R3 P1
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          REF R0
       27 CAPTURE                          VAL R1
       28 CAPTURE                          UPVAL U4
       29 LOADK                            R6 K4 ["Enabled"]
       30 NAMECALL                         R4 R1 K6 ["GetPropertyChangedSignal"]
       32 CALL                             R4 2 1
       33 NEWCLOSURE                       R6 P2
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          REF R0
       36 CAPTURE                          VAL R1
       37 CAPTURE                          UPVAL U4
       38 NAMECALL                         R4 R4 K7 ["connect"]
       40 CALL                             R4 2 0
       41 GETUPVAL                         R4 5
       42 CALL                             R4 0 1
       43 GETUPVAL                         R6 6
       44 GETTABLEKS                       R5 R6 K8 ["provide"]
       46 NEWTABLE                         R6 0 3
       48 GETUPVAL                         R7 7
       49 MOVE                             R8 R4
       50 GETUPVAL                         R9 8
       51 SETLIST                          R6 R7 3 [1]
       53 DUPTABLE                         R7 K10 [{"Content"}]
       54 GETUPVAL                         R8 9
       55 MOVE                             R9 R2
       56 MOVE                             R10 R3
       57 CALL                             R8 2 1
       58 SETTABLEKS                       R8 R7 K9 ["Content"]
       60 CALL                             R5 2 1
       61 GETUPVAL                         R7 3
       62 GETTABLEKS                       R6 R7 K11 ["mount"]
       64 MOVE                             R7 R5
       65 MOVE                             R8 R1
       66 CALL                             R6 2 1
       67 MOVE                             R0 R6
       68 CLOSEUPVALS                      R0
       69 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R2 K1 [spawn]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          UPVAL U8
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["new"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          UPVAL U6
       12 CAPTURE                          VAL R2
       13 CALL                             R3 1 -1
       14 RETURN                           R3 -1

PROTO_6:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R3
        8 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R5 R2 K9 ["Util"]
       27 GETTABLEKS                       R4 R5 K10 ["Promise"]
       29 GETIMPORT                        R5 K4 [require]
       31 GETTABLEKS                       R8 R0 K11 ["Src"]
       33 GETTABLEKS                       R7 R8 K12 ["Resources"]
       35 GETTABLEKS                       R6 R7 K13 ["PluginTheme"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K16 [Vector2.new]
       40 LOADN                            R7 44
       41 LOADN                            R8 114
       42 CALL                             R6 2 1
       43 DUPCLOSURE                       R7 K17 [PROTO_6]
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R3
       48 RETURN                           R7 1
