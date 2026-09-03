PROTO_0:
        0 LOADB                            R0 1
        1 GETUPVAL                         R1 0
        2 JUMPIFEQKNIL                     R1 ; [+3]
        4 GETUPVAL                         R0 0
        5 CALL                             R0 0 1
        6 RETURN                           R0 1

PROTO_1:
        0 LOADB                            R1 1
        1 GETUPVAL                         R2 0
        2 JUMPIFEQKNIL                     R2 ; [+3]
        4 GETUPVAL                         R1 0
        5 CALL                             R1 0 1
        6 JUMPIF                           R1 ; [+1]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R1 R0 K0 ["responseBody"]
       10 JUMPIFEQKNIL                     R1 ; [+19]
       12 GETTABLEKS                       R3 R1 K1 ["publishingFeeInRobux"]
       14 FASTCALL1                        TYPE R3 ; [+2]
       15 GETIMPORT                        R2 K3 [type]
       17 CALL                             R2 1 1
       18 JUMPIFNOTEQKS                    R2 K4 ["number"] ; [+11]
       20 GETUPVAL                         R2 1
       21 GETUPVAL                         R4 2
       22 LOADB                            R5 1
       23 GETTABLEKS                       R6 R1 K1 ["publishingFeeInRobux"]
       25 CALL                             R4 2 -1
       26 NAMECALL                         R2 R2 K5 ["dispatch"]
       28 CALL                             R2 -1 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R2 3
       31 GETTABLEKS                       R2 R2 K6 ["shouldDebugWarnings"]
       33 CALL                             R2 0 1
       34 JUMPIFNOT                        R2 ; [+5]
       35 GETIMPORT                        R2 K8 [warn]
       37 LOADK                            R3 K9 ["Unexpected getPublishingFeePreview response body:"]
       38 MOVE                             R4 R1
       39 CALL                             R2 2 0
       40 GETUPVAL                         R2 1
       41 GETUPVAL                         R4 2
       42 LOADB                            R5 0
       43 CALL                             R4 1 -1
       44 NAMECALL                         R2 R2 K5 ["dispatch"]
       46 CALL                             R2 -1 0
       47 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+6]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R2 K3 ["getPublishingFeePreview failed with code:"]
        8 GETTABLEKS                       R3 R0 K4 ["responseCode"]
       10 CALL                             R1 2 0
       11 LOADB                            R1 1
       12 GETUPVAL                         R2 1
       13 JUMPIFEQKNIL                     R2 ; [+3]
       15 GETUPVAL                         R1 1
       16 CALL                             R1 0 1
       17 JUMPIF                           R1 ; [+1]
       18 RETURN                           R0 0
       19 GETUPVAL                         R1 2
       20 GETUPVAL                         R3 3
       21 LOADB                            R4 0
       22 CALL                             R3 1 -1
       23 NAMECALL                         R1 R1 K5 ["dispatch"]
       25 CALL                             R1 -1 0
       26 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          UPVAL U1
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 NEWCLOSURE                       R3 P2
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U2
       16 GETUPVAL                         R4 4
       17 GETUPVAL                         R6 5
       18 GETTABLEKS                       R6 R6 K0 ["Name"]
       20 NAMECALL                         R4 R4 K1 ["getPublishingFeePreview"]
       22 CALL                             R4 2 1
       23 MOVE                             R6 R2
       24 MOVE                             R7 R3
       25 NAMECALL                         R4 R4 K2 ["andThen"]
       27 CALL                             R4 3 0
       28 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R2
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Actions"]
       13 GETTABLEKS                       R2 R2 K8 ["PublishingFeePreviewReceived"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R0 K6 ["Src"]
       18 GETTABLEKS                       R2 R2 K9 ["Util"]
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R4 R2 K10 ["DebugFlags"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K6 ["Src"]
       29 GETTABLEKS                       R5 R5 K11 ["Flags"]
       31 GETTABLEKS                       R5 R5 K12 ["getFFlagToolboxPublishOnApproval"]
       33 CALL                             R4 1 1
       34 DUPCLOSURE                       R5 K13 [PROTO_4]
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R3
       38 RETURN                           R5 1
