PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R0 1
        1 NEWTABLE                         R1 0 0
        3 RETURN                           R0 2

PROTO_2:
        0 GETUPVAL                         R0 2
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 2
        5 SETUPVAL                         R0 0
        6 SETUPVAL                         R1 1
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K0 ["useState"]
       10 GETUPVAL                         R1 5
       11 JUMPIFNOT                        R1 ; [+3]
       12 GETUPVAL                         R1 5
       13 GETTABLEKS                       R1 R1 K1 ["mockRequestsConfig"]
       15 CALL                             R0 1 2
       16 SETUPVAL                         R0 3
       17 SETUPVAL                         R1 4
       18 GETUPVAL                         R1 0
       19 JUMPIFNOT                        R1 ; [+80]
       20 GETUPVAL                         R0 6
       21 GETUPVAL                         R1 7
       22 DUPTABLE                         R2 K8 [{"networking", "assetType", "gameId", "showNewButton", "onAssetSelected", "shareAccessToAssetsAsync"}]
       23 GETUPVAL                         R3 8
       24 GETUPVAL                         R4 9
       25 DUPTABLE                         R5 K14 [{"inventories", "universeInfo", "pageSize", "failAllRequests", "requestToYield"}]
       26 GETUPVAL                         R7 3
       27 JUMPIFNOT                        R7 ; [+4]
       28 GETUPVAL                         R6 3
       29 GETTABLEKS                       R6 R6 K9 ["inventories"]
       31 JUMPIF                           R6 ; [+3]
       32 GETUPVAL                         R6 10
       33 GETTABLEKS                       R6 R6 K9 ["inventories"]
       35 SETTABLEKS                       R6 R5 K9 ["inventories"]
       37 GETUPVAL                         R6 11
       38 SETTABLEKS                       R6 R5 K10 ["universeInfo"]
       40 GETUPVAL                         R7 3
       41 JUMPIFNOT                        R7 ; [+4]
       42 GETUPVAL                         R6 3
       43 GETTABLEKS                       R6 R6 K11 ["pageSize"]
       45 JUMPIF                           R6 ; [+1]
       46 LOADNIL                          R6
       47 SETTABLEKS                       R6 R5 K11 ["pageSize"]
       49 GETUPVAL                         R6 3
       50 JUMPIFNOT                        R6 ; [+3]
       51 GETUPVAL                         R6 3
       52 GETTABLEKS                       R6 R6 K12 ["failAllRequests"]
       54 SETTABLEKS                       R6 R5 K12 ["failAllRequests"]
       56 GETUPVAL                         R6 3
       57 JUMPIFNOT                        R6 ; [+3]
       58 GETUPVAL                         R6 3
       59 GETTABLEKS                       R6 R6 K13 ["requestToYield"]
       61 SETTABLEKS                       R6 R5 K13 ["requestToYield"]
       63 CALL                             R4 1 -1
       64 CALL                             R3 -1 1
       65 SETTABLEKS                       R3 R2 K2 ["networking"]
       67 GETUPVAL                         R3 12
       68 SETTABLEKS                       R3 R2 K3 ["assetType"]
       70 GETUPVAL                         R3 13
       71 SETTABLEKS                       R3 R2 K4 ["gameId"]
       73 GETUPVAL                         R3 5
       74 JUMPIFNOT                        R3 ; [+3]
       75 GETUPVAL                         R3 5
       76 GETTABLEKS                       R3 R3 K5 ["showNewButton"]
       78 SETTABLEKS                       R3 R2 K5 ["showNewButton"]
       80 GETUPVAL                         R4 5
       81 JUMPIFNOT                        R4 ; [+4]
       82 GETUPVAL                         R3 5
       83 GETTABLEKS                       R3 R3 K6 ["onAssetSelected"]
       85 JUMPIF                           R3 ; [+1]
       86 DUPCLOSURE                       R3 K15 [PROTO_0]
       87 SETTABLEKS                       R3 R2 K6 ["onAssetSelected"]
       89 GETUPVAL                         R4 5
       90 JUMPIFNOT                        R4 ; [+4]
       91 GETUPVAL                         R3 5
       92 GETTABLEKS                       R3 R3 K7 ["shareAccessToAssetsAsync"]
       94 JUMPIF                           R3 ; [+1]
       95 DUPCLOSURE                       R3 K16 [PROTO_1]
       96 SETTABLEKS                       R3 R2 K7 ["shareAccessToAssetsAsync"]
       98 CALL                             R0 2 1
       99 RETURN                           R0 1
      100 LOADNIL                          R0
      101 RETURN                           R0 1

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
        0 GETIMPORT                        R0 K2 [task.wait]
        2 CALL                             R0 0 0
        3 GETIMPORT                        R0 K2 [task.wait]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_8]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R3 R0 K0 ["AbsolutePosition"]
        2 GETTABLEKS                       R3 R3 K1 ["Y"]
        4 GETTABLEKS                       R4 R1 K0 ["AbsolutePosition"]
        6 GETTABLEKS                       R4 R4 K1 ["Y"]
        8 JUMPIFLT                         R3 R4 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_8]
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 LOADK                            R2 K1 ["AssetItem"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K4 [table.sort]
        9 MOVE                             R2 R0
       10 DUPCLOSURE                       R3 K5 [PROTO_10]
       11 CALL                             R1 2 0
       12 RETURN                           R0 1

PROTO_12:
        0 LOADK                            R3 K0 ["Name"]
        1 LOADB                            R4 1
        2 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        4 CALL                             R1 3 1
        5 GETTABLEKS                       R2 R1 K2 ["Text"]
        7 RETURN                           R2 1

PROTO_13:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R4 0
        3 DUPCLOSURE                       R5 K0 [PROTO_8]
        4 CALL                             R4 1 0
        5 GETUPVAL                         R4 1
        6 GETUPVAL                         R5 2
        7 LOADK                            R6 K1 ["AssetItem"]
        8 CALL                             R4 2 1
        9 GETIMPORT                        R5 K4 [table.sort]
       11 MOVE                             R6 R4
       12 DUPCLOSURE                       R7 K5 [PROTO_10]
       13 CALL                             R5 2 0
       14 MOVE                             R1 R4
       15 LOADNIL                          R2
       16 LOADNIL                          R3
       17 FORGPREP                         R1
       18 LOADK                            R8 K6 ["LastUpdated"]
       19 LOADB                            R9 1
       20 NAMECALL                         R6 R5 K7 ["FindFirstChild"]
       22 CALL                             R6 3 1
       23 DUPTABLE                         R9 K10 [{"name", "lastUpdated"}]
       24 LOADK                            R13 K11 ["Name"]
       25 LOADB                            R14 1
       26 NAMECALL                         R11 R5 K7 ["FindFirstChild"]
       28 CALL                             R11 3 1
       29 GETTABLEKS                       R10 R11 K12 ["Text"]
       31 SETTABLEKS                       R10 R9 K8 ["name"]
       33 GETTABLEKS                       R10 R6 K12 ["Text"]
       35 SETTABLEKS                       R10 R9 K9 ["lastUpdated"]
       37 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
       39 MOVE                             R8 R0
       40 GETIMPORT                        R7 K14 [table.insert]
       42 CALL                             R7 2 0
       43 FORGLOOP                         R1 2 ; [-26]
       45 RETURN                           R0 1

PROTO_14:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R4 0
        3 DUPCLOSURE                       R5 K0 [PROTO_8]
        4 CALL                             R4 1 0
        5 GETUPVAL                         R4 1
        6 GETUPVAL                         R5 2
        7 LOADK                            R6 K1 ["AssetItem"]
        8 CALL                             R4 2 1
        9 GETIMPORT                        R5 K4 [table.sort]
       11 MOVE                             R6 R4
       12 DUPCLOSURE                       R7 K5 [PROTO_10]
       13 CALL                             R5 2 0
       14 MOVE                             R1 R4
       15 LOADNIL                          R2
       16 LOADNIL                          R3
       17 FORGPREP                         R1
       18 LOADK                            R11 K6 ["Name"]
       19 LOADB                            R12 1
       20 NAMECALL                         R9 R5 K7 ["FindFirstChild"]
       22 CALL                             R9 3 1
       23 GETTABLEKS                       R8 R9 K8 ["Text"]
       25 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       27 MOVE                             R7 R0
       28 GETIMPORT                        R6 K10 [table.insert]
       30 CALL                             R6 2 0
       31 FORGLOOP                         R1 2 ; [-14]
       33 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_8]
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADK                            R2 K1 ["ContentView"]
        5 LOADB                            R3 1
        6 NAMECALL                         R0 R0 K2 ["FindFirstChild"]
        8 CALL                             R0 3 1
        9 GETTABLEKS                       R0 R0 K3 ["ScrollingFrame"]
       11 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 DUPCLOSURE                       R3 K0 [PROTO_8]
        2 CALL                             R2 1 0
        3 GETUPVAL                         R1 1
        4 LOADK                            R3 K1 ["ContentView"]
        5 LOADB                            R4 1
        6 NAMECALL                         R1 R1 K2 ["FindFirstChild"]
        8 CALL                             R1 3 1
        9 GETTABLEKS                       R1 R1 K3 ["ScrollingFrame"]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K4 ["click"]
       14 GETUPVAL                         R3 3
       15 MOVE                             R4 R1
       16 MOVE                             R5 R0
       17 CALL                             R3 2 1
       18 GETTABLEKS                       R3 R3 K5 ["Parent"]
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 DUPCLOSURE                       R2 K0 [PROTO_8]
        2 CALL                             R1 1 0
        3 GETUPVAL                         R0 1
        4 LOADK                            R2 K1 ["ContentView"]
        5 LOADB                            R3 1
        6 NAMECALL                         R0 R0 K2 ["FindFirstChild"]
        8 CALL                             R0 3 1
        9 GETTABLEKS                       R0 R0 K3 ["ScrollingFrame"]
       11 LOADK                            R2 K3 ["ScrollingFrame"]
       12 LOADB                            R3 1
       13 NAMECALL                         R0 R0 K4 ["FindFirstChildWhichIsA"]
       15 CALL                             R0 3 -1
       16 RETURN                           R0 -1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [Vector2.new]
        3 LOADN                            R2 0
        4 LOADN                            R3 0
        5 CALL                             R1 2 1
        6 SETTABLEKS                       R1 R0 K3 ["CanvasPosition"]
        8 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 DUPCLOSURE                       R2 K0 [PROTO_8]
        2 CALL                             R1 1 0
        3 GETUPVAL                         R0 1
        4 LOADK                            R2 K1 ["ContentView"]
        5 LOADB                            R3 1
        6 NAMECALL                         R0 R0 K2 ["FindFirstChild"]
        8 CALL                             R0 3 1
        9 GETTABLEKS                       R0 R0 K3 ["ScrollingFrame"]
       11 LOADK                            R2 K3 ["ScrollingFrame"]
       12 LOADB                            R3 1
       13 NAMECALL                         R0 R0 K4 ["FindFirstChildWhichIsA"]
       15 CALL                             R0 3 1
       16 GETUPVAL                         R1 0
       17 NEWCLOSURE                       R2 P1
       18 CAPTURE                          VAL R0
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [Vector2.new]
        3 LOADN                            R2 0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K3 ["AbsoluteCanvasSize"]
        7 GETTABLEKS                       R3 R3 K4 ["Y"]
        9 CALL                             R1 2 1
       10 SETTABLEKS                       R1 R0 K5 ["CanvasPosition"]
       12 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 DUPCLOSURE                       R2 K0 [PROTO_8]
        2 CALL                             R1 1 0
        3 GETUPVAL                         R0 1
        4 LOADK                            R2 K1 ["ContentView"]
        5 LOADB                            R3 1
        6 NAMECALL                         R0 R0 K2 ["FindFirstChild"]
        8 CALL                             R0 3 1
        9 GETTABLEKS                       R0 R0 K3 ["ScrollingFrame"]
       11 LOADK                            R2 K3 ["ScrollingFrame"]
       12 LOADB                            R3 1
       13 NAMECALL                         R0 R0 K4 ["FindFirstChildWhichIsA"]
       15 CALL                             R0 3 1
       16 GETUPVAL                         R1 0
       17 NEWCLOSURE                       R2 P1
       18 CAPTURE                          VAL R0
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["ScopeMenuAnchor"]
        2 LOADB                            R3 1
        3 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        5 CALL                             R0 3 1
        6 GETTABLEKS                       R0 R0 K2 ["Button"]
        8 RETURN                           R0 1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["ScopeMenu"]
        2 LOADB                            R3 1
        3 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["OptionMenuAnchor"]
        2 LOADB                            R3 1
        3 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        5 CALL                             R0 3 1
        6 GETTABLEKS                       R0 R0 K2 ["Button"]
        8 RETURN                           R0 1

