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
        0 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
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
       44 DUPTABLE                         R7 K23 [{["markdown"], ["title"], ["inputEnabled"] = False, ["editable"], ["action"], ["onAction"], ["isActionDisabled"] = True, ["onMarkdownChanged"], ["onDirtyChanged"]}]
       45 GETTABLEKS                       R8 R0 K24 ["rawContent"]
       47 JUMPIF                           R8 ; [+2]
       48 GETTABLEKS                       R8 R0 K25 ["content"]
       50 SETTABLEKS                       R8 R7 K12 ["markdown"]
       52 GETTABLEKS                       R8 R0 K26 ["name"]
       54 SETTABLEKS                       R8 R7 K13 ["title"]
       56 SETTABLEKS                       R3 R7 K16 ["editable"]
       58 SETTABLEKS                       R4 R7 K17 ["action"]
       60 SETTABLEKS                       R5 R7 K18 ["onAction"]
       62 GETTABLEKS                       R8 R2 K21 ["onMarkdownChanged"]
       64 JUMPIF                           R8 ; [+1]
       65 DUPCLOSURE                       R8 K27 [PROTO_1]
       66 SETTABLEKS                       R8 R7 K21 ["onMarkdownChanged"]
       68 GETTABLEKS                       R8 R2 K22 ["onDirtyChanged"]
       70 JUMPIF                           R8 ; [+1]
       71 DUPCLOSURE                       R8 K28 [PROTO_2]
       72 SETTABLEKS                       R8 R7 K22 ["onDirtyChanged"]
       74 CALL                             R6 1 -1
       75 RETURN                           R6 -1

PROTO_4:
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
       29 NEWTABLE                         R6 2 0
       31 NEWCLOSURE                       R7 P1
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R2
       34 CAPTURE                          REF R4
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R7 R6 K12 ["open"]
       38 NEWCLOSURE                       R7 P2
       39 CAPTURE                          REF R4
       40 SETTABLEKS                       R7 R6 K13 ["_setTestMarkdownDockPanel"]
       42 CLOSEUPVALS                      R4
       43 RETURN                           R6 1
