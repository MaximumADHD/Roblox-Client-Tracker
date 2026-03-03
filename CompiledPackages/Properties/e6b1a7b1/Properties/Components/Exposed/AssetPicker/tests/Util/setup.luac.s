PROTO_0:
        0 LOADNIL                          R1
        1 RETURN                           R1 1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+4]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R0 R1 K0 ["gameId"]
        5 JUMPIF                           R0 ; [+5]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R1 R2 K1 ["universe"]
        9 GETTABLEKS                       R0 R1 K2 ["id"]
       11 RETURN                           R0 1

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssetItemsContainer"]
        2 LOADB                            R3 1
        3 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_6:
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

PROTO_7:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 3
        4 FORGPREP                         R1
        5 GETTABLEKS                       R6 R5 K0 ["name"]
        7 SETTABLE                         R6 R0 R4
        8 FORGLOOP                         R1 2 ; [-4]
       10 RETURN                           R0 1

PROTO_8:
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

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [Vector2.new]
        3 LOADN                            R2 0
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K3 ["AbsoluteCanvasSize"]
        7 GETTABLEKS                       R3 R4 K4 ["Y"]
        9 CALL                             R1 2 1
       10 SETTABLEKS                       R1 R0 K5 ["CanvasPosition"]
       12 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["ScopeMenuAnchor"]
        2 LOADB                            R4 1
        3 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        5 CALL                             R1 3 1
        6 GETTABLEKS                       R0 R1 K2 ["Button"]
        8 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["ScopeMenu"]
        2 LOADB                            R3 1
        3 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["OptionMenuAnchor"]
        2 LOADB                            R4 1
        3 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        5 CALL                             R1 3 1
        6 GETTABLEKS                       R0 R1 K2 ["Button"]
        8 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["OptionMenu"]
        2 LOADB                            R3 1
        3 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_16:
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

PROTO_17:
        0 GETUPVAL                         R3 0
        1 LOADK                            R5 K0 ["ScopeMenuAnchor"]
        2 LOADB                            R6 1
        3 NAMECALL                         R3 R3 K1 ["FindFirstChild"]
        5 CALL                             R3 3 1
        6 GETTABLEKS                       R2 R3 K2 ["Button"]
        8 GETTABLEKS                       R1 R2 K3 ["ScopeName"]
       10 GETTABLEKS                       R0 R1 K4 ["Text"]
       12 RETURN                           R0 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 1
        4 RETURN                           R0 1

PROTO_19:
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

