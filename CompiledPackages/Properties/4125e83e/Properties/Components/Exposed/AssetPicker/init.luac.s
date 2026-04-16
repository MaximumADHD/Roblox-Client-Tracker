PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["networking"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+3]
        5 GETUPVAL                         R0 1
        6 RETURN                           R0 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R0 R1 K0 ["networking"]
       10 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Text"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["fetchAssetByIdAsync"]
        3 DUPTABLE                         R2 K2 [{"assetId"}]
        4 SETTABLEKS                       R0 R2 K1 ["assetId"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R1
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADK                            R2 K1 [""]
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K2 ["useMemo"]
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
       42 GETUPVAL                         R7 0
       43 GETTABLEKS                       R6 R7 K9 ["useCallback"]
       45 NEWCLOSURE                       R7 P1
       46 CAPTURE                          VAL R2
       47 NEWTABLE                         R8 0 0
       49 CALL                             R6 2 1
       50 GETUPVAL                         R8 0
       51 GETTABLEKS                       R7 R8 K9 ["useCallback"]
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
       78 DUPTABLE                         R13 K14 [{"tag", "Size"}]
       79 LOADK                            R14 K15 ["col stroke-default radius-medium"]
       80 SETTABLEKS                       R14 R13 K12 ["tag"]
       82 GETIMPORT                        R14 K18 [UDim2.fromOffset]
       84 LOADN                            R15 9
       85 LOADN                            R16 51
       86 CALL                             R14 2 1
       87 SETTABLEKS                       R14 R13 K13 ["Size"]
       89 DUPTABLE                         R14 K24 [{"SearchBarContainer", "Toolbar", "Divider", "ContentViewContainer", "Footer"}]
       90 GETUPVAL                         R15 6
       91 GETUPVAL                         R16 7
       92 DUPTABLE                         R17 K26 [{"tag", "LayoutOrder"}]
       93 LOADK                            R18 K27 ["size-full-0 auto-y padding-x-small padding-top-small padding-bottom-xxsmall"]
       94 SETTABLEKS                       R18 R17 K12 ["tag"]
       96 MOVE                             R18 R8
       97 CALL                             R18 0 1
       98 SETTABLEKS                       R18 R17 K25 ["LayoutOrder"]
      100 DUPTABLE                         R18 K29 [{"SearchBar"}]
      101 GETUPVAL                         R19 6
      102 GETUPVAL                         R20 8
      103 DUPTABLE                         R21 K32 [{"size", "onTextBoxChanged"}]
      104 GETIMPORT                        R22 K34 [UDim2.new]
      106 LOADN                            R23 1
      107 LOADN                            R24 0
      108 LOADN                            R25 0
      109 GETTABLEKS                       R27 R9 K13 ["Size"]
      111 GETTABLEKS                       R26 R27 K35 ["Size_600"]
      113 CALL                             R22 4 1
      114 SETTABLEKS                       R22 R21 K30 ["size"]
      116 SETTABLEKS                       R6 R21 K31 ["onTextBoxChanged"]
      118 CALL                             R19 2 1
      119 SETTABLEKS                       R19 R18 K28 ["SearchBar"]
      121 CALL                             R15 3 1
      122 SETTABLEKS                       R15 R14 K19 ["SearchBarContainer"]
      124 GETUPVAL                         R15 6
      125 GETUPVAL                         R16 7
      126 DUPTABLE                         R17 K26 [{"tag", "LayoutOrder"}]
      127 LOADK                            R18 K36 ["size-full-0 auto-y padding-x-small padding-y-xsmall row align-y-center gap-xsmall"]
      128 SETTABLEKS                       R18 R17 K12 ["tag"]
      130 MOVE                             R18 R8
      131 CALL                             R18 0 1
      132 SETTABLEKS                       R18 R17 K25 ["LayoutOrder"]
      134 DUPTABLE                         R18 K40 [{"ScopeMenuButton", "Gap", "OptionMenuButton"}]
      135 GETUPVAL                         R19 6
      136 GETUPVAL                         R20 9
      137 DUPTABLE                         R21 K46 [{"layoutOrder", "loadedScope", "loadedScopeMap", "universeCreatorInfo", "onScopeChanged"}]
      138 MOVE                             R22 R8
      139 CALL                             R22 0 1
      140 SETTABLEKS                       R22 R21 K41 ["layoutOrder"]
      142 GETTABLEKS                       R22 R4 K42 ["loadedScope"]
      144 SETTABLEKS                       R22 R21 K42 ["loadedScope"]
      146 GETTABLEKS                       R22 R4 K43 ["loadedScopeMap"]
      148 SETTABLEKS                       R22 R21 K43 ["loadedScopeMap"]
      150 GETTABLEKS                       R22 R4 K44 ["universeCreatorInfo"]
      152 SETTABLEKS                       R22 R21 K44 ["universeCreatorInfo"]
      154 GETTABLEKS                       R22 R4 K45 ["onScopeChanged"]
      156 SETTABLEKS                       R22 R21 K45 ["onScopeChanged"]
      158 CALL                             R19 2 1
      159 SETTABLEKS                       R19 R18 K37 ["ScopeMenuButton"]
      161 GETUPVAL                         R19 6
      162 GETUPVAL                         R20 7
      163 DUPTABLE                         R21 K26 [{"tag", "LayoutOrder"}]
      164 LOADK                            R22 K47 ["size-0-0 fill"]
      165 SETTABLEKS                       R22 R21 K12 ["tag"]
      167 MOVE                             R22 R8
      168 CALL                             R22 0 1
      169 SETTABLEKS                       R22 R21 K25 ["LayoutOrder"]
      171 CALL                             R19 2 1
      172 SETTABLEKS                       R19 R18 K38 ["Gap"]
      174 GETUPVAL                         R19 6
      175 GETUPVAL                         R20 10
      176 DUPTABLE                         R21 K48 [{"layoutOrder"}]
      177 MOVE                             R22 R8
      178 CALL                             R22 0 1
      179 SETTABLEKS                       R22 R21 K41 ["layoutOrder"]
      181 CALL                             R19 2 1
      182 SETTABLEKS                       R19 R18 K39 ["OptionMenuButton"]
      184 CALL                             R15 3 1
      185 SETTABLEKS                       R15 R14 K20 ["Toolbar"]
      187 GETUPVAL                         R15 6
      188 GETUPVAL                         R16 11
      189 DUPTABLE                         R17 K50 [{"LayoutOrder", "orientation"}]
      190 MOVE                             R18 R8
      191 CALL                             R18 0 1
      192 SETTABLEKS                       R18 R17 K25 ["LayoutOrder"]
      194 GETUPVAL                         R21 12
      195 GETTABLEKS                       R20 R21 K51 ["Enums"]
      197 GETTABLEKS                       R19 R20 K52 ["Orientation"]
      199 GETTABLEKS                       R18 R19 K53 ["Horizontal"]
      201 SETTABLEKS                       R18 R17 K49 ["orientation"]
      203 CALL                             R15 2 1
      204 SETTABLEKS                       R15 R14 K21 ["Divider"]
      206 GETUPVAL                         R15 6
      207 GETUPVAL                         R16 7
      208 DUPTABLE                         R17 K26 [{"tag", "LayoutOrder"}]
      209 LOADK                            R18 K54 ["size-full-0 fill"]
      210 SETTABLEKS                       R18 R17 K12 ["tag"]
      212 MOVE                             R18 R8
      213 CALL                             R18 0 1
      214 SETTABLEKS                       R18 R17 K25 ["LayoutOrder"]
      216 DUPTABLE                         R18 K56 [{"ContentView"}]
      217 GETUPVAL                         R19 6
      218 GETUPVAL                         R20 13
      219 DUPTABLE                         R21 K59 [{"networking", "assetType", "loadedScope", "search", "onAssetSelected"}]
      220 SETTABLEKS                       R3 R21 K3 ["networking"]
      222 GETTABLEKS                       R22 R0 K57 ["assetType"]
      224 SETTABLEKS                       R22 R21 K57 ["assetType"]
      226 GETTABLEKS                       R22 R4 K42 ["loadedScope"]
      228 SETTABLEKS                       R22 R21 K42 ["loadedScope"]
      230 SETTABLEKS                       R1 R21 K58 ["search"]
      232 SETTABLEKS                       R5 R21 K7 ["onAssetSelected"]
      234 CALL                             R19 2 1
      235 SETTABLEKS                       R19 R18 K55 ["ContentView"]
      237 CALL                             R15 3 1
      238 SETTABLEKS                       R15 R14 K22 ["ContentViewContainer"]
      240 GETUPVAL                         R15 6
      241 GETUPVAL                         R16 7
      242 DUPTABLE                         R17 K26 [{"tag", "LayoutOrder"}]
      243 LOADK                            R18 K60 ["size-full-0 auto-y row gap-small padding-small"]
      244 SETTABLEKS                       R18 R17 K12 ["tag"]
      246 MOVE                             R18 R8
      247 CALL                             R18 0 1
      248 SETTABLEKS                       R18 R17 K25 ["LayoutOrder"]
      250 DUPTABLE                         R18 K63 [{"NewButton", "ImportButton"}]
      251 JUMPIFNOT                        R10 ; [+13]
      252 GETUPVAL                         R19 6
      253 GETUPVAL                         R20 14
      254 DUPTABLE                         R21 K64 [{"layoutOrder", "assetType"}]
      255 MOVE                             R22 R8
      256 CALL                             R22 0 1
      257 SETTABLEKS                       R22 R21 K41 ["layoutOrder"]
      259 GETTABLEKS                       R22 R0 K57 ["assetType"]
      261 SETTABLEKS                       R22 R21 K57 ["assetType"]
      263 CALL                             R19 2 1
      264 JUMP                             ; [+1]
      265 LOADNIL                          R19
      266 SETTABLEKS                       R19 R18 K61 ["NewButton"]
      268 GETUPVAL                         R19 6
      269 GETUPVAL                         R20 15
      270 DUPTABLE                         R21 K66 [{"layoutOrder", "assetType", "onImportComplete"}]
      271 MOVE                             R22 R8
      272 CALL                             R22 0 1
      273 SETTABLEKS                       R22 R21 K41 ["layoutOrder"]
      275 GETTABLEKS                       R22 R0 K57 ["assetType"]
      277 SETTABLEKS                       R22 R21 K57 ["assetType"]
      279 SETTABLEKS                       R7 R21 K65 ["onImportComplete"]
      281 CALL                             R19 2 1
      282 SETTABLEKS                       R19 R18 K62 ["ImportButton"]
      284 CALL                             R15 3 1
      285 SETTABLEKS                       R15 R14 K23 ["Footer"]
      287 CALL                             R11 3 -1
      288 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETIMPORT                        R5 K1 [script]
       13 GETTABLEKS                       R4 R5 K7 ["Components"]
       15 GETTABLEKS                       R3 R4 K8 ["ContentView"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R1 K9 ["Foundation"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETIMPORT                        R7 K1 [script]
       27 GETTABLEKS                       R6 R7 K7 ["Components"]
       29 GETTABLEKS                       R5 R6 K10 ["ImportButton"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETIMPORT                        R7 K1 [script]
       36 GETTABLEKS                       R6 R7 K11 ["Networking"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETIMPORT                        R9 K1 [script]
       43 GETTABLEKS                       R8 R9 K7 ["Components"]
       45 GETTABLEKS                       R7 R8 K12 ["NewButton"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K6 [require]
       50 GETIMPORT                        R10 K1 [script]
       52 GETTABLEKS                       R9 R10 K7 ["Components"]
       54 GETTABLEKS                       R8 R9 K13 ["OptionMenuButton"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K6 [require]
       59 GETTABLEKS                       R9 R1 K14 ["React"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K6 [require]
       64 GETTABLEKS                       R10 R1 K15 ["ReactUtils"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K6 [require]
       69 GETIMPORT                        R13 K1 [script]
       71 GETTABLEKS                       R12 R13 K7 ["Components"]
       73 GETTABLEKS                       R11 R12 K16 ["ScopeMenuButton"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K6 [require]
       78 GETIMPORT                        R14 K1 [script]
       80 GETTABLEKS                       R13 R14 K7 ["Components"]
       82 GETTABLEKS                       R12 R13 K17 ["SearchBar"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K6 [require]
       87 GETIMPORT                        R14 K1 [script]
       89 GETTABLEKS                       R13 R14 K18 ["Types"]
       91 CALL                             R12 1 1
       92 GETIMPORT                        R13 K6 [require]
       94 GETIMPORT                        R16 K1 [script]
       96 GETTABLEKS                       R15 R16 K19 ["Hooks"]
       98 GETTABLEKS                       R14 R15 K20 ["useAssetAccessSharing"]
      100 CALL                             R13 1 1
      101 GETIMPORT                        R14 K6 [require]
      103 GETIMPORT                        R17 K1 [script]
      105 GETTABLEKS                       R16 R17 K19 ["Hooks"]
      107 GETTABLEKS                       R15 R16 K21 ["useScopeLoading"]
      109 CALL                             R14 1 1
      110 GETTABLEKS                       R15 R3 K22 ["Divider"]
      112 GETTABLEKS                       R16 R3 K23 ["View"]
      114 GETTABLEKS                       R17 R8 K24 ["createElement"]
      116 GETTABLEKS                       R18 R9 K25 ["createNextOrder"]
      118 GETTABLEKS                       R20 R3 K19 ["Hooks"]
      120 GETTABLEKS                       R19 R20 K26 ["useTokens"]
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
