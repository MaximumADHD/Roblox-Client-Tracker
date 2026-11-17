PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K0 ["requestLatestGameId"]
        7 NAMECALL                         R0 R0 K1 ["Invoke"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["gameIdChanged"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U2
        6 NAMECALL                         R0 R0 K1 ["OnInvoke"]
        8 CALL                             R0 3 0
        9 GETUPVAL                         R1 3
       10 CALL                             R1 0 1
       11 JUMPIFNOT                        R1 ; [+10]
       12 GETUPVAL                         R0 0
       13 GETUPVAL                         R2 4
       14 GETTABLEKS                       R2 R2 K2 ["gameId"]
       16 NEWCLOSURE                       R3 P1
       17 CAPTURE                          UPVAL U2
       18 NAMECALL                         R0 R0 K3 ["OnSetItem"]
       20 CALL                             R0 3 1
       21 JUMP                             ; [+1]
       22 LOADNIL                          R0
       23 GETUPVAL                         R1 3
       24 CALL                             R1 0 1
       25 JUMPIFNOT                        R1 ; [+11]
       26 GETUPVAL                         R1 0
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R3 R3 K4 ["dmSessionStarted"]
       30 NEWCLOSURE                       R4 P2
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          UPVAL U1
       34 NAMECALL                         R1 R1 K1 ["OnInvoke"]
       36 CALL                             R1 3 0
       37 GETUPVAL                         R1 0
       38 GETUPVAL                         R3 1
       39 GETTABLEKS                       R3 R3 K5 ["requestLatestGameId"]
       41 NAMECALL                         R1 R1 K6 ["Invoke"]
       43 CALL                             R1 2 0
       44 NEWCLOSURE                       R1 P3
       45 CAPTURE                          VAL R0
       46 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["requestSaveToRoblox"]
        4 NAMECALL                         R0 R0 K1 ["Invoke"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 1
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+7]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K2 ["gameId"]
       13 NAMECALL                         R2 R1 K3 ["GetItem"]
       15 CALL                             R2 2 1
       16 JUMP                             ; [+4]
       17 GETIMPORT                        R2 K5 [game]
       19 GETTABLEKS                       R2 R2 K6 ["GameId"]
       21 GETUPVAL                         R3 3
       22 GETTABLEKS                       R3 R3 K7 ["useState"]
       24 MOVE                             R4 R2
       25 CALL                             R3 1 2
       26 GETUPVAL                         R5 3
       27 GETTABLEKS                       R5 R5 K8 ["useEffect"]
       29 NEWCLOSURE                       R6 P0
       30 CAPTURE                          VAL R1
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          VAL R4
       33 CAPTURE                          UPVAL U1
       34 CAPTURE                          UPVAL U2
       35 NEWTABLE                         R7 0 0
       37 CALL                             R5 2 0
       38 DUPTABLE                         R5 K14 [{["default"] = False, ["currentGameId"], ["setCurrentGameId"], ["requestSaveToRoblox"]}]
       39 SETTABLEKS                       R3 R5 K11 ["currentGameId"]
       41 SETTABLEKS                       R4 R5 K12 ["setCurrentGameId"]
       43 NEWCLOSURE                       R6 P1
       44 CAPTURE                          VAL R1
       45 CAPTURE                          UPVAL U4
       46 SETTABLEKS                       R6 R5 K13 ["requestSaveToRoblox"]
       48 GETUPVAL                         R6 5
       49 GETUPVAL                         R7 6
       50 GETTABLEKS                       R7 R7 K15 ["Provider"]
       52 DUPTABLE                         R8 K17 [{"value"}]
       53 SETTABLEKS                       R5 R8 K16 ["value"]
       55 GETTABLEKS                       R9 R0 K18 ["children"]
       57 CALL                             R6 3 -1
       58 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["Contexts"]
       15 GETTABLEKS                       R2 R2 K9 ["EnableAvatarSettingsContext"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K10 ["Packages"]
       22 GETTABLEKS                       R3 R3 K11 ["Framework"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K10 ["Packages"]
       29 GETTABLEKS                       R4 R4 K12 ["React"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Src"]
       36 GETTABLEKS                       R5 R5 K13 ["Flags"]
       38 GETTABLEKS                       R5 R5 K14 ["getFFlagAvatarSettingsEditUnsavedPlace"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K6 ["Src"]
       45 GETTABLEKS                       R6 R6 K15 ["Util"]
       47 GETTABLEKS                       R6 R6 K16 ["InvokeKeys"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K6 ["Src"]
       54 GETTABLEKS                       R7 R7 K15 ["Util"]
       56 GETTABLEKS                       R7 R7 K17 ["PluginItemKeys"]
       58 CALL                             R6 1 1
       59 GETTABLEKS                       R7 R2 K18 ["ContextServices"]
       61 GETTABLEKS                       R8 R7 K19 ["Plugin"]
       63 GETTABLEKS                       R9 R3 K20 ["createElement"]
       65 DUPCLOSURE                       R10 K21 [PROTO_6]
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R1
       73 RETURN                           R10 1
