PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R0 K5 [{"Open", "Duplicate", "SourceRoblox", "SourceLocal", "Empty"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K6 ["Skills"]
        3 LOADK                            R4 K0 ["Open"]
        4 NAMECALL                         R1 R1 K7 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Open"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K6 ["Skills"]
       11 LOADK                            R4 K1 ["Duplicate"]
       12 NAMECALL                         R1 R1 K7 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Duplicate"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K6 ["Skills"]
       19 LOADK                            R4 K8 ["SourceRobloxBadge"]
       20 NAMECALL                         R1 R1 K7 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["SourceRoblox"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K6 ["Skills"]
       27 LOADK                            R4 K9 ["SourceLocalBadge"]
       28 NAMECALL                         R1 R1 K7 ["getText"]
       30 CALL                             R1 3 1
       31 SETTABLEKS                       R1 R0 K3 ["SourceLocal"]
       33 GETUPVAL                         R1 0
       34 LOADK                            R3 K6 ["Skills"]
       35 LOADK                            R4 K10 ["DetailPaneEmpty"]
       36 NAMECALL                         R1 R1 K7 ["getText"]
       38 CALL                             R1 3 1
       39 SETTABLEKS                       R1 R0 K4 ["Empty"]
       41 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["open"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["skill"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useMemo"]
        5 DUPCLOSURE                       R3 K2 [PROTO_1]
        6 CAPTURE                          UPVAL U1
        7 NEWTABLE                         R4 0 1
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K3 ["locale"]
       12 SETLIST                          R4 R5 1 [1]
       14 CALL                             R2 2 1
       15 JUMPIFNOTEQKNIL                  R1 ; [+45]
       17 GETUPVAL                         R3 2
       18 GETUPVAL                         R4 3
       19 DUPTABLE                         R5 K7 [{"tag", "testId", "LayoutOrder"}]
       20 LOADK                            R6 K8 ["col size-full-0 auto-y gap-small padding-medium align-x-center align-y-center"]
       21 SETTABLEKS                       R6 R5 K4 ["tag"]
       23 GETUPVAL                         R6 4
       24 GETTABLEKS                       R6 R6 K9 ["Skills"]
       26 GETTABLEKS                       R6 R6 K10 ["DetailPane"]
       28 GETTABLEKS                       R6 R6 K11 ["Container"]
       30 SETTABLEKS                       R6 R5 K5 ["testId"]
       32 GETTABLEKS                       R6 R0 K6 ["LayoutOrder"]
       34 SETTABLEKS                       R6 R5 K6 ["LayoutOrder"]
       36 DUPTABLE                         R6 K13 [{"Empty"}]
       37 GETUPVAL                         R7 2
       38 GETUPVAL                         R8 5
       39 DUPTABLE                         R9 K15 [{"tag", "Text", "testId"}]
       40 LOADK                            R10 K16 ["auto-xy text-body-small content-muted text-wrap text-align-x-center"]
       41 SETTABLEKS                       R10 R9 K4 ["tag"]
       43 GETTABLEKS                       R10 R2 K12 ["Empty"]
       45 SETTABLEKS                       R10 R9 K14 ["Text"]
       47 GETUPVAL                         R10 4
       48 GETTABLEKS                       R10 R10 K9 ["Skills"]
       50 GETTABLEKS                       R10 R10 K10 ["DetailPane"]
       52 GETTABLEKS                       R10 R10 K12 ["Empty"]
       54 SETTABLEKS                       R10 R9 K5 ["testId"]
       56 CALL                             R7 2 1
       57 SETTABLEKS                       R7 R6 K12 ["Empty"]
       59 CALL                             R3 3 -1
       60 RETURN                           R3 -1
       61 GETTABLEKS                       R4 R1 K17 ["source"]
       63 GETUPVAL                         R5 6
       64 GETTABLEKS                       R5 R5 K18 ["User"]
       66 JUMPIFNOTEQ                      R4 R5 ; [+4]
       68 GETTABLEKS                       R3 R2 K19 ["SourceLocal"]
       70 JUMP                             ; [+2]
       71 GETTABLEKS                       R3 R2 K20 ["SourceRoblox"]
       73 GETUPVAL                         R4 7
       74 GETTABLEKS                       R4 R4 K21 ["uriForSkill"]
       76 MOVE                             R5 R1
       77 CALL                             R4 1 1
       78 GETUPVAL                         R5 8
       79 CALL                             R5 0 1
       80 GETUPVAL                         R6 8
       81 CALL                             R6 0 1
       82 GETUPVAL                         R7 8
       83 CALL                             R7 0 1
       84 NEWCLOSURE                       R8 P1
       85 CAPTURE                          UPVAL U7
       86 CAPTURE                          VAL R1
       87 GETUPVAL                         R9 2
       88 GETUPVAL                         R10 3
       89 DUPTABLE                         R11 K7 [{"tag", "testId", "LayoutOrder"}]
       90 LOADK                            R12 K22 ["col size-full-0 auto-y gap-small padding-medium"]
       91 SETTABLEKS                       R12 R11 K4 ["tag"]
       93 GETUPVAL                         R12 4
       94 GETTABLEKS                       R12 R12 K9 ["Skills"]
       96 GETTABLEKS                       R12 R12 K10 ["DetailPane"]
       98 GETTABLEKS                       R12 R12 K11 ["Container"]
      100 SETTABLEKS                       R12 R11 K5 ["testId"]
      102 GETTABLEKS                       R12 R0 K6 ["LayoutOrder"]
      104 SETTABLEKS                       R12 R11 K6 ["LayoutOrder"]
      106 DUPTABLE                         R12 K27 [{"Header", "SourceUri", "Description", "Buttons"}]
      107 GETUPVAL                         R13 2
      108 GETUPVAL                         R14 3
      109 DUPTABLE                         R15 K28 [{"tag", "LayoutOrder"}]
      110 LOADK                            R16 K29 ["row size-full-0 auto-y gap-small align-y-center"]
      111 SETTABLEKS                       R16 R15 K4 ["tag"]
      113 MOVE                             R16 R5
      114 CALL                             R16 0 1
      115 SETTABLEKS                       R16 R15 K6 ["LayoutOrder"]
      117 DUPTABLE                         R16 K33 [{"Name", "Spacer", "SourceBadge"}]
      118 GETUPVAL                         R17 2
      119 GETUPVAL                         R18 5
      120 DUPTABLE                         R19 K34 [{"tag", "Text", "LayoutOrder"}]
      121 LOADK                            R20 K35 ["auto-xy text-title-small bold text-align-x-left"]
      122 SETTABLEKS                       R20 R19 K4 ["tag"]
      124 GETTABLEKS                       R20 R1 K36 ["name"]
      126 SETTABLEKS                       R20 R19 K14 ["Text"]
      128 MOVE                             R20 R6
      129 CALL                             R20 0 1
      130 SETTABLEKS                       R20 R19 K6 ["LayoutOrder"]
      132 CALL                             R17 2 1
      133 SETTABLEKS                       R17 R16 K30 ["Name"]
      135 GETUPVAL                         R17 2
      136 GETUPVAL                         R18 3
      137 DUPTABLE                         R19 K28 [{"tag", "LayoutOrder"}]
      138 LOADK                            R20 K37 ["fill"]
      139 SETTABLEKS                       R20 R19 K4 ["tag"]
      141 MOVE                             R20 R6
      142 CALL                             R20 0 1
      143 SETTABLEKS                       R20 R19 K6 ["LayoutOrder"]
      145 CALL                             R17 2 1
      146 SETTABLEKS                       R17 R16 K31 ["Spacer"]
      148 GETUPVAL                         R17 2
      149 GETUPVAL                         R18 5
      150 DUPTABLE                         R19 K34 [{"tag", "Text", "LayoutOrder"}]
      151 LOADK                            R20 K38 ["auto-xy text-caption-small content-muted text-align-x-right"]
      152 SETTABLEKS                       R20 R19 K4 ["tag"]
      154 SETTABLEKS                       R3 R19 K14 ["Text"]
      156 MOVE                             R20 R6
      157 CALL                             R20 0 1
      158 SETTABLEKS                       R20 R19 K6 ["LayoutOrder"]
      160 CALL                             R17 2 1
      161 SETTABLEKS                       R17 R16 K32 ["SourceBadge"]
      163 CALL                             R13 3 1
      164 SETTABLEKS                       R13 R12 K23 ["Header"]
      166 GETUPVAL                         R13 2
      167 GETUPVAL                         R14 5
      168 DUPTABLE                         R15 K39 [{"tag", "Text", "testId", "LayoutOrder"}]
      169 LOADK                            R16 K40 ["auto-xy text-caption-small content-muted text-wrap text-align-x-left"]
      170 SETTABLEKS                       R16 R15 K4 ["tag"]
      172 SETTABLEKS                       R4 R15 K14 ["Text"]
      174 GETUPVAL                         R16 4
      175 GETTABLEKS                       R16 R16 K9 ["Skills"]
      177 GETTABLEKS                       R16 R16 K10 ["DetailPane"]
      179 GETTABLEKS                       R16 R16 K24 ["SourceUri"]
      181 SETTABLEKS                       R16 R15 K5 ["testId"]
      183 MOVE                             R16 R5
      184 CALL                             R16 0 1
      185 SETTABLEKS                       R16 R15 K6 ["LayoutOrder"]
      187 CALL                             R13 2 1
      188 SETTABLEKS                       R13 R12 K24 ["SourceUri"]
      190 GETUPVAL                         R13 2
      191 GETUPVAL                         R14 5
      192 DUPTABLE                         R15 K34 [{"tag", "Text", "LayoutOrder"}]
      193 LOADK                            R16 K41 ["auto-xy text-body-small content-default text-wrap text-align-x-left"]
      194 SETTABLEKS                       R16 R15 K4 ["tag"]
      196 GETTABLEKS                       R16 R1 K42 ["description"]
      198 SETTABLEKS                       R16 R15 K14 ["Text"]
      200 MOVE                             R16 R5
      201 CALL                             R16 0 1
      202 SETTABLEKS                       R16 R15 K6 ["LayoutOrder"]
      204 CALL                             R13 2 1
      205 SETTABLEKS                       R13 R12 K25 ["Description"]
      207 GETUPVAL                         R13 2
      208 GETUPVAL                         R14 3
      209 DUPTABLE                         R15 K28 [{"tag", "LayoutOrder"}]
      210 LOADK                            R16 K29 ["row size-full-0 auto-y gap-small align-y-center"]
      211 SETTABLEKS                       R16 R15 K4 ["tag"]
      213 MOVE                             R16 R5
      214 CALL                             R16 0 1
      215 SETTABLEKS                       R16 R15 K6 ["LayoutOrder"]
      217 DUPTABLE                         R16 K45 [{"OpenButton", "DuplicateButton"}]
      218 GETUPVAL                         R17 2
      219 GETUPVAL                         R18 9
      220 DUPTABLE                         R19 K50 [{"text", "size", "variant", "onActivated", "testId", "LayoutOrder"}]
      221 GETTABLEKS                       R20 R2 K51 ["Open"]
      223 SETTABLEKS                       R20 R19 K46 ["text"]
      225 GETUPVAL                         R20 10
      226 GETTABLEKS                       R20 R20 K52 ["Small"]
      228 SETTABLEKS                       R20 R19 K47 ["size"]
      230 GETUPVAL                         R20 11
      231 GETTABLEKS                       R20 R20 K53 ["Standard"]
      233 SETTABLEKS                       R20 R19 K48 ["variant"]
      235 SETTABLEKS                       R8 R19 K49 ["onActivated"]
      237 GETUPVAL                         R20 4
      238 GETTABLEKS                       R20 R20 K9 ["Skills"]
      240 GETTABLEKS                       R20 R20 K10 ["DetailPane"]
      242 GETTABLEKS                       R20 R20 K43 ["OpenButton"]
      244 SETTABLEKS                       R20 R19 K5 ["testId"]
      246 MOVE                             R20 R7
      247 CALL                             R20 0 1
      248 SETTABLEKS                       R20 R19 K6 ["LayoutOrder"]
      250 CALL                             R17 2 1
      251 SETTABLEKS                       R17 R16 K43 ["OpenButton"]
      253 GETUPVAL                         R17 2
      254 GETUPVAL                         R18 9
      255 DUPTABLE                         R19 K55 [{"text", "size", "variant", "isDisabled", "onActivated", "testId", "LayoutOrder"}]
      256 GETTABLEKS                       R20 R2 K56 ["Duplicate"]
      258 SETTABLEKS                       R20 R19 K46 ["text"]
      260 GETUPVAL                         R20 10
      261 GETTABLEKS                       R20 R20 K52 ["Small"]
      263 SETTABLEKS                       R20 R19 K47 ["size"]
      265 GETUPVAL                         R20 11
      266 GETTABLEKS                       R20 R20 K14 ["Text"]
      268 SETTABLEKS                       R20 R19 K48 ["variant"]
      270 LOADB                            R20 1
      271 SETTABLEKS                       R20 R19 K54 ["isDisabled"]
      273 GETUPVAL                         R20 12
      274 SETTABLEKS                       R20 R19 K49 ["onActivated"]
      276 GETUPVAL                         R20 4
      277 GETTABLEKS                       R20 R20 K9 ["Skills"]
      279 GETTABLEKS                       R20 R20 K10 ["DetailPane"]
      281 GETTABLEKS                       R20 R20 K44 ["DuplicateButton"]
      283 SETTABLEKS                       R20 R19 K5 ["testId"]
      285 MOVE                             R20 R7
      286 CALL                             R20 0 1
      287 SETTABLEKS                       R20 R19 K6 ["LayoutOrder"]
      289 CALL                             R17 2 1
      290 SETTABLEKS                       R17 R16 K44 ["DuplicateButton"]
      292 CALL                             R13 3 1
      293 SETTABLEKS                       R13 R12 K26 ["Buttons"]
      295 CALL                             R9 3 -1
      296 RETURN                           R9 -1

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
       51 GETIMPORT                        R7 K5 [require]
       53 GETIMPORT                        R8 K1 [script]
       55 GETTABLEKS                       R8 R8 K6 ["Parent"]
       57 GETTABLEKS                       R8 R8 K17 ["openSkillInMarkdownEditor"]
       59 CALL                             R7 1 1
       60 GETTABLEKS                       R8 R1 K18 ["Button"]
       62 GETTABLEKS                       R9 R1 K19 ["Text"]
       64 GETTABLEKS                       R10 R1 K20 ["View"]
       66 GETTABLEKS                       R11 R1 K21 ["Enums"]
       68 GETTABLEKS                       R11 R11 K22 ["ButtonSize"]
       70 GETTABLEKS                       R12 R1 K21 ["Enums"]
       72 GETTABLEKS                       R12 R12 K23 ["ButtonVariant"]
       74 GETTABLEKS                       R13 R4 K24 ["Sources"]
       76 GETTABLEKS                       R14 R3 K25 ["createNextOrder"]
       78 GETTABLEKS                       R15 R2 K26 ["createElement"]
       80 DUPCLOSURE                       R16 K27 [PROTO_0]
       81 DUPCLOSURE                       R17 K28 [PROTO_3]
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R15
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R13
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R14
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R11
       93 CAPTURE                          VAL R12
       94 CAPTURE                          VAL R16
       95 RETURN                           R17 1
