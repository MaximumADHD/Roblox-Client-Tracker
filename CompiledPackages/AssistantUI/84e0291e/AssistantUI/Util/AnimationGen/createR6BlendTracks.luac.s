PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 LOADN                            R7 0
        5 NAMECALL                         R5 R4 K0 ["Stop"]
        7 CALL                             R5 2 0
        8 NAMECALL                         R5 R4 K1 ["Destroy"]
       10 CALL                             R5 1 0
       11 FORGLOOP                         R0 2 ; [-8]
       13 GETUPVAL                         R0 1
       14 LOADNIL                          R1
       15 LOADNIL                          R2
       16 FORGPREP                         R0
       17 NAMECALL                         R5 R4 K1 ["Destroy"]
       19 CALL                             R5 1 0
       20 FORGLOOP                         R0 2 ; [-4]
       22 GETIMPORT                        R0 K4 [table.clear]
       24 GETUPVAL                         R1 0
       25 CALL                             R0 1 0
       26 GETIMPORT                        R0 K4 [table.clear]
       28 GETUPVAL                         R1 1
       29 CALL                             R0 1 0
       30 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["mask"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 GETUPVAL                         R4 1
        7 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
        9 MOVE                             R5 R2
       10 GETIMPORT                        R3 K3 [table.insert]
       12 CALL                             R3 2 0
       13 GETUPVAL                         R3 2
       14 MOVE                             R4 R2
       15 CALL                             R3 1 1
       16 JUMPIFEQKNIL                     R3 ; [+15]
       18 GETIMPORT                        R4 K7 [Enum.AnimationPriority.Action4]
       20 SETTABLEKS                       R4 R3 K8 ["Priority"]
       22 LOADB                            R4 0
       23 SETTABLEKS                       R4 R3 K9 ["Looped"]
       25 GETUPVAL                         R5 3
       26 FASTCALL2                        TABLE_INSERT R5 R3 ; [+4]
       28 MOVE                             R6 R3
       29 GETIMPORT                        R4 K3 [table.insert]
       31 CALL                             R4 2 0
       32 RETURN                           R3 1

PROTO_2:
        0 JUMPIFNOTEQKN                    R1 K0 [0] ; [+9]
        2 GETTABLEKS                       R2 R0 K1 ["IsPlaying"]
        4 JUMPIFNOT                        R2 ; [+28]
        5 LOADN                            R4 0
        6 NAMECALL                         R2 R0 K2 ["Stop"]
        8 CALL                             R2 2 0
        9 JUMP                             ; [+23]
       10 GETUPVAL                         R3 0
       11 GETTABLE                         R2 R3 R0
       12 JUMPIFEQKN                       R2 K0 [0] ; [+4]
       14 GETTABLEKS                       R2 R0 K1 ["IsPlaying"]
       16 JUMPIF                           R2 ; [+7]
       17 LOADN                            R4 0
       18 MOVE                             R5 R1
       19 LOADN                            R6 0
       20 NAMECALL                         R2 R0 K3 ["Play"]
       22 CALL                             R2 4 0
       23 JUMP                             ; [+9]
       24 GETUPVAL                         R3 0
       25 GETTABLE                         R2 R3 R0
       26 JUMPIFEQ                         R2 R1 ; [+6]
       28 MOVE                             R4 R1
       29 LOADN                            R5 0
       30 NAMECALL                         R2 R0 K4 ["AdjustWeight"]
       32 CALL                             R2 3 0
       33 GETUPVAL                         R2 0
       34 SETTABLE                         R1 R2 R0
       35 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["aiGenerated"]
        4 GETUPVAL                         R3 2
        5 LOADN                            R4 0
        6 LOADN                            R5 1
        7 FASTCALL                         MATH_CLAMP ; [+2]
        8 GETIMPORT                        R2 K3 [math.clamp]
       10 CALL                             R2 3 1
       11 CALL                             R0 2 0
       12 GETUPVAL                         R0 0
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K4 ["r6"]
       16 GETUPVAL                         R4 2
       17 SUBRK                            R3 K5 [1] R4
       18 LOADN                            R4 0
       19 LOADN                            R5 1
       20 FASTCALL                         MATH_CLAMP ; [+2]
       21 GETIMPORT                        R2 K3 [math.clamp]
       23 CALL                             R2 3 1
       24 CALL                             R0 2 0
       25 GETUPVAL                         R0 0
       26 GETUPVAL                         R1 3
       27 GETTABLEKS                       R1 R1 K0 ["aiGenerated"]
       29 GETUPVAL                         R3 4
       30 LOADN                            R4 0
       31 LOADN                            R5 1
       32 FASTCALL                         MATH_CLAMP ; [+2]
       33 GETIMPORT                        R2 K3 [math.clamp]
       35 CALL                             R2 3 1
       36 CALL                             R0 2 0
       37 GETUPVAL                         R0 0
       38 GETUPVAL                         R1 3
       39 GETTABLEKS                       R1 R1 K4 ["r6"]
       41 GETUPVAL                         R4 4
       42 SUBRK                            R3 K5 [1] R4
       43 LOADN                            R4 0
       44 LOADN                            R5 1
       45 FASTCALL                         MATH_CLAMP ; [+2]
       46 GETIMPORT                        R2 K3 [math.clamp]
       48 CALL                             R2 3 1
       49 CALL                             R0 2 0
       50 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["aiGenerated"]
        4 GETUPVAL                         R4 2
        5 LOADN                            R5 0
        6 LOADN                            R6 1
        7 FASTCALL                         MATH_CLAMP ; [+2]
        8 GETIMPORT                        R3 K3 [math.clamp]
       10 CALL                             R3 3 1
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 0
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K4 ["r6"]
       16 GETUPVAL                         R5 2
       17 SUBRK                            R4 K5 [1] R5
       18 LOADN                            R5 0
       19 LOADN                            R6 1
       20 FASTCALL                         MATH_CLAMP ; [+2]
       21 GETIMPORT                        R3 K3 [math.clamp]
       23 CALL                             R3 3 1
       24 CALL                             R1 2 0
       25 GETUPVAL                         R1 0
       26 GETUPVAL                         R2 3
       27 GETTABLEKS                       R2 R2 K0 ["aiGenerated"]
       29 GETUPVAL                         R4 4
       30 LOADN                            R5 0
       31 LOADN                            R6 1
       32 FASTCALL                         MATH_CLAMP ; [+2]
       33 GETIMPORT                        R3 K3 [math.clamp]
       35 CALL                             R3 3 1
       36 CALL                             R1 2 0
       37 GETUPVAL                         R1 0
       38 GETUPVAL                         R2 3
       39 GETTABLEKS                       R2 R2 K4 ["r6"]
       41 GETUPVAL                         R5 4
       42 SUBRK                            R4 K5 [1] R5
       43 LOADN                            R5 0
       44 LOADN                            R6 1
       45 FASTCALL                         MATH_CLAMP ; [+2]
       46 GETIMPORT                        R3 K3 [math.clamp]
       48 CALL                             R3 3 1
       49 CALL                             R1 2 0
       50 GETUPVAL                         R1 5
       51 GETTABLEKS                       R1 R1 K6 ["toR6Time"]
       53 GETUPVAL                         R2 6
       54 MOVE                             R3 R0
       55 CALL                             R1 2 1
       56 GETUPVAL                         R2 1
       57 GETTABLEKS                       R2 R2 K0 ["aiGenerated"]
       59 SETTABLEKS                       R0 R2 K7 ["TimePosition"]
       61 GETUPVAL                         R2 3
       62 GETTABLEKS                       R2 R2 K0 ["aiGenerated"]
       64 SETTABLEKS                       R0 R2 K7 ["TimePosition"]
       66 GETUPVAL                         R2 1
       67 GETTABLEKS                       R2 R2 K4 ["r6"]
       69 SETTABLEKS                       R1 R2 K7 ["TimePosition"]
       71 GETUPVAL                         R2 3
       72 GETTABLEKS                       R2 R2 K4 ["r6"]
       74 SETTABLEKS                       R1 R2 K7 ["TimePosition"]
       76 RETURN                           R0 0

PROTO_5:
        0 SETUPVAL                         R0 0
        1 SETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 GETTABLEKS                       R3 R3 K0 ["aiGenerated"]
        6 GETUPVAL                         R5 0
        7 LOADN                            R6 0
        8 LOADN                            R7 1
        9 FASTCALL                         MATH_CLAMP ; [+2]
       10 GETIMPORT                        R4 K3 [math.clamp]
       12 CALL                             R4 3 1
       13 CALL                             R2 2 0
       14 GETUPVAL                         R2 2
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R3 R3 K4 ["r6"]
       18 GETUPVAL                         R6 0
       19 SUBRK                            R5 K5 [1] R6
       20 LOADN                            R6 0
       21 LOADN                            R7 1
       22 FASTCALL                         MATH_CLAMP ; [+2]
       23 GETIMPORT                        R4 K3 [math.clamp]
       25 CALL                             R4 3 1
       26 CALL                             R2 2 0
       27 GETUPVAL                         R2 2
       28 GETUPVAL                         R3 4
       29 GETTABLEKS                       R3 R3 K0 ["aiGenerated"]
       31 GETUPVAL                         R5 1
       32 LOADN                            R6 0
       33 LOADN                            R7 1
       34 FASTCALL                         MATH_CLAMP ; [+2]
       35 GETIMPORT                        R4 K3 [math.clamp]
       37 CALL                             R4 3 1
       38 CALL                             R2 2 0
       39 GETUPVAL                         R2 2
       40 GETUPVAL                         R3 4
       41 GETTABLEKS                       R3 R3 K4 ["r6"]
       43 GETUPVAL                         R6 1
       44 SUBRK                            R5 K5 [1] R6
       45 LOADN                            R6 0
       46 LOADN                            R7 1
       47 FASTCALL                         MATH_CLAMP ; [+2]
       48 GETIMPORT                        R4 K3 [math.clamp]
       50 CALL                             R4 3 1
       51 CALL                             R2 2 0
       52 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["new"]
        3 MOVE                             R6 R1
        4 MOVE                             R7 R0
        5 CALL                             R5 2 1
        6 NEWTABLE                         R6 0 0
        8 NEWTABLE                         R7 0 0
       10 NEWCLOSURE                       R8 P0
       11 CAPTURE                          VAL R7
       12 CAPTURE                          VAL R6
       13 NEWCLOSURE                       R9 P1
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          VAL R6
       16 CAPTURE                          VAL R2
       17 CAPTURE                          VAL R7
       18 GETUPVAL                         R11 1
       19 GETTABLEKS                       R11 R11 K1 ["mask"]
       21 MOVE                             R12 R1
       22 LOADK                            R13 K2 ["upper"]
       23 CALL                             R11 2 1
       24 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       26 MOVE                             R13 R6
       27 MOVE                             R14 R11
       28 GETIMPORT                        R12 K5 [table.insert]
       30 CALL                             R12 2 0
       31 MOVE                             R12 R2
       32 MOVE                             R13 R11
       33 CALL                             R12 1 1
       34 JUMPIFEQKNIL                     R12 ; [+15]
       36 GETIMPORT                        R13 K9 [Enum.AnimationPriority.Action4]
       38 SETTABLEKS                       R13 R12 K10 ["Priority"]
       40 LOADB                            R13 0
       41 SETTABLEKS                       R13 R12 K11 ["Looped"]
       43 FASTCALL2                        TABLE_INSERT R7 R12 ; [+5]
       45 MOVE                             R14 R7
       46 MOVE                             R15 R12
       47 GETIMPORT                        R13 K5 [table.insert]
       49 CALL                             R13 2 0
       50 MOVE                             R10 R12
       51 GETUPVAL                         R12 1
       52 GETTABLEKS                       R12 R12 K1 ["mask"]
       54 MOVE                             R13 R0
       55 LOADK                            R14 K2 ["upper"]
       56 CALL                             R12 2 1
       57 FASTCALL2                        TABLE_INSERT R6 R12 ; [+5]
       59 MOVE                             R14 R6
       60 MOVE                             R15 R12
       61 GETIMPORT                        R13 K5 [table.insert]
       63 CALL                             R13 2 0
       64 MOVE                             R13 R2
       65 MOVE                             R14 R12
       66 CALL                             R13 1 1
       67 JUMPIFEQKNIL                     R13 ; [+15]
       69 GETIMPORT                        R14 K9 [Enum.AnimationPriority.Action4]
       71 SETTABLEKS                       R14 R13 K10 ["Priority"]
       73 LOADB                            R14 0
       74 SETTABLEKS                       R14 R13 K11 ["Looped"]
       76 FASTCALL2                        TABLE_INSERT R7 R13 ; [+5]
       78 MOVE                             R15 R7
       79 MOVE                             R16 R13
       80 GETIMPORT                        R14 K5 [table.insert]
       82 CALL                             R14 2 0
       83 MOVE                             R11 R13
       84 GETUPVAL                         R13 1
       85 GETTABLEKS                       R13 R13 K1 ["mask"]
       87 MOVE                             R14 R1
       88 LOADK                            R15 K12 ["lower"]
       89 CALL                             R13 2 1
       90 FASTCALL2                        TABLE_INSERT R6 R13 ; [+5]
       92 MOVE                             R15 R6
       93 MOVE                             R16 R13
       94 GETIMPORT                        R14 K5 [table.insert]
       96 CALL                             R14 2 0
       97 MOVE                             R14 R2
       98 MOVE                             R15 R13
       99 CALL                             R14 1 1
      100 JUMPIFEQKNIL                     R14 ; [+15]
      102 GETIMPORT                        R15 K9 [Enum.AnimationPriority.Action4]
      104 SETTABLEKS                       R15 R14 K10 ["Priority"]
      106 LOADB                            R15 0
      107 SETTABLEKS                       R15 R14 K11 ["Looped"]
      109 FASTCALL2                        TABLE_INSERT R7 R14 ; [+5]
      111 MOVE                             R16 R7
      112 MOVE                             R17 R14
      113 GETIMPORT                        R15 K5 [table.insert]
      115 CALL                             R15 2 0
      116 MOVE                             R12 R14
      117 GETUPVAL                         R14 1
      118 GETTABLEKS                       R14 R14 K1 ["mask"]
      120 MOVE                             R15 R0
      121 LOADK                            R16 K12 ["lower"]
      122 CALL                             R14 2 1
      123 FASTCALL2                        TABLE_INSERT R6 R14 ; [+5]
      125 MOVE                             R16 R6
      126 MOVE                             R17 R14
      127 GETIMPORT                        R15 K5 [table.insert]
      129 CALL                             R15 2 0
      130 MOVE                             R15 R2
      131 MOVE                             R16 R14
      132 CALL                             R15 1 1
      133 JUMPIFEQKNIL                     R15 ; [+15]
      135 GETIMPORT                        R16 K9 [Enum.AnimationPriority.Action4]
      137 SETTABLEKS                       R16 R15 K10 ["Priority"]
      139 LOADB                            R16 0
      140 SETTABLEKS                       R16 R15 K11 ["Looped"]
      142 FASTCALL2                        TABLE_INSERT R7 R15 ; [+5]
      144 MOVE                             R17 R7
      145 MOVE                             R18 R15
      146 GETIMPORT                        R16 K5 [table.insert]
      148 CALL                             R16 2 0
      149 MOVE                             R13 R15
      150 JUMPIFEQKNIL                     R10 ; [+7]
      152 JUMPIFEQKNIL                     R11 ; [+5]
      154 JUMPIFEQKNIL                     R12 ; [+3]
      156 JUMPIFNOTEQKNIL                  R13 ; [+5]
      158 MOVE                             R14 R8
      159 CALL                             R14 0 0
      160 LOADNIL                          R14
      161 RETURN                           R14 1
      162 DUPTABLE                         R14 K15 [{"aiGenerated", "r6"}]
      163 SETTABLEKS                       R10 R14 K13 ["aiGenerated"]
      165 SETTABLEKS                       R11 R14 K14 ["r6"]
      167 DUPTABLE                         R15 K15 [{"aiGenerated", "r6"}]
      168 SETTABLEKS                       R12 R15 K13 ["aiGenerated"]
      170 SETTABLEKS                       R13 R15 K14 ["r6"]
      172 NEWTABLE                         R16 0 0
      174 MOVE                             R17 R3
      175 MOVE                             R18 R4
      176 NEWCLOSURE                       R19 P2
      177 CAPTURE                          VAL R16
      178 NEWCLOSURE                       R20 P3
      179 CAPTURE                          VAL R19
      180 CAPTURE                          VAL R14
      181 CAPTURE                          REF R17
      182 CAPTURE                          VAL R15
      183 CAPTURE                          REF R18
      184 DUPTABLE                         R21 K23 [{["primaryTrack"], ["needsWarmUpStep"] = True, ["play"], ["seek"], ["setR6BlendWeights"], ["destroy"]}]
      185 GETTABLEKS                       R22 R14 K13 ["aiGenerated"]
      187 SETTABLEKS                       R22 R21 K16 ["primaryTrack"]
      189 SETTABLEKS                       R20 R21 K19 ["play"]
      191 NEWCLOSURE                       R22 P4
      192 CAPTURE                          VAL R19
      193 CAPTURE                          VAL R14
      194 CAPTURE                          REF R17
      195 CAPTURE                          VAL R15
      196 CAPTURE                          REF R18
      197 CAPTURE                          UPVAL U0
      198 CAPTURE                          VAL R5
      199 SETTABLEKS                       R22 R21 K20 ["seek"]
      201 NEWCLOSURE                       R22 P5
      202 CAPTURE                          REF R17
      203 CAPTURE                          REF R18
      204 CAPTURE                          VAL R19
      205 CAPTURE                          VAL R14
      206 CAPTURE                          VAL R15
      207 SETTABLEKS                       R22 R21 K21 ["setR6BlendWeights"]
      209 SETTABLEKS                       R8 R21 K22 ["destroy"]
      211 CLOSEUPVALS                      R17
      212 RETURN                           R21 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["AnimationGen"]
       13 GETTABLEKS                       R2 R2 K8 ["BlendTimeline"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Util"]
       20 GETTABLEKS                       R3 R3 K7 ["AnimationGen"]
       22 GETTABLEKS                       R3 R3 K9 ["BodyRegions"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Util"]
       29 GETTABLEKS                       R4 R4 K7 ["AnimationGen"]
       31 GETTABLEKS                       R4 R4 K10 ["PlaybackTracks"]
       33 CALL                             R3 1 1
       34 DUPCLOSURE                       R4 K11 [PROTO_6]
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R2
       37 RETURN                           R4 1
