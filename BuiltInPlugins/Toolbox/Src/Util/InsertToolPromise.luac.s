PROTO_0:
        0 DUPTABLE                         R3 K5 [{"_onPromptCallback", "_onScriptWarningCallback", "_onPermissionsGrantCallback", "_bindable", "_waiting"}]
        1 SETTABLEKS                       R0 R3 K0 ["_onPromptCallback"]
        3 SETTABLEKS                       R1 R3 K1 ["_onScriptWarningCallback"]
        5 SETTABLEKS                       R2 R3 K2 ["_onPermissionsGrantCallback"]
        7 GETIMPORT                        R4 K8 [Instance.new]
        9 LOADK                            R5 K9 ["BindableEvent"]
       10 CALL                             R4 1 1
       11 SETTABLEKS                       R4 R3 K3 ["_bindable"]
       13 LOADB                            R4 0
       14 SETTABLEKS                       R4 R3 K4 ["_waiting"]
       16 GETUPVAL                         R6 0
       17 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
       19 MOVE                             R5 R3
       20 GETIMPORT                        R4 K11 [setmetatable]
       22 CALL                             R4 2 0
       23 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["_waiting"]
        2 RETURN                           R1 1

PROTO_2:
        0 NAMECALL                         R1 R0 K0 ["cancel"]
        2 CALL                             R1 1 0
        3 GETTABLEKS                       R1 R0 K1 ["_bindable"]
        5 NAMECALL                         R1 R1 K2 ["Destroy"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_bindable"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["INSERT_TO_WORKSPACE"]
        5 NAMECALL                         R1 R1 K2 ["Fire"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_bindable"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["INSERT_TO_STARTER_PACK"]
        5 NAMECALL                         R1 R1 K2 ["Fire"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_bindable"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["INSERT_CANCELLED"]
        5 NAMECALL                         R1 R1 K2 ["Fire"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["_bindable"]
        2 NAMECALL                         R1 R1 K1 ["Fire"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["_bindable"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["Fire"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+2]
        2 LOADB                            R2 0
        3 RETURN                           R2 1
        4 LOADB                            R2 1
        5 SETTABLEKS                       R2 R0 K0 ["_waiting"]
        7 GETTABLEKS                       R2 R0 K1 ["_onPermissionsGrantCallback"]
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 GETTABLEKS                       R2 R0 K2 ["_bindable"]
       13 GETTABLEKS                       R2 R2 K3 ["Event"]
       15 NAMECALL                         R2 R2 K4 ["Wait"]
       17 CALL                             R2 1 1
       18 LOADB                            R3 0
       19 SETTABLEKS                       R3 R0 K0 ["_waiting"]
       21 RETURN                           R2 1

PROTO_9:
        0 LOADB                            R2 1
        1 SETTABLEKS                       R2 R0 K0 ["_waiting"]
        3 GETTABLEKS                       R2 R0 K1 ["_onScriptWarningCallback"]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 1
        7 JUMPIFNOT                        R2 ; [+7]
        8 GETTABLEKS                       R2 R0 K2 ["_bindable"]
       10 GETTABLEKS                       R2 R2 K3 ["Event"]
       12 NAMECALL                         R2 R2 K4 ["Wait"]
       14 CALL                             R2 1 0
       15 LOADB                            R2 0
       16 SETTABLEKS                       R2 R0 K0 ["_waiting"]
       18 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["_waiting"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["INSERT_CANCELLED"]
        6 RETURN                           R1 1
        7 LOADB                            R1 1
        8 SETTABLEKS                       R1 R0 K0 ["_waiting"]
       10 GETTABLEKS                       R1 R0 K2 ["_onPromptCallback"]
       12 CALL                             R1 0 0
       13 GETTABLEKS                       R1 R0 K3 ["_bindable"]
       15 GETTABLEKS                       R1 R1 K4 ["Event"]
       17 NAMECALL                         R1 R1 K5 ["Wait"]
       19 CALL                             R1 1 1
       20 LOADB                            R2 0
       21 SETTABLEKS                       R2 R0 K0 ["_waiting"]
       23 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [game]
       11 LOADK                            R3 K5 ["ToolboxEnableAudioGrantDialog"]
       12 NAMECALL                         R1 R1 K6 ["GetFastFlag"]
       14 CALL                             R1 2 1
       15 NEWTABLE                         R2 16 0
       17 SETTABLEKS                       R2 R2 K7 ["__index"]
       19 LOADN                            R3 0
       20 SETTABLEKS                       R3 R2 K8 ["INSERT_TO_WORKSPACE"]
       22 LOADN                            R3 1
       23 SETTABLEKS                       R3 R2 K9 ["INSERT_TO_STARTER_PACK"]
       25 LOADN                            R3 2
       26 SETTABLEKS                       R3 R2 K10 ["INSERT_CANCELLED"]
       28 DUPCLOSURE                       R3 K11 [PROTO_0]
       29 CAPTURE                          VAL R2
       30 SETTABLEKS                       R3 R2 K12 ["new"]
       32 DUPCLOSURE                       R3 K13 [PROTO_1]
       33 SETTABLEKS                       R3 R2 K14 ["isWaiting"]
       35 DUPCLOSURE                       R3 K15 [PROTO_2]
       36 SETTABLEKS                       R3 R2 K16 ["destroy"]
       38 DUPCLOSURE                       R3 K17 [PROTO_3]
       39 CAPTURE                          VAL R2
       40 SETTABLEKS                       R3 R2 K18 ["insertToWorkspace"]
       42 DUPCLOSURE                       R3 K19 [PROTO_4]
       43 CAPTURE                          VAL R2
       44 SETTABLEKS                       R3 R2 K20 ["insertToStarterPack"]
       46 DUPCLOSURE                       R3 K21 [PROTO_5]
       47 CAPTURE                          VAL R2
       48 SETTABLEKS                       R3 R2 K22 ["cancel"]
       50 DUPCLOSURE                       R3 K23 [PROTO_6]
       51 SETTABLEKS                       R3 R2 K24 ["dismissWarningPrompt"]
       53 DUPCLOSURE                       R3 K25 [PROTO_7]
       54 SETTABLEKS                       R3 R2 K26 ["returnResult"]
       56 DUPCLOSURE                       R3 K27 [PROTO_8]
       57 CAPTURE                          VAL R1
       58 SETTABLEKS                       R3 R2 K28 ["promptPermissionsGrantAndWait"]
       60 DUPCLOSURE                       R3 K29 [PROTO_9]
       61 SETTABLEKS                       R3 R2 K30 ["promptScriptWarningAndWait"]
       63 DUPCLOSURE                       R3 K31 [PROTO_10]
       64 CAPTURE                          VAL R2
       65 SETTABLEKS                       R3 R2 K32 ["promptAndWait"]
       67 RETURN                           R2 1
