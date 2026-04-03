PROTO_0:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        4 LOADK                            R5 K0 ["updateThreadTimestamp should only be called when multiple chat support is enabled"]
        5 GETIMPORT                        R3 K2 [assert]
        7 CALL                             R3 2 0
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K3 ["getTimestampMilliseconds"]
       11 CALL                             R3 0 1
       12 SETTABLEKS                       R3 R1 K4 ["updatedAt"]
       14 JUMPIFNOT                        R2 ; [+5]
       15 GETTABLEKS                       R4 R2 K5 ["setCreatedAt"]
       17 JUMPIFNOT                        R4 ; [+2]
       18 SETTABLEKS                       R3 R1 K6 ["createdAt"]
       20 GETTABLEKS                       R4 R1 K7 ["ephemeral"]
       22 JUMPIF                           R4 ; [+3]
       23 GETUPVAL                         R4 2
       24 MOVE                             R5 R0
       25 CALL                             R4 1 0
       26 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["Time"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Types"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R5 R0 K6 ["Util"]
       23 GETTABLEKS                       R4 R5 K9 ["markDirty"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R6 R0 K10 ["Flags"]
       30 GETTABLEKS                       R5 R6 K11 ["FFlagAssistantMultipleChatSupport"]
       32 CALL                             R4 1 1
       33 DUPCLOSURE                       R5 K12 [PROTO_0]
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R3
       37 RETURN                           R5 1
