PROTO_0:
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETTABLEKS                       R2 R0 K2 ["getUserSettingsAsync"]
        4 LOADK                            R3 K3 ["AssistantDisabledSkills"]
        5 CALL                             R1 2 2
        6 JUMPIFNOT                        R1 ; [+2]
        7 JUMPIFNOTEQKNIL                  R2 ; [+4]
        9 NEWTABLE                         R3 0 0
       11 RETURN                           R3 1
       12 NEWTABLE                         R3 0 0
       14 MOVE                             R4 R2
       15 LOADNIL                          R5
       16 LOADNIL                          R6
       17 FORGPREP                         R4
       18 LOADB                            R9 1
       19 SETTABLE                         R9 R3 R8
       20 FORGLOOP                         R4 2 ; [-3]
       22 RETURN                           R3 1

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 FASTCALL2                        TABLE_INSERT R2 R6 ; [+5]
        8 MOVE                             R9 R2
        9 MOVE                             R10 R6
       10 GETIMPORT                        R8 K2 [table.insert]
       12 CALL                             R8 2 0
       13 FORGLOOP                         R3 1 ; [-8]
       15 GETTABLEKS                       R3 R0 K3 ["setUserSettingsAsync"]
       17 LOADK                            R4 K4 ["AssistantDisabledSkills"]
       18 MOVE                             R5 R2
       19 CALL                             R3 2 0
       20 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R3 K0 ["rbx-"]
        1 MOVE                             R4 R0
        2 CONCAT                           R2 R3 R4
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["getBySource"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K2 ["Roblox"]
        9 MOVE                             R5 R2
       10 CALL                             R3 2 1
       11 JUMPIFNOT                        R3 ; [+17]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K3 ["unregister"]
       15 MOVE                             R5 R2
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R6 R6 K2 ["Roblox"]
       19 CALL                             R4 2 0
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K4 ["store"]
       23 MOVE                             R5 R3
       24 CALL                             R4 1 0
       25 LOADB                            R4 1
       26 SETTABLE                         R4 R1 R2
       27 LOADB                            R4 1
       28 RETURN                           R4 1
       29 LOADB                            R4 0
       30 RETURN                           R4 1

PROTO_3:
        0 LOADK                            R3 K0 ["rbx-"]
        1 MOVE                             R4 R0
        2 CONCAT                           R2 R3 R4
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["get"]
        6 MOVE                             R4 R2
        7 CALL                             R3 1 1
        8 JUMPIFNOT                        R3 ; [+21]
        9 GETTABLEKS                       R4 R3 K2 ["source"]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K3 ["Roblox"]
       14 JUMPIFNOTEQ                      R4 R5 ; [+15]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K4 ["remove"]
       19 MOVE                             R5 R2
       20 CALL                             R4 1 0
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R4 R4 K5 ["register"]
       24 MOVE                             R5 R3
       25 CALL                             R4 1 0
       26 LOADNIL                          R4
       27 SETTABLE                         R4 R1 R2
       28 LOADB                            R4 1
       29 RETURN                           R4 1
       30 LOADB                            R4 0
       31 RETURN                           R4 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["load"]
        3 LOADNIL                          R2
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["loadAsync"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["refreshAsync"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["DisabledSkillsStore"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K7 ["Guest"]
       18 GETTABLEKS                       R3 R3 K8 ["Environment"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K9 ["SkillDefinition"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETIMPORT                        R5 K1 [script]
       32 GETTABLEKS                       R5 R5 K10 ["SkillRegistry"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETIMPORT                        R6 K1 [script]
       39 GETTABLEKS                       R6 R6 K11 ["loadPackageSkills"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETIMPORT                        R7 K1 [script]
       46 GETTABLEKS                       R7 R7 K12 ["loadUserSkills"]
       48 CALL                             R6 1 1
       49 GETTABLEKS                       R7 R3 K13 ["Sources"]
       51 NEWTABLE                         R8 8 0
       53 DUPCLOSURE                       R9 K14 [PROTO_0]
       54 SETTABLEKS                       R9 R8 K15 ["getDisabledSetAsync"]
       56 DUPCLOSURE                       R9 K16 [PROTO_1]
       57 SETTABLEKS                       R9 R8 K17 ["persistDisabledSetAsync"]
       59 DUPCLOSURE                       R9 K18 [PROTO_2]
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R1
       63 SETTABLEKS                       R9 R8 K19 ["shadowRobloxSkill"]
       65 DUPCLOSURE                       R9 K20 [PROTO_3]
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R4
       69 SETTABLEKS                       R9 R8 K21 ["unshadowRobloxSkill"]
       71 DUPCLOSURE                       R9 K22 [PROTO_4]
       72 CAPTURE                          VAL R5
       73 SETTABLEKS                       R9 R8 K23 ["registerAll"]
       75 DUPCLOSURE                       R9 K24 [PROTO_5]
       76 CAPTURE                          VAL R6
       77 SETTABLEKS                       R9 R8 K25 ["loadUserSkillsAsync"]
       79 DUPCLOSURE                       R9 K26 [PROTO_6]
       80 CAPTURE                          VAL R6
       81 SETTABLEKS                       R9 R8 K27 ["refreshUserSkillsAsync"]
       83 RETURN                           R8 1
