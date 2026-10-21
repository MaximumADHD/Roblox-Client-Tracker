PROTO_0:
        0 DUPTABLE                         R0 K3 [{"pipelineName", "dynamicHead", "r15Plus"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K4 ["FFlagAvatarPreviewerAvatarCreationDefaultBodyOnly"]
        4 JUMPIFNOT                        R2 ; [+4]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K5 ["Modesty"]
        8 JUMP                             ; [+3]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K6 ["Npc"]
       12 SETTABLEKS                       R1 R0 K0 ["pipelineName"]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K7 ["FFlagAvatarPreviewerAvatarCreationDynamicHeadOff"]
       17 NOT                              R1 R2
       18 SETTABLEKS                       R1 R0 K1 ["dynamicHead"]
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K8 ["FFlagAvatarPreviewerAvatarCreationR15PlusOn"]
       23 SETTABLEKS                       R1 R0 K2 ["r15Plus"]
       25 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getDefaults"]
        3 CALL                             R1 0 1
        4 DUPTABLE                         R2 K4 [{"pipelineName", "dynamicHead", "r15Plus"}]
        5 GETTABLEKS                       R3 R0 K1 ["pipelineName"]
        7 JUMPIF                           R3 ; [+2]
        8 GETTABLEKS                       R3 R1 K1 ["pipelineName"]
       10 SETTABLEKS                       R3 R2 K1 ["pipelineName"]
       12 GETTABLEKS                       R4 R0 K2 ["dynamicHead"]
       14 JUMPIFEQKNIL                     R4 ; [+4]
       16 GETTABLEKS                       R3 R0 K2 ["dynamicHead"]
       18 JUMP                             ; [+2]
       19 GETTABLEKS                       R3 R1 K2 ["dynamicHead"]
       21 SETTABLEKS                       R3 R2 K2 ["dynamicHead"]
       23 GETTABLEKS                       R4 R0 K3 ["r15Plus"]
       25 JUMPIFEQKNIL                     R4 ; [+4]
       27 GETTABLEKS                       R3 R0 K3 ["r15Plus"]
       29 JUMP                             ; [+2]
       30 GETTABLEKS                       R3 R1 K3 ["r15Plus"]
       32 SETTABLEKS                       R3 R2 K3 ["r15Plus"]
       34 RETURN                           R2 1

PROTO_2:
        0 LOADK                            R2 K0 ["%* [PipelineName:%*] [dynamic_head:%*] [r15_plus:%*]"]
        1 MOVE                             R4 R0
        2 GETTABLEKS                       R5 R1 K1 ["pipelineName"]
        4 GETTABLEKS                       R7 R1 K2 ["dynamicHead"]
        6 FASTCALL1                        TOSTRING R7 ; [+2]
        7 GETIMPORT                        R6 K4 [tostring]
        9 CALL                             R6 1 1
       10 GETTABLEKS                       R8 R1 K5 ["r15Plus"]
       12 FASTCALL1                        TOSTRING R8 ; [+2]
       13 GETIMPORT                        R7 K4 [tostring]
       15 CALL                             R7 1 1
       16 NAMECALL                         R2 R2 K6 ["format"]
       18 CALL                             R2 5 1
       19 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Flags"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K10 ["Features"]
       23 GETTABLEKS                       R3 R3 K11 ["AvatarGen"]
       25 GETTABLEKS                       R3 R3 K12 ["AvatarGenEnums"]
       27 GETTABLEKS                       R4 R3 K13 ["PipelineName"]
       29 NEWTABLE                         R5 4 0
       31 DUPCLOSURE                       R6 K14 [PROTO_0]
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R4
       34 SETTABLEKS                       R6 R5 K15 ["getDefaults"]
       36 DUPCLOSURE                       R6 K16 [PROTO_1]
       37 CAPTURE                          VAL R5
       38 SETTABLEKS                       R6 R5 K17 ["resolve"]
       40 DUPCLOSURE                       R6 K18 [PROTO_2]
       41 SETTABLEKS                       R6 R5 K19 ["appendTags"]
       43 RETURN                           R5 1
