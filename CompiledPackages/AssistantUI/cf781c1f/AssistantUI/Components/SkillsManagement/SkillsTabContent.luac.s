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

PROTO_5:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["useState"]
        5 LOADNIL                          R2
        6 CALL                             R1 1 2
        7 JUMPIFNOT                        R1 ; [+2]
        8 GETTABLE                         R3 R0 R1
        9 JUMP                             ; [+1]
       10 LOADNIL                          R3
       11 JUMPIFNOT                        R1 ; [+5]
       12 JUMPIFNOTEQKNIL                  R3 ; [+4]
       14 MOVE                             R4 R2
       15 LOADNIL                          R5
       16 CALL                             R4 1 0
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K1 ["useCallback"]
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R1
       23 NEWTABLE                         R6 0 1
       25 MOVE                             R7 R1
       26 SETLIST                          R6 R7 1 [1]
       28 CALL                             R4 2 1
       29 GETUPVAL                         R5 1
       30 GETTABLEKS                       R5 R5 K1 ["useCallback"]
       32 DUPCLOSURE                       R6 K2 [PROTO_3]
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          UPVAL U3
       35 NEWTABLE                         R7 0 0
       37 CALL                             R5 2 1
       38 GETUPVAL                         R6 1
       39 GETTABLEKS                       R6 R6 K3 ["useMemo"]
       41 DUPCLOSURE                       R7 K4 [PROTO_4]
       42 CAPTURE                          UPVAL U4
       43 NEWTABLE                         R8 0 1
       45 GETUPVAL                         R9 4
       46 GETTABLEKS                       R9 R9 K5 ["locale"]
       48 SETLIST                          R8 R9 1 [1]
       50 CALL                             R6 2 1
       51 GETUPVAL                         R7 5
       52 CALL                             R7 0 1
       53 GETUPVAL                         R8 5
       54 CALL                             R8 0 1
       55 GETUPVAL                         R9 6
       56 GETUPVAL                         R10 7
       57 DUPTABLE                         R11 K8 [{"tag", "testId"}]
       58 LOADK                            R12 K9 ["col size-full-0 auto-y gap-small"]
       59 SETTABLEKS                       R12 R11 K6 ["tag"]
       61 GETUPVAL                         R12 8
       62 GETTABLEKS                       R12 R12 K10 ["Skills"]
       64 GETTABLEKS                       R12 R12 K11 ["TabContent"]
       66 SETTABLEKS                       R12 R11 K7 ["testId"]
       68 DUPTABLE                         R12 K16 [{"TitleAndButtons", "Description", "Tree", "DetailPane"}]
       69 GETUPVAL                         R13 6
       70 GETUPVAL                         R14 7
       71 DUPTABLE                         R15 K18 [{"LayoutOrder", "tag"}]
       72 MOVE                             R16 R7
       73 CALL                             R16 0 1
       74 SETTABLEKS                       R16 R15 K17 ["LayoutOrder"]
       76 LOADK                            R16 K19 ["row size-full-0 auto-y gap-small align-y-center"]
       77 SETTABLEKS                       R16 R15 K6 ["tag"]
       79 DUPTABLE                         R16 K25 [{"TitleText", "Spacer", "RefreshButton", "CreateNewButton", "UploadButton"}]
       80 GETUPVAL                         R17 6
       81 GETUPVAL                         R18 9
       82 DUPTABLE                         R19 K27 [{"tag", "Text", "LayoutOrder"}]
       83 LOADK                            R20 K28 ["auto-xy text-title-medium bold text-align-x-left"]
       84 SETTABLEKS                       R20 R19 K6 ["tag"]
       86 GETTABLEKS                       R20 R6 K29 ["Title"]
       88 SETTABLEKS                       R20 R19 K26 ["Text"]
       90 MOVE                             R20 R8
       91 CALL                             R20 0 1
       92 SETTABLEKS                       R20 R19 K17 ["LayoutOrder"]
       94 CALL                             R17 2 1
       95 SETTABLEKS                       R17 R16 K20 ["TitleText"]
       97 GETUPVAL                         R17 6
       98 GETUPVAL                         R18 7
       99 DUPTABLE                         R19 K30 [{"tag", "LayoutOrder"}]
      100 LOADK                            R20 K31 ["fill"]
      101 SETTABLEKS                       R20 R19 K6 ["tag"]
      103 MOVE                             R20 R8
      104 CALL                             R20 0 1
      105 SETTABLEKS                       R20 R19 K17 ["LayoutOrder"]
      107 CALL                             R17 2 1
      108 SETTABLEKS                       R17 R16 K21 ["Spacer"]
      110 GETUPVAL                         R17 6
      111 GETUPVAL                         R18 10
      112 DUPTABLE                         R19 K36 [{"text", "size", "variant", "onActivated", "testId", "LayoutOrder"}]
      113 GETTABLEKS                       R20 R6 K37 ["Refresh"]
      115 SETTABLEKS                       R20 R19 K32 ["text"]
      117 GETUPVAL                         R20 11
      118 GETTABLEKS                       R20 R20 K38 ["XSmall"]
      120 SETTABLEKS                       R20 R19 K33 ["size"]
      122 GETUPVAL                         R20 12
      123 GETTABLEKS                       R20 R20 K26 ["Text"]
      125 SETTABLEKS                       R20 R19 K34 ["variant"]
      127 SETTABLEKS                       R5 R19 K35 ["onActivated"]
      129 GETUPVAL                         R20 8
      130 GETTABLEKS                       R20 R20 K10 ["Skills"]
      132 GETTABLEKS                       R20 R20 K22 ["RefreshButton"]
      134 SETTABLEKS                       R20 R19 K7 ["testId"]
      136 MOVE                             R20 R8
      137 CALL                             R20 0 1
      138 SETTABLEKS                       R20 R19 K17 ["LayoutOrder"]
      140 CALL                             R17 2 1
      141 SETTABLEKS                       R17 R16 K22 ["RefreshButton"]
      143 GETUPVAL                         R17 6
      144 GETUPVAL                         R18 10
      145 DUPTABLE                         R19 K40 [{"text", "size", "variant", "isDisabled", "onActivated", "testId", "LayoutOrder"}]
      146 GETTABLEKS                       R20 R6 K41 ["CreateNew"]
      148 SETTABLEKS                       R20 R19 K32 ["text"]
      150 GETUPVAL                         R20 11
      151 GETTABLEKS                       R20 R20 K38 ["XSmall"]
      153 SETTABLEKS                       R20 R19 K33 ["size"]
      155 GETUPVAL                         R20 12
      156 GETTABLEKS                       R20 R20 K42 ["Standard"]
      158 SETTABLEKS                       R20 R19 K34 ["variant"]
      160 LOADB                            R20 1
      161 SETTABLEKS                       R20 R19 K39 ["isDisabled"]
      163 GETUPVAL                         R20 13
      164 SETTABLEKS                       R20 R19 K35 ["onActivated"]
      166 GETUPVAL                         R20 8
      167 GETTABLEKS                       R20 R20 K10 ["Skills"]
      169 GETTABLEKS                       R20 R20 K23 ["CreateNewButton"]
      171 SETTABLEKS                       R20 R19 K7 ["testId"]
      173 MOVE                             R20 R8
      174 CALL                             R20 0 1
      175 SETTABLEKS                       R20 R19 K17 ["LayoutOrder"]
      177 CALL                             R17 2 1
      178 SETTABLEKS                       R17 R16 K23 ["CreateNewButton"]
      180 GETUPVAL                         R17 6
      181 GETUPVAL                         R18 10
      182 DUPTABLE                         R19 K40 [{"text", "size", "variant", "isDisabled", "onActivated", "testId", "LayoutOrder"}]
      183 GETTABLEKS                       R20 R6 K43 ["Upload"]
      185 SETTABLEKS                       R20 R19 K32 ["text"]
      187 GETUPVAL                         R20 11
      188 GETTABLEKS                       R20 R20 K38 ["XSmall"]
      190 SETTABLEKS                       R20 R19 K33 ["size"]
      192 GETUPVAL                         R20 12
      193 GETTABLEKS                       R20 R20 K26 ["Text"]
      195 SETTABLEKS                       R20 R19 K34 ["variant"]
      197 LOADB                            R20 1
      198 SETTABLEKS                       R20 R19 K39 ["isDisabled"]
      200 GETUPVAL                         R20 13
      201 SETTABLEKS                       R20 R19 K35 ["onActivated"]
      203 GETUPVAL                         R20 8
      204 GETTABLEKS                       R20 R20 K10 ["Skills"]
      206 GETTABLEKS                       R20 R20 K24 ["UploadButton"]
      208 SETTABLEKS                       R20 R19 K7 ["testId"]
      210 MOVE                             R20 R8
      211 CALL                             R20 0 1
      212 SETTABLEKS                       R20 R19 K17 ["LayoutOrder"]
      214 CALL                             R17 2 1
      215 SETTABLEKS                       R17 R16 K24 ["UploadButton"]
      217 CALL                             R13 3 1
      218 SETTABLEKS                       R13 R12 K12 ["TitleAndButtons"]
      220 GETUPVAL                         R13 6
      221 GETUPVAL                         R14 9
      222 DUPTABLE                         R15 K27 [{"tag", "Text", "LayoutOrder"}]
      223 LOADK                            R16 K44 ["auto-xy text-caption-small text-wrap text-align-x-left"]
      224 SETTABLEKS                       R16 R15 K6 ["tag"]
      226 GETTABLEKS                       R16 R6 K13 ["Description"]
      228 SETTABLEKS                       R16 R15 K26 ["Text"]
      230 MOVE                             R16 R7
      231 CALL                             R16 0 1
      232 SETTABLEKS                       R16 R15 K17 ["LayoutOrder"]
      234 CALL                             R13 2 1
      235 SETTABLEKS                       R13 R12 K13 ["Description"]
      237 GETUPVAL                         R13 6
      238 GETUPVAL                         R14 14
      239 DUPTABLE                         R15 K50 [{"skills", "personalGroupLabel", "robloxGroupLabel", "selectedSkillName", "onSelectSkill", "LayoutOrder"}]
      240 SETTABLEKS                       R0 R15 K45 ["skills"]
      242 GETTABLEKS                       R16 R6 K51 ["PersonalGroup"]
      244 SETTABLEKS                       R16 R15 K46 ["personalGroupLabel"]
      246 GETTABLEKS                       R16 R6 K52 ["RobloxGroup"]
      248 SETTABLEKS                       R16 R15 K47 ["robloxGroupLabel"]
      250 SETTABLEKS                       R1 R15 K48 ["selectedSkillName"]
      252 SETTABLEKS                       R4 R15 K49 ["onSelectSkill"]
      254 MOVE                             R16 R7
      255 CALL                             R16 0 1
      256 SETTABLEKS                       R16 R15 K17 ["LayoutOrder"]
      258 CALL                             R13 2 1
      259 SETTABLEKS                       R13 R12 K14 ["Tree"]
      261 GETUPVAL                         R13 6
      262 GETUPVAL                         R14 15
      263 DUPTABLE                         R15 K54 [{"skill", "LayoutOrder"}]
      264 SETTABLEKS                       R3 R15 K53 ["skill"]
      266 MOVE                             R16 R7
      267 CALL                             R16 0 1
      268 SETTABLEKS                       R16 R15 K17 ["LayoutOrder"]
      270 CALL                             R13 2 1
      271 SETTABLEKS                       R13 R12 K15 ["DetailPane"]
      273 CALL                             R9 3 -1
      274 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETIMPORT                        R6 K1 [script]
       39 GETTABLEKS                       R6 R6 K8 ["Parent"]
       41 GETTABLEKS                       R6 R6 K12 ["SkillDetailPane"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETIMPORT                        R7 K1 [script]
       48 GETTABLEKS                       R7 R7 K8 ["Parent"]
       50 GETTABLEKS                       R7 R7 K13 ["SkillsTree"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K14 ["Util"]
       57 GETTABLEKS                       R8 R8 K15 ["TestIds"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K16 ["Resources"]
       64 GETTABLEKS                       R9 R9 K17 ["Localization"]
       66 GETTABLEKS                       R9 R9 K18 ["Translator"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K19 ["Skills"]
       73 GETTABLEKS                       R10 R10 K20 ["loadUserSkills"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K21 ["Hooks"]
       80 GETTABLEKS                       R11 R11 K22 ["useSkillsRegistryWatch"]
       82 CALL                             R10 1 1
       83 GETTABLEKS                       R11 R2 K23 ["Button"]
       85 GETTABLEKS                       R12 R2 K24 ["Text"]
       87 GETTABLEKS                       R13 R2 K25 ["View"]
       89 GETTABLEKS                       R14 R2 K26 ["Enums"]
       91 GETTABLEKS                       R14 R14 K27 ["ButtonSize"]
       93 GETTABLEKS                       R15 R2 K26 ["Enums"]
       95 GETTABLEKS                       R15 R15 K28 ["ButtonVariant"]
       97 GETTABLEKS                       R16 R4 K29 ["createNextOrder"]
       99 GETTABLEKS                       R17 R3 K30 ["createElement"]
      101 DUPCLOSURE                       R18 K31 [PROTO_0]
      102 DUPCLOSURE                       R19 K32 [PROTO_5]
      103 CAPTURE                          VAL R10
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R9
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R8
      108 CAPTURE                          VAL R16
      109 CAPTURE                          VAL R17
      110 CAPTURE                          VAL R13
      111 CAPTURE                          VAL R7
      112 CAPTURE                          VAL R12
      113 CAPTURE                          VAL R11
      114 CAPTURE                          VAL R14
      115 CAPTURE                          VAL R15
      116 CAPTURE                          VAL R18
      117 CAPTURE                          VAL R6
      118 CAPTURE                          VAL R5
      119 RETURN                           R19 1
