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
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 MOVE                             R3 R0
        5 NAMECALL                         R1 R1 K0 ["updateScopeOptions"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["toggleScopeOption"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K6 [{"ScopeInfo", "Checked", "LayoutOrder", "OnChecked", "key"}]
        5 GETUPVAL                         R5 2
        6 MOVE                             R7 R0
        7 NAMECALL                         R5 R5 K7 ["getScopeWithUid"]
        9 CALL                             R5 2 1
       10 SETTABLEKS                       R5 R4 K1 ["ScopeInfo"]
       12 GETUPVAL                         R5 2
       13 MOVE                             R7 R0
       14 NAMECALL                         R5 R5 K8 ["isScopeOptionChecked"]
       16 CALL                             R5 2 1
       17 SETTABLEKS                       R5 R4 K2 ["Checked"]
       19 SETTABLEKS                       R1 R4 K3 ["LayoutOrder"]
       21 NEWCLOSURE                       R5 P0
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R5 R4 K4 ["OnChecked"]
       26 SETTABLEKS                       R0 R4 K5 ["key"]
       28 CALL                             R2 2 -1
       29 RETURN                           R2 -1

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
       14 GETUPVAL                         R5 4
       15 GETTABLEKS                       R5 R5 K2 ["useState"]
       17 LOADK                            R6 K3 [""]
       18 CALL                             R5 1 2
       19 NEWTABLE                         R7 0 2
       21 DUPTABLE                         R8 K9 [{["text"], ["variant"], ["onActivated"], ["testId"] = "scope-options-cancel-button"}]
       22 LOADK                            R11 K10 ["Scopes"]
       23 LOADK                            R12 K11 ["CancelOptions"]
       24 NAMECALL                         R9 R1 K12 ["getText"]
       26 CALL                             R9 3 1
       27 SETTABLEKS                       R9 R8 K4 ["text"]
       29 GETUPVAL                         R9 5
       30 GETTABLEKS                       R9 R9 K13 ["Enums"]
       32 GETTABLEKS                       R9 R9 K14 ["ButtonVariant"]
       34 GETTABLEKS                       R9 R9 K15 ["Standard"]
       36 SETTABLEKS                       R9 R8 K5 ["variant"]
       38 NEWCLOSURE                       R9 P0
       39 CAPTURE                          VAL R3
       40 SETTABLEKS                       R9 R8 K6 ["onActivated"]
       42 DUPTABLE                         R9 K17 [{["text"], ["variant"], ["onActivated"], ["testId"] = "scope-options-save-button"}]
       43 LOADK                            R12 K10 ["Scopes"]
       44 LOADK                            R13 K18 ["SaveOptions"]
       45 NAMECALL                         R10 R1 K12 ["getText"]
       47 CALL                             R10 3 1
       48 SETTABLEKS                       R10 R9 K4 ["text"]
       50 GETUPVAL                         R10 5
       51 GETTABLEKS                       R10 R10 K13 ["Enums"]
       53 GETTABLEKS                       R10 R10 K14 ["ButtonVariant"]
       55 GETTABLEKS                       R10 R10 K19 ["Emphasis"]
       57 SETTABLEKS                       R10 R9 K5 ["variant"]
       59 NEWCLOSURE                       R10 P1
       60 CAPTURE                          VAL R3
       61 SETTABLEKS                       R10 R9 K6 ["onActivated"]
       63 SETLIST                          R7 R8 2 [1]
       65 GETUPVAL                         R8 4
       66 GETTABLEKS                       R8 R8 K20 ["createElement"]
       68 GETUPVAL                         R9 5
       69 GETTABLEKS                       R9 R9 K21 ["View"]
       71 DUPTABLE                         R10 K25 [{["LayoutOrder"], ["tag"] = "col size-full"}]
       72 GETTABLEKS                       R11 R0 K22 ["LayoutOrder"]
       74 SETTABLEKS                       R11 R10 K22 ["LayoutOrder"]
       76 DUPTABLE                         R11 K28 [{"Contents", "Buttons"}]
       77 GETUPVAL                         R12 4
       78 GETTABLEKS                       R12 R12 K20 ["createElement"]
       80 GETUPVAL                         R13 5
       81 GETTABLEKS                       R13 R13 K21 ["View"]
       83 DUPTABLE                         R14 K31 [{["tag"] = "col align-x-left align-y-top fill size-full am-padding-top-sidebar-toggle gap-xsmall", ["LayoutOrder"] = 1}]
       84 DUPTABLE                         R15 K36 [{"Header", "Description", "SelectAllCheckbox", "ListContainer"}]
       85 GETUPVAL                         R16 4
       86 GETTABLEKS                       R16 R16 K20 ["createElement"]
       88 GETUPVAL                         R17 5
       89 GETTABLEKS                       R17 R17 K37 ["Text"]
       91 DUPTABLE                         R18 K39 [{["LayoutOrder"], ["Text"], ["tag"] = "size-full-0 auto-y padding-x-small padding-top-medium padding-top-xsmall text-title-large text-wrap text-align-x-left"}]
       92 NAMECALL                         R19 R2 K40 ["getNextOrder"]
       94 CALL                             R19 1 1
       95 SETTABLEKS                       R19 R18 K22 ["LayoutOrder"]
       97 LOADK                            R21 K10 ["Scopes"]
       98 LOADK                            R22 K41 ["Customize"]
       99 NAMECALL                         R19 R1 K12 ["getText"]
      101 CALL                             R19 3 1
      102 SETTABLEKS                       R19 R18 K37 ["Text"]
      104 CALL                             R16 2 1
      105 SETTABLEKS                       R16 R15 K32 ["Header"]
      107 GETUPVAL                         R16 4
      108 GETTABLEKS                       R16 R16 K20 ["createElement"]
      110 GETUPVAL                         R17 5
      111 GETTABLEKS                       R17 R17 K37 ["Text"]
      113 DUPTABLE                         R18 K43 [{["LayoutOrder"], ["Text"], ["tag"] = "size-full-0 auto-y padding-small padding-top-xsmall text-body-small text-wrap text-align-x-left"}]
      114 NAMECALL                         R19 R2 K40 ["getNextOrder"]
      116 CALL                             R19 1 1
      117 SETTABLEKS                       R19 R18 K22 ["LayoutOrder"]
      119 LOADK                            R21 K10 ["Scopes"]
      120 LOADK                            R22 K44 ["OptionsDescription"]
      121 NAMECALL                         R19 R1 K12 ["getText"]
      123 CALL                             R19 3 1
      124 SETTABLEKS                       R19 R18 K37 ["Text"]
      126 CALL                             R16 2 1
      127 SETTABLEKS                       R16 R15 K33 ["Description"]
      129 GETUPVAL                         R16 4
      130 GETTABLEKS                       R16 R16 K20 ["createElement"]
      132 GETUPVAL                         R17 6
      133 DUPTABLE                         R18 K47 [{"LayoutOrder", "Text", "Checked", "OnChecked"}]
      134 NAMECALL                         R19 R2 K40 ["getNextOrder"]
      136 CALL                             R19 1 1
      137 SETTABLEKS                       R19 R18 K22 ["LayoutOrder"]
      139 LOADK                            R21 K10 ["Scopes"]
      140 LOADK                            R22 K48 ["SelectAll"]
      141 NAMECALL                         R19 R1 K12 ["getText"]
      143 CALL                             R19 3 1
      144 SETTABLEKS                       R19 R18 K37 ["Text"]
      146 NAMECALL                         R19 R3 K49 ["hasAllOptionsChecked"]
      148 CALL                             R19 1 1
      149 SETTABLEKS                       R19 R18 K45 ["Checked"]
      151 NEWCLOSURE                       R19 P2
      152 CAPTURE                          VAL R3
      153 SETTABLEKS                       R19 R18 K46 ["OnChecked"]
      155 CALL                             R16 2 1
      156 SETTABLEKS                       R16 R15 K34 ["SelectAllCheckbox"]
      158 GETUPVAL                         R16 4
      159 GETTABLEKS                       R16 R16 K20 ["createElement"]
      161 GETUPVAL                         R17 5
      162 GETTABLEKS                       R17 R17 K21 ["View"]
      164 DUPTABLE                         R18 K51 [{["LayoutOrder"], ["tag"] = "col fill size-full padding-xsmall gap-small"}]
      165 NAMECALL                         R19 R2 K40 ["getNextOrder"]
      167 CALL                             R19 1 1
      168 SETTABLEKS                       R19 R18 K22 ["LayoutOrder"]
      170 DUPTABLE                         R19 K54 [{"TextFilterInput", "List"}]
      171 GETUPVAL                         R20 4
      172 GETTABLEKS                       R20 R20 K20 ["createElement"]
      174 GETUPVAL                         R21 5
      175 GETTABLEKS                       R21 R21 K55 ["SearchInput"]
      177 DUPTABLE                         R22 K61 [{["text"], ["placeholder"], ["onChanged"], ["width"], ["size"], ["shape"], ["LayoutOrder"] = 1}]
      178 SETTABLEKS                       R5 R22 K4 ["text"]
      180 LOADK                            R25 K62 ["SearchOptions"]
      181 LOADK                            R26 K63 ["FilterPlaceholder"]
      182 NAMECALL                         R23 R1 K12 ["getText"]
      184 CALL                             R23 3 1
      185 SETTABLEKS                       R23 R22 K56 ["placeholder"]
      187 NEWCLOSURE                       R23 P3
      188 CAPTURE                          VAL R6
      189 CAPTURE                          VAL R3
      190 SETTABLEKS                       R23 R22 K57 ["onChanged"]
      192 GETIMPORT                        R23 K65 [UDim.new]
      194 LOADN                            R24 1
      195 LOADN                            R25 0
      196 CALL                             R23 2 1
      197 SETTABLEKS                       R23 R22 K58 ["width"]
      199 GETUPVAL                         R23 5
      200 GETTABLEKS                       R23 R23 K13 ["Enums"]
      202 GETTABLEKS                       R23 R23 K66 ["InputSize"]
      204 GETTABLEKS                       R23 R23 K67 ["XSmall"]
      206 SETTABLEKS                       R23 R22 K59 ["size"]
      208 GETUPVAL                         R23 5
      209 GETTABLEKS                       R23 R23 K13 ["Enums"]
      211 GETTABLEKS                       R23 R23 K68 ["SearchInputShape"]
      213 GETTABLEKS                       R23 R23 K69 ["Pill"]
      215 SETTABLEKS                       R23 R22 K60 ["shape"]
      217 CALL                             R20 2 1
      218 SETTABLEKS                       R20 R19 K52 ["TextFilterInput"]
      220 GETUPVAL                         R20 4
      221 GETTABLEKS                       R20 R20 K20 ["createElement"]
      223 GETUPVAL                         R21 5
      224 GETTABLEKS                       R21 R21 K70 ["ScrollView"]
      226 DUPTABLE                         R22 K75 [{["tag"] = "fill size-full-0", ["layout"], ["scroll"], ["LayoutOrder"] = 2}]
      227 DUPTABLE                         R23 K77 [{"FillDirection"}]
      228 GETIMPORT                        R24 K80 [Enum.FillDirection.Vertical]
      230 SETTABLEKS                       R24 R23 K76 ["FillDirection"]
      232 SETTABLEKS                       R23 R22 K72 ["layout"]
      234 DUPTABLE                         R23 K84 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      235 GETIMPORT                        R24 K87 [Enum.AutomaticSize.Y]
      237 SETTABLEKS                       R24 R23 K81 ["AutomaticCanvasSize"]
      239 GETIMPORT                        R24 K89 [UDim2.new]
      241 CALL                             R24 0 1
      242 SETTABLEKS                       R24 R23 K82 ["CanvasSize"]
      244 GETIMPORT                        R24 K90 [Enum.ScrollingDirection.Y]
      246 SETTABLEKS                       R24 R23 K83 ["ScrollingDirection"]
      248 SETTABLEKS                       R23 R22 K73 ["scroll"]
      250 GETUPVAL                         R23 4
      251 GETTABLEKS                       R23 R23 K20 ["createElement"]
      253 GETUPVAL                         R24 5
      254 GETTABLEKS                       R24 R24 K21 ["View"]
      256 DUPTABLE                         R25 K92 [{["tag"] = "col gap-small size-full-0 auto-y"}]
      257 GETUPVAL                         R26 7
      258 GETTABLEKS                       R26 R26 K93 ["map"]
      260 MOVE                             R27 R4
      261 NEWCLOSURE                       R28 P4
      262 CAPTURE                          UPVAL U4
      263 CAPTURE                          UPVAL U6
      264 CAPTURE                          VAL R3
      265 CALL                             R26 2 -1
      266 CALL                             R23 -1 -1
      267 CALL                             R20 -1 1
      268 SETTABLEKS                       R20 R19 K53 ["List"]
      270 CALL                             R16 3 1
      271 SETTABLEKS                       R16 R15 K35 ["ListContainer"]
      273 CALL                             R12 3 1
      274 SETTABLEKS                       R12 R11 K26 ["Contents"]
      276 GETUPVAL                         R12 4
      277 GETTABLEKS                       R12 R12 K20 ["createElement"]
      279 GETUPVAL                         R13 5
      280 GETTABLEKS                       R13 R13 K21 ["View"]
      282 DUPTABLE                         R14 K95 [{["LayoutOrder"] = 2, ["tag"] = "align-x-center align-y-center size-full-0 auto-y padding-bottom-medium"}]
      283 GETUPVAL                         R15 4
      284 GETTABLEKS                       R15 R15 K20 ["createElement"]
      286 GETUPVAL                         R16 5
      287 GETTABLEKS                       R16 R16 K96 ["ButtonGroup"]
      289 DUPTABLE                         R17 K98 [{"size", "buttons"}]
      290 GETUPVAL                         R18 5
      291 GETTABLEKS                       R18 R18 K13 ["Enums"]
      293 GETTABLEKS                       R18 R18 K66 ["InputSize"]
      295 GETTABLEKS                       R18 R18 K99 ["Small"]
      297 SETTABLEKS                       R18 R17 K59 ["size"]
      299 SETTABLEKS                       R7 R17 K97 ["buttons"]
      301 CALL                             R15 2 -1
      302 CALL                             R12 -1 1
      303 SETTABLEKS                       R12 R11 K27 ["Buttons"]
      305 CALL                             R8 3 -1
      306 RETURN                           R8 -1

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
       25 GETTABLEKS                       R4 R4 K9 ["Dash"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["Localization"]
       39 GETTABLEKS                       R7 R4 K13 ["Util"]
       41 GETTABLEKS                       R7 R7 K14 ["LayoutOrderIterator"]
       43 GETIMPORT                        R8 K5 [require]
       45 GETTABLEKS                       R9 R0 K15 ["Src"]
       47 GETTABLEKS                       R9 R9 K16 ["Types"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K5 [require]
       52 GETIMPORT                        R10 K1 [script]
       54 GETTABLEKS                       R10 R10 K17 ["CheckboxRow"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K5 [require]
       59 GETTABLEKS                       R11 R0 K15 ["Src"]
       61 GETTABLEKS                       R11 R11 K18 ["Controllers"]
       63 GETTABLEKS                       R11 R11 K19 ["ExplorerController"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K5 [require]
       68 GETTABLEKS                       R12 R0 K15 ["Src"]
       70 GETTABLEKS                       R12 R12 K20 ["Hooks"]
       72 GETTABLEKS                       R12 R12 K21 ["useGroupOptions"]
       74 CALL                             R11 1 1
       75 DUPCLOSURE                       R12 K22 [PROTO_6]
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R10
       79 CAPTURE                          VAL R11
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R3
       84 RETURN                           R12 1
