PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["states"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETTABLEKS                       R7 R6 K1 ["isStart"]
        7 JUMPIFNOT                        R7 ; [+18]
        8 GETTABLEKS                       R7 R0 K2 ["transitions"]
       10 LOADNIL                          R8
       11 LOADNIL                          R9
       12 FORGPREP                         R7
       13 GETTABLEKS                       R12 R11 K3 ["fromStateId"]
       15 GETTABLEKS                       R13 R6 K4 ["id"]
       17 JUMPIFNOTEQ                      R12 R13 ; [+6]
       19 MOVE                             R12 R11
       20 GETTABLEKS                       R14 R11 K5 ["toStateId"]
       22 GETTABLE                         R13 R1 R14
       23 RETURN                           R12 2
       24 FORGLOOP                         R7 2 ; [-12]
       26 FORGLOOP                         R2 2 ; [-22]
       28 LOADNIL                          R2
       29 LOADNIL                          R3
       30 RETURN                           R2 2

PROTO_1:
        0 LOADK                            R5 K0 ["%*_to_%*"]
        1 GETTABLEKS                       R8 R2 K1 ["isAny"]
        3 JUMPIFNOT                        R8 ; [+2]
        4 LOADK                            R7 K2 ["Any"]
        5 JUMP                             ; [+2]
        6 GETTABLEKS                       R7 R2 K3 ["name"]
        8 GETTABLEKS                       R8 R3 K3 ["name"]
       10 NAMECALL                         R5 R5 K4 ["format"]
       12 CALL                             R5 3 1
       13 MOVE                             R4 R5
       14 SETTABLEKS                       R4 R0 K5 ["Name"]
       16 LOADK                            R6 K6 ["From"]
       17 GETTABLEKS                       R8 R2 K1 ["isAny"]
       19 JUMPIFNOT                        R8 ; [+2]
       20 LOADK                            R7 K7 ["*"]
       21 JUMP                             ; [+2]
       22 GETTABLEKS                       R7 R2 K3 ["name"]
       24 NAMECALL                         R4 R0 K8 ["SetAttribute"]
       26 CALL                             R4 3 0
       27 LOADK                            R6 K9 ["To"]
       28 GETTABLEKS                       R7 R3 K3 ["name"]
       30 NAMECALL                         R4 R0 K8 ["SetAttribute"]
       32 CALL                             R4 3 0
       33 LOADK                            R6 K10 ["Expression"]
       34 GETTABLEKS                       R7 R1 K11 ["TriggerExpression"]
       36 NAMECALL                         R4 R0 K8 ["SetAttribute"]
       38 CALL                             R4 3 0
       39 LOADK                            R6 K12 ["Duration"]
       40 GETTABLEKS                       R7 R1 K13 ["Length"]
       42 NAMECALL                         R4 R0 K8 ["SetAttribute"]
       44 CALL                             R4 3 0
       45 LOADK                            R6 K14 ["Curve"]
       46 GETTABLEKS                       R7 R1 K14 ["Curve"]
       48 NAMECALL                         R4 R0 K8 ["SetAttribute"]
       50 CALL                             R4 3 0
       51 LOADK                            R6 K15 ["Priority"]
       52 GETTABLEKS                       R7 R1 K15 ["Priority"]
       54 NAMECALL                         R4 R0 K8 ["SetAttribute"]
       56 CALL                             R4 3 0
       57 LOADK                            R6 K16 ["RBX_TransitionId"]
       58 GETTABLEKS                       R7 R1 K17 ["id"]
       60 NAMECALL                         R4 R0 K8 ["SetAttribute"]
       62 CALL                             R4 3 0
       63 LOADK                            R6 K18 ["RBX_FromStateId"]
       64 GETTABLEKS                       R7 R1 K19 ["fromStateId"]
       66 NAMECALL                         R4 R0 K8 ["SetAttribute"]
       68 CALL                             R4 3 0
       69 LOADK                            R6 K20 ["RBX_ToStateId"]
       70 GETTABLEKS                       R7 R1 K21 ["toStateId"]
       72 NAMECALL                         R4 R0 K8 ["SetAttribute"]
       74 CALL                             R4 3 0
       75 RETURN                           R0 0

PROTO_2:
        0 JUMPIFEQKNIL                     R2 ; [+3]
        2 SETTABLEKS                       R2 R0 K0 ["Name"]
        4 DUPTABLE                         R3 K6 [{"version", "startStateId", "currentState", "states", "transitions"}]
        5 GETTABLEKS                       R4 R1 K1 ["version"]
        7 SETTABLEKS                       R4 R3 K1 ["version"]
        9 GETTABLEKS                       R4 R1 K2 ["startStateId"]
       11 SETTABLEKS                       R4 R3 K2 ["startStateId"]
       13 GETTABLEKS                       R4 R1 K3 ["currentState"]
       15 SETTABLEKS                       R4 R3 K3 ["currentState"]
       17 GETTABLEKS                       R4 R1 K4 ["states"]
       19 SETTABLEKS                       R4 R3 K4 ["states"]
       21 NEWTABLE                         R4 0 0
       23 SETTABLEKS                       R4 R3 K5 ["transitions"]
       25 LOADK                            R6 K7 ["RBX_StateMachineLayout"]
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R7 R7 K8 ["encode"]
       29 MOVE                             R8 R3
       30 CALL                             R7 1 -1
       31 NAMECALL                         R4 R0 K9 ["SetAttribute"]
       33 CALL                             R4 -1 0
       34 NEWTABLE                         R4 0 0
       36 GETTABLEKS                       R5 R1 K4 ["states"]
       38 LOADNIL                          R6
       39 LOADNIL                          R7
       40 FORGPREP                         R5
       41 GETTABLEKS                       R10 R9 K10 ["id"]
       43 SETTABLE                         R9 R4 R10
       44 FORGLOOP                         R5 2 ; [-4]
       46 GETUPVAL                         R5 1
       47 MOVE                             R6 R1
       48 MOVE                             R7 R4
       49 CALL                             R5 2 2
       50 LOADK                            R9 K11 ["EntryState"]
       51 JUMPIFNOT                        R6 ; [+3]
       52 GETTABLEKS                       R10 R6 K12 ["name"]
       54 JUMP                             ; [+1]
       55 LOADNIL                          R10
       56 NAMECALL                         R7 R0 K9 ["SetAttribute"]
       58 CALL                             R7 3 0
       59 LOADK                            R9 K13 ["RBX_EntryTransitionId"]
       60 JUMPIFNOT                        R5 ; [+3]
       61 GETTABLEKS                       R10 R5 K10 ["id"]
       63 JUMP                             ; [+1]
       64 LOADNIL                          R10
       65 NAMECALL                         R7 R0 K9 ["SetAttribute"]
       67 CALL                             R7 3 0
       68 NEWTABLE                         R7 0 0
       70 NAMECALL                         R8 R0 K14 ["GetChildren"]
       72 CALL                             R8 1 3
       73 FORGPREP                         R8
       74 LOADK                            R15 K15 ["RBX_TransitionId"]
       75 NAMECALL                         R13 R12 K16 ["GetAttribute"]
       77 CALL                             R13 2 1
       78 FASTCALL1                        TYPEOF R13 ; [+3]
       79 MOVE                             R15 R13
       80 GETIMPORT                        R14 K18 [typeof]
       82 CALL                             R14 1 1
       83 JUMPIFNOTEQKS                    R14 K19 ["string"] ; [+2]
       85 SETTABLE                         R12 R7 R13
       86 FORGLOOP                         R8 2 ; [-13]
       88 NEWTABLE                         R8 0 0
       90 NEWTABLE                         R9 0 0
       92 GETTABLEKS                       R10 R1 K5 ["transitions"]
       94 LOADNIL                          R11
       95 LOADNIL                          R12
       96 FORGPREP                         R10
       97 GETTABLEKS                       R16 R14 K20 ["fromStateId"]
       99 GETTABLE                         R15 R4 R16
      100 GETTABLEKS                       R17 R14 K21 ["toStateId"]
      102 GETTABLE                         R16 R4 R17
      103 JUMPIFEQKNIL                     R15 ; [+3]
      105 JUMPIFNOTEQKNIL                  R16 ; [+15]
      107 LOADK                            R20 K22 ["transition %* references a missing state; skipped"]
      108 GETTABLEKS                       R22 R14 K10 ["id"]
      110 NAMECALL                         R20 R20 K23 ["format"]
      112 CALL                             R20 2 1
      113 MOVE                             R19 R20
      114 FASTCALL2                        TABLE_INSERT R8 R19 ; [+4]
      116 MOVE                             R18 R8
      117 GETIMPORT                        R17 K26 [table.insert]
      119 CALL                             R17 2 0
      120 JUMP                             ; [+45]
      121 GETTABLEKS                       R17 R15 K27 ["isStart"]
      123 JUMPIF                           R17 ; [+42]
      124 GETTABLEKS                       R17 R16 K27 ["isStart"]
      126 JUMPIF                           R17 ; [+3]
      127 GETTABLEKS                       R17 R16 K28 ["isAny"]
      129 JUMPIFNOT                        R17 ; [+14]
      130 LOADK                            R20 K29 ["transition %* targets a synthetic state; skipped"]
      131 GETTABLEKS                       R22 R14 K10 ["id"]
      133 NAMECALL                         R20 R20 K23 ["format"]
      135 CALL                             R20 2 1
      136 MOVE                             R19 R20
      137 FASTCALL2                        TABLE_INSERT R8 R19 ; [+4]
      139 MOVE                             R18 R8
      140 GETIMPORT                        R17 K26 [table.insert]
      142 CALL                             R17 2 0
      143 JUMP                             ; [+22]
      144 GETTABLEKS                       R17 R14 K10 ["id"]
      146 LOADB                            R18 1
      147 SETTABLE                         R18 R9 R17
      148 GETTABLEKS                       R18 R14 K10 ["id"]
      150 GETTABLE                         R17 R7 R18
      151 JUMPIFNOTEQKNIL                  R17 ; [+8]
      153 GETIMPORT                        R18 K32 [Instance.new]
      155 LOADK                            R19 K33 ["Folder"]
      156 CALL                             R18 1 1
      157 MOVE                             R17 R18
      158 SETTABLEKS                       R0 R17 K34 ["Parent"]
      160 GETUPVAL                         R18 2
      161 MOVE                             R19 R17
      162 MOVE                             R20 R14
      163 MOVE                             R21 R15
      164 MOVE                             R22 R16
      165 CALL                             R18 4 0
      166 FORGLOOP                         R10 2 ; [-70]
      168 MOVE                             R10 R7
      169 LOADNIL                          R11
      170 LOADNIL                          R12
      171 FORGPREP                         R10
      172 GETTABLE                         R15 R9 R13
      173 JUMPIF                           R15 ; [+3]
      174 NAMECALL                         R15 R14 K35 ["Destroy"]
      176 CALL                             R15 1 0
      177 FORGLOOP                         R10 2 ; [-6]
      179 RETURN                           R8 1

PROTO_3:
        0 MOVE                             R5 R1
        1 NAMECALL                         R3 R0 K0 ["GetAttribute"]
        3 CALL                             R3 2 1
        4 FASTCALL1                        TYPEOF R3 ; [+3]
        5 MOVE                             R6 R3
        6 GETIMPORT                        R5 K2 [typeof]
        8 CALL                             R5 1 1
        9 JUMPIFNOTEQKS                    R5 K3 ["number"] ; [+3]
       11 MOVE                             R4 R3
       12 RETURN                           R4 1
       13 MOVE                             R4 R2
       14 RETURN                           R4 1

PROTO_4:
        0 MOVE                             R5 R1
        1 NAMECALL                         R3 R0 K0 ["GetAttribute"]
        3 CALL                             R3 2 1
        4 FASTCALL1                        TYPEOF R3 ; [+3]
        5 MOVE                             R6 R3
        6 GETIMPORT                        R5 K2 [typeof]
        8 CALL                             R5 1 1
        9 JUMPIFNOTEQKS                    R5 K3 ["string"] ; [+3]
       11 MOVE                             R4 R3
       12 RETURN                           R4 1
       13 MOVE                             R4 R2
       14 RETURN                           R4 1

PROTO_5:
        0 LOADK                            R3 K0 ["RBX_StateMachineLayout"]
        1 NAMECALL                         R1 R0 K1 ["GetAttribute"]
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["decode"]
        7 FASTCALL1                        TYPEOF R1 ; [+3]
        8 MOVE                             R5 R1
        9 GETIMPORT                        R4 K4 [typeof]
       11 CALL                             R4 1 1
       12 JUMPIFNOTEQKS                    R4 K5 ["string"] ; [+3]
       14 MOVE                             R3 R1
       15 JUMP                             ; [+1]
       16 LOADNIL                          R3
       17 CALL                             R2 1 1
       18 NEWTABLE                         R3 0 0
       20 NAMECALL                         R4 R0 K6 ["GetChildren"]
       22 CALL                             R4 1 3
       23 FORGPREP                         R4
       24 LOADK                            R11 K7 ["RBX_TransitionId"]
       25 NAMECALL                         R9 R8 K1 ["GetAttribute"]
       27 CALL                             R9 2 1
       28 FASTCALL1                        TYPEOF R9 ; [+3]
       29 MOVE                             R11 R9
       30 GETIMPORT                        R10 K4 [typeof]
       32 CALL                             R10 1 1
       33 JUMPIFNOTEQKS                    R10 K5 ["string"] ; [+110]
       35 DUPTABLE                         R12 K15 [{"id", "fromStateId", "toStateId", "Length", "Curve", "Priority", "TriggerExpression"}]
       36 SETTABLEKS                       R9 R12 K8 ["id"]
       38 LOADK                            R16 K16 ["RBX_FromStateId"]
       39 NAMECALL                         R14 R8 K1 ["GetAttribute"]
       41 CALL                             R14 2 1
       42 FASTCALL1                        TYPEOF R14 ; [+3]
       43 MOVE                             R16 R14
       44 GETIMPORT                        R15 K4 [typeof]
       46 CALL                             R15 1 1
       47 JUMPIFNOTEQKS                    R15 K5 ["string"] ; [+3]
       49 MOVE                             R13 R14
       50 JUMP                             ; [+1]
       51 LOADK                            R13 K17 [""]
       52 SETTABLEKS                       R13 R12 K9 ["fromStateId"]
       54 LOADK                            R16 K18 ["RBX_ToStateId"]
       55 NAMECALL                         R14 R8 K1 ["GetAttribute"]
       57 CALL                             R14 2 1
       58 FASTCALL1                        TYPEOF R14 ; [+3]
       59 MOVE                             R16 R14
       60 GETIMPORT                        R15 K4 [typeof]
       62 CALL                             R15 1 1
       63 JUMPIFNOTEQKS                    R15 K5 ["string"] ; [+3]
       65 MOVE                             R13 R14
       66 JUMP                             ; [+1]
       67 LOADK                            R13 K17 [""]
       68 SETTABLEKS                       R13 R12 K10 ["toStateId"]
       70 LOADK                            R16 K19 ["Duration"]
       71 NAMECALL                         R14 R8 K1 ["GetAttribute"]
       73 CALL                             R14 2 1
       74 FASTCALL1                        TYPEOF R14 ; [+3]
       75 MOVE                             R16 R14
       76 GETIMPORT                        R15 K4 [typeof]
       78 CALL                             R15 1 1
       79 JUMPIFNOTEQKS                    R15 K20 ["number"] ; [+3]
       81 MOVE                             R13 R14
       82 JUMP                             ; [+1]
       83 LOADK                            R13 K21 [0.2]
       84 SETTABLEKS                       R13 R12 K11 ["Length"]
       86 GETIMPORT                        R14 K25 [Enum.PoseEasingStyle.Linear]
       88 GETTABLEKS                       R14 R14 K26 ["Value"]
       90 LOADK                            R17 K12 ["Curve"]
       91 NAMECALL                         R15 R8 K1 ["GetAttribute"]
       93 CALL                             R15 2 1
       94 FASTCALL1                        TYPEOF R15 ; [+3]
       95 MOVE                             R17 R15
       96 GETIMPORT                        R16 K4 [typeof]
       98 CALL                             R16 1 1
       99 JUMPIFNOTEQKS                    R16 K20 ["number"] ; [+3]
      101 MOVE                             R13 R15
      102 JUMP                             ; [+1]
      103 MOVE                             R13 R14
      104 SETTABLEKS                       R13 R12 K12 ["Curve"]
      106 LOADK                            R16 K13 ["Priority"]
      107 NAMECALL                         R14 R8 K1 ["GetAttribute"]
      109 CALL                             R14 2 1
      110 FASTCALL1                        TYPEOF R14 ; [+3]
      111 MOVE                             R16 R14
      112 GETIMPORT                        R15 K4 [typeof]
      114 CALL                             R15 1 1
      115 JUMPIFNOTEQKS                    R15 K20 ["number"] ; [+3]
      117 MOVE                             R13 R14
      118 JUMP                             ; [+1]
      119 LOADN                            R13 1
      120 SETTABLEKS                       R13 R12 K13 ["Priority"]
      122 LOADK                            R16 K27 ["Expression"]
      123 NAMECALL                         R14 R8 K1 ["GetAttribute"]
      125 CALL                             R14 2 1
      126 FASTCALL1                        TYPEOF R14 ; [+3]
      127 MOVE                             R16 R14
      128 GETIMPORT                        R15 K4 [typeof]
      130 CALL                             R15 1 1
      131 JUMPIFNOTEQKS                    R15 K5 ["string"] ; [+3]
      133 MOVE                             R13 R14
      134 JUMP                             ; [+1]
      135 LOADK                            R13 K17 [""]
      136 SETTABLEKS                       R13 R12 K14 ["TriggerExpression"]
      138 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
      140 MOVE                             R11 R3
      141 GETIMPORT                        R10 K30 [table.insert]
      143 CALL                             R10 2 0
      144 FORGLOOP                         R4 2 ; [-121]
      146 LOADK                            R6 K31 ["EntryState"]
      147 NAMECALL                         R4 R0 K1 ["GetAttribute"]
      149 CALL                             R4 2 1
      150 FASTCALL1                        TYPEOF R4 ; [+3]
      151 MOVE                             R6 R4
      152 GETIMPORT                        R5 K4 [typeof]
      154 CALL                             R5 1 1
      155 JUMPIFNOTEQKS                    R5 K5 ["string"] ; [+62]
      157 JUMPIFEQKS                       R4 K17 [""] ; [+60]
      159 LOADNIL                          R5
      160 LOADNIL                          R6
      161 GETTABLEKS                       R7 R2 K32 ["states"]
      163 LOADNIL                          R8
      164 LOADNIL                          R9
      165 FORGPREP                         R7
      166 GETTABLEKS                       R12 R11 K33 ["isStart"]
      168 JUMPIFNOT                        R12 ; [+1]
      169 MOVE                             R5 R11
      170 GETTABLEKS                       R12 R11 K34 ["name"]
      172 JUMPIFNOTEQ                      R12 R4 ; [+2]
      174 MOVE                             R6 R11
      175 FORGLOOP                         R7 2 ; [-10]
      177 JUMPIFEQKNIL                     R5 ; [+40]
      179 JUMPIFEQKNIL                     R6 ; [+38]
      181 DUPTABLE                         R9 K36 [{["id"], ["fromStateId"], ["toStateId"], ["Length"] = 0.2, ["Curve"], ["Priority"] = 1, ["TriggerExpression"] = ""}]
      182 LOADK                            R13 K37 ["RBX_EntryTransitionId"]
      183 NAMECALL                         R11 R0 K1 ["GetAttribute"]
      185 CALL                             R11 2 1
      186 FASTCALL1                        TYPEOF R11 ; [+3]
      187 MOVE                             R13 R11
      188 GETIMPORT                        R12 K4 [typeof]
      190 CALL                             R12 1 1
      191 JUMPIFNOTEQKS                    R12 K5 ["string"] ; [+3]
      193 MOVE                             R10 R11
      194 JUMP                             ; [+1]
      195 LOADK                            R10 K38 ["entry_designation"]
      196 SETTABLEKS                       R10 R9 K8 ["id"]
      198 GETTABLEKS                       R10 R5 K8 ["id"]
      200 SETTABLEKS                       R10 R9 K9 ["fromStateId"]
      202 GETTABLEKS                       R10 R6 K8 ["id"]
      204 SETTABLEKS                       R10 R9 K10 ["toStateId"]
      206 GETIMPORT                        R10 K25 [Enum.PoseEasingStyle.Linear]
      208 GETTABLEKS                       R10 R10 K26 ["Value"]
      210 SETTABLEKS                       R10 R9 K12 ["Curve"]
      212 FASTCALL2                        TABLE_INSERT R3 R9 ; [+4]
      214 MOVE                             R8 R3
      215 GETIMPORT                        R7 K30 [table.insert]
      217 CALL                             R7 2 0
      218 SETTABLEKS                       R3 R2 K39 ["transitions"]
      220 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["StateMachineGraphing"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Data"]
       16 NEWTABLE                         R3 2 0
       18 DUPCLOSURE                       R4 K9 [PROTO_0]
       19 DUPCLOSURE                       R5 K10 [PROTO_1]
       20 DUPCLOSURE                       R6 K11 [PROTO_2]
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R4
       23 CAPTURE                          VAL R5
       24 SETTABLEKS                       R6 R3 K12 ["applyToDefinition"]
       26 DUPCLOSURE                       R6 K13 [PROTO_3]
       27 DUPCLOSURE                       R7 K14 [PROTO_4]
       28 DUPCLOSURE                       R8 K15 [PROTO_5]
       29 CAPTURE                          VAL R2
       30 SETTABLEKS                       R8 R3 K16 ["readFromDefinition"]
       32 RETURN                           R3 1
