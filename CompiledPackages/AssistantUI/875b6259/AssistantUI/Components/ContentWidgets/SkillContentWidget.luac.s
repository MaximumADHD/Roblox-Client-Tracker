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
        7 JUMP                             ; [+1]
        8 LOADNIL                          R1
        9 JUMPIFNOT                        R1 ; [+3]
       10 GETTABLEKS                       R2 R1 K2 ["skill_name"]
       12 JUMPIF                           R2 ; [+1]
       13 LOADK                            R2 K3 [""]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K4 ["useMemo"]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          VAL R2
       19 CAPTURE                          UPVAL U1
       20 NEWTABLE                         R5 0 2
       22 GETUPVAL                         R6 1
       23 GETTABLEKS                       R6 R6 K5 ["locale"]
       25 MOVE                             R7 R2
       26 SETLIST                          R5 R6 2 [1]
       28 CALL                             R3 2 1
       29 LOADK                            R4 K3 [""]
       30 GETTABLEKS                       R5 R0 K6 ["toolResult"]
       32 JUMPIFNOT                        R5 ; [+11]
       33 GETTABLEKS                       R5 R0 K6 ["toolResult"]
       35 GETTABLEKS                       R5 R5 K7 ["isError"]
       37 JUMPIF                           R5 ; [+3]
       38 GETTABLEKS                       R4 R3 K8 ["Called"]
       40 JUMP                             ; [+11]
       41 GETTABLEKS                       R4 R3 K9 ["Failed"]
       43 JUMP                             ; [+8]
       44 GETTABLEKS                       R5 R0 K0 ["toolUse"]
       46 JUMPIFNOT                        R5 ; [+3]
       47 GETTABLEKS                       R4 R3 K10 ["Calling"]
       49 JUMP                             ; [+2]
       50 GETTABLEKS                       R4 R3 K11 ["Generating"]
       52 GETUPVAL                         R5 2
       53 GETUPVAL                         R6 3
       54 GETTABLEKS                       R6 R6 K12 ["ContentWidget"]
       56 GETUPVAL                         R7 4
       57 GETTABLEKS                       R7 R7 K13 ["join"]
       59 MOVE                             R8 R0
       60 DUPTABLE                         R9 K16 [{"type", "summary"}]
       61 GETUPVAL                         R10 3
       62 GETTABLEKS                       R10 R10 K17 ["Type"]
       64 SETTABLEKS                       R10 R9 K14 ["type"]
       66 SETTABLEKS                       R4 R9 K15 ["summary"]
       68 CALL                             R7 2 -1
       69 CALL                             R5 -1 -1
       70 RETURN                           R5 -1

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
       44 GETTABLEKS                       R6 R2 K16 ["createElement"]
       46 DUPCLOSURE                       R7 K17 [PROTO_1]
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R1
       52 DUPTABLE                         R8 K21 [{"Type", "ContentWidget", "Serialization"}]
       53 LOADK                            R9 K22 ["Skill"]
       54 SETTABLEKS                       R9 R8 K18 ["Type"]
       56 GETTABLEKS                       R9 R2 K23 ["memo"]
       58 MOVE                             R10 R7
       59 CALL                             R9 1 1
       60 SETTABLEKS                       R9 R8 K19 ["ContentWidget"]
       62 LOADNIL                          R9
       63 SETTABLEKS                       R9 R8 K20 ["Serialization"]
       65 RETURN                           R8 1
