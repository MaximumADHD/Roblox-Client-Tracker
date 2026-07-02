PROTO_0:
        0 GETIMPORT                        R1 K2 [debug.profilebegin]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 0
        4 GETIMPORT                        R1 K4 [debug.profileend]
        6 CALL                             R1 0 0
        7 RETURN                           R0 0

PROTO_1:
        0 FASTCALL1                        TOSTRING R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tostring]
        4 CALL                             R1 1 1
        5 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+19]
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
       14 GETUPVAL                         R1 3
       15 JUMPIFNOT                        R1 ; [+5]
       16 GETUPVAL                         R1 3
       17 GETUPVAL                         R2 4
       18 GETTABLEKS                       R2 R2 K3 ["CommitStart"]
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+15]
        2 GETUPVAL                         R1 1
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R1 R1 K0 ["mark"]
        7 LOADK                            R2 K1 ["--commit-stop"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 3
       10 JUMPIFNOT                        R1 ; [+6]
       11 GETUPVAL                         R1 3
       12 GETUPVAL                         R2 4
       13 GETTABLEKS                       R2 R2 K2 ["CommitStop"]
       15 MOVE                             R3 R0
       16 CALL                             R1 2 0
       17 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["has"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+9]
        6 GETUPVAL                         R1 0
        7 MOVE                             R3 R0
        8 GETUPVAL                         R4 1
        9 NAMECALL                         R1 R1 K1 ["set"]
       11 CALL                             R1 3 0
       12 GETUPVAL                         R1 1
       13 ADDK                             R1 R1 K2 [1]
       14 SETUPVAL                         R1 1
       15 GETUPVAL                         R1 0
       16 MOVE                             R3 R0
       17 NAMECALL                         R1 R1 K3 ["get"]
       19 CALL                             R1 2 -1
       20 RETURN                           R1 -1

PROTO_5:
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

PROTO_6:
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

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+19]
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
       14 GETUPVAL                         R1 3
       15 JUMPIFNOT                        R1 ; [+5]
       16 GETUPVAL                         R1 3
       17 GETUPVAL                         R2 4
       18 GETTABLEKS                       R2 R2 K3 ["LayoutEffectsStart"]
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+14]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K0 ["mark"]
        7 LOADK                            R1 K1 ["--layout-effects-stop"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 3
       10 JUMPIFNOT                        R0 ; [+5]
       11 GETUPVAL                         R0 3
       12 GETUPVAL                         R1 4
       13 GETTABLEKS                       R1 R1 K2 ["LayoutEffectsStop"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+19]
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
       14 GETUPVAL                         R1 3
       15 JUMPIFNOT                        R1 ; [+5]
       16 GETUPVAL                         R1 3
       17 GETUPVAL                         R2 4
       18 GETTABLEKS                       R2 R2 K3 ["PassiveEffectsStart"]
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+15]
        2 GETUPVAL                         R1 1
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R1 R1 K0 ["mark"]
        7 LOADK                            R2 K1 ["--passive-effects-stop"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 3
       10 JUMPIFNOT                        R1 ; [+6]
       11 GETUPVAL                         R1 3
       12 GETUPVAL                         R2 4
       13 GETTABLEKS                       R2 R2 K2 ["PassiveEffectsStop"]
       15 MOVE                             R3 R0
       16 CALL                             R1 2 0
       17 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+19]
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
       14 GETUPVAL                         R1 3
       15 JUMPIFNOT                        R1 ; [+5]
       16 GETUPVAL                         R1 3
       17 GETUPVAL                         R2 4
       18 GETTABLEKS                       R2 R2 K3 ["RenderStart"]
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+14]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K0 ["mark"]
        7 LOADK                            R1 K1 ["--render-yield"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 3
       10 JUMPIFNOT                        R0 ; [+5]
       11 GETUPVAL                         R0 3
       12 GETUPVAL                         R1 4
       13 GETTABLEKS                       R1 R1 K2 ["RenderYield"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+14]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K0 ["mark"]
        7 LOADK                            R1 K1 ["--render-stop"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 3
       10 JUMPIFNOT                        R0 ; [+5]
       11 GETUPVAL                         R0 3
       12 GETUPVAL                         R1 4
       13 GETTABLEKS                       R1 R1 K2 ["RenderStop"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_15:
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

PROTO_17:
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

PROTO_18:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+4]
        2 GETIMPORT                        R1 K1 [warn]
        4 LOADK                            R2 K2 ["SchedulingProfiler: Another event callback was already registered."]
        5 CALL                             R1 1 0
        6 SETUPVAL                         R0 0
        7 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 GETIMPORT                        R1 K1 [script]
        5 GETTABLEKS                       R1 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R1 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K6 ["WeakMap"]
       16 GETIMPORT                        R4 K4 [require]
       18 GETIMPORT                        R5 K1 [script]
       20 GETTABLEKS                       R5 R5 K2 ["Parent"]
       22 GETTABLEKS                       R5 R5 K7 ["ReactFiberLane"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K4 [require]
       27 GETIMPORT                        R6 K1 [script]
       29 GETTABLEKS                       R6 R6 K2 ["Parent"]
       31 GETTABLEKS                       R6 R6 K8 ["ReactInternalTypes"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K4 [require]
       36 GETTABLEKS                       R7 R1 K9 ["Shared"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K4 [require]
       41 GETTABLEKS                       R8 R1 K9 ["Shared"]
       43 CALL                             R7 1 1
       44 GETTABLEKS                       R7 R7 K10 ["ReactFeatureFlags"]
       46 GETTABLEKS                       R8 R7 K11 ["enableSchedulingProfiler"]
       48 GETIMPORT                        R9 K4 [require]
       50 GETTABLEKS                       R10 R1 K9 ["Shared"]
       52 CALL                             R9 1 1
       53 GETTABLEKS                       R9 R9 K12 ["ReactVersion"]
       55 GETIMPORT                        R10 K4 [require]
       57 GETTABLEKS                       R11 R1 K9 ["Shared"]
       59 CALL                             R10 1 1
       60 GETTABLEKS                       R10 R10 K13 ["getComponentName"]
       62 GETIMPORT                        R12 K15 [_G]
       64 GETTABLEKS                       R12 R12 K16 ["performance"]
       66 JUMPIFNOTEQKNIL                  R12 ; [+2]
       68 LOADB                            R11 0 +1
       69 LOADB                            R11 1
       70 GETIMPORT                        R12 K15 [_G]
       72 GETTABLEKS                       R12 R12 K16 ["performance"]
       74 JUMPIF                           R12 ; [+4]
       75 DUPTABLE                         R12 K18 [{"mark"}]
       76 DUPCLOSURE                       R13 K19 [PROTO_0]
       77 SETTABLEKS                       R13 R12 K17 ["mark"]
       79 DUPCLOSURE                       R13 K20 [PROTO_1]
       80 SETGLOBAL                        R13 K21 ["formatLanes"]
       82 LOADNIL                          R13
       83 DUPTABLE                         R14 K40 [{["CommitStart"] = 0, ["CommitStop"] = 1, ["LayoutEffectsStart"] = 2, ["LayoutEffectsStop"] = 3, ["PassiveEffectsStart"] = 4, ["PassiveEffectsStop"] = 5, ["RenderStart"] = 6, ["RenderYield"] = 7, ["RenderStop"] = 8}]
       84 JUMPIFNOT                        R8 ; [+11]
       85 JUMPIFNOT                        R11 ; [+10]
       86 GETTABLEKS                       R15 R12 K17 ["mark"]
       88 LOADK                            R17 K41 ["--react-init-"]
       89 FASTCALL1                        TOSTRING R9 ; [+3]
       90 MOVE                             R19 R9
       91 GETIMPORT                        R18 K43 [tostring]
       93 CALL                             R18 1 1
       94 CONCAT                           R16 R17 R18
       95 CALL                             R15 1 0
       96 NEWCLOSURE                       R15 P2
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R11
       99 CAPTURE                          VAL R12
      100 CAPTURE                          REF R13
      101 CAPTURE                          VAL R14
      102 SETTABLEKS                       R15 R0 K44 ["markCommitStarted"]
      104 NEWCLOSURE                       R15 P3
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R11
      107 CAPTURE                          VAL R12
      108 CAPTURE                          REF R13
      109 CAPTURE                          VAL R14
      110 SETTABLEKS                       R15 R0 K45 ["markCommitStopped"]
      112 GETTABLEKS                       R15 R3 K46 ["new"]
      114 CALL                             R15 0 1
      115 LOADN                            R16 0
      116 NEWCLOSURE                       R17 P4
      117 CAPTURE                          VAL R15
      118 CAPTURE                          REF R16
      119 SETGLOBAL                        R17 K47 ["getWakeableID"]
      121 DUPCLOSURE                       R17 K48 [PROTO_7]
      122 CAPTURE                          VAL R8
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R12
      126 SETTABLEKS                       R17 R0 K49 ["markComponentSuspended"]
      128 NEWCLOSURE                       R17 P6
      129 CAPTURE                          VAL R8
      130 CAPTURE                          VAL R11
      131 CAPTURE                          VAL R12
      132 CAPTURE                          REF R13
      133 CAPTURE                          VAL R14
      134 SETTABLEKS                       R17 R0 K50 ["markLayoutEffectsStarted"]
      136 NEWCLOSURE                       R17 P7
      137 CAPTURE                          VAL R8
      138 CAPTURE                          VAL R11
      139 CAPTURE                          VAL R12
      140 CAPTURE                          REF R13
      141 CAPTURE                          VAL R14
      142 SETTABLEKS                       R17 R0 K51 ["markLayoutEffectsStopped"]
      144 NEWCLOSURE                       R17 P8
      145 CAPTURE                          VAL R8
      146 CAPTURE                          VAL R11
      147 CAPTURE                          VAL R12
      148 CAPTURE                          REF R13
      149 CAPTURE                          VAL R14
      150 SETTABLEKS                       R17 R0 K52 ["markPassiveEffectsStarted"]
      152 NEWCLOSURE                       R17 P9
      153 CAPTURE                          VAL R8
      154 CAPTURE                          VAL R11
      155 CAPTURE                          VAL R12
      156 CAPTURE                          REF R13
      157 CAPTURE                          VAL R14
      158 SETTABLEKS                       R17 R0 K53 ["markPassiveEffectsStopped"]
      160 NEWCLOSURE                       R17 P10
      161 CAPTURE                          VAL R8
      162 CAPTURE                          VAL R11
      163 CAPTURE                          VAL R12
      164 CAPTURE                          REF R13
      165 CAPTURE                          VAL R14
      166 SETTABLEKS                       R17 R0 K54 ["markRenderStarted"]
      168 NEWCLOSURE                       R17 P11
      169 CAPTURE                          VAL R8
      170 CAPTURE                          VAL R11
      171 CAPTURE                          VAL R12
      172 CAPTURE                          REF R13
      173 CAPTURE                          VAL R14
      174 SETTABLEKS                       R17 R0 K55 ["markRenderYielded"]
      176 NEWCLOSURE                       R17 P12
      177 CAPTURE                          VAL R8
      178 CAPTURE                          VAL R11
      179 CAPTURE                          VAL R12
      180 CAPTURE                          REF R13
      181 CAPTURE                          VAL R14
      182 SETTABLEKS                       R17 R0 K56 ["markRenderStopped"]
      184 DUPCLOSURE                       R17 K57 [PROTO_15]
      185 CAPTURE                          VAL R8
      186 CAPTURE                          VAL R11
      187 CAPTURE                          VAL R12
      188 SETTABLEKS                       R17 R0 K58 ["markRenderScheduled"]
      190 DUPCLOSURE                       R17 K59 [PROTO_16]
      191 CAPTURE                          VAL R8
      192 CAPTURE                          VAL R11
      193 CAPTURE                          VAL R10
      194 CAPTURE                          VAL R12
      195 SETTABLEKS                       R17 R0 K60 ["markForceUpdateScheduled"]
      197 DUPCLOSURE                       R17 K61 [PROTO_17]
      198 CAPTURE                          VAL R8
      199 CAPTURE                          VAL R11
      200 CAPTURE                          VAL R10
      201 CAPTURE                          VAL R12
      202 SETTABLEKS                       R17 R0 K62 ["markStateUpdateScheduled"]
      204 SETTABLEKS                       R14 R0 K63 ["profilerEventTypes"]
      206 NEWCLOSURE                       R17 P16
      207 CAPTURE                          REF R13
      208 SETTABLEKS                       R17 R0 K64 ["registerProfilerEventCallback"]
      210 CLOSEUPVALS                      R13
      211 RETURN                           R0 1
