PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetSetting"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["GetSetting"]
        4 CALL                             R2 2 1
        5 JUMPIFEQ                         R1 R2 ; [+17]
        7 GETUPVAL                         R3 0
        8 MOVE                             R5 R0
        9 MOVE                             R6 R1
       10 NAMECALL                         R3 R3 K1 ["SetSetting"]
       12 CALL                             R3 3 0
       13 GETUPVAL                         R3 1
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K2 ["join"]
       17 GETUPVAL                         R5 3
       18 NEWTABLE                         R6 1 0
       20 SETTABLE                         R1 R6 R0
       21 CALL                             R4 2 -1
       22 CALL                             R3 -1 0
       23 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Plugin"]
        3 GETTABLEKS                       R1 R1 K1 ["use"]
        5 CALL                             R1 0 1
        6 NAMECALL                         R1 R1 K2 ["get"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K3 ["useState"]
       12 NEWTABLE                         R3 0 0
       14 CALL                             R2 1 2
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          VAL R1
       17 NEWCLOSURE                       R5 P1
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R3
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          VAL R2
       22 DUPTABLE                         R6 K7 [{"getSetting", "setSetting", "pluginSettings"}]
       23 SETTABLEKS                       R4 R6 K4 ["getSetting"]
       25 SETTABLEKS                       R5 R6 K5 ["setSetting"]
       27 SETTABLEKS                       R2 R6 K6 ["pluginSettings"]
       29 GETUPVAL                         R7 1
       30 GETTABLEKS                       R7 R7 K8 ["createElement"]
       32 GETUPVAL                         R8 3
       33 GETTABLEKS                       R8 R8 K9 ["Provider"]
       35 DUPTABLE                         R9 K11 [{"value"}]
       36 SETTABLEKS                       R6 R9 K10 ["value"]
       38 GETTABLEKS                       R10 R0 K12 ["children"]
       40 CALL                             R7 3 -1
       41 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["ContextServices"]
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R0 K11 ["Src"]
       34 GETTABLEKS                       R6 R6 K12 ["Util"]
       36 GETTABLEKS                       R6 R6 K13 ["PluginSettingsContext"]
       38 CALL                             R5 1 1
       39 DUPCLOSURE                       R6 K14 [PROTO_2]
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R5
       44 RETURN                           R6 1
