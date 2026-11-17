PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getPendingEdit"]
        3 CALL                             R1 0 1
        4 LOADB                            R2 0
        5 JUMPIFEQKNIL                     R1 ; [+9]
        7 GETTABLEKS                       R3 R1 K1 ["savedKeyframesContentId"]
        9 GETTABLEKS                       R4 R0 K2 ["toolUseId"]
       11 JUMPIFEQ                         R3 R4 ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 GETUPVAL                         R3 1
       16 DUPTABLE                         R4 K7 [{"layoutOrder", "duration", "disabled", "sourceToolUseId"}]
       17 GETTABLEKS                       R5 R0 K3 ["layoutOrder"]
       19 SETTABLEKS                       R5 R4 K3 ["layoutOrder"]
       21 GETTABLEKS                       R5 R0 K4 ["duration"]
       23 SETTABLEKS                       R5 R4 K4 ["duration"]
       25 GETTABLEKS                       R5 R0 K5 ["disabled"]
       27 SETTABLEKS                       R5 R4 K5 ["disabled"]
       29 JUMPIFNOT                        R2 ; [+3]
       30 GETTABLEKS                       R5 R0 K2 ["toolUseId"]
       32 JUMP                             ; [+1]
       33 LOADNIL                          R5
       34 SETTABLEKS                       R5 R4 K6 ["sourceToolUseId"]
       36 CALL                             R3 1 1
       37 JUMPIF                           R2 ; [+2]
       38 LOADNIL                          R4
       39 RETURN                           R4 1
       40 GETUPVAL                         R4 2
       41 GETUPVAL                         R5 3
       42 MOVE                             R6 R3
       43 CALL                             R4 2 -1
       44 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Util"]
       13 GETTABLEKS                       R3 R3 K8 ["AnimationGen"]
       15 GETTABLEKS                       R3 R3 K9 ["EditInAssistantState"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R1 K10 ["React"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETIMPORT                        R5 K1 [script]
       27 GETTABLEKS                       R5 R5 K11 ["Scrubbar"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETIMPORT                        R6 K1 [script]
       34 GETTABLEKS                       R6 R6 K12 ["useAnimationGenScrubbarProps"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R6 R3 K13 ["createElement"]
       39 DUPCLOSURE                       R7 K14 [PROTO_0]
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R6
       43 CAPTURE                          VAL R4
       44 RETURN                           R7 1
