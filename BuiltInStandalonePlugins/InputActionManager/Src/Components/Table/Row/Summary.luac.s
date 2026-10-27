PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+11]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R2 0
        4 GETIMPORT                        R3 K2 [TweenInfo.new]
        6 LOADN                            R4 1
        7 CALL                             R3 1 1
        8 DUPTABLE                         R4 K5 [{["BackgroundTransparency"] = 1}]
        9 NAMECALL                         R0 R0 K6 ["Create"]
       11 CALL                             R0 4 -1
       12 RETURN                           R0 -1
       13 LOADNIL                          R0
       14 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+26]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+24]
        4 GETUPVAL                         R0 0
        5 LOADK                            R1 K0 [0.5]
        6 SETTABLEKS                       R1 R0 K1 ["BackgroundTransparency"]
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K2 ["PlaybackState"]
       11 GETIMPORT                        R1 K5 [Enum.PlaybackState.Playing]
       13 JUMPIFNOTEQ                      R0 R1 ; [+5]
       15 GETUPVAL                         R0 1
       16 NAMECALL                         R0 R0 K6 ["Cancel"]
       18 CALL                             R0 1 0
       19 GETUPVAL                         R0 2
       20 GETTABLEKS                       R0 R0 K7 ["stateString"]
       22 JUMPIFEQKS                       R0 K8 ["true"] ; [+5]
       24 GETUPVAL                         R0 1
       25 NAMECALL                         R0 R0 K9 ["Play"]
       27 CALL                             R0 1 0
       28 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R0 4 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["createElement"]
        9 GETUPVAL                         R3 2
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K2 ["nodeProps"]
       13 CALL                             R2 2 1
       14 SETTABLEKS                       R2 R0 K3 ["Node"]
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K1 ["createElement"]
       19 GETUPVAL                         R3 4
       20 DUPTABLE                         R4 K8 [{["LayoutOrder"], ["orientation"], ["tag"] = "auto-y"}]
       21 MOVE                             R5 R1
       22 CALL                             R5 0 1
       23 SETTABLEKS                       R5 R4 K4 ["LayoutOrder"]
       25 GETUPVAL                         R5 5
       26 GETTABLEKS                       R5 R5 K9 ["Vertical"]
       28 SETTABLEKS                       R5 R4 K5 ["orientation"]
       30 CALL                             R2 2 1
       31 SETTABLEKS                       R2 R0 K10 ["Divider"]
       33 GETUPVAL                         R2 3
       34 GETTABLEKS                       R2 R2 K11 ["stateString"]
       36 JUMPIFNOT                        R2 ; [+72]
       37 GETUPVAL                         R2 1
       38 GETTABLEKS                       R2 R2 K1 ["createElement"]
       40 GETUPVAL                         R4 6
       41 JUMPIFEQKNIL                     R4 ; [+3]
       43 LOADK                            R3 K12 ["CanvasGroup"]
       44 JUMP                             ; [+1]
       45 LOADK                            R3 K13 ["Frame"]
       46 NEWTABLE                         R4 4 0
       48 GETUPVAL                         R6 6
       49 JUMPIFNOT                        R6 ; [+2]
       50 LOADK                            R5 K14 [0.5]
       51 JUMP                             ; [+1]
       52 LOADNIL                          R5
       53 SETTABLEKS                       R5 R4 K15 ["GroupTransparency"]
       55 MOVE                             R5 R1
       56 CALL                             R5 0 1
       57 SETTABLEKS                       R5 R4 K4 ["LayoutOrder"]
       59 GETUPVAL                         R5 7
       60 SETTABLEKS                       R5 R4 K16 ["ref"]
       62 GETUPVAL                         R5 1
       63 GETTABLEKS                       R5 R5 K17 ["Tag"]
       65 LOADK                            R6 K18 ["columns-input col align-y-center size-0-full"]
       66 SETTABLE                         R6 R4 R5
       67 DUPTABLE                         R5 K20 [{"Label", "Divider"}]
       68 GETUPVAL                         R6 1
       69 GETTABLEKS                       R6 R6 K1 ["createElement"]
       71 GETUPVAL                         R7 8
       72 DUPTABLE                         R8 K26 [{["LayoutOrder"], ["tag"] = "size-full-full auto-x padding-medium text-body-medium text-align-x-left", ["testId"] = "summary-State", ["Text"], ["TextTruncate"]}]
       73 MOVE                             R9 R1
       74 CALL                             R9 0 1
       75 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       77 GETUPVAL                         R9 3
       78 GETTABLEKS                       R9 R9 K11 ["stateString"]
       80 SETTABLEKS                       R9 R8 K24 ["Text"]
       82 GETIMPORT                        R9 K29 [Enum.TextTruncate.AtEnd]
       84 SETTABLEKS                       R9 R8 K25 ["TextTruncate"]
       86 CALL                             R6 2 1
       87 SETTABLEKS                       R6 R5 K19 ["Label"]
       89 GETUPVAL                         R6 1
       90 GETTABLEKS                       R6 R6 K1 ["createElement"]
       92 GETUPVAL                         R7 4
       93 DUPTABLE                         R8 K31 [{["LayoutOrder"], ["orientation"], ["tag"] = "auto-x"}]
       94 MOVE                             R9 R1
       95 CALL                             R9 0 1
       96 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       98 GETUPVAL                         R9 5
       99 GETTABLEKS                       R9 R9 K32 ["Horizontal"]
      101 SETTABLEKS                       R9 R8 K5 ["orientation"]
      103 CALL                             R6 2 1
      104 SETTABLEKS                       R6 R5 K10 ["Divider"]
      106 CALL                             R2 3 1
      107 SETTABLEKS                       R2 R0 K33 ["State"]
      109 GETUPVAL                         R2 9
      110 CALL                             R2 0 3
      111 FORGPREP                         R2
      112 GETUPVAL                         R8 10
      113 GETTABLEKS                       R8 R8 K34 ["schemas"]
      115 GETTABLE                         R7 R8 R6
      116 JUMPIFEQKB                       R7 FALSE ; [+184]
      118 GETUPVAL                         R7 3
      119 GETTABLEKS                       R7 R7 K35 ["previousBindings"]
      121 JUMPIFNOT                        R7 ; [+20]
      122 GETUPVAL                         R8 3
      123 GETTABLEKS                       R8 R8 K35 ["previousBindings"]
      125 GETTABLE                         R7 R8 R6
      126 JUMPIF                           R7 ; [+15]
      127 GETUPVAL                         R7 1
      128 GETTABLEKS                       R7 R7 K1 ["createElement"]
      130 GETUPVAL                         R8 11
      131 DUPTABLE                         R9 K37 [{"disabled", "LayoutOrder"}]
      132 GETUPVAL                         R10 6
      133 SETTABLEKS                       R10 R9 K36 ["disabled"]
      135 MOVE                             R10 R1
      136 CALL                             R10 0 1
      137 SETTABLEKS                       R10 R9 K4 ["LayoutOrder"]
      139 CALL                             R7 2 1
      140 SETTABLE                         R7 R0 R6
      141 JUMP                             ; [+159]
      142 NEWTABLE                         R7 0 0
      144 GETUPVAL                         R9 3
      145 GETTABLEKS                       R9 R9 K38 ["bindings"]
      147 GETTABLE                         R8 R9 R6
      148 JUMPIF                           R8 ; [+2]
      149 NEWTABLE                         R8 0 0
      151 MOVE                             R9 R8
      152 LOADNIL                          R10
      153 LOADNIL                          R11
      154 FORGPREP                         R9
      155 GETUPVAL                         R14 12
      156 MOVE                             R15 R13
      157 GETUPVAL                         R16 3
      158 GETTABLEKS                       R16 R16 K2 ["nodeProps"]
      160 GETTABLEKS                       R16 R16 K39 ["action"]
      162 GETTABLEKS                       R16 R16 K40 ["type"]
      164 CALL                             R14 2 1
      165 JUMPIFNOT                        R14 ; [+7]
      166 FASTCALL2                        TABLE_INSERT R7 R14 ; [+5]
      168 MOVE                             R16 R7
      169 MOVE                             R17 R14
      170 GETIMPORT                        R15 K43 [table.insert]
      172 CALL                             R15 2 0
      173 FORGLOOP                         R9 2 ; [-19]
      175 LENGTH                           R10 R7
      176 LOADN                            R11 0
      177 JUMPIFNOTLT                      R11 R10 ; [+7]
      179 GETIMPORT                        R9 K45 [table.concat]
      181 MOVE                             R10 R7
      182 LOADK                            R11 K46 [", "]
      183 CALL                             R9 2 1
      184 JUMP                             ; [+1]
      185 LOADK                            R9 K47 ["None"]
      186 GETUPVAL                         R10 1
      187 GETTABLEKS                       R10 R10 K1 ["createElement"]
      189 GETUPVAL                         R11 13
      190 DUPTABLE                         R12 K48 [{["GroupTransparency"], ["LayoutOrder"], ["tag"] = "columns-input col align-y-center size-0-full", ["testId"]}]
      191 GETUPVAL                         R14 6
      192 JUMPIFNOT                        R14 ; [+2]
      193 LOADK                            R13 K14 [0.5]
      194 JUMP                             ; [+1]
      195 LOADNIL                          R13
      196 SETTABLEKS                       R13 R12 K15 ["GroupTransparency"]
      198 MOVE                             R13 R1
      199 CALL                             R13 0 1
      200 SETTABLEKS                       R13 R12 K4 ["LayoutOrder"]
      202 LOADK                            R13 K49 ["summary-%*"]
      203 MOVE                             R15 R6
      204 NAMECALL                         R13 R13 K50 ["format"]
      206 CALL                             R13 2 1
      207 SETTABLEKS                       R13 R12 K22 ["testId"]
      209 DUPTABLE                         R13 K20 [{"Label", "Divider"}]
      210 GETUPVAL                         R15 14
      211 CALL                             R15 0 1
      212 JUMPIFNOT                        R15 ; [+51]
      213 LENGTH                           R15 R8
      214 JUMPIFNOTEQKN                    R15 K51 [1] ; [+49]
      216 GETTABLEN                        R15 R8 1
      217 GETTABLEKS                       R15 R15 K52 ["displayImage"]
      219 JUMPIFEQKS                       R15 K53 [""] ; [+44]
      221 GETUPVAL                         R14 1
      222 GETTABLEKS                       R14 R14 K1 ["createElement"]
      224 GETUPVAL                         R15 13
      225 DUPTABLE                         R16 K55 [{["tag"] = "row gap-small align-y-center size-full-full auto-x padding-medium"}]
      226 DUPTABLE                         R17 K57 [{"Icon", "Text"}]
      227 GETUPVAL                         R18 1
      228 GETTABLEKS                       R18 R18 K1 ["createElement"]
      230 GETUPVAL                         R19 15
      231 DUPTABLE                         R20 K59 [{"displayImage", "layoutOrder"}]
      232 GETTABLEN                        R21 R8 1
      233 GETTABLEKS                       R21 R21 K52 ["displayImage"]
      235 SETTABLEKS                       R21 R20 K52 ["displayImage"]
      237 MOVE                             R21 R1
      238 CALL                             R21 0 1
      239 SETTABLEKS                       R21 R20 K58 ["layoutOrder"]
      241 CALL                             R18 2 1
      242 SETTABLEKS                       R18 R17 K56 ["Icon"]
      244 GETUPVAL                         R18 1
      245 GETTABLEKS                       R18 R18 K1 ["createElement"]
      247 GETUPVAL                         R19 8
      248 DUPTABLE                         R20 K61 [{["LayoutOrder"], ["tag"] = "grow size-0-full auto-x text-body-medium text-align-x-left", ["Text"], ["TextTruncate"]}]
      249 MOVE                             R21 R1
      250 CALL                             R21 0 1
      251 SETTABLEKS                       R21 R20 K4 ["LayoutOrder"]
      253 SETTABLEKS                       R9 R20 K24 ["Text"]
      255 GETIMPORT                        R21 K29 [Enum.TextTruncate.AtEnd]
      257 SETTABLEKS                       R21 R20 K25 ["TextTruncate"]
      259 CALL                             R18 2 1
      260 SETTABLEKS                       R18 R17 K24 ["Text"]
      262 CALL                             R14 3 1
      263 JUMP                             ; [+16]
      264 GETUPVAL                         R14 1
      265 GETTABLEKS                       R14 R14 K1 ["createElement"]
      267 GETUPVAL                         R15 8
      268 DUPTABLE                         R16 K62 [{["LayoutOrder"], ["tag"] = "size-full-full auto-x padding-medium text-body-medium text-align-x-left", ["Text"], ["TextTruncate"]}]
      269 MOVE                             R17 R1
      270 CALL                             R17 0 1
      271 SETTABLEKS                       R17 R16 K4 ["LayoutOrder"]
      273 SETTABLEKS                       R9 R16 K24 ["Text"]
      275 GETIMPORT                        R17 K29 [Enum.TextTruncate.AtEnd]
      277 SETTABLEKS                       R17 R16 K25 ["TextTruncate"]
      279 CALL                             R14 2 1
      280 SETTABLEKS                       R14 R13 K19 ["Label"]
      282 GETUPVAL                         R14 1
      283 GETTABLEKS                       R14 R14 K1 ["createElement"]
      285 GETUPVAL                         R15 4
      286 DUPTABLE                         R16 K31 [{["LayoutOrder"], ["orientation"], ["tag"] = "auto-x"}]
      287 MOVE                             R17 R1
      288 CALL                             R17 0 1
      289 SETTABLEKS                       R17 R16 K4 ["LayoutOrder"]
      291 GETUPVAL                         R17 5
      292 GETTABLEKS                       R17 R17 K32 ["Horizontal"]
      294 SETTABLEKS                       R17 R16 K5 ["orientation"]
      296 CALL                             R14 2 1
      297 SETTABLEKS                       R14 R13 K10 ["Divider"]
      299 CALL                             R10 3 1
      300 SETTABLE                         R10 R0 R6
      301 FORGLOOP                         R2 2 ; [-190]
      303 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R2 R0 K2 ["nodeProps"]
        9 GETTABLEKS                       R2 R2 K3 ["disabled"]
       11 GETTABLEKS                       R5 R0 K2 ["nodeProps"]
       13 GETTABLEKS                       R5 R5 K4 ["action"]
       15 JUMPIFNOTEQKNIL                  R5 ; [+2]
       17 LOADB                            R4 0 +1
       18 LOADB                            R4 1
       19 FASTCALL2K                       ASSERT R4 K5 ; [+4]
       21 LOADK                            R5 K5 ["Action is required"]
       22 GETIMPORT                        R3 K7 [assert]
       24 CALL                             R3 2 0
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K8 ["useState"]
       28 LOADNIL                          R4
       29 CALL                             R3 1 2
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K9 ["useMemo"]
       33 NEWCLOSURE                       R6 P0
       34 CAPTURE                          VAL R3
       35 CAPTURE                          UPVAL U2
       36 NEWTABLE                         R7 0 1
       38 MOVE                             R8 R3
       39 SETLIST                          R7 R8 1 [1]
       41 CALL                             R5 2 1
       42 GETUPVAL                         R6 0
       43 GETTABLEKS                       R6 R6 K10 ["useEffect"]
       45 NEWCLOSURE                       R7 P1
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R0
       49 NEWTABLE                         R8 0 3
       51 GETTABLEKS                       R9 R0 K11 ["stateString"]
       53 MOVE                             R10 R3
       54 MOVE                             R11 R5
       55 SETLIST                          R8 R9 3 [1]
       57 CALL                             R6 2 0
       58 GETUPVAL                         R6 0
       59 GETTABLEKS                       R6 R6 K9 ["useMemo"]
       61 NEWCLOSURE                       R7 P2
       62 CAPTURE                          UPVAL U3
       63 CAPTURE                          UPVAL U0
       64 CAPTURE                          UPVAL U4
       65 CAPTURE                          VAL R0
       66 CAPTURE                          UPVAL U5
       67 CAPTURE                          UPVAL U6
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R4
       70 CAPTURE                          UPVAL U7
       71 CAPTURE                          UPVAL U8
       72 CAPTURE                          VAL R1
       73 CAPTURE                          UPVAL U9
       74 CAPTURE                          UPVAL U10
       75 CAPTURE                          UPVAL U11
       76 CAPTURE                          UPVAL U12
       77 CAPTURE                          UPVAL U13
       78 NEWTABLE                         R8 0 6
       80 GETTABLEKS                       R9 R0 K12 ["bindings"]
       82 GETTABLEKS                       R10 R0 K2 ["nodeProps"]
       84 GETTABLEKS                       R10 R10 K4 ["action"]
       86 MOVE                             R11 R2
       87 GETTABLEKS                       R12 R0 K2 ["nodeProps"]
       89 GETTABLEKS                       R12 R12 K13 ["expanded"]
       91 GETTABLEKS                       R13 R0 K11 ["stateString"]
       93 GETTABLEKS                       R14 R1 K14 ["schemas"]
       95 SETLIST                          R8 R9 6 [1]
       97 CALL                             R6 2 1
       98 GETUPVAL                         R7 0
       99 GETTABLEKS                       R7 R7 K15 ["createElement"]
      101 GETUPVAL                         R8 11
      102 DUPTABLE                         R9 K19 [{["tag"] = "tree-row row align-y-center auto-x", ["LayoutOrder"]}]
      103 GETTABLEKS                       R10 R0 K18 ["LayoutOrder"]
      105 SETTABLEKS                       R10 R9 K18 ["LayoutOrder"]
      107 MOVE                             R10 R6
      108 CALL                             R7 3 -1
      109 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TweenService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["InputActionManager"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["ReactUtils"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K10 ["Packages"]
       31 GETTABLEKS                       R5 R5 K13 ["Foundation"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R4 K14 ["Divider"]
       36 GETTABLEKS                       R6 R4 K15 ["Enums"]
       38 GETTABLEKS                       R6 R6 K16 ["Orientation"]
       40 GETTABLEKS                       R7 R4 K17 ["Text"]
       42 GETTABLEKS                       R8 R4 K18 ["View"]
       44 GETIMPORT                        R9 K9 [require]
       46 GETTABLEKS                       R10 R1 K19 ["Src"]
       48 GETTABLEKS                       R10 R10 K20 ["Components"]
       50 GETTABLEKS                       R10 R10 K21 ["Tree"]
       52 GETTABLEKS                       R10 R10 K22 ["Node"]
       54 CALL                             R9 1 1
       55 GETIMPORT                        R10 K9 [require]
       57 GETTABLEKS                       R11 R1 K19 ["Src"]
       59 GETTABLEKS                       R11 R11 K20 ["Components"]
       61 GETTABLEKS                       R11 R11 K23 ["Table"]
       63 GETTABLEKS                       R11 R11 K24 ["EmptyCell"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K9 [require]
       68 GETTABLEKS                       R12 R1 K19 ["Src"]
       70 GETTABLEKS                       R12 R12 K20 ["Components"]
       72 GETTABLEKS                       R12 R12 K23 ["Table"]
       74 GETTABLEKS                       R12 R12 K25 ["Cell"]
       76 GETTABLEKS                       R12 R12 K26 ["CellIcon"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K9 [require]
       81 GETTABLEKS                       R13 R1 K19 ["Src"]
       83 GETTABLEKS                       R13 R13 K27 ["Types"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K9 [require]
       88 GETTABLEKS                       R14 R1 K19 ["Src"]
       90 GETTABLEKS                       R14 R14 K28 ["Contexts"]
       92 GETTABLEKS                       R14 R14 K29 ["FilterConfiguration"]
       94 CALL                             R13 1 1
       95 GETIMPORT                        R14 K9 [require]
       97 GETTABLEKS                       R15 R1 K19 ["Src"]
       99 GETTABLEKS                       R15 R15 K30 ["Util"]
      101 GETTABLEKS                       R15 R15 K31 ["Binding"]
      103 GETTABLEKS                       R15 R15 K32 ["getStringForBinding"]
      105 CALL                             R14 1 1
      106 GETIMPORT                        R15 K9 [require]
      108 GETTABLEKS                       R16 R1 K19 ["Src"]
      110 GETTABLEKS                       R16 R16 K30 ["Util"]
      112 GETTABLEKS                       R16 R16 K33 ["getSchemas"]
      114 CALL                             R15 1 1
      115 GETTABLEKS                       R16 R1 K19 ["Src"]
      117 GETTABLEKS                       R16 R16 K34 ["Flags"]
      119 GETIMPORT                        R17 K9 [require]
      121 GETTABLEKS                       R18 R16 K35 ["getFFlagIAMUseDisplayImageName"]
      123 CALL                             R17 1 1
      124 DUPCLOSURE                       R18 K36 [PROTO_3]
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R13
      127 CAPTURE                          VAL R0
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R5
      131 CAPTURE                          VAL R6
      132 CAPTURE                          VAL R7
      133 CAPTURE                          VAL R15
      134 CAPTURE                          VAL R10
      135 CAPTURE                          VAL R14
      136 CAPTURE                          VAL R8
      137 CAPTURE                          VAL R17
      138 CAPTURE                          VAL R11
      139 RETURN                           R18 1
