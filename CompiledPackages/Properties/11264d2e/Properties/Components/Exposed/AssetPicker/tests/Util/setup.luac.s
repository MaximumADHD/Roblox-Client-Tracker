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
       19 JUMPIFNOT                        R1 ; [+80]
       20 GETUPVAL                         R0 6
       21 GETUPVAL                         R1 7
       22 DUPTABLE                         R2 K8 [{"networking", "assetType", "gameId", "showNewButton", "onAssetSelected", "shareAccessToAssetsAsync"}]
       23 GETUPVAL                         R3 8
       24 GETUPVAL                         R4 9
       25 DUPTABLE                         R5 K14 [{"inventories", "universeInfo", "pageSize", "failAllRequests", "requestToYield"}]
       26 GETUPVAL                         R7 3
       27 JUMPIFNOT                        R7 ; [+4]
       28 GETUPVAL                         R7 3
       29 GETTABLEKS                       R6 R7 K9 ["inventories"]
       31 JUMPIF                           R6 ; [+3]
       32 GETUPVAL                         R7 10
       33 GETTABLEKS                       R6 R7 K9 ["inventories"]
       35 SETTABLEKS                       R6 R5 K9 ["inventories"]
       37 GETUPVAL                         R6 11
       38 SETTABLEKS                       R6 R5 K10 ["universeInfo"]
       40 GETUPVAL                         R7 3
       41 JUMPIFNOT                        R7 ; [+4]
       42 GETUPVAL                         R7 3
       43 GETTABLEKS                       R6 R7 K11 ["pageSize"]
       45 JUMPIF                           R6 ; [+1]
       46 LOADNIL                          R6
       47 SETTABLEKS                       R6 R5 K11 ["pageSize"]
       49 GETUPVAL                         R6 3
       50 JUMPIFNOT                        R6 ; [+3]
       51 GETUPVAL                         R7 3
       52 GETTABLEKS                       R6 R7 K12 ["failAllRequests"]
       54 SETTABLEKS                       R6 R5 K12 ["failAllRequests"]
       56 GETUPVAL                         R6 3
       57 JUMPIFNOT                        R6 ; [+3]
       58 GETUPVAL                         R7 3
       59 GETTABLEKS                       R6 R7 K13 ["requestToYield"]
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
       75 GETUPVAL                         R4 5
       76 GETTABLEKS                       R3 R4 K5 ["showNewButton"]
       78 SETTABLEKS                       R3 R2 K5 ["showNewButton"]
       80 GETUPVAL                         R4 5
       81 JUMPIFNOT                        R4 ; [+4]
       82 GETUPVAL                         R4 5
       83 GETTABLEKS                       R3 R4 K6 ["onAssetSelected"]
       85 JUMPIF                           R3 ; [+1]
       86 DUPCLOSURE                       R3 K15 [PROTO_0]
       87 SETTABLEKS                       R3 R2 K6 ["onAssetSelected"]
       89 GETUPVAL                         R4 5
       90 JUMPIFNOT                        R4 ; [+4]
       91 GETUPVAL                         R4 5
       92 GETTABLEKS                       R3 R4 K7 ["shareAccessToAssetsAsync"]
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
        0 GETTABLEKS                       R4 R0 K0 ["AbsolutePosition"]
        2 GETTABLEKS                       R3 R4 K1 ["Y"]
        4 GETTABLEKS                       R5 R1 K0 ["AbsolutePosition"]
        6 GETTABLEKS                       R4 R5 K1 ["Y"]
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
        3 GETUPVAL                         R1 1
        4 LOADK                            R3 K1 ["ContentView"]
        5 LOADB                            R4 1
        6 NAMECALL                         R1 R1 K2 ["FindFirstChild"]
        8 CALL                             R1 3 1
        9 GETTABLEKS                       R0 R1 K3 ["ScrollingFrame"]
       11 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 DUPCLOSURE                       R3 K0 [PROTO_8]
        2 CALL                             R2 1 0
        3 GETUPVAL                         R2 1
        4 LOADK                            R4 K1 ["ContentView"]
        5 LOADB                            R5 1
        6 NAMECALL                         R2 R2 K2 ["FindFirstChild"]
        8 CALL                             R2 3 1
        9 GETTABLEKS                       R1 R2 K3 ["ScrollingFrame"]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R2 R3 K4 ["click"]
       14 GETUPVAL                         R4 3
       15 MOVE                             R5 R1
       16 MOVE                             R6 R0
       17 CALL                             R4 2 1
       18 GETTABLEKS                       R3 R4 K5 ["Parent"]
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 DUPCLOSURE                       R2 K0 [PROTO_8]
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 LOADK                            R3 K1 ["ContentView"]
        5 LOADB                            R4 1
        6 NAMECALL                         R1 R1 K2 ["FindFirstChild"]
        8 CALL                             R1 3 1
        9 GETTABLEKS                       R0 R1 K3 ["ScrollingFrame"]
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
        3 GETUPVAL                         R1 1
        4 LOADK                            R3 K1 ["ContentView"]
        5 LOADB                            R4 1
        6 NAMECALL                         R1 R1 K2 ["FindFirstChild"]
        8 CALL                             R1 3 1
        9 GETTABLEKS                       R0 R1 K3 ["ScrollingFrame"]
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
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K3 ["AbsoluteCanvasSize"]
        7 GETTABLEKS                       R3 R4 K4 ["Y"]
        9 CALL                             R1 2 1
       10 SETTABLEKS                       R1 R0 K5 ["CanvasPosition"]
       12 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 DUPCLOSURE                       R2 K0 [PROTO_8]
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 LOADK                            R3 K1 ["ContentView"]
        5 LOADB                            R4 1
        6 NAMECALL                         R1 R1 K2 ["FindFirstChild"]
        8 CALL                             R1 3 1
        9 GETTABLEKS                       R0 R1 K3 ["ScrollingFrame"]
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
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["ScopeMenuAnchor"]
        2 LOADB                            R4 1
        3 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        5 CALL                             R1 3 1
        6 GETTABLEKS                       R0 R1 K2 ["Button"]
        8 RETURN                           R0 1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["ScopeMenu"]
        2 LOADB                            R3 1
        3 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["OptionMenuAnchor"]
        2 LOADB                            R4 1
        3 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        5 CALL                             R1 3 1
        6 GETTABLEKS                       R0 R1 K2 ["Button"]
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

