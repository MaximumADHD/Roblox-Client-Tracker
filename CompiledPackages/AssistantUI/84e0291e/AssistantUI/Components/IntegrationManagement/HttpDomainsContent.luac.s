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
       46 DUPTABLE                         R15 K18 [{["text"], ["trailing"], ["onActivated"], ["isChecked"] = False, ["isDisabled"], ["variant"], ["size"], ["testId"], ["LayoutOrder"]}]
       47 SETTABLEKS                       R12 R15 K8 ["text"]
       49 DUPTABLE                         R16 K20 [{"iconName", "onActivated"}]
       50 GETUPVAL                         R17 5
       51 GETTABLEKS                       R17 R17 K21 ["X"]
       53 SETTABLEKS                       R17 R16 K19 ["iconName"]
       55 NEWCLOSURE                       R17 P2
       56 CAPTURE                          VAL R0
       57 CAPTURE                          VAL R12
       58 SETTABLEKS                       R17 R16 K10 ["onActivated"]
       60 SETTABLEKS                       R16 R15 K9 ["trailing"]
       62 DUPCLOSURE                       R16 K22 [PROTO_3]
       63 SETTABLEKS                       R16 R15 K10 ["onActivated"]
       65 GETTABLEKS                       R16 R0 K13 ["isDisabled"]
       67 SETTABLEKS                       R16 R15 K13 ["isDisabled"]
       69 GETUPVAL                         R16 6
       70 GETTABLEKS                       R16 R16 K23 ["Standard"]
       72 SETTABLEKS                       R16 R15 K14 ["variant"]
       74 GETUPVAL                         R16 7
       75 GETTABLEKS                       R16 R16 K24 ["Small"]
       77 SETTABLEKS                       R16 R15 K15 ["size"]
       79 GETUPVAL                         R16 8
       80 GETTABLEKS                       R16 R16 K25 ["HttpDomains"]
       82 GETTABLEKS                       R16 R16 K26 ["DomainRow"]
       84 MOVE                             R17 R12
       85 CALL                             R16 1 1
       86 SETTABLEKS                       R16 R15 K16 ["testId"]
       88 MOVE                             R16 R7
       89 CALL                             R16 0 1
       90 SETTABLEKS                       R16 R15 K17 ["LayoutOrder"]
       92 CALL                             R13 2 1
       93 SETTABLE                         R13 R6 R12
       94 FORGLOOP                         R8 2 ; [-51]
       96 GETUPVAL                         R8 3
       97 GETUPVAL                         R9 9
       98 DUPTABLE                         R10 K29 [{["tag"] = "col gap-xsmall size-full-0 auto-y padding-right-medium", ["testId"], ["LayoutOrder"]}]
       99 GETUPVAL                         R11 8
      100 GETTABLEKS                       R11 R11 K25 ["HttpDomains"]
      102 GETTABLEKS                       R11 R11 K30 ["Container"]
      104 SETTABLEKS                       R11 R10 K16 ["testId"]
      106 GETTABLEKS                       R11 R0 K17 ["LayoutOrder"]
      108 SETTABLEKS                       R11 R10 K17 ["LayoutOrder"]
      110 DUPTABLE                         R11 K34 [{"Header", "DomainList", "AddRow"}]
      111 GETUPVAL                         R12 3
      112 GETUPVAL                         R13 10
      113 DUPTABLE                         R14 K38 [{["tag"] = "size-full-0 auto-y text-label-small text-wrap text-align-x-left content-emphasis", ["fontStyle"], ["Text"], ["LayoutOrder"]}]
      114 DUPTABLE                         R15 K40 [{"Font"}]
      115 GETIMPORT                        R16 K43 [Enum.Font.BuilderSansBold]
      117 SETTABLEKS                       R16 R15 K39 ["Font"]
      119 SETTABLEKS                       R15 R14 K36 ["fontStyle"]
      121 GETTABLEKS                       R15 R1 K31 ["Header"]
      123 SETTABLEKS                       R15 R14 K37 ["Text"]
      125 MOVE                             R15 R2
      126 CALL                             R15 0 1
      127 SETTABLEKS                       R15 R14 K17 ["LayoutOrder"]
      129 CALL                             R12 2 1
      130 SETTABLEKS                       R12 R11 K31 ["Header"]
      132 GETTABLEKS                       R14 R0 K7 ["domains"]
      134 LENGTH                           R13 R14
      135 LOADN                            R14 0
      136 JUMPIFNOTLT                      R14 R13 ; [+25]
      138 GETUPVAL                         R12 3
      139 GETUPVAL                         R13 9
      140 DUPTABLE                         R14 K46 [{["tag"] = "size-full-0 auto-xy", ["layout"], ["LayoutOrder"]}]
      141 DUPTABLE                         R15 K51 [{["FillDirection"], ["Padding"], ["Wraps"] = True}]
      142 GETIMPORT                        R16 K53 [Enum.FillDirection.Horizontal]
      144 SETTABLEKS                       R16 R15 K47 ["FillDirection"]
      146 GETIMPORT                        R16 K56 [UDim.new]
      148 LOADN                            R17 0
      149 LOADN                            R18 8
      150 CALL                             R16 2 1
      151 SETTABLEKS                       R16 R15 K48 ["Padding"]
      153 SETTABLEKS                       R15 R14 K45 ["layout"]
      155 MOVE                             R15 R2
      156 CALL                             R15 0 1
      157 SETTABLEKS                       R15 R14 K17 ["LayoutOrder"]
      159 MOVE                             R15 R6
      160 CALL                             R12 3 1
      161 JUMP                             ; [+12]
      162 GETUPVAL                         R12 3
      163 GETUPVAL                         R13 10
      164 DUPTABLE                         R14 K58 [{["tag"] = "size-full-0 auto-y padding-top-xsmall text-body-small text-align-x-left content-muted", ["Text"], ["LayoutOrder"]}]
      165 GETTABLEKS                       R15 R1 K59 ["NoDomains"]
      167 SETTABLEKS                       R15 R14 K37 ["Text"]
      169 MOVE                             R15 R2
      170 CALL                             R15 0 1
      171 SETTABLEKS                       R15 R14 K17 ["LayoutOrder"]
      173 CALL                             R12 2 1
      174 SETTABLEKS                       R12 R11 K32 ["DomainList"]
      176 GETUPVAL                         R12 3
      177 GETUPVAL                         R13 9
      178 DUPTABLE                         R14 K61 [{["tag"] = "row align-y-center gap-xsmall size-full-0 auto-y", ["LayoutOrder"]}]
      179 MOVE                             R15 R2
      180 CALL                             R15 0 1
      181 SETTABLEKS                       R15 R14 K17 ["LayoutOrder"]
      183 DUPTABLE                         R15 K64 [{"AddInputContainer", "AddButton"}]
      184 GETUPVAL                         R16 3
      185 GETUPVAL                         R17 9
      186 DUPTABLE                         R18 K67 [{["tag"] = "grow size-0-0 auto-y", ["LayoutOrder"] = 1}]
      187 DUPTABLE                         R19 K69 [{"AddInput"}]
      188 GETUPVAL                         R20 3
      189 GETUPVAL                         R21 11
      190 DUPTABLE                         R22 K75 [{["width"], ["placeholder"], ["text"], ["label"] = "", ["onChanged"], ["onReturnPressed"], ["isDisabled"], ["size"], ["testId"]}]
      191 GETIMPORT                        R23 K56 [UDim.new]
      193 LOADN                            R24 1
      194 LOADN                            R25 0
      195 CALL                             R23 2 1
      196 SETTABLEKS                       R23 R22 K70 ["width"]
      198 GETTABLEKS                       R23 R1 K76 ["Placeholder"]
      200 SETTABLEKS                       R23 R22 K71 ["placeholder"]
      202 SETTABLEKS                       R3 R22 K8 ["text"]
      204 SETTABLEKS                       R4 R22 K73 ["onChanged"]
      206 SETTABLEKS                       R5 R22 K74 ["onReturnPressed"]
      208 GETTABLEKS                       R23 R0 K13 ["isDisabled"]
      210 SETTABLEKS                       R23 R22 K13 ["isDisabled"]
      212 GETUPVAL                         R23 12
      213 GETTABLEKS                       R23 R23 K77 ["XSmall"]
      215 SETTABLEKS                       R23 R22 K15 ["size"]
      217 GETUPVAL                         R23 8
      218 GETTABLEKS                       R23 R23 K25 ["HttpDomains"]
      220 GETTABLEKS                       R23 R23 K68 ["AddInput"]
      222 SETTABLEKS                       R23 R22 K16 ["testId"]
      224 CALL                             R20 2 1
      225 SETTABLEKS                       R20 R19 K68 ["AddInput"]
      227 CALL                             R16 3 1
      228 SETTABLEKS                       R16 R15 K62 ["AddInputContainer"]
      230 GETUPVAL                         R16 3
      231 GETUPVAL                         R17 13
      232 DUPTABLE                         R18 K80 [{["text"], ["icon"], ["size"], ["variant"], ["isDisabled"], ["onActivated"], ["testId"], ["LayoutOrder"] = 2}]
      233 GETTABLEKS                       R19 R1 K81 ["Add"]
      235 SETTABLEKS                       R19 R18 K8 ["text"]
      237 GETUPVAL                         R19 5
      238 GETTABLEKS                       R19 R19 K82 ["PlusSmall"]
      240 SETTABLEKS                       R19 R18 K78 ["icon"]
      242 GETUPVAL                         R19 14
      243 GETTABLEKS                       R19 R19 K24 ["Small"]
      245 SETTABLEKS                       R19 R18 K15 ["size"]
      247 GETUPVAL                         R19 15
      248 GETTABLEKS                       R19 R19 K23 ["Standard"]
      250 SETTABLEKS                       R19 R18 K14 ["variant"]
      252 GETTABLEKS                       R19 R0 K13 ["isDisabled"]
      254 JUMPIF                           R19 ; [+9]
      255 GETIMPORT                        R20 K85 [string.match]
      257 MOVE                             R21 R3
      258 LOADK                            R22 K86 ["%S"]
      259 CALL                             R20 2 1
      260 JUMPIFEQKNIL                     R20 ; [+2]
      262 LOADB                            R19 0 +1
      263 LOADB                            R19 1
      264 SETTABLEKS                       R19 R18 K13 ["isDisabled"]
      266 SETTABLEKS                       R5 R18 K10 ["onActivated"]
      268 GETUPVAL                         R19 8
      269 GETTABLEKS                       R19 R19 K25 ["HttpDomains"]
      271 GETTABLEKS                       R19 R19 K63 ["AddButton"]
      273 SETTABLEKS                       R19 R18 K16 ["testId"]
      275 CALL                             R16 2 1
      276 SETTABLEKS                       R16 R15 K63 ["AddButton"]
      278 CALL                             R12 3 1
      279 SETTABLEKS                       R12 R11 K33 ["AddRow"]
      281 CALL                             R8 3 -1
      282 RETURN                           R8 -1

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
