PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["robuxPackage"]
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K5 [{"tag", "onActivated", "LayoutOrder", "testId"}]
        5 NEWTABLE                         R5 4 0
        7 LOADB                            R6 1
        8 SETTABLEKS                       R6 R5 K6 ["row align-y-center gap-medium size-full-0 auto-y padding-medium stroke-standard radius-medium"]
       10 GETTABLEKS                       R7 R0 K7 ["isSelected"]
       12 NOT                              R6 R7
       13 SETTABLEKS                       R6 R5 K8 ["stroke-default"]
       15 GETTABLEKS                       R6 R0 K7 ["isSelected"]
       17 SETTABLEKS                       R6 R5 K9 ["stroke-system-contrast"]
       19 SETTABLEKS                       R5 R4 K1 ["tag"]
       21 GETTABLEKS                       R5 R0 K2 ["onActivated"]
       23 SETTABLEKS                       R5 R4 K2 ["onActivated"]
       25 GETTABLEKS                       R5 R0 K3 ["LayoutOrder"]
       27 SETTABLEKS                       R5 R4 K3 ["LayoutOrder"]
       29 GETUPVAL                         R5 2
       30 GETTABLEKS                       R5 R5 K10 ["RobuxPackageModal"]
       32 GETTABLEKS                       R5 R5 K11 ["PackageOption"]
       34 GETTABLEKS                       R6 R1 K12 ["productId"]
       36 CALL                             R5 1 1
       37 SETTABLEKS                       R5 R4 K4 ["testId"]
       39 DUPTABLE                         R5 K16 [{"Amount", "Spacer", "Price"}]
       40 GETUPVAL                         R6 0
       41 GETUPVAL                         R7 1
       42 DUPTABLE                         R8 K19 [{["tag"] = "row align-y-center gap-xxsmall auto-xy", ["LayoutOrder"] = 1}]
       43 DUPTABLE                         R9 K22 [{"RobuxIcon", "AmountText"}]
       44 GETUPVAL                         R10 0
       45 GETUPVAL                         R11 3
       46 DUPTABLE                         R12 K25 [{["name"], ["size"], ["LayoutOrder"] = 1}]
       47 GETUPVAL                         R13 4
       48 GETTABLEKS                       R13 R13 K26 ["Robux"]
       50 SETTABLEKS                       R13 R12 K23 ["name"]
       52 GETUPVAL                         R13 5
       53 GETTABLEKS                       R13 R13 K27 ["Small"]
       55 SETTABLEKS                       R13 R12 K24 ["size"]
       57 CALL                             R10 2 1
       58 SETTABLEKS                       R10 R9 K20 ["RobuxIcon"]
       60 GETUPVAL                         R10 0
       61 GETUPVAL                         R11 6
       62 DUPTABLE                         R12 K31 [{["Text"], ["tag"] = "auto-xy text-title-small text-align-x-left content-emphasis", ["LayoutOrder"] = 2}]
       63 GETUPVAL                         R13 7
       64 GETTABLEKS                       R13 R13 K32 ["formatAmount"]
       66 GETTABLEKS                       R14 R1 K33 ["robuxAmount"]
       68 CALL                             R13 1 1
       69 SETTABLEKS                       R13 R12 K28 ["Text"]
       71 CALL                             R10 2 1
       72 SETTABLEKS                       R10 R9 K21 ["AmountText"]
       74 CALL                             R6 3 1
       75 SETTABLEKS                       R6 R5 K13 ["Amount"]
       77 GETUPVAL                         R6 0
       78 GETUPVAL                         R7 1
       79 DUPTABLE                         R8 K35 [{["tag"] = "grow", ["LayoutOrder"] = 2}]
       80 CALL                             R6 2 1
       81 SETTABLEKS                       R6 R5 K14 ["Spacer"]
       83 GETUPVAL                         R6 0
       84 GETUPVAL                         R7 6
       85 DUPTABLE                         R8 K38 [{["Text"], ["tag"] = "auto-xy text-body-small text-align-x-right content-muted", ["LayoutOrder"] = 3}]
       86 GETTABLEKS                       R9 R1 K39 ["currencyAmountStr"]
       88 SETTABLEKS                       R9 R8 K28 ["Text"]
       90 CALL                             R6 2 1
       91 SETTABLEKS                       R6 R5 K15 ["Price"]
       93 CALL                             R2 3 -1
       94 RETURN                           R2 -1

