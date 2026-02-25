PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["Provider"]
        4 DUPTABLE                         R3 K2 [{"openAssetManager"}]
        5 GETTABLEKS                       R4 R0 K1 ["openAssetManager"]
        7 SETTABLEKS                       R4 R3 K1 ["openAssetManager"]
        9 CALL                             R1 2 1
       10 GETUPVAL                         R2 0
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R3 R4 K0 ["Provider"]
       14 DUPTABLE                         R4 K4 [{"browseAssetsAsync"}]
       15 GETTABLEKS                       R5 R0 K3 ["browseAssetsAsync"]
       17 SETTABLEKS                       R5 R4 K3 ["browseAssetsAsync"]
       19 CALL                             R2 2 1
       20 GETUPVAL                         R3 0
       21 GETUPVAL                         R5 3
       22 GETTABLEKS                       R4 R5 K0 ["Provider"]
       24 CALL                             R3 1 1
       25 GETUPVAL                         R4 0
       26 GETUPVAL                         R6 4
       27 GETTABLEKS                       R5 R6 K0 ["Provider"]
       29 DUPTABLE                         R6 K6 [{"theme"}]
       30 GETTABLEKS                       R7 R0 K5 ["theme"]
       32 SETTABLEKS                       R7 R6 K5 ["theme"]
       34 CALL                             R4 2 1
       35 GETUPVAL                         R5 0
       36 GETUPVAL                         R7 5
       37 GETTABLEKS                       R6 R7 K0 ["Provider"]
       39 DUPTABLE                         R7 K8 [{"userId"}]
       40 GETTABLEKS                       R8 R0 K7 ["userId"]
       42 SETTABLEKS                       R8 R7 K7 ["userId"]
       44 CALL                             R5 2 1
       45 GETUPVAL                         R6 0
       46 GETUPVAL                         R8 6
       47 GETTABLEKS                       R7 R8 K9 ["ContextStack"]
       49 DUPTABLE                         R8 K11 [{"providers"}]
       50 NEWTABLE                         R9 0 5
       52 MOVE                             R10 R1
       53 MOVE                             R11 R2
       54 MOVE                             R12 R3
       55 MOVE                             R13 R4
       56 MOVE                             R14 R5
       57 SETLIST                          R9 R10 5 [1]
       59 SETTABLEKS                       R9 R8 K10 ["providers"]
       61 GETTABLEKS                       R9 R0 K12 ["children"]
       63 CALL                             R6 3 -1
       64 RETURN                           R6 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["studioService"]
        3 NAMECALL                         R0 R0 K1 ["GetUserId"]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["plugin"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Name"]
        6 NAMECALL                         R0 R0 K2 ["PromptForExistingAssetId"]
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_3:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIFNOTEQKN                    R2 K2 [0] ; [+3]
        8 LOADNIL                          R3
        9 RETURN                           R3 1
       10 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 1
        4 SETLIST                          R2 R3 1 [1]
        6 NAMECALL                         R0 R0 K0 ["GetAsync"]
        8 CALL                             R0 2 1
        9 GETTABLEN                        R2 R0 1
       10 GETTABLEKS                       R1 R2 K1 ["Checked"]
       12 JUMPIFNOT                        R1 ; [+1]
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 0
       15 GETUPVAL                         R3 1
       16 NAMECALL                         R1 R1 K2 ["ActivateAsync"]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["plugin"]
        3 LOADK                            R2 K1 ["Actions"]
        4 NAMECALL                         R0 R0 K2 ["GetPluginComponent"]
        6 CALL                             R0 2 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K3 ["fromAction"]
       10 LOADK                            R2 K4 ["AssetManager"]
       11 LOADK                            R3 K5 ["Toggle"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K8 [task.spawn]
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R1
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["IsStudio"]
        3 CALL                             R2 1 1
        4 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        6 LOADK                            R3 K1 ["StudioProvider used outside of Studio"]
        7 GETIMPORT                        R1 K3 [assert]
        9 CALL                             R1 2 0
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R1 R2 K4 ["useMemo"]
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          VAL R0
       15 NEWTABLE                         R3 0 1
       17 GETTABLEKS                       R4 R0 K5 ["studioService"]
       19 SETLIST                          R3 R4 1 [1]
       21 CALL                             R1 2 1
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R2 R3 K6 ["useCallback"]
       25 NEWCLOSURE                       R3 P1
       26 CAPTURE                          VAL R0
       27 NEWTABLE                         R4 0 0
       29 CALL                             R2 2 1
       30 GETUPVAL                         R4 1
       31 GETTABLEKS                       R3 R4 K6 ["useCallback"]
       33 NEWCLOSURE                       R4 P2
       34 CAPTURE                          VAL R0
       35 CAPTURE                          UPVAL U2
       36 NEWTABLE                         R5 0 0
       38 CALL                             R3 2 1
       39 GETUPVAL                         R4 3
       40 GETUPVAL                         R5 4
       41 DUPTABLE                         R6 K11 [{"theme", "userId", "browseAssetsAsync", "openAssetManager"}]
       42 GETTABLEKS                       R7 R0 K7 ["theme"]
       44 SETTABLEKS                       R7 R6 K7 ["theme"]
       46 SETTABLEKS                       R1 R6 K8 ["userId"]
       48 SETTABLEKS                       R2 R6 K9 ["browseAssetsAsync"]
       50 SETTABLEKS                       R3 R6 K10 ["openAssetManager"]
       52 GETTABLEKS                       R7 R0 K12 ["children"]
       54 CALL                             R4 3 -1
       55 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Properties"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [script]
       15 LOADK                            R4 K8 ["AssetPicker"]
       16 NAMECALL                         R2 R2 K7 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETTABLEKS                       R3 R1 K9 ["Parent"]
       21 GETIMPORT                        R4 K11 [require]
       23 GETTABLEKS                       R6 R2 K12 ["Contexts"]
       25 GETTABLEKS                       R5 R6 K13 ["AssetManagerContext"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K11 [require]
       30 GETTABLEKS                       R7 R2 K12 ["Contexts"]
       32 GETTABLEKS                       R6 R7 K14 ["BrowserContext"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K11 [require]
       37 GETTABLEKS                       R7 R3 K15 ["React"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K11 [require]
       42 GETTABLEKS                       R8 R3 K16 ["ReactUtils"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K11 [require]
       47 GETTABLEKS                       R9 R3 K17 ["StudioFoundation"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K11 [require]
       52 GETTABLEKS                       R11 R2 K12 ["Contexts"]
       54 GETTABLEKS                       R10 R11 K18 ["ThemeContext"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K11 [require]
       59 GETTABLEKS                       R12 R2 K12 ["Contexts"]
       61 GETTABLEKS                       R11 R12 K19 ["UserContext"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K11 [require]
       66 GETTABLEKS                       R13 R2 K12 ["Contexts"]
       68 GETTABLEKS                       R12 R13 K20 ["ViewContext"]
       70 CALL                             R11 1 1
       71 GETTABLEKS                       R13 R8 K21 ["Util"]
       73 GETTABLEKS                       R12 R13 K22 ["StudioUri"]
       75 GETTABLEKS                       R13 R6 K23 ["createElement"]
       77 DUPCLOSURE                       R14 K24 [PROTO_0]
       78 CAPTURE                          VAL R13
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R7
       85 DUPCLOSURE                       R15 K25 [PROTO_6]
       86 CAPTURE                          VAL R0
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R12
       89 CAPTURE                          VAL R13
       90 CAPTURE                          VAL R14
       91 DUPTABLE                         R16 K28 [{"Provider", "StudioProvider"}]
       92 SETTABLEKS                       R14 R16 K26 ["Provider"]
       94 SETTABLEKS                       R15 R16 K27 ["StudioProvider"]
       96 RETURN                           R16 1
