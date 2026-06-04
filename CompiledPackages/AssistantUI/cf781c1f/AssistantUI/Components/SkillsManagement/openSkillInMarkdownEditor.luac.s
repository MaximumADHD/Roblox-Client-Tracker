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
        7 LOADK                            R2 K2 ["local://skills/%*"]
        8 GETTABLEKS                       R4 R0 K3 ["relativePath"]
       10 JUMPIF                           R4 ; [+2]
       11 GETTABLEKS                       R4 R0 K4 ["name"]
       13 NAMECALL                         R2 R2 K5 ["format"]
       15 CALL                             R2 2 1
       16 MOVE                             R1 R2
       17 RETURN                           R1 1
       18 LOADK                            R2 K6 ["roblox://skills/%*/SKILL.md"]
       19 GETTABLEKS                       R4 R0 K4 ["name"]
       21 NAMECALL                         R2 R2 K5 ["format"]
       23 CALL                             R2 2 1
       24 MOVE                             R1 R2
       25 RETURN                           R1 1

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+11]
        2 GETIMPORT                        R2 K1 [require]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["Parent"]
        7 GETTABLEKS                       R3 R3 K3 ["BloxMarkdown"]
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R2 R2 K4 ["MarkdownDockPanel"]
       12 SETUPVAL                         R2 0
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K5 ["open"]
       16 DUPTABLE                         R2 K11 [{"markdown", "title", "inputEnabled", "onMarkdownChanged", "onDirtyChanged"}]
       17 GETTABLEKS                       R3 R0 K12 ["content"]
       19 SETTABLEKS                       R3 R2 K6 ["markdown"]
       21 GETTABLEKS                       R3 R0 K13 ["name"]
       23 SETTABLEKS                       R3 R2 K7 ["title"]
       25 LOADB                            R3 0
       26 SETTABLEKS                       R3 R2 K8 ["inputEnabled"]
       28 DUPCLOSURE                       R3 K14 [PROTO_2]
       29 SETTABLEKS                       R3 R2 K9 ["onMarkdownChanged"]
       31 DUPCLOSURE                       R3 K15 [PROTO_3]
       32 SETTABLEKS                       R3 R2 K10 ["onDirtyChanged"]
       34 CALL                             R1 1 -1
       35 RETURN                           R1 -1

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
       14 GETTABLEKS                       R2 R1 K8 ["Sources"]
       16 LOADNIL                          R3
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          REF R3
       19 CAPTURE                          VAL R0
       20 DUPCLOSURE                       R5 K9 [PROTO_1]
       21 CAPTURE                          VAL R2
       22 NEWTABLE                         R6 4 0
       24 NEWCLOSURE                       R7 P2
       25 CAPTURE                          REF R3
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R7 R6 K10 ["open"]
       29 SETTABLEKS                       R5 R6 K11 ["uriForSkill"]
       31 NEWCLOSURE                       R7 P3
       32 CAPTURE                          REF R3
       33 SETTABLEKS                       R7 R6 K12 ["_setTestMarkdownDockPanel"]
       35 CLOSEUPVALS                      R3
       36 RETURN                           R6 1
