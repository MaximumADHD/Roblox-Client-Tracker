PROTO_0:
        0 DUPTABLE                         R0 K9 [{"Title", "NameLabel", "NamePlaceholder", "DescriptionLabel", "DescriptionPlaceholder", "Create", "Cancel", "NameInvalid", "NameTaken"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K10 ["Skills"]
        3 LOADK                            R4 K11 ["CreateModalTitle"]
        4 NAMECALL                         R1 R1 K12 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Title"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K10 ["Skills"]
       11 LOADK                            R4 K13 ["CreateModalNameLabel"]
       12 NAMECALL                         R1 R1 K12 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["NameLabel"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K10 ["Skills"]
       19 LOADK                            R4 K14 ["CreateModalNamePlaceholder"]
       20 NAMECALL                         R1 R1 K12 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["NamePlaceholder"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K10 ["Skills"]
       27 LOADK                            R4 K15 ["CreateModalDescriptionLabel"]
       28 NAMECALL                         R1 R1 K12 ["getText"]
       30 CALL                             R1 3 1
       31 SETTABLEKS                       R1 R0 K3 ["DescriptionLabel"]
       33 GETUPVAL                         R1 0
       34 LOADK                            R3 K10 ["Skills"]
       35 LOADK                            R4 K16 ["CreateModalDescriptionPlaceholder"]
       36 NAMECALL                         R1 R1 K12 ["getText"]
       38 CALL                             R1 3 1
       39 SETTABLEKS                       R1 R0 K4 ["DescriptionPlaceholder"]
       41 GETUPVAL                         R1 0
       42 LOADK                            R3 K10 ["Skills"]
       43 LOADK                            R4 K17 ["CreateModalCreate"]
       44 NAMECALL                         R1 R1 K12 ["getText"]
       46 CALL                             R1 3 1
       47 SETTABLEKS                       R1 R0 K5 ["Create"]
       49 GETUPVAL                         R1 0
       50 LOADK                            R3 K10 ["Skills"]
       51 LOADK                            R4 K18 ["CreateModalCancel"]
       52 NAMECALL                         R1 R1 K12 ["getText"]
       54 CALL                             R1 3 1
       55 SETTABLEKS                       R1 R0 K6 ["Cancel"]
       57 GETUPVAL                         R1 0
       58 LOADK                            R3 K10 ["Skills"]
       59 LOADK                            R4 K19 ["CreateNameInvalid"]
       60 NAMECALL                         R1 R1 K12 ["getText"]
       62 CALL                             R1 3 1
       63 SETTABLEKS                       R1 R0 K7 ["NameInvalid"]
       65 GETUPVAL                         R1 0
       66 LOADK                            R3 K10 ["Skills"]
       67 LOADK                            R4 K20 ["CreateNameTaken"]
       68 NAMECALL                         R1 R1 K12 ["getText"]
       70 CALL                             R1 3 1
       71 SETTABLEKS                       R1 R0 K8 ["NameTaken"]
       73 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["onCreate"]
        6 GETUPVAL                         R1 2
        7 GETUPVAL                         R2 3
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_0]
        4 CAPTURE                          UPVAL U1
        5 NEWTABLE                         R3 0 1
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K2 ["locale"]
       10 SETLIST                          R3 R4 1 [1]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K3 ["useState"]
       16 LOADK                            R3 K4 [""]
       17 CALL                             R2 1 2
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K3 ["useState"]
       21 LOADK                            R5 K4 [""]
       22 CALL                             R4 1 2
       23 LOADNIL                          R6
       24 JUMPIFEQKS                       R2 K4 [""] ; [+23]
       26 LOADK                            R9 K5 ["^[%w_%-]+$"]
       27 NAMECALL                         R7 R2 K6 ["match"]
       29 CALL                             R7 2 1
       30 JUMPIFNOT                        R7 ; [+7]
       31 LOADN                            R9 1
       32 LOADN                            R10 4
       33 NAMECALL                         R7 R2 K7 ["sub"]
       35 CALL                             R7 3 1
       36 JUMPIFNOTEQKS                    R7 K8 ["rbx-"] ; [+4]
       38 GETTABLEKS                       R6 R1 K9 ["NameInvalid"]
       40 JUMP                             ; [+7]
       41 GETTABLEKS                       R8 R0 K10 ["existingUserSkills"]
       43 GETTABLE                         R7 R8 R2
       44 JUMPIFEQKNIL                     R7 ; [+3]
       46 GETTABLEKS                       R6 R1 K11 ["NameTaken"]
       48 LOADB                            R7 0
       49 JUMPIFEQKS                       R2 K4 [""] ; [+8]
       51 LOADB                            R7 0
       52 JUMPIFNOTEQKNIL                  R6 ; [+5]
       54 JUMPIFNOTEQKS                    R4 K4 [""] ; [+2]
       56 LOADB                            R7 0 +1
       57 LOADB                            R7 1
       58 NEWCLOSURE                       R8 P1
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R0
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R4
       63 GETUPVAL                         R9 2
       64 CALL                             R9 0 1
       65 GETUPVAL                         R10 3
       66 GETUPVAL                         R11 4
       67 GETTABLEKS                       R11 R11 K12 ["Root"]
       69 DUPTABLE                         R12 K19 [{["testId"], ["isOpen"] = True, ["size"], ["preferCenterSheet"] = True, ["onClose"]}]
       70 GETUPVAL                         R13 5
       71 GETTABLEKS                       R13 R13 K20 ["Skills"]
       73 GETTABLEKS                       R13 R13 K21 ["CreateModal"]
       75 GETTABLEKS                       R13 R13 K22 ["Container"]
       77 SETTABLEKS                       R13 R12 K13 ["testId"]
       79 GETUPVAL                         R13 6
       80 GETTABLEKS                       R13 R13 K23 ["Small"]
       82 SETTABLEKS                       R13 R12 K16 ["size"]
       84 GETTABLEKS                       R13 R0 K18 ["onClose"]
       86 SETTABLEKS                       R13 R12 K18 ["onClose"]
       88 DUPTABLE                         R13 K27 [{"Header", "Content", "Actions"}]
       89 GETUPVAL                         R14 3
       90 GETUPVAL                         R15 4
       91 GETTABLEKS                       R15 R15 K24 ["Header"]
       93 DUPTABLE                         R16 K30 [{["hasCloseAffordance"] = False}]
       94 DUPTABLE                         R17 K32 [{"Title"}]
       95 GETUPVAL                         R18 3
       96 GETUPVAL                         R19 7
       97 DUPTABLE                         R20 K36 [{["tag"] = "auto-xy text-title-medium", ["Text"]}]
       98 GETTABLEKS                       R21 R1 K31 ["Title"]
      100 SETTABLEKS                       R21 R20 K35 ["Text"]
      102 CALL                             R18 2 1
      103 SETTABLEKS                       R18 R17 K31 ["Title"]
      105 CALL                             R14 3 1
      106 SETTABLEKS                       R14 R13 K24 ["Header"]
      108 GETUPVAL                         R14 3
      109 GETUPVAL                         R15 4
      110 GETTABLEKS                       R15 R15 K25 ["Content"]
      112 DUPTABLE                         R16 K38 [{"LayoutOrder"}]
      113 MOVE                             R17 R9
      114 CALL                             R17 0 1
      115 SETTABLEKS                       R17 R16 K37 ["LayoutOrder"]
      117 DUPTABLE                         R17 K40 [{"Inputs"}]
      118 GETUPVAL                         R18 3
      119 GETUPVAL                         R19 8
      120 DUPTABLE                         R20 K42 [{["tag"] = "col gap-small size-full-0 auto-y padding-y-large"}]
      121 DUPTABLE                         R21 K45 [{"NameInput", "DescriptionInput"}]
      122 GETUPVAL                         R22 3
      123 GETUPVAL                         R23 9
      124 DUPTABLE                         R24 K53 [{"LayoutOrder", "placeholder", "label", "onChanged", "text", "size", "width", "hasError", "hint", "testId"}]
      125 MOVE                             R25 R9
      126 CALL                             R25 0 1
      127 SETTABLEKS                       R25 R24 K37 ["LayoutOrder"]
      129 GETTABLEKS                       R25 R1 K54 ["NamePlaceholder"]
      131 SETTABLEKS                       R25 R24 K46 ["placeholder"]
      133 GETTABLEKS                       R25 R1 K55 ["NameLabel"]
      135 SETTABLEKS                       R25 R24 K47 ["label"]
      137 SETTABLEKS                       R3 R24 K48 ["onChanged"]
      139 SETTABLEKS                       R2 R24 K49 ["text"]
      141 GETUPVAL                         R25 10
      142 GETTABLEKS                       R25 R25 K56 ["XSmall"]
      144 SETTABLEKS                       R25 R24 K16 ["size"]
      146 GETUPVAL                         R25 11
      147 SETTABLEKS                       R25 R24 K50 ["width"]
      149 JUMPIFNOTEQKNIL                  R6 ; [+2]
      151 LOADB                            R25 0 +1
      152 LOADB                            R25 1
      153 SETTABLEKS                       R25 R24 K51 ["hasError"]
      155 SETTABLEKS                       R6 R24 K52 ["hint"]
      157 GETUPVAL                         R25 5
      158 GETTABLEKS                       R25 R25 K20 ["Skills"]
      160 GETTABLEKS                       R25 R25 K21 ["CreateModal"]
      162 GETTABLEKS                       R25 R25 K43 ["NameInput"]
      164 SETTABLEKS                       R25 R24 K13 ["testId"]
      166 CALL                             R22 2 1
      167 SETTABLEKS                       R22 R21 K43 ["NameInput"]
      169 GETUPVAL                         R22 3
      170 GETUPVAL                         R23 9
      171 DUPTABLE                         R24 K57 [{"LayoutOrder", "placeholder", "label", "onChanged", "text", "size", "width", "testId"}]
      172 MOVE                             R25 R9
      173 CALL                             R25 0 1
      174 SETTABLEKS                       R25 R24 K37 ["LayoutOrder"]
      176 GETTABLEKS                       R25 R1 K58 ["DescriptionPlaceholder"]
      178 SETTABLEKS                       R25 R24 K46 ["placeholder"]
      180 GETTABLEKS                       R25 R1 K59 ["DescriptionLabel"]
      182 SETTABLEKS                       R25 R24 K47 ["label"]
      184 SETTABLEKS                       R5 R24 K48 ["onChanged"]
      186 SETTABLEKS                       R4 R24 K49 ["text"]
      188 GETUPVAL                         R25 10
      189 GETTABLEKS                       R25 R25 K56 ["XSmall"]
      191 SETTABLEKS                       R25 R24 K16 ["size"]
      193 GETUPVAL                         R25 11
      194 SETTABLEKS                       R25 R24 K50 ["width"]
      196 GETUPVAL                         R25 5
      197 GETTABLEKS                       R25 R25 K20 ["Skills"]
      199 GETTABLEKS                       R25 R25 K21 ["CreateModal"]
      201 GETTABLEKS                       R25 R25 K44 ["DescriptionInput"]
      203 SETTABLEKS                       R25 R24 K13 ["testId"]
      205 CALL                             R22 2 1
      206 SETTABLEKS                       R22 R21 K44 ["DescriptionInput"]
      208 CALL                             R18 3 1
      209 SETTABLEKS                       R18 R17 K39 ["Inputs"]
      211 CALL                             R14 3 1
      212 SETTABLEKS                       R14 R13 K25 ["Content"]
      214 GETUPVAL                         R14 3
      215 GETUPVAL                         R15 4
      216 GETTABLEKS                       R15 R15 K26 ["Actions"]
      218 DUPTABLE                         R16 K38 [{"LayoutOrder"}]
      219 MOVE                             R17 R9
      220 CALL                             R17 0 1
      221 SETTABLEKS                       R17 R16 K37 ["LayoutOrder"]
      223 DUPTABLE                         R17 K62 [{"CreateButton", "CancelButton"}]
      224 GETUPVAL                         R18 3
      225 GETUPVAL                         R19 12
      226 DUPTABLE                         R20 K66 [{"text", "variant", "onActivated", "isDisabled", "size", "testId", "LayoutOrder"}]
      227 GETTABLEKS                       R21 R1 K67 ["Create"]
      229 SETTABLEKS                       R21 R20 K49 ["text"]
      231 GETUPVAL                         R21 13
      232 GETTABLEKS                       R21 R21 K68 ["Emphasis"]
      234 SETTABLEKS                       R21 R20 K63 ["variant"]
      236 SETTABLEKS                       R8 R20 K64 ["onActivated"]
      238 NOT                              R21 R7
      239 SETTABLEKS                       R21 R20 K65 ["isDisabled"]
      241 GETUPVAL                         R21 14
      242 GETTABLEKS                       R21 R21 K56 ["XSmall"]
      244 SETTABLEKS                       R21 R20 K16 ["size"]
      246 GETUPVAL                         R21 5
      247 GETTABLEKS                       R21 R21 K20 ["Skills"]
      249 GETTABLEKS                       R21 R21 K21 ["CreateModal"]
      251 GETTABLEKS                       R21 R21 K60 ["CreateButton"]
      253 SETTABLEKS                       R21 R20 K13 ["testId"]
      255 MOVE                             R21 R9
      256 CALL                             R21 0 1
      257 SETTABLEKS                       R21 R20 K37 ["LayoutOrder"]
      259 CALL                             R18 2 1
      260 SETTABLEKS                       R18 R17 K60 ["CreateButton"]
      262 GETUPVAL                         R18 3
      263 GETUPVAL                         R19 12
      264 DUPTABLE                         R20 K69 [{"text", "variant", "onActivated", "size", "testId", "LayoutOrder"}]
      265 GETTABLEKS                       R21 R1 K70 ["Cancel"]
      267 SETTABLEKS                       R21 R20 K49 ["text"]
      269 GETUPVAL                         R21 13
      270 GETTABLEKS                       R21 R21 K71 ["Standard"]
      272 SETTABLEKS                       R21 R20 K63 ["variant"]
      274 GETTABLEKS                       R21 R0 K18 ["onClose"]
      276 SETTABLEKS                       R21 R20 K64 ["onActivated"]
      278 GETUPVAL                         R21 14
      279 GETTABLEKS                       R21 R21 K56 ["XSmall"]
      281 SETTABLEKS                       R21 R20 K16 ["size"]
      283 GETUPVAL                         R21 5
      284 GETTABLEKS                       R21 R21 K20 ["Skills"]
      286 GETTABLEKS                       R21 R21 K21 ["CreateModal"]
      288 GETTABLEKS                       R21 R21 K61 ["CancelButton"]
      290 SETTABLEKS                       R21 R20 K13 ["testId"]
      292 MOVE                             R21 R9
      293 CALL                             R21 0 1
      294 SETTABLEKS                       R21 R20 K37 ["LayoutOrder"]
      296 CALL                             R18 2 1
      297 SETTABLEKS                       R18 R17 K61 ["CancelButton"]
      299 CALL                             R14 3 1
      300 SETTABLEKS                       R14 R13 K26 ["Actions"]
      302 CALL                             R10 3 -1
      303 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Skills"]
       32 GETTABLEKS                       R5 R5 K11 ["SkillDefinition"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Util"]
       39 GETTABLEKS                       R6 R6 K13 ["TestIds"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K14 ["Resources"]
       46 GETTABLEKS                       R7 R7 K15 ["Localization"]
       48 GETTABLEKS                       R7 R7 K16 ["Translator"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R7 R1 K17 ["Button"]
       53 GETTABLEKS                       R8 R1 K18 ["Sheet"]
       55 GETTABLEKS                       R9 R1 K19 ["Text"]
       57 GETTABLEKS                       R10 R1 K20 ["TextInput"]
       59 GETTABLEKS                       R11 R1 K21 ["View"]
       61 GETTABLEKS                       R12 R1 K22 ["Enums"]
       63 GETTABLEKS                       R12 R12 K23 ["ButtonVariant"]
       65 GETTABLEKS                       R13 R1 K22 ["Enums"]
       67 GETTABLEKS                       R13 R13 K24 ["ButtonSize"]
       69 GETTABLEKS                       R14 R1 K22 ["Enums"]
       71 GETTABLEKS                       R14 R14 K25 ["DialogSize"]
       73 GETTABLEKS                       R15 R1 K22 ["Enums"]
       75 GETTABLEKS                       R15 R15 K26 ["InputSize"]
       77 GETTABLEKS                       R16 R3 K27 ["createNextOrder"]
       79 GETTABLEKS                       R17 R2 K28 ["createElement"]
       81 GETIMPORT                        R18 K31 [UDim.new]
       83 LOADN                            R19 1
       84 LOADN                            R20 0
       85 CALL                             R18 2 1
       86 DUPCLOSURE                       R19 K32 [PROTO_2]
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R16
       90 CAPTURE                          VAL R17
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R14
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R11
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R15
       98 CAPTURE                          VAL R18
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R12
      101 CAPTURE                          VAL R13
      102 RETURN                           R19 1
