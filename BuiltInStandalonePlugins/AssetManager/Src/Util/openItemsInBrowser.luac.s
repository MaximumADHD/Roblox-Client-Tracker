PROTO_0:
        0 LOADK                            R3 K0 ["https://create.roblox.com/dashboard/creations/experiences/%*/places/%*/configure"]
        1 MOVE                             R5 R1
        2 MOVE                             R6 R0
        3 NAMECALL                         R3 R3 K1 ["format"]
        5 CALL                             R3 3 1
        6 MOVE                             R2 R3
        7 RETURN                           R2 1

PROTO_1:
        0 MOVE                             R3 R0
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 FORGPREP                         R3
        4 NAMECALL                         R10 R2 K0 ["getItems"]
        6 CALL                             R10 1 1
        7 GETTABLE                         R9 R10 R7
        8 GETTABLEKS                       R8 R9 K1 ["AssetType"]
       10 GETUPVAL                         R11 0
       11 GETTABLEKS                       R10 R11 K1 ["AssetType"]
       13 GETTABLEKS                       R9 R10 K2 ["Place"]
       15 JUMPIFNOTEQ                      R8 R9 ; [+45]
       17 NAMECALL                         R8 R1 K3 ["getCurrentScope"]
       19 CALL                             R8 1 1
       20 LOADB                            R10 1
       21 GETTABLEKS                       R11 R8 K4 ["Type"]
       23 GETUPVAL                         R14 0
       24 GETTABLEKS                       R13 R14 K5 ["ScopeType"]
       26 GETTABLEKS                       R12 R13 K6 ["ProjectPlaces"]
       28 JUMPIFEQ                         R11 R12 ; [+12]
       30 GETTABLEKS                       R11 R8 K4 ["Type"]
       32 GETUPVAL                         R14 0
       33 GETTABLEKS                       R13 R14 K5 ["ScopeType"]
       35 GETTABLEKS                       R12 R13 K7 ["Universe"]
       37 JUMPIFEQ                         R11 R12 ; [+2]
       39 LOADB                            R10 0 +1
       40 LOADB                            R10 1
       41 FASTCALL2K                       ASSERT R10 K8 ; [+4]
       43 LOADK                            R11 K8 ["Not browsing universe for this place"]
       44 GETIMPORT                        R9 K10 [assert]
       46 CALL                             R9 2 0
       47 GETUPVAL                         R9 1
       48 GETTABLEKS                       R12 R8 K11 ["Id"]
       50 LOADK                            R13 K12 ["https://create.roblox.com/dashboard/creations/experiences/%*/places/%*/configure"]
       51 MOVE                             R15 R12
       52 MOVE                             R16 R7
       53 NAMECALL                         R13 R13 K13 ["format"]
       55 CALL                             R13 3 1
       56 MOVE                             R11 R13
       57 NAMECALL                         R9 R9 K14 ["openLink"]
       59 CALL                             R9 2 0
       60 JUMP                             ; [+7]
       61 GETUPVAL                         R8 2
       62 GETUPVAL                         R10 3
       63 MOVE                             R11 R7
       64 CALL                             R10 1 -1
       65 NAMECALL                         R8 R8 K15 ["OpenBrowserWindow"]
       67 CALL                             R8 -1 0
       68 FORGLOOP                         R3 2 ; [-65]
       70 RETURN                           R0 0

PROTO_2:
        0 MOVE                             R3 R0
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 FORGPREP                         R3
        4 GETTABLE                         R8 R1 R6
        5 GETUPVAL                         R11 0
        6 GETTABLEKS                       R10 R11 K0 ["AssetType"]
        8 GETTABLEKS                       R9 R10 K1 ["Place"]
       10 JUMPIFNOTEQ                      R8 R9 ; [+42]
       12 LOADB                            R9 1
       13 GETTABLEKS                       R10 R2 K2 ["Type"]
       15 GETUPVAL                         R13 0
       16 GETTABLEKS                       R12 R13 K3 ["ScopeType"]
       18 GETTABLEKS                       R11 R12 K4 ["ProjectPlaces"]
       20 JUMPIFEQ                         R10 R11 ; [+12]
       22 GETTABLEKS                       R10 R2 K2 ["Type"]
       24 GETUPVAL                         R13 0
       25 GETTABLEKS                       R12 R13 K3 ["ScopeType"]
       27 GETTABLEKS                       R11 R12 K5 ["Universe"]
       29 JUMPIFEQ                         R10 R11 ; [+2]
       31 LOADB                            R9 0 +1
       32 LOADB                            R9 1
       33 FASTCALL2K                       ASSERT R9 K6 ; [+4]
       35 LOADK                            R10 K6 ["Not browsing universe for this place"]
       36 GETIMPORT                        R8 K8 [assert]
       38 CALL                             R8 2 0
       39 GETUPVAL                         R8 1
       40 GETTABLEKS                       R11 R2 K9 ["Id"]
       42 LOADK                            R12 K10 ["https://create.roblox.com/dashboard/creations/experiences/%*/places/%*/configure"]
       43 MOVE                             R14 R11
       44 MOVE                             R15 R7
       45 NAMECALL                         R12 R12 K11 ["format"]
       47 CALL                             R12 3 1
       48 MOVE                             R10 R12
       49 NAMECALL                         R8 R8 K12 ["openLink"]
       51 CALL                             R8 2 0
       52 JUMP                             ; [+7]
       53 GETUPVAL                         R8 2
       54 GETUPVAL                         R10 3
       55 MOVE                             R11 R7
       56 CALL                             R10 1 -1
       57 NAMECALL                         R8 R8 K13 ["OpenBrowserWindow"]
       59 CALL                             R8 -1 0
       60 FORGLOOP                         R3 2 ; [-57]
       62 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K6 ["Src"]
       18 GETTABLEKS                       R4 R5 K8 ["Util"]
       20 GETTABLEKS                       R3 R4 K9 ["createAssetUrl"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K6 ["Src"]
       27 GETTABLEKS                       R5 R6 K8 ["Util"]
       29 GETTABLEKS                       R4 R5 K10 ["Services"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K11 ["GetService"]
       34 LOADK                            R5 K12 ["GuiService"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R5 R3 K11 ["GetService"]
       38 LOADK                            R6 K13 ["StartPageService"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R9 R0 K6 ["Src"]
       44 GETTABLEKS                       R8 R9 K14 ["Flags"]
       46 GETTABLEKS                       R7 R8 K15 ["getFFlagAmrUpdatedItemsCache"]
       48 CALL                             R6 1 1
       49 DUPCLOSURE                       R7 K16 [PROTO_0]
       50 DUPCLOSURE                       R8 K17 [PROTO_1]
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R2
       55 DUPCLOSURE                       R9 K18 [PROTO_2]
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R2
       60 MOVE                             R11 R6
       61 CALL                             R11 0 1
       62 JUMPIFNOT                        R11 ; [+2]
       63 MOVE                             R10 R9
       64 RETURN                           R10 1
       65 MOVE                             R10 R8
       66 RETURN                           R10 1
