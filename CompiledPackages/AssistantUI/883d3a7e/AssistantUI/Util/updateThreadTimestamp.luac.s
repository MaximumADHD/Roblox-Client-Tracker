PROTO_0:
        0 GETIMPORT                        R1 K2 [DateTime.now]
        2 CALL                             R1 0 1
        3 GETTABLEKS                       R0 R1 K3 ["UnixTimestampMillis"]
        5 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["updateThreadTimestamp should only be called when multiple chat support is enabled"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 GETIMPORT                        R3 K5 [DateTime.now]
       10 CALL                             R3 0 1
       11 GETTABLEKS                       R2 R3 K6 ["UnixTimestampMillis"]
       13 SETTABLEKS                       R2 R0 K7 ["updatedAt"]
       15 JUMPIFNOT                        R1 ; [+5]
       16 GETTABLEKS                       R3 R1 K8 ["setCreatedAt"]
       18 JUMPIFNOT                        R3 ; [+2]
       19 SETTABLEKS                       R2 R0 K9 ["createdAt"]
       21 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R4 R0 K7 ["Flags"]
       16 GETTABLEKS                       R3 R4 K8 ["FFlagAssistantMultipleChatSupport"]
       18 CALL                             R2 1 1
       19 DUPCLOSURE                       R3 K9 [PROTO_0]
       20 DUPCLOSURE                       R4 K10 [PROTO_1]
       21 CAPTURE                          VAL R2
       22 RETURN                           R4 1
