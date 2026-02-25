PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["gameIdChanged"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U2
        6 NAMECALL                         R0 R0 K1 ["OnInvoke"]
        8 CALL                             R0 3 0
        9 GETUPVAL                         R0 0
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R2 R3 K2 ["requestLatestGameId"]
       13 NAMECALL                         R0 R0 K3 ["Invoke"]
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["requestSaveToRoblox"]
        4 NAMECALL                         R0 R0 K1 ["Invoke"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 GETIMPORT                        R3 K2 [game]
        5 GETTABLEKS                       R2 R3 K3 ["GameId"]
        7 CALL                             R1 1 2
        8 GETUPVAL                         R3 1
        9 NAMECALL                         R3 R3 K4 ["use"]
       11 CALL                             R3 1 1
       12 NAMECALL                         R3 R3 K5 ["get"]
       14 CALL                             R3 1 1
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R4 R5 K6 ["useEffect"]
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          VAL R3
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          VAL R2
       22 NEWTABLE                         R6 0 0
       24 CALL                             R4 2 0
       25 DUPTABLE                         R4 K11 [{"default", "currentGameId", "setCurrentGameId", "requestSaveToRoblox"}]
       26 LOADB                            R5 0
       27 SETTABLEKS                       R5 R4 K7 ["default"]
       29 SETTABLEKS                       R1 R4 K8 ["currentGameId"]
       31 SETTABLEKS                       R2 R4 K9 ["setCurrentGameId"]
       33 NEWCLOSURE                       R5 P1
       34 CAPTURE                          VAL R3
       35 CAPTURE                          UPVAL U2
       36 SETTABLEKS                       R5 R4 K10 ["requestSaveToRoblox"]
       38 GETUPVAL                         R5 3
       39 GETUPVAL                         R7 4
       40 GETTABLEKS                       R6 R7 K12 ["Provider"]
       42 DUPTABLE                         R7 K14 [{"value"}]
       43 SETTABLEKS                       R4 R7 K13 ["value"]
       45 GETTABLEKS                       R8 R0 K15 ["children"]
       47 CALL                             R5 3 -1
       48 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Components"]
       13 GETTABLEKS                       R3 R4 K8 ["Contexts"]
       15 GETTABLEKS                       R2 R3 K9 ["EnableAvatarSettingsContext"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R4 R0 K10 ["Packages"]
       22 GETTABLEKS                       R3 R4 K11 ["Framework"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Packages"]
       29 GETTABLEKS                       R4 R5 K12 ["React"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K6 ["Src"]
       36 GETTABLEKS                       R6 R7 K13 ["Util"]
       38 GETTABLEKS                       R5 R6 K14 ["InvokeKeys"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R2 K15 ["ContextServices"]
       43 GETTABLEKS                       R6 R5 K16 ["Plugin"]
       45 GETTABLEKS                       R7 R3 K17 ["createElement"]
       47 DUPCLOSURE                       R8 K18 [PROTO_3]
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R1
       53 RETURN                           R8 1
