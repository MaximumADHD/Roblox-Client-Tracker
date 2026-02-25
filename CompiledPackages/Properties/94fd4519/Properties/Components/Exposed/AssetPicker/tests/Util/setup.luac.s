PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 LOADN                            R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssetItemsContainer"]
        2 LOADB                            R3 1
        3 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        5 CALL                             R0 3 1
        6 NEWTABLE                         R1 0 0
        8 NAMECALL                         R2 R0 K2 ["GetChildren"]
       10 CALL                             R2 1 3
       11 FORGPREP                         R2
       12 LOADK                            R9 K3 ["Name"]
       13 LOADB                            R10 1
       14 NAMECALL                         R7 R6 K1 ["FindFirstChild"]
       16 CALL                             R7 3 1
       17 JUMPIFEQKNIL                     R7 ; [+6]
       19 GETTABLEKS                       R8 R6 K4 ["LayoutOrder"]
       21 GETTABLEKS                       R9 R7 K5 ["Text"]
       23 SETTABLE                         R9 R1 R8
       24 FORGLOOP                         R2 2 ; [-13]
       26 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["ScrollContent"]
        2 LOADB                            R3 1
        3 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        5 CALL                             R0 3 1
        6 LOADK                            R3 K2 ["ScrollingFrame"]
        7 LOADB                            R4 1
        8 NAMECALL                         R1 R0 K3 ["FindFirstChildWhichIsA"]
       10 CALL                             R1 3 -1
       11 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [Vector2.new]
        3 LOADN                            R2 0
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K3 ["AbsoluteCanvasSize"]
        7 GETTABLEKS                       R3 R4 K4 ["Y"]
        9 CALL                             R1 2 1
       10 SETTABLEKS                       R1 R0 K5 ["CanvasPosition"]
       12 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["ScrollContent"]
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

PROTO_8:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["ScopeMenuAnchor"]
        2 LOADB                            R4 1
        3 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        5 CALL                             R1 3 1
        6 GETTABLEKS                       R0 R1 K2 ["Button"]
        8 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["ScopeMenu"]
        2 LOADB                            R3 1
        3 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["OptionMenuAnchor"]
        2 LOADB                            R4 1
        3 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        5 CALL                             R1 3 1
        6 GETTABLEKS                       R0 R1 K2 ["Button"]
        8 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["OptionMenu"]
        2 LOADB                            R3 1
        3 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_12:
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

PROTO_13:
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

PROTO_14:
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

PROTO_15:
        0 GETUPVAL                         R3 0
        1 LOADK                            R5 K0 ["ScopeMenuAnchor"]
        2 LOADB                            R6 1
        3 NAMECALL                         R3 R3 K1 ["FindFirstChild"]
        5 CALL                             R3 3 1
        6 GETTABLEKS                       R2 R3 K2 ["Button"]
        8 GETTABLEKS                       R1 R2 K3 ["ScopeName"]
       10 GETTABLEKS                       R0 R1 K4 ["Text"]
       12 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 1
        4 RETURN                           R0 1

