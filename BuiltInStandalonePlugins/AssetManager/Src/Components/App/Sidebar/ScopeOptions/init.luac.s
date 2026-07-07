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
       28 DUPTABLE                         R7 K10 [{["Text"], ["Tags"] = "PrimaryBrand", ["OnClick"]}]
       29 LOADK                            R10 K5 ["Scopes"]
       30 LOADK                            R11 K11 ["SaveOptions"]
       31 NAMECALL                         R8 R1 K7 ["getText"]
       33 CALL                             R8 3 1
       34 SETTABLEKS                       R8 R7 K2 ["Text"]
       36 NEWCLOSURE                       R8 P1
       37 CAPTURE                          VAL R3
       38 SETTABLEKS                       R8 R7 K3 ["OnClick"]
       40 SETLIST                          R5 R6 2 [1]
       42 GETUPVAL                         R6 4
       43 GETTABLEKS                       R6 R6 K12 ["createElement"]
       45 GETUPVAL                         R7 5
       46 GETTABLEKS                       R7 R7 K13 ["View"]
       48 DUPTABLE                         R8 K17 [{["LayoutOrder"], ["tag"] = "col size-full"}]
       49 GETTABLEKS                       R9 R0 K14 ["LayoutOrder"]
       51 SETTABLEKS                       R9 R8 K14 ["LayoutOrder"]
       53 DUPTABLE                         R9 K20 [{"Contents", "Toolbar"}]
       54 GETUPVAL                         R10 4
       55 GETTABLEKS                       R10 R10 K12 ["createElement"]
       57 GETUPVAL                         R11 5
       58 GETTABLEKS                       R11 R11 K13 ["View"]
       60 DUPTABLE                         R12 K22 [{["tag"] = "col align-x-left align-y-top fill size-full am-padding-top-sidebar-toggle"}]
       61 DUPTABLE                         R13 K27 [{"Header", "Description", "SelectAllCheckbox", "ListContainer"}]
       62 GETUPVAL                         R14 4
       63 GETTABLEKS                       R14 R14 K12 ["createElement"]
       65 GETUPVAL                         R15 5
       66 GETTABLEKS                       R15 R15 K2 ["Text"]
       68 DUPTABLE                         R16 K29 [{["LayoutOrder"], ["Text"], ["tag"] = "size-full-0 auto-y padding-x-small padding-top-medium padding-top-xsmall text-title-large text-wrap text-align-x-left"}]
       69 NAMECALL                         R17 R2 K30 ["getNextOrder"]
       71 CALL                             R17 1 1
       72 SETTABLEKS                       R17 R16 K14 ["LayoutOrder"]
       74 LOADK                            R19 K5 ["Scopes"]
       75 LOADK                            R20 K31 ["Customize"]
       76 NAMECALL                         R17 R1 K7 ["getText"]
       78 CALL                             R17 3 1
       79 SETTABLEKS                       R17 R16 K2 ["Text"]
       81 CALL                             R14 2 1
       82 SETTABLEKS                       R14 R13 K23 ["Header"]
       84 GETUPVAL                         R14 4
       85 GETTABLEKS                       R14 R14 K12 ["createElement"]
       87 GETUPVAL                         R15 5
       88 GETTABLEKS                       R15 R15 K2 ["Text"]
       90 DUPTABLE                         R16 K33 [{["LayoutOrder"], ["Text"], ["tag"] = "size-full-0 auto-y padding-small padding-top-xsmall text-body-small text-wrap text-align-x-left"}]
       91 NAMECALL                         R17 R2 K30 ["getNextOrder"]
       93 CALL                             R17 1 1
       94 SETTABLEKS                       R17 R16 K14 ["LayoutOrder"]
       96 LOADK                            R19 K5 ["Scopes"]
       97 LOADK                            R20 K34 ["OptionsDescription"]
       98 NAMECALL                         R17 R1 K7 ["getText"]
      100 CALL                             R17 3 1
      101 SETTABLEKS                       R17 R16 K2 ["Text"]
      103 CALL                             R14 2 1
      104 SETTABLEKS                       R14 R13 K24 ["Description"]
      106 GETUPVAL                         R14 4
      107 GETTABLEKS                       R14 R14 K12 ["createElement"]
      109 GETUPVAL                         R15 6
      110 DUPTABLE                         R16 K37 [{"LayoutOrder", "Text", "Checked", "OnChecked"}]
      111 NAMECALL                         R17 R2 K30 ["getNextOrder"]
      113 CALL                             R17 1 1
      114 SETTABLEKS                       R17 R16 K14 ["LayoutOrder"]
      116 LOADK                            R19 K5 ["Scopes"]
      117 LOADK                            R20 K38 ["SelectAll"]
      118 NAMECALL                         R17 R1 K7 ["getText"]
      120 CALL                             R17 3 1
      121 SETTABLEKS                       R17 R16 K2 ["Text"]
      123 NAMECALL                         R17 R3 K39 ["hasAllOptionsChecked"]
      125 CALL                             R17 1 1
      126 SETTABLEKS                       R17 R16 K35 ["Checked"]
      128 NEWCLOSURE                       R17 P2
      129 CAPTURE                          VAL R3
      130 SETTABLEKS                       R17 R16 K36 ["OnChecked"]
      132 CALL                             R14 2 1
      133 SETTABLEKS                       R14 R13 K25 ["SelectAllCheckbox"]
      135 GETUPVAL                         R14 4
      136 GETTABLEKS                       R14 R14 K12 ["createElement"]
      138 GETUPVAL                         R15 5
      139 GETTABLEKS                       R15 R15 K13 ["View"]
      141 DUPTABLE                         R16 K41 [{["LayoutOrder"], ["tag"] = "col fill size-full padding-xsmall"}]
      142 NAMECALL                         R17 R2 K30 ["getNextOrder"]
      144 CALL                             R17 1 1
      145 SETTABLEKS                       R17 R16 K14 ["LayoutOrder"]
      147 DUPTABLE                         R17 K44 [{"TextFilterInput", "List"}]
      148 GETUPVAL                         R18 4
      149 GETTABLEKS                       R18 R18 K12 ["createElement"]
      151 GETUPVAL                         R19 7
      152 DUPTABLE                         R20 K52 [{["LayoutOrder"], ["PlaceholderText"], ["IncrementalTextSearch"] = True, ["OnSearchRequested"], ["ShowSearchIcon"] = True, ["ShowSearchButton"] = False}]
      153 NAMECALL                         R21 R2 K30 ["getNextOrder"]
      155 CALL                             R21 1 1
      156 SETTABLEKS                       R21 R20 K14 ["LayoutOrder"]
      158 LOADK                            R23 K53 ["SearchOptions"]
      159 LOADK                            R24 K54 ["FilterPlaceholder"]
      160 NAMECALL                         R21 R1 K7 ["getText"]
      162 CALL                             R21 3 1
      163 SETTABLEKS                       R21 R20 K45 ["PlaceholderText"]
      165 NEWCLOSURE                       R21 P3
      166 CAPTURE                          VAL R3
      167 SETTABLEKS                       R21 R20 K48 ["OnSearchRequested"]
      169 CALL                             R18 2 1
      170 SETTABLEKS                       R18 R17 K42 ["TextFilterInput"]
      172 GETUPVAL                         R18 4
      173 GETTABLEKS                       R18 R18 K12 ["createElement"]
      175 GETUPVAL                         R19 8
      176 NEWTABLE                         R20 8 0
      178 NAMECALL                         R21 R2 K30 ["getNextOrder"]
      180 CALL                             R21 1 1
      181 SETTABLEKS                       R21 R20 K14 ["LayoutOrder"]
      183 NEWCLOSURE                       R21 P4
      184 CAPTURE                          VAL R3
      185 SETTABLEKS                       R21 R20 K55 ["GetRowProps"]
      187 SETTABLEKS                       R4 R20 K56 ["Rows"]
      189 GETUPVAL                         R21 6
      190 SETTABLEKS                       R21 R20 K57 ["RowComponent"]
      192 GETIMPORT                        R21 K61 [Enum.ScrollingDirection.Y]
      194 SETTABLEKS                       R21 R20 K59 ["ScrollingDirection"]
      196 GETUPVAL                         R21 4
      197 GETTABLEKS                       R21 R21 K62 ["Tag"]
      199 LOADK                            R22 K63 ["fill"]
      200 SETTABLE                         R22 R20 R21
      201 CALL                             R18 2 1
      202 SETTABLEKS                       R18 R17 K43 ["List"]
      204 CALL                             R14 3 1
      205 SETTABLEKS                       R14 R13 K26 ["ListContainer"]
      207 CALL                             R10 3 1
      208 SETTABLEKS                       R10 R9 K18 ["Contents"]
      210 GETUPVAL                         R10 4
      211 GETTABLEKS                       R10 R10 K12 ["createElement"]
      213 GETUPVAL                         R11 9
      214 DUPTABLE                         R12 K65 [{"LayoutOrder", "Buttons"}]
      215 NAMECALL                         R13 R2 K30 ["getNextOrder"]
      217 CALL                             R13 1 1
      218 SETTABLEKS                       R13 R12 K14 ["LayoutOrder"]
      220 SETTABLEKS                       R5 R12 K64 ["Buttons"]
      222 CALL                             R10 2 1
      223 SETTABLEKS                       R10 R9 K19 ["Toolbar"]
      225 CALL                             R6 3 -1
      226 RETURN                           R6 -1

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
