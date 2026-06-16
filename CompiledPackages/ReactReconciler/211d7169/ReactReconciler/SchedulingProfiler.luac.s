PROTO_0:
        0 FASTCALL1                        TOSTRING R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tostring]
        4 CALL                             R1 1 1
        5 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+12]
        2 GETUPVAL                         R1 1
        3 JUMPIFNOT                        R1 ; [+10]
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R1 R1 K0 ["mark"]
        7 LOADK                            R3 K1 ["--commit-start-"]
        8 GETGLOBAL                        R4 K2 ["formatLanes"]
       10 MOVE                             R5 R0
       11 CALL                             R4 1 1
       12 CONCAT                           R2 R3 R4
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K0 ["mark"]
        7 LOADK                            R1 K1 ["--commit-stop"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 NOT                              R1 R2
        3 JUMPIFEQKNIL                     R1 ; [+7]
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 1
        7 SETTABLE                         R2 R1 R0
        8 GETUPVAL                         R1 1
        9 ADDK                             R1 R1 K0 [1]
       10 SETUPVAL                         R1 1
       11 GETUPVAL                         R2 0
       12 GETTABLE                         R1 R2 R0
       13 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["mark"]
        3 LOADK                            R2 K1 ["--suspense-resolved-"]
        4 GETUPVAL                         R7 1
        5 FASTCALL1                        TOSTRING R7 ; [+2]
        6 GETIMPORT                        R6 K3 [tostring]
        8 CALL                             R6 1 1
        9 MOVE                             R3 R6
       10 LOADK                            R4 K4 ["-"]
       11 GETUPVAL                         R5 2
       12 CONCAT                           R1 R2 R5
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["mark"]
        3 LOADK                            R2 K1 ["--suspense-rejected-"]
        4 GETUPVAL                         R7 1
        5 FASTCALL1                        TOSTRING R7 ; [+2]
        6 GETIMPORT                        R6 K3 [tostring]
        8 CALL                             R6 1 1
        9 MOVE                             R3 R6
       10 LOADK                            R4 K4 ["-"]
       11 GETUPVAL                         R5 2
       12 CONCAT                           R1 R2 R5
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+36]
        2 GETUPVAL                         R2 1
        3 JUMPIFNOT                        R2 ; [+34]
        4 GETGLOBAL                        R2 K0 ["getWakeableID"]
        6 MOVE                             R3 R1
        7 CALL                             R2 1 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R5 R0 K2 ["type"]
       11 CALL                             R4 1 1
       12 ORK                              R3 R4 K1 ["Unknown"]
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R4 R4 K3 ["mark"]
       16 LOADK                            R6 K4 ["--suspense-suspend-"]
       17 FASTCALL1                        TOSTRING R2 ; [+3]
       18 MOVE                             R11 R2
       19 GETIMPORT                        R10 K6 [tostring]
       21 CALL                             R10 1 1
       22 MOVE                             R7 R10
       23 LOADK                            R8 K7 ["-"]
       24 MOVE                             R9 R3
       25 CONCAT                           R5 R6 R9
       26 CALL                             R4 1 0
       27 NEWCLOSURE                       R6 P0
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R3
       31 NEWCLOSURE                       R7 P1
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R3
       35 NAMECALL                         R4 R1 K8 ["andThen"]
       37 CALL                             R4 3 0
       38 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+12]
        2 GETUPVAL                         R1 1
        3 JUMPIFNOT                        R1 ; [+10]
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R1 R1 K0 ["mark"]
        7 LOADK                            R3 K1 ["--layout-effects-start-"]
        8 GETGLOBAL                        R4 K2 ["formatLanes"]
       10 MOVE                             R5 R0
       11 CALL                             R4 1 1
       12 CONCAT                           R2 R3 R4
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K0 ["mark"]
        7 LOADK                            R1 K1 ["--layout-effects-stop"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+12]
        2 GETUPVAL                         R1 1
        3 JUMPIFNOT                        R1 ; [+10]
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R1 R1 K0 ["mark"]
        7 LOADK                            R3 K1 ["--passive-effects-start-"]
        8 GETGLOBAL                        R4 K2 ["formatLanes"]
       10 MOVE                             R5 R0
       11 CALL                             R4 1 1
       12 CONCAT                           R2 R3 R4
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K0 ["mark"]
        7 LOADK                            R1 K1 ["--passive-effects-stop"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+12]
        2 GETUPVAL                         R1 1
        3 JUMPIFNOT                        R1 ; [+10]
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R1 R1 K0 ["mark"]
        7 LOADK                            R3 K1 ["--render-start-"]
        8 GETGLOBAL                        R4 K2 ["formatLanes"]
       10 MOVE                             R5 R0
       11 CALL                             R4 1 1
       12 CONCAT                           R2 R3 R4
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K0 ["mark"]
        7 LOADK                            R1 K1 ["--render-yield"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K0 ["mark"]
        7 LOADK                            R1 K1 ["--render-stop"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+12]
        2 GETUPVAL                         R1 1
        3 JUMPIFNOT                        R1 ; [+10]
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R1 R1 K0 ["mark"]
        7 LOADK                            R3 K1 ["--schedule-render-"]
        8 GETGLOBAL                        R4 K2 ["formatLanes"]
       10 MOVE                             R5 R0
       11 CALL                             R4 1 1
       12 CONCAT                           R2 R3 R4
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+20]
        2 GETUPVAL                         R2 1
        3 JUMPIFNOT                        R2 ; [+18]
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R4 R0 K1 ["type"]
        7 CALL                             R3 1 1
        8 ORK                              R2 R3 K0 ["Unknown"]
        9 GETUPVAL                         R3 3
       10 GETTABLEKS                       R3 R3 K2 ["mark"]
       12 LOADK                            R5 K3 ["--schedule-forced-update-"]
       13 GETGLOBAL                        R9 K4 ["formatLanes"]
       15 MOVE                             R10 R1
       16 CALL                             R9 1 1
       17 MOVE                             R6 R9
       18 LOADK                            R7 K5 ["-"]
       19 MOVE                             R8 R2
       20 CONCAT                           R4 R5 R8
       21 CALL                             R3 1 0
       22 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+20]
        2 GETUPVAL                         R2 1
        3 JUMPIFNOT                        R2 ; [+18]
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R4 R0 K1 ["type"]
        7 CALL                             R3 1 1
        8 ORK                              R2 R3 K0 ["Unknown"]
        9 GETUPVAL                         R3 3
       10 GETTABLEKS                       R3 R3 K2 ["mark"]
       12 LOADK                            R5 K3 ["--schedule-state-update-"]
       13 GETGLOBAL                        R9 K4 ["formatLanes"]
       15 MOVE                             R10 R1
       16 CALL                             R9 1 1
       17 MOVE                             R6 R9
       18 LOADK                            R7 K5 ["-"]
       19 MOVE                             R8 R2
       20 CONCAT                           R4 R5 R8
       21 CALL                             R3 1 0
       22 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 GETIMPORT                        R1 K1 [script]
        5 GETTABLEKS                       R1 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R1 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETIMPORT                        R3 K1 [script]
       13 GETTABLEKS                       R3 R3 K2 ["Parent"]
       15 GETTABLEKS                       R3 R3 K5 ["ReactFiberLane"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K4 [require]
       20 GETIMPORT                        R4 K1 [script]
       22 GETTABLEKS                       R4 R4 K2 ["Parent"]
       24 GETTABLEKS                       R4 R4 K6 ["ReactInternalTypes"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K4 [require]
       29 GETTABLEKS                       R5 R1 K7 ["Shared"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K4 [require]
       34 GETTABLEKS                       R6 R1 K7 ["Shared"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R5 R5 K8 ["ReactFeatureFlags"]
       39 GETTABLEKS                       R6 R5 K9 ["enableSchedulingProfiler"]
       41 GETIMPORT                        R7 K4 [require]
       43 GETTABLEKS                       R8 R1 K7 ["Shared"]
       45 CALL                             R7 1 1
       46 GETTABLEKS                       R7 R7 K10 ["ReactVersion"]
       48 GETIMPORT                        R8 K4 [require]
       50 GETTABLEKS                       R9 R1 K7 ["Shared"]
       52 CALL                             R8 1 1
       53 GETTABLEKS                       R8 R8 K11 ["getComponentName"]
       55 GETIMPORT                        R10 K13 [_G]
       57 GETTABLEKS                       R10 R10 K14 ["performance"]
       59 JUMPIFNOTEQKNIL                  R10 ; [+2]
       61 LOADB                            R9 0 +1
       62 LOADB                            R9 1
       63 GETIMPORT                        R10 K13 [_G]
       65 GETTABLEKS                       R10 R10 K14 ["performance"]
       67 DUPCLOSURE                       R11 K15 [PROTO_0]
       68 SETGLOBAL                        R11 K16 ["formatLanes"]
       70 JUMPIFNOT                        R6 ; [+11]
       71 JUMPIFNOT                        R9 ; [+10]
       72 GETTABLEKS                       R11 R10 K17 ["mark"]
       74 LOADK                            R13 K18 ["--react-init-"]
       75 FASTCALL1                        TOSTRING R7 ; [+3]
       76 MOVE                             R15 R7
       77 GETIMPORT                        R14 K20 [tostring]
       79 CALL                             R14 1 1
       80 CONCAT                           R12 R13 R14
       81 CALL                             R11 1 0
       82 DUPCLOSURE                       R11 K21 [PROTO_1]
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R10
       86 SETTABLEKS                       R11 R0 K22 ["markCommitStarted"]
       88 DUPCLOSURE                       R11 K23 [PROTO_2]
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R10
       92 SETTABLEKS                       R11 R0 K24 ["markCommitStopped"]
       94 NEWTABLE                         R11 0 0
       96 LOADN                            R12 0
       97 NEWCLOSURE                       R13 P3
       98 CAPTURE                          VAL R11
       99 CAPTURE                          REF R12
      100 SETGLOBAL                        R13 K25 ["getWakeableID"]
      102 DUPCLOSURE                       R13 K26 [PROTO_6]
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R10
      107 SETTABLEKS                       R13 R0 K27 ["markComponentSuspended"]
      109 DUPCLOSURE                       R13 K28 [PROTO_7]
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R10
      113 SETTABLEKS                       R13 R0 K29 ["markLayoutEffectsStarted"]
      115 DUPCLOSURE                       R13 K30 [PROTO_8]
      116 CAPTURE                          VAL R6
      117 CAPTURE                          VAL R9
      118 CAPTURE                          VAL R10
      119 SETTABLEKS                       R13 R0 K31 ["markLayoutEffectsStopped"]
      121 DUPCLOSURE                       R13 K32 [PROTO_9]
      122 CAPTURE                          VAL R6
      123 CAPTURE                          VAL R9
      124 CAPTURE                          VAL R10
      125 SETTABLEKS                       R13 R0 K33 ["markPassiveEffectsStarted"]
      127 DUPCLOSURE                       R13 K34 [PROTO_10]
      128 CAPTURE                          VAL R6
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R10
      131 SETTABLEKS                       R13 R0 K35 ["markPassiveEffectsStopped"]
      133 DUPCLOSURE                       R13 K36 [PROTO_11]
      134 CAPTURE                          VAL R6
      135 CAPTURE                          VAL R9
      136 CAPTURE                          VAL R10
      137 SETTABLEKS                       R13 R0 K37 ["markRenderStarted"]
      139 DUPCLOSURE                       R13 K38 [PROTO_12]
      140 CAPTURE                          VAL R6
      141 CAPTURE                          VAL R9
      142 CAPTURE                          VAL R10
      143 SETTABLEKS                       R13 R0 K39 ["markRenderYielded"]
      145 DUPCLOSURE                       R13 K40 [PROTO_13]
      146 CAPTURE                          VAL R6
      147 CAPTURE                          VAL R9
      148 CAPTURE                          VAL R10
      149 SETTABLEKS                       R13 R0 K41 ["markRenderStopped"]
      151 DUPCLOSURE                       R13 K42 [PROTO_14]
      152 CAPTURE                          VAL R6
      153 CAPTURE                          VAL R9
      154 CAPTURE                          VAL R10
      155 SETTABLEKS                       R13 R0 K43 ["markRenderScheduled"]
      157 DUPCLOSURE                       R13 K44 [PROTO_15]
      158 CAPTURE                          VAL R6
      159 CAPTURE                          VAL R9
      160 CAPTURE                          VAL R8
      161 CAPTURE                          VAL R10
      162 SETTABLEKS                       R13 R0 K45 ["markForceUpdateScheduled"]
      164 DUPCLOSURE                       R13 K46 [PROTO_16]
      165 CAPTURE                          VAL R6
      166 CAPTURE                          VAL R9
      167 CAPTURE                          VAL R8
      168 CAPTURE                          VAL R10
      169 SETTABLEKS                       R13 R0 K47 ["markStateUpdateScheduled"]
      171 CLOSEUPVALS                      R12
      172 RETURN                           R0 1