PROTO_17:
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

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 1
        4 RETURN                           R0 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["CaptureFocus"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 GETUPVAL                         R1 1
        6 SETTABLEKS                       R1 R0 K1 ["Text"]
        8 RETURN                           R0 0

PROTO_20:
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

PROTO_21:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["UpdateUnitTestOnly"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["user"]
        4 GETTABLEKS                       R2 R3 K1 ["userId"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R3 R4 K2 ["renderWithMocks"]
       10 GETUPVAL                         R4 3
       11 LOADK                            R5 K3 ["ScreenGui"]
       12 DUPTABLE                         R6 K5 [{"ZIndexBehavior"}]
       13 GETIMPORT                        R7 K8 [Enum.ZIndexBehavior.Sibling]
       15 SETTABLEKS                       R7 R6 K4 ["ZIndexBehavior"]
       17 GETUPVAL                         R7 3
       18 GETUPVAL                         R9 4
       19 GETTABLEKS                       R8 R9 K9 ["ContextStack"]
       21 DUPTABLE                         R9 K11 [{"providers"}]
       22 NEWTABLE                         R10 0 4
       24 GETUPVAL                         R11 3
       25 GETUPVAL                         R13 5
       26 GETTABLEKS                       R12 R13 K12 ["Provider"]
       28 DUPTABLE                         R13 K14 [{"openAssetManager"}]
       29 JUMPIFNOT                        R0 ; [+3]
       30 GETTABLEKS                       R14 R0 K13 ["openAssetManager"]
       32 JUMPIF                           R14 ; [+1]
       33 DUPCLOSURE                       R14 K15 [PROTO_0]
       34 SETTABLEKS                       R14 R13 K13 ["openAssetManager"]
       36 CALL                             R11 2 1
       37 GETUPVAL                         R12 3
       38 GETUPVAL                         R14 6
       39 GETTABLEKS                       R13 R14 K12 ["Provider"]
       41 CALL                             R12 1 1
       42 GETUPVAL                         R13 3
       43 GETUPVAL                         R15 7
       44 GETTABLEKS                       R14 R15 K12 ["Provider"]
       46 DUPTABLE                         R15 K17 [{"theme"}]
       47 LOADK                            R16 K18 ["Dark"]
       48 SETTABLEKS                       R16 R15 K16 ["theme"]
       50 CALL                             R13 2 1
       51 GETUPVAL                         R14 3
       52 MOVE                             R15 R1
       53 CALL                             R14 1 -1
       54 SETLIST                          R10 R11 -1 [1]
       56 SETTABLEKS                       R10 R9 K10 ["providers"]
       58 DUPTABLE                         R10 K20 [{"AssetPicker"}]
       59 GETUPVAL                         R11 3
       60 GETUPVAL                         R12 8
       61 DUPTABLE                         R13 K25 [{"networking", "assetType", "getGameIdAsync", "onAssetSelected"}]
       62 GETUPVAL                         R14 9
       63 JUMPIFNOT                        R0 ; [+3]
       64 GETTABLEKS                       R15 R0 K26 ["mockNetworkingConfig"]
       66 JUMPIF                           R15 ; [+11]
       67 DUPTABLE                         R15 K29 [{"scopes", "assets"}]
       68 GETUPVAL                         R17 1
       69 GETTABLEKS                       R16 R17 K27 ["scopes"]
       71 SETTABLEKS                       R16 R15 K27 ["scopes"]
       73 GETUPVAL                         R17 1
       74 GETTABLEKS                       R16 R17 K28 ["assets"]
       76 SETTABLEKS                       R16 R15 K28 ["assets"]
       78 CALL                             R14 1 1
       79 SETTABLEKS                       R14 R13 K21 ["networking"]
       81 GETIMPORT                        R14 K32 [Enum.AssetType.Image]
       83 SETTABLEKS                       R14 R13 K22 ["assetType"]
       85 DUPCLOSURE                       R14 K33 [PROTO_1]
       86 SETTABLEKS                       R14 R13 K23 ["getGameIdAsync"]
       88 DUPCLOSURE                       R14 K34 [PROTO_2]
       89 SETTABLEKS                       R14 R13 K24 ["onAssetSelected"]
       91 CALL                             R11 2 1
       92 SETTABLEKS                       R11 R10 K19 ["AssetPicker"]
       94 CALL                             R7 3 -1
       95 CALL                             R4 -1 -1
       96 CALL                             R3 -1 1
       97 GETTABLEKS                       R2 R3 K35 ["container"]
       99 NEWCLOSURE                       R3 P3
      100 CAPTURE                          VAL R2
      101 NEWCLOSURE                       R4 P4
      102 CAPTURE                          VAL R2
      103 NEWCLOSURE                       R5 P5
      104 CAPTURE                          VAL R2
      105 NEWCLOSURE                       R6 P6
      106 CAPTURE                          VAL R2
      107 CAPTURE                          UPVAL U10
      108 NEWCLOSURE                       R7 P7
      109 CAPTURE                          VAL R2
      110 NEWCLOSURE                       R8 P8
      111 CAPTURE                          VAL R2
      112 NEWCLOSURE                       R9 P9
      113 CAPTURE                          VAL R2
      114 NEWCLOSURE                       R10 P10
      115 CAPTURE                          VAL R2
      116 DUPCLOSURE                       R11 K36 [PROTO_12]
      117 NEWCLOSURE                       R12 P12
      118 CAPTURE                          UPVAL U11
      119 CAPTURE                          VAL R2
      120 NEWCLOSURE                       R13 P13
      121 CAPTURE                          VAL R2
      122 CAPTURE                          UPVAL U11
      123 CAPTURE                          UPVAL U12
      124 NEWCLOSURE                       R14 P14
      125 CAPTURE                          VAL R2
      126 NEWCLOSURE                       R15 P15
      127 CAPTURE                          VAL R11
      128 CAPTURE                          VAL R8
      129 NEWCLOSURE                       R16 P16
      130 CAPTURE                          UPVAL U11
      131 CAPTURE                          VAL R2
      132 NEWCLOSURE                       R17 P17
      133 CAPTURE                          VAL R11
      134 CAPTURE                          VAL R10
      135 NEWCLOSURE                       R18 P18
      136 CAPTURE                          UPVAL U13
      137 CAPTURE                          VAL R2
      138 CAPTURE                          UPVAL U10
      139 DUPTABLE                         R19 K47 [{"getContainer", "getAssets", "scrollToEnd", "clickScopeMenuButton", "clickScopeMenuItem", "getScopeMenuButtonTitle", "getScopeMenuItems", "clickOptionMenuButton", "getOptionMenuItems", "setSearch"}]
      140 SETTABLEKS                       R3 R19 K37 ["getContainer"]
      142 SETTABLEKS                       R4 R19 K38 ["getAssets"]
      144 SETTABLEKS                       R6 R19 K39 ["scrollToEnd"]
      146 SETTABLEKS                       R12 R19 K40 ["clickScopeMenuButton"]
      148 SETTABLEKS                       R13 R19 K41 ["clickScopeMenuItem"]
      150 SETTABLEKS                       R14 R19 K42 ["getScopeMenuButtonTitle"]
      152 SETTABLEKS                       R15 R19 K43 ["getScopeMenuItems"]
      154 SETTABLEKS                       R16 R19 K44 ["clickOptionMenuButton"]
      156 SETTABLEKS                       R17 R19 K45 ["getOptionMenuItems"]
      158 SETTABLEKS                       R18 R19 K46 ["setSearch"]
      160 GETUPVAL                         R20 10
      161 DUPCLOSURE                       R21 K48 [PROTO_21]
      162 CAPTURE                          UPVAL U14
      163 CALL                             R20 1 0
      164 RETURN                           R19 1

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
       17 GETTABLEKS                       R8 R1 K11 ["Components"]
       19 GETTABLEKS                       R7 R8 K12 ["Exposed"]
       21 GETTABLEKS                       R6 R7 K13 ["AssetPicker"]
       23 GETTABLEKS                       R5 R6 K14 ["Contexts"]
       25 GETTABLEKS                       R4 R5 K15 ["AssetManagerContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K10 [require]
       30 GETTABLEKS                       R7 R1 K11 ["Components"]
       32 GETTABLEKS                       R6 R7 K12 ["Exposed"]
       34 GETTABLEKS                       R5 R6 K13 ["AssetPicker"]
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
       73 GETTABLEKS                       R10 R2 K23 ["ReactUtils"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K10 [require]
       78 GETTABLEKS                       R15 R1 K11 ["Components"]
       80 GETTABLEKS                       R14 R15 K12 ["Exposed"]
       82 GETTABLEKS                       R13 R14 K13 ["AssetPicker"]
       84 GETTABLEKS                       R12 R13 K14 ["Contexts"]
       86 GETTABLEKS                       R11 R12 K24 ["ScopeContext"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K10 [require]
       91 GETTABLEKS                       R14 R1 K11 ["Components"]
       93 GETTABLEKS                       R13 R14 K14 ["Contexts"]
       95 GETTABLEKS                       R12 R13 K25 ["ThemeContext"]
       97 CALL                             R11 1 1
       98 GETIMPORT                        R12 K10 [require]
      100 GETTABLEKS                       R16 R1 K11 ["Components"]
      102 GETTABLEKS                       R15 R16 K12 ["Exposed"]
      104 GETTABLEKS                       R14 R15 K13 ["AssetPicker"]
      106 GETTABLEKS                       R13 R14 K26 ["Types"]
      108 CALL                             R12 1 1
      109 GETIMPORT                        R13 K10 [require]
      111 GETTABLEKS                       R16 R1 K27 ["Tests"]
      113 GETTABLEKS                       R15 R16 K19 ["Util"]
      115 GETTABLEKS                       R14 R15 K28 ["act"]
      117 CALL                             R13 1 1
      118 GETIMPORT                        R14 K10 [require]
      120 GETTABLEKS                       R20 R1 K11 ["Components"]
      122 GETTABLEKS                       R19 R20 K12 ["Exposed"]
      124 GETTABLEKS                       R18 R19 K13 ["AssetPicker"]
      126 GETTABLEKS                       R17 R18 K18 ["tests"]
      128 GETTABLEKS                       R16 R17 K19 ["Util"]
      130 GETTABLEKS                       R15 R16 K29 ["createMockNetworking"]
      132 CALL                             R14 1 1
      133 GETIMPORT                        R15 K10 [require]
      135 GETTABLEKS                       R19 R1 K27 ["Tests"]
      137 GETTABLEKS                       R18 R19 K19 ["Util"]
      139 GETTABLEKS                       R17 R18 K30 ["setup"]
      141 GETTABLEKS                       R16 R17 K31 ["createMockUserContextProvider"]
      143 CALL                             R15 1 1
      144 GETIMPORT                        R16 K10 [require]
      146 GETTABLEKS                       R19 R1 K27 ["Tests"]
      148 GETTABLEKS                       R18 R19 K19 ["Util"]
      150 GETTABLEKS                       R17 R18 K32 ["fireEvent"]
      152 CALL                             R16 1 1
      153 GETTABLEKS                       R17 R8 K33 ["getByText"]
      155 GETTABLEKS                       R18 R7 K34 ["createElement"]
      157 GETTABLEKS                       R19 R8 K35 ["getByPlaceholderText"]
      159 DUPCLOSURE                       R20 K36 [PROTO_22]
      160 CAPTURE                          VAL R15
      161 CAPTURE                          VAL R6
      162 CAPTURE                          VAL R5
      163 CAPTURE                          VAL R18
      164 CAPTURE                          VAL R9
      165 CAPTURE                          VAL R3
      166 CAPTURE                          VAL R10
      167 CAPTURE                          VAL R11
      168 CAPTURE                          VAL R4
      169 CAPTURE                          VAL R14
      170 CAPTURE                          VAL R13
      171 CAPTURE                          VAL R16
      172 CAPTURE                          VAL R17
      173 CAPTURE                          VAL R19
      174 CAPTURE                          VAL R0
      175 RETURN                           R20 1