PROTO_27:
        0 GETUPVAL                         R3 0
        1 LOADK                            R5 K0 ["ScopeMenuAnchor"]
        2 LOADB                            R6 1
        3 NAMECALL                         R3 R3 K1 ["FindFirstChild"]
        5 CALL                             R3 3 1
        6 GETTABLEKS                       R2 R3 K2 ["Button"]
        8 GETTABLEKS                       R1 R2 K3 ["ScopeName"]
       10 GETTABLEKS                       R0 R1 K4 ["Text"]
       12 RETURN                           R0 1

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 1
        4 RETURN                           R0 1

PROTO_29:
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

PROTO_30:
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

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 1
        4 RETURN                           R0 1

PROTO_32:
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

PROTO_33:
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
       25 GETTABLEN                        R3 R0 1
       26 GETTABLEKS                       R2 R3 K9 ["AbsoluteSize"]
       28 GETTABLEKS                       R1 R2 K10 ["Y"]
       30 JUMPIFNOTEQKN                    R1 K11 [40] ; [+3]
       32 LOADK                            R2 K12 ["List"]
       33 RETURN                           R2 1
       34 JUMPIFNOTEQKN                    R1 K13 [90] ; [+3]
       36 LOADK                            R2 K14 ["Grid"]
       37 RETURN                           R2 1
       38 GETIMPORT                        R2 K16 [error]
       40 LOADK                            R4 K17 ["Couldn't figure out layout based on height: %*"]
       41 MOVE                             R6 R1
       42 NAMECALL                         R4 R4 K18 ["format"]
       44 CALL                             R4 2 1
       45 MOVE                             R3 R4
       46 CALL                             R2 1 0
       47 RETURN                           R0 0

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
        2 LOADK                            R4 K0 ["New %*"]
        3 GETUPVAL                         R6 2
        4 NAMECALL                         R4 R4 K1 ["format"]
        6 CALL                             R4 2 1
        7 MOVE                             R3 R4
        8 CALL                             R1 2 1
        9 JUMPIFNOTEQKNIL                  R1 ; [+2]
       11 LOADB                            R0 0 +1
       12 LOADB                            R0 1
       13 RETURN                           R0 1

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["click"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 LOADK                            R4 K1 ["Import"]
        6 CALL                             R2 2 1
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
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
       13 GETTABLEKS                       R7 R0 K2 ["universeInfo"]
       15 GETTABLEKS                       R6 R7 K3 ["gameId"]
       17 JUMPIF                           R6 ; [+5]
       18 GETUPVAL                         R8 0
       19 GETTABLEKS                       R7 R8 K4 ["universe"]
       21 GETTABLEKS                       R6 R7 K5 ["id"]
       23 DUPTABLE                         R7 K7 [{"gameId", "creatorInfo"}]
       24 SETTABLEKS                       R6 R7 K3 ["gameId"]
       26 JUMPIFNOT                        R0 ; [+8]
       27 GETTABLEKS                       R9 R0 K2 ["universeInfo"]
       29 JUMPIFNOT                        R9 ; [+5]
       30 GETTABLEKS                       R9 R0 K2 ["universeInfo"]
       32 GETTABLEKS                       R8 R9 K6 ["creatorInfo"]
       34 JUMPIF                           R8 ; [+11]
       35 DUPTABLE                         R8 K9 [{"id", "type"}]
       36 GETUPVAL                         R11 0
       37 GETTABLEKS                       R10 R11 K10 ["user"]
       39 GETTABLEKS                       R9 R10 K5 ["id"]
       41 SETTABLEKS                       R9 R8 K5 ["id"]
       43 LOADK                            R9 K11 ["User"]
       44 SETTABLEKS                       R9 R8 K8 ["type"]
       46 SETTABLEKS                       R8 R7 K6 ["creatorInfo"]
       48 NEWCLOSURE                       R8 P0
       49 CAPTURE                          REF R1
       50 CAPTURE                          REF R2
       51 CAPTURE                          UPVAL U1
       52 CAPTURE                          REF R3
       53 CAPTURE                          REF R4
       54 CAPTURE                          VAL R0
       55 CAPTURE                          UPVAL U2
       56 CAPTURE                          UPVAL U3
       57 CAPTURE                          UPVAL U4
       58 CAPTURE                          UPVAL U5
       59 CAPTURE                          UPVAL U0
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R6
       63 GETUPVAL                         R11 6
       64 GETTABLEKS                       R10 R11 K12 ["renderWithMocks"]
       66 GETUPVAL                         R11 2
       67 LOADK                            R12 K13 ["ScreenGui"]
       68 DUPTABLE                         R13 K15 [{"ZIndexBehavior"}]
       69 GETIMPORT                        R14 K18 [Enum.ZIndexBehavior.Sibling]
       71 SETTABLEKS                       R14 R13 K14 ["ZIndexBehavior"]
       73 GETUPVAL                         R14 2
       74 GETUPVAL                         R16 7
       75 GETTABLEKS                       R15 R16 K19 ["Provider"]
       77 DUPTABLE                         R16 K24 [{"theme", "userId", "browseAssetsAsync", "openAssetManager"}]
       78 LOADK                            R17 K25 ["Dark"]
       79 SETTABLEKS                       R17 R16 K20 ["theme"]
       81 GETUPVAL                         R19 0
       82 GETTABLEKS                       R18 R19 K10 ["user"]
       84 GETTABLEKS                       R17 R18 K5 ["id"]
       86 SETTABLEKS                       R17 R16 K21 ["userId"]
       88 JUMPIFNOT                        R0 ; [+3]
       89 GETTABLEKS                       R17 R0 K22 ["browseAssetsAsync"]
       91 JUMPIF                           R17 ; [+1]
       92 DUPCLOSURE                       R17 K26 [PROTO_3]
       93 SETTABLEKS                       R17 R16 K22 ["browseAssetsAsync"]
       95 JUMPIFNOT                        R0 ; [+3]
       96 GETTABLEKS                       R17 R0 K23 ["openAssetManager"]
       98 JUMPIF                           R17 ; [+1]
       99 DUPCLOSURE                       R17 K27 [PROTO_4]
      100 SETTABLEKS                       R17 R16 K23 ["openAssetManager"]
      102 GETUPVAL                         R17 2
      103 MOVE                             R18 R8
      104 CALL                             R17 1 -1
      105 CALL                             R14 -1 -1
      106 CALL                             R11 -1 -1
      107 CALL                             R10 -1 1
      108 GETTABLEKS                       R9 R10 K28 ["container"]
      110 NEWCLOSURE                       R10 P3
      111 CAPTURE                          VAL R9
      112 NEWCLOSURE                       R11 P4
      113 CAPTURE                          REF R1
      114 CAPTURE                          REF R2
      115 NEWCLOSURE                       R12 P5
      116 CAPTURE                          REF R1
      117 CAPTURE                          REF R2
      118 DUPCLOSURE                       R13 K29 [PROTO_9]
      119 CAPTURE                          UPVAL U8
      120 NEWCLOSURE                       R14 P7
      121 CAPTURE                          UPVAL U8
      122 CAPTURE                          UPVAL U9
      123 CAPTURE                          VAL R9
      124 DUPCLOSURE                       R15 K30 [PROTO_12]
      125 NEWCLOSURE                       R16 P9
      126 CAPTURE                          UPVAL U8
      127 CAPTURE                          UPVAL U9
      128 CAPTURE                          VAL R9
      129 NEWCLOSURE                       R17 P10
      130 CAPTURE                          UPVAL U8
      131 CAPTURE                          UPVAL U9
      132 CAPTURE                          VAL R9
      133 NEWCLOSURE                       R18 P11
      134 CAPTURE                          UPVAL U8
      135 CAPTURE                          VAL R9
      136 NEWCLOSURE                       R19 P12
      137 CAPTURE                          UPVAL U8
      138 CAPTURE                          VAL R9
      139 CAPTURE                          UPVAL U10
      140 CAPTURE                          UPVAL U11
      141 NEWCLOSURE                       R20 P13
      142 CAPTURE                          UPVAL U8
      143 CAPTURE                          VAL R9
      144 NEWCLOSURE                       R21 P14
      145 CAPTURE                          UPVAL U8
      146 CAPTURE                          VAL R9
      147 NEWCLOSURE                       R22 P15
      148 CAPTURE                          UPVAL U8
      149 CAPTURE                          VAL R9
      150 NEWCLOSURE                       R23 P16
      151 CAPTURE                          VAL R9
      152 NEWCLOSURE                       R24 P17
      153 CAPTURE                          VAL R9
      154 NEWCLOSURE                       R25 P18
      155 CAPTURE                          VAL R9
      156 NEWCLOSURE                       R26 P19
      157 CAPTURE                          VAL R9
      158 DUPCLOSURE                       R27 K31 [PROTO_26]
      159 NEWCLOSURE                       R28 P21
      160 CAPTURE                          VAL R9
      161 NEWCLOSURE                       R29 P22
      162 CAPTURE                          VAL R27
      163 CAPTURE                          VAL R24
      164 NEWCLOSURE                       R30 P23
      165 CAPTURE                          UPVAL U10
      166 CAPTURE                          VAL R9
      167 NEWCLOSURE                       R31 P24
      168 CAPTURE                          VAL R9
      169 CAPTURE                          UPVAL U10
      170 CAPTURE                          UPVAL U11
      171 NEWCLOSURE                       R32 P25
      172 CAPTURE                          VAL R27
      173 CAPTURE                          VAL R26
      174 NEWCLOSURE                       R33 P26
      175 CAPTURE                          UPVAL U10
      176 CAPTURE                          VAL R9
      177 NEWCLOSURE                       R34 P27
      178 CAPTURE                          VAL R9
      179 CAPTURE                          UPVAL U10
      180 CAPTURE                          UPVAL U11
      181 NEWCLOSURE                       R35 P28
      182 CAPTURE                          UPVAL U8
      183 CAPTURE                          UPVAL U9
      184 CAPTURE                          VAL R9
      185 NEWCLOSURE                       R36 P29
      186 CAPTURE                          UPVAL U12
      187 CAPTURE                          VAL R9
      188 CAPTURE                          UPVAL U8
      189 NEWCLOSURE                       R37 P30
      190 CAPTURE                          UPVAL U13
      191 CAPTURE                          VAL R9
      192 CAPTURE                          VAL R5
      193 NEWCLOSURE                       R38 P31
      194 CAPTURE                          UPVAL U13
      195 CAPTURE                          VAL R9
      196 NEWCLOSURE                       R39 P32
      197 CAPTURE                          UPVAL U10
      198 CAPTURE                          UPVAL U11
      199 CAPTURE                          VAL R9
      200 DUPTABLE                         R40 K53 [{"getContainer", "setMockRequestsConfig", "openAssetPicker", "closeAssetPicker", "getAssets", "getAssetNames", "clickAsset", "scrollToBeginning", "scrollToEnd", "getScopeMenuButtonTitle", "getScopeMenuItems", "clickScopeMenuButton", "clickScopeMenuItem", "getOptionMenuItems", "clickOptionMenuButton", "clickOptionMenuItem", "getLayout", "setSearch", "newButtonShown", "importButtonShown", "clickImportButton"}]
      201 SETTABLEKS                       R10 R40 K32 ["getContainer"]
      203 SETTABLEKS                       R4 R40 K33 ["setMockRequestsConfig"]
      205 SETTABLEKS                       R11 R40 K34 ["openAssetPicker"]
      207 SETTABLEKS                       R12 R40 K35 ["closeAssetPicker"]
      209 SETTABLEKS                       R16 R40 K36 ["getAssets"]
      211 SETTABLEKS                       R17 R40 K37 ["getAssetNames"]
      213 SETTABLEKS                       R19 R40 K38 ["clickAsset"]
      215 SETTABLEKS                       R21 R40 K39 ["scrollToBeginning"]
      217 SETTABLEKS                       R22 R40 K40 ["scrollToEnd"]
      219 SETTABLEKS                       R28 R40 K41 ["getScopeMenuButtonTitle"]
      221 SETTABLEKS                       R29 R40 K42 ["getScopeMenuItems"]
      223 SETTABLEKS                       R30 R40 K43 ["clickScopeMenuButton"]
      225 SETTABLEKS                       R31 R40 K44 ["clickScopeMenuItem"]
      227 SETTABLEKS                       R32 R40 K45 ["getOptionMenuItems"]
      229 SETTABLEKS                       R33 R40 K46 ["clickOptionMenuButton"]
      231 SETTABLEKS                       R34 R40 K47 ["clickOptionMenuItem"]
      233 SETTABLEKS                       R35 R40 K48 ["getLayout"]
      235 SETTABLEKS                       R36 R40 K49 ["setSearch"]
      237 SETTABLEKS                       R37 R40 K50 ["newButtonShown"]
      239 SETTABLEKS                       R38 R40 K51 ["importButtonShown"]
      241 SETTABLEKS                       R39 R40 K52 ["clickImportButton"]
      243 GETUPVAL                         R41 8
      244 DUPCLOSURE                       R42 K54 [PROTO_40]
      245 CAPTURE                          UPVAL U14
      246 CALL                             R41 1 0
      247 GETUPVAL                         R41 8
      248 DUPCLOSURE                       R42 K55 [PROTO_8]
      249 CALL                             R41 1 0
      250 CLOSEUPVALS                      R1
      251 RETURN                           R40 1

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
      136 GETTABLEKS                       R18 R8 K34 ["queryAllByTestId"]
      138 DUPCLOSURE                       R19 K35 [PROTO_41]
      139 CAPTURE                          VAL R6
      140 CAPTURE                          VAL R7
      141 CAPTURE                          VAL R14
      142 CAPTURE                          VAL R3
      143 CAPTURE                          VAL R12
      144 CAPTURE                          VAL R11
      145 CAPTURE                          VAL R5
      146 CAPTURE                          VAL R4
      147 CAPTURE                          VAL R10
      148 CAPTURE                          VAL R18
      149 CAPTURE                          VAL R13
      150 CAPTURE                          VAL R16
      151 CAPTURE                          VAL R15
      152 CAPTURE                          VAL R17
      153 CAPTURE                          VAL R0
      154 RETURN                           R19 1
