PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["onActivated"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["Hooks"]
        8 GETTABLEKS                       R3 R3 K2 ["useTokens"]
       10 CALL                             R3 0 1
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R2
       13 CAPTURE                          VAL R1
       14 LOADNIL                          R5
       15 GETTABLEKS                       R6 R0 K3 ["text"]
       17 JUMPIFNOT                        R6 ; [+139]
       18 GETTABLEKS                       R6 R0 K4 ["badge"]
       20 JUMPIFNOT                        R6 ; [+136]
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R6 R6 K5 ["createElement"]
       24 GETUPVAL                         R7 1
       25 GETTABLEKS                       R7 R7 K6 ["View"]
       27 DUPTABLE                         R8 K13 [{["tag"] = "row align-y-center auto-x size-0-600 radius-circle clip gap-xsmall padding-left-small padding-right-xsmall", ["backgroundStyle"], ["onActivated"], ["isDisabled"], ["testId"]}]
       28 GETTABLEKS                       R9 R3 K14 ["Color"]
       30 GETTABLEKS                       R9 R9 K15 ["ActionStandard"]
       32 GETTABLEKS                       R9 R9 K16 ["Background"]
       34 SETTABLEKS                       R9 R8 K9 ["backgroundStyle"]
       36 SETTABLEKS                       R4 R8 K10 ["onActivated"]
       38 GETTABLEKS                       R9 R0 K17 ["disabled"]
       40 SETTABLEKS                       R9 R8 K11 ["isDisabled"]
       42 GETTABLEKS                       R9 R0 K12 ["testId"]
       44 SETTABLEKS                       R9 R8 K12 ["testId"]
       46 DUPTABLE                         R9 K21 [{"Text", "Badge", "Chevron"}]
       47 GETUPVAL                         R10 0
       48 GETTABLEKS                       R10 R10 K5 ["createElement"]
       50 GETUPVAL                         R11 1
       51 GETTABLEKS                       R11 R11 K18 ["Text"]
       53 DUPTABLE                         R12 K26 [{["LayoutOrder"] = 1, ["Text"], ["textStyle"], ["tag"] = "auto-xy text-label-small"}]
       54 GETTABLEKS                       R13 R0 K3 ["text"]
       56 SETTABLEKS                       R13 R12 K18 ["Text"]
       58 GETTABLEKS                       R13 R3 K14 ["Color"]
       60 GETTABLEKS                       R13 R13 K15 ["ActionStandard"]
       62 GETTABLEKS                       R13 R13 K27 ["Foreground"]
       64 SETTABLEKS                       R13 R12 K24 ["textStyle"]
       66 CALL                             R10 2 1
       67 SETTABLEKS                       R10 R9 K18 ["Text"]
       69 GETUPVAL                         R10 0
       70 GETTABLEKS                       R10 R10 K5 ["createElement"]
       72 GETUPVAL                         R11 1
       73 GETTABLEKS                       R11 R11 K6 ["View"]
       75 DUPTABLE                         R12 K30 [{["LayoutOrder"] = 2, ["tag"] = "auto-xy padding-x-xsmall radius-small", ["backgroundStyle"], ["testId"]}]
       76 GETTABLEKS                       R13 R3 K14 ["Color"]
       78 GETTABLEKS                       R13 R13 K31 ["System"]
       80 GETTABLEKS                       R13 R13 K32 ["Warning"]
       82 SETTABLEKS                       R13 R12 K9 ["backgroundStyle"]
       84 LOADK                            R13 K33 ["%*--badge"]
       85 GETTABLEKS                       R15 R0 K12 ["testId"]
       87 NAMECALL                         R13 R13 K34 ["format"]
       89 CALL                             R13 2 1
       90 SETTABLEKS                       R13 R12 K12 ["testId"]
       92 DUPTABLE                         R13 K35 [{"Text"}]
       93 GETUPVAL                         R14 0
       94 GETTABLEKS                       R14 R14 K5 ["createElement"]
       96 GETUPVAL                         R15 1
       97 GETTABLEKS                       R15 R15 K18 ["Text"]
       99 DUPTABLE                         R16 K37 [{["Text"], ["textStyle"], ["tag"] = "auto-xy text-caption-small"}]
      100 GETTABLEKS                       R17 R0 K4 ["badge"]
      102 SETTABLEKS                       R17 R16 K18 ["Text"]
      104 GETTABLEKS                       R17 R3 K38 ["LightMode"]
      106 GETTABLEKS                       R17 R17 K39 ["Content"]
      108 GETTABLEKS                       R17 R17 K40 ["Emphasis"]
      110 SETTABLEKS                       R17 R16 K24 ["textStyle"]
      112 CALL                             R14 2 1
      113 SETTABLEKS                       R14 R13 K18 ["Text"]
      115 CALL                             R10 3 1
      116 SETTABLEKS                       R10 R9 K19 ["Badge"]
      118 GETUPVAL                         R10 0
      119 GETTABLEKS                       R10 R10 K5 ["createElement"]
      121 GETUPVAL                         R11 1
      122 GETTABLEKS                       R11 R11 K41 ["Icon"]
      124 DUPTABLE                         R12 K46 [{["LayoutOrder"] = 3, ["name"], ["size"], ["style"]}]
      125 GETUPVAL                         R13 1
      126 GETTABLEKS                       R13 R13 K47 ["Enums"]
      128 GETTABLEKS                       R13 R13 K48 ["IconName"]
      130 GETTABLEKS                       R13 R13 K49 ["ChevronSmallDown"]
      132 SETTABLEKS                       R13 R12 K43 ["name"]
      134 GETUPVAL                         R13 1
      135 GETTABLEKS                       R13 R13 K47 ["Enums"]
      137 GETTABLEKS                       R13 R13 K50 ["IconSize"]
      139 GETTABLEKS                       R13 R13 K51 ["XSmall"]
      141 SETTABLEKS                       R13 R12 K44 ["size"]
      143 GETTABLEKS                       R13 R3 K14 ["Color"]
      145 GETTABLEKS                       R13 R13 K15 ["ActionStandard"]
      147 GETTABLEKS                       R13 R13 K27 ["Foreground"]
      149 SETTABLEKS                       R13 R12 K45 ["style"]
      151 CALL                             R10 2 1
      152 SETTABLEKS                       R10 R9 K20 ["Chevron"]
      154 CALL                             R6 3 1
      155 MOVE                             R5 R6
      156 JUMP                             ; [+94]
      157 GETTABLEKS                       R6 R0 K3 ["text"]
      159 JUMPIFNOT                        R6 ; [+42]
      160 GETUPVAL                         R6 0
      161 GETTABLEKS                       R6 R6 K5 ["createElement"]
      163 GETUPVAL                         R7 1
      164 GETTABLEKS                       R7 R7 K52 ["Chip"]
      166 DUPTABLE                         R8 K54 [{"text", "trailing", "size", "isDisabled", "onActivated", "testId"}]
      167 GETTABLEKS                       R9 R0 K3 ["text"]
      169 SETTABLEKS                       R9 R8 K3 ["text"]
      171 GETUPVAL                         R9 1
      172 GETTABLEKS                       R9 R9 K47 ["Enums"]
      174 GETTABLEKS                       R9 R9 K48 ["IconName"]
      176 GETTABLEKS                       R9 R9 K49 ["ChevronSmallDown"]
      178 SETTABLEKS                       R9 R8 K53 ["trailing"]
      180 GETUPVAL                         R9 1
      181 GETTABLEKS                       R9 R9 K47 ["Enums"]
      183 GETTABLEKS                       R9 R9 K55 ["ChipSize"]
      185 GETTABLEKS                       R9 R9 K56 ["Small"]
      187 SETTABLEKS                       R9 R8 K44 ["size"]
      189 GETTABLEKS                       R9 R0 K17 ["disabled"]
      191 SETTABLEKS                       R9 R8 K11 ["isDisabled"]
      193 SETTABLEKS                       R4 R8 K10 ["onActivated"]
      195 GETTABLEKS                       R9 R0 K12 ["testId"]
      197 SETTABLEKS                       R9 R8 K12 ["testId"]
      199 CALL                             R6 2 1
      200 MOVE                             R5 R6
      201 JUMP                             ; [+49]
      202 GETUPVAL                         R6 0
      203 GETTABLEKS                       R6 R6 K5 ["createElement"]
      205 GETUPVAL                         R7 1
      206 GETTABLEKS                       R7 R7 K57 ["IconButton"]
      208 DUPTABLE                         R8 K60 [{"icon", "size", "variant", "isDisabled", "onActivated", "testId"}]
      209 GETTABLEKS                       R9 R0 K58 ["icon"]
      211 JUMPIF                           R9 ; [+7]
      212 GETUPVAL                         R9 1
      213 GETTABLEKS                       R9 R9 K47 ["Enums"]
      215 GETTABLEKS                       R9 R9 K48 ["IconName"]
      217 GETTABLEKS                       R9 R9 K61 ["ThreeDotsHorizontal"]
      219 SETTABLEKS                       R9 R8 K58 ["icon"]
      221 GETUPVAL                         R9 1
      222 GETTABLEKS                       R9 R9 K47 ["Enums"]
      224 GETTABLEKS                       R9 R9 K62 ["InputSize"]
      226 GETTABLEKS                       R9 R9 K51 ["XSmall"]
      228 SETTABLEKS                       R9 R8 K44 ["size"]
      230 GETUPVAL                         R9 1
      231 GETTABLEKS                       R9 R9 K47 ["Enums"]
      233 GETTABLEKS                       R9 R9 K63 ["ButtonVariant"]
      235 GETTABLEKS                       R9 R9 K64 ["Utility"]
      237 SETTABLEKS                       R9 R8 K59 ["variant"]
      239 GETTABLEKS                       R9 R0 K17 ["disabled"]
      241 SETTABLEKS                       R9 R8 K11 ["isDisabled"]
      243 SETTABLEKS                       R4 R8 K10 ["onActivated"]
      245 GETTABLEKS                       R9 R0 K12 ["testId"]
      247 SETTABLEKS                       R9 R8 K12 ["testId"]
      249 CALL                             R6 2 1
      250 MOVE                             R5 R6
      251 GETUPVAL                         R6 0
      252 GETTABLEKS                       R6 R6 K5 ["createElement"]
      254 GETUPVAL                         R7 1
      255 GETTABLEKS                       R7 R7 K65 ["Menu"]
      257 DUPTABLE                         R8 K71 [{"isOpen", "items", "side", "size", "width", "LayoutOrder", "onPressedOutside", "onActivated"}]
      258 SETTABLEKS                       R1 R8 K66 ["isOpen"]
      260 GETTABLEKS                       R9 R0 K67 ["items"]
      262 SETTABLEKS                       R9 R8 K67 ["items"]
      264 GETUPVAL                         R9 1
      265 GETTABLEKS                       R9 R9 K47 ["Enums"]
      267 GETTABLEKS                       R9 R9 K72 ["PopoverSide"]
      269 GETTABLEKS                       R9 R9 K73 ["Top"]
      271 SETTABLEKS                       R9 R8 K68 ["side"]
      273 GETUPVAL                         R9 1
      274 GETTABLEKS                       R9 R9 K47 ["Enums"]
      276 GETTABLEKS                       R9 R9 K62 ["InputSize"]
      278 GETTABLEKS                       R9 R9 K56 ["Small"]
      280 SETTABLEKS                       R9 R8 K44 ["size"]
      282 GETTABLEKS                       R9 R0 K69 ["width"]
      284 SETTABLEKS                       R9 R8 K69 ["width"]
      286 GETTABLEKS                       R9 R0 K22 ["LayoutOrder"]
      288 SETTABLEKS                       R9 R8 K22 ["LayoutOrder"]
      290 NEWCLOSURE                       R9 P1
      291 CAPTURE                          VAL R2
      292 SETTABLEKS                       R9 R8 K70 ["onPressedOutside"]
      294 NEWCLOSURE                       R9 P2
      295 CAPTURE                          VAL R2
      296 CAPTURE                          VAL R0
      297 SETTABLEKS                       R9 R8 K10 ["onActivated"]
      299 DUPTABLE                         R9 K75 [{"Anchor"}]
      300 SETTABLEKS                       R5 R9 K74 ["Anchor"]
      302 CALL                             R6 3 -1
      303 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3d"]
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
       21 DUPCLOSURE                       R3 K9 [PROTO_3]
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 RETURN                           R3 1
