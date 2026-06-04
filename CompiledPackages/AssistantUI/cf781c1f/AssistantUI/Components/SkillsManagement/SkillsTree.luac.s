PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["name"]
        2 GETTABLEKS                       R4 R1 K0 ["name"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R3 R0
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 GETTABLEKS                       R8 R7 K0 ["source"]
       10 GETUPVAL                         R9 0
       11 GETTABLEKS                       R9 R9 K1 ["User"]
       13 JUMPIFNOTEQ                      R8 R9 ; [+9]
       15 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       17 MOVE                             R9 R1
       18 MOVE                             R10 R7
       19 GETIMPORT                        R8 K4 [table.insert]
       21 CALL                             R8 2 0
       22 JUMP                             ; [+7]
       23 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       25 MOVE                             R9 R2
       26 MOVE                             R10 R7
       27 GETIMPORT                        R8 K4 [table.insert]
       29 CALL                             R8 2 0
       30 FORGLOOP                         R3 2 ; [-23]
       32 DUPCLOSURE                       R3 K5 [PROTO_0]
       33 GETIMPORT                        R4 K7 [table.sort]
       35 MOVE                             R5 R1
       36 MOVE                             R6 R3
       37 CALL                             R4 2 0
       38 GETIMPORT                        R4 K7 [table.sort]
       40 MOVE                             R5 R2
       41 MOVE                             R6 R3
       42 CALL                             R4 2 0
       43 RETURN                           R1 2

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onSelectSkill"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["name"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 1
        4 CALL                             R1 1 2
        5 NEWTABLE                         R3 0 0
        7 JUMPIFNOT                        R1 ; [+37]
        8 GETUPVAL                         R4 1
        9 CALL                             R4 0 1
       10 GETTABLEKS                       R5 R0 K1 ["skills"]
       12 LOADNIL                          R6
       13 LOADNIL                          R7
       14 FORGPREP                         R5
       15 GETTABLEKS                       R10 R9 K2 ["name"]
       17 GETUPVAL                         R11 2
       18 GETUPVAL                         R12 3
       19 DUPTABLE                         R13 K7 [{"skill", "isSelected", "onSelected", "LayoutOrder"}]
       20 SETTABLEKS                       R9 R13 K3 ["skill"]
       22 GETTABLEKS                       R15 R0 K8 ["selectedSkillName"]
       24 GETTABLEKS                       R16 R9 K2 ["name"]
       26 JUMPIFEQ                         R15 R16 ; [+2]
       28 LOADB                            R14 0 +1
       29 LOADB                            R14 1
       30 SETTABLEKS                       R14 R13 K4 ["isSelected"]
       32 NEWCLOSURE                       R14 P0
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R9
       35 SETTABLEKS                       R14 R13 K5 ["onSelected"]
       37 MOVE                             R14 R4
       38 CALL                             R14 0 1
       39 SETTABLEKS                       R14 R13 K6 ["LayoutOrder"]
       41 CALL                             R11 2 1
       42 SETTABLE                         R11 R3 R10
       43 FORGLOOP                         R5 2 ; [-29]
       45 GETUPVAL                         R4 1
       46 CALL                             R4 0 1
       47 GETUPVAL                         R5 1
       48 CALL                             R5 0 1
       49 GETUPVAL                         R6 2
       50 GETUPVAL                         R7 4
       51 DUPTABLE                         R8 K11 [{"tag", "testId", "LayoutOrder"}]
       52 LOADK                            R9 K12 ["col size-full-0 auto-y gap-xsmall"]
       53 SETTABLEKS                       R9 R8 K9 ["tag"]
       55 GETTABLEKS                       R9 R0 K10 ["testId"]
       57 SETTABLEKS                       R9 R8 K10 ["testId"]
       59 GETTABLEKS                       R9 R0 K6 ["LayoutOrder"]
       61 SETTABLEKS                       R9 R8 K6 ["LayoutOrder"]
       63 DUPTABLE                         R9 K15 [{"Header", "Rows"}]
       64 GETUPVAL                         R10 2
       65 GETUPVAL                         R11 4
       66 DUPTABLE                         R12 K17 [{"tag", "onActivated", "LayoutOrder"}]
       67 LOADK                            R13 K18 ["row size-full-0 auto-y gap-small align-y-center padding-y-xsmall"]
       68 SETTABLEKS                       R13 R12 K9 ["tag"]
       70 NEWCLOSURE                       R13 P1
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R1
       73 SETTABLEKS                       R13 R12 K16 ["onActivated"]
       75 MOVE                             R13 R4
       76 CALL                             R13 0 1
       77 SETTABLEKS                       R13 R12 K6 ["LayoutOrder"]
       79 DUPTABLE                         R13 K21 [{"Chevron", "Label"}]
       80 GETUPVAL                         R14 2
       81 GETUPVAL                         R15 5
       82 DUPTABLE                         R16 K23 [{"name", "size", "LayoutOrder"}]
       83 JUMPIFNOT                        R1 ; [+4]
       84 GETUPVAL                         R17 6
       85 GETTABLEKS                       R17 R17 K24 ["ChevronSmallDown"]
       87 JUMP                             ; [+3]
       88 GETUPVAL                         R17 6
       89 GETTABLEKS                       R17 R17 K25 ["ChevronSmallRight"]
       91 SETTABLEKS                       R17 R16 K2 ["name"]
       93 GETUPVAL                         R17 7
       94 GETTABLEKS                       R17 R17 K26 ["Small"]
       96 SETTABLEKS                       R17 R16 K22 ["size"]
       98 MOVE                             R17 R5
       99 CALL                             R17 0 1
      100 SETTABLEKS                       R17 R16 K6 ["LayoutOrder"]
      102 CALL                             R14 2 1
      103 SETTABLEKS                       R14 R13 K19 ["Chevron"]
      105 GETUPVAL                         R14 2
      106 GETUPVAL                         R15 8
      107 DUPTABLE                         R16 K28 [{"tag", "Text", "LayoutOrder"}]
      108 LOADK                            R17 K29 ["auto-xy text-body-medium content-emphasis text-align-x-left"]
      109 SETTABLEKS                       R17 R16 K9 ["tag"]
      111 GETTABLEKS                       R17 R0 K30 ["label"]
      113 SETTABLEKS                       R17 R16 K27 ["Text"]
      115 MOVE                             R17 R5
      116 CALL                             R17 0 1
      117 SETTABLEKS                       R17 R16 K6 ["LayoutOrder"]
      119 CALL                             R14 2 1
      120 SETTABLEKS                       R14 R13 K20 ["Label"]
      122 CALL                             R10 3 1
      123 SETTABLEKS                       R10 R9 K13 ["Header"]
      125 GETUPVAL                         R10 2
      126 GETUPVAL                         R11 4
      127 DUPTABLE                         R12 K31 [{"tag", "LayoutOrder"}]
      128 LOADK                            R13 K32 ["col size-full-0 auto-y gap-xsmall padding-left-large"]
      129 SETTABLEKS                       R13 R12 K9 ["tag"]
      131 MOVE                             R13 R4
      132 CALL                             R13 0 1
      133 SETTABLEKS                       R13 R12 K6 ["LayoutOrder"]
      135 MOVE                             R13 R3
      136 CALL                             R10 3 1
      137 SETTABLEKS                       R10 R9 K14 ["Rows"]
      139 CALL                             R6 3 -1
      140 RETURN                           R6 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["skills"]
        3 CALL                             R1 1 2
        4 GETUPVAL                         R3 1
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 2
        7 GETUPVAL                         R5 3
        8 DUPTABLE                         R6 K3 [{"tag", "LayoutOrder"}]
        9 LOADK                            R7 K4 ["col size-full-0 auto-y gap-medium"]
       10 SETTABLEKS                       R7 R6 K1 ["tag"]
       12 GETTABLEKS                       R7 R0 K2 ["LayoutOrder"]
       14 SETTABLEKS                       R7 R6 K2 ["LayoutOrder"]
       16 DUPTABLE                         R7 K7 [{"PersonalGroup", "RobloxGroup"}]
       17 GETUPVAL                         R8 2
       18 GETUPVAL                         R9 4
       19 DUPTABLE                         R10 K12 [{"label", "skills", "testId", "selectedSkillName", "onSelectSkill", "LayoutOrder"}]
       20 GETTABLEKS                       R11 R0 K13 ["personalGroupLabel"]
       22 SETTABLEKS                       R11 R10 K8 ["label"]
       24 SETTABLEKS                       R1 R10 K0 ["skills"]
       26 GETUPVAL                         R11 5
       27 GETTABLEKS                       R11 R11 K14 ["Skills"]
       29 GETTABLEKS                       R11 R11 K5 ["PersonalGroup"]
       31 SETTABLEKS                       R11 R10 K9 ["testId"]
       33 GETTABLEKS                       R11 R0 K10 ["selectedSkillName"]
       35 SETTABLEKS                       R11 R10 K10 ["selectedSkillName"]
       37 GETTABLEKS                       R11 R0 K11 ["onSelectSkill"]
       39 SETTABLEKS                       R11 R10 K11 ["onSelectSkill"]
       41 MOVE                             R11 R3
       42 CALL                             R11 0 1
       43 SETTABLEKS                       R11 R10 K2 ["LayoutOrder"]
       45 CALL                             R8 2 1
       46 SETTABLEKS                       R8 R7 K5 ["PersonalGroup"]
       48 GETUPVAL                         R8 2
       49 GETUPVAL                         R9 4
       50 DUPTABLE                         R10 K12 [{"label", "skills", "testId", "selectedSkillName", "onSelectSkill", "LayoutOrder"}]
       51 GETTABLEKS                       R11 R0 K15 ["robloxGroupLabel"]
       53 SETTABLEKS                       R11 R10 K8 ["label"]
       55 SETTABLEKS                       R2 R10 K0 ["skills"]
       57 GETUPVAL                         R11 5
       58 GETTABLEKS                       R11 R11 K14 ["Skills"]
       60 GETTABLEKS                       R11 R11 K6 ["RobloxGroup"]
       62 SETTABLEKS                       R11 R10 K9 ["testId"]
       64 GETTABLEKS                       R11 R0 K10 ["selectedSkillName"]
       66 SETTABLEKS                       R11 R10 K10 ["selectedSkillName"]
       68 GETTABLEKS                       R11 R0 K11 ["onSelectSkill"]
       70 SETTABLEKS                       R11 R10 K11 ["onSelectSkill"]
       72 MOVE                             R11 R3
       73 CALL                             R11 0 1
       74 SETTABLEKS                       R11 R10 K2 ["LayoutOrder"]
       76 CALL                             R8 2 1
       77 SETTABLEKS                       R8 R7 K6 ["RobloxGroup"]
       79 CALL                             R4 3 -1
       80 RETURN                           R4 -1

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
       37 GETIMPORT                        R6 K1 [script]
       39 GETTABLEKS                       R6 R6 K6 ["Parent"]
       41 GETTABLEKS                       R6 R6 K12 ["SkillRow"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K13 ["Util"]
       48 GETTABLEKS                       R7 R7 K14 ["TestIds"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R7 R1 K15 ["Icon"]
       53 GETTABLEKS                       R8 R1 K16 ["Text"]
       55 GETTABLEKS                       R9 R1 K17 ["View"]
       57 GETTABLEKS                       R10 R1 K18 ["Enums"]
       59 GETTABLEKS                       R10 R10 K19 ["IconName"]
       61 GETTABLEKS                       R11 R1 K18 ["Enums"]
       63 GETTABLEKS                       R11 R11 K20 ["IconSize"]
       65 GETTABLEKS                       R12 R4 K21 ["Sources"]
       67 GETTABLEKS                       R13 R3 K22 ["createNextOrder"]
       69 GETTABLEKS                       R14 R2 K23 ["createElement"]
       71 DUPCLOSURE                       R15 K24 [PROTO_1]
       72 CAPTURE                          VAL R12
       73 DUPCLOSURE                       R16 K25 [PROTO_4]
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R13
       76 CAPTURE                          VAL R14
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R8
       83 DUPCLOSURE                       R17 K26 [PROTO_5]
       84 CAPTURE                          VAL R15
       85 CAPTURE                          VAL R13
       86 CAPTURE                          VAL R14
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R16
       89 CAPTURE                          VAL R6
       90 RETURN                           R17 1
