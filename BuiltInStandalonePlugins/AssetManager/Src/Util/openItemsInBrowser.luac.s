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
       40 DUPCLOSURE                       R6 K14 [PROTO_0]
       41 DUPCLOSURE                       R7 K15 [PROTO_1]
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R2
       46 RETURN                           R7 1
