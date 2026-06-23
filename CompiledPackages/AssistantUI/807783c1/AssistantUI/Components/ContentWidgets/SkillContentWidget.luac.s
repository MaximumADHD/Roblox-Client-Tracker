PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKS                    R0 K0 [""] ; [+8]
        3 GETUPVAL                         R1 1
        4 LOADK                            R3 K1 ["Skill"]
        5 LOADK                            R4 K2 ["UnknownSkillName"]
        6 NAMECALL                         R1 R1 K3 ["getText"]
        8 CALL                             R1 3 1
        9 MOVE                             R0 R1
       10 DUPTABLE                         R1 K8 [{"Generating", "Calling", "Called", "Failed"}]
       11 GETUPVAL                         R2 1
       12 LOADK                            R4 K1 ["Skill"]
       13 LOADK                            R5 K4 ["Generating"]
       14 NAMECALL                         R2 R2 K3 ["getText"]
       16 CALL                             R2 3 1
       17 SETTABLEKS                       R2 R1 K4 ["Generating"]
       19 GETUPVAL                         R2 1
       20 LOADK                            R4 K1 ["Skill"]
       21 LOADK                            R5 K5 ["Calling"]
       22 DUPTABLE                         R6 K10 [{"name"}]
       23 SETTABLEKS                       R0 R6 K9 ["name"]
       25 NAMECALL                         R2 R2 K3 ["getText"]
       27 CALL                             R2 4 1
       28 SETTABLEKS                       R2 R1 K5 ["Calling"]
       30 GETUPVAL                         R2 1
       31 LOADK                            R4 K1 ["Skill"]
       32 LOADK                            R5 K6 ["Called"]
       33 DUPTABLE                         R6 K10 [{"name"}]
       34 SETTABLEKS                       R0 R6 K9 ["name"]
       36 NAMECALL                         R2 R2 K3 ["getText"]
       38 CALL                             R2 4 1
       39 SETTABLEKS                       R2 R1 K6 ["Called"]
       41 GETUPVAL                         R2 1
       42 LOADK                            R4 K1 ["Skill"]
       43 LOADK                            R5 K7 ["Failed"]
       44 DUPTABLE                         R6 K10 [{"name"}]
       45 SETTABLEKS                       R0 R6 K9 ["name"]
       47 NAMECALL                         R2 R2 K3 ["getText"]
       49 CALL                             R2 4 1
       50 SETTABLEKS                       R2 R1 K7 ["Failed"]
       52 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["toolUse"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["toolUse"]
        5 GETTABLEKS                       R1 R1 K1 ["input"]
        7 JUMPIF                           R1 ; [+2]
        8 NEWTABLE                         R1 0 0
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K2 ["withDefault"]
       13 GETTABLEKS                       R3 R1 K3 ["skill_name"]
       15 LOADK                            R4 K4 [""]
       16 CALL                             R2 2 1
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K5 ["useMemo"]
       20 NEWCLOSURE                       R4 P0
       21 CAPTURE                          VAL R2
       22 CAPTURE                          UPVAL U2
       23 NEWTABLE                         R5 0 2
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R6 R6 K6 ["locale"]
       28 MOVE                             R7 R2
       29 SETLIST                          R5 R6 2 [1]
       31 CALL                             R3 2 1
       32 LOADK                            R4 K4 [""]
       33 GETTABLEKS                       R5 R0 K7 ["toolResult"]
       35 JUMPIFNOT                        R5 ; [+16]
       36 GETTABLEKS                       R5 R0 K7 ["toolResult"]
       38 GETTABLEKS                       R5 R5 K8 ["structuredContent"]
       40 JUMPIFNOT                        R5 ; [+8]
       41 GETTABLEKS                       R5 R0 K7 ["toolResult"]
       43 GETTABLEKS                       R5 R5 K9 ["isError"]
       45 JUMPIF                           R5 ; [+3]
       46 GETTABLEKS                       R4 R3 K10 ["Called"]
       48 JUMP                             ; [+11]
       49 GETTABLEKS                       R4 R3 K11 ["Failed"]
       51 JUMP                             ; [+8]
       52 GETTABLEKS                       R5 R0 K0 ["toolUse"]
       54 JUMPIFNOT                        R5 ; [+3]
       55 GETTABLEKS                       R4 R3 K12 ["Calling"]
       57 JUMP                             ; [+2]
       58 GETTABLEKS                       R4 R3 K13 ["Generating"]
       60 GETUPVAL                         R5 3
       61 GETUPVAL                         R6 4
       62 GETTABLEKS                       R6 R6 K14 ["ContentWidget"]
       64 GETUPVAL                         R7 5
       65 GETTABLEKS                       R7 R7 K15 ["join"]
       67 MOVE                             R8 R0
       68 DUPTABLE                         R9 K18 [{"type", "summary"}]
       69 GETUPVAL                         R10 4
       70 GETTABLEKS                       R10 R10 K19 ["Type"]
       72 SETTABLEKS                       R10 R9 K16 ["type"]
       74 SETTABLEKS                       R4 R9 K17 ["summary"]
       76 CALL                             R7 2 -1
       77 CALL                             R5 -1 -1
       78 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["ContentWidgets"]
       27 GETTABLEKS                       R4 R4 K11 ["SummarizedContentWidget"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K12 ["Resources"]
       34 GETTABLEKS                       R5 R5 K13 ["Localization"]
       36 GETTABLEKS                       R5 R5 K14 ["Translator"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K15 ["Types"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K16 ["Util"]
       48 GETTABLEKS                       R7 R7 K17 ["WidgetUtils"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R7 R2 K18 ["createElement"]
       53 DUPCLOSURE                       R8 K19 [PROTO_1]
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R1
       60 DUPTABLE                         R9 K23 [{"Type", "ContentWidget", "Serialization"}]
       61 LOADK                            R10 K24 ["Skill"]
       62 SETTABLEKS                       R10 R9 K20 ["Type"]
       64 GETTABLEKS                       R10 R2 K25 ["memo"]
       66 MOVE                             R11 R8
       67 CALL                             R10 1 1
       68 SETTABLEKS                       R10 R9 K21 ["ContentWidget"]
       70 LOADNIL                          R10
       71 SETTABLEKS                       R10 R9 K22 ["Serialization"]
       73 RETURN                           R9 1
