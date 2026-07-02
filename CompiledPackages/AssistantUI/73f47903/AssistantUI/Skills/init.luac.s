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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["load"]
        3 LOADNIL                          R2
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["loadAsync"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_4:
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
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K8 ["loadPackageSkills"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K9 ["loadUserSkills"]
       27 CALL                             R3 1 1
       28 NEWTABLE                         R4 8 0
       30 DUPCLOSURE                       R5 K10 [PROTO_0]
       31 SETTABLEKS                       R5 R4 K11 ["getDisabledSetAsync"]
       33 DUPCLOSURE                       R5 K12 [PROTO_1]
       34 SETTABLEKS                       R5 R4 K13 ["persistDisabledSetAsync"]
       36 DUPCLOSURE                       R5 K14 [PROTO_2]
       37 CAPTURE                          VAL R2
       38 SETTABLEKS                       R5 R4 K15 ["registerAll"]
       40 DUPCLOSURE                       R5 K16 [PROTO_3]
       41 CAPTURE                          VAL R3
       42 SETTABLEKS                       R5 R4 K17 ["loadUserSkillsAsync"]
       44 DUPCLOSURE                       R5 K18 [PROTO_4]
       45 CAPTURE                          VAL R3
       46 SETTABLEKS                       R5 R4 K19 ["refreshUserSkillsAsync"]
       48 RETURN                           R4 1
