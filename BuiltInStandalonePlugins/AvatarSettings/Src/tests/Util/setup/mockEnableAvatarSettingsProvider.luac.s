PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["requestSaveToRoblox"]
        4 NAMECALL                         R0 R0 K1 ["Invoke"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["initialGameIdUnknown"]
        2 JUMPIFNOT                        R2 ; [+2]
        3 LOADNIL                          R1
        4 JUMP                             ; [+3]
        5 GETTABLEKS                       R2 R0 K2 ["initialGameId"]
        7 ORK                              R1 R2 K1 [1]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K3 ["useState"]
       11 MOVE                             R3 R1
       12 CALL                             R2 1 2
       13 GETUPVAL                         R4 1
       14 NAMECALL                         R4 R4 K4 ["use"]
       16 CALL                             R4 1 1
       17 NAMECALL                         R4 R4 K5 ["get"]
       19 CALL                             R4 1 1
       20 DUPTABLE                         R5 K11 [{["default"] = False, ["currentGameId"], ["setCurrentGameId"], ["requestSaveToRoblox"]}]
       21 SETTABLEKS                       R2 R5 K8 ["currentGameId"]
       23 SETTABLEKS                       R3 R5 K9 ["setCurrentGameId"]
       25 NEWCLOSURE                       R6 P0
       26 CAPTURE                          VAL R4
       27 CAPTURE                          UPVAL U2
       28 SETTABLEKS                       R6 R5 K10 ["requestSaveToRoblox"]
       30 GETUPVAL                         R6 3
       31 GETUPVAL                         R7 4
       32 GETTABLEKS                       R7 R7 K12 ["Provider"]
       34 DUPTABLE                         R8 K14 [{"value"}]
       35 SETTABLEKS                       R5 R8 K13 ["value"]
       37 GETTABLEKS                       R9 R0 K15 ["children"]
       39 CALL                             R6 3 -1
       40 RETURN                           R6 -1

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
