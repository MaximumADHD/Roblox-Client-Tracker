PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["requestSaveToRoblox"]
        4 NAMECALL                         R0 R0 K1 ["Invoke"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADN                            R2 1
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 1
        6 NAMECALL                         R3 R3 K1 ["use"]
        8 CALL                             R3 1 1
        9 NAMECALL                         R3 R3 K2 ["get"]
       11 CALL                             R3 1 1
       12 DUPTABLE                         R4 K8 [{["default"] = False, ["currentGameId"], ["setCurrentGameId"], ["requestSaveToRoblox"]}]
       13 SETTABLEKS                       R1 R4 K5 ["currentGameId"]
       15 SETTABLEKS                       R2 R4 K6 ["setCurrentGameId"]
       17 NEWCLOSURE                       R5 P0
       18 CAPTURE                          VAL R3
       19 CAPTURE                          UPVAL U2
       20 SETTABLEKS                       R5 R4 K7 ["requestSaveToRoblox"]
       22 GETUPVAL                         R5 3
       23 GETUPVAL                         R6 4
       24 GETTABLEKS                       R6 R6 K9 ["Provider"]
       26 DUPTABLE                         R7 K11 [{"value"}]
       27 SETTABLEKS                       R4 R7 K10 ["value"]
       29 GETTABLEKS                       R8 R0 K12 ["children"]
       31 CALL                             R5 3 -1
       32 RETURN                           R5 -1

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
       36 GETTABLEKS                       R5 R5 K13 ["Util"]
       38 GETTABLEKS                       R5 R5 K14 ["InvokeKeys"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R2 K15 ["ContextServices"]
       43 GETTABLEKS                       R6 R5 K16 ["Plugin"]
       45 GETTABLEKS                       R7 R3 K17 ["createElement"]
       47 DUPCLOSURE                       R8 K18 [PROTO_1]
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R1
       53 RETURN                           R8 1
