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
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["fetchAssetByIdAsync"]
        3 DUPTABLE                         R2 K2 [{"assetId"}]
        4 SETTABLEKS                       R0 R2 K1 ["assetId"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R1
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_3:
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
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R5
       56 NEWTABLE                         R9 0 2
       58 GETTABLEKS                       R10 R3 K10 ["fetchAssetByIdAsync"]
       60 MOVE                             R11 R5
       61 SETLIST                          R9 R10 2 [1]
       63 CALL                             R7 2 1
       64 GETUPVAL                         R8 4
       65 CALL                             R8 0 1
       66 GETUPVAL                         R9 5
       67 CALL                             R9 0 1
       68 GETTABLEKS                       R11 R0 K11 ["showNewButton"]
       70 JUMPIFNOTEQKNIL                  R11 ; [+3]
       72 LOADB                            R10 1
       73 JUMP                             ; [+2]
       74 GETTABLEKS                       R10 R0 K11 ["showNewButton"]
       76 GETUPVAL                         R11 6
       77 GETUPVAL                         R12 7
       78 DUPTABLE                         R13 K15 [{["tag"] = "col stroke-default radius-medium", ["Size"]}]
       79 GETIMPORT                        R14 K18 [UDim2.fromOffset]
       81 LOADN                            R15 265
       82 LOADN                            R16 307
       83 CALL                             R14 2 1
       84 SETTABLEKS                       R14 R13 K14 ["Size"]
       86 DUPTABLE                         R14 K24 [{"SearchBarContainer", "Toolbar", "Divider", "ContentViewContainer", "Footer"}]
       87 GETUPVAL                         R15 6
       88 GETUPVAL                         R16 7
       89 DUPTABLE                         R17 K27 [{["tag"] = "size-full-0 auto-y padding-x-small padding-bottom-xxsmall padding-top-small", ["LayoutOrder"]}]
       90 MOVE                             R18 R8
       91 CALL                             R18 0 1
       92 SETTABLEKS                       R18 R17 K26 ["LayoutOrder"]
       94 DUPTABLE                         R18 K29 [{"SearchBar"}]
       95 GETUPVAL                         R19 6
       96 GETUPVAL                         R20 8
       97 DUPTABLE                         R21 K32 [{"size", "onTextChanged"}]
       98 GETIMPORT                        R22 K34 [UDim2.new]
      100 LOADN                            R23 1
      101 LOADN                            R24 0
      102 LOADN                            R25 0
      103 GETTABLEKS                       R26 R9 K14 ["Size"]
      105 GETTABLEKS                       R26 R26 K35 ["Size_600"]
      107 CALL                             R22 4 1
      108 SETTABLEKS                       R22 R21 K30 ["size"]
      110 SETTABLEKS                       R6 R21 K31 ["onTextChanged"]
      112 CALL                             R19 2 1
      113 SETTABLEKS                       R19 R18 K28 ["SearchBar"]
      115 CALL                             R15 3 1
      116 SETTABLEKS                       R15 R14 K19 ["SearchBarContainer"]
      118 GETUPVAL                         R15 6
      119 GETUPVAL                         R16 7
      120 DUPTABLE                         R17 K37 [{["tag"] = "row align-y-center gap-xsmall size-full-0 auto-y padding-x-small padding-y-xsmall", ["LayoutOrder"]}]
      121 MOVE                             R18 R8
      122 CALL                             R18 0 1
      123 SETTABLEKS                       R18 R17 K26 ["LayoutOrder"]
      125 DUPTABLE                         R18 K41 [{"ScopeMenuButton", "Gap", "OptionMenuButton"}]
      126 GETUPVAL                         R19 6
      127 GETUPVAL                         R20 9
      128 DUPTABLE                         R21 K47 [{"layoutOrder", "loadedScope", "loadedScopeMap", "universeCreatorInfo", "onScopeChanged"}]
      129 MOVE                             R22 R8
      130 CALL                             R22 0 1
      131 SETTABLEKS                       R22 R21 K42 ["layoutOrder"]
      133 GETTABLEKS                       R22 R4 K43 ["loadedScope"]
      135 SETTABLEKS                       R22 R21 K43 ["loadedScope"]
      137 GETTABLEKS                       R22 R4 K44 ["loadedScopeMap"]
      139 SETTABLEKS                       R22 R21 K44 ["loadedScopeMap"]
      141 GETTABLEKS                       R22 R4 K45 ["universeCreatorInfo"]
      143 SETTABLEKS                       R22 R21 K45 ["universeCreatorInfo"]
      145 GETTABLEKS                       R22 R4 K46 ["onScopeChanged"]
      147 SETTABLEKS                       R22 R21 K46 ["onScopeChanged"]
      149 CALL                             R19 2 1
      150 SETTABLEKS                       R19 R18 K38 ["ScopeMenuButton"]
      152 GETUPVAL                         R19 6
      153 GETUPVAL                         R20 7
      154 DUPTABLE                         R21 K49 [{["tag"] = "fill size-0-0", ["LayoutOrder"]}]
      155 MOVE                             R22 R8
      156 CALL                             R22 0 1
      157 SETTABLEKS                       R22 R21 K26 ["LayoutOrder"]
      159 CALL                             R19 2 1
      160 SETTABLEKS                       R19 R18 K39 ["Gap"]
      162 GETUPVAL                         R19 6
      163 GETUPVAL                         R20 10
      164 DUPTABLE                         R21 K50 [{"layoutOrder"}]
      165 MOVE                             R22 R8
      166 CALL                             R22 0 1
      167 SETTABLEKS                       R22 R21 K42 ["layoutOrder"]
      169 CALL                             R19 2 1
      170 SETTABLEKS                       R19 R18 K40 ["OptionMenuButton"]
      172 CALL                             R15 3 1
      173 SETTABLEKS                       R15 R14 K20 ["Toolbar"]
      175 GETUPVAL                         R15 6
      176 GETUPVAL                         R16 11
      177 DUPTABLE                         R17 K52 [{"LayoutOrder", "orientation"}]
      178 MOVE                             R18 R8
      179 CALL                             R18 0 1
      180 SETTABLEKS                       R18 R17 K26 ["LayoutOrder"]
      182 GETUPVAL                         R18 12
      183 GETTABLEKS                       R18 R18 K53 ["Enums"]
      185 GETTABLEKS                       R18 R18 K54 ["Orientation"]
      187 GETTABLEKS                       R18 R18 K55 ["Horizontal"]
      189 SETTABLEKS                       R18 R17 K51 ["orientation"]
      191 CALL                             R15 2 1
      192 SETTABLEKS                       R15 R14 K21 ["Divider"]
      194 GETUPVAL                         R15 6
      195 GETUPVAL                         R16 7
      196 DUPTABLE                         R17 K57 [{["tag"] = "fill size-full-0", ["LayoutOrder"]}]
      197 MOVE                             R18 R8
      198 CALL                             R18 0 1
      199 SETTABLEKS                       R18 R17 K26 ["LayoutOrder"]
      201 DUPTABLE                         R18 K59 [{"ContentView"}]
      202 GETUPVAL                         R19 6
      203 GETUPVAL                         R20 13
      204 DUPTABLE                         R21 K62 [{"networking", "assetType", "loadedScope", "search", "onAssetSelected"}]
      205 SETTABLEKS                       R3 R21 K3 ["networking"]
      207 GETTABLEKS                       R22 R0 K60 ["assetType"]
      209 SETTABLEKS                       R22 R21 K60 ["assetType"]
      211 GETTABLEKS                       R22 R4 K43 ["loadedScope"]
      213 SETTABLEKS                       R22 R21 K43 ["loadedScope"]
      215 SETTABLEKS                       R1 R21 K61 ["search"]
      217 SETTABLEKS                       R5 R21 K7 ["onAssetSelected"]
      219 CALL                             R19 2 1
      220 SETTABLEKS                       R19 R18 K58 ["ContentView"]
      222 CALL                             R15 3 1
      223 SETTABLEKS                       R15 R14 K22 ["ContentViewContainer"]
      225 GETUPVAL                         R15 6
      226 GETUPVAL                         R16 7
      227 DUPTABLE                         R17 K64 [{["tag"] = "row gap-small size-full-0 auto-y padding-small", ["LayoutOrder"]}]
      228 MOVE                             R18 R8
      229 CALL                             R18 0 1
      230 SETTABLEKS                       R18 R17 K26 ["LayoutOrder"]
      232 DUPTABLE                         R18 K67 [{"NewButton", "ImportButton"}]
      233 JUMPIFNOT                        R10 ; [+13]
      234 GETUPVAL                         R19 6
      235 GETUPVAL                         R20 14
      236 DUPTABLE                         R21 K68 [{"layoutOrder", "assetType"}]
      237 MOVE                             R22 R8
      238 CALL                             R22 0 1
      239 SETTABLEKS                       R22 R21 K42 ["layoutOrder"]
      241 GETTABLEKS                       R22 R0 K60 ["assetType"]
      243 SETTABLEKS                       R22 R21 K60 ["assetType"]
      245 CALL                             R19 2 1
      246 JUMP                             ; [+1]
      247 LOADNIL                          R19
      248 SETTABLEKS                       R19 R18 K65 ["NewButton"]
      250 GETUPVAL                         R19 6
      251 GETUPVAL                         R20 15
      252 DUPTABLE                         R21 K70 [{"layoutOrder", "assetType", "onImportComplete"}]
      253 MOVE                             R22 R8
      254 CALL                             R22 0 1
      255 SETTABLEKS                       R22 R21 K42 ["layoutOrder"]
      257 GETTABLEKS                       R22 R0 K60 ["assetType"]
      259 SETTABLEKS                       R22 R21 K60 ["assetType"]
      261 SETTABLEKS                       R7 R21 K69 ["onImportComplete"]
      263 CALL                             R19 2 1
      264 SETTABLEKS                       R19 R18 K66 ["ImportButton"]
      266 CALL                             R15 3 1
      267 SETTABLEKS                       R15 R14 K23 ["Footer"]
      269 CALL                             R11 3 -1
      270 RETURN                           R11 -1

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
      122 DUPCLOSURE                       R20 K27 [PROTO_3]
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
