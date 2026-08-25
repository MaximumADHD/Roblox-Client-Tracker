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
        3 JUMPIF                           R1 ; [+2]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["useMemo"]
        9 DUPCLOSURE                       R2 K2 [PROTO_1]
       10 CAPTURE                          UPVAL U2
       11 NEWTABLE                         R3 0 1
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R4 R4 K3 ["locale"]
       16 SETLIST                          R3 R4 1 [1]
       18 CALL                             R1 2 1
       19 GETUPVAL                         R2 3
       20 CALL                             R2 0 1
       21 GETTABLEKS                       R4 R0 K4 ["hasError"]
       23 JUMPIFNOT                        R4 ; [+3]
       24 GETTABLEKS                       R3 R1 K5 ["LoadError"]
       26 JUMP                             ; [+1]
       27 LOADNIL                          R3
       28 LOADB                            R4 0
       29 GETTABLEKS                       R5 R0 K6 ["isLoading"]
       31 JUMPIFNOTEQKB                    R5 TRUE ; [+4]
       33 GETTABLEKS                       R5 R0 K4 ["hasError"]
       35 NOT                              R4 R5
       36 GETTABLEKS                       R6 R0 K4 ["hasError"]
       38 NOT                              R5 R6
       39 JUMPIFNOT                        R5 ; [+1]
       40 NOT                              R5 R4
       41 GETUPVAL                         R6 1
       42 GETTABLEKS                       R6 R6 K1 ["useMemo"]
       44 NEWCLOSURE                       R7 P1
       45 CAPTURE                          VAL R0
       46 NEWTABLE                         R8 0 1
       48 GETTABLEKS                       R9 R0 K7 ["packages"]
       50 SETLIST                          R8 R9 1 [1]
       52 CALL                             R6 2 1
       53 GETUPVAL                         R7 1
       54 GETTABLEKS                       R7 R7 K8 ["useState"]
       56 LOADNIL                          R8
       57 CALL                             R7 1 2
       58 GETUPVAL                         R9 1
       59 GETTABLEKS                       R9 R9 K9 ["useEffect"]
       61 NEWCLOSURE                       R10 P2
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R8
       65 NEWTABLE                         R11 0 2
       67 MOVE                             R12 R6
       68 MOVE                             R13 R7
       69 SETLIST                          R11 R12 2 [1]
       71 CALL                             R9 2 0
       72 LOADNIL                          R9
       73 MOVE                             R10 R6
       74 LOADNIL                          R11
       75 LOADNIL                          R12
       76 FORGPREP                         R10
       77 GETTABLEKS                       R15 R14 K10 ["productId"]
       79 JUMPIFNOTEQ                      R15 R7 ; [+3]
       81 MOVE                             R9 R14
       82 JUMP                             ; [+2]
       83 FORGLOOP                         R10 2 ; [-7]
       85 NEWCLOSURE                       R10 P3
       86 CAPTURE                          REF R9
       87 CAPTURE                          VAL R0
       88 JUMPIFNOT                        R9 ; [+10]
       89 LOADK                            R12 K11 ["%* %*"]
       90 GETTABLEKS                       R14 R1 K12 ["Buy"]
       92 GETTABLEKS                       R15 R9 K13 ["currencyAmountStr"]
       94 NAMECALL                         R12 R12 K14 ["format"]
       96 CALL                             R12 3 1
       97 MOVE                             R11 R12
       98 JUMP                             ; [+2]
       99 GETTABLEKS                       R11 R1 K12 ["Buy"]
      101 NEWTABLE                         R12 0 0
      103 MOVE                             R13 R6
      104 LOADNIL                          R14
      105 LOADNIL                          R15
      106 FORGPREP                         R13
      107 NEWCLOSURE                       R18 P4
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R17
      110 GETTABLEKS                       R20 R17 K10 ["productId"]
      112 FASTCALL1                        TOSTRING R20 ; [+2]
      113 GETIMPORT                        R19 K16 [tostring]
      115 CALL                             R19 1 1
      116 GETUPVAL                         R20 4
      117 GETUPVAL                         R21 5
      118 DUPTABLE                         R22 K21 [{"robuxPackage", "isSelected", "onActivated", "LayoutOrder"}]
      119 SETTABLEKS                       R17 R22 K17 ["robuxPackage"]
      121 GETTABLEKS                       R24 R17 K10 ["productId"]
      123 JUMPIFEQ                         R24 R7 ; [+2]
      125 LOADB                            R23 0 +1
      126 LOADB                            R23 1
      127 SETTABLEKS                       R23 R22 K18 ["isSelected"]
      129 SETTABLEKS                       R18 R22 K19 ["onActivated"]
      131 SETTABLEKS                       R16 R22 K20 ["LayoutOrder"]
      133 CALL                             R20 2 1
      134 SETTABLE                         R20 R12 R19
      135 FORGLOOP                         R13 2 ; [-29]
      137 GETUPVAL                         R13 4
      138 GETUPVAL                         R14 6
      139 GETTABLEKS                       R14 R14 K22 ["Root"]
      141 DUPTABLE                         R15 K29 [{["testId"], ["isOpen"] = True, ["size"], ["preferCenterSheet"] = True, ["onClose"]}]
      142 GETUPVAL                         R16 7
      143 GETTABLEKS                       R16 R16 K30 ["RobuxPackageModal"]
      145 GETTABLEKS                       R16 R16 K31 ["Container"]
      147 SETTABLEKS                       R16 R15 K23 ["testId"]
      149 GETUPVAL                         R16 8
      150 GETTABLEKS                       R16 R16 K32 ["Small"]
      152 SETTABLEKS                       R16 R15 K26 ["size"]
      154 GETTABLEKS                       R16 R0 K28 ["onClose"]
      156 SETTABLEKS                       R16 R15 K28 ["onClose"]
      158 DUPTABLE                         R16 K36 [{"Header", "Content", "Actions"}]
      159 GETUPVAL                         R17 4
      160 GETUPVAL                         R18 6
      161 GETTABLEKS                       R18 R18 K33 ["Header"]
      163 DUPTABLE                         R19 K38 [{["hasCloseAffordance"] = True}]
      164 DUPTABLE                         R20 K42 [{"Title", "Spacer", "Balance"}]
      165 GETUPVAL                         R21 4
      166 GETUPVAL                         R22 9
      167 DUPTABLE                         R23 K47 [{["tag"] = "auto-xy text-title-medium", ["Text"], ["LayoutOrder"] = 1}]
      168 GETTABLEKS                       R24 R1 K39 ["Title"]
      170 SETTABLEKS                       R24 R23 K45 ["Text"]
      172 CALL                             R21 2 1
      173 SETTABLEKS                       R21 R20 K39 ["Title"]
      175 GETUPVAL                         R21 4
      176 GETUPVAL                         R22 10
      177 DUPTABLE                         R23 K50 [{["tag"] = "grow", ["LayoutOrder"] = 2}]
      178 CALL                             R21 2 1
      179 SETTABLEKS                       R21 R20 K40 ["Spacer"]
      181 GETUPVAL                         R21 4
      182 GETUPVAL                         R22 11
      183 DUPTABLE                         R23 K53 [{["robuxBalance"], ["LayoutOrder"] = 3}]
      184 GETTABLEKS                       R25 R0 K51 ["robuxBalance"]
      186 ORK                              R24 R25 K54 [0]
      187 SETTABLEKS                       R24 R23 K51 ["robuxBalance"]
      189 CALL                             R21 2 1
      190 SETTABLEKS                       R21 R20 K41 ["Balance"]
      192 CALL                             R17 3 1
      193 SETTABLEKS                       R17 R16 K33 ["Header"]
      195 GETUPVAL                         R17 4
      196 GETUPVAL                         R18 6
      197 GETTABLEKS                       R18 R18 K34 ["Content"]
      199 DUPTABLE                         R19 K55 [{"LayoutOrder"}]
      200 MOVE                             R20 R2
      201 CALL                             R20 0 1
      202 SETTABLEKS                       R20 R19 K20 ["LayoutOrder"]
      204 DUPTABLE                         R20 K56 [{"Container"}]
      205 GETUPVAL                         R21 4
      206 GETUPVAL                         R22 10
      207 DUPTABLE                         R23 K58 [{["tag"] = "col gap-small size-full-0 auto-y padding-y-xsmall"}]
      208 DUPTABLE                         R24 K62 [{"Error", "Loading", "Packages"}]
      209 MOVE                             R25 R3
      210 JUMPIFNOT                        R25 ; [+6]
      211 GETUPVAL                         R25 4
      212 GETUPVAL                         R26 9
      213 DUPTABLE                         R27 K64 [{["Text"], ["tag"] = "size-full-0 auto-y padding-y-large text-body-small text-align-x-center content-muted", ["LayoutOrder"] = 1}]
      214 SETTABLEKS                       R3 R27 K45 ["Text"]
      216 CALL                             R25 2 1
      217 SETTABLEKS                       R25 R24 K59 ["Error"]
      219 MOVE                             R25 R4
      220 JUMPIFNOT                        R25 ; [+23]
      221 GETUPVAL                         R25 4
      222 GETUPVAL                         R26 10
      223 DUPTABLE                         R27 K66 [{["tag"] = "col align-x-center size-full-0 auto-y padding-y-large", ["LayoutOrder"] = 1}]
      224 DUPTABLE                         R28 K68 [{"Spinner"}]
      225 GETUPVAL                         R29 4
      226 GETUPVAL                         R30 12
      227 DUPTABLE                         R31 K69 [{"size", "testId"}]
      228 GETUPVAL                         R32 13
      229 GETTABLEKS                       R32 R32 K70 ["Medium"]
      231 SETTABLEKS                       R32 R31 K26 ["size"]
      233 GETUPVAL                         R32 7
      234 GETTABLEKS                       R32 R32 K30 ["RobuxPackageModal"]
      236 GETTABLEKS                       R32 R32 K60 ["Loading"]
      238 SETTABLEKS                       R32 R31 K23 ["testId"]
      240 CALL                             R29 2 1
      241 SETTABLEKS                       R29 R28 K67 ["Spinner"]
      243 CALL                             R25 3 1
      244 SETTABLEKS                       R25 R24 K60 ["Loading"]
      246 MOVE                             R25 R5
      247 JUMPIFNOT                        R25 ; [+5]
      248 GETUPVAL                         R25 4
      249 GETUPVAL                         R26 10
      250 DUPTABLE                         R27 K72 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"] = 2}]
      251 MOVE                             R28 R12
      252 CALL                             R25 3 1
      253 SETTABLEKS                       R25 R24 K61 ["Packages"]
      255 CALL                             R21 3 1
      256 SETTABLEKS                       R21 R20 K31 ["Container"]
      258 CALL                             R17 3 1
      259 SETTABLEKS                       R17 R16 K34 ["Content"]
      261 GETUPVAL                         R17 4
      262 GETUPVAL                         R18 6
      263 GETTABLEKS                       R18 R18 K35 ["Actions"]
      265 DUPTABLE                         R19 K55 [{"LayoutOrder"}]
      266 MOVE                             R20 R2
      267 CALL                             R20 0 1
      268 SETTABLEKS                       R20 R19 K20 ["LayoutOrder"]
      270 DUPTABLE                         R20 K74 [{"BuyButton"}]
      271 GETUPVAL                         R21 4
      272 GETUPVAL                         R22 14
      273 DUPTABLE                         R23 K79 [{"text", "variant", "size", "fillBehavior", "isDisabled", "onActivated", "testId", "LayoutOrder"}]
      274 SETTABLEKS                       R11 R23 K75 ["text"]
      276 GETUPVAL                         R24 15
      277 GETTABLEKS                       R24 R24 K80 ["Emphasis"]
      279 SETTABLEKS                       R24 R23 K76 ["variant"]
      281 GETUPVAL                         R24 16
      282 GETTABLEKS                       R24 R24 K70 ["Medium"]
      284 SETTABLEKS                       R24 R23 K26 ["size"]
      286 GETUPVAL                         R24 17
      287 GETTABLEKS                       R24 R24 K81 ["Fill"]
      289 SETTABLEKS                       R24 R23 K77 ["fillBehavior"]
      291 JUMPIFEQKNIL                     R9 ; [+2]
      293 LOADB                            R24 0 +1
      294 LOADB                            R24 1
      295 SETTABLEKS                       R24 R23 K78 ["isDisabled"]
      297 SETTABLEKS                       R10 R23 K19 ["onActivated"]
      299 GETUPVAL                         R24 7
      300 GETTABLEKS                       R24 R24 K30 ["RobuxPackageModal"]
      302 GETTABLEKS                       R24 R24 K73 ["BuyButton"]
      304 SETTABLEKS                       R24 R23 K23 ["testId"]
      306 MOVE                             R24 R2
      307 CALL                             R24 0 1
      308 SETTABLEKS                       R24 R23 K20 ["LayoutOrder"]
      310 CALL                             R21 2 1
      311 SETTABLEKS                       R21 R20 K73 ["BuyButton"]
      313 CALL                             R17 3 1
      314 SETTABLEKS                       R17 R16 K35 ["Actions"]
      316 CALL                             R13 3 -1
      317 CLOSEUPVALS                      R9
      318 RETURN                           R13 -1

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
