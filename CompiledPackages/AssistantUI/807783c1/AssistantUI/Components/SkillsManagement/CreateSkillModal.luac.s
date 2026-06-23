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
       24 JUMPIFEQKS                       R2 K4 [""] ; [+16]
       26 LOADK                            R9 K5 ["^[%w_%-]+$"]
       27 NAMECALL                         R7 R2 K6 ["match"]
       29 CALL                             R7 2 1
       30 JUMPIF                           R7 ; [+3]
       31 GETTABLEKS                       R6 R1 K7 ["NameInvalid"]
       33 JUMP                             ; [+7]
       34 GETTABLEKS                       R8 R0 K8 ["existingUserSkills"]
       36 GETTABLE                         R7 R8 R2
       37 JUMPIFEQKNIL                     R7 ; [+3]
       39 GETTABLEKS                       R6 R1 K9 ["NameTaken"]
       41 LOADB                            R7 0
       42 JUMPIFEQKS                       R2 K4 [""] ; [+8]
       44 LOADB                            R7 0
       45 JUMPIFNOTEQKNIL                  R6 ; [+5]
       47 JUMPIFNOTEQKS                    R4 K4 [""] ; [+2]
       49 LOADB                            R7 0 +1
       50 LOADB                            R7 1
       51 NEWCLOSURE                       R8 P1
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R0
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R4
       56 NEWTABLE                         R9 0 2
       58 DUPTABLE                         R10 K16 [{"text", "variant", "onActivated", "isDisabled", "size", "testId"}]
       59 GETTABLEKS                       R11 R1 K17 ["Create"]
       61 SETTABLEKS                       R11 R10 K10 ["text"]
       63 GETUPVAL                         R11 2
       64 GETTABLEKS                       R11 R11 K18 ["Emphasis"]
       66 SETTABLEKS                       R11 R10 K11 ["variant"]
       68 SETTABLEKS                       R8 R10 K12 ["onActivated"]
       70 NOT                              R11 R7
       71 SETTABLEKS                       R11 R10 K13 ["isDisabled"]
       73 GETUPVAL                         R11 3
       74 GETTABLEKS                       R11 R11 K19 ["XSmall"]
       76 SETTABLEKS                       R11 R10 K14 ["size"]
       78 GETUPVAL                         R11 4
       79 GETTABLEKS                       R11 R11 K20 ["Skills"]
       81 GETTABLEKS                       R11 R11 K21 ["CreateModal"]
       83 GETTABLEKS                       R11 R11 K22 ["CreateButton"]
       85 SETTABLEKS                       R11 R10 K15 ["testId"]
       87 DUPTABLE                         R11 K23 [{"text", "variant", "onActivated", "size", "testId"}]
       88 GETTABLEKS                       R12 R1 K24 ["Cancel"]
       90 SETTABLEKS                       R12 R11 K10 ["text"]
       92 GETUPVAL                         R12 2
       93 GETTABLEKS                       R12 R12 K25 ["Standard"]
       95 SETTABLEKS                       R12 R11 K11 ["variant"]
       97 GETTABLEKS                       R12 R0 K26 ["onClose"]
       99 SETTABLEKS                       R12 R11 K12 ["onActivated"]
      101 GETUPVAL                         R12 3
      102 GETTABLEKS                       R12 R12 K19 ["XSmall"]
      104 SETTABLEKS                       R12 R11 K14 ["size"]
      106 GETUPVAL                         R12 4
      107 GETTABLEKS                       R12 R12 K20 ["Skills"]
      109 GETTABLEKS                       R12 R12 K21 ["CreateModal"]
      111 GETTABLEKS                       R12 R12 K27 ["CancelButton"]
      113 SETTABLEKS                       R12 R11 K15 ["testId"]
      115 SETLIST                          R9 R10 2 [1]
      117 GETUPVAL                         R10 5
      118 CALL                             R10 0 1
      119 GETUPVAL                         R11 5
      120 CALL                             R11 0 1
      121 GETUPVAL                         R12 6
      122 GETUPVAL                         R13 7
      123 GETTABLEKS                       R13 R13 K28 ["Root"]
      125 DUPTABLE                         R14 K32 [{"testId", "size", "hasBackdrop", "disablePortal", "title"}]
      126 GETUPVAL                         R15 4
      127 GETTABLEKS                       R15 R15 K20 ["Skills"]
      129 GETTABLEKS                       R15 R15 K21 ["CreateModal"]
      131 GETTABLEKS                       R15 R15 K33 ["Container"]
      133 SETTABLEKS                       R15 R14 K15 ["testId"]
      135 GETUPVAL                         R15 8
      136 GETTABLEKS                       R15 R15 K34 ["Small"]
      138 SETTABLEKS                       R15 R14 K14 ["size"]
      140 LOADB                            R15 1
      141 SETTABLEKS                       R15 R14 K29 ["hasBackdrop"]
      143 LOADB                            R15 0
      144 SETTABLEKS                       R15 R14 K30 ["disablePortal"]
      146 GETTABLEKS                       R15 R1 K35 ["Title"]
      148 SETTABLEKS                       R15 R14 K31 ["title"]
      150 DUPTABLE                         R15 K38 [{"DialogContent", "DialogActions"}]
      151 GETUPVAL                         R16 6
      152 GETUPVAL                         R17 7
      153 GETTABLEKS                       R17 R17 K39 ["Content"]
      155 DUPTABLE                         R18 K41 [{"LayoutOrder"}]
      156 MOVE                             R19 R10
      157 CALL                             R19 0 1
      158 SETTABLEKS                       R19 R18 K40 ["LayoutOrder"]
      160 DUPTABLE                         R19 K43 [{"Inputs"}]
      161 GETUPVAL                         R20 6
      162 GETUPVAL                         R21 9
      163 DUPTABLE                         R22 K45 [{"tag"}]
      164 LOADK                            R23 K46 ["col size-full-0 auto-y gap-small padding-y-large"]
      165 SETTABLEKS                       R23 R22 K44 ["tag"]
      167 DUPTABLE                         R23 K49 [{"NameInput", "DescriptionInput"}]
      168 GETUPVAL                         R24 6
      169 GETUPVAL                         R25 10
      170 DUPTABLE                         R26 K56 [{"LayoutOrder", "placeholder", "label", "onChanged", "text", "size", "width", "hasError", "hint", "testId"}]
      171 MOVE                             R27 R11
      172 CALL                             R27 0 1
      173 SETTABLEKS                       R27 R26 K40 ["LayoutOrder"]
      175 GETTABLEKS                       R27 R1 K57 ["NamePlaceholder"]
      177 SETTABLEKS                       R27 R26 K50 ["placeholder"]
      179 GETTABLEKS                       R27 R1 K58 ["NameLabel"]
      181 SETTABLEKS                       R27 R26 K51 ["label"]
      183 SETTABLEKS                       R3 R26 K52 ["onChanged"]
      185 SETTABLEKS                       R2 R26 K10 ["text"]
      187 GETUPVAL                         R27 11
      188 GETTABLEKS                       R27 R27 K19 ["XSmall"]
      190 SETTABLEKS                       R27 R26 K14 ["size"]
      192 GETUPVAL                         R27 12
      193 SETTABLEKS                       R27 R26 K53 ["width"]
      195 JUMPIFNOTEQKNIL                  R6 ; [+2]
      197 LOADB                            R27 0 +1
      198 LOADB                            R27 1
      199 SETTABLEKS                       R27 R26 K54 ["hasError"]
      201 SETTABLEKS                       R6 R26 K55 ["hint"]
      203 GETUPVAL                         R27 4
      204 GETTABLEKS                       R27 R27 K20 ["Skills"]
      206 GETTABLEKS                       R27 R27 K21 ["CreateModal"]
      208 GETTABLEKS                       R27 R27 K47 ["NameInput"]
      210 SETTABLEKS                       R27 R26 K15 ["testId"]
      212 CALL                             R24 2 1
      213 SETTABLEKS                       R24 R23 K47 ["NameInput"]
      215 GETUPVAL                         R24 6
      216 GETUPVAL                         R25 10
      217 DUPTABLE                         R26 K59 [{"LayoutOrder", "placeholder", "label", "onChanged", "text", "size", "width", "testId"}]
      218 MOVE                             R27 R11
      219 CALL                             R27 0 1
      220 SETTABLEKS                       R27 R26 K40 ["LayoutOrder"]
      222 GETTABLEKS                       R27 R1 K60 ["DescriptionPlaceholder"]
      224 SETTABLEKS                       R27 R26 K50 ["placeholder"]
      226 GETTABLEKS                       R27 R1 K61 ["DescriptionLabel"]
      228 SETTABLEKS                       R27 R26 K51 ["label"]
      230 SETTABLEKS                       R5 R26 K52 ["onChanged"]
      232 SETTABLEKS                       R4 R26 K10 ["text"]
      234 GETUPVAL                         R27 11
      235 GETTABLEKS                       R27 R27 K19 ["XSmall"]
      237 SETTABLEKS                       R27 R26 K14 ["size"]
      239 GETUPVAL                         R27 12
      240 SETTABLEKS                       R27 R26 K53 ["width"]
      242 GETUPVAL                         R27 4
      243 GETTABLEKS                       R27 R27 K20 ["Skills"]
      245 GETTABLEKS                       R27 R27 K21 ["CreateModal"]
      247 GETTABLEKS                       R27 R27 K48 ["DescriptionInput"]
      249 SETTABLEKS                       R27 R26 K15 ["testId"]
      251 CALL                             R24 2 1
      252 SETTABLEKS                       R24 R23 K48 ["DescriptionInput"]
      254 CALL                             R20 3 1
      255 SETTABLEKS                       R20 R19 K42 ["Inputs"]
      257 CALL                             R16 3 1
      258 SETTABLEKS                       R16 R15 K36 ["DialogContent"]
      260 GETUPVAL                         R16 6
      261 GETUPVAL                         R17 7
      262 GETTABLEKS                       R17 R17 K62 ["Actions"]
      264 DUPTABLE                         R18 K64 [{"LayoutOrder", "actions"}]
      265 MOVE                             R19 R10
      266 CALL                             R19 0 1
      267 SETTABLEKS                       R19 R18 K40 ["LayoutOrder"]
      269 SETTABLEKS                       R9 R18 K63 ["actions"]
      271 CALL                             R16 2 1
      272 SETTABLEKS                       R16 R15 K37 ["DialogActions"]
      274 CALL                             R12 3 -1
      275 RETURN                           R12 -1

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
       80 LOADN                            R18 24
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
