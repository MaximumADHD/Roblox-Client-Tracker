PROTO_0:
        0 DUPTABLE                         R2 K2 [{"clips", "settings"}]
        1 DUPTABLE                         R3 K5 [{"aiGeneratedClip", "r6Clip"}]
        2 SETTABLEKS                       R1 R3 K3 ["aiGeneratedClip"]
        4 SETTABLEKS                       R0 R3 K4 ["r6Clip"]
        6 SETTABLEKS                       R3 R2 K0 ["clips"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K6 ["DEFAULT"]
       11 SETTABLEKS                       R3 R2 K1 ["settings"]
       13 RETURN                           R2 1

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R2
        3 RETURN                           R2 1
        4 DUPTABLE                         R2 K2 [{"clips", "settings"}]
        5 DUPTABLE                         R3 K5 [{"aiGeneratedClip", "r6Clip"}]
        6 SETTABLEKS                       R1 R3 K3 ["aiGeneratedClip"]
        8 GETTABLEKS                       R4 R0 K0 ["clips"]
       10 GETTABLEKS                       R4 R4 K4 ["r6Clip"]
       12 SETTABLEKS                       R4 R3 K4 ["r6Clip"]
       14 SETTABLEKS                       R3 R2 K0 ["clips"]
       16 GETTABLEKS                       R3 R0 K1 ["settings"]
       18 SETTABLEKS                       R3 R2 K1 ["settings"]
       20 RETURN                           R2 1

PROTO_2:
        0 DUPTABLE                         R2 K2 [{"clips", "settings"}]
        1 GETTABLEKS                       R3 R0 K0 ["clips"]
        3 SETTABLEKS                       R3 R2 K0 ["clips"]
        5 SETTABLEKS                       R1 R2 K1 ["settings"]
        7 RETURN                           R2 1

PROTO_3:
        0 JUMPIFNOTEQKNIL                  R1 ; [+5]
        2 NAMECALL                         R2 R0 K0 ["Clone"]
        4 CALL                             R2 1 -1
        5 RETURN                           R2 -1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["aiGeneratedWeights"]
        9 GETTABLEKS                       R3 R1 K2 ["settings"]
       11 CALL                             R2 1 2
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R5 R1 K3 ["clips"]
       15 GETTABLEKS                       R5 R5 K4 ["r6Clip"]
       17 MOVE                             R6 R0
       18 MOVE                             R7 R2
       19 MOVE                             R8 R3
       20 CALL                             R4 4 -1
       21 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["AnimationGen"]
       13 GETTABLEKS                       R2 R2 K8 ["BlendSettings"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Util"]
       20 GETTABLEKS                       R3 R3 K7 ["AnimationGen"]
       22 GETTABLEKS                       R3 R3 K9 ["HostTypes"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Util"]
       29 GETTABLEKS                       R4 R4 K7 ["AnimationGen"]
       31 GETTABLEKS                       R4 R4 K10 ["buildBlendedKeyframeSequence"]
       33 CALL                             R3 1 1
       34 NEWTABLE                         R4 4 0
       36 DUPCLOSURE                       R5 K11 [PROTO_0]
       37 CAPTURE                          VAL R1
       38 SETTABLEKS                       R5 R4 K12 ["new"]
       40 DUPCLOSURE                       R5 K13 [PROTO_1]
       41 SETTABLEKS                       R5 R4 K14 ["withAiGeneratedClip"]
       43 DUPCLOSURE                       R5 K15 [PROTO_2]
       44 SETTABLEKS                       R5 R4 K16 ["withSettings"]
       46 DUPCLOSURE                       R5 K17 [PROTO_3]
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R3
       49 SETTABLEKS                       R5 R4 K18 ["bake"]
       51 RETURN                           R4 1
