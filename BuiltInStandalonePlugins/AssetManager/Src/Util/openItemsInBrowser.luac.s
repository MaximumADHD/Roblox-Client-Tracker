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
        4 GETTABLE                         R8 R1 R6
        5 GETUPVAL                         R9 0
        6 GETTABLEKS                       R9 R9 K0 ["AssetType"]
        8 GETTABLEKS                       R9 R9 K1 ["Folder"]
       10 JUMPIFEQ                         R8 R9 ; [+57]
       12 GETTABLE                         R8 R1 R6
       13 GETUPVAL                         R9 0
       14 GETTABLEKS                       R9 R9 K0 ["AssetType"]
       16 GETTABLEKS                       R9 R9 K2 ["Place"]
       18 JUMPIFNOTEQ                      R8 R9 ; [+42]
       20 LOADB                            R9 1
       21 GETTABLEKS                       R10 R2 K3 ["Type"]
       23 GETUPVAL                         R11 0
       24 GETTABLEKS                       R11 R11 K4 ["ScopeType"]
       26 GETTABLEKS                       R11 R11 K5 ["ProjectPlaces"]
       28 JUMPIFEQ                         R10 R11 ; [+12]
       30 GETTABLEKS                       R10 R2 K3 ["Type"]
       32 GETUPVAL                         R11 0
       33 GETTABLEKS                       R11 R11 K4 ["ScopeType"]
       35 GETTABLEKS                       R11 R11 K6 ["Universe"]
       37 JUMPIFEQ                         R10 R11 ; [+2]
       39 LOADB                            R9 0 +1
       40 LOADB                            R9 1
       41 FASTCALL2K                       ASSERT R9 K7 ; [+4]
       43 LOADK                            R10 K7 ["Not browsing universe for this place"]
       44 GETIMPORT                        R8 K9 [assert]
       46 CALL                             R8 2 0
       47 GETUPVAL                         R8 1
       48 GETTABLEKS                       R11 R2 K10 ["Id"]
       50 LOADK                            R12 K11 ["https://create.roblox.com/dashboard/creations/experiences/%*/places/%*/configure"]
       51 MOVE                             R14 R11
       52 MOVE                             R15 R7
       53 NAMECALL                         R12 R12 K12 ["format"]
       55 CALL                             R12 3 1
       56 MOVE                             R10 R12
       57 NAMECALL                         R8 R8 K13 ["openLink"]
       59 CALL                             R8 2 0
       60 JUMP                             ; [+7]
       61 GETUPVAL                         R8 2
       62 GETUPVAL                         R10 3
       63 MOVE                             R11 R7
       64 CALL                             R10 1 -1
       65 NAMECALL                         R8 R8 K14 ["OpenBrowserWindow"]
       67 CALL                             R8 -1 0
       68 FORGLOOP                         R3 2 ; [-65]
       70 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["createAssetUrl"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K8 ["Util"]
       29 GETTABLEKS                       R4 R4 K10 ["Services"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K11 ["GetService"]
       34 LOADK                            R5 K12 ["GuiService"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R5 R3 K11 ["GetService"]
       38 LOADK                            R6 K13 ["StartPageService"]
       39 CALL                             R5 1 1
       40 DUPCLOSURE                       R6 K14 [PROTO_0]
       41 DUPCLOSURE                       R7 K15 [PROTO_1]
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R2
       46 RETURN                           R7 1
