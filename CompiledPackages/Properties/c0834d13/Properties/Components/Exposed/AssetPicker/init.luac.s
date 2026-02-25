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
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K1 ["onAssetSelected"]
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
       19 DUPTABLE                         R5 K5 [{"networking", "getGameIdAsync"}]
       20 SETTABLEKS                       R3 R5 K3 ["networking"]
       22 GETTABLEKS                       R6 R0 K4 ["getGameIdAsync"]
       24 SETTABLEKS                       R6 R5 K4 ["getGameIdAsync"]
       26 CALL                             R4 1 1
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R5 R6 K6 ["useCallback"]
       30 NEWCLOSURE                       R6 P1
       31 CAPTURE                          VAL R2
       32 NEWTABLE                         R7 0 0
       34 CALL                             R5 2 1
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R6 R7 K6 ["useCallback"]
       38 NEWCLOSURE                       R7 P2
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R0
       41 NEWTABLE                         R8 0 2
       43 GETTABLEKS                       R9 R3 K7 ["fetchAssetByIdAsync"]
       45 GETTABLEKS                       R10 R0 K8 ["onAssetSelected"]
       47 SETLIST                          R8 R9 2 [1]
       49 CALL                             R6 2 1
       50 GETUPVAL                         R7 3
       51 CALL                             R7 0 1
       52 GETUPVAL                         R8 4
       53 CALL                             R8 0 1
       54 GETUPVAL                         R9 5
       55 GETUPVAL                         R10 6
       56 DUPTABLE                         R11 K11 [{"tag", "Size"}]
       57 LOADK                            R12 K12 ["col"]
       58 SETTABLEKS                       R12 R11 K9 ["tag"]
       60 GETIMPORT                        R12 K15 [UDim2.fromOffset]
       62 LOADN                            R13 9
       63 LOADN                            R14 58
       64 CALL                             R12 2 1
       65 SETTABLEKS                       R12 R11 K10 ["Size"]
       67 DUPTABLE                         R12 K20 [{"SearchBarContainer", "Toolbar", "ContentViewContainer", "Footer"}]
       68 GETUPVAL                         R13 5
       69 GETUPVAL                         R14 6
       70 DUPTABLE                         R15 K22 [{"tag", "LayoutOrder"}]
       71 LOADK                            R16 K23 ["size-full-0 auto-y padding-x-small padding-top-small padding-bottom-xxsmall"]
       72 SETTABLEKS                       R16 R15 K9 ["tag"]
       74 MOVE                             R16 R7
       75 CALL                             R16 0 1
       76 SETTABLEKS                       R16 R15 K21 ["LayoutOrder"]
       78 DUPTABLE                         R16 K25 [{"SearchBar"}]
       79 GETUPVAL                         R17 5
       80 GETUPVAL                         R18 7
       81 DUPTABLE                         R19 K28 [{"size", "onTextBoxChanged"}]
       82 GETIMPORT                        R20 K30 [UDim2.new]
       84 LOADN                            R21 1
       85 LOADN                            R22 0
       86 LOADN                            R23 0
       87 GETTABLEKS                       R25 R8 K10 ["Size"]
       89 GETTABLEKS                       R24 R25 K31 ["Size_600"]
       91 CALL                             R20 4 1
       92 SETTABLEKS                       R20 R19 K26 ["size"]
       94 SETTABLEKS                       R5 R19 K27 ["onTextBoxChanged"]
       96 CALL                             R17 2 1
       97 SETTABLEKS                       R17 R16 K24 ["SearchBar"]
       99 CALL                             R13 3 1
      100 SETTABLEKS                       R13 R12 K16 ["SearchBarContainer"]
      102 GETUPVAL                         R13 5
      103 GETUPVAL                         R14 6
      104 DUPTABLE                         R15 K22 [{"tag", "LayoutOrder"}]
      105 LOADK                            R16 K32 ["size-full-0 auto-y row align-y-center gap-xsmall padding-x-small"]
      106 SETTABLEKS                       R16 R15 K9 ["tag"]
      108 MOVE                             R16 R7
      109 CALL                             R16 0 1
      110 SETTABLEKS                       R16 R15 K21 ["LayoutOrder"]
      112 DUPTABLE                         R16 K36 [{"ScopeMenuButton", "Gap", "OptionMenuButton"}]
      113 GETUPVAL                         R17 5
      114 GETUPVAL                         R18 8
      115 DUPTABLE                         R19 K41 [{"layoutOrder", "loadedScope", "loadedScopeMap", "onScopeChanged"}]
      116 MOVE                             R20 R7
      117 CALL                             R20 0 1
      118 SETTABLEKS                       R20 R19 K37 ["layoutOrder"]
      120 GETTABLEKS                       R20 R4 K38 ["loadedScope"]
      122 SETTABLEKS                       R20 R19 K38 ["loadedScope"]
      124 GETTABLEKS                       R20 R4 K39 ["loadedScopeMap"]
      126 SETTABLEKS                       R20 R19 K39 ["loadedScopeMap"]
      128 GETTABLEKS                       R20 R4 K40 ["onScopeChanged"]
      130 SETTABLEKS                       R20 R19 K40 ["onScopeChanged"]
      132 CALL                             R17 2 1
      133 SETTABLEKS                       R17 R16 K33 ["ScopeMenuButton"]
      135 GETUPVAL                         R17 5
      136 GETUPVAL                         R18 6
      137 DUPTABLE                         R19 K22 [{"tag", "LayoutOrder"}]
      138 LOADK                            R20 K42 ["size-0-0 fill"]
      139 SETTABLEKS                       R20 R19 K9 ["tag"]
      141 MOVE                             R20 R7
      142 CALL                             R20 0 1
      143 SETTABLEKS                       R20 R19 K21 ["LayoutOrder"]
      145 CALL                             R17 2 1
      146 SETTABLEKS                       R17 R16 K34 ["Gap"]
      148 GETUPVAL                         R17 5
      149 GETUPVAL                         R18 9
      150 DUPTABLE                         R19 K43 [{"layoutOrder"}]
      151 MOVE                             R20 R7
      152 CALL                             R20 0 1
      153 SETTABLEKS                       R20 R19 K37 ["layoutOrder"]
      155 CALL                             R17 2 1
      156 SETTABLEKS                       R17 R16 K35 ["OptionMenuButton"]
      158 CALL                             R13 3 1
      159 SETTABLEKS                       R13 R12 K17 ["Toolbar"]
      161 GETUPVAL                         R13 5
      162 GETUPVAL                         R14 6
      163 DUPTABLE                         R15 K22 [{"tag", "LayoutOrder"}]
      164 LOADK                            R16 K44 ["size-full-0 fill"]
      165 SETTABLEKS                       R16 R15 K9 ["tag"]
      167 MOVE                             R16 R7
      168 CALL                             R16 0 1
      169 SETTABLEKS                       R16 R15 K21 ["LayoutOrder"]
      171 DUPTABLE                         R16 K46 [{"ContentView"}]
      172 GETUPVAL                         R17 5
      173 GETUPVAL                         R18 10
      174 DUPTABLE                         R19 K49 [{"networking", "assetType", "loadedScope", "search", "onAssetSelected"}]
      175 SETTABLEKS                       R3 R19 K3 ["networking"]
      177 GETTABLEKS                       R20 R0 K47 ["assetType"]
      179 SETTABLEKS                       R20 R19 K47 ["assetType"]
      181 GETTABLEKS                       R20 R4 K38 ["loadedScope"]
      183 SETTABLEKS                       R20 R19 K38 ["loadedScope"]
      185 SETTABLEKS                       R1 R19 K48 ["search"]
      187 GETTABLEKS                       R20 R0 K8 ["onAssetSelected"]
      189 SETTABLEKS                       R20 R19 K8 ["onAssetSelected"]
      191 CALL                             R17 2 1
      192 SETTABLEKS                       R17 R16 K45 ["ContentView"]
      194 CALL                             R13 3 1
      195 SETTABLEKS                       R13 R12 K18 ["ContentViewContainer"]
      197 GETUPVAL                         R13 5
      198 GETUPVAL                         R14 6
      199 DUPTABLE                         R15 K22 [{"tag", "LayoutOrder"}]
      200 LOADK                            R16 K50 ["size-full-0 auto-y row gap-small padding-small"]
      201 SETTABLEKS                       R16 R15 K9 ["tag"]
      203 MOVE                             R16 R7
      204 CALL                             R16 0 1
      205 SETTABLEKS                       R16 R15 K21 ["LayoutOrder"]
      207 DUPTABLE                         R16 K53 [{"NewButton", "ImportButton"}]
      208 GETUPVAL                         R17 5
      209 GETUPVAL                         R18 11
      210 DUPTABLE                         R19 K54 [{"layoutOrder", "assetType"}]
      211 MOVE                             R20 R7
      212 CALL                             R20 0 1
      213 SETTABLEKS                       R20 R19 K37 ["layoutOrder"]
      215 GETTABLEKS                       R20 R0 K47 ["assetType"]
      217 SETTABLEKS                       R20 R19 K47 ["assetType"]
      219 CALL                             R17 2 1
      220 SETTABLEKS                       R17 R16 K51 ["NewButton"]
      222 GETUPVAL                         R17 5
      223 GETUPVAL                         R18 12
      224 DUPTABLE                         R19 K56 [{"layoutOrder", "assetType", "onImportComplete"}]
      225 MOVE                             R20 R7
      226 CALL                             R20 0 1
      227 SETTABLEKS                       R20 R19 K37 ["layoutOrder"]
      229 GETTABLEKS                       R20 R0 K47 ["assetType"]
      231 SETTABLEKS                       R20 R19 K47 ["assetType"]
      233 SETTABLEKS                       R6 R19 K55 ["onImportComplete"]
      235 CALL                             R17 2 1
      236 SETTABLEKS                       R17 R16 K52 ["ImportButton"]
      238 CALL                             R13 3 1
      239 SETTABLEKS                       R13 R12 K19 ["Footer"]
      241 CALL                             R9 3 -1
      242 RETURN                           R9 -1

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
       98 GETTABLEKS                       R14 R15 K20 ["useScopeLoading"]
      100 CALL                             R13 1 1
      101 GETTABLEKS                       R14 R3 K21 ["View"]
      103 GETTABLEKS                       R15 R8 K22 ["createElement"]
      105 GETTABLEKS                       R16 R9 K23 ["createNextOrder"]
      107 GETTABLEKS                       R18 R3 K19 ["Hooks"]
      109 GETTABLEKS                       R17 R18 K24 ["useTokens"]
      111 DUPCLOSURE                       R18 K25 [PROTO_3]
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R5
      114 CAPTURE                          VAL R13
      115 CAPTURE                          VAL R16
      116 CAPTURE                          VAL R17
      117 CAPTURE                          VAL R15
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R11
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R7
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R6
      124 CAPTURE                          VAL R4
      125 RETURN                           R18 1
