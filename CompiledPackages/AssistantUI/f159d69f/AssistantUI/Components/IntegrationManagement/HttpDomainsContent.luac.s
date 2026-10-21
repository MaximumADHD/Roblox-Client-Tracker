PROTO_0:
        0 DUPTABLE                         R0 K4 [{"Header", "NoDomains", "Placeholder", "Add"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K5 ["Permissions"]
        3 LOADK                            R4 K6 ["HttpDomainAllowList"]
        4 NAMECALL                         R1 R1 K7 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Header"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K5 ["Permissions"]
       11 LOADK                            R4 K8 ["NoDomainsAllowed"]
       12 NAMECALL                         R1 R1 K7 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["NoDomains"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K5 ["Permissions"]
       19 LOADK                            R4 K9 ["HttpDomainPlaceholder"]
       20 NAMECALL                         R1 R1 K7 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["Placeholder"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K10 ["Settings"]
       27 LOADK                            R4 K3 ["Add"]
       28 NAMECALL                         R1 R1 K7 ["getText"]
       30 CALL                             R1 3 1
       31 SETTABLEKS                       R1 R0 K3 ["Add"]
       33 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onAdd"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 LOADK                            R1 K1 [""]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onRemove"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_0]
        4 CAPTURE                          UPVAL U1
        5 NEWTABLE                         R3 0 1
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K2 ["locale"]
       10 SETLIST                          R3 R4 1 [1]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R2 2
       14 CALL                             R2 0 1
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K3 ["useState"]
       18 LOADK                            R4 K4 [""]
       19 CALL                             R3 1 2
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K5 ["useCallback"]
       23 NEWCLOSURE                       R6 P1
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R4
       27 NEWTABLE                         R7 0 2
       29 MOVE                             R8 R3
       30 GETTABLEKS                       R9 R0 K6 ["onAdd"]
       32 SETLIST                          R7 R8 2 [1]
       34 CALL                             R5 2 1
       35 NEWTABLE                         R6 0 0
       37 GETUPVAL                         R7 2
       38 CALL                             R7 0 1
       39 GETTABLEKS                       R8 R0 K7 ["domains"]
       41 LOADNIL                          R9
       42 LOADNIL                          R10
       43 FORGPREP                         R8
       44 GETUPVAL                         R13 3
       45 GETUPVAL                         R14 4
       46 DUPTABLE                         R15 K17 [{["text"], ["trailing"], ["onActivated"], ["isChecked"] = False, ["variant"], ["size"], ["testId"], ["LayoutOrder"]}]
       47 SETTABLEKS                       R12 R15 K8 ["text"]
       49 DUPTABLE                         R16 K19 [{"iconName", "onActivated"}]
       50 GETUPVAL                         R17 5
       51 GETTABLEKS                       R17 R17 K20 ["X"]
       53 SETTABLEKS                       R17 R16 K18 ["iconName"]
       55 NEWCLOSURE                       R17 P2
       56 CAPTURE                          VAL R0
       57 CAPTURE                          VAL R12
       58 SETTABLEKS                       R17 R16 K10 ["onActivated"]
       60 SETTABLEKS                       R16 R15 K9 ["trailing"]
       62 DUPCLOSURE                       R16 K21 [PROTO_3]
       63 SETTABLEKS                       R16 R15 K10 ["onActivated"]
       65 GETUPVAL                         R16 6
       66 GETTABLEKS                       R16 R16 K22 ["Standard"]
       68 SETTABLEKS                       R16 R15 K13 ["variant"]
       70 GETUPVAL                         R16 7
       71 GETTABLEKS                       R16 R16 K23 ["Small"]
       73 SETTABLEKS                       R16 R15 K14 ["size"]
       75 GETUPVAL                         R16 8
       76 GETTABLEKS                       R16 R16 K24 ["HttpDomains"]
       78 GETTABLEKS                       R16 R16 K25 ["DomainRow"]
       80 MOVE                             R17 R12
       81 CALL                             R16 1 1
       82 SETTABLEKS                       R16 R15 K15 ["testId"]
       84 MOVE                             R16 R7
       85 CALL                             R16 0 1
       86 SETTABLEKS                       R16 R15 K16 ["LayoutOrder"]
       88 CALL                             R13 2 1
       89 SETTABLE                         R13 R6 R12
       90 FORGLOOP                         R8 2 ; [-47]
       92 GETUPVAL                         R8 3
       93 GETUPVAL                         R9 9
       94 DUPTABLE                         R10 K28 [{["tag"] = "col gap-xsmall size-full-0 auto-y padding-right-medium", ["testId"], ["LayoutOrder"]}]
       95 GETUPVAL                         R11 8
       96 GETTABLEKS                       R11 R11 K24 ["HttpDomains"]
       98 GETTABLEKS                       R11 R11 K29 ["Container"]
      100 SETTABLEKS                       R11 R10 K15 ["testId"]
      102 GETTABLEKS                       R11 R0 K16 ["LayoutOrder"]
      104 SETTABLEKS                       R11 R10 K16 ["LayoutOrder"]
      106 DUPTABLE                         R11 K33 [{"Header", "DomainList", "AddRow"}]
      107 GETUPVAL                         R12 3
      108 GETUPVAL                         R13 10
      109 DUPTABLE                         R14 K37 [{["tag"] = "size-full-0 auto-y text-label-small text-wrap text-align-x-left content-emphasis", ["fontStyle"], ["Text"], ["LayoutOrder"]}]
      110 DUPTABLE                         R15 K39 [{"Font"}]
      111 GETIMPORT                        R16 K42 [Enum.Font.BuilderSansBold]
      113 SETTABLEKS                       R16 R15 K38 ["Font"]
      115 SETTABLEKS                       R15 R14 K35 ["fontStyle"]
      117 GETTABLEKS                       R15 R1 K30 ["Header"]
      119 SETTABLEKS                       R15 R14 K36 ["Text"]
      121 MOVE                             R15 R2
      122 CALL                             R15 0 1
      123 SETTABLEKS                       R15 R14 K16 ["LayoutOrder"]
      125 CALL                             R12 2 1
      126 SETTABLEKS                       R12 R11 K30 ["Header"]
      128 GETTABLEKS                       R14 R0 K7 ["domains"]
      130 LENGTH                           R13 R14
      131 LOADN                            R14 0
      132 JUMPIFNOTLT                      R14 R13 ; [+25]
      134 GETUPVAL                         R12 3
      135 GETUPVAL                         R13 9
      136 DUPTABLE                         R14 K45 [{["tag"] = "size-full-0 auto-xy", ["layout"], ["LayoutOrder"]}]
      137 DUPTABLE                         R15 K50 [{["FillDirection"], ["Padding"], ["Wraps"] = True}]
      138 GETIMPORT                        R16 K52 [Enum.FillDirection.Horizontal]
      140 SETTABLEKS                       R16 R15 K46 ["FillDirection"]
      142 GETIMPORT                        R16 K55 [UDim.new]
      144 LOADN                            R17 0
      145 LOADN                            R18 8
      146 CALL                             R16 2 1
      147 SETTABLEKS                       R16 R15 K47 ["Padding"]
      149 SETTABLEKS                       R15 R14 K44 ["layout"]
      151 MOVE                             R15 R2
      152 CALL                             R15 0 1
      153 SETTABLEKS                       R15 R14 K16 ["LayoutOrder"]
      155 MOVE                             R15 R6
      156 CALL                             R12 3 1
      157 JUMP                             ; [+12]
      158 GETUPVAL                         R12 3
      159 GETUPVAL                         R13 10
      160 DUPTABLE                         R14 K57 [{["tag"] = "size-full-0 auto-y padding-top-xsmall text-body-small text-align-x-left content-muted", ["Text"], ["LayoutOrder"]}]
      161 GETTABLEKS                       R15 R1 K58 ["NoDomains"]
      163 SETTABLEKS                       R15 R14 K36 ["Text"]
      165 MOVE                             R15 R2
      166 CALL                             R15 0 1
      167 SETTABLEKS                       R15 R14 K16 ["LayoutOrder"]
      169 CALL                             R12 2 1
      170 SETTABLEKS                       R12 R11 K31 ["DomainList"]
      172 GETUPVAL                         R12 3
      173 GETUPVAL                         R13 9
      174 DUPTABLE                         R14 K60 [{["tag"] = "row align-y-center gap-xsmall size-full-0 auto-y", ["LayoutOrder"]}]
      175 MOVE                             R15 R2
      176 CALL                             R15 0 1
      177 SETTABLEKS                       R15 R14 K16 ["LayoutOrder"]
      179 DUPTABLE                         R15 K63 [{"AddInputContainer", "AddButton"}]
      180 GETUPVAL                         R16 3
      181 GETUPVAL                         R17 9
      182 DUPTABLE                         R18 K66 [{["tag"] = "grow size-0-0 auto-y", ["LayoutOrder"] = 1}]
      183 DUPTABLE                         R19 K68 [{"AddInput"}]
      184 GETUPVAL                         R20 3
      185 GETUPVAL                         R21 11
      186 DUPTABLE                         R22 K74 [{["width"], ["placeholder"], ["text"], ["label"] = "", ["onChanged"], ["onReturnPressed"], ["size"], ["testId"]}]
      187 GETIMPORT                        R23 K55 [UDim.new]
      189 LOADN                            R24 1
      190 LOADN                            R25 0
      191 CALL                             R23 2 1
      192 SETTABLEKS                       R23 R22 K69 ["width"]
      194 GETTABLEKS                       R23 R1 K75 ["Placeholder"]
      196 SETTABLEKS                       R23 R22 K70 ["placeholder"]
      198 SETTABLEKS                       R3 R22 K8 ["text"]
      200 SETTABLEKS                       R4 R22 K72 ["onChanged"]
      202 SETTABLEKS                       R5 R22 K73 ["onReturnPressed"]
      204 GETUPVAL                         R23 12
      205 GETTABLEKS                       R23 R23 K76 ["XSmall"]
      207 SETTABLEKS                       R23 R22 K14 ["size"]
      209 GETUPVAL                         R23 8
      210 GETTABLEKS                       R23 R23 K24 ["HttpDomains"]
      212 GETTABLEKS                       R23 R23 K67 ["AddInput"]
      214 SETTABLEKS                       R23 R22 K15 ["testId"]
      216 CALL                             R20 2 1
      217 SETTABLEKS                       R20 R19 K67 ["AddInput"]
      219 CALL                             R16 3 1
      220 SETTABLEKS                       R16 R15 K61 ["AddInputContainer"]
      222 GETUPVAL                         R16 3
      223 GETUPVAL                         R17 13
      224 DUPTABLE                         R18 K80 [{["text"], ["icon"], ["size"], ["variant"], ["isDisabled"], ["onActivated"], ["testId"], ["LayoutOrder"] = 2}]
      225 GETTABLEKS                       R19 R1 K81 ["Add"]
      227 SETTABLEKS                       R19 R18 K8 ["text"]
      229 GETUPVAL                         R19 5
      230 GETTABLEKS                       R19 R19 K82 ["PlusSmall"]
      232 SETTABLEKS                       R19 R18 K77 ["icon"]
      234 GETUPVAL                         R19 14
      235 GETTABLEKS                       R19 R19 K23 ["Small"]
      237 SETTABLEKS                       R19 R18 K14 ["size"]
      239 GETUPVAL                         R19 15
      240 GETTABLEKS                       R19 R19 K22 ["Standard"]
      242 SETTABLEKS                       R19 R18 K13 ["variant"]
      244 GETIMPORT                        R20 K85 [string.match]
      246 MOVE                             R21 R3
      247 LOADK                            R22 K86 ["%S"]
      248 CALL                             R20 2 1
      249 JUMPIFEQKNIL                     R20 ; [+2]
      251 LOADB                            R19 0 +1
      252 LOADB                            R19 1
      253 SETTABLEKS                       R19 R18 K78 ["isDisabled"]
      255 SETTABLEKS                       R5 R18 K10 ["onActivated"]
      257 GETUPVAL                         R19 8
      258 GETTABLEKS                       R19 R19 K24 ["HttpDomains"]
      260 GETTABLEKS                       R19 R19 K62 ["AddButton"]
      262 SETTABLEKS                       R19 R18 K15 ["testId"]
      264 CALL                             R16 2 1
      265 SETTABLEKS                       R16 R15 K62 ["AddButton"]
      267 CALL                             R12 3 1
      268 SETTABLEKS                       R12 R11 K32 ["AddRow"]
      270 CALL                             R8 3 -1
      271 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["TestIds"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Resources"]
       18 GETTABLEKS                       R3 R3 K9 ["Localization"]
       20 GETTABLEKS                       R3 R3 K10 ["Translator"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Parent"]
       27 GETTABLEKS                       R4 R4 K12 ["Foundation"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K11 ["Parent"]
       34 GETTABLEKS                       R5 R5 K13 ["React"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K11 ["Parent"]
       41 GETTABLEKS                       R6 R6 K14 ["ReactUtils"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R3 K15 ["Button"]
       46 GETTABLEKS                       R7 R3 K16 ["Chip"]
       48 GETTABLEKS                       R8 R3 K17 ["Text"]
       50 GETTABLEKS                       R9 R3 K18 ["TextInput"]
       52 GETTABLEKS                       R10 R3 K19 ["View"]
       54 GETTABLEKS                       R11 R3 K20 ["Enums"]
       56 GETTABLEKS                       R11 R11 K21 ["ButtonSize"]
       58 GETTABLEKS                       R12 R3 K20 ["Enums"]
       60 GETTABLEKS                       R12 R12 K22 ["ButtonVariant"]
       62 GETTABLEKS                       R13 R3 K20 ["Enums"]
       64 GETTABLEKS                       R13 R13 K23 ["ChipSize"]
       66 GETTABLEKS                       R14 R3 K20 ["Enums"]
       68 GETTABLEKS                       R14 R14 K24 ["ChipVariant"]
       70 GETTABLEKS                       R15 R3 K20 ["Enums"]
       72 GETTABLEKS                       R15 R15 K25 ["IconName"]
       74 GETTABLEKS                       R16 R3 K20 ["Enums"]
       76 GETTABLEKS                       R16 R16 K26 ["InputSize"]
       78 GETTABLEKS                       R17 R5 K27 ["createNextOrder"]
       80 GETTABLEKS                       R18 R4 K28 ["createElement"]
       82 DUPCLOSURE                       R19 K29 [PROTO_4]
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R17
       86 CAPTURE                          VAL R18
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R15
       89 CAPTURE                          VAL R14
       90 CAPTURE                          VAL R13
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R16
       96 CAPTURE                          VAL R6
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R12
       99 RETURN                           R19 1
