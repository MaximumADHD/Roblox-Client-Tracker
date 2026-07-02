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
       63 NEWTABLE                         R9 0 2
       65 DUPTABLE                         R10 K18 [{"text", "variant", "onActivated", "isDisabled", "size", "testId"}]
       66 GETTABLEKS                       R11 R1 K19 ["Create"]
       68 SETTABLEKS                       R11 R10 K12 ["text"]
       70 GETUPVAL                         R11 2
       71 GETTABLEKS                       R11 R11 K20 ["Emphasis"]
       73 SETTABLEKS                       R11 R10 K13 ["variant"]
       75 SETTABLEKS                       R8 R10 K14 ["onActivated"]
       77 NOT                              R11 R7
       78 SETTABLEKS                       R11 R10 K15 ["isDisabled"]
       80 GETUPVAL                         R11 3
       81 GETTABLEKS                       R11 R11 K21 ["XSmall"]
       83 SETTABLEKS                       R11 R10 K16 ["size"]
       85 GETUPVAL                         R11 4
       86 GETTABLEKS                       R11 R11 K22 ["Skills"]
       88 GETTABLEKS                       R11 R11 K23 ["CreateModal"]
       90 GETTABLEKS                       R11 R11 K24 ["CreateButton"]
       92 SETTABLEKS                       R11 R10 K17 ["testId"]
       94 DUPTABLE                         R11 K25 [{"text", "variant", "onActivated", "size", "testId"}]
       95 GETTABLEKS                       R12 R1 K26 ["Cancel"]
       97 SETTABLEKS                       R12 R11 K12 ["text"]
       99 GETUPVAL                         R12 2
      100 GETTABLEKS                       R12 R12 K27 ["Standard"]
      102 SETTABLEKS                       R12 R11 K13 ["variant"]
      104 GETTABLEKS                       R12 R0 K28 ["onClose"]
      106 SETTABLEKS                       R12 R11 K14 ["onActivated"]
      108 GETUPVAL                         R12 3
      109 GETTABLEKS                       R12 R12 K21 ["XSmall"]
      111 SETTABLEKS                       R12 R11 K16 ["size"]
      113 GETUPVAL                         R12 4
      114 GETTABLEKS                       R12 R12 K22 ["Skills"]
      116 GETTABLEKS                       R12 R12 K23 ["CreateModal"]
      118 GETTABLEKS                       R12 R12 K29 ["CancelButton"]
      120 SETTABLEKS                       R12 R11 K17 ["testId"]
      122 SETLIST                          R9 R10 2 [1]
      124 GETUPVAL                         R10 5
      125 CALL                             R10 0 1
      126 GETUPVAL                         R11 5
      127 CALL                             R11 0 1
      128 GETUPVAL                         R12 6
      129 GETUPVAL                         R13 7
      130 GETTABLEKS                       R13 R13 K30 ["Root"]
      132 DUPTABLE                         R14 K36 [{["testId"], ["size"], ["hasBackdrop"] = True, ["disablePortal"] = False, ["title"]}]
      133 GETUPVAL                         R15 4
      134 GETTABLEKS                       R15 R15 K22 ["Skills"]
      136 GETTABLEKS                       R15 R15 K23 ["CreateModal"]
      138 GETTABLEKS                       R15 R15 K37 ["Container"]
      140 SETTABLEKS                       R15 R14 K17 ["testId"]
      142 GETUPVAL                         R15 8
      143 GETTABLEKS                       R15 R15 K38 ["Small"]
      145 SETTABLEKS                       R15 R14 K16 ["size"]
      147 GETTABLEKS                       R15 R1 K39 ["Title"]
      149 SETTABLEKS                       R15 R14 K35 ["title"]
      151 DUPTABLE                         R15 K42 [{"DialogContent", "DialogActions"}]
      152 GETUPVAL                         R16 6
      153 GETUPVAL                         R17 7
      154 GETTABLEKS                       R17 R17 K43 ["Content"]
      156 DUPTABLE                         R18 K45 [{"LayoutOrder"}]
      157 MOVE                             R19 R10
      158 CALL                             R19 0 1
      159 SETTABLEKS                       R19 R18 K44 ["LayoutOrder"]
      161 DUPTABLE                         R19 K47 [{"Inputs"}]
      162 GETUPVAL                         R20 6
      163 GETUPVAL                         R21 9
      164 DUPTABLE                         R22 K50 [{["tag"] = "col gap-small size-full-0 auto-y padding-y-large"}]
      165 DUPTABLE                         R23 K53 [{"NameInput", "DescriptionInput"}]
      166 GETUPVAL                         R24 6
      167 GETUPVAL                         R25 10
      168 DUPTABLE                         R26 K60 [{"LayoutOrder", "placeholder", "label", "onChanged", "text", "size", "width", "hasError", "hint", "testId"}]
      169 MOVE                             R27 R11
      170 CALL                             R27 0 1
      171 SETTABLEKS                       R27 R26 K44 ["LayoutOrder"]
      173 GETTABLEKS                       R27 R1 K61 ["NamePlaceholder"]
      175 SETTABLEKS                       R27 R26 K54 ["placeholder"]
      177 GETTABLEKS                       R27 R1 K62 ["NameLabel"]
      179 SETTABLEKS                       R27 R26 K55 ["label"]
      181 SETTABLEKS                       R3 R26 K56 ["onChanged"]
      183 SETTABLEKS                       R2 R26 K12 ["text"]
      185 GETUPVAL                         R27 11
      186 GETTABLEKS                       R27 R27 K21 ["XSmall"]
      188 SETTABLEKS                       R27 R26 K16 ["size"]
      190 GETUPVAL                         R27 12
      191 SETTABLEKS                       R27 R26 K57 ["width"]
      193 JUMPIFNOTEQKNIL                  R6 ; [+2]
      195 LOADB                            R27 0 +1
      196 LOADB                            R27 1
      197 SETTABLEKS                       R27 R26 K58 ["hasError"]
      199 SETTABLEKS                       R6 R26 K59 ["hint"]
      201 GETUPVAL                         R27 4
      202 GETTABLEKS                       R27 R27 K22 ["Skills"]
      204 GETTABLEKS                       R27 R27 K23 ["CreateModal"]
      206 GETTABLEKS                       R27 R27 K51 ["NameInput"]
      208 SETTABLEKS                       R27 R26 K17 ["testId"]
      210 CALL                             R24 2 1
      211 SETTABLEKS                       R24 R23 K51 ["NameInput"]
      213 GETUPVAL                         R24 6
      214 GETUPVAL                         R25 10
      215 DUPTABLE                         R26 K63 [{"LayoutOrder", "placeholder", "label", "onChanged", "text", "size", "width", "testId"}]
      216 MOVE                             R27 R11
      217 CALL                             R27 0 1
      218 SETTABLEKS                       R27 R26 K44 ["LayoutOrder"]
      220 GETTABLEKS                       R27 R1 K64 ["DescriptionPlaceholder"]
      222 SETTABLEKS                       R27 R26 K54 ["placeholder"]
      224 GETTABLEKS                       R27 R1 K65 ["DescriptionLabel"]
      226 SETTABLEKS                       R27 R26 K55 ["label"]
      228 SETTABLEKS                       R5 R26 K56 ["onChanged"]
      230 SETTABLEKS                       R4 R26 K12 ["text"]
      232 GETUPVAL                         R27 11
      233 GETTABLEKS                       R27 R27 K21 ["XSmall"]
      235 SETTABLEKS                       R27 R26 K16 ["size"]
      237 GETUPVAL                         R27 12
      238 SETTABLEKS                       R27 R26 K57 ["width"]
      240 GETUPVAL                         R27 4
      241 GETTABLEKS                       R27 R27 K22 ["Skills"]
      243 GETTABLEKS                       R27 R27 K23 ["CreateModal"]
      245 GETTABLEKS                       R27 R27 K52 ["DescriptionInput"]
      247 SETTABLEKS                       R27 R26 K17 ["testId"]
      249 CALL                             R24 2 1
      250 SETTABLEKS                       R24 R23 K52 ["DescriptionInput"]
      252 CALL                             R20 3 1
      253 SETTABLEKS                       R20 R19 K46 ["Inputs"]
      255 CALL                             R16 3 1
      256 SETTABLEKS                       R16 R15 K40 ["DialogContent"]
      258 GETUPVAL                         R16 6
      259 GETUPVAL                         R17 7
      260 GETTABLEKS                       R17 R17 K66 ["Actions"]
      262 DUPTABLE                         R18 K68 [{"LayoutOrder", "actions"}]
      263 MOVE                             R19 R10
      264 CALL                             R19 0 1
      265 SETTABLEKS                       R19 R18 K44 ["LayoutOrder"]
      267 SETTABLEKS                       R9 R18 K67 ["actions"]
      269 CALL                             R16 2 1
      270 SETTABLEKS                       R16 R15 K41 ["DialogActions"]
      272 CALL                             R12 3 -1
      273 RETURN                           R12 -1

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
       51 GETTABLEKS                       R7 R1 K17 ["Dialog"]
       53 GETTABLEKS                       R8 R1 K18 ["TextInput"]
       55 GETTABLEKS                       R9 R1 K19 ["View"]
       57 GETTABLEKS                       R10 R1 K20 ["Enums"]
       59 GETTABLEKS                       R10 R10 K21 ["ButtonVariant"]
       61 GETTABLEKS                       R11 R1 K20 ["Enums"]
       63 GETTABLEKS                       R11 R11 K22 ["ButtonSize"]
       65 GETTABLEKS                       R12 R1 K20 ["Enums"]
       67 GETTABLEKS                       R12 R12 K23 ["DialogSize"]
       69 GETTABLEKS                       R13 R1 K20 ["Enums"]
       71 GETTABLEKS                       R13 R13 K24 ["InputSize"]
       73 GETTABLEKS                       R14 R3 K25 ["createNextOrder"]
       75 GETTABLEKS                       R15 R2 K26 ["createElement"]
       77 GETIMPORT                        R16 K29 [UDim.new]
       79 LOADN                            R17 0
       80 LOADN                            R18 280
       81 CALL                             R16 2 1
       82 DUPCLOSURE                       R17 K30 [PROTO_2]
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R11
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R14
       89 CAPTURE                          VAL R15
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R12
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R13
       95 CAPTURE                          VAL R16
       96 RETURN                           R17 1
