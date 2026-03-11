PROTO_0:
        0 LOADNIL                          R1
        1 RETURN                           R1 1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+4]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R0 R1 K0 ["gameId"]
        5 JUMPIF                           R0 ; [+5]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R1 R2 K1 ["universe"]
        9 GETTABLEKS                       R0 R1 K2 ["id"]
       11 RETURN                           R0 1

PROTO_4:
        0 LOADB                            R0 1
        1 NEWTABLE                         R1 0 0
        3 RETURN                           R0 2

PROTO_5:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssetItemsContainer"]
        2 LOADB                            R3 1
        3 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_7:
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

PROTO_8:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 3
        4 FORGPREP                         R1
        5 GETTABLEKS                       R6 R5 K0 ["name"]
        7 SETTABLE                         R6 R0 R4
        8 FORGLOOP                         R1 2 ; [-4]
       10 RETURN                           R0 1

PROTO_9:
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

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [Vector2.new]
        3 LOADN                            R2 0
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K3 ["AbsoluteCanvasSize"]
        7 GETTABLEKS                       R3 R4 K4 ["Y"]
        9 CALL                             R1 2 1
       10 SETTABLEKS                       R1 R0 K5 ["CanvasPosition"]
       12 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["ScopeMenuAnchor"]
        2 LOADB                            R4 1
        3 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        5 CALL                             R1 3 1
        6 GETTABLEKS                       R0 R1 K2 ["Button"]
        8 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["ScopeMenu"]
        2 LOADB                            R3 1
        3 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["OptionMenuAnchor"]
        2 LOADB                            R4 1
        3 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        5 CALL                             R1 3 1
        6 GETTABLEKS                       R0 R1 K2 ["Button"]
        8 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["OptionMenu"]
        2 LOADB                            R3 1
        3 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_17:
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

PROTO_18:
        0 GETUPVAL                         R3 0
        1 LOADK                            R5 K0 ["ScopeMenuAnchor"]
        2 LOADB                            R6 1
        3 NAMECALL                         R3 R3 K1 ["FindFirstChild"]
        5 CALL                             R3 3 1
        6 GETTABLEKS                       R2 R3 K2 ["Button"]
        8 GETTABLEKS                       R1 R2 K3 ["ScopeName"]
       10 GETTABLEKS                       R0 R1 K4 ["Text"]
       12 RETURN                           R0 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 1
        4 RETURN                           R0 1

PROTO_20:
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

PROTO_21:
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

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 1
        4 RETURN                           R0 1

PROTO_23:
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

PROTO_24:
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

