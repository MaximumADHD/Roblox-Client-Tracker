PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["EnableAudioImport"]
        3 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["shouldEnableAudioImport"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 1
        4 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["shouldEnableVideoImport"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["ShowBadges"]
        3 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["PluginPolicyService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 LOADK                            R2 K4 ["AssetManager"]
        8 NAMECALL                         R0 R0 K5 ["getPluginPolicy"]
       10 CALL                             R0 2 1
       11 GETIMPORT                        R1 K7 [require]
       13 GETIMPORT                        R4 K9 [script]
       15 GETTABLEKS                       R3 R4 K10 ["Parent"]
       17 GETTABLEKS                       R2 R3 K11 ["hasInternalPermission"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K1 [game]
       22 LOADK                            R4 K12 ["EnableCustomVideoUploadLua"]
       23 NAMECALL                         R2 R2 K13 ["GetEngineFeature"]
       25 CALL                             R2 2 1
       26 NEWTABLE                         R3 8 0
       28 DUPCLOSURE                       R4 K14 [PROTO_0]
       29 CAPTURE                          VAL R0
       30 SETTABLEKS                       R4 R3 K15 ["shouldEnableAudioImport"]
       32 DUPCLOSURE                       R4 K16 [PROTO_1]
       33 CAPTURE                          VAL R3
       34 SETTABLEKS                       R4 R3 K17 ["enableAudioImport"]
       36 DUPCLOSURE                       R4 K18 [PROTO_2]
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R1
       39 SETTABLEKS                       R4 R3 K19 ["shouldEnableVideoImport"]
       41 DUPCLOSURE                       R4 K20 [PROTO_3]
       42 CAPTURE                          VAL R3
       43 SETTABLEKS                       R4 R3 K21 ["enableVideoImport"]
       45 DUPCLOSURE                       R4 K22 [PROTO_4]
       46 CAPTURE                          VAL R0
       47 SETTABLEKS                       R4 R3 K23 ["enableBadgesCallout"]
       49 RETURN                           R3 1
