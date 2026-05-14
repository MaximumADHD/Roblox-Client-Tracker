PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["CrossPluginCommunicationName"]
        6 CALL                             R1 1 1
        7 SETTABLEKS                       R1 R0 K2 ["connection"]
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["connection"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["CrossPluginCommunicationInstructions"]
        6 GETTABLEKS                       R2 R2 K2 ["Open"]
        8 NAMECALL                         R0 R0 K3 ["Fire"]
       10 CALL                             R0 2 0
       11 GETUPVAL                         R0 2
       12 CALL                             R0 0 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["OnClose"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["provide"]
        9 NEWTABLE                         R5 0 3
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K4 ["new"]
       14 GETIMPORT                        R7 K6 [plugin]
       16 CALL                             R6 1 1
       17 GETUPVAL                         R7 2
       18 CALL                             R7 0 1
       19 MOVE                             R8 R3
       20 SETLIST                          R5 R6 3 [1]
       22 NEWTABLE                         R6 0 1
       24 GETUPVAL                         R7 3
       25 GETTABLEKS                       R7 R7 K7 ["createElement"]
       27 GETUPVAL                         R8 4
       28 DUPTABLE                         R9 K9 [{"OnClose", "OnOpen"}]
       29 SETTABLEKS                       R2 R9 K1 ["OnClose"]
       31 NEWCLOSURE                       R10 P0
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U5
       34 CAPTURE                          VAL R2
       35 SETTABLEKS                       R10 R9 K8 ["OnOpen"]
       37 CALL                             R7 2 -1
       38 SETLIST                          R6 R7 -1 [1]
       40 CALL                             R4 2 -1
       41 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Packages"]
       11 GETTABLEKS                       R2 R2 K6 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K5 ["Packages"]
       18 GETTABLEKS                       R3 R3 K7 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K9 ["Resources"]
       27 GETTABLEKS                       R4 R4 K10 ["MakeTheme"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Src"]
       34 GETTABLEKS                       R5 R5 K9 ["Resources"]
       36 GETTABLEKS                       R5 R5 K11 ["Constants"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R2 K12 ["Util"]
       41 GETTABLEKS                       R5 R5 K13 ["CrossPluginCommunication"]
       43 GETIMPORT                        R6 K4 [require]
       45 GETTABLEKS                       R7 R0 K8 ["Src"]
       47 GETTABLEKS                       R7 R7 K14 ["Components"]
       49 GETTABLEKS                       R7 R7 K15 ["PublishBlocked"]
       51 GETTABLEKS                       R7 R7 K16 ["PublishBlockedDialog"]
       53 CALL                             R6 1 1
       54 GETTABLEKS                       R7 R1 K17 ["PureComponent"]
       56 LOADK                            R9 K18 ["PublishBlockedPlugin"]
       57 NAMECALL                         R7 R7 K19 ["extend"]
       59 CALL                             R7 2 1
       60 GETTABLEKS                       R8 R2 K20 ["ContextServices"]
       62 GETTABLEKS                       R9 R8 K21 ["Plugin"]
       64 DUPCLOSURE                       R10 K22 [PROTO_0]
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R4
       67 SETTABLEKS                       R10 R7 K23 ["init"]
       69 DUPCLOSURE                       R10 K24 [PROTO_2]
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R4
       76 SETTABLEKS                       R10 R7 K25 ["render"]
       78 RETURN                           R7 1
