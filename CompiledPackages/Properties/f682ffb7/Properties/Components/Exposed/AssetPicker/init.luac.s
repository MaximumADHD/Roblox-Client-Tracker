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
       86 DUPTABLE                         R14 K14 [{"tag", "Size"}]
       87 LOADK                            R15 K15 ["col stroke-default radius-medium"]
       88 SETTABLEKS                       R15 R14 K12 ["tag"]
       90 GETIMPORT                        R15 K18 [UDim2.fromOffset]
       92 LOADN                            R16 9
       93 LOADN                            R17 51
       94 CALL                             R15 2 1
       95 SETTABLEKS                       R15 R14 K13 ["Size"]
       97 DUPTABLE                         R15 K24 [{"SearchBarContainer", "Toolbar", "Divider", "ContentViewContainer", "Footer"}]
       98 GETUPVAL                         R16 6
       99 GETUPVAL                         R17 7
      100 DUPTABLE                         R18 K26 [{"tag", "LayoutOrder"}]
      101 LOADK                            R19 K27 ["size-full-0 auto-y padding-x-small padding-top-small padding-bottom-xxsmall"]
      102 SETTABLEKS                       R19 R18 K12 ["tag"]
      104 MOVE                             R19 R9
      105 CALL                             R19 0 1
      106 SETTABLEKS                       R19 R18 K25 ["LayoutOrder"]
      108 DUPTABLE                         R19 K29 [{"SearchBar"}]
      109 GETUPVAL                         R20 6
      110 GETUPVAL                         R21 8
      111 DUPTABLE                         R22 K33 [{"size", "DEPRECATED_onTextBoxChanged", "onTextChanged"}]
      112 GETIMPORT                        R23 K35 [UDim2.new]
      114 LOADN                            R24 1
      115 LOADN                            R25 0
      116 LOADN                            R26 0
      117 GETTABLEKS                       R27 R10 K13 ["Size"]
      119 GETTABLEKS                       R27 R27 K36 ["Size_600"]
      121 CALL                             R23 4 1
      122 SETTABLEKS                       R23 R22 K30 ["size"]
      124 SETTABLEKS                       R6 R22 K31 ["DEPRECATED_onTextBoxChanged"]
      126 SETTABLEKS                       R7 R22 K32 ["onTextChanged"]
      128 CALL                             R20 2 1
      129 SETTABLEKS                       R20 R19 K28 ["SearchBar"]
      131 CALL                             R16 3 1
      132 SETTABLEKS                       R16 R15 K19 ["SearchBarContainer"]
      134 GETUPVAL                         R16 6
      135 GETUPVAL                         R17 7
      136 DUPTABLE                         R18 K26 [{"tag", "LayoutOrder"}]
      137 LOADK                            R19 K37 ["size-full-0 auto-y padding-x-small padding-y-xsmall row align-y-center gap-xsmall"]
      138 SETTABLEKS                       R19 R18 K12 ["tag"]
      140 MOVE                             R19 R9
      141 CALL                             R19 0 1
      142 SETTABLEKS                       R19 R18 K25 ["LayoutOrder"]
      144 DUPTABLE                         R19 K41 [{"ScopeMenuButton", "Gap", "OptionMenuButton"}]
      145 GETUPVAL                         R20 6
      146 GETUPVAL                         R21 9
      147 DUPTABLE                         R22 K47 [{"layoutOrder", "loadedScope", "loadedScopeMap", "universeCreatorInfo", "onScopeChanged"}]
      148 MOVE                             R23 R9
      149 CALL                             R23 0 1
      150 SETTABLEKS                       R23 R22 K42 ["layoutOrder"]
      152 GETTABLEKS                       R23 R4 K43 ["loadedScope"]
      154 SETTABLEKS                       R23 R22 K43 ["loadedScope"]
      156 GETTABLEKS                       R23 R4 K44 ["loadedScopeMap"]
      158 SETTABLEKS                       R23 R22 K44 ["loadedScopeMap"]
      160 GETTABLEKS                       R23 R4 K45 ["universeCreatorInfo"]
      162 SETTABLEKS                       R23 R22 K45 ["universeCreatorInfo"]
      164 GETTABLEKS                       R23 R4 K46 ["onScopeChanged"]
      166 SETTABLEKS                       R23 R22 K46 ["onScopeChanged"]
      168 CALL                             R20 2 1
      169 SETTABLEKS                       R20 R19 K38 ["ScopeMenuButton"]
      171 GETUPVAL                         R20 6
      172 GETUPVAL                         R21 7
      173 DUPTABLE                         R22 K26 [{"tag", "LayoutOrder"}]
      174 LOADK                            R23 K48 ["size-0-0 fill"]
      175 SETTABLEKS                       R23 R22 K12 ["tag"]
      177 MOVE                             R23 R9
      178 CALL                             R23 0 1
      179 SETTABLEKS                       R23 R22 K25 ["LayoutOrder"]
      181 CALL                             R20 2 1
      182 SETTABLEKS                       R20 R19 K39 ["Gap"]
      184 GETUPVAL                         R20 6
      185 GETUPVAL                         R21 10
      186 DUPTABLE                         R22 K49 [{"layoutOrder"}]
      187 MOVE                             R23 R9
      188 CALL                             R23 0 1
      189 SETTABLEKS                       R23 R22 K42 ["layoutOrder"]
      191 CALL                             R20 2 1
      192 SETTABLEKS                       R20 R19 K40 ["OptionMenuButton"]
      194 CALL                             R16 3 1
      195 SETTABLEKS                       R16 R15 K20 ["Toolbar"]
      197 GETUPVAL                         R16 6
      198 GETUPVAL                         R17 11
      199 DUPTABLE                         R18 K51 [{"LayoutOrder", "orientation"}]
      200 MOVE                             R19 R9
      201 CALL                             R19 0 1
      202 SETTABLEKS                       R19 R18 K25 ["LayoutOrder"]
      204 GETUPVAL                         R19 12
      205 GETTABLEKS                       R19 R19 K52 ["Enums"]
      207 GETTABLEKS                       R19 R19 K53 ["Orientation"]
      209 GETTABLEKS                       R19 R19 K54 ["Horizontal"]
      211 SETTABLEKS                       R19 R18 K50 ["orientation"]
      213 CALL                             R16 2 1
      214 SETTABLEKS                       R16 R15 K21 ["Divider"]
      216 GETUPVAL                         R16 6
      217 GETUPVAL                         R17 7
      218 DUPTABLE                         R18 K26 [{"tag", "LayoutOrder"}]
      219 LOADK                            R19 K55 ["size-full-0 fill"]
      220 SETTABLEKS                       R19 R18 K12 ["tag"]
      222 MOVE                             R19 R9
      223 CALL                             R19 0 1
      224 SETTABLEKS                       R19 R18 K25 ["LayoutOrder"]
      226 DUPTABLE                         R19 K57 [{"ContentView"}]
      227 GETUPVAL                         R20 6
      228 GETUPVAL                         R21 13
      229 DUPTABLE                         R22 K60 [{"networking", "assetType", "loadedScope", "search", "onAssetSelected"}]
      230 SETTABLEKS                       R3 R22 K3 ["networking"]
      232 GETTABLEKS                       R23 R0 K58 ["assetType"]
      234 SETTABLEKS                       R23 R22 K58 ["assetType"]
      236 GETTABLEKS                       R23 R4 K43 ["loadedScope"]
      238 SETTABLEKS                       R23 R22 K43 ["loadedScope"]
      240 SETTABLEKS                       R1 R22 K59 ["search"]
      242 SETTABLEKS                       R5 R22 K7 ["onAssetSelected"]
      244 CALL                             R20 2 1
      245 SETTABLEKS                       R20 R19 K56 ["ContentView"]
      247 CALL                             R16 3 1
      248 SETTABLEKS                       R16 R15 K22 ["ContentViewContainer"]
      250 GETUPVAL                         R16 6
      251 GETUPVAL                         R17 7
      252 DUPTABLE                         R18 K26 [{"tag", "LayoutOrder"}]
      253 LOADK                            R19 K61 ["size-full-0 auto-y row gap-small padding-small"]
      254 SETTABLEKS                       R19 R18 K12 ["tag"]
      256 MOVE                             R19 R9
      257 CALL                             R19 0 1
      258 SETTABLEKS                       R19 R18 K25 ["LayoutOrder"]
      260 DUPTABLE                         R19 K64 [{"NewButton", "ImportButton"}]
      261 JUMPIFNOT                        R11 ; [+13]
      262 GETUPVAL                         R20 6
      263 GETUPVAL                         R21 14
      264 DUPTABLE                         R22 K65 [{"layoutOrder", "assetType"}]
      265 MOVE                             R23 R9
      266 CALL                             R23 0 1
      267 SETTABLEKS                       R23 R22 K42 ["layoutOrder"]
      269 GETTABLEKS                       R23 R0 K58 ["assetType"]
      271 SETTABLEKS                       R23 R22 K58 ["assetType"]
      273 CALL                             R20 2 1
      274 JUMP                             ; [+1]
      275 LOADNIL                          R20
      276 SETTABLEKS                       R20 R19 K62 ["NewButton"]
      278 GETUPVAL                         R20 6
      279 GETUPVAL                         R21 15
      280 DUPTABLE                         R22 K67 [{"layoutOrder", "assetType", "onImportComplete"}]
      281 MOVE                             R23 R9
      282 CALL                             R23 0 1
      283 SETTABLEKS                       R23 R22 K42 ["layoutOrder"]
      285 GETTABLEKS                       R23 R0 K58 ["assetType"]
      287 SETTABLEKS                       R23 R22 K58 ["assetType"]
      289 SETTABLEKS                       R8 R22 K66 ["onImportComplete"]
      291 CALL                             R20 2 1
      292 SETTABLEKS                       R20 R19 K63 ["ImportButton"]
      294 CALL                             R16 3 1
      295 SETTABLEKS                       R16 R15 K23 ["Footer"]
      297 CALL                             R12 3 -1
      298 RETURN                           R12 -1

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
