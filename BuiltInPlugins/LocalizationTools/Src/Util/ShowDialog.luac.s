PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["unmount"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["unmount"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["unmount"]
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
        3 DUPTABLE                         R4 K3 [{[1], ["Modal"] = True}]
        4 GETUPVAL                         R5 2
        5 SETTABLEKS                       R5 R4 K0 ["Size"]
        7 NAMECALL                         R1 R1 K4 ["CreateQWidgetPluginGui"]
        9 CALL                             R1 3 1
       10 LOADB                            R2 1
       11 SETTABLEKS                       R2 R1 K5 ["Enabled"]
       13 GETUPVAL                         R2 1
       14 SETTABLEKS                       R2 R1 K6 ["Title"]
       16 NEWCLOSURE                       R2 P0
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          REF R0
       19 CAPTURE                          VAL R1
       20 CAPTURE                          UPVAL U4
       21 NEWCLOSURE                       R3 P1
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          REF R0
       24 CAPTURE                          VAL R1
       25 CAPTURE                          UPVAL U4
       26 LOADK                            R6 K5 ["Enabled"]
       27 NAMECALL                         R4 R1 K7 ["GetPropertyChangedSignal"]
       29 CALL                             R4 2 1
       30 NEWCLOSURE                       R6 P2
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          REF R0
       33 CAPTURE                          VAL R1
       34 CAPTURE                          UPVAL U4
       35 NAMECALL                         R4 R4 K8 ["connect"]
       37 CALL                             R4 2 0
       38 GETUPVAL                         R4 5
       39 CALL                             R4 0 1
       40 GETUPVAL                         R5 6
       41 GETTABLEKS                       R5 R5 K9 ["provide"]
       43 NEWTABLE                         R6 0 3
       45 GETUPVAL                         R7 7
       46 MOVE                             R8 R4
       47 GETUPVAL                         R9 8
       48 SETLIST                          R6 R7 3 [1]
       50 DUPTABLE                         R7 K11 [{"Content"}]
       51 GETUPVAL                         R8 9
       52 MOVE                             R9 R2
       53 MOVE                             R10 R3
       54 CALL                             R8 2 1
       55 SETTABLEKS                       R8 R7 K10 ["Content"]
       57 CALL                             R5 2 1
       58 GETUPVAL                         R6 3
       59 GETTABLEKS                       R6 R6 K12 ["mount"]
       61 MOVE                             R7 R5
       62 MOVE                             R8 R1
       63 CALL                             R6 2 1
       64 MOVE                             R0 R6
       65 CLOSEUPVALS                      R0
       66 RETURN                           R0 0

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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["new"]
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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R2 K9 ["Util"]
       27 GETTABLEKS                       R4 R4 K10 ["Promise"]
       29 GETIMPORT                        R5 K4 [require]
       31 GETTABLEKS                       R6 R0 K11 ["Src"]
       33 GETTABLEKS                       R6 R6 K12 ["Resources"]
       35 GETTABLEKS                       R6 R6 K13 ["PluginTheme"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K16 [Vector2.new]
       40 LOADN                            R7 300
       41 LOADN                            R8 370
       42 CALL                             R6 2 1
       43 DUPCLOSURE                       R7 K17 [PROTO_6]
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R3
       48 RETURN                           R7 1
