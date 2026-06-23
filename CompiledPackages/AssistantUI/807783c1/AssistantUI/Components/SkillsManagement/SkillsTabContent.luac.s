PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 JUMPIFNOTEQ                      R3 R0 ; [+3]
        4 LOADNIL                          R2
        5 JUMP                             ; [+1]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["refreshAsync"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["get"]
        6 CALL                             R1 0 -1
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 DUPCLOSURE                       R1 K3 [PROTO_2]
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createAsync"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["get"]
        6 CALL                             R1 0 1
        7 GETUPVAL                         R2 2
        8 GETUPVAL                         R3 3
        9 CALL                             R0 3 0
       10 GETUPVAL                         R0 4
       11 GETUPVAL                         R1 2
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 LOADB                            R3 0
        2 CALL                             R2 1 0
        3 GETIMPORT                        R2 K2 [task.spawn]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          UPVAL U3
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R0 K7 [{"Title", "Description", "CreateNew", "Refresh", "Upload", "PersonalGroup", "RobloxGroup"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K8 ["SettingsDialog"]
        3 LOADK                            R4 K9 ["SkillsTab"]
        4 NAMECALL                         R1 R1 K10 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Title"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K11 ["Skills"]
       11 LOADK                            R4 K1 ["Description"]
       12 NAMECALL                         R1 R1 K10 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Description"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K11 ["Skills"]
       19 LOADK                            R4 K2 ["CreateNew"]
       20 NAMECALL                         R1 R1 K10 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["CreateNew"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K11 ["Skills"]
       27 LOADK                            R4 K3 ["Refresh"]
       28 NAMECALL                         R1 R1 K10 ["getText"]
       30 CALL                             R1 3 1
       31 SETTABLEKS                       R1 R0 K3 ["Refresh"]
       33 GETUPVAL                         R1 0
       34 LOADK                            R3 K11 ["Skills"]
       35 LOADK                            R4 K4 ["Upload"]
       36 NAMECALL                         R1 R1 K10 ["getText"]
       38 CALL                             R1 3 1
       39 SETTABLEKS                       R1 R0 K4 ["Upload"]
       41 GETUPVAL                         R1 0
       42 LOADK                            R3 K11 ["Skills"]
       43 LOADK                            R4 K5 ["PersonalGroup"]
       44 NAMECALL                         R1 R1 K10 ["getText"]
       46 CALL                             R1 3 1
       47 SETTABLEKS                       R1 R0 K5 ["PersonalGroup"]
       49 GETUPVAL                         R1 0
       50 LOADK                            R3 K11 ["Skills"]
       51 LOADK                            R4 K6 ["RobloxGroup"]
       52 NAMECALL                         R1 R1 K10 ["getText"]
       54 CALL                             R1 3 1
       55 SETTABLEKS                       R1 R0 K6 ["RobloxGroup"]
       57 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["useState"]
        5 LOADNIL                          R2
        6 CALL                             R1 1 2
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K0 ["useState"]
       10 LOADB                            R4 0
       11 CALL                             R3 1 2
       12 JUMPIFNOT                        R1 ; [+2]
       13 GETTABLE                         R5 R0 R1
       14 JUMP                             ; [+1]
       15 LOADNIL                          R5
       16 JUMPIFNOT                        R1 ; [+5]
       17 JUMPIFNOTEQKNIL                  R5 ; [+4]
       19 MOVE                             R6 R2
       20 LOADNIL                          R7
       21 CALL                             R6 1 0
       22 GETUPVAL                         R6 1
       23 GETTABLEKS                       R6 R6 K1 ["useCallback"]
       25 NEWCLOSURE                       R7 P0
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R1
       28 NEWTABLE                         R8 0 1
       30 MOVE                             R9 R1
       31 SETLIST                          R8 R9 1 [1]
       33 CALL                             R6 2 1
       34 GETUPVAL                         R7 1
       35 GETTABLEKS                       R7 R7 K1 ["useCallback"]
       37 DUPCLOSURE                       R8 K2 [PROTO_3]
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          UPVAL U3
       40 NEWTABLE                         R9 0 0
       42 CALL                             R7 2 1
       43 GETUPVAL                         R8 1
       44 GETTABLEKS                       R8 R8 K1 ["useCallback"]
       46 NEWCLOSURE                       R9 P2
       47 CAPTURE                          VAL R4
       48 NEWTABLE                         R10 0 0
       50 CALL                             R8 2 1
       51 GETUPVAL                         R9 1
       52 GETTABLEKS                       R9 R9 K1 ["useCallback"]
       54 NEWCLOSURE                       R10 P3
       55 CAPTURE                          VAL R4
       56 NEWTABLE                         R11 0 0
       58 CALL                             R9 2 1
       59 GETUPVAL                         R10 1
       60 GETTABLEKS                       R10 R10 K1 ["useCallback"]
       62 NEWCLOSURE                       R11 P4
       63 CAPTURE                          VAL R4
       64 CAPTURE                          UPVAL U4
       65 CAPTURE                          UPVAL U3
       66 CAPTURE                          VAL R2
       67 NEWTABLE                         R12 0 0
       69 CALL                             R10 2 1
       70 GETUPVAL                         R11 1
       71 GETTABLEKS                       R11 R11 K3 ["useMemo"]
       73 DUPCLOSURE                       R12 K4 [PROTO_8]
       74 CAPTURE                          UPVAL U5
       75 NEWTABLE                         R13 0 1
       77 GETUPVAL                         R14 5
       78 GETTABLEKS                       R14 R14 K5 ["locale"]
       80 SETLIST                          R13 R14 1 [1]
       82 CALL                             R11 2 1
       83 GETUPVAL                         R12 6
       84 CALL                             R12 0 1
       85 GETUPVAL                         R13 6
       86 CALL                             R13 0 1
       87 GETUPVAL                         R14 7
       88 GETUPVAL                         R15 8
       89 DUPTABLE                         R16 K8 [{"tag", "testId"}]
       90 LOADK                            R17 K9 ["col size-full-0 auto-y gap-small"]
       91 SETTABLEKS                       R17 R16 K6 ["tag"]
       93 GETUPVAL                         R17 9
       94 GETTABLEKS                       R17 R17 K10 ["Skills"]
       96 GETTABLEKS                       R17 R17 K11 ["TabContent"]
       98 SETTABLEKS                       R17 R16 K7 ["testId"]
      100 DUPTABLE                         R17 K17 [{"TitleAndButtons", "Description", "Tree", "DetailPane", "CreateModal"}]
      101 GETUPVAL                         R18 7
      102 GETUPVAL                         R19 8
      103 DUPTABLE                         R20 K19 [{"LayoutOrder", "tag"}]
      104 MOVE                             R21 R12
      105 CALL                             R21 0 1
      106 SETTABLEKS                       R21 R20 K18 ["LayoutOrder"]
      108 LOADK                            R21 K20 ["row size-full-0 auto-y gap-small align-y-center"]
      109 SETTABLEKS                       R21 R20 K6 ["tag"]
      111 DUPTABLE                         R21 K26 [{"TitleText", "Spacer", "RefreshButton", "CreateNewButton", "UploadButton"}]
      112 GETUPVAL                         R22 7
      113 GETUPVAL                         R23 10
      114 DUPTABLE                         R24 K28 [{"tag", "Text", "LayoutOrder"}]
      115 LOADK                            R25 K29 ["auto-xy text-title-medium bold text-align-x-left"]
      116 SETTABLEKS                       R25 R24 K6 ["tag"]
      118 GETTABLEKS                       R25 R11 K30 ["Title"]
      120 SETTABLEKS                       R25 R24 K27 ["Text"]
      122 MOVE                             R25 R13
      123 CALL                             R25 0 1
      124 SETTABLEKS                       R25 R24 K18 ["LayoutOrder"]
      126 CALL                             R22 2 1
      127 SETTABLEKS                       R22 R21 K21 ["TitleText"]
      129 GETUPVAL                         R22 7
      130 GETUPVAL                         R23 8
      131 DUPTABLE                         R24 K31 [{"tag", "LayoutOrder"}]
      132 LOADK                            R25 K32 ["fill"]
      133 SETTABLEKS                       R25 R24 K6 ["tag"]
      135 MOVE                             R25 R13
      136 CALL                             R25 0 1
      137 SETTABLEKS                       R25 R24 K18 ["LayoutOrder"]
      139 CALL                             R22 2 1
      140 SETTABLEKS                       R22 R21 K22 ["Spacer"]
      142 GETUPVAL                         R22 7
      143 GETUPVAL                         R23 11
      144 DUPTABLE                         R24 K37 [{"text", "size", "variant", "onActivated", "testId", "LayoutOrder"}]
      145 GETTABLEKS                       R25 R11 K38 ["Refresh"]
      147 SETTABLEKS                       R25 R24 K33 ["text"]
      149 GETUPVAL                         R25 12
      150 GETTABLEKS                       R25 R25 K39 ["XSmall"]
      152 SETTABLEKS                       R25 R24 K34 ["size"]
      154 GETUPVAL                         R25 13
      155 GETTABLEKS                       R25 R25 K27 ["Text"]
      157 SETTABLEKS                       R25 R24 K35 ["variant"]
      159 SETTABLEKS                       R7 R24 K36 ["onActivated"]
      161 GETUPVAL                         R25 9
      162 GETTABLEKS                       R25 R25 K10 ["Skills"]
      164 GETTABLEKS                       R25 R25 K23 ["RefreshButton"]
      166 SETTABLEKS                       R25 R24 K7 ["testId"]
      168 MOVE                             R25 R13
      169 CALL                             R25 0 1
      170 SETTABLEKS                       R25 R24 K18 ["LayoutOrder"]
      172 CALL                             R22 2 1
      173 SETTABLEKS                       R22 R21 K23 ["RefreshButton"]
      175 GETUPVAL                         R22 7
      176 GETUPVAL                         R23 11
      177 DUPTABLE                         R24 K37 [{"text", "size", "variant", "onActivated", "testId", "LayoutOrder"}]
      178 GETTABLEKS                       R25 R11 K40 ["CreateNew"]
      180 SETTABLEKS                       R25 R24 K33 ["text"]
      182 GETUPVAL                         R25 12
      183 GETTABLEKS                       R25 R25 K39 ["XSmall"]
      185 SETTABLEKS                       R25 R24 K34 ["size"]
      187 GETUPVAL                         R25 13
      188 GETTABLEKS                       R25 R25 K41 ["Standard"]
      190 SETTABLEKS                       R25 R24 K35 ["variant"]
      192 SETTABLEKS                       R8 R24 K36 ["onActivated"]
      194 GETUPVAL                         R25 9
      195 GETTABLEKS                       R25 R25 K10 ["Skills"]
      197 GETTABLEKS                       R25 R25 K24 ["CreateNewButton"]
      199 SETTABLEKS                       R25 R24 K7 ["testId"]
      201 MOVE                             R25 R13
      202 CALL                             R25 0 1
      203 SETTABLEKS                       R25 R24 K18 ["LayoutOrder"]
      205 CALL                             R22 2 1
      206 SETTABLEKS                       R22 R21 K24 ["CreateNewButton"]
      208 GETUPVAL                         R22 7
      209 GETUPVAL                         R23 11
      210 DUPTABLE                         R24 K43 [{"text", "size", "variant", "isDisabled", "onActivated", "testId", "LayoutOrder"}]
      211 GETTABLEKS                       R25 R11 K44 ["Upload"]
      213 SETTABLEKS                       R25 R24 K33 ["text"]
      215 GETUPVAL                         R25 12
      216 GETTABLEKS                       R25 R25 K39 ["XSmall"]
      218 SETTABLEKS                       R25 R24 K34 ["size"]
      220 GETUPVAL                         R25 13
      221 GETTABLEKS                       R25 R25 K27 ["Text"]
      223 SETTABLEKS                       R25 R24 K35 ["variant"]
      225 LOADB                            R25 1
      226 SETTABLEKS                       R25 R24 K42 ["isDisabled"]
      228 GETUPVAL                         R25 14
      229 SETTABLEKS                       R25 R24 K36 ["onActivated"]
      231 GETUPVAL                         R25 9
      232 GETTABLEKS                       R25 R25 K10 ["Skills"]
      234 GETTABLEKS                       R25 R25 K25 ["UploadButton"]
      236 SETTABLEKS                       R25 R24 K7 ["testId"]
      238 MOVE                             R25 R13
      239 CALL                             R25 0 1
      240 SETTABLEKS                       R25 R24 K18 ["LayoutOrder"]
      242 CALL                             R22 2 1
      243 SETTABLEKS                       R22 R21 K25 ["UploadButton"]
      245 CALL                             R18 3 1
      246 SETTABLEKS                       R18 R17 K12 ["TitleAndButtons"]
      248 GETUPVAL                         R18 7
      249 GETUPVAL                         R19 10
      250 DUPTABLE                         R20 K28 [{"tag", "Text", "LayoutOrder"}]
      251 LOADK                            R21 K45 ["auto-xy text-caption-small text-wrap text-align-x-left"]
      252 SETTABLEKS                       R21 R20 K6 ["tag"]
      254 GETTABLEKS                       R21 R11 K13 ["Description"]
      256 SETTABLEKS                       R21 R20 K27 ["Text"]
      258 MOVE                             R21 R12
      259 CALL                             R21 0 1
      260 SETTABLEKS                       R21 R20 K18 ["LayoutOrder"]
      262 CALL                             R18 2 1
      263 SETTABLEKS                       R18 R17 K13 ["Description"]
      265 GETUPVAL                         R18 7
      266 GETUPVAL                         R19 15
      267 DUPTABLE                         R20 K51 [{"skills", "personalGroupLabel", "robloxGroupLabel", "selectedSkillName", "onSelectSkill", "LayoutOrder"}]
      268 SETTABLEKS                       R0 R20 K46 ["skills"]
      270 GETTABLEKS                       R21 R11 K52 ["PersonalGroup"]
      272 SETTABLEKS                       R21 R20 K47 ["personalGroupLabel"]
      274 GETTABLEKS                       R21 R11 K53 ["RobloxGroup"]
      276 SETTABLEKS                       R21 R20 K48 ["robloxGroupLabel"]
      278 SETTABLEKS                       R1 R20 K49 ["selectedSkillName"]
      280 SETTABLEKS                       R6 R20 K50 ["onSelectSkill"]
      282 MOVE                             R21 R12
      283 CALL                             R21 0 1
      284 SETTABLEKS                       R21 R20 K18 ["LayoutOrder"]
      286 CALL                             R18 2 1
      287 SETTABLEKS                       R18 R17 K14 ["Tree"]
      289 GETUPVAL                         R18 7
      290 GETUPVAL                         R19 16
      291 DUPTABLE                         R20 K55 [{"skill", "LayoutOrder"}]
      292 SETTABLEKS                       R5 R20 K54 ["skill"]
      294 MOVE                             R21 R12
      295 CALL                             R21 0 1
      296 SETTABLEKS                       R21 R20 K18 ["LayoutOrder"]
      298 CALL                             R18 2 1
      299 SETTABLEKS                       R18 R17 K15 ["DetailPane"]
      301 JUMPIFNOT                        R3 ; [+18]
      302 GETUPVAL                         R18 7
      303 GETUPVAL                         R19 17
      304 DUPTABLE                         R20 K59 [{"existingUserSkills", "onCreate", "onClose"}]
      305 GETUPVAL                         R21 18
      306 GETTABLEKS                       R21 R21 K60 ["getAllBySource"]
      308 GETUPVAL                         R22 19
      309 GETTABLEKS                       R22 R22 K61 ["User"]
      311 CALL                             R21 1 1
      312 SETTABLEKS                       R21 R20 K56 ["existingUserSkills"]
      314 SETTABLEKS                       R10 R20 K57 ["onCreate"]
      316 SETTABLEKS                       R9 R20 K58 ["onClose"]
      318 CALL                             R18 2 1
      319 JUMP                             ; [+1]
      320 LOADNIL                          R18
      321 SETTABLEKS                       R18 R17 K16 ["CreateModal"]
      323 CALL                             R14 3 -1
      324 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["CreateSkillModal"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K8 ["Guest"]
       20 GETTABLEKS                       R3 R3 K9 ["Environment"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Parent"]
       27 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Parent"]
       34 GETTABLEKS                       R5 R5 K11 ["React"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Parent"]
       41 GETTABLEKS                       R6 R6 K12 ["ReactUtils"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K13 ["Skills"]
       48 GETTABLEKS                       R7 R7 K14 ["SkillDefinition"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETIMPORT                        R8 K1 [script]
       55 GETTABLEKS                       R8 R8 K6 ["Parent"]
       57 GETTABLEKS                       R8 R8 K15 ["SkillDetailPane"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K13 ["Skills"]
       64 GETTABLEKS                       R9 R9 K16 ["SkillRegistry"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETIMPORT                        R10 K1 [script]
       71 GETTABLEKS                       R10 R10 K6 ["Parent"]
       73 GETTABLEKS                       R10 R10 K17 ["SkillsTree"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K18 ["Util"]
       80 GETTABLEKS                       R11 R11 K19 ["TestIds"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R0 K20 ["Resources"]
       87 GETTABLEKS                       R12 R12 K21 ["Localization"]
       89 GETTABLEKS                       R12 R12 K22 ["Translator"]
       91 CALL                             R11 1 1
       92 GETIMPORT                        R12 K5 [require]
       94 GETTABLEKS                       R13 R0 K13 ["Skills"]
       96 GETTABLEKS                       R13 R13 K23 ["createUserSkillAsync"]
       98 CALL                             R12 1 1
       99 GETIMPORT                        R13 K5 [require]
      101 GETTABLEKS                       R14 R0 K13 ["Skills"]
      103 GETTABLEKS                       R14 R14 K24 ["loadUserSkills"]
      105 CALL                             R13 1 1
      106 GETIMPORT                        R14 K5 [require]
      108 GETTABLEKS                       R15 R0 K25 ["Hooks"]
      110 GETTABLEKS                       R15 R15 K26 ["useSkillsRegistryWatch"]
      112 CALL                             R14 1 1
      113 GETTABLEKS                       R15 R6 K27 ["Sources"]
      115 GETTABLEKS                       R16 R3 K28 ["Button"]
      117 GETTABLEKS                       R17 R3 K29 ["Text"]
      119 GETTABLEKS                       R18 R3 K30 ["View"]
      121 GETTABLEKS                       R19 R3 K31 ["Enums"]
      123 GETTABLEKS                       R19 R19 K32 ["ButtonSize"]
      125 GETTABLEKS                       R20 R3 K31 ["Enums"]
      127 GETTABLEKS                       R20 R20 K33 ["ButtonVariant"]
      129 GETTABLEKS                       R21 R5 K34 ["createNextOrder"]
      131 GETTABLEKS                       R22 R4 K35 ["createElement"]
      133 DUPCLOSURE                       R23 K36 [PROTO_0]
      134 DUPCLOSURE                       R24 K37 [PROTO_9]
      135 CAPTURE                          VAL R14
      136 CAPTURE                          VAL R4
      137 CAPTURE                          VAL R13
      138 CAPTURE                          VAL R2
      139 CAPTURE                          VAL R12
      140 CAPTURE                          VAL R11
      141 CAPTURE                          VAL R21
      142 CAPTURE                          VAL R22
      143 CAPTURE                          VAL R18
      144 CAPTURE                          VAL R10
      145 CAPTURE                          VAL R17
      146 CAPTURE                          VAL R16
      147 CAPTURE                          VAL R19
      148 CAPTURE                          VAL R20
      149 CAPTURE                          VAL R23
      150 CAPTURE                          VAL R9
      151 CAPTURE                          VAL R7
      152 CAPTURE                          VAL R1
      153 CAPTURE                          VAL R8
      154 CAPTURE                          VAL R15
      155 RETURN                           R24 1