PROTO_25:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["CaptureFocus"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 GETUPVAL                         R1 1
        6 SETTABLEKS                       R1 R0 K1 ["Text"]
        8 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R3 K0 ["name, assetId, ..."]
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 2
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R0
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_27:
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

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R3 K0 ["Import"]
        3 CALL                             R1 2 1
        4 JUMPIFNOTEQKNIL                  R1 ; [+2]
        6 LOADB                            R0 0 +1
        7 LOADB                            R0 1
        8 RETURN                           R0 1

PROTO_29:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["click"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 LOADK                            R4 K1 ["Import"]
        6 CALL                             R2 2 1
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["UpdateUnitTestOnly"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_31:
        0 MOVE                             R1 R0
        1 JUMPIFNOT                        R1 ; [+2]
        2 GETTABLEKS                       R1 R0 K0 ["mockRequestsConfig"]
        4 JUMPIFNOT                        R0 ; [+3]
        5 GETTABLEKS                       R2 R0 K1 ["assetType"]
        7 JUMPIF                           R2 ; [+2]
        8 GETIMPORT                        R2 K5 [Enum.AssetType.Image]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K6 ["renderWithMocks"]
       13 GETUPVAL                         R5 1
       14 LOADK                            R6 K7 ["ScreenGui"]
       15 DUPTABLE                         R7 K9 [{"ZIndexBehavior"}]
       16 GETIMPORT                        R8 K11 [Enum.ZIndexBehavior.Sibling]
       18 SETTABLEKS                       R8 R7 K8 ["ZIndexBehavior"]
       20 GETUPVAL                         R8 1
       21 GETUPVAL                         R10 2
       22 GETTABLEKS                       R9 R10 K12 ["Provider"]
       24 DUPTABLE                         R10 K17 [{"theme", "userId", "browseAssetsAsync", "openAssetManager"}]
       25 LOADK                            R11 K18 ["Dark"]
       26 SETTABLEKS                       R11 R10 K13 ["theme"]
       28 GETUPVAL                         R13 3
       29 GETTABLEKS                       R12 R13 K19 ["user"]
       31 GETTABLEKS                       R11 R12 K20 ["id"]
       33 SETTABLEKS                       R11 R10 K14 ["userId"]
       35 JUMPIFNOT                        R0 ; [+3]
       36 GETTABLEKS                       R11 R0 K15 ["browseAssetsAsync"]
       38 JUMPIF                           R11 ; [+1]
       39 DUPCLOSURE                       R11 K21 [PROTO_0]
       40 SETTABLEKS                       R11 R10 K15 ["browseAssetsAsync"]
       42 JUMPIFNOT                        R0 ; [+3]
       43 GETTABLEKS                       R11 R0 K16 ["openAssetManager"]
       45 JUMPIF                           R11 ; [+1]
       46 DUPCLOSURE                       R11 K22 [PROTO_1]
       47 SETTABLEKS                       R11 R10 K16 ["openAssetManager"]
       49 GETUPVAL                         R11 1
       50 GETUPVAL                         R12 4
       51 DUPTABLE                         R13 K28 [{"networking", "assetType", "showNewButton", "onAssetSelected", "getGameIdAsync", "shareAccessToAssetsAsync"}]
       52 GETUPVAL                         R14 5
       53 GETUPVAL                         R15 6
       54 DUPTABLE                         R16 K33 [{"scopes", "assets", "pageSize", "failAllRequests"}]
       55 JUMPIFNOT                        R1 ; [+3]
       56 GETTABLEKS                       R17 R1 K29 ["scopes"]
       58 JUMPIF                           R17 ; [+3]
       59 GETUPVAL                         R18 3
       60 GETTABLEKS                       R17 R18 K29 ["scopes"]
       62 SETTABLEKS                       R17 R16 K29 ["scopes"]
       64 JUMPIFNOT                        R1 ; [+3]
       65 GETTABLEKS                       R17 R1 K30 ["assets"]
       67 JUMPIF                           R17 ; [+3]
       68 GETUPVAL                         R18 3
       69 GETTABLEKS                       R17 R18 K30 ["assets"]
       71 SETTABLEKS                       R17 R16 K30 ["assets"]
       73 JUMPIFNOT                        R1 ; [+3]
       74 GETTABLEKS                       R17 R1 K31 ["pageSize"]
       76 JUMPIF                           R17 ; [+1]
       77 LOADNIL                          R17
       78 SETTABLEKS                       R17 R16 K31 ["pageSize"]
       80 JUMPIFNOT                        R1 ; [+3]
       81 GETTABLEKS                       R17 R1 K32 ["failAllRequests"]
       83 JUMPIF                           R17 ; [+1]
       84 LOADB                            R17 0
       85 SETTABLEKS                       R17 R16 K32 ["failAllRequests"]
       87 CALL                             R15 1 -1
       88 CALL                             R14 -1 1
       89 SETTABLEKS                       R14 R13 K23 ["networking"]
       91 SETTABLEKS                       R2 R13 K1 ["assetType"]
       93 MOVE                             R14 R0
       94 JUMPIFNOT                        R14 ; [+2]
       95 GETTABLEKS                       R14 R0 K24 ["showNewButton"]
       97 SETTABLEKS                       R14 R13 K24 ["showNewButton"]
       99 JUMPIFNOT                        R0 ; [+3]
      100 GETTABLEKS                       R14 R0 K25 ["onAssetSelected"]
      102 JUMPIF                           R14 ; [+1]
      103 DUPCLOSURE                       R14 K34 [PROTO_2]
      104 SETTABLEKS                       R14 R13 K25 ["onAssetSelected"]
      106 NEWCLOSURE                       R14 P3
      107 CAPTURE                          VAL R0
      108 CAPTURE                          UPVAL U3
      109 SETTABLEKS                       R14 R13 K26 ["getGameIdAsync"]
      111 JUMPIFNOT                        R0 ; [+3]
      112 GETTABLEKS                       R14 R0 K27 ["shareAccessToAssetsAsync"]
      114 JUMPIF                           R14 ; [+1]
      115 DUPCLOSURE                       R14 K35 [PROTO_4]
      116 SETTABLEKS                       R14 R13 K27 ["shareAccessToAssetsAsync"]
      118 CALL                             R11 2 -1
      119 CALL                             R8 -1 -1
      120 CALL                             R5 -1 -1
      121 CALL                             R4 -1 1
      122 GETTABLEKS                       R3 R4 K36 ["container"]
      124 NEWCLOSURE                       R4 P5
      125 CAPTURE                          VAL R3
      126 NEWCLOSURE                       R5 P6
      127 CAPTURE                          VAL R3
      128 NEWCLOSURE                       R6 P7
      129 CAPTURE                          VAL R3
      130 NEWCLOSURE                       R7 P8
      131 CAPTURE                          VAL R6
      132 NEWCLOSURE                       R8 P9
      133 CAPTURE                          VAL R3
      134 CAPTURE                          UPVAL U7
      135 CAPTURE                          UPVAL U8
      136 NEWCLOSURE                       R9 P10
      137 CAPTURE                          VAL R3
      138 NEWCLOSURE                       R10 P11
      139 CAPTURE                          VAL R3
      140 CAPTURE                          UPVAL U9
      141 NEWCLOSURE                       R11 P12
      142 CAPTURE                          VAL R3
      143 NEWCLOSURE                       R12 P13
      144 CAPTURE                          VAL R3
      145 NEWCLOSURE                       R13 P14
      146 CAPTURE                          VAL R3
      147 NEWCLOSURE                       R14 P15
      148 CAPTURE                          VAL R3
      149 DUPCLOSURE                       R15 K37 [PROTO_17]
      150 NEWCLOSURE                       R16 P17
      151 CAPTURE                          VAL R3
      152 NEWCLOSURE                       R17 P18
      153 CAPTURE                          VAL R15
      154 CAPTURE                          VAL R12
      155 NEWCLOSURE                       R18 P19
      156 CAPTURE                          UPVAL U7
      157 CAPTURE                          VAL R3
      158 NEWCLOSURE                       R19 P20
      159 CAPTURE                          VAL R3
      160 CAPTURE                          UPVAL U7
      161 CAPTURE                          UPVAL U8
      162 NEWCLOSURE                       R20 P21
      163 CAPTURE                          VAL R15
      164 CAPTURE                          VAL R14
      165 NEWCLOSURE                       R21 P22
      166 CAPTURE                          UPVAL U7
      167 CAPTURE                          VAL R3
      168 NEWCLOSURE                       R22 P23
      169 CAPTURE                          VAL R3
      170 CAPTURE                          UPVAL U7
      171 CAPTURE                          UPVAL U8
      172 NEWCLOSURE                       R23 P24
      173 CAPTURE                          UPVAL U10
      174 CAPTURE                          VAL R3
      175 CAPTURE                          UPVAL U9
      176 NEWCLOSURE                       R24 P25
      177 CAPTURE                          UPVAL U11
      178 CAPTURE                          VAL R3
      179 CAPTURE                          VAL R2
      180 NEWCLOSURE                       R25 P26
      181 CAPTURE                          UPVAL U11
      182 CAPTURE                          VAL R3
      183 NEWCLOSURE                       R26 P27
      184 CAPTURE                          UPVAL U7
      185 CAPTURE                          UPVAL U8
      186 CAPTURE                          VAL R3
      187 DUPTABLE                         R27 K54 [{"getContainer", "getAssets", "getAssetNames", "clickAsset", "scrollToEnd", "getScopeMenuButtonTitle", "getScopeMenuItems", "clickScopeMenuButton", "clickScopeMenuItem", "getOptionMenuItems", "clickOptionMenuButton", "clickOptionMenuItem", "setSearch", "newButtonShown", "importButtonShown", "clickImportButton"}]
      188 SETTABLEKS                       R4 R27 K38 ["getContainer"]
      190 SETTABLEKS                       R6 R27 K39 ["getAssets"]
      192 SETTABLEKS                       R7 R27 K40 ["getAssetNames"]
      194 SETTABLEKS                       R8 R27 K41 ["clickAsset"]
      196 SETTABLEKS                       R10 R27 K42 ["scrollToEnd"]
      198 SETTABLEKS                       R16 R27 K43 ["getScopeMenuButtonTitle"]
      200 SETTABLEKS                       R17 R27 K44 ["getScopeMenuItems"]
      202 SETTABLEKS                       R18 R27 K45 ["clickScopeMenuButton"]
      204 SETTABLEKS                       R19 R27 K46 ["clickScopeMenuItem"]
      206 SETTABLEKS                       R20 R27 K47 ["getOptionMenuItems"]
      208 SETTABLEKS                       R21 R27 K48 ["clickOptionMenuButton"]
      210 SETTABLEKS                       R22 R27 K49 ["clickOptionMenuItem"]
      212 SETTABLEKS                       R23 R27 K50 ["setSearch"]
      214 SETTABLEKS                       R24 R27 K51 ["newButtonShown"]
      216 SETTABLEKS                       R25 R27 K52 ["importButtonShown"]
      218 SETTABLEKS                       R26 R27 K53 ["clickImportButton"]
      220 GETUPVAL                         R28 9
      221 DUPCLOSURE                       R29 K55 [PROTO_30]
      222 CAPTURE                          UPVAL U12
      223 CALL                             R28 1 0
      224 RETURN                           R27 1

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
      136 DUPCLOSURE                       R18 K34 [PROTO_31]
      137 CAPTURE                          VAL R5
      138 CAPTURE                          VAL R14
      139 CAPTURE                          VAL R4
      140 CAPTURE                          VAL R6
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R12
      143 CAPTURE                          VAL R11
      144 CAPTURE                          VAL R13
      145 CAPTURE                          VAL R16
      146 CAPTURE                          VAL R10
      147 CAPTURE                          VAL R15
      148 CAPTURE                          VAL R17
      149 CAPTURE                          VAL R0
      150 RETURN                           R18 1
