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
       28 DUPTABLE                         R13 K7 [{"title", "side", "align"}]
       29 LOADK                            R16 K3 ["Tooltip"]
       30 LOADK                            R17 K8 ["CompactOptions"]
       31 NAMECALL                         R14 R2 K9 ["getText"]
       33 CALL                             R14 3 1
       34 SETTABLEKS                       R14 R13 K4 ["title"]
       36 GETUPVAL                         R14 7
       37 GETTABLEKS                       R14 R14 K10 ["Enums"]
       39 GETTABLEKS                       R14 R14 K11 ["PopoverSide"]
       41 GETTABLEKS                       R14 R14 K12 ["Bottom"]
       43 SETTABLEKS                       R14 R13 K5 ["side"]
       45 GETUPVAL                         R14 7
       46 GETTABLEKS                       R14 R14 K10 ["Enums"]
       48 GETTABLEKS                       R14 R14 K13 ["PopoverAlign"]
       50 GETTABLEKS                       R14 R14 K14 ["Start"]
       52 SETTABLEKS                       R14 R13 K6 ["align"]
       54 GETUPVAL                         R14 6
       55 GETTABLEKS                       R14 R14 K2 ["createElement"]
       57 GETUPVAL                         R15 7
       58 GETTABLEKS                       R15 R15 K15 ["IconButton"]
       60 DUPTABLE                         R16 K20 [{"icon", "variant", "size", "onActivated"}]
       61 GETUPVAL                         R17 7
       62 GETTABLEKS                       R17 R17 K10 ["Enums"]
       64 GETTABLEKS                       R17 R17 K21 ["IconName"]
       66 GETTABLEKS                       R17 R17 K22 ["ThreeDotsHorizontal"]
       68 SETTABLEKS                       R17 R16 K16 ["icon"]
       70 JUMPIFNOT                        R6 ; [+8]
       71 GETUPVAL                         R17 7
       72 GETTABLEKS                       R17 R17 K10 ["Enums"]
       74 GETTABLEKS                       R17 R17 K23 ["ButtonVariant"]
       76 GETTABLEKS                       R17 R17 K24 ["Emphasis"]
       78 JUMP                             ; [+7]
       79 GETUPVAL                         R17 7
       80 GETTABLEKS                       R17 R17 K10 ["Enums"]
       82 GETTABLEKS                       R17 R17 K23 ["ButtonVariant"]
       84 GETTABLEKS                       R17 R17 K25 ["Utility"]
       86 SETTABLEKS                       R17 R16 K17 ["variant"]
       88 GETUPVAL                         R17 7
       89 GETTABLEKS                       R17 R17 K10 ["Enums"]
       91 GETTABLEKS                       R17 R17 K26 ["InputSize"]
       93 GETTABLEKS                       R17 R17 K27 ["XSmall"]
       95 SETTABLEKS                       R17 R16 K18 ["size"]
       97 NEWCLOSURE                       R17 P0
       98 CAPTURE                          VAL R10
       99 CAPTURE                          VAL R9
      100 SETTABLEKS                       R17 R16 K19 ["onActivated"]
      102 CALL                             R14 2 -1
      103 CALL                             R11 -1 1
      104 GETUPVAL                         R12 6
      105 GETTABLEKS                       R12 R12 K2 ["createElement"]
      107 GETUPVAL                         R13 7
      108 GETTABLEKS                       R13 R13 K28 ["View"]
      110 DUPTABLE                         R14 K32 [{["LayoutOrder"], ["tag"] = "auto-xy"}]
      111 GETTABLEKS                       R15 R0 K29 ["LayoutOrder"]
      113 SETTABLEKS                       R15 R14 K29 ["LayoutOrder"]
      115 GETUPVAL                         R15 6
      116 GETTABLEKS                       R15 R15 K2 ["createElement"]
      118 GETUPVAL                         R16 8
      119 GETTABLEKS                       R16 R16 K33 ["Components"]
      121 GETTABLEKS                       R16 R16 K34 ["SearchableMenu"]
      123 DUPTABLE                         R17 K43 [{"isOpen", "items", "searchPlaceholder", "emptySearchResultsText", "footer", "width", "height", "side", "align", "onPressedOutside"}]
      124 SETTABLEKS                       R9 R17 K35 ["isOpen"]
      126 SETTABLEKS                       R3 R17 K36 ["items"]
      128 LOADK                            R20 K44 ["Filters"]
      129 LOADK                            R21 K45 ["SearchAllPlaceholder"]
      130 NAMECALL                         R18 R2 K9 ["getText"]
      132 CALL                             R18 3 1
      133 SETTABLEKS                       R18 R17 K37 ["searchPlaceholder"]
      135 LOADK                            R20 K44 ["Filters"]
      136 LOADK                            R21 K46 ["NoResults"]
      137 NAMECALL                         R18 R2 K9 ["getText"]
      139 CALL                             R18 3 1
      140 SETTABLEKS                       R18 R17 K38 ["emptySearchResultsText"]
      142 GETUPVAL                         R18 6
      143 GETTABLEKS                       R18 R18 K2 ["createElement"]
      145 GETUPVAL                         R19 7
      146 GETTABLEKS                       R19 R19 K47 ["Button"]
      148 DUPTABLE                         R20 K49 [{"text", "onActivated", "variant", "width", "size"}]
      149 LOADK                            R23 K44 ["Filters"]
      150 LOADK                            R24 K50 ["ResetFilters"]
      151 NAMECALL                         R21 R2 K9 ["getText"]
      153 CALL                             R21 3 1
      154 SETTABLEKS                       R21 R20 K48 ["text"]
      156 NEWCLOSURE                       R21 P1
      157 CAPTURE                          VAL R1
      158 SETTABLEKS                       R21 R20 K19 ["onActivated"]
      160 GETUPVAL                         R21 7
      161 GETTABLEKS                       R21 R21 K10 ["Enums"]
      163 GETTABLEKS                       R21 R21 K23 ["ButtonVariant"]
      165 GETTABLEKS                       R21 R21 K25 ["Utility"]
      167 SETTABLEKS                       R21 R20 K17 ["variant"]
      169 GETIMPORT                        R21 K53 [UDim.new]
      171 LOADN                            R22 1
      172 LOADN                            R23 0
      173 CALL                             R21 2 1
      174 SETTABLEKS                       R21 R20 K40 ["width"]
      176 GETUPVAL                         R21 7
      177 GETTABLEKS                       R21 R21 K10 ["Enums"]
      179 GETTABLEKS                       R21 R21 K26 ["InputSize"]
      181 GETTABLEKS                       R21 R21 K27 ["XSmall"]
      183 SETTABLEKS                       R21 R20 K18 ["size"]
      185 CALL                             R18 2 1
      186 SETTABLEKS                       R18 R17 K39 ["footer"]
      188 GETIMPORT                        R18 K53 [UDim.new]
      190 LOADN                            R19 0
      191 GETUPVAL                         R20 9
      192 GETTABLEKS                       R20 R20 K54 ["CompactOptionsMenuWidth"]
      194 CALL                             R18 2 1
      195 SETTABLEKS                       R18 R17 K40 ["width"]
      197 GETUPVAL                         R19 10
      198 CALL                             R19 0 1
      199 JUMPIFNOT                        R19 ; [+4]
      200 GETUPVAL                         R18 9
      201 GETTABLEKS                       R18 R18 K55 ["CompactOptionsMenuHeight"]
      203 JUMP                             ; [+15]
      204 GETUPVAL                         R19 9
      205 GETTABLEKS                       R19 R19 K55 ["CompactOptionsMenuHeight"]
      207 LOADN                            R21 0
      208 FASTCALL2                        MATH_MAX R21 R8 ; [+4]
      210 MOVE                             R22 R8
      211 GETIMPORT                        R20 K58 [math.max]
      213 CALL                             R20 2 1
      214 FASTCALL2                        MATH_MIN R19 R20 ; [+3]
      216 GETIMPORT                        R18 K60 [math.min]
      218 CALL                             R18 2 1
      219 SETTABLEKS                       R18 R17 K41 ["height"]
      221 GETUPVAL                         R18 7
      222 GETTABLEKS                       R18 R18 K10 ["Enums"]
      224 GETTABLEKS                       R18 R18 K11 ["PopoverSide"]
      226 GETTABLEKS                       R18 R18 K12 ["Bottom"]
      228 SETTABLEKS                       R18 R17 K5 ["side"]
      230 GETUPVAL                         R18 7
      231 GETTABLEKS                       R18 R18 K10 ["Enums"]
      233 GETTABLEKS                       R18 R18 K13 ["PopoverAlign"]
      235 GETTABLEKS                       R18 R18 K14 ["Start"]
      237 SETTABLEKS                       R18 R17 K6 ["align"]
      239 NEWCLOSURE                       R18 P2
      240 CAPTURE                          VAL R10
      241 SETTABLEKS                       R18 R17 K42 ["onPressedOutside"]
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
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
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
      109 CAPTURE                          VAL R2
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R9
      114 RETURN                           R14 1
