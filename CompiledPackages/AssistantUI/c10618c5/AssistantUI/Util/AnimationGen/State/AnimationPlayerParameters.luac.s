PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["cache"]
        2 GETTABLEKS                       R1 R1 K1 ["composedReachSequence"]
        4 JUMPIFEQKNIL                     R1 ; [+13]
        6 GETTABLEKS                       R1 R0 K0 ["cache"]
        8 GETTABLEKS                       R1 R1 K1 ["composedReachSequence"]
       10 NAMECALL                         R1 R1 K2 ["Destroy"]
       12 CALL                             R1 1 0
       13 GETTABLEKS                       R1 R0 K0 ["cache"]
       15 LOADNIL                          R2
       16 SETTABLEKS                       R2 R1 K1 ["composedReachSequence"]
       18 GETTABLEKS                       R1 R0 K0 ["cache"]
       20 LOADNIL                          R2
       21 SETTABLEKS                       R2 R1 K3 ["composedReachCacheKey"]
       23 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R3 K2 [string.format]
        2 LOADK                            R4 K3 ["%.6f|%.6f|%s|%d"]
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 FASTCALL1                        TOSTRING R2 ; [+3]
        6 MOVE                             R8 R2
        7 GETIMPORT                        R7 K5 [tostring]
        9 CALL                             R7 1 1
       10 GETUPVAL                         R8 0
       11 GETTABLEKS                       R8 R8 K6 ["maxFlexDegrees"]
       13 CALL                             R8 0 -1
       14 CALL                             R3 -1 -1
       15 RETURN                           R3 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["keyframeSequence"]
        2 GETTABLEKS                       R2 R0 K1 ["settings"]
        4 JUMPIFEQKNIL                     R1 ; [+3]
        6 JUMPIFNOTEQKNIL                  R2 ; [+25]
        8 GETTABLEKS                       R3 R0 K2 ["cache"]
       10 GETTABLEKS                       R3 R3 K3 ["composedReachSequence"]
       12 JUMPIFEQKNIL                     R3 ; [+13]
       14 GETTABLEKS                       R3 R0 K2 ["cache"]
       16 GETTABLEKS                       R3 R3 K3 ["composedReachSequence"]
       18 NAMECALL                         R3 R3 K4 ["Destroy"]
       20 CALL                             R3 1 0
       21 GETTABLEKS                       R3 R0 K2 ["cache"]
       23 LOADNIL                          R4
       24 SETTABLEKS                       R4 R3 K3 ["composedReachSequence"]
       26 GETTABLEKS                       R3 R0 K2 ["cache"]
       28 LOADNIL                          R4
       29 SETTABLEKS                       R4 R3 K5 ["composedReachCacheKey"]
       31 RETURN                           R1 1
       32 GETTABLEKS                       R3 R2 K6 ["armsReach"]
       34 JUMPIF                           R3 ; [+3]
       35 GETUPVAL                         R3 0
       36 GETTABLEKS                       R3 R3 K7 ["NEUTRAL"]
       38 GETTABLEKS                       R4 R2 K8 ["legsReach"]
       40 JUMPIF                           R4 ; [+3]
       41 GETUPVAL                         R4 0
       42 GETTABLEKS                       R4 R4 K7 ["NEUTRAL"]
       44 GETIMPORT                        R5 K11 [string.format]
       46 LOADK                            R6 K12 ["%.6f|%.6f|%s|%d"]
       47 MOVE                             R7 R3
       48 MOVE                             R8 R4
       49 FASTCALL1                        TOSTRING R1 ; [+3]
       50 MOVE                             R10 R1
       51 GETIMPORT                        R9 K14 [tostring]
       53 CALL                             R9 1 1
       54 GETUPVAL                         R10 1
       55 GETTABLEKS                       R10 R10 K15 ["maxFlexDegrees"]
       57 CALL                             R10 0 -1
       58 CALL                             R5 -1 1
       59 GETTABLEKS                       R6 R0 K2 ["cache"]
       61 GETTABLEKS                       R6 R6 K3 ["composedReachSequence"]
       63 JUMPIFEQKNIL                     R6 ; [+8]
       65 GETTABLEKS                       R7 R0 K2 ["cache"]
       67 GETTABLEKS                       R7 R7 K5 ["composedReachCacheKey"]
       69 JUMPIFNOTEQ                      R7 R5 ; [+2]
       71 RETURN                           R6 1
       72 GETTABLEKS                       R7 R0 K2 ["cache"]
       74 GETTABLEKS                       R7 R7 K3 ["composedReachSequence"]
       76 JUMPIFEQKNIL                     R7 ; [+13]
       78 GETTABLEKS                       R7 R0 K2 ["cache"]
       80 GETTABLEKS                       R7 R7 K3 ["composedReachSequence"]
       82 NAMECALL                         R7 R7 K4 ["Destroy"]
       84 CALL                             R7 1 0
       85 GETTABLEKS                       R7 R0 K2 ["cache"]
       87 LOADNIL                          R8
       88 SETTABLEKS                       R8 R7 K3 ["composedReachSequence"]
       90 GETTABLEKS                       R7 R0 K2 ["cache"]
       92 LOADNIL                          R8
       93 SETTABLEKS                       R8 R7 K5 ["composedReachCacheKey"]
       95 GETUPVAL                         R7 1
       96 GETTABLEKS                       R7 R7 K16 ["synthesizeClip"]
       98 MOVE                             R8 R1
       99 MOVE                             R9 R3
      100 MOVE                             R10 R4
      101 CALL                             R7 3 1
      102 GETTABLEKS                       R8 R0 K2 ["cache"]
      104 SETTABLEKS                       R7 R8 K3 ["composedReachSequence"]
      106 GETTABLEKS                       R8 R0 K2 ["cache"]
      108 JUMPIFEQKNIL                     R7 ; [+3]
      110 MOVE                             R9 R5
      111 JUMP                             ; [+1]
      112 LOADNIL                          R9
      113 SETTABLEKS                       R9 R8 K5 ["composedReachCacheKey"]
      115 OR                               R8 R7 R1
      116 RETURN                           R8 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["settings"]
        2 JUMPIF                           R2 ; [+2]
        3 NEWTABLE                         R2 0 0
        5 LOADB                            R3 1
        6 GETTABLEKS                       R4 R2 K1 ["armsReach"]
        8 GETTABLEKS                       R5 R1 K1 ["armsReach"]
       10 JUMPIFNOTEQ                      R4 R5 ; [+9]
       12 GETTABLEKS                       R4 R2 K2 ["legsReach"]
       14 GETTABLEKS                       R5 R1 K2 ["legsReach"]
       16 JUMPIFNOTEQ                      R4 R5 ; [+2]
       18 LOADB                            R3 0 +1
       19 LOADB                            R3 1
       20 MOVE                             R4 R3
       21 JUMPIF                           R4 ; [+9]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K3 ["equals"]
       25 GETTABLEKS                       R6 R2 K4 ["blend"]
       27 GETTABLEKS                       R7 R1 K4 ["blend"]
       29 CALL                             R5 2 1
       30 NOT                              R4 R5
       31 SETTABLEKS                       R1 R0 K0 ["settings"]
       33 MOVE                             R5 R4
       34 MOVE                             R6 R3
       35 RETURN                           R5 2

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
       31 GETTABLEKS                       R4 R4 K10 ["LimbBend"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Util"]
       38 GETTABLEKS                       R5 R5 K7 ["AnimationGen"]
       40 GETTABLEKS                       R5 R5 K11 ["ReachSteps"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Util"]
       47 GETTABLEKS                       R6 R6 K7 ["AnimationGen"]
       49 GETTABLEKS                       R6 R6 K12 ["UpscaleSettings"]
       51 CALL                             R5 1 1
       52 NEWTABLE                         R6 2 0
       54 DUPCLOSURE                       R7 K13 [PROTO_0]
       55 DUPCLOSURE                       R8 K14 [PROTO_1]
       56 CAPTURE                          VAL R3
       57 DUPCLOSURE                       R9 K15 [PROTO_2]
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R3
       60 SETTABLEKS                       R9 R6 K16 ["resolveSequence"]
       62 DUPCLOSURE                       R9 K17 [PROTO_3]
       63 CAPTURE                          VAL R1
       64 SETTABLEKS                       R9 R6 K18 ["applyUpscaleSettings"]
       66 RETURN                           R6 1
