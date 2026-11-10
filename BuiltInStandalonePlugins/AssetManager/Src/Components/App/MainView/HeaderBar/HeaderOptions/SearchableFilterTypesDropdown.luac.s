PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["clearFilters"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 GETUPVAL                         R4 3
       11 CALL                             R4 0 2
       12 GETUPVAL                         R6 4
       13 MOVE                             R7 R5
       14 CALL                             R6 1 1
       15 GETUPVAL                         R7 5
       16 CALL                             R7 0 2
       17 GETUPVAL                         R9 6
       18 GETTABLEKS                       R9 R9 K1 ["useState"]
       20 LOADB                            R10 0
       21 CALL                             R9 1 2
       22 GETUPVAL                         R11 6
       23 GETTABLEKS                       R11 R11 K2 ["createElement"]
       25 GETUPVAL                         R12 7
       26 GETTABLEKS                       R12 R12 K3 ["Tooltip"]
       28 DUPTABLE                         R13 K6 [{"title", "side"}]
       29 LOADK                            R16 K7 ["SearchBar"]
       30 LOADK                            R17 K8 ["PlaceholderText"]
       31 NAMECALL                         R14 R2 K9 ["getText"]
       33 CALL                             R14 3 1
       34 SETTABLEKS                       R14 R13 K4 ["title"]
       36 GETUPVAL                         R14 7
       37 GETTABLEKS                       R14 R14 K10 ["Enums"]
       39 GETTABLEKS                       R14 R14 K11 ["PopoverSide"]
       41 GETTABLEKS                       R14 R14 K12 ["Bottom"]
       43 SETTABLEKS                       R14 R13 K5 ["side"]
       45 GETUPVAL                         R14 6
       46 GETTABLEKS                       R14 R14 K2 ["createElement"]
       48 GETUPVAL                         R15 7
       49 GETTABLEKS                       R15 R15 K13 ["IconButton"]
       51 DUPTABLE                         R16 K18 [{"onActivated", "variant", "size", "icon"}]
       52 NEWCLOSURE                       R17 P0
       53 CAPTURE                          VAL R10
       54 CAPTURE                          VAL R9
       55 SETTABLEKS                       R17 R16 K14 ["onActivated"]
       57 JUMPIFNOT                        R6 ; [+8]
       58 GETUPVAL                         R17 7
       59 GETTABLEKS                       R17 R17 K10 ["Enums"]
       61 GETTABLEKS                       R17 R17 K19 ["ButtonVariant"]
       63 GETTABLEKS                       R17 R17 K20 ["Emphasis"]
       65 JUMP                             ; [+7]
       66 GETUPVAL                         R17 7
       67 GETTABLEKS                       R17 R17 K10 ["Enums"]
       69 GETTABLEKS                       R17 R17 K19 ["ButtonVariant"]
       71 GETTABLEKS                       R17 R17 K21 ["Utility"]
       73 SETTABLEKS                       R17 R16 K15 ["variant"]
       75 GETUPVAL                         R17 7
       76 GETTABLEKS                       R17 R17 K10 ["Enums"]
       78 GETTABLEKS                       R17 R17 K22 ["InputSize"]
       80 GETTABLEKS                       R17 R17 K23 ["XSmall"]
       82 SETTABLEKS                       R17 R16 K16 ["size"]
       84 GETUPVAL                         R17 7
       85 GETTABLEKS                       R17 R17 K10 ["Enums"]
       87 GETTABLEKS                       R17 R17 K24 ["IconName"]
       89 GETTABLEKS                       R17 R17 K25 ["ThreeBarsHorizontalNarrowing"]
       91 SETTABLEKS                       R17 R16 K17 ["icon"]
       93 CALL                             R14 2 -1
       94 CALL                             R11 -1 1
       95 GETUPVAL                         R12 6
       96 GETTABLEKS                       R12 R12 K2 ["createElement"]
       98 GETUPVAL                         R13 7
       99 GETTABLEKS                       R13 R13 K26 ["View"]
      101 DUPTABLE                         R14 K30 [{["LayoutOrder"], ["tag"] = "auto-xy"}]
      102 GETTABLEKS                       R15 R0 K27 ["LayoutOrder"]
      104 SETTABLEKS                       R15 R14 K27 ["LayoutOrder"]
      106 GETUPVAL                         R15 6
      107 GETTABLEKS                       R15 R15 K2 ["createElement"]
      109 GETUPVAL                         R16 8
      110 GETTABLEKS                       R16 R16 K31 ["Components"]
      112 GETTABLEKS                       R16 R16 K32 ["SearchableMenu"]
      114 DUPTABLE                         R17 K42 [{"isOpen", "items", "searchPlaceholder", "emptySearchResultsText", "footer", "width", "height", "side", "align", "onPressedOutside"}]
      115 SETTABLEKS                       R9 R17 K33 ["isOpen"]
      117 SETTABLEKS                       R3 R17 K34 ["items"]
      119 LOADK                            R20 K43 ["FiltersByType"]
      120 LOADK                            R21 K44 ["SearchAllPlaceholder"]
      121 NAMECALL                         R18 R2 K9 ["getText"]
      123 CALL                             R18 3 1
      124 SETTABLEKS                       R18 R17 K35 ["searchPlaceholder"]
      126 LOADK                            R20 K45 ["Filters"]
      127 LOADK                            R21 K46 ["NoResults"]
      128 NAMECALL                         R18 R2 K9 ["getText"]
      130 CALL                             R18 3 1
      131 SETTABLEKS                       R18 R17 K36 ["emptySearchResultsText"]
      133 GETUPVAL                         R18 6
      134 GETTABLEKS                       R18 R18 K2 ["createElement"]
      136 GETUPVAL                         R19 7
      137 GETTABLEKS                       R19 R19 K47 ["Button"]
      139 DUPTABLE                         R20 K49 [{"text", "onActivated", "variant", "width", "size"}]
      140 LOADK                            R23 K45 ["Filters"]
      141 LOADK                            R24 K50 ["ResetFilters"]
      142 NAMECALL                         R21 R2 K9 ["getText"]
      144 CALL                             R21 3 1
      145 SETTABLEKS                       R21 R20 K48 ["text"]
      147 NEWCLOSURE                       R21 P1
      148 CAPTURE                          VAL R1
      149 SETTABLEKS                       R21 R20 K14 ["onActivated"]
      151 GETUPVAL                         R21 7
      152 GETTABLEKS                       R21 R21 K10 ["Enums"]
      154 GETTABLEKS                       R21 R21 K19 ["ButtonVariant"]
      156 GETTABLEKS                       R21 R21 K21 ["Utility"]
      158 SETTABLEKS                       R21 R20 K15 ["variant"]
      160 GETIMPORT                        R21 K53 [UDim.new]
      162 LOADN                            R22 1
      163 LOADN                            R23 0
      164 CALL                             R21 2 1
      165 SETTABLEKS                       R21 R20 K38 ["width"]
      167 GETUPVAL                         R21 7
      168 GETTABLEKS                       R21 R21 K10 ["Enums"]
      170 GETTABLEKS                       R21 R21 K22 ["InputSize"]
      172 GETTABLEKS                       R21 R21 K23 ["XSmall"]
      174 SETTABLEKS                       R21 R20 K16 ["size"]
      176 CALL                             R18 2 1
      177 SETTABLEKS                       R18 R17 K37 ["footer"]
      179 GETIMPORT                        R18 K53 [UDim.new]
      181 LOADN                            R19 0
      182 GETUPVAL                         R21 9
      183 GETTABLEKS                       R21 R21 K54 ["FilterTypesWidth"]
      185 FASTCALL2                        MATH_MIN R21 R7 ; [+4]
      187 MOVE                             R22 R7
      188 GETIMPORT                        R20 K57 [math.min]
      190 CALL                             R20 2 1
      191 CALL                             R18 2 1
      192 SETTABLEKS                       R18 R17 K38 ["width"]
      194 GETUPVAL                         R19 10
      195 CALL                             R19 0 1
      196 JUMPIFNOT                        R19 ; [+4]
      197 GETUPVAL                         R18 9
      198 GETTABLEKS                       R18 R18 K58 ["FilterTypesHeight"]
      200 JUMP                             ; [+18]
      201 GETUPVAL                         R19 9
      202 GETTABLEKS                       R19 R19 K58 ["FilterTypesHeight"]
      204 LOADN                            R21 0
      205 GETUPVAL                         R23 9
      206 GETTABLEKS                       R23 R23 K59 ["HeaderRowHeight"]
      208 SUB                              R22 R8 R23
      209 FASTCALL2                        MATH_MAX R21 R22 ; [+3]
      211 GETIMPORT                        R20 K61 [math.max]
      213 CALL                             R20 2 1
      214 FASTCALL2                        MATH_MIN R19 R20 ; [+3]
      216 GETIMPORT                        R18 K57 [math.min]
      218 CALL                             R18 2 1
      219 SETTABLEKS                       R18 R17 K39 ["height"]
      221 GETUPVAL                         R18 7
      222 GETTABLEKS                       R18 R18 K10 ["Enums"]
      224 GETTABLEKS                       R18 R18 K11 ["PopoverSide"]
      226 GETTABLEKS                       R18 R18 K12 ["Bottom"]
      228 SETTABLEKS                       R18 R17 K5 ["side"]
      230 GETUPVAL                         R18 7
      231 GETTABLEKS                       R18 R18 K10 ["Enums"]
      233 GETTABLEKS                       R18 R18 K62 ["PopoverAlign"]
      235 GETTABLEKS                       R18 R18 K63 ["Center"]
      237 SETTABLEKS                       R18 R17 K40 ["align"]
      239 NEWCLOSURE                       R18 P2
      240 CAPTURE                          VAL R10
      241 SETTABLEKS                       R18 R17 K41 ["onPressedOutside"]
      243 MOVE                             R18 R11
      244 CALL                             R15 3 -1
      245 CALL                             R12 -1 -1
      246 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssetManagement"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["Localization"]
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R8 R0 K13 ["Src"]
       43 GETTABLEKS                       R8 R8 K14 ["Controllers"]
       45 GETTABLEKS                       R8 R8 K15 ["ItemsController"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K5 [require]
       50 GETTABLEKS                       R9 R0 K13 ["Src"]
       52 GETTABLEKS                       R9 R9 K16 ["Resources"]
       54 GETTABLEKS                       R9 R9 K17 ["StyleConstants"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K5 [require]
       59 GETTABLEKS                       R10 R0 K13 ["Src"]
       61 GETTABLEKS                       R10 R10 K18 ["Flags"]
       63 GETTABLEKS                       R10 R10 K19 ["getFFlagAmrUseQWidgetPopovers"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R0 K13 ["Src"]
       70 GETTABLEKS                       R11 R11 K20 ["Hooks"]
       72 GETTABLEKS                       R11 R11 K21 ["useHeaderMenuOptions"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K13 ["Src"]
       79 GETTABLEKS                       R12 R12 K20 ["Hooks"]
       81 GETTABLEKS                       R12 R12 K22 ["usePluginSize"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K13 ["Src"]
       88 GETTABLEKS                       R13 R13 K20 ["Hooks"]
       90 GETTABLEKS                       R13 R13 K23 ["useSortFilter"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R14 R0 K13 ["Src"]
       97 GETTABLEKS                       R14 R14 K24 ["Util"]
       99 GETTABLEKS                       R14 R14 K25 ["hasActiveFilters"]
      101 CALL                             R13 1 1
      102 DUPCLOSURE                       R14 K26 [PROTO_3]
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R12
      107 CAPTURE                          VAL R13
      108 CAPTURE                          VAL R11
      109 CAPTURE                          VAL R3
      110 CAPTURE                          VAL R2
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R9
      114 RETURN                           R14 1
