PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 0
        2 NAMECALL                         R0 R0 K0 ["closeScopeOptions"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 1
        2 NAMECALL                         R0 R0 K0 ["closeScopeOptions"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["toggleSelectAllOptions"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["updateScopeOptions"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["toggleScopeOption"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R3 K5 [{"ScopeInfo", "Checked", "LayoutOrder", "OnChecked", "Position"}]
        1 GETUPVAL                         R4 0
        2 MOVE                             R6 R0
        3 NAMECALL                         R4 R4 K6 ["getScopeWithUid"]
        5 CALL                             R4 2 1
        6 SETTABLEKS                       R4 R3 K0 ["ScopeInfo"]
        8 GETUPVAL                         R4 0
        9 MOVE                             R6 R0
       10 NAMECALL                         R4 R4 K7 ["isScopeOptionChecked"]
       12 CALL                             R4 2 1
       13 SETTABLEKS                       R4 R3 K1 ["Checked"]
       15 SETTABLEKS                       R1 R3 K2 ["LayoutOrder"]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R4 R3 K3 ["OnChecked"]
       22 SETTABLEKS                       R2 R3 K4 ["Position"]
       24 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["new"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K0 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 CALL                             R4 0 1
       14 NEWTABLE                         R5 0 2
       16 DUPTABLE                         R6 K4 [{"Text", "OnClick"}]
       17 LOADK                            R9 K5 ["Scopes"]
       18 LOADK                            R10 K6 ["CancelOptions"]
       19 NAMECALL                         R7 R1 K7 ["getText"]
       21 CALL                             R7 3 1
       22 SETTABLEKS                       R7 R6 K2 ["Text"]
       24 NEWCLOSURE                       R7 P0
       25 CAPTURE                          VAL R3
       26 SETTABLEKS                       R7 R6 K3 ["OnClick"]
       28 DUPTABLE                         R7 K9 [{"Text", "Tags", "OnClick"}]
       29 LOADK                            R10 K5 ["Scopes"]
       30 LOADK                            R11 K10 ["SaveOptions"]
       31 NAMECALL                         R8 R1 K7 ["getText"]
       33 CALL                             R8 3 1
       34 SETTABLEKS                       R8 R7 K2 ["Text"]
       36 LOADK                            R8 K11 ["PrimaryBrand"]
       37 SETTABLEKS                       R8 R7 K8 ["Tags"]
       39 NEWCLOSURE                       R8 P1
       40 CAPTURE                          VAL R3
       41 SETTABLEKS                       R8 R7 K3 ["OnClick"]
       43 SETLIST                          R5 R6 2 [1]
       45 GETUPVAL                         R6 4
       46 GETTABLEKS                       R6 R6 K12 ["createElement"]
       48 GETUPVAL                         R7 5
       49 GETTABLEKS                       R7 R7 K13 ["View"]
       51 DUPTABLE                         R8 K16 [{"LayoutOrder", "tag"}]
       52 GETTABLEKS                       R9 R0 K14 ["LayoutOrder"]
       54 SETTABLEKS                       R9 R8 K14 ["LayoutOrder"]
       56 LOADK                            R9 K17 ["col size-full"]
       57 SETTABLEKS                       R9 R8 K15 ["tag"]
       59 DUPTABLE                         R9 K20 [{"Contents", "Toolbar"}]
       60 GETUPVAL                         R10 4
       61 GETTABLEKS                       R10 R10 K12 ["createElement"]
       63 GETUPVAL                         R11 5
       64 GETTABLEKS                       R11 R11 K13 ["View"]
       66 DUPTABLE                         R12 K21 [{"tag"}]
       67 LOADK                            R13 K22 ["col size-full align-y-top align-x-left fill"]
       68 SETTABLEKS                       R13 R12 K15 ["tag"]
       70 DUPTABLE                         R13 K28 [{"ToggleSidebarPadding", "Header", "Description", "SelectAllCheckbox", "ListContainer"}]
       71 GETUPVAL                         R14 4
       72 GETTABLEKS                       R14 R14 K12 ["createElement"]
       74 GETUPVAL                         R15 5
       75 GETTABLEKS                       R15 R15 K13 ["View"]
       77 DUPTABLE                         R16 K16 [{"LayoutOrder", "tag"}]
       78 NAMECALL                         R17 R2 K29 ["getNextOrder"]
       80 CALL                             R17 1 1
       81 SETTABLEKS                       R17 R16 K14 ["LayoutOrder"]
       83 LOADK                            R17 K30 ["TopSidebarButtonPadding"]
       84 SETTABLEKS                       R17 R16 K15 ["tag"]
       86 CALL                             R14 2 1
       87 SETTABLEKS                       R14 R13 K23 ["ToggleSidebarPadding"]
       89 GETUPVAL                         R14 4
       90 GETTABLEKS                       R14 R14 K12 ["createElement"]
       92 GETUPVAL                         R15 5
       93 GETTABLEKS                       R15 R15 K2 ["Text"]
       95 DUPTABLE                         R16 K31 [{"LayoutOrder", "Text", "tag"}]
       96 NAMECALL                         R17 R2 K29 ["getNextOrder"]
       98 CALL                             R17 1 1
       99 SETTABLEKS                       R17 R16 K14 ["LayoutOrder"]
      101 LOADK                            R19 K5 ["Scopes"]
      102 LOADK                            R20 K32 ["Customize"]
      103 NAMECALL                         R17 R1 K7 ["getText"]
      105 CALL                             R17 3 1
      106 SETTABLEKS                       R17 R16 K2 ["Text"]
      108 LOADK                            R17 K33 ["text-wrap text-align-x-left padding-x-small padding-top-medium padding-top-xsmall text-title-large size-full-0 auto-y"]
      109 SETTABLEKS                       R17 R16 K15 ["tag"]
      111 CALL                             R14 2 1
      112 SETTABLEKS                       R14 R13 K24 ["Header"]
      114 GETUPVAL                         R14 4
      115 GETTABLEKS                       R14 R14 K12 ["createElement"]
      117 GETUPVAL                         R15 5
      118 GETTABLEKS                       R15 R15 K2 ["Text"]
      120 DUPTABLE                         R16 K31 [{"LayoutOrder", "Text", "tag"}]
      121 NAMECALL                         R17 R2 K29 ["getNextOrder"]
      123 CALL                             R17 1 1
      124 SETTABLEKS                       R17 R16 K14 ["LayoutOrder"]
      126 LOADK                            R19 K5 ["Scopes"]
      127 LOADK                            R20 K34 ["OptionsDescription"]
      128 NAMECALL                         R17 R1 K7 ["getText"]
      130 CALL                             R17 3 1
      131 SETTABLEKS                       R17 R16 K2 ["Text"]
      133 LOADK                            R17 K35 ["text-wrap text-body-small text-align-x-left padding-small padding-top-xsmall size-full-0 auto-y"]
      134 SETTABLEKS                       R17 R16 K15 ["tag"]
      136 CALL                             R14 2 1
      137 SETTABLEKS                       R14 R13 K25 ["Description"]
      139 GETUPVAL                         R14 4
      140 GETTABLEKS                       R14 R14 K12 ["createElement"]
      142 GETUPVAL                         R15 6
      143 DUPTABLE                         R16 K38 [{"LayoutOrder", "Text", "Checked", "OnChecked"}]
      144 NAMECALL                         R17 R2 K29 ["getNextOrder"]
      146 CALL                             R17 1 1
      147 SETTABLEKS                       R17 R16 K14 ["LayoutOrder"]
      149 LOADK                            R19 K5 ["Scopes"]
      150 LOADK                            R20 K39 ["SelectAll"]
      151 NAMECALL                         R17 R1 K7 ["getText"]
      153 CALL                             R17 3 1
      154 SETTABLEKS                       R17 R16 K2 ["Text"]
      156 NAMECALL                         R17 R3 K40 ["hasAllOptionsChecked"]
      158 CALL                             R17 1 1
      159 SETTABLEKS                       R17 R16 K36 ["Checked"]
      161 NEWCLOSURE                       R17 P2
      162 CAPTURE                          VAL R3
      163 SETTABLEKS                       R17 R16 K37 ["OnChecked"]
      165 CALL                             R14 2 1
      166 SETTABLEKS                       R14 R13 K26 ["SelectAllCheckbox"]
      168 GETUPVAL                         R14 4
      169 GETTABLEKS                       R14 R14 K12 ["createElement"]
      171 GETUPVAL                         R15 5
      172 GETTABLEKS                       R15 R15 K13 ["View"]
      174 DUPTABLE                         R16 K16 [{"LayoutOrder", "tag"}]
      175 NAMECALL                         R17 R2 K29 ["getNextOrder"]
      177 CALL                             R17 1 1
      178 SETTABLEKS                       R17 R16 K14 ["LayoutOrder"]
      180 LOADK                            R17 K41 ["col size-full padding-xsmall fill"]
      181 SETTABLEKS                       R17 R16 K15 ["tag"]
      183 DUPTABLE                         R17 K44 [{"TextFilterInput", "List"}]
      184 GETUPVAL                         R18 4
      185 GETTABLEKS                       R18 R18 K12 ["createElement"]
      187 GETUPVAL                         R19 7
      188 DUPTABLE                         R20 K50 [{"LayoutOrder", "PlaceholderText", "IncrementalTextSearch", "OnSearchRequested", "ShowSearchIcon", "ShowSearchButton"}]
      189 NAMECALL                         R21 R2 K29 ["getNextOrder"]
      191 CALL                             R21 1 1
      192 SETTABLEKS                       R21 R20 K14 ["LayoutOrder"]
      194 LOADK                            R23 K51 ["SearchOptions"]
      195 LOADK                            R24 K52 ["FilterPlaceholder"]
      196 NAMECALL                         R21 R1 K7 ["getText"]
      198 CALL                             R21 3 1
      199 SETTABLEKS                       R21 R20 K45 ["PlaceholderText"]
      201 LOADB                            R21 1
      202 SETTABLEKS                       R21 R20 K46 ["IncrementalTextSearch"]
      204 NEWCLOSURE                       R21 P3
      205 CAPTURE                          VAL R3
      206 SETTABLEKS                       R21 R20 K47 ["OnSearchRequested"]
      208 LOADB                            R21 1
      209 SETTABLEKS                       R21 R20 K48 ["ShowSearchIcon"]
      211 LOADB                            R21 0
      212 SETTABLEKS                       R21 R20 K49 ["ShowSearchButton"]
      214 CALL                             R18 2 1
      215 SETTABLEKS                       R18 R17 K42 ["TextFilterInput"]
      217 GETUPVAL                         R18 4
      218 GETTABLEKS                       R18 R18 K12 ["createElement"]
      220 GETUPVAL                         R19 8
      221 NEWTABLE                         R20 8 0
      223 NAMECALL                         R21 R2 K29 ["getNextOrder"]
      225 CALL                             R21 1 1
      226 SETTABLEKS                       R21 R20 K14 ["LayoutOrder"]
      228 NEWCLOSURE                       R21 P4
      229 CAPTURE                          VAL R3
      230 SETTABLEKS                       R21 R20 K53 ["GetRowProps"]
      232 SETTABLEKS                       R4 R20 K54 ["Rows"]
      234 GETUPVAL                         R21 6
      235 SETTABLEKS                       R21 R20 K55 ["RowComponent"]
      237 GETIMPORT                        R21 K59 [Enum.ScrollingDirection.Y]
      239 SETTABLEKS                       R21 R20 K57 ["ScrollingDirection"]
      241 GETUPVAL                         R21 4
      242 GETTABLEKS                       R21 R21 K60 ["Tag"]
      244 LOADK                            R22 K61 ["fill"]
      245 SETTABLE                         R22 R20 R21
      246 CALL                             R18 2 1
      247 SETTABLEKS                       R18 R17 K43 ["List"]
      249 CALL                             R14 3 1
      250 SETTABLEKS                       R14 R13 K27 ["ListContainer"]
      252 CALL                             R10 3 1
      253 SETTABLEKS                       R10 R9 K18 ["Contents"]
      255 GETUPVAL                         R10 4
      256 GETTABLEKS                       R10 R10 K12 ["createElement"]
      258 GETUPVAL                         R11 9
      259 DUPTABLE                         R12 K63 [{"LayoutOrder", "Buttons"}]
      260 NAMECALL                         R13 R2 K29 ["getNextOrder"]
      262 CALL                             R13 1 1
      263 SETTABLEKS                       R13 R12 K14 ["LayoutOrder"]
      265 SETTABLEKS                       R5 R12 K62 ["Buttons"]
      267 CALL                             R10 2 1
      268 SETTABLEKS                       R10 R9 K19 ["Toolbar"]
      270 CALL                             R6 3 -1
      271 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETTABLEKS                       R6 R3 K12 ["Util"]
       34 GETTABLEKS                       R6 R6 K13 ["LayoutOrderIterator"]
       36 GETIMPORT                        R7 K5 [require]
       38 GETTABLEKS                       R8 R0 K14 ["Src"]
       40 GETTABLEKS                       R8 R8 K15 ["Types"]
       42 CALL                             R7 1 1
       43 GETTABLEKS                       R8 R3 K16 ["UI"]
       45 GETTABLEKS                       R9 R8 K17 ["List"]
       47 GETTABLEKS                       R10 R8 K18 ["SearchBar"]
       49 GETIMPORT                        R11 K5 [require]
       51 GETIMPORT                        R12 K1 [script]
       53 GETTABLEKS                       R12 R12 K19 ["CheckboxRow"]
       55 CALL                             R11 1 1
       56 GETIMPORT                        R12 K5 [require]
       58 GETTABLEKS                       R13 R0 K14 ["Src"]
       60 GETTABLEKS                       R13 R13 K20 ["Components"]
       62 GETTABLEKS                       R13 R13 K21 ["Shared"]
       64 GETTABLEKS                       R13 R13 K22 ["Toolbar"]
       66 CALL                             R12 1 1
       67 GETIMPORT                        R13 K5 [require]
       69 GETTABLEKS                       R14 R0 K14 ["Src"]
       71 GETTABLEKS                       R14 R14 K23 ["Controllers"]
       73 GETTABLEKS                       R14 R14 K24 ["ExplorerController"]
       75 CALL                             R13 1 1
       76 GETIMPORT                        R14 K5 [require]
       78 GETTABLEKS                       R15 R0 K14 ["Src"]
       80 GETTABLEKS                       R15 R15 K25 ["Hooks"]
       82 GETTABLEKS                       R15 R15 K26 ["useGroupOptions"]
       84 CALL                             R14 1 1
       85 DUPCLOSURE                       R15 K27 [PROTO_6]
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R13
       89 CAPTURE                          VAL R14
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R11
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R12
       96 RETURN                           R15 1
