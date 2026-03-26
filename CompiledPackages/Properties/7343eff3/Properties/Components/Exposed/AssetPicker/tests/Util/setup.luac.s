PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R0 1
        1 NEWTABLE                         R1 0 0
        3 RETURN                           R0 2

PROTO_2:
        0 GETUPVAL                         R1 2
        1 GETTABLEKS                       R0 R1 K0 ["useState"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 2
        5 SETUPVAL                         R0 0
        6 SETUPVAL                         R1 1
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R0 R1 K0 ["useState"]
       10 GETUPVAL                         R1 5
       11 JUMPIFNOT                        R1 ; [+3]
       12 GETUPVAL                         R2 5
       13 GETTABLEKS                       R1 R2 K1 ["mockRequestsConfig"]
       15 CALL                             R0 1 2
       16 SETUPVAL                         R0 3
       17 SETUPVAL                         R1 4
       18 GETUPVAL                         R1 0
       19 JUMPIFNOT                        R1 ; [+87]
       20 GETUPVAL                         R0 6
       21 GETUPVAL                         R1 7
       22 DUPTABLE                         R2 K8 [{"networking", "assetType", "gameId", "showNewButton", "onAssetSelected", "shareAccessToAssetsAsync"}]
       23 GETUPVAL                         R3 8
       24 GETUPVAL                         R4 9
       25 DUPTABLE                         R5 K13 [{"inventories", "pageSize", "failAllRequests", "requestToYield"}]
       26 GETUPVAL                         R7 3
       27 JUMPIFNOT                        R7 ; [+4]
       28 GETUPVAL                         R7 3
       29 GETTABLEKS                       R6 R7 K9 ["inventories"]
       31 JUMPIF                           R6 ; [+3]
       32 GETUPVAL                         R7 10
       33 GETTABLEKS                       R6 R7 K9 ["inventories"]
       35 SETTABLEKS                       R6 R5 K9 ["inventories"]
       37 GETUPVAL                         R7 3
       38 JUMPIFNOT                        R7 ; [+4]
       39 GETUPVAL                         R7 3
       40 GETTABLEKS                       R6 R7 K10 ["pageSize"]
       42 JUMPIF                           R6 ; [+1]
       43 LOADNIL                          R6
       44 SETTABLEKS                       R6 R5 K10 ["pageSize"]
       46 GETUPVAL                         R6 3
       47 JUMPIFNOT                        R6 ; [+3]
       48 GETUPVAL                         R7 3
       49 GETTABLEKS                       R6 R7 K11 ["failAllRequests"]
       51 SETTABLEKS                       R6 R5 K11 ["failAllRequests"]
       53 GETUPVAL                         R6 3
       54 JUMPIFNOT                        R6 ; [+3]
       55 GETUPVAL                         R7 3
       56 GETTABLEKS                       R6 R7 K12 ["requestToYield"]
       58 SETTABLEKS                       R6 R5 K12 ["requestToYield"]
       60 CALL                             R4 1 -1
       61 CALL                             R3 -1 1
       62 SETTABLEKS                       R3 R2 K2 ["networking"]
       64 GETUPVAL                         R3 11
       65 SETTABLEKS                       R3 R2 K3 ["assetType"]
       67 GETUPVAL                         R4 5
       68 JUMPIFNOT                        R4 ; [+4]
       69 GETUPVAL                         R4 5
       70 GETTABLEKS                       R3 R4 K4 ["gameId"]
       72 JUMPIF                           R3 ; [+5]
       73 GETUPVAL                         R5 10
       74 GETTABLEKS                       R4 R5 K14 ["universe"]
       76 GETTABLEKS                       R3 R4 K15 ["id"]
       78 SETTABLEKS                       R3 R2 K4 ["gameId"]
       80 GETUPVAL                         R3 5
       81 JUMPIFNOT                        R3 ; [+3]
       82 GETUPVAL                         R4 5
       83 GETTABLEKS                       R3 R4 K5 ["showNewButton"]
       85 SETTABLEKS                       R3 R2 K5 ["showNewButton"]
       87 GETUPVAL                         R4 5
       88 JUMPIFNOT                        R4 ; [+4]
       89 GETUPVAL                         R4 5
       90 GETTABLEKS                       R3 R4 K6 ["onAssetSelected"]
       92 JUMPIF                           R3 ; [+1]
       93 DUPCLOSURE                       R3 K16 [PROTO_0]
       94 SETTABLEKS                       R3 R2 K6 ["onAssetSelected"]
       96 GETUPVAL                         R4 5
       97 JUMPIFNOT                        R4 ; [+4]
       98 GETUPVAL                         R4 5
       99 GETTABLEKS                       R3 R4 K7 ["shareAccessToAssetsAsync"]
      101 JUMPIF                           R3 ; [+1]
      102 DUPCLOSURE                       R3 K17 [PROTO_1]
      103 SETTABLEKS                       R3 R2 K7 ["shareAccessToAssetsAsync"]
      105 CALL                             R0 2 1
      106 RETURN                           R0 1
      107 LOADNIL                          R0
      108 RETURN                           R0 1

PROTO_3:
        0 LOADNIL                          R1
        1 RETURN                           R1 1

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 NOT                              R1 R2
        2 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        4 LOADK                            R2 K0 ["assetpicker alr open"]
        5 GETIMPORT                        R0 K2 [assert]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R0 1
        9 LOADB                            R1 1
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["assetpicker alr closed"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 1
        8 LOADB                            R1 0
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssetItemsContainer"]
        2 LOADB                            R3 1
        3 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssetItemsContainer"]
        2 LOADB                            R3 1
        3 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        5 CALL                             R0 3 1
        6 NEWTABLE                         R1 0 0
        8 NAMECALL                         R2 R0 K2 ["GetChildren"]
       10 CALL                             R2 1 3
       11 FORGPREP                         R2
       12 LOADK                            R9 K3 ["UIListLayout"]
       13 NAMECALL                         R7 R6 K4 ["IsA"]
       15 CALL                             R7 2 1
       16 JUMPIF                           R7 ; [+41]
       17 LOADK                            R9 K5 ["Name"]
       18 LOADB                            R10 1
       19 NAMECALL                         R7 R6 K1 ["FindFirstChild"]
       21 CALL                             R7 3 1
       22 LOADK                            R10 K6 ["LastUpdated"]
       23 LOADB                            R11 1
       24 NAMECALL                         R8 R6 K1 ["FindFirstChild"]
       26 CALL                             R8 3 1
       27 LOADB                            R10 0
       28 JUMPIFEQKNIL                     R7 ; [+5]
       30 JUMPIFNOTEQKNIL                  R8 ; [+2]
       32 LOADB                            R10 0 +1
       33 LOADB                            R10 1
       34 LOADK                            R12 K7 ["Couldn't find name/lastUpdated from asset #%*"]
       35 GETTABLEKS                       R14 R6 K8 ["LayoutOrder"]
       37 NAMECALL                         R12 R12 K9 ["format"]
       39 CALL                             R12 2 1
       40 MOVE                             R11 R12
       41 FASTCALL2                        ASSERT R10 R11 ; [+3]
       43 GETIMPORT                        R9 K11 [assert]
       45 CALL                             R9 2 0
       46 GETTABLEKS                       R9 R6 K8 ["LayoutOrder"]
       48 DUPTABLE                         R10 K14 [{"name", "lastUpdated"}]
       49 GETTABLEKS                       R11 R7 K15 ["Text"]
       51 SETTABLEKS                       R11 R10 K12 ["name"]
       53 GETTABLEKS                       R11 R8 K15 ["Text"]
       55 SETTABLEKS                       R11 R10 K13 ["lastUpdated"]
       57 SETTABLE                         R10 R1 R9
       58 FORGLOOP                         R2 2 ; [-47]
       60 RETURN                           R1 1

PROTO_10:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 3
        4 FORGPREP                         R1
        5 GETTABLEKS                       R6 R5 K0 ["name"]
        7 SETTABLE                         R6 R0 R4
        8 FORGLOOP                         R1 2 ; [-4]
       10 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["AssetItemsContainer"]
        2 LOADB                            R4 1
        3 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        5 CALL                             R1 3 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["click"]
        9 GETUPVAL                         R4 2
       10 MOVE                             R5 R1
       11 MOVE                             R6 R0
       12 CALL                             R4 2 1
       13 GETTABLEKS                       R3 R4 K3 ["Parent"]
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["ContentView"]
        2 LOADB                            R3 1
        3 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        5 CALL                             R0 3 1
        6 LOADK                            R3 K2 ["ScrollingFrame"]
        7 LOADB                            R4 1
        8 NAMECALL                         R1 R0 K3 ["FindFirstChildWhichIsA"]
       10 CALL                             R1 3 -1
       11 RETURN                           R1 -1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [Vector2.new]
        3 LOADN                            R2 0
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K3 ["AbsoluteCanvasSize"]
        7 GETTABLEKS                       R3 R4 K4 ["Y"]
        9 CALL                             R1 2 1
       10 SETTABLEKS                       R1 R0 K5 ["CanvasPosition"]
       12 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["ContentView"]
        2 LOADB                            R4 1
        3 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        5 CALL                             R1 3 1
        6 LOADK                            R4 K2 ["ScrollingFrame"]
        7 LOADB                            R5 1
        8 NAMECALL                         R2 R1 K3 ["FindFirstChildWhichIsA"]
       10 CALL                             R2 3 1
       11 MOVE                             R0 R2
       12 GETUPVAL                         R1 1
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          VAL R0
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["ScopeMenuAnchor"]
        2 LOADB                            R4 1
        3 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        5 CALL                             R1 3 1
        6 GETTABLEKS                       R0 R1 K2 ["Button"]
        8 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["ScopeMenu"]
        2 LOADB                            R3 1
        3 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["OptionMenuAnchor"]
        2 LOADB                            R4 1
        3 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        5 CALL                             R1 3 1
        6 GETTABLEKS                       R0 R1 K2 ["Button"]
        8 RETURN                           R0 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["OptionMenu"]
        2 LOADB                            R3 1
        3 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_19:
        0 NEWTABLE                         R1 0 0
        2 NAMECALL                         R2 R0 K0 ["GetChildren"]
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 LOADK                            R9 K1 ["CategoryItems"]
        7 NAMECALL                         R7 R6 K2 ["FindFirstChild"]
        9 CALL                             R7 2 1
       10 NEWTABLE                         R8 0 0
       12 NAMECALL                         R9 R7 K0 ["GetChildren"]
       14 CALL                             R9 1 3
       15 FORGPREP                         R9
       16 GETTABLEKS                       R14 R13 K3 ["LayoutOrder"]
       18 GETTABLEKS                       R16 R13 K4 ["Label"]
       20 GETTABLEKS                       R15 R16 K5 ["Text"]
       22 SETTABLE                         R15 R8 R14
       23 FORGLOOP                         R9 2 ; [-8]
       25 LOADK                            R11 K6 ["Header"]
       26 NAMECALL                         R9 R6 K2 ["FindFirstChild"]
       28 CALL                             R9 2 1
       29 JUMPIFNOTEQKNIL                  R9 ; [+5]
       31 GETTABLEKS                       R10 R6 K3 ["LayoutOrder"]
       33 SETTABLE                         R8 R1 R10
       34 JUMP                             ; [+3]
       35 GETTABLEKS                       R10 R9 K5 ["Text"]
       37 SETTABLE                         R8 R1 R10
       38 FORGLOOP                         R2 2 ; [-33]
       40 RETURN                           R1 1

PROTO_20:
        0 GETUPVAL                         R3 0
        1 LOADK                            R5 K0 ["ScopeMenuAnchor"]
        2 LOADB                            R6 1
        3 NAMECALL                         R3 R3 K1 ["FindFirstChild"]
        5 CALL                             R3 3 1
        6 GETTABLEKS                       R2 R3 K2 ["Button"]
        8 GETTABLEKS                       R1 R2 K3 ["ScopeName"]
       10 GETTABLEKS                       R0 R1 K4 ["Text"]
       12 RETURN                           R0 1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 1
        4 RETURN                           R0 1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["click"]
        3 GETUPVAL                         R2 1
        4 LOADK                            R4 K1 ["ScopeMenuAnchor"]
        5 LOADB                            R5 1
        6 NAMECALL                         R2 R2 K2 ["FindFirstChild"]
        8 CALL                             R2 3 1
        9 GETTABLEKS                       R1 R2 K3 ["Button"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["ScopeMenu"]
        2 LOADB                            R4 1
        3 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        5 CALL                             R1 3 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["click"]
        9 GETUPVAL                         R4 2
       10 MOVE                             R5 R1
       11 MOVE                             R6 R0
       12 CALL                             R4 2 1
       13 GETTABLEKS                       R3 R4 K3 ["Parent"]
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 1
        4 RETURN                           R0 1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["click"]
        3 GETUPVAL                         R2 1
        4 LOADK                            R4 K1 ["OptionMenuAnchor"]
        5 LOADB                            R5 1
        6 NAMECALL                         R2 R2 K2 ["FindFirstChild"]
        8 CALL                             R2 3 1
        9 GETTABLEKS                       R1 R2 K3 ["Button"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["OptionMenu"]
        2 LOADB                            R4 1
        3 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        5 CALL                             R1 3 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["click"]
        9 GETUPVAL                         R4 2
       10 MOVE                             R5 R1
       11 MOVE                             R6 R0
       12 CALL                             R4 2 1
       13 GETTABLEKS                       R3 R4 K3 ["Parent"]
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["CaptureFocus"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 GETUPVAL                         R1 1
        6 SETTABLEKS                       R1 R0 K1 ["Text"]
        8 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R3 K0 ["name"]
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 2
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R0
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R4 K0 ["New %*"]
        3 GETUPVAL                         R7 2
        4 GETTABLEKS                       R6 R7 K1 ["Name"]
        6 NAMECALL                         R4 R4 K2 ["format"]
        8 CALL                             R4 2 1
        9 MOVE                             R3 R4
       10 CALL                             R1 2 1
       11 JUMPIFNOTEQKNIL                  R1 ; [+2]
       13 LOADB                            R0 0 +1
       14 LOADB                            R0 1
       15 RETURN                           R0 1

PROTO_30:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R3 K0 ["Import"]
        3 CALL                             R1 2 1
        4 JUMPIFNOTEQKNIL                  R1 ; [+2]
        6 LOADB                            R0 0 +1
        7 LOADB                            R0 1
        8 RETURN                           R0 1

PROTO_31:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["click"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 LOADK                            R4 K1 ["Import"]
        6 CALL                             R2 2 1
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["UpdateUnitTestOnly"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_33:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 JUMPIFNOT                        R0 ; [+3]
        5 GETTABLEKS                       R5 R0 K0 ["assetType"]
        7 JUMPIF                           R5 ; [+2]
        8 GETIMPORT                        R5 K4 [Enum.AssetType.Image]
       10 NEWCLOSURE                       R6 P0
       11 CAPTURE                          REF R1
       12 CAPTURE                          REF R2
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          REF R3
       15 CAPTURE                          REF R4
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          UPVAL U5
       22 CAPTURE                          VAL R5
       23 GETUPVAL                         R9 6
       24 GETTABLEKS                       R8 R9 K5 ["renderWithMocks"]
       26 GETUPVAL                         R9 1
       27 LOADK                            R10 K6 ["ScreenGui"]
       28 DUPTABLE                         R11 K8 [{"ZIndexBehavior"}]
       29 GETIMPORT                        R12 K10 [Enum.ZIndexBehavior.Sibling]
       31 SETTABLEKS                       R12 R11 K7 ["ZIndexBehavior"]
       33 GETUPVAL                         R12 1
       34 GETUPVAL                         R14 7
       35 GETTABLEKS                       R13 R14 K11 ["Provider"]
       37 DUPTABLE                         R14 K16 [{"theme", "userId", "browseAssetsAsync", "openAssetManager"}]
       38 LOADK                            R15 K17 ["Dark"]
       39 SETTABLEKS                       R15 R14 K12 ["theme"]
       41 GETUPVAL                         R17 5
       42 GETTABLEKS                       R16 R17 K18 ["user"]
       44 GETTABLEKS                       R15 R16 K19 ["id"]
       46 SETTABLEKS                       R15 R14 K13 ["userId"]
       48 JUMPIFNOT                        R0 ; [+3]
       49 GETTABLEKS                       R15 R0 K14 ["browseAssetsAsync"]
       51 JUMPIF                           R15 ; [+1]
       52 DUPCLOSURE                       R15 K20 [PROTO_3]
       53 SETTABLEKS                       R15 R14 K14 ["browseAssetsAsync"]
       55 JUMPIFNOT                        R0 ; [+3]
       56 GETTABLEKS                       R15 R0 K15 ["openAssetManager"]
       58 JUMPIF                           R15 ; [+1]
       59 DUPCLOSURE                       R15 K21 [PROTO_4]
       60 SETTABLEKS                       R15 R14 K15 ["openAssetManager"]
       62 GETUPVAL                         R15 1
       63 MOVE                             R16 R6
       64 CALL                             R15 1 -1
       65 CALL                             R12 -1 -1
       66 CALL                             R9 -1 -1
       67 CALL                             R8 -1 1
       68 GETTABLEKS                       R7 R8 K22 ["container"]
       70 NEWCLOSURE                       R8 P3
       71 CAPTURE                          VAL R7
       72 NEWCLOSURE                       R9 P4
       73 CAPTURE                          REF R1
       74 CAPTURE                          REF R2
       75 NEWCLOSURE                       R10 P5
       76 CAPTURE                          REF R1
       77 CAPTURE                          REF R2
       78 NEWCLOSURE                       R11 P6
       79 CAPTURE                          VAL R7
       80 NEWCLOSURE                       R12 P7
       81 CAPTURE                          VAL R7
       82 NEWCLOSURE                       R13 P8
       83 CAPTURE                          VAL R12
       84 NEWCLOSURE                       R14 P9
       85 CAPTURE                          VAL R7
       86 CAPTURE                          UPVAL U8
       87 CAPTURE                          UPVAL U9
       88 NEWCLOSURE                       R15 P10
       89 CAPTURE                          VAL R7
       90 NEWCLOSURE                       R16 P11
       91 CAPTURE                          VAL R7
       92 CAPTURE                          UPVAL U10
       93 NEWCLOSURE                       R17 P12
       94 CAPTURE                          VAL R7
       95 NEWCLOSURE                       R18 P13
       96 CAPTURE                          VAL R7
       97 NEWCLOSURE                       R19 P14
       98 CAPTURE                          VAL R7
       99 NEWCLOSURE                       R20 P15
      100 CAPTURE                          VAL R7
      101 DUPCLOSURE                       R21 K23 [PROTO_19]
      102 NEWCLOSURE                       R22 P17
      103 CAPTURE                          VAL R7
      104 NEWCLOSURE                       R23 P18
      105 CAPTURE                          VAL R21
      106 CAPTURE                          VAL R18
      107 NEWCLOSURE                       R24 P19
      108 CAPTURE                          UPVAL U8
      109 CAPTURE                          VAL R7
      110 NEWCLOSURE                       R25 P20
      111 CAPTURE                          VAL R7
      112 CAPTURE                          UPVAL U8
      113 CAPTURE                          UPVAL U9
      114 NEWCLOSURE                       R26 P21
      115 CAPTURE                          VAL R21
      116 CAPTURE                          VAL R20
      117 NEWCLOSURE                       R27 P22
      118 CAPTURE                          UPVAL U8
      119 CAPTURE                          VAL R7
      120 NEWCLOSURE                       R28 P23
      121 CAPTURE                          VAL R7
      122 CAPTURE                          UPVAL U8
      123 CAPTURE                          UPVAL U9
      124 NEWCLOSURE                       R29 P24
      125 CAPTURE                          UPVAL U11
      126 CAPTURE                          VAL R7
      127 CAPTURE                          UPVAL U10
      128 NEWCLOSURE                       R30 P25
      129 CAPTURE                          UPVAL U12
      130 CAPTURE                          VAL R7
      131 CAPTURE                          VAL R5
      132 NEWCLOSURE                       R31 P26
      133 CAPTURE                          UPVAL U12
      134 CAPTURE                          VAL R7
      135 NEWCLOSURE                       R32 P27
      136 CAPTURE                          UPVAL U8
      137 CAPTURE                          UPVAL U9
      138 CAPTURE                          VAL R7
      139 DUPTABLE                         R33 K43 [{"getContainer", "setMockRequestsConfig", "openAssetPicker", "closeAssetPicker", "getAssets", "getAssetNames", "clickAsset", "scrollToEnd", "getScopeMenuButtonTitle", "getScopeMenuItems", "clickScopeMenuButton", "clickScopeMenuItem", "getOptionMenuItems", "clickOptionMenuButton", "clickOptionMenuItem", "setSearch", "newButtonShown", "importButtonShown", "clickImportButton"}]
      140 SETTABLEKS                       R8 R33 K24 ["getContainer"]
      142 SETTABLEKS                       R4 R33 K25 ["setMockRequestsConfig"]
      144 SETTABLEKS                       R9 R33 K26 ["openAssetPicker"]
      146 SETTABLEKS                       R10 R33 K27 ["closeAssetPicker"]
      148 SETTABLEKS                       R12 R33 K28 ["getAssets"]
      150 SETTABLEKS                       R13 R33 K29 ["getAssetNames"]
      152 SETTABLEKS                       R14 R33 K30 ["clickAsset"]
      154 SETTABLEKS                       R16 R33 K31 ["scrollToEnd"]
      156 SETTABLEKS                       R22 R33 K32 ["getScopeMenuButtonTitle"]
      158 SETTABLEKS                       R23 R33 K33 ["getScopeMenuItems"]
      160 SETTABLEKS                       R24 R33 K34 ["clickScopeMenuButton"]
      162 SETTABLEKS                       R25 R33 K35 ["clickScopeMenuItem"]
      164 SETTABLEKS                       R26 R33 K36 ["getOptionMenuItems"]
      166 SETTABLEKS                       R27 R33 K37 ["clickOptionMenuButton"]
      168 SETTABLEKS                       R28 R33 K38 ["clickOptionMenuItem"]
      170 SETTABLEKS                       R29 R33 K39 ["setSearch"]
      172 SETTABLEKS                       R30 R33 K40 ["newButtonShown"]
      174 SETTABLEKS                       R31 R33 K41 ["importButtonShown"]
      176 SETTABLEKS                       R32 R33 K42 ["clickImportButton"]
      178 GETUPVAL                         R34 10
      179 DUPCLOSURE                       R35 K44 [PROTO_32]
      180 CAPTURE                          UPVAL U13
      181 CALL                             R34 1 0
      182 CLOSEUPVALS                      R1
      183 RETURN                           R33 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StylingService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Properties"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R1 K8 ["Parent"]
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R6 R1 K11 ["Components"]
       19 GETTABLEKS                       R5 R6 K12 ["Exposed"]
       21 GETTABLEKS                       R4 R5 K13 ["AssetPicker"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K10 [require]
       26 GETTABLEKS                       R9 R1 K11 ["Components"]
       28 GETTABLEKS                       R8 R9 K12 ["Exposed"]
       30 GETTABLEKS                       R7 R8 K13 ["AssetPicker"]
       32 GETTABLEKS                       R6 R7 K14 ["Contexts"]
       34 GETTABLEKS                       R5 R6 K15 ["AssetPickerProvider"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K10 [require]
       39 GETTABLEKS                       R7 R2 K16 ["Dev"]
       41 GETTABLEKS                       R6 R7 K17 ["FoundationTestingLibrary"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K10 [require]
       46 GETTABLEKS                       R12 R1 K11 ["Components"]
       48 GETTABLEKS                       R11 R12 K12 ["Exposed"]
       50 GETTABLEKS                       R10 R11 K13 ["AssetPicker"]
       52 GETTABLEKS                       R9 R10 K18 ["tests"]
       54 GETTABLEKS                       R8 R9 K19 ["Util"]
       56 GETTABLEKS                       R7 R8 K20 ["MockData"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K10 [require]
       61 GETTABLEKS                       R8 R2 K21 ["React"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K10 [require]
       66 GETTABLEKS                       R10 R2 K16 ["Dev"]
       68 GETTABLEKS                       R9 R10 K22 ["ReactTestingLibrary"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K10 [require]
       73 GETTABLEKS                       R13 R1 K11 ["Components"]
       75 GETTABLEKS                       R12 R13 K12 ["Exposed"]
       77 GETTABLEKS                       R11 R12 K13 ["AssetPicker"]
       79 GETTABLEKS                       R10 R11 K23 ["Types"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K10 [require]
       84 GETTABLEKS                       R13 R1 K24 ["Tests"]
       86 GETTABLEKS                       R12 R13 K19 ["Util"]
       88 GETTABLEKS                       R11 R12 K25 ["act"]
       90 CALL                             R10 1 1
       91 GETIMPORT                        R11 K10 [require]
       93 GETTABLEKS                       R17 R1 K11 ["Components"]
       95 GETTABLEKS                       R16 R17 K12 ["Exposed"]
       97 GETTABLEKS                       R15 R16 K13 ["AssetPicker"]
       99 GETTABLEKS                       R14 R15 K18 ["tests"]
      101 GETTABLEKS                       R13 R14 K19 ["Util"]
      103 GETTABLEKS                       R12 R13 K26 ["createMockRequests"]
      105 CALL                             R11 1 1
      106 GETIMPORT                        R12 K10 [require]
      108 GETTABLEKS                       R17 R1 K11 ["Components"]
      110 GETTABLEKS                       R16 R17 K12 ["Exposed"]
      112 GETTABLEKS                       R15 R16 K13 ["AssetPicker"]
      114 GETTABLEKS                       R14 R15 K27 ["Networking"]
      116 GETTABLEKS                       R13 R14 K28 ["createNetworking"]
      118 CALL                             R12 1 1
      119 GETIMPORT                        R13 K10 [require]
      121 GETTABLEKS                       R16 R1 K24 ["Tests"]
      123 GETTABLEKS                       R15 R16 K19 ["Util"]
      125 GETTABLEKS                       R14 R15 K29 ["fireEvent"]
      127 CALL                             R13 1 1
      128 GETTABLEKS                       R14 R7 K30 ["createElement"]
      130 GETTABLEKS                       R15 R8 K31 ["getByPlaceholderText"]
      132 GETTABLEKS                       R16 R8 K32 ["getByText"]
      134 GETTABLEKS                       R17 R8 K33 ["queryByText"]
      136 DUPCLOSURE                       R18 K34 [PROTO_33]
      137 CAPTURE                          VAL R7
      138 CAPTURE                          VAL R14
      139 CAPTURE                          VAL R3
      140 CAPTURE                          VAL R12
      141 CAPTURE                          VAL R11
      142 CAPTURE                          VAL R6
      143 CAPTURE                          VAL R5
      144 CAPTURE                          VAL R4
      145 CAPTURE                          VAL R13
      146 CAPTURE                          VAL R16
      147 CAPTURE                          VAL R10
      148 CAPTURE                          VAL R15
      149 CAPTURE                          VAL R17
      150 CAPTURE                          VAL R0
      151 RETURN                           R18 1