PROTO_25:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["OptionMenu"]
        2 LOADB                            R3 1
        3 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_26:
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
       18 GETTABLEKS                       R15 R13 K4 ["Label"]
       20 GETTABLEKS                       R15 R15 K5 ["Text"]
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

PROTO_27:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["ScopeMenuAnchor"]
        2 LOADB                            R3 1
        3 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        5 CALL                             R0 3 1
        6 GETTABLEKS                       R0 R0 K2 ["Button"]
        8 GETTABLEKS                       R0 R0 K3 ["ScopeName"]
       10 GETTABLEKS                       R0 R0 K4 ["Text"]
       12 RETURN                           R0 1

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 1
        4 RETURN                           R0 1

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["click"]
        3 GETUPVAL                         R1 1
        4 LOADK                            R3 K1 ["ScopeMenuAnchor"]
        5 LOADB                            R4 1
        6 NAMECALL                         R1 R1 K2 ["FindFirstChild"]
        8 CALL                             R1 3 1
        9 GETTABLEKS                       R1 R1 K3 ["Button"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["ScopeMenu"]
        2 LOADB                            R4 1
        3 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        5 CALL                             R1 3 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["click"]
        9 GETUPVAL                         R3 2
       10 MOVE                             R4 R1
       11 MOVE                             R5 R0
       12 CALL                             R3 2 1
       13 GETTABLEKS                       R3 R3 K3 ["Parent"]
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 1
        4 RETURN                           R0 1

PROTO_32:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["click"]
        3 GETUPVAL                         R1 1
        4 LOADK                            R3 K1 ["OptionMenuAnchor"]
        5 LOADB                            R4 1
        6 NAMECALL                         R1 R1 K2 ["FindFirstChild"]
        8 CALL                             R1 3 1
        9 GETTABLEKS                       R1 R1 K3 ["Button"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["OptionMenu"]
        2 LOADB                            R4 1
        3 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        5 CALL                             R1 3 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["click"]
        9 GETUPVAL                         R3 2
       10 MOVE                             R4 R1
       11 MOVE                             R5 R0
       12 CALL                             R3 2 1
       13 GETTABLEKS                       R3 R3 K3 ["Parent"]
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R1 0
        1 DUPCLOSURE                       R2 K0 [PROTO_8]
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 LOADK                            R3 K1 ["AssetItem"]
        6 CALL                             R1 2 1
        7 GETIMPORT                        R2 K4 [table.sort]
        9 MOVE                             R3 R1
       10 DUPCLOSURE                       R4 K5 [PROTO_10]
       11 CALL                             R2 2 0
       12 MOVE                             R0 R1
       13 LENGTH                           R3 R0
       14 LOADN                            R4 0
       15 JUMPIFLT                         R4 R3 ; [+2]
       17 LOADB                            R2 0 +1
       18 LOADB                            R2 1
       19 FASTCALL2K                       ASSERT R2 K6 ; [+4]
       21 LOADK                            R3 K6 ["No asset items displayed, couldn't figure out the layout"]
       22 GETIMPORT                        R1 K8 [assert]
       24 CALL                             R1 2 0
       25 GETTABLEN                        R1 R0 1
       26 GETTABLEKS                       R1 R1 K9 ["AbsoluteSize"]
       28 GETTABLEKS                       R1 R1 K10 ["Y"]
       30 JUMPIFNOTEQKN                    R1 K11 [40] ; [+3]
       32 LOADK                            R2 K12 ["List"]
       33 RETURN                           R2 1
       34 JUMPIFNOTEQKN                    R1 K13 [90] ; [+3]
       36 LOADK                            R2 K14 ["Grid"]
       37 RETURN                           R2 1
       38 GETIMPORT                        R2 K16 [error]
       40 LOADK                            R3 K17 ["Couldn't figure out layout based on height: %*"]
       41 MOVE                             R5 R1
       42 NAMECALL                         R3 R3 K18 ["format"]
       44 CALL                             R3 2 1
       45 CALL                             R2 1 0
       46 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["CaptureFocus"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 GETUPVAL                         R1 1
        6 SETTABLEKS                       R1 R0 K1 ["Text"]
        8 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R3 K0 ["name or asset ID"]
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 2
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R0
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R3 K0 ["New %*"]
        3 GETUPVAL                         R5 2
        4 NAMECALL                         R3 R3 K1 ["format"]
        6 CALL                             R3 2 1
        7 CALL                             R1 2 1
        8 JUMPIFNOTEQKNIL                  R1 ; [+2]
       10 LOADB                            R0 0 +1
       11 LOADB                            R0 1
       12 RETURN                           R0 1

PROTO_38:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R3 K0 ["Import"]
        3 CALL                             R1 2 1
        4 JUMPIFNOTEQKNIL                  R1 ; [+2]
        6 LOADB                            R0 0 +1
        7 LOADB                            R0 1
        8 RETURN                           R0 1

PROTO_39:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["click"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 LOADK                            R3 K1 ["Import"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R1 R1 K2 ["Parent"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["UpdateUnitTestOnly"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_41:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 JUMPIFNOT                        R0 ; [+3]
        5 GETTABLEKS                       R5 R0 K0 ["assetType"]
        7 JUMPIF                           R5 ; [+1]
        8 LOADK                            R5 K1 ["Image"]
        9 JUMPIFNOT                        R0 ; [+8]
       10 GETTABLEKS                       R7 R0 K2 ["universeInfo"]
       12 JUMPIFNOT                        R7 ; [+5]
       13 GETTABLEKS                       R6 R0 K2 ["universeInfo"]
       15 GETTABLEKS                       R6 R6 K3 ["gameId"]
       17 JUMPIF                           R6 ; [+5]
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R6 R6 K4 ["universe"]
       21 GETTABLEKS                       R6 R6 K5 ["id"]
       23 DUPTABLE                         R7 K7 [{"gameId", "creatorInfo"}]
       24 SETTABLEKS                       R6 R7 K3 ["gameId"]
       26 JUMPIFNOT                        R0 ; [+8]
       27 GETTABLEKS                       R9 R0 K2 ["universeInfo"]
       29 JUMPIFNOT                        R9 ; [+5]
       30 GETTABLEKS                       R8 R0 K2 ["universeInfo"]
       32 GETTABLEKS                       R8 R8 K6 ["creatorInfo"]
       34 JUMPIF                           R8 ; [+8]
       35 DUPTABLE                         R8 K10 [{["id"], ["type"] = "User"}]
       36 GETUPVAL                         R9 0
       37 GETTABLEKS                       R9 R9 K11 ["user"]
       39 GETTABLEKS                       R9 R9 K5 ["id"]
       41 SETTABLEKS                       R9 R8 K5 ["id"]
       43 SETTABLEKS                       R8 R7 K6 ["creatorInfo"]
       45 NEWCLOSURE                       R8 P0
       46 CAPTURE                          REF R1
       47 CAPTURE                          REF R2
       48 CAPTURE                          UPVAL U1
       49 CAPTURE                          REF R3
       50 CAPTURE                          REF R4
       51 CAPTURE                          VAL R0
       52 CAPTURE                          UPVAL U2
       53 CAPTURE                          UPVAL U3
       54 CAPTURE                          UPVAL U4
       55 CAPTURE                          UPVAL U5
       56 CAPTURE                          UPVAL U0
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R6
       60 GETUPVAL                         R9 6
       61 GETTABLEKS                       R9 R9 K12 ["renderWithMocks"]
       63 GETUPVAL                         R10 2
       64 LOADK                            R11 K13 ["ScreenGui"]
       65 DUPTABLE                         R12 K15 [{"ZIndexBehavior"}]
       66 GETIMPORT                        R13 K18 [Enum.ZIndexBehavior.Sibling]
       68 SETTABLEKS                       R13 R12 K14 ["ZIndexBehavior"]
       70 GETUPVAL                         R13 2
       71 GETUPVAL                         R14 7
       72 GETTABLEKS                       R14 R14 K19 ["Provider"]
       74 DUPTABLE                         R15 K25 [{["theme"] = "Dark", ["userId"], ["browseAssetsAsync"], ["openAssetManager"]}]
       75 GETUPVAL                         R16 0
       76 GETTABLEKS                       R16 R16 K11 ["user"]
       78 GETTABLEKS                       R16 R16 K5 ["id"]
       80 SETTABLEKS                       R16 R15 K22 ["userId"]
       82 JUMPIFNOT                        R0 ; [+3]
       83 GETTABLEKS                       R16 R0 K23 ["browseAssetsAsync"]
       85 JUMPIF                           R16 ; [+1]
       86 DUPCLOSURE                       R16 K26 [PROTO_3]
       87 SETTABLEKS                       R16 R15 K23 ["browseAssetsAsync"]
       89 JUMPIFNOT                        R0 ; [+3]
       90 GETTABLEKS                       R16 R0 K24 ["openAssetManager"]
       92 JUMPIF                           R16 ; [+1]
       93 DUPCLOSURE                       R16 K27 [PROTO_4]
       94 SETTABLEKS                       R16 R15 K24 ["openAssetManager"]
       96 GETUPVAL                         R16 2
       97 MOVE                             R17 R8
       98 CALL                             R16 1 -1
       99 CALL                             R13 -1 -1
      100 CALL                             R10 -1 1
      101 DUPTABLE                         R11 K30 [{"renderProps", "wrapperProps"}]
      102 DUPTABLE                         R12 K33 [{"container", "baseElement"}]
      103 GETUPVAL                         R13 8
      104 SETTABLEKS                       R13 R12 K31 ["container"]
      106 GETUPVAL                         R13 9
      107 SETTABLEKS                       R13 R12 K32 ["baseElement"]
      109 SETTABLEKS                       R12 R11 K28 ["renderProps"]
      111 NEWTABLE                         R12 0 0
      113 SETTABLEKS                       R12 R11 K29 ["wrapperProps"]
      115 CALL                             R9 2 1
      116 GETTABLEKS                       R9 R9 K32 ["baseElement"]
      118 NEWCLOSURE                       R10 P3
      119 CAPTURE                          VAL R9
      120 NEWCLOSURE                       R11 P4
      121 CAPTURE                          REF R1
      122 CAPTURE                          REF R2
      123 NEWCLOSURE                       R12 P5
      124 CAPTURE                          REF R1
      125 CAPTURE                          REF R2
      126 DUPCLOSURE                       R13 K34 [PROTO_9]
      127 CAPTURE                          UPVAL U10
      128 NEWCLOSURE                       R14 P7
      129 CAPTURE                          UPVAL U10
      130 CAPTURE                          UPVAL U11
      131 CAPTURE                          VAL R9
      132 DUPCLOSURE                       R15 K35 [PROTO_12]
      133 NEWCLOSURE                       R16 P9
      134 CAPTURE                          UPVAL U10
      135 CAPTURE                          UPVAL U11
      136 CAPTURE                          VAL R9
      137 NEWCLOSURE                       R17 P10
      138 CAPTURE                          UPVAL U10
      139 CAPTURE                          UPVAL U11
      140 CAPTURE                          VAL R9
      141 NEWCLOSURE                       R18 P11
      142 CAPTURE                          UPVAL U10
      143 CAPTURE                          VAL R9
      144 NEWCLOSURE                       R19 P12
      145 CAPTURE                          UPVAL U10
      146 CAPTURE                          VAL R9
      147 CAPTURE                          UPVAL U12
      148 CAPTURE                          UPVAL U13
      149 NEWCLOSURE                       R20 P13
      150 CAPTURE                          UPVAL U10
      151 CAPTURE                          VAL R9
      152 NEWCLOSURE                       R21 P14
      153 CAPTURE                          UPVAL U10
      154 CAPTURE                          VAL R9
      155 NEWCLOSURE                       R22 P15
      156 CAPTURE                          UPVAL U10
      157 CAPTURE                          VAL R9
      158 NEWCLOSURE                       R23 P16
      159 CAPTURE                          VAL R9
      160 NEWCLOSURE                       R24 P17
      161 CAPTURE                          VAL R9
      162 NEWCLOSURE                       R25 P18
      163 CAPTURE                          VAL R9
      164 NEWCLOSURE                       R26 P19
      165 CAPTURE                          VAL R9
      166 DUPCLOSURE                       R27 K36 [PROTO_26]
      167 NEWCLOSURE                       R28 P21
      168 CAPTURE                          VAL R9
      169 NEWCLOSURE                       R29 P22
      170 CAPTURE                          VAL R27
      171 CAPTURE                          VAL R24
      172 NEWCLOSURE                       R30 P23
      173 CAPTURE                          UPVAL U12
      174 CAPTURE                          VAL R9
      175 NEWCLOSURE                       R31 P24
      176 CAPTURE                          VAL R9
      177 CAPTURE                          UPVAL U12
      178 CAPTURE                          UPVAL U13
      179 NEWCLOSURE                       R32 P25
      180 CAPTURE                          VAL R27
      181 CAPTURE                          VAL R26
      182 NEWCLOSURE                       R33 P26
      183 CAPTURE                          UPVAL U12
      184 CAPTURE                          VAL R9
      185 NEWCLOSURE                       R34 P27
      186 CAPTURE                          VAL R9
      187 CAPTURE                          UPVAL U12
      188 CAPTURE                          UPVAL U13
      189 NEWCLOSURE                       R35 P28
      190 CAPTURE                          UPVAL U10
      191 CAPTURE                          UPVAL U11
      192 CAPTURE                          VAL R9
      193 NEWCLOSURE                       R36 P29
      194 CAPTURE                          UPVAL U14
      195 CAPTURE                          VAL R9
      196 CAPTURE                          UPVAL U10
      197 NEWCLOSURE                       R37 P30
      198 CAPTURE                          UPVAL U15
      199 CAPTURE                          VAL R9
      200 CAPTURE                          VAL R5
      201 NEWCLOSURE                       R38 P31
      202 CAPTURE                          UPVAL U15
      203 CAPTURE                          VAL R9
      204 NEWCLOSURE                       R39 P32
      205 CAPTURE                          UPVAL U12
      206 CAPTURE                          UPVAL U13
      207 CAPTURE                          VAL R9
      208 DUPTABLE                         R40 K58 [{"getContainer", "setMockRequestsConfig", "openAssetPicker", "closeAssetPicker", "getAssets", "getAssetNames", "clickAsset", "scrollToBeginning", "scrollToEnd", "getScopeMenuButtonTitle", "getScopeMenuItems", "clickScopeMenuButton", "clickScopeMenuItem", "getOptionMenuItems", "clickOptionMenuButton", "clickOptionMenuItem", "getLayout", "setSearch", "newButtonShown", "importButtonShown", "clickImportButton"}]
      209 SETTABLEKS                       R10 R40 K37 ["getContainer"]
      211 SETTABLEKS                       R4 R40 K38 ["setMockRequestsConfig"]
      213 SETTABLEKS                       R11 R40 K39 ["openAssetPicker"]
      215 SETTABLEKS                       R12 R40 K40 ["closeAssetPicker"]
      217 SETTABLEKS                       R16 R40 K41 ["getAssets"]
      219 SETTABLEKS                       R17 R40 K42 ["getAssetNames"]
      221 SETTABLEKS                       R19 R40 K43 ["clickAsset"]
      223 SETTABLEKS                       R21 R40 K44 ["scrollToBeginning"]
      225 SETTABLEKS                       R22 R40 K45 ["scrollToEnd"]
      227 SETTABLEKS                       R28 R40 K46 ["getScopeMenuButtonTitle"]
      229 SETTABLEKS                       R29 R40 K47 ["getScopeMenuItems"]
      231 SETTABLEKS                       R30 R40 K48 ["clickScopeMenuButton"]
      233 SETTABLEKS                       R31 R40 K49 ["clickScopeMenuItem"]
      235 SETTABLEKS                       R32 R40 K50 ["getOptionMenuItems"]
      237 SETTABLEKS                       R33 R40 K51 ["clickOptionMenuButton"]
      239 SETTABLEKS                       R34 R40 K52 ["clickOptionMenuItem"]
      241 SETTABLEKS                       R35 R40 K53 ["getLayout"]
      243 SETTABLEKS                       R36 R40 K54 ["setSearch"]
      245 SETTABLEKS                       R37 R40 K55 ["newButtonShown"]
      247 SETTABLEKS                       R38 R40 K56 ["importButtonShown"]
      249 SETTABLEKS                       R39 R40 K57 ["clickImportButton"]
      251 GETUPVAL                         R41 10
      252 DUPCLOSURE                       R42 K59 [PROTO_40]
      253 CAPTURE                          UPVAL U16
      254 CALL                             R41 1 0
      255 GETUPVAL                         R41 10
      256 DUPCLOSURE                       R42 K60 [PROTO_8]
      257 CALL                             R41 1 0
      258 CLOSEUPVALS                      R1
      259 RETURN                           R40 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CoreGui"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["StylingService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["Properties"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETTABLEKS                       R3 R2 K9 ["Parent"]
       21 GETIMPORT                        R4 K11 [require]
       23 GETTABLEKS                       R5 R2 K12 ["Components"]
       25 GETTABLEKS                       R5 R5 K13 ["Exposed"]
       27 GETTABLEKS                       R5 R5 K14 ["AssetPicker"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K11 [require]
       32 GETTABLEKS                       R6 R2 K12 ["Components"]
       34 GETTABLEKS                       R6 R6 K13 ["Exposed"]
       36 GETTABLEKS                       R6 R6 K14 ["AssetPicker"]
       38 GETTABLEKS                       R6 R6 K15 ["Contexts"]
       40 GETTABLEKS                       R6 R6 K16 ["AssetPickerProvider"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K11 [require]
       45 GETTABLEKS                       R7 R3 K17 ["Dev"]
       47 GETTABLEKS                       R7 R7 K18 ["FoundationTestingLibrary"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K11 [require]
       52 GETTABLEKS                       R8 R2 K12 ["Components"]
       54 GETTABLEKS                       R8 R8 K13 ["Exposed"]
       56 GETTABLEKS                       R8 R8 K14 ["AssetPicker"]
       58 GETTABLEKS                       R8 R8 K19 ["tests"]
       60 GETTABLEKS                       R8 R8 K20 ["Util"]
       62 GETTABLEKS                       R8 R8 K21 ["MockData"]
       64 CALL                             R7 1 1
       65 GETIMPORT                        R8 K11 [require]
       67 GETTABLEKS                       R9 R3 K22 ["React"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K11 [require]
       72 GETTABLEKS                       R10 R3 K17 ["Dev"]
       74 GETTABLEKS                       R10 R10 K23 ["ReactTestingLibrary"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K11 [require]
       79 GETTABLEKS                       R11 R2 K12 ["Components"]
       81 GETTABLEKS                       R11 R11 K13 ["Exposed"]
       83 GETTABLEKS                       R11 R11 K14 ["AssetPicker"]
       85 GETTABLEKS                       R11 R11 K24 ["Types"]
       87 CALL                             R10 1 1
       88 GETIMPORT                        R11 K11 [require]
       90 GETTABLEKS                       R12 R2 K25 ["Tests"]
       92 GETTABLEKS                       R12 R12 K20 ["Util"]
       94 GETTABLEKS                       R12 R12 K26 ["act"]
       96 CALL                             R11 1 1
       97 GETIMPORT                        R12 K11 [require]
       99 GETTABLEKS                       R13 R2 K12 ["Components"]
      101 GETTABLEKS                       R13 R13 K13 ["Exposed"]
      103 GETTABLEKS                       R13 R13 K14 ["AssetPicker"]
      105 GETTABLEKS                       R13 R13 K19 ["tests"]
      107 GETTABLEKS                       R13 R13 K20 ["Util"]
      109 GETTABLEKS                       R13 R13 K27 ["createMockRequests"]
      111 CALL                             R12 1 1
      112 GETIMPORT                        R13 K11 [require]
      114 GETTABLEKS                       R14 R2 K12 ["Components"]
      116 GETTABLEKS                       R14 R14 K13 ["Exposed"]
      118 GETTABLEKS                       R14 R14 K14 ["AssetPicker"]
      120 GETTABLEKS                       R14 R14 K28 ["Networking"]
      122 GETTABLEKS                       R14 R14 K29 ["createNetworking"]
      124 CALL                             R13 1 1
      125 GETIMPORT                        R14 K11 [require]
      127 GETTABLEKS                       R15 R2 K25 ["Tests"]
      129 GETTABLEKS                       R15 R15 K20 ["Util"]
      131 GETTABLEKS                       R15 R15 K30 ["fireEvent"]
      133 CALL                             R14 1 1
      134 GETTABLEKS                       R15 R8 K31 ["createElement"]
      136 GETTABLEKS                       R16 R9 K32 ["getByPlaceholderText"]
      138 GETTABLEKS                       R17 R9 K33 ["getByText"]
      140 GETTABLEKS                       R18 R9 K34 ["queryByText"]
      142 GETTABLEKS                       R19 R9 K35 ["queryAllByTestId"]
      144 GETIMPORT                        R20 K38 [Instance.new]
      146 LOADK                            R21 K39 ["Folder"]
      147 CALL                             R20 1 1
      148 LOADK                            R21 K40 ["AssetPickerTestContainer"]
      149 SETTABLEKS                       R21 R20 K41 ["Name"]
      151 SETTABLEKS                       R0 R20 K9 ["Parent"]
      153 DUPCLOSURE                       R21 K42 [PROTO_41]
      154 CAPTURE                          VAL R7
      155 CAPTURE                          VAL R8
      156 CAPTURE                          VAL R15
      157 CAPTURE                          VAL R4
      158 CAPTURE                          VAL R13
      159 CAPTURE                          VAL R12
      160 CAPTURE                          VAL R6
      161 CAPTURE                          VAL R5
      162 CAPTURE                          VAL R20
      163 CAPTURE                          VAL R0
      164 CAPTURE                          VAL R11
      165 CAPTURE                          VAL R19
      166 CAPTURE                          VAL R14
      167 CAPTURE                          VAL R17
      168 CAPTURE                          VAL R16
      169 CAPTURE                          VAL R18
      170 CAPTURE                          VAL R1
      171 RETURN                           R21 1
