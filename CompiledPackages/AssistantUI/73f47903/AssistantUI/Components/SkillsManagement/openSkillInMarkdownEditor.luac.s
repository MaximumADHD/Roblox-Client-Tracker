PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+11]
        2 GETIMPORT                        R0 K1 [require]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R1 K3 ["BloxMarkdown"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R0 R0 K4 ["MarkdownDockPanel"]
       12 SETUPVAL                         R0 0
       13 GETUPVAL                         R0 0
       14 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["source"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["User"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+12]
        7 LOADK                            R2 K2 ["cloud://skills/%* (asset:%*)"]
        8 GETTABLEKS                       R4 R0 K3 ["name"]
       10 GETTABLEKS                       R6 R0 K5 ["assetId"]
       12 ORK                              R5 R6 K4 ["?"]
       13 NAMECALL                         R2 R2 K6 ["format"]
       15 CALL                             R2 3 1
       16 MOVE                             R1 R2
       17 RETURN                           R1 1
       18 LOADK                            R2 K7 ["roblox://skills/%*/SKILL.md"]
       19 GETTABLEKS                       R4 R0 K3 ["name"]
       21 NAMECALL                         R2 R2 K6 ["format"]
       23 CALL                             R2 2 1
       24 MOVE                             R1 R2
       25 RETURN                           R1 1

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 GETTABLEKS                       R4 R0 K0 ["source"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K1 ["User"]
        9 JUMPIFEQ                         R4 R5 ; [+2]
       11 LOADB                            R3 0 +1
       12 LOADB                            R3 1
       13 LOADNIL                          R4
       14 LOADNIL                          R5
       15 JUMPIFNOT                        R3 ; [+12]
       16 GETTABLEKS                       R6 R2 K2 ["onSave"]
       18 JUMPIFNOT                        R6 ; [+9]
       19 GETUPVAL                         R6 1
       20 LOADK                            R8 K3 ["Skills"]
       21 LOADK                            R9 K4 ["Save"]
       22 NAMECALL                         R6 R6 K5 ["getText"]
       24 CALL                             R6 3 1
       25 MOVE                             R4 R6
       26 GETTABLEKS                       R5 R2 K2 ["onSave"]
       28 GETUPVAL                         R7 2
       29 JUMPIF                           R7 ; [+11]
       30 GETIMPORT                        R7 K7 [require]
       32 GETUPVAL                         R8 3
       33 GETTABLEKS                       R8 R8 K8 ["Parent"]
       35 GETTABLEKS                       R8 R8 K9 ["BloxMarkdown"]
       37 CALL                             R7 1 1
       38 GETTABLEKS                       R7 R7 K10 ["MarkdownDockPanel"]
       40 SETUPVAL                         R7 2
       41 GETUPVAL                         R6 2
       42 GETTABLEKS                       R6 R6 K11 ["open"]
       44 DUPTABLE                         R7 K22 [{["markdown"], ["title"], ["inputEnabled"] = False, ["action"], ["onAction"], ["isActionDisabled"] = True, ["onMarkdownChanged"], ["onDirtyChanged"]}]
       45 JUMPIFNOT                        R3 ; [+6]
       46 GETTABLEKS                       R9 R0 K23 ["rawContent"]
       48 JUMPIFNOT                        R9 ; [+3]
       49 GETTABLEKS                       R8 R0 K23 ["rawContent"]
       51 JUMP                             ; [+2]
       52 GETTABLEKS                       R8 R0 K24 ["content"]
       54 SETTABLEKS                       R8 R7 K12 ["markdown"]
       56 GETTABLEKS                       R8 R0 K25 ["name"]
       58 SETTABLEKS                       R8 R7 K13 ["title"]
       60 SETTABLEKS                       R4 R7 K16 ["action"]
       62 SETTABLEKS                       R5 R7 K17 ["onAction"]
       64 GETTABLEKS                       R8 R2 K20 ["onMarkdownChanged"]
       66 JUMPIF                           R8 ; [+1]
       67 DUPCLOSURE                       R8 K26 [PROTO_2]
       68 SETTABLEKS                       R8 R7 K20 ["onMarkdownChanged"]
       70 GETTABLEKS                       R8 R2 K21 ["onDirtyChanged"]
       72 JUMPIF                           R8 ; [+1]
       73 DUPCLOSURE                       R8 K27 [PROTO_3]
       74 SETTABLEKS                       R8 R7 K21 ["onDirtyChanged"]
       76 CALL                             R6 1 -1
       77 RETURN                           R6 -1

PROTO_5:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Skills"]
       11 GETTABLEKS                       R2 R2 K7 ["SkillDefinition"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Resources"]
       18 GETTABLEKS                       R3 R3 K9 ["Localization"]
       20 GETTABLEKS                       R3 R3 K10 ["Translator"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R1 K11 ["Sources"]
       25 LOADNIL                          R4
       26 NEWCLOSURE                       R5 P0
       27 CAPTURE                          REF R4
       28 CAPTURE                          VAL R0
       29 DUPCLOSURE                       R6 K12 [PROTO_1]
       30 CAPTURE                          VAL R3
       31 NEWTABLE                         R7 4 0
       33 NEWCLOSURE                       R8 P2
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R2
       36 CAPTURE                          REF R4
       37 CAPTURE                          VAL R0
       38 SETTABLEKS                       R8 R7 K13 ["open"]
       40 SETTABLEKS                       R6 R7 K14 ["uriForSkill"]
       42 NEWCLOSURE                       R8 P3
       43 CAPTURE                          REF R4
       44 SETTABLEKS                       R8 R7 K15 ["_setTestMarkdownDockPanel"]
       46 CLOSEUPVALS                      R4
       47 RETURN                           R7 1
