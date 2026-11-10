PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Provider"]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K0 ["Provider"]
        9 DUPTABLE                         R4 K2 [{"openAssetManager"}]
       10 GETTABLEKS                       R5 R0 K1 ["openAssetManager"]
       12 SETTABLEKS                       R5 R4 K1 ["openAssetManager"]
       14 CALL                             R2 2 1
       15 GETUPVAL                         R3 0
       16 GETUPVAL                         R4 3
       17 GETTABLEKS                       R4 R4 K0 ["Provider"]
       19 DUPTABLE                         R5 K4 [{"browseAssetsAsync"}]
       20 GETTABLEKS                       R6 R0 K3 ["browseAssetsAsync"]
       22 SETTABLEKS                       R6 R5 K3 ["browseAssetsAsync"]
       24 CALL                             R3 2 1
       25 GETUPVAL                         R4 0
       26 GETUPVAL                         R5 4
       27 GETTABLEKS                       R5 R5 K0 ["Provider"]
       29 CALL                             R4 1 1
       30 GETUPVAL                         R5 0
       31 GETUPVAL                         R6 5
       32 GETTABLEKS                       R6 R6 K0 ["Provider"]
       34 CALL                             R5 1 1
       35 GETUPVAL                         R6 0
       36 GETUPVAL                         R7 6
       37 GETTABLEKS                       R7 R7 K0 ["Provider"]
       39 CALL                             R6 1 1
       40 GETUPVAL                         R7 0
       41 GETUPVAL                         R8 7
       42 GETTABLEKS                       R8 R8 K0 ["Provider"]
       44 CALL                             R7 1 1
       45 GETUPVAL                         R8 0
       46 GETUPVAL                         R9 8
       47 GETTABLEKS                       R9 R9 K0 ["Provider"]
       49 DUPTABLE                         R10 K6 [{"theme"}]
       50 GETTABLEKS                       R11 R0 K5 ["theme"]
       52 SETTABLEKS                       R11 R10 K5 ["theme"]
       54 CALL                             R8 2 1
       55 GETUPVAL                         R9 0
       56 GETUPVAL                         R10 9
       57 GETTABLEKS                       R10 R10 K0 ["Provider"]
       59 DUPTABLE                         R11 K8 [{"userId"}]
       60 GETTABLEKS                       R12 R0 K7 ["userId"]
       62 SETTABLEKS                       R12 R11 K7 ["userId"]
       64 CALL                             R9 2 1
       65 GETUPVAL                         R10 0
       66 GETUPVAL                         R11 10
       67 GETTABLEKS                       R11 R11 K9 ["ContextStack"]
       69 DUPTABLE                         R12 K11 [{"providers"}]
       70 NEWTABLE                         R13 0 9
       72 MOVE                             R14 R2
       73 MOVE                             R15 R3
       74 MOVE                             R16 R1
       75 MOVE                             R17 R5
       76 MOVE                             R18 R6
       77 MOVE                             R19 R4
       78 MOVE                             R20 R7
       79 MOVE                             R21 R8
       80 MOVE                             R22 R9
       81 SETLIST                          R13 R14 9 [1]
       83 SETTABLEKS                       R13 R12 K10 ["providers"]
       85 GETTABLEKS                       R13 R0 K12 ["children"]
       87 CALL                             R10 3 -1
       88 RETURN                           R10 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["studioService"]
        3 NAMECALL                         R0 R0 K1 ["GetUserId"]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["plugin"]
        3 GETIMPORT                        R2 K4 [Enum.AssetType.Animation]
        5 GETTABLEKS                       R2 R2 K5 ["Name"]
        7 NAMECALL                         R0 R0 K6 ["PromptForExistingAssetId"]
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

