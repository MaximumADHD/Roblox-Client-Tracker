PROTO_0:
        0 LOADK                            R2 K0 ["https://create.roblox.com/dashboard/creations/experiences/%*/places/%*/configure"]
        1 MOVE                             R4 R1
        2 MOVE                             R5 R0
        3 NAMECALL                         R2 R2 K1 ["format"]
        5 CALL                             R2 3 1
        6 RETURN                           R2 1

PROTO_1:
        0 LOADK                            R1 K0 ["https://create.roblox.com/dashboard/creations/store/%*/configure"]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_2:
        0 MOVE                             R3 R0
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 FORGPREP                         R3
        4 GETTABLE                         R8 R1 R6
        5 GETUPVAL                         R9 0
        6 GETTABLEKS                       R9 R9 K0 ["AssetType"]
        8 GETTABLEKS                       R9 R9 K1 ["Folder"]
       10 JUMPIFEQ                         R8 R9 ; [+79]
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
       60 JUMP                             ; [+29]
       61 GETTABLE                         R8 R1 R6
       62 GETUPVAL                         R9 0
       63 GETTABLEKS                       R9 R9 K0 ["AssetType"]
       65 GETTABLEKS                       R9 R9 K14 ["TextDocument"]
       67 JUMPIFNOTEQ                      R8 R9 ; [+11]
       69 GETUPVAL                         R8 1
       70 LOADK                            R10 K15 ["https://create.roblox.com/dashboard/creations/store/%*/configure"]
       71 MOVE                             R12 R7
       72 NAMECALL                         R10 R10 K12 ["format"]
       74 CALL                             R10 2 1
       75 NAMECALL                         R8 R8 K13 ["openLink"]
       77 CALL                             R8 2 0
       78 JUMP                             ; [+11]
       79 GETUPVAL                         R8 2
       80 GETUPVAL                         R10 3
       81 GETTABLEKS                       R10 R10 K16 ["Utils"]
       83 GETTABLEKS                       R10 R10 K17 ["createAssetUrl"]
       85 MOVE                             R11 R7
       86 CALL                             R10 1 -1
       87 NAMECALL                         R8 R8 K18 ["OpenBrowserWindow"]
       89 CALL                             R8 -1 0
       90 FORGLOOP                         R3 2 ; [-87]
       92 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssetManagement"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["Services"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K12 ["GetService"]
       32 LOADK                            R5 K13 ["GuiService"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R3 K12 ["GetService"]
       36 LOADK                            R6 K14 ["StartPageService"]
       37 CALL                             R5 1 1
       38 DUPCLOSURE                       R6 K15 [PROTO_0]
       39 DUPCLOSURE                       R7 K16 [PROTO_1]
       40 DUPCLOSURE                       R8 K17 [PROTO_2]
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R1
       45 RETURN                           R8 1