PROTO_20:
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
        4 LOADK                            R4 K1 ["OptionMenuAnchor"]
        5 LOADB                            R5 1
        6 NAMECALL                         R2 R2 K2 ["FindFirstChild"]
        8 CALL                             R2 3 1
        9 GETTABLEKS                       R1 R2 K3 ["Button"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_23:
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

PROTO_24:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["CaptureFocus"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 GETUPVAL                         R1 1
        6 SETTABLEKS                       R1 R0 K1 ["Text"]
        8 RETURN                           R0 0

PROTO_25:
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

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["click"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 LOADK                            R4 K1 ["Import"]
        6 CALL                             R2 2 1
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["UpdateUnitTestOnly"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_28:
        0 MOVE                             R1 R0
        1 JUMPIFNOT                        R1 ; [+2]
        2 GETTABLEKS                       R1 R0 K0 ["mockRequestsConfig"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K1 ["renderWithMocks"]
        7 GETUPVAL                         R4 1
        8 LOADK                            R5 K2 ["ScreenGui"]
        9 DUPTABLE                         R6 K4 [{"ZIndexBehavior"}]
       10 GETIMPORT                        R7 K7 [Enum.ZIndexBehavior.Sibling]
       12 SETTABLEKS                       R7 R6 K3 ["ZIndexBehavior"]
       14 GETUPVAL                         R7 1
       15 GETUPVAL                         R9 2
       16 GETTABLEKS                       R8 R9 K8 ["Provider"]
       18 DUPTABLE                         R9 K13 [{"theme", "userId", "browseAssetsAsync", "openAssetManager"}]
       19 LOADK                            R10 K14 ["Dark"]
       20 SETTABLEKS                       R10 R9 K9 ["theme"]
       22 GETUPVAL                         R12 3
       23 GETTABLEKS                       R11 R12 K15 ["user"]
       25 GETTABLEKS                       R10 R11 K16 ["id"]
       27 SETTABLEKS                       R10 R9 K10 ["userId"]
       29 JUMPIFNOT                        R0 ; [+3]
       30 GETTABLEKS                       R10 R0 K11 ["browseAssetsAsync"]
       32 JUMPIF                           R10 ; [+1]
       33 DUPCLOSURE                       R10 K17 [PROTO_0]
       34 SETTABLEKS                       R10 R9 K11 ["browseAssetsAsync"]
       36 JUMPIFNOT                        R0 ; [+3]
       37 GETTABLEKS                       R10 R0 K12 ["openAssetManager"]
       39 JUMPIF                           R10 ; [+1]
       40 DUPCLOSURE                       R10 K18 [PROTO_1]
       41 SETTABLEKS                       R10 R9 K12 ["openAssetManager"]
       43 GETUPVAL                         R10 1
       44 GETUPVAL                         R11 4
       45 DUPTABLE                         R12 K23 [{"networking", "assetType", "getGameIdAsync", "onAssetSelected"}]
       46 GETUPVAL                         R13 5
       47 GETUPVAL                         R14 6
       48 DUPTABLE                         R15 K28 [{"scopes", "assets", "pageSize", "failAllRequests"}]
       49 JUMPIFNOT                        R1 ; [+3]
       50 GETTABLEKS                       R16 R1 K24 ["scopes"]
       52 JUMPIF                           R16 ; [+3]
       53 GETUPVAL                         R17 3
       54 GETTABLEKS                       R16 R17 K24 ["scopes"]
       56 SETTABLEKS                       R16 R15 K24 ["scopes"]
       58 JUMPIFNOT                        R1 ; [+3]
       59 GETTABLEKS                       R16 R1 K25 ["assets"]
       61 JUMPIF                           R16 ; [+3]
       62 GETUPVAL                         R17 3
       63 GETTABLEKS                       R16 R17 K25 ["assets"]
       65 SETTABLEKS                       R16 R15 K25 ["assets"]
       67 JUMPIFNOT                        R1 ; [+3]
       68 GETTABLEKS                       R16 R1 K26 ["pageSize"]
       70 JUMPIF                           R16 ; [+1]
       71 LOADNIL                          R16
       72 SETTABLEKS                       R16 R15 K26 ["pageSize"]
       74 JUMPIFNOT                        R1 ; [+3]
       75 GETTABLEKS                       R16 R1 K27 ["failAllRequests"]
       77 JUMPIF                           R16 ; [+1]
       78 LOADB                            R16 0
       79 SETTABLEKS                       R16 R15 K27 ["failAllRequests"]
       81 CALL                             R14 1 -1
       82 CALL                             R13 -1 1
       83 SETTABLEKS                       R13 R12 K19 ["networking"]
       85 JUMPIFNOT                        R0 ; [+3]
       86 GETTABLEKS                       R13 R0 K20 ["assetType"]
       88 JUMPIF                           R13 ; [+2]
       89 GETIMPORT                        R13 K31 [Enum.AssetType.Image]
       91 SETTABLEKS                       R13 R12 K20 ["assetType"]
       93 NEWCLOSURE                       R13 P2
       94 CAPTURE                          VAL R0
       95 CAPTURE                          UPVAL U3
       96 SETTABLEKS                       R13 R12 K21 ["getGameIdAsync"]
       98 JUMPIFNOT                        R0 ; [+3]
       99 GETTABLEKS                       R13 R0 K22 ["onAssetSelected"]
      101 JUMPIF                           R13 ; [+1]
      102 DUPCLOSURE                       R13 K32 [PROTO_3]
      103 SETTABLEKS                       R13 R12 K22 ["onAssetSelected"]
      105 CALL                             R10 2 -1
      106 CALL                             R7 -1 -1
      107 CALL                             R4 -1 -1
      108 CALL                             R3 -1 1
      109 GETTABLEKS                       R2 R3 K33 ["container"]
      111 NEWCLOSURE                       R3 P4
      112 CAPTURE                          VAL R2
      113 NEWCLOSURE                       R4 P5
      114 CAPTURE                          VAL R2
      115 NEWCLOSURE                       R5 P6
      116 CAPTURE                          VAL R2
      117 NEWCLOSURE                       R6 P7
      118 CAPTURE                          VAL R5
      119 NEWCLOSURE                       R7 P8
      120 CAPTURE                          VAL R2
      121 CAPTURE                          UPVAL U7
      122 CAPTURE                          UPVAL U8
      123 NEWCLOSURE                       R8 P9
      124 CAPTURE                          VAL R2
      125 NEWCLOSURE                       R9 P10
      126 CAPTURE                          VAL R2
      127 CAPTURE                          UPVAL U9
      128 NEWCLOSURE                       R10 P11
      129 CAPTURE                          VAL R2
      130 NEWCLOSURE                       R11 P12
      131 CAPTURE                          VAL R2
      132 NEWCLOSURE                       R12 P13
      133 CAPTURE                          VAL R2
      134 NEWCLOSURE                       R13 P14
      135 CAPTURE                          VAL R2
      136 DUPCLOSURE                       R14 K34 [PROTO_16]
      137 NEWCLOSURE                       R15 P16
      138 CAPTURE                          VAL R2
      139 NEWCLOSURE                       R16 P17
      140 CAPTURE                          VAL R14
      141 CAPTURE                          VAL R11
      142 NEWCLOSURE                       R17 P18
      143 CAPTURE                          UPVAL U7
      144 CAPTURE                          VAL R2
      145 NEWCLOSURE                       R18 P19
      146 CAPTURE                          VAL R2
      147 CAPTURE                          UPVAL U7
      148 CAPTURE                          UPVAL U8
      149 NEWCLOSURE                       R19 P20
      150 CAPTURE                          VAL R14
      151 CAPTURE                          VAL R13
      152 NEWCLOSURE                       R20 P21
      153 CAPTURE                          UPVAL U7
      154 CAPTURE                          VAL R2
      155 NEWCLOSURE                       R21 P22
      156 CAPTURE                          VAL R2
      157 CAPTURE                          UPVAL U7
      158 CAPTURE                          UPVAL U8
      159 NEWCLOSURE                       R22 P23
      160 CAPTURE                          UPVAL U10
      161 CAPTURE                          VAL R2
      162 CAPTURE                          UPVAL U9
      163 NEWCLOSURE                       R23 P24
      164 CAPTURE                          UPVAL U7
      165 CAPTURE                          UPVAL U8
      166 CAPTURE                          VAL R2
      167 DUPTABLE                         R24 K49 [{"getContainer", "getAssets", "getAssetNames", "clickAsset", "scrollToEnd", "getScopeMenuButtonTitle", "getScopeMenuItems", "clickScopeMenuButton", "clickScopeMenuItem", "getOptionMenuItems", "clickOptionMenuButton", "clickOptionMenuItem", "setSearch", "clickImportButton"}]
      168 SETTABLEKS                       R3 R24 K35 ["getContainer"]
      170 SETTABLEKS                       R5 R24 K36 ["getAssets"]
      172 SETTABLEKS                       R6 R24 K37 ["getAssetNames"]
      174 SETTABLEKS                       R7 R24 K38 ["clickAsset"]
      176 SETTABLEKS                       R9 R24 K39 ["scrollToEnd"]
      178 SETTABLEKS                       R15 R24 K40 ["getScopeMenuButtonTitle"]
      180 SETTABLEKS                       R16 R24 K41 ["getScopeMenuItems"]
      182 SETTABLEKS                       R17 R24 K42 ["clickScopeMenuButton"]
      184 SETTABLEKS                       R18 R24 K43 ["clickScopeMenuItem"]
      186 SETTABLEKS                       R19 R24 K44 ["getOptionMenuItems"]
      188 SETTABLEKS                       R20 R24 K45 ["clickOptionMenuButton"]
      190 SETTABLEKS                       R21 R24 K46 ["clickOptionMenuItem"]
      192 SETTABLEKS                       R22 R24 K47 ["setSearch"]
      194 SETTABLEKS                       R23 R24 K48 ["clickImportButton"]
      196 GETUPVAL                         R25 9
      197 DUPCLOSURE                       R26 K50 [PROTO_27]
      198 CAPTURE                          UPVAL U11
      199 CALL                             R25 1 0
      200 RETURN                           R24 1

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
      128 GETTABLEKS                       R14 R8 K30 ["getByText"]
      130 GETTABLEKS                       R15 R7 K31 ["createElement"]
      132 GETTABLEKS                       R16 R8 K32 ["getByPlaceholderText"]
      134 DUPCLOSURE                       R17 K33 [PROTO_28]
      135 CAPTURE                          VAL R5
      136 CAPTURE                          VAL R15
      137 CAPTURE                          VAL R4
      138 CAPTURE                          VAL R6
      139 CAPTURE                          VAL R3
      140 CAPTURE                          VAL R12
      141 CAPTURE                          VAL R11
      142 CAPTURE                          VAL R13
      143 CAPTURE                          VAL R14
      144 CAPTURE                          VAL R10
      145 CAPTURE                          VAL R16
      146 CAPTURE                          VAL R0
      147 RETURN                           R17 1
