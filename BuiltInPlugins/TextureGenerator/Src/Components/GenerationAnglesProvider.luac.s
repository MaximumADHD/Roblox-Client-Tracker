PROTO_0:
        0 GETTABLEKS                       R3 R1 K0 ["action"]
        2 JUMPIFNOT                        R3 ; [+2]
        3 GETTABLEKS                       R3 R1 K1 ["hash"]
        5 FASTCALL2K                       ASSERT R3 K2 ; [+4]
        7 LOADK                            R4 K2 ["Action must have action and hash fields"]
        8 GETIMPORT                        R2 K4 [assert]
       10 CALL                             R2 2 0
       11 GETIMPORT                        R2 K7 [table.clone]
       13 MOVE                             R3 R0
       14 CALL                             R2 1 1
       15 MOVE                             R0 R2
       16 GETTABLEKS                       R2 R1 K0 ["action"]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K8 ["GENERATION_ANGLE_ACTIONS"]
       21 GETTABLEKS                       R3 R3 K9 ["SET"]
       23 JUMPIFNOTEQ                      R2 R3 ; [+7]
       25 GETTABLEKS                       R2 R1 K1 ["hash"]
       27 GETTABLEKS                       R3 R1 K10 ["angle"]
       29 SETTABLE                         R3 R0 R2
       30 RETURN                           R0 1
       31 GETTABLEKS                       R2 R1 K0 ["action"]
       33 GETUPVAL                         R3 0
       34 GETTABLEKS                       R3 R3 K8 ["GENERATION_ANGLE_ACTIONS"]
       36 GETTABLEKS                       R3 R3 K11 ["REMOVE"]
       38 JUMPIFNOTEQ                      R2 R3 ; [+10]
       40 GETTABLEKS                       R3 R1 K1 ["hash"]
       42 GETTABLE                         R2 R0 R3
       43 JUMPIFNOT                        R2 ; [+15]
       44 GETTABLEKS                       R2 R1 K1 ["hash"]
       46 LOADNIL                          R3
       47 SETTABLE                         R3 R0 R2
       48 RETURN                           R0 1
       49 GETIMPORT                        R2 K13 [error]
       51 LOADK                            R4 K14 ["Invalid action: %*"]
       52 GETTABLEKS                       R6 R1 K0 ["action"]
       54 NAMECALL                         R4 R4 K15 ["format"]
       56 CALL                             R4 2 1
       57 MOVE                             R3 R4
       58 CALL                             R2 1 0
       59 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Generations Angles table: "]
        3 GETUPVAL                         R2 0
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useReducer"]
        3 GETUPVAL                         R2 1
        4 NEWTABLE                         R3 0 0
        6 CALL                             R1 2 2
        7 GETUPVAL                         R3 2
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+11]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K1 ["useEffect"]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R1
       15 NEWTABLE                         R5 0 1
       17 MOVE                             R6 R1
       18 SETLIST                          R5 R6 1 [1]
       20 CALL                             R3 2 0
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K2 ["createElement"]
       24 GETUPVAL                         R4 3
       25 GETTABLEKS                       R4 R4 K3 ["Provider"]
       27 DUPTABLE                         R5 K5 [{"value"}]
       28 DUPTABLE                         R6 K8 [{"generationAngles", "updateGenerationAngle"}]
       29 SETTABLEKS                       R1 R6 K6 ["generationAngles"]
       31 SETTABLEKS                       R2 R6 K7 ["updateGenerationAngle"]
       33 SETTABLEKS                       R6 R5 K4 ["value"]
       35 GETTABLEKS                       R6 R0 K9 ["children"]
       37 CALL                             R3 3 -1
       38 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TextureGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Util"]
       29 GETTABLEKS                       R4 R4 K11 ["GenerationAnglesContext"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K12 ["Flags"]
       38 GETTABLEKS                       R5 R5 K13 ["getFFlagDebugTextureGeneratorLogging"]
       40 CALL                             R4 1 1
       41 DUPCLOSURE                       R5 K14 [PROTO_0]
       42 CAPTURE                          VAL R2
       43 DUPCLOSURE                       R6 K15 [PROTO_2]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R3
       48 RETURN                           R6 1
