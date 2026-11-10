PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["items"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 MOVE                             R3 R1
        8 LOADB                            R4 0
        9 CALL                             R2 2 1
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K2 ["useMemo"]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          VAL R0
       16 NEWTABLE                         R5 0 1
       18 GETTABLEKS                       R6 R0 K3 ["items"]
       20 SETLIST                          R5 R6 1 [1]
       22 CALL                             R3 2 1
       23 NEWTABLE                         R4 0 0
       25 LOADB                            R5 0
       26 MOVE                             R6 R3
       27 LOADNIL                          R7
       28 LOADNIL                          R8
       29 FORGPREP                         R6
       30 LOADB                            R11 0
       31 GETTABLEKS                       R12 R10 K3 ["items"]
       33 LOADNIL                          R13
       34 LOADNIL                          R14
       35 FORGPREP                         R12
       36 GETTABLEKS                       R17 R16 K4 ["icon"]
       38 JUMPIFEQKNIL                     R17 ; [+2]
       40 LOADB                            R11 1
       41 GETTABLEKS                       R17 R16 K5 ["isChecked"]
       43 JUMPIFEQKNIL                     R17 ; [+2]
       45 LOADB                            R5 1
       46 FORGLOOP                         R12 2 ; [-11]
       48 SETTABLE                         R11 R4 R9
       49 FORGLOOP                         R6 2 ; [-20]
       51 NEWTABLE                         R6 0 0
       53 MOVE                             R7 R3
       54 LOADNIL                          R8
       55 LOADNIL                          R9
       56 FORGPREP                         R7
       57 LOADN                            R12 1
       58 JUMPIFNOTLT                      R12 R10 ; [+50]
       60 LOADK                            R12 K6 ["Divider-%*"]
       61 MOVE                             R14 R10
       62 NAMECALL                         R12 R12 K7 ["format"]
       64 CALL                             R12 2 1
       65 GETUPVAL                         R13 2
       66 GETTABLEKS                       R13 R13 K8 ["createElement"]
       68 GETUPVAL                         R14 0
       69 GETTABLEKS                       R14 R14 K9 ["View"]
       71 DUPTABLE                         R15 K16 [{["LayoutOrder"], ["Size"], ["tag"] = "row flex-x-fill", ["testId"] = "--asset-management-searchable-menu-divider"}]
       72 MULK                             R17 R10 K18 [2]
       73 SUBK                             R16 R17 K17 [1]
       74 SETTABLEKS                       R16 R15 K10 ["LayoutOrder"]
       76 GETIMPORT                        R16 K21 [UDim2.new]
       78 LOADN                            R17 1
       79 LOADN                            R18 0
       80 LOADN                            R19 0
       81 GETTABLEKS                       R20 R1 K22 ["Stroke"]
       83 GETTABLEKS                       R20 R20 K23 ["Standard"]
       85 CALL                             R16 4 1
       86 SETTABLEKS                       R16 R15 K11 ["Size"]
       88 DUPTABLE                         R16 K24 [{"Stroke"}]
       89 GETUPVAL                         R17 2
       90 GETTABLEKS                       R17 R17 K8 ["createElement"]
       92 GETUPVAL                         R18 0
       93 GETTABLEKS                       R18 R18 K9 ["View"]
       95 DUPTABLE                         R19 K27 [{["tag"] = "grow size-0-full", ["backgroundStyle"]}]
       96 GETTABLEKS                       R20 R1 K28 ["Color"]
       98 GETTABLEKS                       R20 R20 K22 ["Stroke"]
      100 GETTABLEKS                       R20 R20 K29 ["Default"]
      102 SETTABLEKS                       R20 R19 K26 ["backgroundStyle"]
      104 CALL                             R17 2 1
      105 SETTABLEKS                       R17 R16 K22 ["Stroke"]
      107 CALL                             R13 3 1
      108 SETTABLE                         R13 R6 R12
      109 NEWTABLE                         R12 0 0
      111 GETTABLEKS                       R13 R11 K3 ["items"]
      113 LOADNIL                          R14
      114 LOADNIL                          R15
      115 FORGPREP                         R13
      116 MOVE                             R19 R12
      117 GETUPVAL                         R20 2
      118 GETTABLEKS                       R20 R20 K8 ["createElement"]
      120 GETUPVAL                         R21 4
      121 DUPTABLE                         R22 K35 [{"key", "item", "depth", "menuHasIcon", "menuHasCheckableItems", "LayoutOrder"}]
      122 GETTABLEKS                       R23 R17 K36 ["id"]
      124 SETTABLEKS                       R23 R22 K30 ["key"]
      126 SETTABLEKS                       R17 R22 K31 ["item"]
      128 GETTABLEKS                       R23 R0 K32 ["depth"]
      130 SETTABLEKS                       R23 R22 K32 ["depth"]
      132 GETTABLE                         R23 R4 R10
      133 SETTABLEKS                       R23 R22 K33 ["menuHasIcon"]
      135 SETTABLEKS                       R5 R22 K34 ["menuHasCheckableItems"]
      137 SETTABLEKS                       R16 R22 K10 ["LayoutOrder"]
      139 GETTABLEKS                       R24 R17 K3 ["items"]
      141 JUMPIFEQKNIL                     R24 ; [+17]
      143 GETUPVAL                         R23 2
      144 GETTABLEKS                       R23 R23 K8 ["createElement"]
      146 GETUPVAL                         R24 5
      147 DUPTABLE                         R25 K37 [{"items", "depth"}]
      148 GETTABLEKS                       R26 R17 K3 ["items"]
      150 SETTABLEKS                       R26 R25 K3 ["items"]
      152 GETTABLEKS                       R27 R0 K32 ["depth"]
      154 ADDK                             R26 R27 K17 [1]
      155 SETTABLEKS                       R26 R25 K32 ["depth"]
      157 CALL                             R23 2 1
      158 JUMP                             ; [+1]
      159 LOADNIL                          R23
      160 CALL                             R20 3 -1
      161 FASTCALL                         TABLE_INSERT ; [+2]
      162 GETIMPORT                        R18 K40 [table.insert]
      164 CALL                             R18 -1 0
      165 FORGLOOP                         R13 2 ; [-50]
      167 GETTABLEKS                       R14 R11 K41 ["title"]
      169 JUMPIFEQKNIL                     R14 ; [+75]
      171 GETUPVAL                         R13 2
      172 GETTABLEKS                       R13 R13 K8 ["createElement"]
      174 GETUPVAL                         R14 0
      175 GETTABLEKS                       R14 R14 K9 ["View"]
      177 DUPTABLE                         R15 K45 [{["LayoutOrder"] = 0, ["tag"], ["padding"], ["testId"] = "--asset-management-searchable-menu-group-title"}]
      178 LOADK                            R16 K46 ["row align-y-center %*"]
      179 GETTABLEKS                       R18 R2 K47 ["container"]
      181 GETTABLEKS                       R18 R18 K12 ["tag"]
      183 NAMECALL                         R16 R16 K7 ["format"]
      185 CALL                             R16 2 1
      186 SETTABLEKS                       R16 R15 K12 ["tag"]
      188 DUPTABLE                         R16 K50 [{"left", "right"}]
      189 GETIMPORT                        R17 K52 [UDim.new]
      191 LOADN                            R18 0
      192 JUMPIFNOT                        R5 ; [+10]
      193 GETTABLEKS                       R20 R2 K47 ["container"]
      195 GETTABLEKS                       R20 R20 K53 ["paddingLeftWithCheck"]
      197 GETTABLEKS                       R21 R2 K41 ["title"]
      199 GETTABLEKS                       R21 R21 K54 ["checkColumnWidth"]
      201 ADD                              R19 R20 R21
      202 JUMP                             ; [+4]
      203 GETTABLEKS                       R19 R2 K47 ["container"]
      205 GETTABLEKS                       R19 R19 K55 ["paddingLeftWithoutCheck"]
      207 CALL                             R17 2 1
      208 SETTABLEKS                       R17 R16 K48 ["left"]
      210 GETIMPORT                        R17 K52 [UDim.new]
      212 LOADN                            R18 0
      213 GETTABLEKS                       R19 R2 K47 ["container"]
      215 GETTABLEKS                       R19 R19 K56 ["paddingRight"]
      217 CALL                             R17 2 1
      218 SETTABLEKS                       R17 R16 K49 ["right"]
      220 SETTABLEKS                       R16 R15 K43 ["padding"]
      222 DUPTABLE                         R16 K58 [{"Text"}]
      223 GETUPVAL                         R17 2
      224 GETTABLEKS                       R17 R17 K8 ["createElement"]
      226 GETUPVAL                         R18 0
      227 GETTABLEKS                       R18 R18 K57 ["Text"]
      229 DUPTABLE                         R19 K59 [{"Text", "tag"}]
      230 GETTABLEKS                       R20 R11 K41 ["title"]
      232 SETTABLEKS                       R20 R19 K57 ["Text"]
      234 GETTABLEKS                       R20 R2 K41 ["title"]
      236 GETTABLEKS                       R20 R20 K12 ["tag"]
      238 SETTABLEKS                       R20 R19 K12 ["tag"]
      240 CALL                             R17 2 1
      241 SETTABLEKS                       R17 R16 K57 ["Text"]
      243 CALL                             R13 3 1
      244 JUMP                             ; [+1]
      245 LOADNIL                          R13
      246 LOADK                            R14 K60 ["Group-%*"]
      247 MOVE                             R16 R10
      248 NAMECALL                         R14 R14 K7 ["format"]
      250 CALL                             R14 2 1
      251 GETUPVAL                         R15 2
      252 GETTABLEKS                       R15 R15 K8 ["createElement"]
      254 GETUPVAL                         R16 0
      255 GETTABLEKS                       R16 R16 K9 ["View"]
      257 DUPTABLE                         R17 K62 [{["LayoutOrder"], ["tag"] = "col gap-xxsmall size-full-0 auto-y padding-xsmall"}]
      258 MULK                             R18 R10 K18 [2]
      259 SETTABLEKS                       R18 R17 K10 ["LayoutOrder"]
      261 DUPTABLE                         R18 K65 [{"Title", "Items"}]
      262 SETTABLEKS                       R13 R18 K63 ["Title"]
      264 GETUPVAL                         R19 2
      265 GETTABLEKS                       R19 R19 K8 ["createElement"]
      267 GETUPVAL                         R20 2
      268 GETTABLEKS                       R20 R20 K66 ["Fragment"]
      270 LOADNIL                          R21
      271 MOVE                             R22 R12
      272 CALL                             R19 3 1
      273 SETTABLEKS                       R19 R18 K64 ["Items"]
      275 CALL                             R15 3 1
      276 SETTABLE                         R15 R6 R14
      277 FORGLOOP                         R7 2 ; [-221]
      279 GETUPVAL                         R7 2
      280 GETTABLEKS                       R7 R7 K8 ["createElement"]
      282 GETUPVAL                         R8 2
      283 GETTABLEKS                       R8 R8 K66 ["Fragment"]
      285 LOADNIL                          R9
      286 MOVE                             R10 R6
      287 CALL                             R7 3 -1
      288 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManagement"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 LOADK                            R3 K4 ["Packages"]
        8 NAMECALL                         R1 R0 K3 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K6 [require]
       13 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K8 ["React"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Types"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETIMPORT                        R6 K1 [script]
       30 GETTABLEKS                       R6 R6 K10 ["Parent"]
       32 GETTABLEKS                       R6 R6 K11 ["MenuItem"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETIMPORT                        R7 K1 [script]
       39 GETTABLEKS                       R7 R7 K10 ["Parent"]
       41 GETTABLEKS                       R7 R7 K12 ["getMenuGroups"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETIMPORT                        R8 K1 [script]
       48 GETTABLEKS                       R8 R8 K10 ["Parent"]
       50 GETTABLEKS                       R8 R8 K13 ["getMenuItemStyle"]
       52 CALL                             R7 1 1
       53 DUPCLOSURE                       R8 K14 [PROTO_1]
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R8
       60 GETTABLEKS                       R9 R3 K15 ["memo"]
       62 MOVE                             R10 R8
       63 CALL                             R9 1 -1
       64 RETURN                           R9 -1
