PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["number"] ; [+3]
        7 MOVE                             R2 R0
        8 RETURN                           R2 1
        9 MOVE                             R2 R1
       10 RETURN                           R2 1

PROTO_1:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["string"] ; [+3]
        7 MOVE                             R2 R0
        8 RETURN                           R2 1
        9 MOVE                             R2 R1
       10 RETURN                           R2 1

PROTO_2:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["EnumItem"] ; [+8]
        7 GETTABLEKS                       R1 R0 K3 ["EnumType"]
        9 GETIMPORT                        R2 K6 [Enum.PoseEasingStyle]
       11 JUMPIFNOTEQ                      R1 R2 ; [+2]
       13 RETURN                           R0 1
       14 FASTCALL1                        TYPEOF R0 ; [+3]
       15 MOVE                             R2 R0
       16 GETIMPORT                        R1 K1 [typeof]
       18 CALL                             R1 1 1
       19 JUMPIFNOTEQKS                    R1 K7 ["number"] ; [+15]
       21 GETIMPORT                        R1 K6 [Enum.PoseEasingStyle]
       23 MOVE                             R3 R0
       24 NAMECALL                         R1 R1 K8 ["FromValue"]
       26 CALL                             R1 2 1
       27 FASTCALL1                        TYPEOF R1 ; [+3]
       28 MOVE                             R3 R1
       29 GETIMPORT                        R2 K1 [typeof]
       31 CALL                             R2 1 1
       32 JUMPIFNOTEQKS                    R2 K2 ["EnumItem"] ; [+2]
       34 RETURN                           R1 1
       35 GETIMPORT                        R1 K10 [Enum.PoseEasingStyle.Linear]
       37 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["states"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETTABLEKS                       R7 R6 K1 ["isStart"]
        7 JUMPIFNOT                        R7 ; [+17]
        8 GETTABLEKS                       R7 R0 K2 ["transitions"]
       10 LOADNIL                          R8
       11 LOADNIL                          R9
       12 FORGPREP                         R7
       13 GETTABLEKS                       R12 R11 K3 ["fromStateId"]
       15 GETTABLEKS                       R13 R6 K4 ["id"]
       17 JUMPIFNOTEQ                      R12 R13 ; [+5]
       19 GETTABLEKS                       R13 R11 K5 ["toStateId"]
       21 GETTABLE                         R12 R1 R13
       22 RETURN                           R12 1
       23 FORGLOOP                         R7 2 ; [-11]
       25 FORGLOOP                         R2 2 ; [-21]
       27 LOADNIL                          R2
       28 RETURN                           R2 1

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["name"]
        2 SETTABLEKS                       R2 R0 K1 ["Name"]
        4 GETTABLEKS                       R2 R1 K2 ["id"]
        6 SETTABLEKS                       R2 R0 K3 ["StateId"]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K4 ["setStatePosition"]
       11 MOVE                             R3 R0
       12 GETIMPORT                        R4 K7 [Vector2.new]
       14 GETTABLEKS                       R5 R1 K8 ["position"]
       16 GETTABLEKS                       R5 R5 K9 ["x"]
       18 GETTABLEKS                       R6 R1 K8 ["position"]
       20 GETTABLEKS                       R6 R6 K10 ["y"]
       22 CALL                             R4 2 -1
       23 CALL                             R2 -1 0
       24 LOADK                            R4 K11 ["RBX_IsStart"]
       25 GETTABLEKS                       R6 R1 K12 ["isStart"]
       27 JUMPIFNOT                        R6 ; [+2]
       28 LOADB                            R5 1
       29 JUMP                             ; [+1]
       30 LOADNIL                          R5
       31 NAMECALL                         R2 R0 K13 ["SetAttribute"]
       33 CALL                             R2 3 0
       34 LOADK                            R4 K14 ["RBX_IsAny"]
       35 GETTABLEKS                       R6 R1 K15 ["isAny"]
       37 JUMPIFNOT                        R6 ; [+2]
       38 LOADB                            R5 1
       39 JUMP                             ; [+1]
       40 LOADNIL                          R5
       41 NAMECALL                         R2 R0 K13 ["SetAttribute"]
       43 CALL                             R2 3 0
       44 RETURN                           R0 0

PROTO_5:
        0 LOADK                            R5 K0 ["%*_to_%*"]
        1 JUMPIFNOT                        R2 ; [+3]
        2 GETTABLEKS                       R7 R2 K1 ["Name"]
        4 JUMP                             ; [+1]
        5 LOADK                            R7 K2 ["Any"]
        6 GETTABLEKS                       R8 R3 K1 ["Name"]
        8 NAMECALL                         R5 R5 K3 ["format"]
       10 CALL                             R5 3 1
       11 MOVE                             R4 R5
       12 SETTABLEKS                       R4 R0 K1 ["Name"]
       14 GETTABLEKS                       R4 R1 K4 ["id"]
       16 SETTABLEKS                       R4 R0 K5 ["TransitionId"]
       18 SETTABLEKS                       R2 R0 K6 ["From"]
       20 SETTABLEKS                       R3 R0 K7 ["To"]
       22 GETTABLEKS                       R4 R1 K8 ["Priority"]
       24 SETTABLEKS                       R4 R0 K8 ["Priority"]
       26 LOADK                            R6 K9 ["Expression"]
       27 GETTABLEKS                       R7 R1 K10 ["TriggerExpression"]
       29 NAMECALL                         R4 R0 K11 ["SetAttribute"]
       31 CALL                             R4 3 0
       32 LOADK                            R6 K12 ["Duration"]
       33 GETTABLEKS                       R7 R1 K13 ["Length"]
       35 NAMECALL                         R4 R0 K11 ["SetAttribute"]
       37 CALL                             R4 3 0
       38 LOADK                            R6 K14 ["Curve"]
       39 GETTABLEKS                       R7 R1 K14 ["Curve"]
       41 NAMECALL                         R4 R0 K11 ["SetAttribute"]
       43 CALL                             R4 3 0
       44 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["supportsInstances"]
        3 JUMPIF                           R3 ; [+3]
        4 NEWTABLE                         R3 0 0
        6 RETURN                           R3 1
        7 JUMPIFEQKNIL                     R2 ; [+3]
        9 SETTABLEKS                       R2 R0 K1 ["Name"]
       11 NEWTABLE                         R3 0 0
       13 GETTABLEKS                       R4 R1 K2 ["states"]
       15 LOADNIL                          R5
       16 LOADNIL                          R6
       17 FORGPREP                         R4
       18 GETTABLEKS                       R9 R8 K3 ["id"]
       20 SETTABLE                         R8 R3 R9
       21 FORGLOOP                         R4 2 ; [-4]
       23 NEWTABLE                         R4 0 0
       25 NAMECALL                         R5 R0 K4 ["GetChildren"]
       27 CALL                             R5 1 3
       28 FORGPREP                         R5
       29 LOADK                            R12 K5 ["StateMachineStateDefinition"]
       30 NAMECALL                         R10 R9 K6 ["IsA"]
       32 CALL                             R10 2 1
       33 JUMPIFNOT                        R10 ; [+12]
       34 GETTABLEKS                       R10 R9 K7 ["StateId"]
       36 FASTCALL1                        TYPEOF R10 ; [+3]
       37 MOVE                             R12 R10
       38 GETIMPORT                        R11 K9 [typeof]
       40 CALL                             R11 1 1
       41 JUMPIFNOTEQKS                    R11 K10 ["string"] ; [+4]
       43 JUMPIFEQKS                       R10 K11 [""] ; [+2]
       45 SETTABLE                         R9 R4 R10
       46 FORGLOOP                         R5 2 ; [-18]
       48 NEWTABLE                         R5 0 0
       50 NEWTABLE                         R6 0 0
       52 GETTABLEKS                       R7 R1 K2 ["states"]
       54 LOADNIL                          R8
       55 LOADNIL                          R9
       56 FORGPREP                         R7
       57 GETTABLEKS                       R12 R11 K3 ["id"]
       59 LOADB                            R13 1
       60 SETTABLE                         R13 R6 R12
       61 GETTABLEKS                       R13 R11 K3 ["id"]
       63 GETTABLE                         R12 R4 R13
       64 JUMPIFEQKNIL                     R12 ; [+2]
       66 LOADB                            R13 0 +1
       67 LOADB                            R13 1
       68 JUMPIFNOT                        R13 ; [+5]
       69 GETIMPORT                        R14 K14 [Instance.new]
       71 LOADK                            R15 K5 ["StateMachineStateDefinition"]
       72 CALL                             R14 1 1
       73 MOVE                             R12 R14
       74 GETUPVAL                         R14 1
       75 MOVE                             R15 R12
       76 MOVE                             R16 R11
       77 CALL                             R14 2 0
       78 JUMPIFNOT                        R13 ; [+2]
       79 SETTABLEKS                       R0 R12 K15 ["Parent"]
       81 GETTABLEKS                       R14 R11 K3 ["id"]
       83 SETTABLE                         R12 R5 R14
       84 FORGLOOP                         R7 2 ; [-28]
       86 MOVE                             R7 R4
       87 LOADNIL                          R8
       88 LOADNIL                          R9
       89 FORGPREP                         R7
       90 GETTABLE                         R12 R6 R10
       91 JUMPIF                           R12 ; [+3]
       92 NAMECALL                         R12 R11 K16 ["Destroy"]
       94 CALL                             R12 1 0
       95 FORGLOOP                         R7 2 ; [-6]
       97 GETUPVAL                         R7 2
       98 GETTABLEKS                       R7 R7 K17 ["findEntryTarget"]
      100 MOVE                             R8 R1
      101 MOVE                             R9 R3
      102 CALL                             R7 2 1
      103 JUMPIFNOT                        R7 ; [+4]
      104 GETTABLEKS                       R9 R7 K3 ["id"]
      106 GETTABLE                         R8 R5 R9
      107 JUMP                             ; [+1]
      108 LOADNIL                          R8
      109 SETTABLEKS                       R8 R0 K18 ["EntryState"]
      111 NEWTABLE                         R8 0 0
      113 NAMECALL                         R9 R0 K4 ["GetChildren"]
      115 CALL                             R9 1 3
      116 FORGPREP                         R9
      117 LOADK                            R16 K19 ["StateMachineTransitionDefinition"]
      118 NAMECALL                         R14 R13 K6 ["IsA"]
      120 CALL                             R14 2 1
      121 JUMPIFNOT                        R14 ; [+12]
      122 GETTABLEKS                       R14 R13 K20 ["TransitionId"]
      124 FASTCALL1                        TYPEOF R14 ; [+3]
      125 MOVE                             R16 R14
      126 GETIMPORT                        R15 K9 [typeof]
      128 CALL                             R15 1 1
      129 JUMPIFNOTEQKS                    R15 K10 ["string"] ; [+4]
      131 JUMPIFEQKS                       R14 K11 [""] ; [+2]
      133 SETTABLE                         R13 R8 R14
      134 FORGLOOP                         R9 2 ; [-18]
      136 NEWTABLE                         R9 0 0
      138 NEWTABLE                         R10 0 0
      140 GETTABLEKS                       R11 R1 K21 ["transitions"]
      142 LOADNIL                          R12
      143 LOADNIL                          R13
      144 FORGPREP                         R11
      145 GETTABLEKS                       R17 R15 K22 ["fromStateId"]
      147 GETTABLE                         R16 R3 R17
      148 GETTABLEKS                       R18 R15 K23 ["toStateId"]
      150 GETTABLE                         R17 R3 R18
      151 JUMPIFEQKNIL                     R16 ; [+3]
      153 JUMPIFNOTEQKNIL                  R17 ; [+15]
      155 LOADK                            R21 K24 ["transition %* references a missing state; skipped"]
      156 GETTABLEKS                       R23 R15 K3 ["id"]
      158 NAMECALL                         R21 R21 K25 ["format"]
      160 CALL                             R21 2 1
      161 MOVE                             R20 R21
      162 FASTCALL2                        TABLE_INSERT R9 R20 ; [+4]
      164 MOVE                             R19 R9
      165 GETIMPORT                        R18 K28 [table.insert]
      167 CALL                             R18 2 0
      168 JUMP                             ; [+59]
      169 GETTABLEKS                       R18 R16 K29 ["isStart"]
      171 JUMPIF                           R18 ; [+56]
      172 GETTABLEKS                       R18 R17 K29 ["isStart"]
      174 JUMPIF                           R18 ; [+3]
      175 GETTABLEKS                       R18 R17 K30 ["isAny"]
      177 JUMPIFNOT                        R18 ; [+14]
      178 LOADK                            R21 K31 ["transition %* targets a synthetic state; skipped"]
      179 GETTABLEKS                       R23 R15 K3 ["id"]
      181 NAMECALL                         R21 R21 K25 ["format"]
      183 CALL                             R21 2 1
      184 MOVE                             R20 R21
      185 FASTCALL2                        TABLE_INSERT R9 R20 ; [+4]
      187 MOVE                             R19 R9
      188 GETIMPORT                        R18 K28 [table.insert]
      190 CALL                             R18 2 0
      191 JUMP                             ; [+36]
      192 GETTABLEKS                       R18 R15 K3 ["id"]
      194 LOADB                            R19 1
      195 SETTABLE                         R19 R10 R18
      196 GETTABLEKS                       R19 R15 K3 ["id"]
      198 GETTABLE                         R18 R8 R19
      199 JUMPIFEQKNIL                     R18 ; [+2]
      201 LOADB                            R19 0 +1
      202 LOADB                            R19 1
      203 JUMPIFNOT                        R19 ; [+5]
      204 GETIMPORT                        R20 K14 [Instance.new]
      206 LOADK                            R21 K19 ["StateMachineTransitionDefinition"]
      207 CALL                             R20 1 1
      208 MOVE                             R18 R20
      209 GETTABLEKS                       R21 R16 K30 ["isAny"]
      211 JUMPIFNOT                        R21 ; [+2]
      212 LOADNIL                          R20
      213 JUMP                             ; [+3]
      214 GETTABLEKS                       R21 R15 K22 ["fromStateId"]
      216 GETTABLE                         R20 R5 R21
      217 GETUPVAL                         R21 3
      218 MOVE                             R22 R18
      219 MOVE                             R23 R15
      220 MOVE                             R24 R20
      221 GETTABLEKS                       R26 R15 K23 ["toStateId"]
      223 GETTABLE                         R25 R5 R26
      224 CALL                             R21 4 0
      225 JUMPIFNOT                        R19 ; [+2]
      226 SETTABLEKS                       R0 R18 K15 ["Parent"]
      228 FORGLOOP                         R11 2 ; [-84]
      230 MOVE                             R11 R8
      231 LOADNIL                          R12
      232 LOADNIL                          R13
      233 FORGPREP                         R11
      234 GETTABLE                         R16 R10 R14
      235 JUMPIF                           R16 ; [+3]
      236 NAMECALL                         R16 R15 K16 ["Destroy"]
      238 CALL                             R16 1 0
      239 FORGLOOP                         R11 2 ; [-6]
      241 RETURN                           R9 1

PROTO_7:
        0 NAMECALL                         R2 R0 K0 ["GetChildren"]
        2 CALL                             R2 1 3
        3 FORGPREP                         R2
        4 LOADK                            R9 K1 ["StateMachineStateDefinition"]
        5 NAMECALL                         R7 R6 K2 ["IsA"]
        7 CALL                             R7 2 1
        8 JUMPIFNOT                        R7 ; [+5]
        9 GETTABLEKS                       R7 R6 K3 ["StateId"]
       11 JUMPIFNOTEQ                      R7 R1 ; [+2]
       13 RETURN                           R6 1
       14 FORGLOOP                         R2 2 ; [-11]
       16 LOADNIL                          R2
       17 RETURN                           R2 1

PROTO_8:
        0 NAMECALL                         R2 R0 K0 ["GetChildren"]
        2 CALL                             R2 1 3
        3 FORGPREP                         R2
        4 LOADK                            R9 K1 ["StateMachineTransitionDefinition"]
        5 NAMECALL                         R7 R6 K2 ["IsA"]
        7 CALL                             R7 2 1
        8 JUMPIFNOT                        R7 ; [+5]
        9 GETTABLEKS                       R7 R6 K3 ["TransitionId"]
       11 JUMPIFNOTEQ                      R7 R1 ; [+2]
       13 RETURN                           R6 1
       14 FORGLOOP                         R2 2 ; [-11]
       16 LOADNIL                          R2
       17 RETURN                           R2 1

PROTO_9:
        0 GETIMPORT                        R5 K2 [Instance.new]
        2 LOADK                            R6 K3 ["StateMachineStateDefinition"]
        3 CALL                             R5 1 1
        4 GETUPVAL                         R6 0
        5 MOVE                             R7 R5
        6 DUPTABLE                         R8 K9 [{"id", "name", "position", "isStart", "isAny"}]
        7 GETUPVAL                         R9 1
        8 LOADB                            R11 0
        9 NAMECALL                         R9 R9 K10 ["GenerateGUID"]
       11 CALL                             R9 2 1
       12 SETTABLEKS                       R9 R8 K4 ["id"]
       14 SETTABLEKS                       R1 R8 K5 ["name"]
       16 SETTABLEKS                       R2 R8 K6 ["position"]
       18 SETTABLEKS                       R3 R8 K7 ["isStart"]
       20 SETTABLEKS                       R4 R8 K8 ["isAny"]
       22 CALL                             R6 2 0
       23 SETTABLEKS                       R0 R5 K11 ["Parent"]
       25 RETURN                           R5 1

PROTO_10:
        0 GETIMPORT                        R3 K2 [Instance.new]
        2 LOADK                            R4 K3 ["StateMachineTransitionDefinition"]
        3 CALL                             R3 1 1
        4 GETUPVAL                         R4 0
        5 MOVE                             R5 R3
        6 DUPTABLE                         R6 K14 [{["id"], ["fromStateId"] = "", ["toStateId"] = "", ["Length"] = 0.2, ["Curve"], ["Priority"] = 1, ["TriggerExpression"] = ""}]
        7 GETUPVAL                         R7 1
        8 LOADB                            R9 0
        9 NAMECALL                         R7 R7 K15 ["GenerateGUID"]
       11 CALL                             R7 2 1
       12 SETTABLEKS                       R7 R6 K4 ["id"]
       14 GETIMPORT                        R7 K19 [Enum.PoseEasingStyle.Linear]
       16 SETTABLEKS                       R7 R6 K10 ["Curve"]
       18 MOVE                             R7 R1
       19 MOVE                             R8 R2
       20 CALL                             R4 4 0
       21 SETTABLEKS                       R0 R3 K20 ["Parent"]
       23 RETURN                           R0 0

PROTO_11:
        0 LOADK                            R5 K0 ["RBX_IsStart"]
        1 NAMECALL                         R3 R2 K1 ["GetAttribute"]
        3 CALL                             R3 2 1
        4 JUMPIFEQKB                       R3 TRUE ; [+7]
        6 LOADK                            R5 K2 ["RBX_IsAny"]
        7 NAMECALL                         R3 R2 K1 ["GetAttribute"]
        9 CALL                             R3 2 1
       10 JUMPIFNOTEQKB                    R3 TRUE ; [+2]
       12 RETURN                           R0 0
       13 LOADK                            R5 K0 ["RBX_IsStart"]
       14 NAMECALL                         R3 R1 K1 ["GetAttribute"]
       16 CALL                             R3 2 1
       17 JUMPIFNOTEQKB                    R3 TRUE ; [+8]
       19 GETTABLEKS                       R3 R0 K3 ["EntryState"]
       21 JUMPIFEQ                         R3 R2 ; [+3]
       23 SETTABLEKS                       R2 R0 K3 ["EntryState"]
       25 RETURN                           R0 0
       26 LOADK                            R6 K2 ["RBX_IsAny"]
       27 NAMECALL                         R4 R1 K1 ["GetAttribute"]
       29 CALL                             R4 2 1
       30 JUMPIFNOTEQKB                    R4 TRUE ; [+3]
       32 LOADNIL                          R3
       33 JUMP                             ; [+1]
       34 MOVE                             R3 R1
       35 NAMECALL                         R4 R0 K4 ["GetChildren"]
       37 CALL                             R4 1 3
       38 FORGPREP                         R4
       39 LOADK                            R11 K5 ["StateMachineTransitionDefinition"]
       40 NAMECALL                         R9 R8 K6 ["IsA"]
       42 CALL                             R9 2 1
       43 JUMPIFNOT                        R9 ; [+9]
       44 GETTABLEKS                       R9 R8 K7 ["From"]
       46 JUMPIFNOTEQ                      R9 R3 ; [+6]
       48 GETTABLEKS                       R9 R8 K8 ["To"]
       50 JUMPIFNOTEQ                      R9 R2 ; [+2]
       52 RETURN                           R0 0
       53 FORGLOOP                         R4 2 ; [-15]
       55 GETUPVAL                         R4 0
       56 MOVE                             R5 R0
       57 MOVE                             R6 R3
       58 MOVE                             R7 R2
       59 CALL                             R4 3 0
       60 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["supportsInstances"]
        3 JUMPIF                           R3 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R0
        7 MOVE                             R5 R1
        8 MOVE                             R6 R2
        9 LOADB                            R7 0
       10 LOADB                            R8 0
       11 CALL                             R3 5 0
       12 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["supportsInstances"]
        3 JUMPIF                           R3 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R0
        7 MOVE                             R5 R1
        8 CALL                             R3 2 1
        9 JUMPIFNOTEQKNIL                  R3 ; [+2]
       11 RETURN                           R0 0
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K1 ["setStatePosition"]
       15 MOVE                             R5 R3
       16 GETIMPORT                        R6 K4 [Vector2.new]
       18 GETTABLEKS                       R7 R2 K5 ["x"]
       20 GETTABLEKS                       R8 R2 K6 ["y"]
       22 CALL                             R6 2 -1
       23 CALL                             R4 -1 0
       24 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["supportsInstances"]
        3 JUMPIF                           R3 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R0
        7 MOVE                             R5 R1
        8 CALL                             R3 2 1
        9 JUMPIFNOTEQKNIL                  R3 ; [+2]
       11 RETURN                           R0 0
       12 SETTABLEKS                       R2 R3 K1 ["Name"]
       14 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["supportsInstances"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 1
        9 JUMPIFNOTEQKNIL                  R2 ; [+2]
       11 RETURN                           R0 0
       12 GETTABLEKS                       R3 R0 K1 ["EntryState"]
       14 JUMPIFNOTEQ                      R3 R2 ; [+4]
       16 LOADNIL                          R3
       17 SETTABLEKS                       R3 R0 K1 ["EntryState"]
       19 NAMECALL                         R3 R0 K2 ["GetChildren"]
       21 CALL                             R3 1 3
       22 FORGPREP                         R3
       23 LOADK                            R10 K3 ["StateMachineTransitionDefinition"]
       24 NAMECALL                         R8 R7 K4 ["IsA"]
       26 CALL                             R8 2 1
       27 JUMPIFNOT                        R8 ; [+11]
       28 GETTABLEKS                       R8 R7 K5 ["From"]
       30 JUMPIFEQ                         R8 R2 ; [+5]
       32 GETTABLEKS                       R8 R7 K6 ["To"]
       34 JUMPIFNOTEQ                      R8 R2 ; [+4]
       36 NAMECALL                         R8 R7 K7 ["Destroy"]
       38 CALL                             R8 1 0
       39 FORGLOOP                         R3 2 ; [-17]
       41 NAMECALL                         R3 R2 K7 ["Destroy"]
       43 CALL                             R3 1 0
       44 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["supportsInstances"]
        3 JUMPIF                           R3 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R0
        7 MOVE                             R5 R1
        8 CALL                             R3 2 1
        9 GETUPVAL                         R4 1
       10 MOVE                             R5 R0
       11 MOVE                             R6 R2
       12 CALL                             R4 2 1
       13 JUMPIFEQKNIL                     R3 ; [+3]
       15 JUMPIFNOTEQKNIL                  R4 ; [+2]
       17 RETURN                           R0 0
       18 GETUPVAL                         R5 2
       19 MOVE                             R6 R0
       20 MOVE                             R7 R3
       21 MOVE                             R8 R4
       22 CALL                             R5 3 0
       23 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["supportsInstances"]
        3 JUMPIF                           R4 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R4 1
        6 MOVE                             R5 R0
        7 MOVE                             R6 R1
        8 CALL                             R4 2 1
        9 JUMPIFNOTEQKNIL                  R4 ; [+2]
       11 RETURN                           R0 0
       12 GETUPVAL                         R5 2
       13 MOVE                             R6 R0
       14 MOVE                             R7 R2
       15 MOVE                             R8 R3
       16 LOADB                            R9 0
       17 LOADB                            R10 0
       18 CALL                             R5 5 1
       19 GETUPVAL                         R6 3
       20 MOVE                             R7 R0
       21 MOVE                             R8 R4
       22 MOVE                             R9 R5
       23 CALL                             R6 3 0
       24 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["supportsInstances"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 JUMPIFNOTEQKS                    R1 K1 ["entry"] ; [+5]
        7 LOADNIL                          R2
        8 SETTABLEKS                       R2 R0 K2 ["EntryState"]
       10 RETURN                           R0 0
       11 GETUPVAL                         R2 1
       12 MOVE                             R3 R0
       13 MOVE                             R4 R1
       14 CALL                             R2 2 1
       15 JUMPIFNOTEQKNIL                  R2 ; [+2]
       17 RETURN                           R0 0
       18 NAMECALL                         R3 R2 K3 ["Destroy"]
       20 CALL                             R3 1 0
       21 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["supportsInstances"]
        3 JUMPIF                           R4 ; [+1]
        4 RETURN                           R0 0
        5 JUMPIFNOTEQKS                    R1 K1 ["entry"] ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R4 1
        9 MOVE                             R5 R0
       10 MOVE                             R6 R1
       11 CALL                             R4 2 1
       12 JUMPIFNOTEQKNIL                  R4 ; [+2]
       14 RETURN                           R0 0
       15 JUMPIFNOTEQKS                    R2 K2 ["Priority"] ; [+4]
       17 SETTABLEKS                       R3 R4 K2 ["Priority"]
       19 RETURN                           R0 0
       20 GETUPVAL                         R6 2
       21 GETTABLE                         R5 R6 R2
       22 JUMPIFEQKNIL                     R5 ; [+6]
       24 MOVE                             R8 R5
       25 MOVE                             R9 R3
       26 NAMECALL                         R6 R4 K3 ["SetAttribute"]
       28 CALL                             R6 3 0
       29 RETURN                           R0 0

PROTO_20:
        0 NEWTABLE                         R3 0 0
        2 LOADNIL                          R4
        3 LOADNIL                          R5
        4 NEWTABLE                         R6 0 0
        6 MOVE                             R7 R0
        7 LOADNIL                          R8
        8 LOADNIL                          R9
        9 FORGPREP                         R7
       10 GETTABLEKS                       R12 R11 K0 ["instance"]
       12 GETTABLEKS                       R13 R11 K1 ["id"]
       14 SETTABLE                         R13 R6 R12
       15 GETTABLEKS                       R12 R11 K2 ["isStart"]
       17 JUMPIFNOT                        R12 ; [+2]
       18 GETTABLEKS                       R4 R11 K1 ["id"]
       20 GETTABLEKS                       R12 R11 K3 ["isAny"]
       22 JUMPIFNOT                        R12 ; [+2]
       23 GETTABLEKS                       R5 R11 K1 ["id"]
       25 DUPTABLE                         R14 K6 [{"id", "name", "position", "isStart", "isAny"}]
       26 GETTABLEKS                       R15 R11 K1 ["id"]
       28 SETTABLEKS                       R15 R14 K1 ["id"]
       30 GETTABLEKS                       R15 R11 K4 ["name"]
       32 SETTABLEKS                       R15 R14 K4 ["name"]
       34 GETTABLEKS                       R15 R11 K5 ["position"]
       36 SETTABLEKS                       R15 R14 K5 ["position"]
       38 GETTABLEKS                       R15 R11 K2 ["isStart"]
       40 SETTABLEKS                       R15 R14 K2 ["isStart"]
       42 GETTABLEKS                       R15 R11 K3 ["isAny"]
       44 SETTABLEKS                       R15 R14 K3 ["isAny"]
       46 FASTCALL2                        TABLE_INSERT R3 R14 ; [+4]
       48 MOVE                             R13 R3
       49 GETIMPORT                        R12 K9 [table.insert]
       51 CALL                             R12 2 0
       52 FORGLOOP                         R7 2 ; [-43]
       54 NEWTABLE                         R7 0 0
       56 MOVE                             R8 R1
       57 LOADNIL                          R9
       58 LOADNIL                          R10
       59 FORGPREP                         R8
       60 GETTABLEKS                       R15 R12 K10 ["to"]
       62 FASTCALL1                        TYPEOF R15 ; [+2]
       63 GETIMPORT                        R14 K12 [typeof]
       65 CALL                             R14 1 1
       66 JUMPIFNOTEQKS                    R14 K13 ["Instance"] ; [+5]
       68 GETTABLEKS                       R14 R12 K10 ["to"]
       70 GETTABLE                         R13 R6 R14
       71 JUMP                             ; [+1]
       72 LOADNIL                          R13
       73 JUMPIFEQKNIL                     R13 ; [+47]
       75 GETTABLEKS                       R16 R12 K14 ["from"]
       77 FASTCALL1                        TYPEOF R16 ; [+2]
       78 GETIMPORT                        R15 K12 [typeof]
       80 CALL                             R15 1 1
       81 JUMPIFNOTEQKS                    R15 K13 ["Instance"] ; [+5]
       83 GETTABLEKS                       R15 R12 K14 ["from"]
       85 GETTABLE                         R14 R6 R15
       86 JUMP                             ; [+1]
       87 MOVE                             R14 R5
       88 JUMPIFEQKNIL                     R14 ; [+32]
       90 DUPTABLE                         R17 K21 [{"id", "fromStateId", "toStateId", "Length", "Curve", "Priority", "TriggerExpression"}]
       91 GETTABLEKS                       R18 R12 K1 ["id"]
       93 SETTABLEKS                       R18 R17 K1 ["id"]
       95 SETTABLEKS                       R14 R17 K15 ["fromStateId"]
       97 SETTABLEKS                       R13 R17 K16 ["toStateId"]
       99 GETTABLEKS                       R18 R12 K17 ["Length"]
      101 SETTABLEKS                       R18 R17 K17 ["Length"]
      103 GETTABLEKS                       R18 R12 K18 ["Curve"]
      105 SETTABLEKS                       R18 R17 K18 ["Curve"]
      107 GETTABLEKS                       R18 R12 K19 ["Priority"]
      109 SETTABLEKS                       R18 R17 K19 ["Priority"]
      111 GETTABLEKS                       R18 R12 K20 ["TriggerExpression"]
      113 SETTABLEKS                       R18 R17 K20 ["TriggerExpression"]
      115 FASTCALL2                        TABLE_INSERT R7 R17 ; [+4]
      117 MOVE                             R16 R7
      118 GETIMPORT                        R15 K9 [table.insert]
      120 CALL                             R15 2 0
      121 FORGLOOP                         R8 2 ; [-62]
      123 JUMPIFEQKNIL                     R4 ; [+26]
      125 FASTCALL1                        TYPEOF R2 ; [+3]
      126 MOVE                             R9 R2
      127 GETIMPORT                        R8 K12 [typeof]
      129 CALL                             R8 1 1
      130 JUMPIFNOTEQKS                    R8 K13 ["Instance"] ; [+19]
      132 GETTABLE                         R8 R6 R2
      133 JUMPIFEQKNIL                     R8 ; [+16]
      135 DUPTABLE                         R11 K26 [{["id"] = "entry", ["fromStateId"], ["toStateId"], ["Length"] = 0.2, ["Curve"], ["Priority"] = 1, ["TriggerExpression"] = ""}]
      136 SETTABLEKS                       R4 R11 K15 ["fromStateId"]
      138 SETTABLEKS                       R8 R11 K16 ["toStateId"]
      140 GETIMPORT                        R12 K30 [Enum.PoseEasingStyle.Linear]
      142 SETTABLEKS                       R12 R11 K18 ["Curve"]
      144 FASTCALL2                        TABLE_INSERT R7 R11 ; [+4]
      146 MOVE                             R10 R7
      147 GETIMPORT                        R9 K9 [table.insert]
      149 CALL                             R9 2 0
      150 DUPTABLE                         R8 K37 [{["version"], ["startStateId"], ["currentState"] = , ["states"], ["transitions"]}]
      151 GETUPVAL                         R9 0
      152 GETTABLEKS                       R9 R9 K38 ["CURRENT_VERSION"]
      154 SETTABLEKS                       R9 R8 K31 ["version"]
      156 SETTABLEKS                       R4 R8 K32 ["startStateId"]
      158 SETTABLEKS                       R3 R8 K35 ["states"]
      160 SETTABLEKS                       R7 R8 K36 ["transitions"]
      162 RETURN                           R8 1

PROTO_21:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_22:
        0 JUMPIFNOTEQKNIL                  R0 ; [+7]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["of"]
        5 LOADNIL                          R2
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K1 ["attributes"]
       11 GETTABLEKS                       R1 R1 K2 ["observeVector2"]
       13 MOVE                             R2 R0
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K3 ["NODE_ATTRIBUTES"]
       17 GETTABLEKS                       R3 R3 K4 ["Position"]
       19 CALL                             R1 2 -1
       20 RETURN                           R1 -1

PROTO_23:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 DUPTABLE                         R3 K6 [{"instance", "id", "name", "position", "isStart", "isAny"}]
        7 GETUPVAL                         R4 2
        8 SETTABLEKS                       R4 R3 K0 ["instance"]
       10 GETUPVAL                         R4 3
       11 SETTABLEKS                       R4 R3 K1 ["id"]
       13 GETUPVAL                         R4 4
       14 MOVE                             R5 R0
       15 CALL                             R4 1 1
       16 SETTABLEKS                       R4 R3 K2 ["name"]
       18 JUMPIFNOT                        R2 ; [+10]
       19 DUPTABLE                         R4 K9 [{"x", "y"}]
       20 GETTABLEKS                       R5 R2 K10 ["X"]
       22 SETTABLEKS                       R5 R4 K7 ["x"]
       24 GETTABLEKS                       R5 R2 K11 ["Y"]
       26 SETTABLEKS                       R5 R4 K8 ["y"]
       28 JUMP                             ; [+1]
       29 DUPTABLE                         R4 K13 [{["x"] = 0, ["y"] = 0}]
       30 SETTABLEKS                       R4 R3 K3 ["position"]
       32 GETTABLEKS                       R5 R1 K14 ["RBX_IsStart"]
       34 JUMPIFEQKB                       R5 TRUE ; [+2]
       36 LOADB                            R4 0 +1
       37 LOADB                            R4 1
       38 SETTABLEKS                       R4 R3 K4 ["isStart"]
       40 GETTABLEKS                       R5 R1 K15 ["RBX_IsAny"]
       42 JUMPIFEQKB                       R5 TRUE ; [+2]
       44 LOADB                            R4 0 +1
       45 LOADB                            R4 1
       46 SETTABLEKS                       R4 R3 K5 ["isAny"]
       48 RETURN                           R3 1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["instanceToId"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["properties"]
        8 GETTABLEKS                       R2 R2 K2 ["observeString"]
       10 MOVE                             R3 R0
       11 LOADK                            R4 K3 ["Name"]
       12 CALL                             R2 2 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K4 ["observeAttributes"]
       16 MOVE                             R4 R0
       17 CALL                             R3 1 1
       18 GETUPVAL                         R4 2
       19 GETTABLEKS                       R4 R4 K5 ["switchMap"]
       21 GETUPVAL                         R5 2
       22 GETTABLEKS                       R5 R5 K6 ["observeFirstNamedChild"]
       24 MOVE                             R6 R0
       25 DUPCLOSURE                       R7 K7 [PROTO_21]
       26 GETUPVAL                         R8 3
       27 GETTABLEKS                       R8 R8 K8 ["NODE_CONFIGURATION_NAME"]
       29 CALL                             R5 3 1
       30 DUPCLOSURE                       R6 K9 [PROTO_22]
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          UPVAL U3
       34 CALL                             R4 2 1
       35 GETUPVAL                         R5 4
       36 GETTABLEKS                       R5 R5 K10 ["createComputed"]
       38 NEWCLOSURE                       R6 P2
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R2
       44 CALL                             R5 1 -1
       45 RETURN                           R5 -1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 DUPTABLE                         R2 K7 [{"id", "from", "to", "Length", "Curve", "Priority", "TriggerExpression"}]
        4 GETUPVAL                         R3 1
        5 SETTABLEKS                       R3 R2 K0 ["id"]
        7 GETUPVAL                         R3 2
        8 MOVE                             R4 R0
        9 CALL                             R3 1 1
       10 SETTABLEKS                       R3 R2 K1 ["from"]
       12 GETUPVAL                         R3 3
       13 MOVE                             R4 R0
       14 CALL                             R3 1 1
       15 SETTABLEKS                       R3 R2 K2 ["to"]
       17 GETUPVAL                         R3 4
       18 GETTABLEKS                       R3 R3 K8 ["coerceNumber"]
       20 GETTABLEKS                       R4 R1 K9 ["Duration"]
       22 LOADK                            R5 K10 [0.2]
       23 CALL                             R3 2 1
       24 SETTABLEKS                       R3 R2 K3 ["Length"]
       26 GETUPVAL                         R3 4
       27 GETTABLEKS                       R3 R3 K11 ["coerceCurve"]
       29 GETTABLEKS                       R4 R1 K4 ["Curve"]
       31 CALL                             R3 1 1
       32 SETTABLEKS                       R3 R2 K4 ["Curve"]
       34 GETUPVAL                         R3 5
       35 MOVE                             R4 R0
       36 CALL                             R3 1 1
       37 SETTABLEKS                       R3 R2 K5 ["Priority"]
       39 GETUPVAL                         R3 4
       40 GETTABLEKS                       R3 R3 K12 ["coerceString"]
       42 GETTABLEKS                       R4 R1 K13 ["Expression"]
       44 LOADK                            R5 K14 [""]
       45 CALL                             R3 2 1
       46 SETTABLEKS                       R3 R2 K6 ["TriggerExpression"]
       48 RETURN                           R2 1

PROTO_26:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["instanceToId"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["properties"]
        8 GETTABLEKS                       R2 R2 K2 ["observeInstance"]
       10 MOVE                             R3 R0
       11 LOADK                            R4 K3 ["From"]
       12 CALL                             R2 2 1
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K1 ["properties"]
       16 GETTABLEKS                       R3 R3 K2 ["observeInstance"]
       18 MOVE                             R4 R0
       19 LOADK                            R5 K4 ["To"]
       20 CALL                             R3 2 1
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R4 R4 K1 ["properties"]
       24 GETTABLEKS                       R4 R4 K5 ["observeNumber"]
       26 MOVE                             R5 R0
       27 LOADK                            R6 K6 ["Priority"]
       28 CALL                             R4 2 1
       29 GETUPVAL                         R5 2
       30 GETTABLEKS                       R5 R5 K7 ["observeAttributes"]
       32 MOVE                             R6 R0
       33 CALL                             R5 1 1
       34 GETUPVAL                         R6 3
       35 GETTABLEKS                       R6 R6 K8 ["createComputed"]
       37 NEWCLOSURE                       R7 P0
       38 CAPTURE                          VAL R5
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R3
       42 CAPTURE                          UPVAL U4
       43 CAPTURE                          VAL R4
       44 CALL                             R6 1 -1
       45 RETURN                           R6 -1

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assembleStateMachineData"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 2
        7 MOVE                             R4 R0
        8 CALL                             R3 1 1
        9 GETUPVAL                         R4 3
       10 MOVE                             R5 R0
       11 CALL                             R4 1 -1
       12 CALL                             R1 -1 -1
       13 RETURN                           R1 -1

PROTO_28:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["supportsInstances"]
        3 JUMPIFNOT                        R3 ; [+9]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["properties"]
        7 GETTABLEKS                       R2 R2 K2 ["observeInstance"]
        9 MOVE                             R3 R0
       10 LOADK                            R4 K3 ["EntryState"]
       11 CALL                             R2 2 1
       12 JUMP                             ; [+5]
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R2 R2 K4 ["of"]
       16 LOADNIL                          R3
       17 CALL                             R2 1 1
       18 GETUPVAL                         R3 2
       19 GETTABLEKS                       R3 R3 K5 ["forEach"]
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R4 R4 K6 ["observeChildrenWhichIsA"]
       24 MOVE                             R5 R0
       25 LOADK                            R6 K7 ["StateMachineStateDefinition"]
       26 CALL                             R4 2 1
       27 NEWCLOSURE                       R5 P0
       28 CAPTURE                          VAL R1
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          UPVAL U4
       33 CALL                             R3 2 1
       34 GETUPVAL                         R4 2
       35 GETTABLEKS                       R4 R4 K5 ["forEach"]
       37 GETUPVAL                         R5 2
       38 GETTABLEKS                       R5 R5 K6 ["observeChildrenWhichIsA"]
       40 MOVE                             R6 R0
       41 LOADK                            R7 K8 ["StateMachineTransitionDefinition"]
       42 CALL                             R5 2 1
       43 NEWCLOSURE                       R6 P1
       44 CAPTURE                          VAL R1
       45 CAPTURE                          UPVAL U1
       46 CAPTURE                          UPVAL U2
       47 CAPTURE                          UPVAL U4
       48 CAPTURE                          UPVAL U5
       49 CALL                             R4 2 1
       50 GETUPVAL                         R5 4
       51 GETTABLEKS                       R5 R5 K9 ["createComputed"]
       53 NEWCLOSURE                       R6 P2
       54 CAPTURE                          UPVAL U5
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R2
       58 CALL                             R5 1 -1
       59 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AnimationEditor"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Util"]
       17 GETTABLEKS                       R3 R3 K11 ["Constants"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Util"]
       24 GETTABLEKS                       R4 R4 K12 ["Instances"]
       26 GETTABLEKS                       R4 R4 K13 ["InstanceRegistry"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R1 K10 ["Util"]
       33 GETTABLEKS                       R5 R5 K14 ["Signals"]
       35 GETTABLEKS                       R5 R5 K15 ["Experimental"]
       37 GETTABLEKS                       R5 R5 K16 ["SignalExperimentalUtils"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K9 [require]
       42 GETTABLEKS                       R6 R1 K17 ["Parent"]
       44 GETTABLEKS                       R6 R6 K14 ["Signals"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K9 [require]
       49 GETTABLEKS                       R7 R1 K10 ["Util"]
       51 GETTABLEKS                       R7 R7 K14 ["Signals"]
       53 GETTABLEKS                       R7 R7 K18 ["SignalsInstanceUtils"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K9 [require]
       58 GETTABLEKS                       R8 R1 K17 ["Parent"]
       60 GETTABLEKS                       R8 R8 K19 ["StateMachineGraphing"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K9 [require]
       65 GETTABLEKS                       R9 R1 K20 ["Components"]
       67 GETTABLEKS                       R9 R9 K21 ["NodeView"]
       69 GETTABLEKS                       R9 R9 K22 ["StateMachine"]
       71 GETTABLEKS                       R9 R9 K23 ["StateMachineUtils"]
       73 CALL                             R8 1 1
       74 GETIMPORT                        R9 K9 [require]
       76 GETTABLEKS                       R10 R1 K10 ["Util"]
       78 GETTABLEKS                       R10 R10 K14 ["Signals"]
       80 GETTABLEKS                       R10 R10 K24 ["TypedInstanceSignals"]
       82 CALL                             R9 1 1
       83 GETTABLEKS                       R10 R7 K25 ["Data"]
       85 NEWTABLE                         R11 16 0
       87 DUPCLOSURE                       R12 K26 [PROTO_0]
       88 SETTABLEKS                       R12 R11 K27 ["coerceNumber"]
       90 DUPCLOSURE                       R12 K28 [PROTO_1]
       91 SETTABLEKS                       R12 R11 K29 ["coerceString"]
       93 DUPCLOSURE                       R12 K30 [PROTO_2]
       94 SETTABLEKS                       R12 R11 K31 ["coerceCurve"]
       96 DUPCLOSURE                       R12 K32 [PROTO_3]
       97 SETTABLEKS                       R12 R11 K33 ["findEntryTarget"]
       99 DUPCLOSURE                       R12 K34 [PROTO_4]
      100 CAPTURE                          VAL R8
      101 DUPCLOSURE                       R13 K35 [PROTO_5]
      102 DUPCLOSURE                       R14 K36 [PROTO_6]
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R12
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R13
      107 SETTABLEKS                       R14 R11 K37 ["applyToDefinition"]
      109 DUPCLOSURE                       R14 K38 [PROTO_7]
      110 DUPCLOSURE                       R15 K39 [PROTO_8]
      111 DUPCLOSURE                       R16 K40 [PROTO_9]
      112 CAPTURE                          VAL R12
      113 CAPTURE                          VAL R0
      114 DUPCLOSURE                       R17 K41 [PROTO_10]
      115 CAPTURE                          VAL R13
      116 CAPTURE                          VAL R0
      117 DUPCLOSURE                       R18 K42 [PROTO_11]
      118 CAPTURE                          VAL R17
      119 DUPCLOSURE                       R19 K43 [PROTO_12]
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R16
      122 SETTABLEKS                       R19 R11 K44 ["createState"]
      124 DUPCLOSURE                       R19 K45 [PROTO_13]
      125 CAPTURE                          VAL R8
      126 CAPTURE                          VAL R14
      127 SETTABLEKS                       R19 R11 K46 ["moveState"]
      129 DUPCLOSURE                       R19 K47 [PROTO_14]
      130 CAPTURE                          VAL R8
      131 CAPTURE                          VAL R14
      132 SETTABLEKS                       R19 R11 K48 ["renameState"]
      134 DUPCLOSURE                       R19 K49 [PROTO_15]
      135 CAPTURE                          VAL R8
      136 CAPTURE                          VAL R14
      137 SETTABLEKS                       R19 R11 K50 ["deleteState"]
      139 DUPCLOSURE                       R19 K51 [PROTO_16]
      140 CAPTURE                          VAL R8
      141 CAPTURE                          VAL R14
      142 CAPTURE                          VAL R18
      143 SETTABLEKS                       R19 R11 K52 ["createTransition"]
      145 DUPCLOSURE                       R19 K53 [PROTO_17]
      146 CAPTURE                          VAL R8
      147 CAPTURE                          VAL R14
      148 CAPTURE                          VAL R16
      149 CAPTURE                          VAL R18
      150 SETTABLEKS                       R19 R11 K54 ["createStateAndTransition"]
      152 DUPCLOSURE                       R19 K55 [PROTO_18]
      153 CAPTURE                          VAL R8
      154 CAPTURE                          VAL R15
      155 SETTABLEKS                       R19 R11 K56 ["deleteTransition"]
      157 DUPTABLE                         R19 K62 [{["Length"] = "Duration", ["Curve"] = "Curve", ["TriggerExpression"] = "Expression"}]
      158 DUPCLOSURE                       R20 K63 [PROTO_19]
      159 CAPTURE                          VAL R8
      160 CAPTURE                          VAL R15
      161 CAPTURE                          VAL R19
      162 SETTABLEKS                       R20 R11 K64 ["setTransitionField"]
      164 DUPCLOSURE                       R20 K65 [PROTO_20]
      165 CAPTURE                          VAL R10
      166 SETTABLEKS                       R20 R11 K66 ["assembleStateMachineData"]
      168 DUPCLOSURE                       R20 K67 [PROTO_28]
      169 CAPTURE                          VAL R8
      170 CAPTURE                          VAL R9
      171 CAPTURE                          VAL R6
      172 CAPTURE                          VAL R2
      173 CAPTURE                          VAL R4
      174 CAPTURE                          VAL R11
      175 SETTABLEKS                       R20 R11 K68 ["observeFromDefinition"]
      177 RETURN                           R11 1
