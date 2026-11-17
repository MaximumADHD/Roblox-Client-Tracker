PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R5 0
        2 GETTABLE                         R4 R5 R0
        3 ORK                              R3 R4 K1 [0]
        4 ADDK                             R2 R3 K0 [1]
        5 SETTABLE                         R2 R1 R0
        6 RETURN                           R0 0

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 RETURN                           R0 0
        3 GETUPVAL                         R4 0
        4 GETTABLE                         R3 R4 R0
        5 ORK                              R2 R3 K0 [1]
        6 SUBK                             R1 R2 K0 [1]
        7 LOADN                            R2 0
        8 JUMPIFNOTLT                      R2 R1 ; [+4]
       10 GETUPVAL                         R2 0
       11 SETTABLE                         R1 R2 R0
       12 RETURN                           R0 0
       13 GETUPVAL                         R2 0
       14 LOADNIL                          R3
       15 SETTABLE                         R3 R2 R0
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R3 R0 K1 ["poses"]
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

PROTO_2:
        0 LOADB                            R2 0
        1 JUMPIFEQKNIL                     R0 ; [+21]
        3 LOADB                            R2 0
        4 GETTABLEKS                       R3 R1 K0 ["session"]
        6 JUMPIFNOTEQ                      R0 R3 ; [+16]
        8 LOADB                            R2 0
        9 GETTABLEKS                       R3 R0 K1 ["attachmentId"]
       11 GETTABLEKS                       R4 R1 K1 ["attachmentId"]
       13 JUMPIFNOTEQ                      R3 R4 ; [+9]
       15 GETTABLEKS                       R3 R0 K2 ["activeRequestId"]
       17 GETTABLEKS                       R4 R1 K3 ["requestId"]
       19 JUMPIFEQ                         R3 R4 ; [+2]
       21 LOADB                            R2 0 +1
       22 LOADB                            R2 1
       23 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["playerActive"]
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETTABLEKS                       R2 R0 K1 ["activeRequestId"]
        5 JUMPIFEQKNIL                     R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_4:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["playerActive"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["activeRequestId"]
        6 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["revision"]
        2 ADDK                             R1 R1 K1 [1]
        3 SETTABLEKS                       R1 R0 K0 ["revision"]
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 LOADB                            R3 0
        2 NAMECALL                         R1 R1 K0 ["GenerateGUID"]
        4 CALL                             R1 2 1
        5 SETTABLEKS                       R1 R0 K1 ["attachmentId"]
        7 LOADNIL                          R1
        8 SETTABLEKS                       R1 R0 K2 ["activeRequestId"]
       10 LOADB                            R1 1
       11 SETTABLEKS                       R1 R0 K3 ["playerActive"]
       13 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["playerActive"]
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETTABLEKS                       R2 R0 K1 ["activeRequestId"]
        5 JUMPIFEQKNIL                     R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 JUMPIF                           R1 ; [+2]
       10 LOADNIL                          R1
       11 RETURN                           R1 1
       12 GETUPVAL                         R1 0
       13 LOADB                            R3 0
       14 NAMECALL                         R1 R1 K2 ["GenerateGUID"]
       16 CALL                             R1 2 1
       17 SETTABLEKS                       R1 R0 K1 ["activeRequestId"]
       19 DUPTABLE                         R2 K6 [{"session", "requestId", "attachmentId"}]
       20 SETTABLEKS                       R0 R2 K3 ["session"]
       22 SETTABLEKS                       R1 R2 K4 ["requestId"]
       24 GETTABLEKS                       R3 R0 K5 ["attachmentId"]
       26 SETTABLEKS                       R3 R2 K5 ["attachmentId"]
       28 RETURN                           R2 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["session"]
        2 GETTABLEKS                       R3 R1 K1 ["playerActive"]
        4 JUMPIFNOT                        R3 ; [+8]
        5 GETTABLEKS                       R4 R1 K2 ["attachmentId"]
        7 GETTABLEKS                       R5 R0 K2 ["attachmentId"]
        9 JUMPIFEQ                         R4 R5 ; [+2]
       11 LOADB                            R3 0 +1
       12 LOADB                            R3 1
       13 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       15 LOADK                            R4 K3 ["Session changed during restore"]
       16 GETIMPORT                        R2 K5 [assert]
       18 CALL                             R2 2 0
       19 LOADB                            R3 1
       20 GETTABLEKS                       R4 R1 K6 ["activeRequestId"]
       22 JUMPIFEQKNIL                     R4 ; [+9]
       24 GETTABLEKS                       R4 R1 K6 ["activeRequestId"]
       26 GETTABLEKS                       R5 R0 K7 ["requestId"]
       28 JUMPIFEQ                         R4 R5 ; [+2]
       30 LOADB                            R3 0 +1
       31 LOADB                            R3 1
       32 FASTCALL2K                       ASSERT R3 K8 ; [+4]
       34 LOADK                            R4 K8 ["Operation was superseded"]
       35 GETIMPORT                        R2 K5 [assert]
       37 CALL                             R2 2 0
       38 GETTABLEKS                       R2 R0 K7 ["requestId"]
       40 SETTABLEKS                       R2 R1 K6 ["activeRequestId"]
       42 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["session"]
        2 LOADB                            R1 0
        3 JUMPIFEQKNIL                     R2 ; [+21]
        5 LOADB                            R1 0
        6 GETTABLEKS                       R3 R0 K0 ["session"]
        8 JUMPIFNOTEQ                      R2 R3 ; [+16]
       10 LOADB                            R1 0
       11 GETTABLEKS                       R3 R2 K1 ["attachmentId"]
       13 GETTABLEKS                       R4 R0 K1 ["attachmentId"]
       15 JUMPIFNOTEQ                      R3 R4 ; [+9]
       17 GETTABLEKS                       R3 R2 K2 ["activeRequestId"]
       19 GETTABLEKS                       R4 R0 K3 ["requestId"]
       21 JUMPIFEQ                         R3 R4 ; [+2]
       23 LOADB                            R1 0 +1
       24 LOADB                            R1 1
       25 JUMPIFNOT                        R1 ; [+5]
       26 GETTABLEKS                       R1 R0 K0 ["session"]
       28 LOADNIL                          R2
       29 SETTABLEKS                       R2 R1 K2 ["activeRequestId"]
       31 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R2 K7 [{[1], ["attachmentId"], ["revision"] = 0, ["playerActive"] = True, ["sourceContextId"]}]
        1 SETTABLEKS                       R0 R2 K0 ["editSessionId"]
        3 GETUPVAL                         R3 0
        4 LOADB                            R5 0
        5 NAMECALL                         R3 R3 K8 ["GenerateGUID"]
        7 CALL                             R3 2 1
        8 SETTABLEKS                       R3 R2 K1 ["attachmentId"]
       10 SETTABLEKS                       R1 R2 K6 ["sourceContextId"]
       12 RETURN                           R2 1

PROTO_11:
        0 DUPTABLE                         R4 K4 [{"editSessionId", "player", "poses", "currentTime"}]
        1 GETTABLEKS                       R5 R0 K0 ["editSessionId"]
        3 SETTABLEKS                       R5 R4 K0 ["editSessionId"]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K5 ["capture"]
        8 MOVE                             R6 R1
        9 CALL                             R5 1 1
       10 SETTABLEKS                       R5 R4 K1 ["player"]
       12 SETTABLEKS                       R2 R4 K2 ["poses"]
       14 SETTABLEKS                       R3 R4 K3 ["currentTime"]
       16 GETUPVAL                         R5 1
       17 GETUPVAL                         R9 1
       18 GETTABLE                         R8 R9 R4
       19 ORK                              R7 R8 K7 [0]
       20 ADDK                             R6 R7 K6 [1]
       21 SETTABLE                         R6 R5 R4
       22 RETURN                           R4 1

PROTO_12:
        0 GETTABLEKS                       R4 R0 K0 ["editSessionId"]
        2 GETTABLEKS                       R5 R1 K0 ["editSessionId"]
        4 JUMPIFEQ                         R4 R5 ; [+2]
        6 LOADB                            R3 0 +1
        7 LOADB                            R3 1
        8 FASTCALL2K                       ASSERT R3 K1 ; [+4]
       10 LOADK                            R4 K1 ["Snapshot belongs to another edit session"]
       11 GETIMPORT                        R2 K3 [assert]
       13 CALL                             R2 2 0
       14 LOADNIL                          R2
       15 SETTABLEKS                       R2 R0 K4 ["activeRequestId"]
       17 GETTABLEKS                       R2 R0 K5 ["revision"]
       19 ADDK                             R2 R2 K6 [1]
       20 SETTABLEKS                       R2 R0 K5 ["revision"]
       22 RETURN                           R0 0

PROTO_13:
        0 NEWTABLE                         R1 0 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R1
        4 NEWCLOSURE                       R3 P1
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R0
        7 DUPCLOSURE                       R4 K0 [PROTO_2]
        8 DUPCLOSURE                       R5 K1 [PROTO_3]
        9 DUPCLOSURE                       R6 K2 [PROTO_4]
       10 DUPCLOSURE                       R7 K3 [PROTO_5]
       11 DUPTABLE                         R8 K17 [{"attachPlayer", "detachPlayer", "canBeginOperation", "beginOperation", "ownsOperation", "reclaimSessionForOperation", "finishOperation", "bumpRevision", "create", "captureSnapshot", "markRestoredFromSnapshot", "releaseSnapshot", "retainSnapshot"}]
       12 DUPCLOSURE                       R9 K18 [PROTO_6]
       13 CAPTURE                          UPVAL U0
       14 SETTABLEKS                       R9 R8 K4 ["attachPlayer"]
       16 SETTABLEKS                       R6 R8 K5 ["detachPlayer"]
       18 SETTABLEKS                       R5 R8 K6 ["canBeginOperation"]
       20 DUPCLOSURE                       R9 K19 [PROTO_7]
       21 CAPTURE                          UPVAL U0
       22 SETTABLEKS                       R9 R8 K7 ["beginOperation"]
       24 SETTABLEKS                       R4 R8 K8 ["ownsOperation"]
       26 DUPCLOSURE                       R9 K20 [PROTO_8]
       27 SETTABLEKS                       R9 R8 K9 ["reclaimSessionForOperation"]
       29 DUPCLOSURE                       R9 K21 [PROTO_9]
       30 SETTABLEKS                       R9 R8 K10 ["finishOperation"]
       32 SETTABLEKS                       R7 R8 K11 ["bumpRevision"]
       34 DUPCLOSURE                       R9 K22 [PROTO_10]
       35 CAPTURE                          UPVAL U0
       36 SETTABLEKS                       R9 R8 K12 ["create"]
       38 NEWCLOSURE                       R9 P11
       39 CAPTURE                          UPVAL U1
       40 CAPTURE                          VAL R1
       41 SETTABLEKS                       R9 R8 K13 ["captureSnapshot"]
       43 DUPCLOSURE                       R9 K23 [PROTO_12]
       44 SETTABLEKS                       R9 R8 K14 ["markRestoredFromSnapshot"]
       46 SETTABLEKS                       R3 R8 K15 ["releaseSnapshot"]
       48 SETTABLEKS                       R2 R8 K16 ["retainSnapshot"]
       50 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AssistantUI"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Util"]
       17 GETTABLEKS                       R3 R3 K11 ["AnimationGen"]
       19 GETTABLEKS                       R3 R3 K12 ["State"]
       21 GETTABLEKS                       R3 R3 K13 ["AnimationPlayerState"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K9 [require]
       26 GETTABLEKS                       R4 R1 K10 ["Util"]
       28 GETTABLEKS                       R4 R4 K11 ["AnimationGen"]
       30 GETTABLEKS                       R4 R4 K12 ["State"]
       32 GETTABLEKS                       R4 R4 K14 ["EditSessionTypes"]
       34 CALL                             R3 1 1
       35 GETIMPORT                        R4 K9 [require]
       37 GETTABLEKS                       R5 R1 K10 ["Util"]
       39 GETTABLEKS                       R5 R5 K11 ["AnimationGen"]
       41 GETTABLEKS                       R5 R5 K15 ["HostTypes"]
       43 CALL                             R4 1 1
       44 GETIMPORT                        R5 K9 [require]
       46 GETTABLEKS                       R6 R1 K10 ["Util"]
       48 GETTABLEKS                       R6 R6 K11 ["AnimationGen"]
       50 GETTABLEKS                       R6 R6 K16 ["createHostEditor"]
       52 GETTABLEKS                       R6 R6 K17 ["createSavedKeyframeStore"]
       54 CALL                             R5 1 1
       55 DUPCLOSURE                       R6 K18 [PROTO_13]
       56 CAPTURE                          VAL R0
       57 CAPTURE                          VAL R2
       58 RETURN                           R6 1
