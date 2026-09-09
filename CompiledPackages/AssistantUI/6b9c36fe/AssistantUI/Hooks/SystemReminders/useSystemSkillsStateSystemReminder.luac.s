PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["getAll"]
        5 CALL                             R1 0 3
        6 FORGPREP                         R1
        7 GETTABLEKS                       R6 R5 K1 ["source"]
        9 GETUPVAL                         R7 1
       10 GETTABLEKS                       R7 R7 K2 ["Roblox"]
       12 JUMPIFNOTEQ                      R6 R7 ; [+8]
       14 FASTCALL2                        TABLE_INSERT R0 R4 ; [+5]
       16 MOVE                             R7 R0
       17 MOVE                             R8 R4
       18 GETIMPORT                        R6 K5 [table.insert]
       20 CALL                             R6 2 0
       21 FORGLOOP                         R1 2 ; [-15]
       23 LENGTH                           R1 R0
       24 JUMPIFNOTEQKN                    R1 K6 [0] ; [+3]
       26 LOADNIL                          R1
       27 RETURN                           R1 1
       28 GETIMPORT                        R1 K8 [table.sort]
       30 MOVE                             R2 R0
       31 CALL                             R1 1 0
       32 LOADK                            R2 K9 ["The user has disabled these Roblox skills, so do not use them: %*."]
       33 GETIMPORT                        R4 K11 [table.concat]
       35 MOVE                             R5 R0
       36 LOADK                            R6 K12 [", "]
       37 CALL                             R4 2 1
       38 NAMECALL                         R2 R2 K13 ["format"]
       40 CALL                             R2 2 1
       41 MOVE                             R1 R2
       42 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useCallback"]
        3 DUPCLOSURE                       R1 K1 [PROTO_0]
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 NEWTABLE                         R2 0 0
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Skills"]
       11 GETTABLEKS                       R2 R2 K7 ["DisabledSkillsStore"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Skills"]
       25 GETTABLEKS                       R4 R4 K10 ["SkillDefinition"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K11 ["Sources"]
       30 DUPCLOSURE                       R5 K12 [PROTO_1]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R4
       34 RETURN                           R5 1
