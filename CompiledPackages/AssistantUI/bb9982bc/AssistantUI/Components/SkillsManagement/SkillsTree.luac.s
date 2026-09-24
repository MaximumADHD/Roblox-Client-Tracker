PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["skill"]
        2 GETTABLEKS                       R3 R3 K1 ["name"]
        4 GETTABLEKS                       R4 R1 K0 ["skill"]
        6 GETTABLEKS                       R4 R4 K1 ["name"]
        8 JUMPIFLT                         R3 R4 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R3 R0
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 GETTABLEKS                       R8 R7 K0 ["skill"]
       10 GETTABLEKS                       R8 R8 K1 ["source"]
       12 GETUPVAL                         R9 0
       13 GETTABLEKS                       R9 R9 K2 ["User"]
       15 JUMPIFNOTEQ                      R8 R9 ; [+9]
       17 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       19 MOVE                             R9 R1
       20 MOVE                             R10 R7
       21 GETIMPORT                        R8 K5 [table.insert]
       23 CALL                             R8 2 0
       24 JUMP                             ; [+7]
       25 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       27 MOVE                             R9 R2
       28 MOVE                             R10 R7
       29 GETIMPORT                        R8 K5 [table.insert]
       31 CALL                             R8 2 0
       32 FORGLOOP                         R3 2 ; [-25]
       34 DUPCLOSURE                       R3 K6 [PROTO_0]
       35 GETIMPORT                        R4 K8 [table.sort]
       37 MOVE                             R5 R1
       38 MOVE                             R6 R3
       39 CALL                             R4 2 0
       40 GETIMPORT                        R4 K8 [table.sort]
       42 MOVE                             R5 R2
       43 MOVE                             R6 R3
       44 CALL                             R4 2 0
       45 RETURN                           R1 2

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onSelectSkill"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["skill"]
        6 GETTABLEKS                       R1 R1 K2 ["name"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onToggleSkill"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["skill"]
        6 GETTABLEKS                       R1 R1 K2 ["name"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 1
        4 CALL                             R1 1 2
        5 NEWTABLE                         R3 0 0
        7 JUMPIFNOT                        R1 ; [+56]
        8 GETUPVAL                         R4 1
        9 CALL                             R4 0 1
       10 GETTABLEKS                       R5 R0 K1 ["entries"]
       12 LOADNIL                          R6
       13 LOADNIL                          R7
       14 FORGPREP                         R5
       15 GETTABLEKS                       R10 R9 K2 ["skill"]
       17 GETTABLEKS                       R10 R10 K3 ["name"]
       19 GETUPVAL                         R11 2
       20 GETUPVAL                         R12 3
       21 DUPTABLE                         R13 K10 [{"skill", "isSelected", "isEnabled", "isToggleDisabled", "onSelected", "onToggled", "LayoutOrder"}]
       22 GETTABLEKS                       R14 R9 K2 ["skill"]
       24 SETTABLEKS                       R14 R13 K2 ["skill"]
       26 GETTABLEKS                       R15 R0 K11 ["selectedSkillName"]
       28 GETTABLEKS                       R16 R9 K2 ["skill"]
       30 GETTABLEKS                       R16 R16 K3 ["name"]
       32 JUMPIFEQ                         R15 R16 ; [+2]
       34 LOADB                            R14 0 +1
       35 LOADB                            R14 1
       36 SETTABLEKS                       R14 R13 K4 ["isSelected"]
       38 GETTABLEKS                       R14 R9 K5 ["isEnabled"]
       40 SETTABLEKS                       R14 R13 K5 ["isEnabled"]
       42 GETTABLEKS                       R14 R9 K6 ["isToggleDisabled"]
       44 SETTABLEKS                       R14 R13 K6 ["isToggleDisabled"]
       46 NEWCLOSURE                       R14 P0
       47 CAPTURE                          VAL R0
       48 CAPTURE                          VAL R9
       49 SETTABLEKS                       R14 R13 K7 ["onSelected"]
       51 NEWCLOSURE                       R14 P1
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R9
       54 SETTABLEKS                       R14 R13 K8 ["onToggled"]
       56 MOVE                             R14 R4
       57 CALL                             R14 0 1
       58 SETTABLEKS                       R14 R13 K9 ["LayoutOrder"]
       60 CALL                             R11 2 1
       61 SETTABLE                         R11 R3 R10
       62 FORGLOOP                         R5 2 ; [-48]
       64 GETUPVAL                         R4 1
       65 CALL                             R4 0 1
       66 GETUPVAL                         R5 1
       67 CALL                             R5 0 1
       68 GETUPVAL                         R6 2
       69 GETUPVAL                         R7 4
       70 DUPTABLE                         R8 K15 [{["tag"] = "col gap-xsmall size-full-0 auto-y", ["testId"], ["LayoutOrder"]}]
       71 GETTABLEKS                       R9 R0 K14 ["testId"]
       73 SETTABLEKS                       R9 R8 K14 ["testId"]
       75 GETTABLEKS                       R9 R0 K9 ["LayoutOrder"]
       77 SETTABLEKS                       R9 R8 K9 ["LayoutOrder"]
       79 DUPTABLE                         R9 K18 [{"Header", "Rows"}]
       80 GETUPVAL                         R10 2
       81 GETUPVAL                         R11 4
       82 DUPTABLE                         R12 K21 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y padding-y-xsmall", ["onActivated"], ["LayoutOrder"]}]
       83 NEWCLOSURE                       R13 P2
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R1
       86 SETTABLEKS                       R13 R12 K20 ["onActivated"]
       88 MOVE                             R13 R4
       89 CALL                             R13 0 1
       90 SETTABLEKS                       R13 R12 K9 ["LayoutOrder"]
       92 DUPTABLE                         R13 K24 [{"Chevron", "Label"}]
       93 GETUPVAL                         R14 2
       94 GETUPVAL                         R15 5
       95 DUPTABLE                         R16 K26 [{"name", "size", "LayoutOrder"}]
       96 JUMPIFNOT                        R1 ; [+4]
       97 GETUPVAL                         R17 6
       98 GETTABLEKS                       R17 R17 K27 ["ChevronSmallDown"]
      100 JUMP                             ; [+3]
      101 GETUPVAL                         R17 6
      102 GETTABLEKS                       R17 R17 K28 ["ChevronSmallRight"]
      104 SETTABLEKS                       R17 R16 K3 ["name"]
      106 GETUPVAL                         R17 7
      107 GETTABLEKS                       R17 R17 K29 ["Small"]
      109 SETTABLEKS                       R17 R16 K25 ["size"]
      111 MOVE                             R17 R5
      112 CALL                             R17 0 1
      113 SETTABLEKS                       R17 R16 K9 ["LayoutOrder"]
      115 CALL                             R14 2 1
      116 SETTABLEKS                       R14 R13 K22 ["Chevron"]
      118 GETUPVAL                         R14 2
      119 GETUPVAL                         R15 8
      120 DUPTABLE                         R16 K32 [{["tag"] = "auto-xy text-body-medium text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"]}]
      121 GETTABLEKS                       R17 R0 K33 ["label"]
      123 SETTABLEKS                       R17 R16 K31 ["Text"]
      125 MOVE                             R17 R5
      126 CALL                             R17 0 1
      127 SETTABLEKS                       R17 R16 K9 ["LayoutOrder"]
      129 CALL                             R14 2 1
      130 SETTABLEKS                       R14 R13 K23 ["Label"]
      132 CALL                             R10 3 1
      133 SETTABLEKS                       R10 R9 K16 ["Header"]
      135 GETUPVAL                         R10 2
      136 GETUPVAL                         R11 4
      137 DUPTABLE                         R12 K35 [{["tag"] = "col gap-xsmall size-full-0 auto-y padding-left-large", ["LayoutOrder"]}]
      138 MOVE                             R13 R4
      139 CALL                             R13 0 1
      140 SETTABLEKS                       R13 R12 K9 ["LayoutOrder"]
      142 MOVE                             R13 R3
      143 CALL                             R10 3 1
      144 SETTABLEKS                       R10 R9 K17 ["Rows"]
      146 CALL                             R6 3 -1
      147 RETURN                           R6 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["skills"]
        3 CALL                             R1 1 2
        4 GETUPVAL                         R3 1
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 2
        7 GETUPVAL                         R5 3
        8 DUPTABLE                         R6 K4 [{["tag"] = "col gap-medium size-full-0 auto-y", ["LayoutOrder"]}]
        9 GETTABLEKS                       R7 R0 K3 ["LayoutOrder"]
       11 SETTABLEKS                       R7 R6 K3 ["LayoutOrder"]
       13 DUPTABLE                         R7 K7 [{"PersonalGroup", "RobloxGroup"}]
       14 GETUPVAL                         R8 2
       15 GETUPVAL                         R9 4
       16 DUPTABLE                         R10 K14 [{"label", "entries", "testId", "selectedSkillName", "onSelectSkill", "onToggleSkill", "LayoutOrder"}]
       17 GETTABLEKS                       R11 R0 K15 ["personalGroupLabel"]
       19 SETTABLEKS                       R11 R10 K8 ["label"]
       21 SETTABLEKS                       R1 R10 K9 ["entries"]
       23 GETUPVAL                         R11 5
       24 GETTABLEKS                       R11 R11 K16 ["Skills"]
       26 GETTABLEKS                       R11 R11 K5 ["PersonalGroup"]
       28 SETTABLEKS                       R11 R10 K10 ["testId"]
       30 GETTABLEKS                       R11 R0 K11 ["selectedSkillName"]
       32 SETTABLEKS                       R11 R10 K11 ["selectedSkillName"]
       34 GETTABLEKS                       R11 R0 K12 ["onSelectSkill"]
       36 SETTABLEKS                       R11 R10 K12 ["onSelectSkill"]
       38 GETTABLEKS                       R11 R0 K13 ["onToggleSkill"]
       40 SETTABLEKS                       R11 R10 K13 ["onToggleSkill"]
       42 MOVE                             R11 R3
       43 CALL                             R11 0 1
       44 SETTABLEKS                       R11 R10 K3 ["LayoutOrder"]
       46 CALL                             R8 2 1
       47 SETTABLEKS                       R8 R7 K5 ["PersonalGroup"]
       49 GETUPVAL                         R8 2
       50 GETUPVAL                         R9 4
       51 DUPTABLE                         R10 K14 [{"label", "entries", "testId", "selectedSkillName", "onSelectSkill", "onToggleSkill", "LayoutOrder"}]
       52 GETTABLEKS                       R11 R0 K17 ["robloxGroupLabel"]
       54 SETTABLEKS                       R11 R10 K8 ["label"]
       56 SETTABLEKS                       R2 R10 K9 ["entries"]
       58 GETUPVAL                         R11 5
       59 GETTABLEKS                       R11 R11 K16 ["Skills"]
       61 GETTABLEKS                       R11 R11 K6 ["RobloxGroup"]
       63 SETTABLEKS                       R11 R10 K10 ["testId"]
       65 GETTABLEKS                       R11 R0 K11 ["selectedSkillName"]
       67 SETTABLEKS                       R11 R10 K11 ["selectedSkillName"]
       69 GETTABLEKS                       R11 R0 K12 ["onSelectSkill"]
       71 SETTABLEKS                       R11 R10 K12 ["onSelectSkill"]
       73 GETTABLEKS                       R11 R0 K13 ["onToggleSkill"]
       75 SETTABLEKS                       R11 R10 K13 ["onToggleSkill"]
       77 MOVE                             R11 R3
       78 CALL                             R11 0 1
       79 SETTABLEKS                       R11 R10 K3 ["LayoutOrder"]
       81 CALL                             R8 2 1
       82 SETTABLEKS                       R8 R7 K6 ["RobloxGroup"]
       84 CALL                             R4 3 -1
       85 RETURN                           R4 -1

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
       73 DUPCLOSURE                       R16 K25 [PROTO_5]
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R13
       76 CAPTURE                          VAL R14
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R8
       83 DUPCLOSURE                       R17 K26 [PROTO_6]
       84 CAPTURE                          VAL R15
       85 CAPTURE                          VAL R13
       86 CAPTURE                          VAL R14
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R16
       89 CAPTURE                          VAL R6
       90 RETURN                           R17 1
