PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["networking"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+3]
        5 GETUPVAL                         R0 1
        6 RETURN                           R0 1
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K0 ["networking"]
       10 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Text"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["fetchAssetByIdAsync"]
        3 DUPTABLE                         R2 K2 [{"assetId"}]
        4 SETTABLEKS                       R0 R2 K1 ["assetId"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R1
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADK                            R2 K1 [""]
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K2 ["useMemo"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U1
       11 NEWTABLE                         R5 0 1
       13 GETTABLEKS                       R6 R0 K3 ["networking"]
       15 SETLIST                          R5 R6 1 [1]
       17 CALL                             R3 2 1
       18 GETUPVAL                         R4 2
       19 DUPTABLE                         R5 K5 [{"networking", "gameId"}]
       20 SETTABLEKS                       R3 R5 K3 ["networking"]
       22 GETTABLEKS                       R6 R0 K4 ["gameId"]
       24 SETTABLEKS                       R6 R5 K4 ["gameId"]
       26 CALL                             R4 1 1
       27 GETUPVAL                         R5 3
       28 DUPTABLE                         R6 K8 [{"gameId", "shareAccessToAssetsAsync", "onAssetSelected"}]
       29 GETTABLEKS                       R7 R0 K4 ["gameId"]
       31 SETTABLEKS                       R7 R6 K4 ["gameId"]
       33 GETTABLEKS                       R7 R0 K6 ["shareAccessToAssetsAsync"]
       35 SETTABLEKS                       R7 R6 K6 ["shareAccessToAssetsAsync"]
       37 GETTABLEKS                       R7 R0 K7 ["onAssetSelected"]
       39 SETTABLEKS                       R7 R6 K7 ["onAssetSelected"]
       41 CALL                             R5 1 1
       42 GETUPVAL                         R6 0
       43 GETTABLEKS                       R6 R6 K9 ["useCallback"]
       45 NEWCLOSURE                       R7 P1
       46 CAPTURE                          VAL R2
       47 NEWTABLE                         R8 0 0
       49 CALL                             R6 2 1
       50 GETUPVAL                         R7 0
       51 GETTABLEKS                       R7 R7 K9 ["useCallback"]
       53 NEWCLOSURE                       R8 P2
       54 CAPTURE                          VAL R2
       55 NEWTABLE                         R9 0 0
       57 CALL                             R7 2 1
       58 GETUPVAL                         R8 0
       59 GETTABLEKS                       R8 R8 K9 ["useCallback"]
       61 NEWCLOSURE                       R9 P3
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R5
       64 NEWTABLE                         R10 0 2
       66 GETTABLEKS                       R11 R3 K10 ["fetchAssetByIdAsync"]
       68 MOVE                             R12 R5
       69 SETLIST                          R10 R11 2 [1]
       71 CALL                             R8 2 1
       72 GETUPVAL                         R9 4
       73 CALL                             R9 0 1
       74 GETUPVAL                         R10 5
       75 CALL                             R10 0 1
       76 GETTABLEKS                       R12 R0 K11 ["showNewButton"]
       78 JUMPIFNOTEQKNIL                  R12 ; [+3]
       80 LOADB                            R11 1
       81 JUMP                             ; [+2]
       82 GETTABLEKS                       R11 R0 K11 ["showNewButton"]
       84 GETUPVAL                         R12 6
       85 GETUPVAL                         R13 7
       86 DUPTABLE                         R14 K15 [{["tag"] = "col stroke-default radius-medium", ["Size"]}]
       87 GETIMPORT                        R15 K18 [UDim2.fromOffset]
       89 LOADN                            R16 265
       90 LOADN                            R17 307
       91 CALL                             R15 2 1
       92 SETTABLEKS                       R15 R14 K14 ["Size"]
       94 DUPTABLE                         R15 K24 [{"SearchBarContainer", "Toolbar", "Divider", "ContentViewContainer", "Footer"}]
       95 GETUPVAL                         R16 6
       96 GETUPVAL                         R17 7
       97 DUPTABLE                         R18 K27 [{["tag"] = "size-full-0 auto-y padding-x-small padding-bottom-xxsmall padding-top-small", ["LayoutOrder"]}]
       98 MOVE                             R19 R9
       99 CALL                             R19 0 1
      100 SETTABLEKS                       R19 R18 K26 ["LayoutOrder"]
      102 DUPTABLE                         R19 K29 [{"SearchBar"}]
      103 GETUPVAL                         R20 6
      104 GETUPVAL                         R21 8
      105 DUPTABLE                         R22 K33 [{"size", "DEPRECATED_onTextBoxChanged", "onTextChanged"}]
      106 GETIMPORT                        R23 K35 [UDim2.new]
      108 LOADN                            R24 1
      109 LOADN                            R25 0
      110 LOADN                            R26 0
      111 GETTABLEKS                       R27 R10 K14 ["Size"]
      113 GETTABLEKS                       R27 R27 K36 ["Size_600"]
      115 CALL                             R23 4 1
      116 SETTABLEKS                       R23 R22 K30 ["size"]
      118 SETTABLEKS                       R6 R22 K31 ["DEPRECATED_onTextBoxChanged"]
      120 SETTABLEKS                       R7 R22 K32 ["onTextChanged"]
      122 CALL                             R20 2 1
      123 SETTABLEKS                       R20 R19 K28 ["SearchBar"]
      125 CALL                             R16 3 1
      126 SETTABLEKS                       R16 R15 K19 ["SearchBarContainer"]
      128 GETUPVAL                         R16 6
      129 GETUPVAL                         R17 7
      130 DUPTABLE                         R18 K38 [{["tag"] = "row align-y-center gap-xsmall size-full-0 auto-y padding-x-small padding-y-xsmall", ["LayoutOrder"]}]
      131 MOVE                             R19 R9
      132 CALL                             R19 0 1
      133 SETTABLEKS                       R19 R18 K26 ["LayoutOrder"]
      135 DUPTABLE                         R19 K42 [{"ScopeMenuButton", "Gap", "OptionMenuButton"}]
      136 GETUPVAL                         R20 6
      137 GETUPVAL                         R21 9
      138 DUPTABLE                         R22 K48 [{"layoutOrder", "loadedScope", "loadedScopeMap", "universeCreatorInfo", "onScopeChanged"}]
      139 MOVE                             R23 R9
      140 CALL                             R23 0 1
      141 SETTABLEKS                       R23 R22 K43 ["layoutOrder"]
      143 GETTABLEKS                       R23 R4 K44 ["loadedScope"]
      145 SETTABLEKS                       R23 R22 K44 ["loadedScope"]
      147 GETTABLEKS                       R23 R4 K45 ["loadedScopeMap"]
      149 SETTABLEKS                       R23 R22 K45 ["loadedScopeMap"]
      151 GETTABLEKS                       R23 R4 K46 ["universeCreatorInfo"]
      153 SETTABLEKS                       R23 R22 K46 ["universeCreatorInfo"]
      155 GETTABLEKS                       R23 R4 K47 ["onScopeChanged"]
      157 SETTABLEKS                       R23 R22 K47 ["onScopeChanged"]
      159 CALL                             R20 2 1
      160 SETTABLEKS                       R20 R19 K39 ["ScopeMenuButton"]
      162 GETUPVAL                         R20 6
      163 GETUPVAL                         R21 7
      164 DUPTABLE                         R22 K50 [{["tag"] = "fill size-0-0", ["LayoutOrder"]}]
      165 MOVE                             R23 R9
      166 CALL                             R23 0 1
      167 SETTABLEKS                       R23 R22 K26 ["LayoutOrder"]
      169 CALL                             R20 2 1
      170 SETTABLEKS                       R20 R19 K40 ["Gap"]
      172 GETUPVAL                         R20 6
      173 GETUPVAL                         R21 10
      174 DUPTABLE                         R22 K51 [{"layoutOrder"}]
      175 MOVE                             R23 R9
      176 CALL                             R23 0 1
      177 SETTABLEKS                       R23 R22 K43 ["layoutOrder"]
      179 CALL                             R20 2 1
      180 SETTABLEKS                       R20 R19 K41 ["OptionMenuButton"]
      182 CALL                             R16 3 1
      183 SETTABLEKS                       R16 R15 K20 ["Toolbar"]
      185 GETUPVAL                         R16 6
      186 GETUPVAL                         R17 11
      187 DUPTABLE                         R18 K53 [{"LayoutOrder", "orientation"}]
      188 MOVE                             R19 R9
      189 CALL                             R19 0 1
      190 SETTABLEKS                       R19 R18 K26 ["LayoutOrder"]
      192 GETUPVAL                         R19 12
      193 GETTABLEKS                       R19 R19 K54 ["Enums"]
      195 GETTABLEKS                       R19 R19 K55 ["Orientation"]
      197 GETTABLEKS                       R19 R19 K56 ["Horizontal"]
      199 SETTABLEKS                       R19 R18 K52 ["orientation"]
      201 CALL                             R16 2 1
      202 SETTABLEKS                       R16 R15 K21 ["Divider"]
      204 GETUPVAL                         R16 6
      205 GETUPVAL                         R17 7
      206 DUPTABLE                         R18 K58 [{["tag"] = "fill size-full-0", ["LayoutOrder"]}]
      207 MOVE                             R19 R9
      208 CALL                             R19 0 1
      209 SETTABLEKS                       R19 R18 K26 ["LayoutOrder"]
      211 DUPTABLE                         R19 K60 [{"ContentView"}]
      212 GETUPVAL                         R20 6
      213 GETUPVAL                         R21 13
      214 DUPTABLE                         R22 K63 [{"networking", "assetType", "loadedScope", "search", "onAssetSelected"}]
      215 SETTABLEKS                       R3 R22 K3 ["networking"]
      217 GETTABLEKS                       R23 R0 K61 ["assetType"]
      219 SETTABLEKS                       R23 R22 K61 ["assetType"]
      221 GETTABLEKS                       R23 R4 K44 ["loadedScope"]
      223 SETTABLEKS                       R23 R22 K44 ["loadedScope"]
      225 SETTABLEKS                       R1 R22 K62 ["search"]
      227 SETTABLEKS                       R5 R22 K7 ["onAssetSelected"]
      229 CALL                             R20 2 1
      230 SETTABLEKS                       R20 R19 K59 ["ContentView"]
      232 CALL                             R16 3 1
      233 SETTABLEKS                       R16 R15 K22 ["ContentViewContainer"]
      235 GETUPVAL                         R16 6
      236 GETUPVAL                         R17 7
      237 DUPTABLE                         R18 K65 [{["tag"] = "row gap-small size-full-0 auto-y padding-small", ["LayoutOrder"]}]
      238 MOVE                             R19 R9
      239 CALL                             R19 0 1
      240 SETTABLEKS                       R19 R18 K26 ["LayoutOrder"]
      242 DUPTABLE                         R19 K68 [{"NewButton", "ImportButton"}]
      243 JUMPIFNOT                        R11 ; [+13]
      244 GETUPVAL                         R20 6
      245 GETUPVAL                         R21 14
      246 DUPTABLE                         R22 K69 [{"layoutOrder", "assetType"}]
      247 MOVE                             R23 R9
      248 CALL                             R23 0 1
      249 SETTABLEKS                       R23 R22 K43 ["layoutOrder"]
      251 GETTABLEKS                       R23 R0 K61 ["assetType"]
      253 SETTABLEKS                       R23 R22 K61 ["assetType"]
      255 CALL                             R20 2 1
      256 JUMP                             ; [+1]
      257 LOADNIL                          R20
      258 SETTABLEKS                       R20 R19 K66 ["NewButton"]
      260 GETUPVAL                         R20 6
      261 GETUPVAL                         R21 15
      262 DUPTABLE                         R22 K71 [{"layoutOrder", "assetType", "onImportComplete"}]
      263 MOVE                             R23 R9
      264 CALL                             R23 0 1
      265 SETTABLEKS                       R23 R22 K43 ["layoutOrder"]
      267 GETTABLEKS                       R23 R0 K61 ["assetType"]
      269 SETTABLEKS                       R23 R22 K61 ["assetType"]
      271 SETTABLEKS                       R8 R22 K70 ["onImportComplete"]
      273 CALL                             R20 2 1
      274 SETTABLEKS                       R20 R19 K67 ["ImportButton"]
      276 CALL                             R16 3 1
      277 SETTABLEKS                       R16 R15 K23 ["Footer"]
      279 CALL                             R12 3 -1
      280 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETIMPORT                        R3 K1 [script]
       13 GETTABLEKS                       R3 R3 K7 ["Components"]
       15 GETTABLEKS                       R3 R3 K8 ["ContentView"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R1 K9 ["Foundation"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETIMPORT                        R5 K1 [script]
       27 GETTABLEKS                       R5 R5 K7 ["Components"]
       29 GETTABLEKS                       R5 R5 K10 ["ImportButton"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETIMPORT                        R6 K1 [script]
       36 GETTABLEKS                       R6 R6 K11 ["Networking"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETIMPORT                        R7 K1 [script]
       43 GETTABLEKS                       R7 R7 K7 ["Components"]
       45 GETTABLEKS                       R7 R7 K12 ["NewButton"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K6 [require]
       50 GETIMPORT                        R8 K1 [script]
       52 GETTABLEKS                       R8 R8 K7 ["Components"]
       54 GETTABLEKS                       R8 R8 K13 ["OptionMenuButton"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K6 [require]
       59 GETTABLEKS                       R9 R1 K14 ["React"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K6 [require]
       64 GETTABLEKS                       R10 R1 K15 ["ReactUtils"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K6 [require]
       69 GETIMPORT                        R11 K1 [script]
       71 GETTABLEKS                       R11 R11 K7 ["Components"]
       73 GETTABLEKS                       R11 R11 K16 ["ScopeMenuButton"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K6 [require]
       78 GETIMPORT                        R12 K1 [script]
       80 GETTABLEKS                       R12 R12 K7 ["Components"]
       82 GETTABLEKS                       R12 R12 K17 ["SearchBar"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K6 [require]
       87 GETIMPORT                        R13 K1 [script]
       89 GETTABLEKS                       R13 R13 K18 ["Types"]
       91 CALL                             R12 1 1
       92 GETIMPORT                        R13 K6 [require]
       94 GETIMPORT                        R14 K1 [script]
       96 GETTABLEKS                       R14 R14 K19 ["Hooks"]
       98 GETTABLEKS                       R14 R14 K20 ["useAssetAccessSharing"]
      100 CALL                             R13 1 1
      101 GETIMPORT                        R14 K6 [require]
      103 GETIMPORT                        R15 K1 [script]
      105 GETTABLEKS                       R15 R15 K19 ["Hooks"]
      107 GETTABLEKS                       R15 R15 K21 ["useScopeLoading"]
      109 CALL                             R14 1 1
      110 GETTABLEKS                       R15 R3 K22 ["Divider"]
      112 GETTABLEKS                       R16 R3 K23 ["View"]
      114 GETTABLEKS                       R17 R8 K24 ["createElement"]
      116 GETTABLEKS                       R18 R9 K25 ["createNextOrder"]
      118 GETTABLEKS                       R19 R3 K19 ["Hooks"]
      120 GETTABLEKS                       R19 R19 K26 ["useTokens"]
      122 DUPCLOSURE                       R20 K27 [PROTO_4]
      123 CAPTURE                          VAL R8
      124 CAPTURE                          VAL R5
      125 CAPTURE                          VAL R14
      126 CAPTURE                          VAL R13
      127 CAPTURE                          VAL R18
      128 CAPTURE                          VAL R19
      129 CAPTURE                          VAL R17
      130 CAPTURE                          VAL R16
      131 CAPTURE                          VAL R11
      132 CAPTURE                          VAL R10
      133 CAPTURE                          VAL R7
      134 CAPTURE                          VAL R15
      135 CAPTURE                          VAL R3
      136 CAPTURE                          VAL R2
      137 CAPTURE                          VAL R6
      138 CAPTURE                          VAL R4
      139 RETURN                           R20 1
