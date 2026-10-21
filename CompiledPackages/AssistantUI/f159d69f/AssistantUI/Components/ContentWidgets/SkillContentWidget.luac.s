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
        0 GETTABLEKS                       R1 R0 K0 ["toolUse"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R2 R1 K1 ["input"]
        5 JUMPIF                           R2 ; [+1]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R4 R2 K3 ["skill_name"]
        9 ORK                              R3 R4 K2 [""]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K4 ["useMemo"]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          VAL R3
       15 CAPTURE                          UPVAL U2
       16 NEWTABLE                         R6 0 2
       18 GETUPVAL                         R7 2
       19 GETTABLEKS                       R7 R7 K5 ["locale"]
       21 MOVE                             R8 R3
       22 SETLIST                          R6 R7 2 [1]
       24 CALL                             R4 2 1
       25 GETTABLEKS                       R5 R0 K6 ["toolResult"]
       27 LOADK                            R6 K2 [""]
       28 JUMPIFNOT                        R5 ; [+12]
       29 GETTABLEKS                       R7 R5 K7 ["structuredContent"]
       31 JUMPIFNOT                        R7 ; [+6]
       32 GETTABLEKS                       R7 R5 K8 ["isError"]
       34 JUMPIF                           R7 ; [+3]
       35 GETTABLEKS                       R6 R4 K9 ["Called"]
       37 JUMP                             ; [+9]
       38 GETTABLEKS                       R6 R4 K10 ["Failed"]
       40 JUMP                             ; [+6]
       41 JUMPIFNOT                        R1 ; [+3]
       42 GETTABLEKS                       R6 R4 K11 ["Calling"]
       44 JUMP                             ; [+2]
       45 GETTABLEKS                       R6 R4 K12 ["Generating"]
       47 GETUPVAL                         R7 3
       48 GETUPVAL                         R8 4
       49 GETTABLEKS                       R8 R8 K13 ["ContentWidget"]
       51 GETUPVAL                         R9 5
       52 GETTABLEKS                       R9 R9 K14 ["join"]
       54 MOVE                             R10 R0
       55 DUPTABLE                         R11 K17 [{"type", "summary"}]
       56 GETUPVAL                         R12 4
       57 GETTABLEKS                       R12 R12 K18 ["Type"]
       59 SETTABLEKS                       R12 R11 K15 ["type"]
       61 SETTABLEKS                       R6 R11 K16 ["summary"]
       63 CALL                             R9 2 -1
       64 CALL                             R7 -1 -1
       65 RETURN                           R7 -1

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
       46 NEWTABLE                         R7 0 0
       48 DUPCLOSURE                       R8 K17 [PROTO_1]
       49 CAPTURE                          VAL R7
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R1
       55 DUPTABLE                         R9 K21 [{["Type"] = "Skill", ["ContentWidget"]}]
       56 GETTABLEKS                       R10 R2 K22 ["memo"]
       58 MOVE                             R11 R8
       59 CALL                             R10 1 1
       60 SETTABLEKS                       R10 R9 K20 ["ContentWidget"]
       62 RETURN                           R9 1
