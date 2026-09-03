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
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantCreditMetering"]
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantCreditMeteringAdditionalUsage"]
        7 JUMPIF                           R1 ; [+2]
        8 LOADNIL                          R1
        9 RETURN                           R1 1
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K2 ["useMemo"]
       13 DUPCLOSURE                       R2 K3 [PROTO_1]
       14 CAPTURE                          UPVAL U2
       15 NEWTABLE                         R3 0 1
       17 GETUPVAL                         R4 2
       18 GETTABLEKS                       R4 R4 K4 ["locale"]
       20 SETLIST                          R3 R4 1 [1]
       22 CALL                             R1 2 1
       23 GETUPVAL                         R2 3
       24 CALL                             R2 0 1
       25 GETTABLEKS                       R4 R0 K5 ["hasError"]
       27 JUMPIFNOT                        R4 ; [+3]
       28 GETTABLEKS                       R3 R1 K6 ["LoadError"]
       30 JUMP                             ; [+1]
       31 LOADNIL                          R3
       32 LOADB                            R4 0
       33 GETTABLEKS                       R5 R0 K7 ["isLoading"]
       35 JUMPIFNOTEQKB                    R5 TRUE ; [+4]
       37 GETTABLEKS                       R5 R0 K5 ["hasError"]
       39 NOT                              R4 R5
       40 GETTABLEKS                       R6 R0 K5 ["hasError"]
       42 NOT                              R5 R6
       43 JUMPIFNOT                        R5 ; [+1]
       44 NOT                              R5 R4
       45 GETUPVAL                         R6 1
       46 GETTABLEKS                       R6 R6 K2 ["useMemo"]
       48 NEWCLOSURE                       R7 P1
       49 CAPTURE                          VAL R0
       50 NEWTABLE                         R8 0 1
       52 GETTABLEKS                       R9 R0 K8 ["packages"]
       54 SETLIST                          R8 R9 1 [1]
       56 CALL                             R6 2 1
       57 GETUPVAL                         R7 1
       58 GETTABLEKS                       R7 R7 K9 ["useState"]
       60 LOADNIL                          R8
       61 CALL                             R7 1 2
       62 GETUPVAL                         R9 1
       63 GETTABLEKS                       R9 R9 K10 ["useEffect"]
       65 NEWCLOSURE                       R10 P2
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R8
       69 NEWTABLE                         R11 0 2
       71 MOVE                             R12 R6
       72 MOVE                             R13 R7
       73 SETLIST                          R11 R12 2 [1]
       75 CALL                             R9 2 0
       76 LOADNIL                          R9
       77 MOVE                             R10 R6
       78 LOADNIL                          R11
       79 LOADNIL                          R12
       80 FORGPREP                         R10
       81 GETTABLEKS                       R15 R14 K11 ["productId"]
       83 JUMPIFNOTEQ                      R15 R7 ; [+3]
       85 MOVE                             R9 R14
       86 JUMP                             ; [+2]
       87 FORGLOOP                         R10 2 ; [-7]
       89 NEWCLOSURE                       R10 P3
       90 CAPTURE                          REF R9
       91 CAPTURE                          VAL R0
       92 JUMPIFNOT                        R9 ; [+10]
       93 LOADK                            R12 K12 ["%* %*"]
       94 GETTABLEKS                       R14 R1 K13 ["Buy"]
       96 GETTABLEKS                       R15 R9 K14 ["currencyAmountStr"]
       98 NAMECALL                         R12 R12 K15 ["format"]
      100 CALL                             R12 3 1
      101 MOVE                             R11 R12
      102 JUMP                             ; [+2]
      103 GETTABLEKS                       R11 R1 K13 ["Buy"]
      105 NEWTABLE                         R12 0 0
      107 MOVE                             R13 R6
      108 LOADNIL                          R14
      109 LOADNIL                          R15
      110 FORGPREP                         R13
      111 NEWCLOSURE                       R18 P4
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R17
      114 GETTABLEKS                       R20 R17 K11 ["productId"]
      116 FASTCALL1                        TOSTRING R20 ; [+2]
      117 GETIMPORT                        R19 K17 [tostring]
      119 CALL                             R19 1 1
      120 GETUPVAL                         R20 4
      121 GETUPVAL                         R21 5
      122 DUPTABLE                         R22 K22 [{"robuxPackage", "isSelected", "onActivated", "LayoutOrder"}]
      123 SETTABLEKS                       R17 R22 K18 ["robuxPackage"]
      125 GETTABLEKS                       R24 R17 K11 ["productId"]
      127 JUMPIFEQ                         R24 R7 ; [+2]
      129 LOADB                            R23 0 +1
      130 LOADB                            R23 1
      131 SETTABLEKS                       R23 R22 K19 ["isSelected"]
      133 SETTABLEKS                       R18 R22 K20 ["onActivated"]
      135 SETTABLEKS                       R16 R22 K21 ["LayoutOrder"]
      137 CALL                             R20 2 1
      138 SETTABLE                         R20 R12 R19
      139 FORGLOOP                         R13 2 ; [-29]
      141 GETUPVAL                         R13 4
      142 GETUPVAL                         R14 6
      143 GETTABLEKS                       R14 R14 K23 ["Root"]
      145 DUPTABLE                         R15 K30 [{["testId"], ["isOpen"] = True, ["size"], ["preferCenterSheet"] = True, ["onClose"]}]
      146 GETUPVAL                         R16 7
      147 GETTABLEKS                       R16 R16 K31 ["RobuxPackageModal"]
      149 GETTABLEKS                       R16 R16 K32 ["Container"]
      151 SETTABLEKS                       R16 R15 K24 ["testId"]
      153 GETUPVAL                         R16 8
      154 GETTABLEKS                       R16 R16 K33 ["Small"]
      156 SETTABLEKS                       R16 R15 K27 ["size"]
      158 GETTABLEKS                       R16 R0 K29 ["onClose"]
      160 SETTABLEKS                       R16 R15 K29 ["onClose"]
      162 DUPTABLE                         R16 K37 [{"Header", "Content", "Actions"}]
      163 GETUPVAL                         R17 4
      164 GETUPVAL                         R18 6
      165 GETTABLEKS                       R18 R18 K34 ["Header"]
      167 DUPTABLE                         R19 K39 [{["hasCloseAffordance"] = True}]
      168 DUPTABLE                         R20 K43 [{"Title", "Spacer", "Balance"}]
      169 GETUPVAL                         R21 4
      170 GETUPVAL                         R22 9
      171 DUPTABLE                         R23 K48 [{["tag"] = "auto-xy text-title-medium", ["Text"], ["LayoutOrder"] = 1}]
      172 GETTABLEKS                       R24 R1 K40 ["Title"]
      174 SETTABLEKS                       R24 R23 K46 ["Text"]
      176 CALL                             R21 2 1
      177 SETTABLEKS                       R21 R20 K40 ["Title"]
      179 GETUPVAL                         R21 4
      180 GETUPVAL                         R22 10
      181 DUPTABLE                         R23 K51 [{["tag"] = "grow", ["LayoutOrder"] = 2}]
      182 CALL                             R21 2 1
      183 SETTABLEKS                       R21 R20 K41 ["Spacer"]
      185 GETUPVAL                         R21 4
      186 GETUPVAL                         R22 11
      187 DUPTABLE                         R23 K54 [{["robuxBalance"], ["LayoutOrder"] = 3}]
      188 GETTABLEKS                       R25 R0 K52 ["robuxBalance"]
      190 ORK                              R24 R25 K55 [0]
      191 SETTABLEKS                       R24 R23 K52 ["robuxBalance"]
      193 CALL                             R21 2 1
      194 SETTABLEKS                       R21 R20 K42 ["Balance"]
      196 CALL                             R17 3 1
      197 SETTABLEKS                       R17 R16 K34 ["Header"]
      199 GETUPVAL                         R17 4
      200 GETUPVAL                         R18 6
      201 GETTABLEKS                       R18 R18 K35 ["Content"]
      203 DUPTABLE                         R19 K56 [{"LayoutOrder"}]
      204 MOVE                             R20 R2
      205 CALL                             R20 0 1
      206 SETTABLEKS                       R20 R19 K21 ["LayoutOrder"]
      208 DUPTABLE                         R20 K57 [{"Container"}]
      209 GETUPVAL                         R21 4
      210 GETUPVAL                         R22 10
      211 DUPTABLE                         R23 K59 [{["tag"] = "col gap-small size-full-0 auto-y padding-y-xsmall"}]
      212 DUPTABLE                         R24 K63 [{"Error", "Loading", "Packages"}]
      213 MOVE                             R25 R3
      214 JUMPIFNOT                        R25 ; [+6]
      215 GETUPVAL                         R25 4
      216 GETUPVAL                         R26 9
      217 DUPTABLE                         R27 K65 [{["Text"], ["tag"] = "size-full-0 auto-y padding-y-large text-body-small text-align-x-center content-muted", ["LayoutOrder"] = 1}]
      218 SETTABLEKS                       R3 R27 K46 ["Text"]
      220 CALL                             R25 2 1
      221 SETTABLEKS                       R25 R24 K60 ["Error"]
      223 MOVE                             R25 R4
      224 JUMPIFNOT                        R25 ; [+23]
      225 GETUPVAL                         R25 4
      226 GETUPVAL                         R26 10
      227 DUPTABLE                         R27 K67 [{["tag"] = "col align-x-center size-full-0 auto-y padding-y-large", ["LayoutOrder"] = 1}]
      228 DUPTABLE                         R28 K69 [{"Spinner"}]
      229 GETUPVAL                         R29 4
      230 GETUPVAL                         R30 12
      231 DUPTABLE                         R31 K70 [{"size", "testId"}]
      232 GETUPVAL                         R32 13
      233 GETTABLEKS                       R32 R32 K71 ["Medium"]
      235 SETTABLEKS                       R32 R31 K27 ["size"]
      237 GETUPVAL                         R32 7
      238 GETTABLEKS                       R32 R32 K31 ["RobuxPackageModal"]
      240 GETTABLEKS                       R32 R32 K61 ["Loading"]
      242 SETTABLEKS                       R32 R31 K24 ["testId"]
      244 CALL                             R29 2 1
      245 SETTABLEKS                       R29 R28 K68 ["Spinner"]
      247 CALL                             R25 3 1
      248 SETTABLEKS                       R25 R24 K61 ["Loading"]
      250 MOVE                             R25 R5
      251 JUMPIFNOT                        R25 ; [+5]
      252 GETUPVAL                         R25 4
      253 GETUPVAL                         R26 10
      254 DUPTABLE                         R27 K73 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"] = 2}]
      255 MOVE                             R28 R12
      256 CALL                             R25 3 1
      257 SETTABLEKS                       R25 R24 K62 ["Packages"]
      259 CALL                             R21 3 1
      260 SETTABLEKS                       R21 R20 K32 ["Container"]
      262 CALL                             R17 3 1
      263 SETTABLEKS                       R17 R16 K35 ["Content"]
      265 GETUPVAL                         R17 4
      266 GETUPVAL                         R18 6
      267 GETTABLEKS                       R18 R18 K36 ["Actions"]
      269 DUPTABLE                         R19 K56 [{"LayoutOrder"}]
      270 MOVE                             R20 R2
      271 CALL                             R20 0 1
      272 SETTABLEKS                       R20 R19 K21 ["LayoutOrder"]
      274 DUPTABLE                         R20 K75 [{"BuyButton"}]
      275 GETUPVAL                         R21 4
      276 GETUPVAL                         R22 14
      277 DUPTABLE                         R23 K80 [{"text", "variant", "size", "fillBehavior", "isDisabled", "onActivated", "testId", "LayoutOrder"}]
      278 SETTABLEKS                       R11 R23 K76 ["text"]
      280 GETUPVAL                         R24 15
      281 GETTABLEKS                       R24 R24 K81 ["Emphasis"]
      283 SETTABLEKS                       R24 R23 K77 ["variant"]
      285 GETUPVAL                         R24 16
      286 GETTABLEKS                       R24 R24 K71 ["Medium"]
      288 SETTABLEKS                       R24 R23 K27 ["size"]
      290 GETUPVAL                         R24 17
      291 GETTABLEKS                       R24 R24 K82 ["Fill"]
      293 SETTABLEKS                       R24 R23 K78 ["fillBehavior"]
      295 JUMPIFEQKNIL                     R9 ; [+2]
      297 LOADB                            R24 0 +1
      298 LOADB                            R24 1
      299 SETTABLEKS                       R24 R23 K79 ["isDisabled"]
      301 SETTABLEKS                       R10 R23 K20 ["onActivated"]
      303 GETUPVAL                         R24 7
      304 GETTABLEKS                       R24 R24 K31 ["RobuxPackageModal"]
      306 GETTABLEKS                       R24 R24 K74 ["BuyButton"]
      308 SETTABLEKS                       R24 R23 K24 ["testId"]
      310 MOVE                             R24 R2
      311 CALL                             R24 0 1
      312 SETTABLEKS                       R24 R23 K21 ["LayoutOrder"]
      314 CALL                             R21 2 1
      315 SETTABLEKS                       R21 R20 K74 ["BuyButton"]
      317 CALL                             R17 3 1
      318 SETTABLEKS                       R17 R16 K36 ["Actions"]
      320 CALL                             R13 3 -1
      321 CLOSEUPVALS                      R9
      322 RETURN                           R13 -1

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
       76 GETTABLEKS                       R10 R3 K21 ["Button"]
       78 GETTABLEKS                       R11 R3 K22 ["Icon"]
       80 GETTABLEKS                       R12 R3 K23 ["Loading"]
       82 GETTABLEKS                       R13 R3 K24 ["Sheet"]
       84 GETTABLEKS                       R14 R3 K25 ["Text"]
       86 GETTABLEKS                       R15 R3 K26 ["View"]
       88 GETTABLEKS                       R16 R3 K27 ["Enums"]
       90 GETTABLEKS                       R16 R16 K28 ["ButtonSize"]
       92 GETTABLEKS                       R17 R3 K27 ["Enums"]
       94 GETTABLEKS                       R17 R17 K29 ["ButtonVariant"]
       96 GETTABLEKS                       R18 R3 K27 ["Enums"]
       98 GETTABLEKS                       R18 R18 K30 ["DialogSize"]
      100 GETTABLEKS                       R19 R3 K27 ["Enums"]
      102 GETTABLEKS                       R19 R19 K31 ["FillBehavior"]
      104 GETTABLEKS                       R20 R3 K27 ["Enums"]
      106 GETTABLEKS                       R20 R20 K32 ["IconName"]
      108 GETTABLEKS                       R21 R3 K27 ["Enums"]
      110 GETTABLEKS                       R21 R21 K33 ["IconSize"]
      112 GETTABLEKS                       R22 R5 K34 ["createNextOrder"]
      114 GETTABLEKS                       R23 R4 K35 ["createElement"]
      116 DUPCLOSURE                       R24 K36 [PROTO_0]
      117 CAPTURE                          VAL R23
      118 CAPTURE                          VAL R15
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R11
      121 CAPTURE                          VAL R20
      122 CAPTURE                          VAL R21
      123 CAPTURE                          VAL R14
      124 CAPTURE                          VAL R9
      125 DUPCLOSURE                       R25 K37 [PROTO_7]
      126 CAPTURE                          VAL R2
      127 CAPTURE                          VAL R4
      128 CAPTURE                          VAL R8
      129 CAPTURE                          VAL R22
      130 CAPTURE                          VAL R23
      131 CAPTURE                          VAL R24
      132 CAPTURE                          VAL R13
      133 CAPTURE                          VAL R7
      134 CAPTURE                          VAL R18
      135 CAPTURE                          VAL R14
      136 CAPTURE                          VAL R15
      137 CAPTURE                          VAL R6
      138 CAPTURE                          VAL R12
      139 CAPTURE                          VAL R21
      140 CAPTURE                          VAL R10
      141 CAPTURE                          VAL R17
      142 CAPTURE                          VAL R16
      143 CAPTURE                          VAL R19
      144 RETURN                           R25 1