PROTO_3:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R1 1 2
        5 JUMPIFNOTEQKN                    R2 K2 [0] ; [+3]
        7 LOADNIL                          R3
        8 RETURN                           R3 1
        9 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 1
        4 SETLIST                          R2 R3 1 [1]
        6 NAMECALL                         R0 R0 K0 ["GetAsync"]
        8 CALL                             R0 2 1
        9 GETTABLEN                        R1 R0 1
       10 GETTABLEKS                       R1 R1 K1 ["Checked"]
       12 JUMPIFNOT                        R1 ; [+1]
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 0
       15 GETUPVAL                         R3 1
       16 NAMECALL                         R1 R1 K2 ["ActivateAsync"]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["plugin"]
        3 LOADK                            R2 K1 ["Actions"]
        4 NAMECALL                         R0 R0 K2 ["GetPluginComponent"]
        6 CALL                             R0 2 1
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K3 ["fromAction"]
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
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K4 ["useMemo"]
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          VAL R0
       15 NEWTABLE                         R3 0 1
       17 GETTABLEKS                       R4 R0 K5 ["studioService"]
       19 SETLIST                          R3 R4 1 [1]
       21 CALL                             R1 2 1
       22 GETUPVAL                         R2 1
       23 GETTABLEKS                       R2 R2 K6 ["useCallback"]
       25 NEWCLOSURE                       R3 P1
       26 CAPTURE                          VAL R0
       27 NEWTABLE                         R4 0 0
       29 CALL                             R2 2 1
       30 GETUPVAL                         R3 1
       31 GETTABLEKS                       R3 R3 K6 ["useCallback"]
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
       23 GETTABLEKS                       R5 R2 K12 ["Contexts"]
       25 GETTABLEKS                       R5 R5 K13 ["AssetCacheContext"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K11 [require]
       30 GETTABLEKS                       R6 R2 K12 ["Contexts"]
       32 GETTABLEKS                       R6 R6 K14 ["AssetManagerContext"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K11 [require]
       37 GETTABLEKS                       R7 R2 K12 ["Contexts"]
       39 GETTABLEKS                       R7 R7 K15 ["BrowserContext"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K11 [require]
       44 GETTABLEKS                       R8 R2 K12 ["Contexts"]
       46 GETTABLEKS                       R8 R8 K16 ["LayoutContext"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K11 [require]
       51 GETTABLEKS                       R9 R3 K17 ["React"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K11 [require]
       56 GETTABLEKS                       R10 R3 K18 ["ReactUtils"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K11 [require]
       61 GETTABLEKS                       R11 R2 K12 ["Contexts"]
       63 GETTABLEKS                       R11 R11 K19 ["ScopeCacheContext"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K11 [require]
       68 GETTABLEKS                       R12 R2 K12 ["Contexts"]
       70 GETTABLEKS                       R12 R12 K20 ["ScopeUniqueIdContext"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K11 [require]
       75 GETTABLEKS                       R13 R2 K12 ["Contexts"]
       77 GETTABLEKS                       R13 R13 K21 ["SortContext"]
       79 CALL                             R12 1 1
       80 GETIMPORT                        R13 K11 [require]
       82 GETTABLEKS                       R14 R3 K22 ["StudioFoundation"]
       84 CALL                             R13 1 1
       85 GETIMPORT                        R14 K11 [require]
       87 GETTABLEKS                       R15 R2 K12 ["Contexts"]
       89 GETTABLEKS                       R15 R15 K23 ["ThemeContext"]
       91 CALL                             R14 1 1
       92 GETIMPORT                        R15 K11 [require]
       94 GETTABLEKS                       R16 R2 K24 ["Types"]
       96 CALL                             R15 1 1
       97 GETIMPORT                        R16 K11 [require]
       99 GETTABLEKS                       R17 R2 K12 ["Contexts"]
      101 GETTABLEKS                       R17 R17 K25 ["UserContext"]
      103 CALL                             R16 1 1
      104 GETTABLEKS                       R17 R13 K26 ["Util"]
      106 GETTABLEKS                       R17 R17 K27 ["StudioUri"]
      108 GETTABLEKS                       R18 R8 K28 ["createElement"]
      110 DUPCLOSURE                       R19 K29 [PROTO_0]
      111 CAPTURE                          VAL R18
      112 CAPTURE                          VAL R4
      113 CAPTURE                          VAL R5
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R7
      116 CAPTURE                          VAL R10
      117 CAPTURE                          VAL R11
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R14
      120 CAPTURE                          VAL R16
      121 CAPTURE                          VAL R9
      122 DUPCLOSURE                       R20 K30 [PROTO_6]
      123 CAPTURE                          VAL R0
      124 CAPTURE                          VAL R8
      125 CAPTURE                          VAL R17
      126 CAPTURE                          VAL R18
      127 CAPTURE                          VAL R19
      128 DUPTABLE                         R21 K33 [{"Provider", "StudioProvider"}]
      129 SETTABLEKS                       R19 R21 K31 ["Provider"]
      131 SETTABLEKS                       R20 R21 K32 ["StudioProvider"]
      133 RETURN                           R21 1
