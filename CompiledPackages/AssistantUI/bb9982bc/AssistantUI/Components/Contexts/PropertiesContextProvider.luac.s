PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["getUserId"]
        6 CALL                             R0 0 -1
        7 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R1 R1 K1 ["getClassIcon"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1

PROTO_2:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R2 R1 K2 ["Config"]
        8 GETTABLEKS                       R2 R2 K3 ["ColorMode"]
       10 GETTABLEKS                       R2 R2 K4 ["Name"]
       12 GETIMPORT                        R3 K6 [pcall]
       14 DUPCLOSURE                       R4 K7 [PROTO_0]
       15 CAPTURE                          UPVAL U1
       16 CALL                             R3 1 2
       17 JUMPIFNOT                        R3 ; [+2]
       18 MOVE                             R5 R4
       19 JUMP                             ; [+1]
       20 LOADN                            R5 0
       21 GETUPVAL                         R6 2
       22 GETUPVAL                         R7 3
       23 GETTABLEKS                       R7 R7 K8 ["ContextStack"]
       25 DUPTABLE                         R8 K10 [{"providers"}]
       26 NEWTABLE                         R9 0 3
       28 GETUPVAL                         R10 2
       29 GETUPVAL                         R11 4
       30 GETTABLEKS                       R11 R11 K11 ["PropertyEntryProvider"]
       32 DUPTABLE                         R12 K14 [{"theme", "getClassIcon"}]
       33 SETTABLEKS                       R2 R12 K12 ["theme"]
       35 DUPCLOSURE                       R13 K15 [PROTO_1]
       36 CAPTURE                          UPVAL U1
       37 SETTABLEKS                       R13 R12 K13 ["getClassIcon"]
       39 CALL                             R10 2 1
       40 GETUPVAL                         R11 2
       41 GETUPVAL                         R12 4
       42 GETTABLEKS                       R12 R12 K16 ["Components"]
       44 GETTABLEKS                       R12 R12 K17 ["Contexts"]
       46 GETTABLEKS                       R12 R12 K18 ["AssetNameContextProvider"]
       48 CALL                             R11 1 1
       49 GETUPVAL                         R12 2
       50 GETUPVAL                         R13 4
       51 GETTABLEKS                       R13 R13 K19 ["AssetPickerProvider"]
       53 GETTABLEKS                       R13 R13 K20 ["Provider"]
       55 DUPTABLE                         R14 K24 [{"theme", "userId", "browseAssetsAsync", "openAssetManager"}]
       56 SETTABLEKS                       R2 R14 K12 ["theme"]
       58 SETTABLEKS                       R5 R14 K21 ["userId"]
       60 DUPCLOSURE                       R15 K25 [PROTO_2]
       61 SETTABLEKS                       R15 R14 K22 ["browseAssetsAsync"]
       63 DUPCLOSURE                       R15 K26 [PROTO_3]
       64 SETTABLEKS                       R15 R14 K23 ["openAssetManager"]
       66 CALL                             R12 2 -1
       67 SETLIST                          R9 R10 -1 [1]
       69 SETTABLEKS                       R9 R8 K9 ["providers"]
       71 GETTABLEKS                       R9 R0 K27 ["children"]
       73 CALL                             R6 3 -1
       74 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["Properties"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K8 ["Parent"]
       39 GETTABLEKS                       R6 R6 K12 ["ReactUtils"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R4 K13 ["createElement"]
       44 DUPCLOSURE                       R7 K14 [PROTO_4]
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R3
       50 RETURN                           R7 1
