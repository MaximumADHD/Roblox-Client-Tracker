PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["RulesSchemaVersion"]
        3 RETURN                           R0 1

PROTO_1:
        0 DUPCLOSURE                       R1 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 FASTPCALL                        pcall 1 ; [+2]
        3 GETIMPORT                        R0 K2 [pcall]
        5 CALL                             R0 1 2
        6 MOVE                             R2 R0
        7 JUMPIFNOT                        R2 ; [+15]
        8 LOADB                            R2 1
        9 LOADN                            R3 3
       10 JUMPIFLE                         R3 R1 ; [+12]
       12 GETUPVAL                         R2 1
       13 CALL                             R2 0 1
       14 JUMPIFNOT                        R2 ; [+8]
       15 GETIMPORT                        R3 K4 [game]
       17 GETTABLEKS                       R3 R3 K5 ["GameId"]
       19 JUMPIFEQKN                       R3 K6 [0] ; [+2]
       21 LOADB                            R2 0 +1
       22 LOADB                            R2 1
       23 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["RulesSchemaVersion"]
        2 NAMECALL                         R0 R0 K1 ["GetPropertyChangedSignal"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["CreateAvatarRules"]
        4 GETTABLEKS                       R2 R2 K1 ["fromAssetDm"]
        6 NAMECALL                         R0 R0 K2 ["Invoke"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R1 1
        4 SETUPVAL                         R1 0
        5 DUPCLOSURE                       R2 K0 [PROTO_2]
        6 CAPTURE                          UPVAL U1
        7 FASTPCALL                        pcall 1 ; [+2]
        8 GETIMPORT                        R1 K2 [pcall]
       10 CALL                             R1 1 2
       11 JUMPIF                           R1 ; [+1]
       12 RETURN                           R0 0
       13 NEWCLOSURE                       R5 P1
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U2
       16 NAMECALL                         R3 R2 K3 ["Connect"]
       18 CALL                             R3 2 0
       19 GETUPVAL                         R3 3
       20 CALL                             R3 0 1
       21 JUMPIFNOT                        R3 ; [+11]
       22 GETUPVAL                         R3 4
       23 GETTABLEKS                       R3 R3 K4 ["rebindOn"]
       25 MOVE                             R4 R0
       26 GETIMPORT                        R5 K6 [game]
       28 LOADK                            R7 K7 ["GameId"]
       29 NAMECALL                         R5 R5 K8 ["GetPropertyChangedSignal"]
       31 CALL                             R5 2 -1
       32 CALL                             R3 -1 0
       33 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["CreateAvatarRules"]
        4 GETTABLEKS                       R2 R2 K1 ["fromAssetDm"]
        6 NAMECALL                         R0 R0 K2 ["Invoke"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 NAMECALL                         R2 R1 K0 ["Connect"]
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K2 ["AvatarSettings"]
       10 NAMECALL                         R1 R1 K6 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R0 K9 ["Src"]
       17 GETTABLEKS                       R3 R3 K10 ["Flags"]
       19 GETTABLEKS                       R3 R3 K11 ["getEngineFeatureAvatarSettingsOverridesSchemaWithoutUniverse"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R4 R0 K9 ["Src"]
       26 GETTABLEKS                       R4 R4 K12 ["Util"]
       28 GETTABLEKS                       R4 R4 K13 ["InvokeKeys"]
       30 CALL                             R3 1 1
       31 NEWTABLE                         R4 4 0
       33 LOADB                            R5 0
       34 DUPCLOSURE                       R6 K14 [PROTO_1]
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R2
       37 SETTABLEKS                       R6 R4 K15 ["isActive"]
       39 NEWCLOSURE                       R6 P1
       40 CAPTURE                          REF R5
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R4
       45 SETTABLEKS                       R6 R4 K16 ["connect"]
       47 DUPCLOSURE                       R6 K17 [PROTO_6]
       48 CAPTURE                          VAL R3
       49 SETTABLEKS                       R6 R4 K18 ["rebindOn"]
       51 CLOSEUPVALS                      R5
       52 RETURN                           R4 1