PROTO_1:
        0 DUPTABLE                         R0 K3 [{"Title", "Buy", "LoadError"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K4 ["CreditMetering"]
        3 LOADK                            R4 K5 ["BuyRobux"]
        4 NAMECALL                         R1 R1 K6 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Title"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K4 ["CreditMetering"]
       11 LOADK                            R4 K7 ["BuyFor"]
       12 NAMECALL                         R1 R1 K6 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Buy"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K4 ["CreditMetering"]
       19 LOADK                            R4 K8 ["RobuxPackageModalLoadError"]
       20 NAMECALL                         R1 R1 K6 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["LoadError"]
       25 RETURN                           R0 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["robuxAmount"]
        2 GETTABLEKS                       R4 R1 K0 ["robuxAmount"]
        4 JUMPIFLT                         R4 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_3:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K3 ["packages"]
        5 JUMPIF                           R1 ; [+2]
        6 NEWTABLE                         R1 0 0
        8 CALL                             R0 1 1
        9 GETIMPORT                        R1 K5 [table.sort]
       11 MOVE                             R2 R0
       12 DUPCLOSURE                       R3 K6 [PROTO_2]
       13 CALL                             R1 2 0
       14 RETURN                           R0 1

PROTO_4:
        0 LOADB                            R0 0
        1 GETUPVAL                         R1 0
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 GETTABLEKS                       R6 R5 K0 ["productId"]
        7 GETUPVAL                         R7 1
        8 JUMPIFNOTEQ                      R6 R7 ; [+3]
       10 LOADB                            R0 1
       11 JUMP                             ; [+2]
       12 FORGLOOP                         R1 2 ; [-8]
       14 JUMPIF                           R0 ; [+11]
       15 GETUPVAL                         R1 2
       16 GETUPVAL                         R4 0
       17 GETTABLEN                        R3 R4 1
       18 JUMPIFNOT                        R3 ; [+5]
       19 GETUPVAL                         R3 0
       20 GETTABLEN                        R2 R3 1
       21 GETTABLEKS                       R2 R2 K0 ["productId"]
       23 JUMP                             ; [+1]
       24 LOADNIL                          R2
       25 CALL                             R1 1 0
       26 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["onBuyPackage"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["productId"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["productId"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantCreditMeteringAdditionalUsage"]
        6 JUMPIF                           R1 ; [+2]
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K1 ["useMemo"]
       12 DUPCLOSURE                       R2 K2 [PROTO_1]
       13 CAPTURE                          UPVAL U3
       14 NEWTABLE                         R3 0 1
       16 GETUPVAL                         R4 3
       17 GETTABLEKS                       R4 R4 K3 ["locale"]
       19 SETLIST                          R3 R4 1 [1]
       21 CALL                             R1 2 1
       22 GETUPVAL                         R2 4
       23 CALL                             R2 0 1
       24 GETTABLEKS                       R4 R0 K4 ["hasError"]
       26 JUMPIFNOT                        R4 ; [+3]
       27 GETTABLEKS                       R3 R1 K5 ["LoadError"]
       29 JUMP                             ; [+1]
       30 LOADNIL                          R3
       31 LOADB                            R4 0
       32 GETTABLEKS                       R5 R0 K6 ["isLoading"]
       34 JUMPIFNOTEQKB                    R5 TRUE ; [+4]
       36 GETTABLEKS                       R5 R0 K4 ["hasError"]
       38 NOT                              R4 R5
       39 GETTABLEKS                       R6 R0 K4 ["hasError"]
       41 NOT                              R5 R6
       42 JUMPIFNOT                        R5 ; [+1]
       43 NOT                              R5 R4
       44 GETUPVAL                         R6 2
       45 GETTABLEKS                       R6 R6 K1 ["useMemo"]
       47 NEWCLOSURE                       R7 P1
       48 CAPTURE                          VAL R0
       49 NEWTABLE                         R8 0 1
       51 GETTABLEKS                       R9 R0 K7 ["packages"]
       53 SETLIST                          R8 R9 1 [1]
       55 CALL                             R6 2 1
       56 GETUPVAL                         R7 2
       57 GETTABLEKS                       R7 R7 K8 ["useState"]
       59 LOADNIL                          R8
       60 CALL                             R7 1 2
       61 GETUPVAL                         R9 2
       62 GETTABLEKS                       R9 R9 K9 ["useEffect"]
       64 NEWCLOSURE                       R10 P2
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R8
       68 NEWTABLE                         R11 0 2
       70 MOVE                             R12 R6
       71 MOVE                             R13 R7
       72 SETLIST                          R11 R12 2 [1]
       74 CALL                             R9 2 0
       75 LOADNIL                          R9
       76 MOVE                             R10 R6
       77 LOADNIL                          R11
       78 LOADNIL                          R12
       79 FORGPREP                         R10
       80 GETTABLEKS                       R15 R14 K10 ["productId"]
       82 JUMPIFNOTEQ                      R15 R7 ; [+3]
       84 MOVE                             R9 R14
       85 JUMP                             ; [+2]
       86 FORGLOOP                         R10 2 ; [-7]
       88 NEWCLOSURE                       R10 P3
       89 CAPTURE                          REF R9
       90 CAPTURE                          VAL R0
       91 JUMPIFNOT                        R9 ; [+10]
       92 LOADK                            R12 K11 ["%* %*"]
       93 GETTABLEKS                       R14 R1 K12 ["Buy"]
       95 GETTABLEKS                       R15 R9 K13 ["currencyAmountStr"]
       97 NAMECALL                         R12 R12 K14 ["format"]
       99 CALL                             R12 3 1
      100 MOVE                             R11 R12
      101 JUMP                             ; [+2]
      102 GETTABLEKS                       R11 R1 K12 ["Buy"]
      104 NEWTABLE                         R12 0 0
      106 MOVE                             R13 R6
      107 LOADNIL                          R14
      108 LOADNIL                          R15
      109 FORGPREP                         R13
      110 NEWCLOSURE                       R18 P4
      111 CAPTURE                          VAL R8
      112 CAPTURE                          VAL R17
      113 GETTABLEKS                       R20 R17 K10 ["productId"]
      115 FASTCALL1                        TOSTRING R20 ; [+2]
      116 GETIMPORT                        R19 K16 [tostring]
      118 CALL                             R19 1 1
      119 GETUPVAL                         R20 5
      120 GETUPVAL                         R21 6
      121 DUPTABLE                         R22 K21 [{"robuxPackage", "isSelected", "onActivated", "LayoutOrder"}]
      122 SETTABLEKS                       R17 R22 K17 ["robuxPackage"]
      124 GETTABLEKS                       R24 R17 K10 ["productId"]
      126 JUMPIFEQ                         R24 R7 ; [+2]
      128 LOADB                            R23 0 +1
      129 LOADB                            R23 1
      130 SETTABLEKS                       R23 R22 K18 ["isSelected"]
      132 SETTABLEKS                       R18 R22 K19 ["onActivated"]
      134 SETTABLEKS                       R16 R22 K20 ["LayoutOrder"]
      136 CALL                             R20 2 1
      137 SETTABLE                         R20 R12 R19
      138 FORGLOOP                         R13 2 ; [-29]
      140 GETUPVAL                         R13 5
      141 GETUPVAL                         R14 7
      142 GETTABLEKS                       R14 R14 K22 ["Root"]
      144 DUPTABLE                         R15 K29 [{["testId"], ["isOpen"] = True, ["size"], ["preferCenterSheet"] = True, ["onClose"]}]
      145 GETUPVAL                         R16 8
      146 GETTABLEKS                       R16 R16 K30 ["RobuxPackageModal"]
      148 GETTABLEKS                       R16 R16 K31 ["Container"]
      150 SETTABLEKS                       R16 R15 K23 ["testId"]
      152 GETUPVAL                         R16 9
      153 GETTABLEKS                       R16 R16 K32 ["Small"]
      155 SETTABLEKS                       R16 R15 K26 ["size"]
      157 GETTABLEKS                       R16 R0 K28 ["onClose"]
      159 SETTABLEKS                       R16 R15 K28 ["onClose"]
      161 DUPTABLE                         R16 K36 [{"Header", "Content", "Actions"}]
      162 GETUPVAL                         R17 5
      163 GETUPVAL                         R18 7
      164 GETTABLEKS                       R18 R18 K33 ["Header"]
      166 DUPTABLE                         R19 K38 [{["hasCloseAffordance"] = True}]
      167 DUPTABLE                         R20 K42 [{"Title", "Spacer", "Balance"}]
      168 GETUPVAL                         R21 5
      169 GETUPVAL                         R22 10
      170 DUPTABLE                         R23 K47 [{["tag"] = "auto-xy text-title-medium", ["Text"], ["LayoutOrder"] = 1}]
      171 GETTABLEKS                       R24 R1 K39 ["Title"]
      173 SETTABLEKS                       R24 R23 K45 ["Text"]
      175 CALL                             R21 2 1
      176 SETTABLEKS                       R21 R20 K39 ["Title"]
      178 GETUPVAL                         R21 5
      179 GETUPVAL                         R22 11
      180 DUPTABLE                         R23 K50 [{["tag"] = "grow", ["LayoutOrder"] = 2}]
      181 CALL                             R21 2 1
      182 SETTABLEKS                       R21 R20 K40 ["Spacer"]
      184 GETUPVAL                         R21 5
      185 GETUPVAL                         R22 12
      186 DUPTABLE                         R23 K53 [{["robuxBalance"], ["LayoutOrder"] = 3}]
      187 GETTABLEKS                       R25 R0 K51 ["robuxBalance"]
      189 ORK                              R24 R25 K54 [0]
      190 SETTABLEKS                       R24 R23 K51 ["robuxBalance"]
      192 CALL                             R21 2 1
      193 SETTABLEKS                       R21 R20 K41 ["Balance"]
      195 CALL                             R17 3 1
      196 SETTABLEKS                       R17 R16 K33 ["Header"]
      198 GETUPVAL                         R17 5
      199 GETUPVAL                         R18 7
      200 GETTABLEKS                       R18 R18 K34 ["Content"]
      202 DUPTABLE                         R19 K55 [{"LayoutOrder"}]
      203 MOVE                             R20 R2
      204 CALL                             R20 0 1
      205 SETTABLEKS                       R20 R19 K20 ["LayoutOrder"]
      207 DUPTABLE                         R20 K56 [{"Container"}]
      208 GETUPVAL                         R21 5
      209 GETUPVAL                         R22 11
      210 DUPTABLE                         R23 K58 [{["tag"] = "col gap-small size-full-0 auto-y padding-y-xsmall"}]
      211 DUPTABLE                         R24 K62 [{"Error", "Loading", "Packages"}]
      212 MOVE                             R25 R3
      213 JUMPIFNOT                        R25 ; [+6]
      214 GETUPVAL                         R25 5
      215 GETUPVAL                         R26 10
      216 DUPTABLE                         R27 K64 [{["Text"], ["tag"] = "size-full-0 auto-y padding-y-large text-body-small text-align-x-center content-muted", ["LayoutOrder"] = 1}]
      217 SETTABLEKS                       R3 R27 K45 ["Text"]
      219 CALL                             R25 2 1
      220 SETTABLEKS                       R25 R24 K59 ["Error"]
      222 MOVE                             R25 R4
      223 JUMPIFNOT                        R25 ; [+23]
      224 GETUPVAL                         R25 5
      225 GETUPVAL                         R26 11
      226 DUPTABLE                         R27 K66 [{["tag"] = "col align-x-center size-full-0 auto-y padding-y-large", ["LayoutOrder"] = 1}]
      227 DUPTABLE                         R28 K68 [{"Spinner"}]
      228 GETUPVAL                         R29 5
      229 GETUPVAL                         R30 13
      230 DUPTABLE                         R31 K69 [{"size", "testId"}]
      231 GETUPVAL                         R32 14
      232 GETTABLEKS                       R32 R32 K70 ["Medium"]
      234 SETTABLEKS                       R32 R31 K26 ["size"]
      236 GETUPVAL                         R32 8
      237 GETTABLEKS                       R32 R32 K30 ["RobuxPackageModal"]
      239 GETTABLEKS                       R32 R32 K60 ["Loading"]
      241 SETTABLEKS                       R32 R31 K23 ["testId"]
      243 CALL                             R29 2 1
      244 SETTABLEKS                       R29 R28 K67 ["Spinner"]
      246 CALL                             R25 3 1
      247 SETTABLEKS                       R25 R24 K60 ["Loading"]
      249 MOVE                             R25 R5
      250 JUMPIFNOT                        R25 ; [+5]
      251 GETUPVAL                         R25 5
      252 GETUPVAL                         R26 11
      253 DUPTABLE                         R27 K72 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"] = 2}]
      254 MOVE                             R28 R12
      255 CALL                             R25 3 1
      256 SETTABLEKS                       R25 R24 K61 ["Packages"]
      258 CALL                             R21 3 1
      259 SETTABLEKS                       R21 R20 K31 ["Container"]
      261 CALL                             R17 3 1
      262 SETTABLEKS                       R17 R16 K34 ["Content"]
      264 GETUPVAL                         R17 5
      265 GETUPVAL                         R18 7
      266 GETTABLEKS                       R18 R18 K35 ["Actions"]
      268 DUPTABLE                         R19 K55 [{"LayoutOrder"}]
      269 MOVE                             R20 R2
      270 CALL                             R20 0 1
      271 SETTABLEKS                       R20 R19 K20 ["LayoutOrder"]
      273 DUPTABLE                         R20 K74 [{"BuyButton"}]
      274 GETUPVAL                         R21 5
      275 GETUPVAL                         R22 15
      276 DUPTABLE                         R23 K79 [{"text", "variant", "size", "fillBehavior", "isDisabled", "onActivated", "testId", "LayoutOrder"}]
      277 SETTABLEKS                       R11 R23 K75 ["text"]
      279 GETUPVAL                         R24 16
      280 GETTABLEKS                       R24 R24 K80 ["Emphasis"]
      282 SETTABLEKS                       R24 R23 K76 ["variant"]
      284 GETUPVAL                         R24 17
      285 GETTABLEKS                       R24 R24 K70 ["Medium"]
      287 SETTABLEKS                       R24 R23 K26 ["size"]
      289 GETUPVAL                         R24 18
      290 GETTABLEKS                       R24 R24 K81 ["Fill"]
      292 SETTABLEKS                       R24 R23 K77 ["fillBehavior"]
      294 JUMPIFEQKNIL                     R9 ; [+2]
      296 LOADB                            R24 0 +1
      297 LOADB                            R24 1
      298 SETTABLEKS                       R24 R23 K78 ["isDisabled"]
      300 SETTABLEKS                       R10 R23 K19 ["onActivated"]
      302 GETUPVAL                         R24 8
      303 GETTABLEKS                       R24 R24 K30 ["RobuxPackageModal"]
      305 GETTABLEKS                       R24 R24 K73 ["BuyButton"]
      307 SETTABLEKS                       R24 R23 K23 ["testId"]
      309 MOVE                             R24 R2
      310 CALL                             R24 0 1
      311 SETTABLEKS                       R24 R23 K20 ["LayoutOrder"]
      313 CALL                             R21 2 1
      314 SETTABLEKS                       R21 R20 K73 ["BuyButton"]
      316 CALL                             R17 3 1
      317 SETTABLEKS                       R17 R16 K35 ["Actions"]
      319 CALL                             R13 3 -1
      320 CLOSEUPVALS                      R9
      321 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["CreditMeteringContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Flags"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Parent"]
       25 GETTABLEKS                       R4 R4 K11 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Parent"]
       32 GETTABLEKS                       R5 R5 K12 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K10 ["Parent"]
       39 GETTABLEKS                       R6 R6 K13 ["ReactUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETIMPORT                        R7 K1 [script]
       46 GETTABLEKS                       R7 R7 K10 ["Parent"]
       48 GETTABLEKS                       R7 R7 K14 ["RobuxBalanceChip"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K15 ["Util"]
       55 GETTABLEKS                       R8 R8 K16 ["TestIds"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K17 ["Resources"]
       62 GETTABLEKS                       R9 R9 K18 ["Localization"]
       64 GETTABLEKS                       R9 R9 K19 ["Translator"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETIMPORT                        R10 K1 [script]
       71 GETTABLEKS                       R10 R10 K10 ["Parent"]
       73 GETTABLEKS                       R10 R10 K20 ["UsageFormat"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K21 ["FlagUtils"]
       80 GETTABLEKS                       R11 R11 K22 ["getIsCreditMeteringEnabled"]
       82 CALL                             R10 1 1
       83 GETTABLEKS                       R11 R3 K23 ["Button"]
       85 GETTABLEKS                       R12 R3 K24 ["Icon"]
       87 GETTABLEKS                       R13 R3 K25 ["Loading"]
       89 GETTABLEKS                       R14 R3 K26 ["Sheet"]
       91 GETTABLEKS                       R15 R3 K27 ["Text"]
       93 GETTABLEKS                       R16 R3 K28 ["View"]
       95 GETTABLEKS                       R17 R3 K29 ["Enums"]
       97 GETTABLEKS                       R17 R17 K30 ["ButtonSize"]
       99 GETTABLEKS                       R18 R3 K29 ["Enums"]
      101 GETTABLEKS                       R18 R18 K31 ["ButtonVariant"]
      103 GETTABLEKS                       R19 R3 K29 ["Enums"]
      105 GETTABLEKS                       R19 R19 K32 ["DialogSize"]
      107 GETTABLEKS                       R20 R3 K29 ["Enums"]
      109 GETTABLEKS                       R20 R20 K33 ["FillBehavior"]
      111 GETTABLEKS                       R21 R3 K29 ["Enums"]
      113 GETTABLEKS                       R21 R21 K34 ["IconName"]
      115 GETTABLEKS                       R22 R3 K29 ["Enums"]
      117 GETTABLEKS                       R22 R22 K35 ["IconSize"]
      119 GETTABLEKS                       R23 R5 K36 ["createNextOrder"]
      121 GETTABLEKS                       R24 R4 K37 ["createElement"]
      123 DUPCLOSURE                       R25 K38 [PROTO_0]
      124 CAPTURE                          VAL R24
      125 CAPTURE                          VAL R16
      126 CAPTURE                          VAL R7
      127 CAPTURE                          VAL R12
      128 CAPTURE                          VAL R21
      129 CAPTURE                          VAL R22
      130 CAPTURE                          VAL R15
      131 CAPTURE                          VAL R9
      132 DUPCLOSURE                       R26 K39 [PROTO_7]
      133 CAPTURE                          VAL R10
      134 CAPTURE                          VAL R2
      135 CAPTURE                          VAL R4
      136 CAPTURE                          VAL R8
      137 CAPTURE                          VAL R23
      138 CAPTURE                          VAL R24
      139 CAPTURE                          VAL R25
      140 CAPTURE                          VAL R14
      141 CAPTURE                          VAL R7
      142 CAPTURE                          VAL R19
      143 CAPTURE                          VAL R15
      144 CAPTURE                          VAL R16
      145 CAPTURE                          VAL R6
      146 CAPTURE                          VAL R13
      147 CAPTURE                          VAL R22
      148 CAPTURE                          VAL R11
      149 CAPTURE                          VAL R18
      150 CAPTURE                          VAL R17
      151 CAPTURE                          VAL R20
      152 RETURN                           R26 1
