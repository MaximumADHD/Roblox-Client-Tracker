PROTO_0:
        0 LOADK                            R3 K0 ["[/\\][^/\\]*$"]
        1 NAMECALL                         R1 R0 K1 ["find"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+6]
        5 LOADN                            R4 1
        6 SUBK                             R5 R1 K2 [1]
        7 NAMECALL                         R2 R0 K3 ["sub"]
        9 CALL                             R2 3 1
       10 RETURN                           R2 1
       11 LOADK                            R2 K4 [""]
       12 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createAsync"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 GETUPVAL                         R4 4
        7 CALL                             R0 4 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["getUserSettingsAsync"]
        2 LOADK                            R2 K1 ["skillImportInitDirectory"]
        3 CALL                             R1 1 1
        4 FASTCALL1                        TYPEOF R1 ; [+3]
        5 MOVE                             R3 R1
        6 GETIMPORT                        R2 K3 [typeof]
        8 CALL                             R2 1 1
        9 JUMPIFEQKS                       R2 K4 ["string"] ; [+2]
       11 LOADK                            R1 K5 ["."]
       12 GETTABLEKS                       R2 R0 K6 ["openFileDialogAsync"]
       14 GETUPVAL                         R3 0
       15 LOADK                            R4 K7 ["Select a skill file"]
       16 MOVE                             R5 R1
       17 CALL                             R2 3 1
       18 JUMPIFNOTEQKS                    R2 K8 [""] ; [+3]
       20 DUPTABLE                         R3 K11 [{["status"] = "cancelled"}]
       21 RETURN                           R3 1
       22 GETTABLEKS                       R3 R0 K12 ["setUserSettingsAsync"]
       24 LOADK                            R4 K1 ["skillImportInitDirectory"]
       25 LOADK                            R8 K13 ["[/\\][^/\\]*$"]
       26 NAMECALL                         R6 R2 K14 ["find"]
       28 CALL                             R6 2 1
       29 JUMPIFNOT                        R6 ; [+7]
       30 LOADN                            R9 1
       31 SUBK                             R10 R6 K15 [1]
       32 NAMECALL                         R7 R2 K16 ["sub"]
       34 CALL                             R7 3 1
       35 MOVE                             R5 R7
       36 JUMP                             ; [+1]
       37 LOADK                            R5 K8 [""]
       38 CALL                             R3 2 0
       39 GETTABLEKS                       R4 R0 K17 ["importFileBinaryAsync"]
       41 MOVE                             R5 R2
       42 LOADK                            R6 K18 [1048576]
       43 FASTPCALL                        pcall 3 ; [+2]
       44 GETIMPORT                        R3 K20 [pcall]
       46 CALL                             R3 3 2
       47 JUMPIFNOT                        R3 ; [+7]
       48 FASTCALL1                        TYPEOF R4 ; [+3]
       49 MOVE                             R6 R4
       50 GETIMPORT                        R5 K3 [typeof]
       52 CALL                             R5 1 1
       53 JUMPIFEQKS                       R5 K4 ["string"] ; [+18]
       55 DUPTABLE                         R5 K24 [{["status"] = "error", ["code"], ["detail"]}]
       56 GETUPVAL                         R6 1
       57 GETTABLEKS                       R6 R6 K25 ["ReadFailed"]
       59 SETTABLEKS                       R6 R5 K22 ["code"]
       61 JUMPIFNOT                        R3 ; [+2]
       62 LOADNIL                          R6
       63 JUMP                             ; [+5]
       64 FASTCALL1                        TOSTRING R4 ; [+3]
       65 MOVE                             R7 R4
       66 GETIMPORT                        R6 K27 [tostring]
       68 CALL                             R6 1 1
       69 SETTABLEKS                       R6 R5 K23 ["detail"]
       71 RETURN                           R5 1
       72 LOADN                            R7 1
       73 LOADN                            R8 3
       74 NAMECALL                         R5 R4 K16 ["sub"]
       76 CALL                             R5 3 1
       77 JUMPIFNOTEQKS                    R5 K28 ["﻿"] ; [+6]
       79 LOADN                            R7 4
       80 NAMECALL                         R5 R4 K16 ["sub"]
       82 CALL                             R5 2 1
       83 MOVE                             R4 R5
       84 GETUPVAL                         R5 2
       85 GETTABLEKS                       R5 R5 K29 ["parse"]
       87 MOVE                             R6 R4
       88 CALL                             R5 1 2
       89 JUMPIF                           R5 ; [+9]
       90 DUPTABLE                         R7 K24 [{["status"] = "error", ["code"], ["detail"]}]
       91 GETUPVAL                         R8 1
       92 GETTABLEKS                       R8 R8 K30 ["ParseError"]
       94 SETTABLEKS                       R8 R7 K22 ["code"]
       96 SETTABLEKS                       R6 R7 K23 ["detail"]
       98 RETURN                           R7 1
       99 GETTABLEKS                       R7 R5 K31 ["frontmatter"]
      101 GETTABLEKS                       R7 R7 K32 ["name"]
      103 GETTABLEKS                       R8 R5 K31 ["frontmatter"]
      105 GETTABLEKS                       R8 R8 K33 ["description"]
      107 GETTABLEKS                       R9 R5 K34 ["body"]
      109 LOADK                            R12 K35 ["^[%w_%-]+$"]
      110 NAMECALL                         R10 R7 K36 ["match"]
      112 CALL                             R10 2 1
      113 JUMPIFNOT                        R10 ; [+7]
      114 LOADN                            R12 1
      115 LOADN                            R13 4
      116 NAMECALL                         R10 R7 K16 ["sub"]
      118 CALL                             R10 3 1
      119 JUMPIFNOTEQKS                    R10 K37 ["rbx-"] ; [+8]
      121 DUPTABLE                         R10 K38 [{["status"] = "error", ["code"]}]
      122 GETUPVAL                         R11 1
      123 GETTABLEKS                       R11 R11 K39 ["NameInvalid"]
      125 SETTABLEKS                       R11 R10 K22 ["code"]
      127 RETURN                           R10 1
      128 GETUPVAL                         R10 3
      129 GETTABLEKS                       R10 R10 K40 ["getBySource"]
      131 GETUPVAL                         R11 4
      132 GETTABLEKS                       R11 R11 K41 ["User"]
      134 MOVE                             R12 R7
      135 CALL                             R10 2 1
      136 JUMPIFNOTEQKNIL                  R10 ; [+7]
      138 GETUPVAL                         R10 5
      139 GETTABLEKS                       R10 R10 K42 ["isDisabled"]
      141 MOVE                             R11 R7
      142 CALL                             R10 1 1
      143 JUMPIFNOT                        R10 ; [+7]
      144 DUPTABLE                         R10 K38 [{["status"] = "error", ["code"]}]
      145 GETUPVAL                         R11 1
      146 GETTABLEKS                       R11 R11 K43 ["NameTaken"]
      148 SETTABLEKS                       R11 R10 K22 ["code"]
      150 RETURN                           R10 1
      151 LOADK                            R12 K44 ["%S"]
      152 NAMECALL                         R10 R9 K36 ["match"]
      154 CALL                             R10 2 1
      155 JUMPIF                           R10 ; [+7]
      156 DUPTABLE                         R10 K38 [{["status"] = "error", ["code"]}]
      157 GETUPVAL                         R11 1
      158 GETTABLEKS                       R11 R11 K45 ["EmptyBody"]
      160 SETTABLEKS                       R11 R10 K22 ["code"]
      162 RETURN                           R10 1
      163 NEWCLOSURE                       R11 P0
      164 CAPTURE                          UPVAL U6
      165 CAPTURE                          VAL R0
      166 CAPTURE                          VAL R7
      167 CAPTURE                          VAL R8
      168 CAPTURE                          VAL R9
      169 FASTPCALL                        pcall 1 ; [+2]
      170 GETIMPORT                        R10 K20 [pcall]
      172 CALL                             R10 1 2
      173 JUMPIF                           R10 ; [+14]
      174 DUPTABLE                         R12 K24 [{["status"] = "error", ["code"], ["detail"]}]
      175 GETUPVAL                         R13 1
      176 GETTABLEKS                       R13 R13 K46 ["PublishFailed"]
      178 SETTABLEKS                       R13 R12 K22 ["code"]
      180 FASTCALL1                        TOSTRING R11 ; [+3]
      181 MOVE                             R14 R11
      182 GETIMPORT                        R13 K27 [tostring]
      184 CALL                             R13 1 1
      185 SETTABLEKS                       R13 R12 K23 ["detail"]
      187 RETURN                           R12 1
      188 DUPTABLE                         R12 K48 [{["status"] = "created", ["name"]}]
      189 SETTABLEKS                       R7 R12 K32 ["name"]
      191 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["DisabledSkillsStore"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K8 ["Guest"]
       20 GETTABLEKS                       R3 R3 K9 ["Environment"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETIMPORT                        R4 K1 [script]
       27 GETTABLEKS                       R4 R4 K6 ["Parent"]
       29 GETTABLEKS                       R4 R4 K10 ["Frontmatter"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETIMPORT                        R5 K1 [script]
       36 GETTABLEKS                       R5 R5 K6 ["Parent"]
       38 GETTABLEKS                       R5 R5 K11 ["SkillDefinition"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETIMPORT                        R6 K1 [script]
       45 GETTABLEKS                       R6 R6 K6 ["Parent"]
       47 GETTABLEKS                       R6 R6 K12 ["SkillRegistry"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETIMPORT                        R7 K1 [script]
       54 GETTABLEKS                       R7 R7 K6 ["Parent"]
       56 GETTABLEKS                       R7 R7 K13 ["createUserSkillAsync"]
       58 CALL                             R6 1 1
       59 GETTABLEKS                       R7 R4 K14 ["Sources"]
       61 NEWTABLE                         R8 2 0
       63 NEWTABLE                         R9 0 1
       65 LOADK                            R10 K15 ["md"]
       66 SETLIST                          R9 R10 1 [1]
       68 DUPTABLE                         R10 K22 [{["ReadFailed"] = "ReadFailed", ["ParseError"] = "ParseError", ["NameInvalid"] = "NameInvalid", ["NameTaken"] = "NameTaken", ["EmptyBody"] = "EmptyBody", ["PublishFailed"] = "PublishFailed"}]
       69 SETTABLEKS                       R10 R8 K23 ["ErrorCodes"]
       71 DUPCLOSURE                       R11 K24 [PROTO_0]
       72 DUPCLOSURE                       R12 K25 [PROTO_2]
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R10
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R6
       80 SETTABLEKS                       R12 R8 K26 ["importFromFileAsync"]
       82 RETURN                           R8 1
