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
       10 LOADB                            R2 0
       11 JUMPIFEQKNIL                     R1 ; [+7]
       13 GETTABLEKS                       R3 R1 K1 ["autoPublishEnabled"]
       15 JUMPIFEQKB                       R3 TRUE ; [+2]
       17 LOADB                            R2 0 +1
       18 LOADB                            R2 1
       19 GETUPVAL                         R3 1
       20 GETUPVAL                         R5 2
       21 MOVE                             R6 R2
       22 CALL                             R5 1 -1
       23 NAMECALL                         R3 R3 K2 ["dispatch"]
       25 CALL                             R3 -1 0
       26 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["responseCode"]
        2 JUMPIFEQKN                       R1 K1 [404] ; [+12]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K2 ["shouldDebugWarnings"]
        7 CALL                             R1 0 1
        8 JUMPIFNOT                        R1 ; [+6]
        9 GETIMPORT                        R1 K4 [warn]
       11 LOADK                            R2 K5 ["getPublishingPreferences failed with code:"]
       12 GETTABLEKS                       R3 R0 K0 ["responseCode"]
       14 CALL                             R1 2 0
       15 LOADB                            R1 1
       16 GETUPVAL                         R2 1
       17 JUMPIFEQKNIL                     R2 ; [+3]
       19 GETUPVAL                         R1 1
       20 CALL                             R1 0 1
       21 JUMPIF                           R1 ; [+1]
       22 RETURN                           R0 0
       23 GETUPVAL                         R1 2
       24 GETUPVAL                         R3 3
       25 LOADB                            R4 0
       26 CALL                             R3 1 -1
       27 NAMECALL                         R1 R1 K6 ["dispatch"]
       29 CALL                             R1 -1 0
       30 RETURN                           R0 0

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
       10 NEWCLOSURE                       R3 P2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U2
       15 GETUPVAL                         R4 4
       16 GETUPVAL                         R6 5
       17 NAMECALL                         R4 R4 K0 ["getPublishingPreferences"]
       19 CALL                             R4 2 1
       20 MOVE                             R6 R2
       21 MOVE                             R7 R3
       22 NAMECALL                         R4 R4 K1 ["andThen"]
       24 CALL                             R4 3 0
       25 RETURN                           R0 0

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
       13 GETTABLEKS                       R2 R2 K8 ["PublishingPreferencesReceived"]
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
