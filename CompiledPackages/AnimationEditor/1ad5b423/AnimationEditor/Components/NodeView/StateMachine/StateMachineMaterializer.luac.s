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
        0 GETTABLEKS                       R3 R1 K0 ["isStart"]
        2 JUMPIFNOT                        R3 ; [+4]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["ENTRY_STATE_NAME"]
        6 JUMP                             ; [+9]
        7 GETTABLEKS                       R3 R1 K2 ["isAny"]
        9 JUMPIFNOT                        R3 ; [+4]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K3 ["ANY_STATE_NAME"]
       13 JUMP                             ; [+2]
       14 GETTABLEKS                       R2 R1 K4 ["name"]
       16 SETTABLEKS                       R2 R0 K5 ["Name"]
       18 LOADK                            R4 K6 ["RBX_StateId"]
       19 GETTABLEKS                       R5 R1 K7 ["id"]
       21 NAMECALL                         R2 R0 K8 ["SetAttribute"]
       23 CALL                             R2 3 0
       24 LOADK                            R4 K9 ["Position"]
       25 GETIMPORT                        R5 K12 [Vector2.new]
       27 GETTABLEKS                       R6 R1 K13 ["position"]
       29 GETTABLEKS                       R6 R6 K14 ["x"]
       31 GETTABLEKS                       R7 R1 K13 ["position"]
       33 GETTABLEKS                       R7 R7 K15 ["y"]
       35 CALL                             R5 2 -1
       36 NAMECALL                         R2 R0 K8 ["SetAttribute"]
       38 CALL                             R2 -1 0
       39 LOADK                            R4 K16 ["RBX_IsStart"]
       40 GETTABLEKS                       R5 R1 K0 ["isStart"]
       42 NAMECALL                         R2 R0 K8 ["SetAttribute"]
       44 CALL                             R2 3 0
       45 LOADK                            R4 K17 ["RBX_IsAny"]
       46 GETTABLEKS                       R5 R1 K2 ["isAny"]
       48 NAMECALL                         R2 R0 K8 ["SetAttribute"]
       50 CALL                             R2 3 0
       51 RETURN                           R0 0

PROTO_3:
        0 JUMPIFEQKNIL                     R2 ; [+3]
        2 SETTABLEKS                       R2 R0 K0 ["Name"]
        4 NEWTABLE                         R3 0 0
        6 GETTABLEKS                       R4 R1 K1 ["states"]
        8 LOADNIL                          R5
        9 LOADNIL                          R6
       10 FORGPREP                         R4
       11 GETTABLEKS                       R9 R8 K2 ["id"]
       13 SETTABLE                         R8 R3 R9
       14 FORGLOOP                         R4 2 ; [-4]
       16 GETUPVAL                         R4 0
       17 MOVE                             R5 R1
       18 MOVE                             R6 R3
       19 CALL                             R4 2 2
       20 LOADK                            R8 K3 ["EntryState"]
       21 JUMPIFNOT                        R5 ; [+3]
       22 GETTABLEKS                       R9 R5 K4 ["name"]
       24 JUMP                             ; [+1]
       25 LOADNIL                          R9
       26 NAMECALL                         R6 R0 K5 ["SetAttribute"]
       28 CALL                             R6 3 0
       29 LOADK                            R8 K6 ["RBX_EntryTransitionId"]
       30 JUMPIFNOT                        R4 ; [+3]
       31 GETTABLEKS                       R9 R4 K2 ["id"]
       33 JUMP                             ; [+1]
       34 LOADNIL                          R9
       35 NAMECALL                         R6 R0 K5 ["SetAttribute"]
       37 CALL                             R6 3 0
       38 NEWTABLE                         R6 0 0
       40 NAMECALL                         R7 R0 K7 ["GetChildren"]
       42 CALL                             R7 1 3
       43 FORGPREP                         R7
       44 LOADK                            R14 K8 ["RBX_StateId"]
       45 NAMECALL                         R12 R11 K9 ["GetAttribute"]
       47 CALL                             R12 2 1
       48 FASTCALL1                        TYPEOF R12 ; [+3]
       49 MOVE                             R14 R12
       50 GETIMPORT                        R13 K11 [typeof]
       52 CALL                             R13 1 1
       53 JUMPIFNOTEQKS                    R13 K12 ["string"] ; [+2]
       55 SETTABLE                         R11 R6 R12
       56 FORGLOOP                         R7 2 ; [-13]
       58 NEWTABLE                         R7 0 0
       60 GETTABLEKS                       R8 R1 K1 ["states"]
       62 LOADNIL                          R9
       63 LOADNIL                          R10
       64 FORGPREP                         R8
       65 GETTABLEKS                       R13 R12 K2 ["id"]
       67 LOADB                            R14 1
       68 SETTABLE                         R14 R7 R13
       69 GETTABLEKS                       R14 R12 K2 ["id"]
       71 GETTABLE                         R13 R6 R14
       72 JUMPIFNOTEQKNIL                  R13 ; [+8]
       74 GETIMPORT                        R14 K15 [Instance.new]
       76 LOADK                            R15 K16 ["Configuration"]
       77 CALL                             R14 1 1
       78 MOVE                             R13 R14
       79 SETTABLEKS                       R0 R13 K17 ["Parent"]
       81 GETUPVAL                         R14 1
       82 MOVE                             R15 R13
       83 MOVE                             R16 R12
       84 CALL                             R14 2 0
       85 FORGLOOP                         R8 2 ; [-21]
       87 MOVE                             R8 R6
       88 LOADNIL                          R9
       89 LOADNIL                          R10
       90 FORGPREP                         R8
       91 GETTABLE                         R13 R7 R11
       92 JUMPIF                           R13 ; [+3]
       93 NAMECALL                         R13 R12 K18 ["Destroy"]
       95 CALL                             R13 1 0
       96 FORGLOOP                         R8 2 ; [-6]
       98 NEWTABLE                         R8 0 0
      100 NAMECALL                         R9 R0 K7 ["GetChildren"]
      102 CALL                             R9 1 3
      103 FORGPREP                         R9
      104 LOADK                            R16 K19 ["RBX_TransitionId"]
      105 NAMECALL                         R14 R13 K9 ["GetAttribute"]
      107 CALL                             R14 2 1
      108 FASTCALL1                        TYPEOF R14 ; [+3]
      109 MOVE                             R16 R14
      110 GETIMPORT                        R15 K11 [typeof]
      112 CALL                             R15 1 1
      113 JUMPIFNOTEQKS                    R15 K12 ["string"] ; [+2]
      115 SETTABLE                         R13 R8 R14
      116 FORGLOOP                         R9 2 ; [-13]
      118 NEWTABLE                         R9 0 0
      120 NEWTABLE                         R10 0 0
      122 GETTABLEKS                       R11 R1 K20 ["transitions"]
      124 LOADNIL                          R12
      125 LOADNIL                          R13
      126 FORGPREP                         R11
      127 GETTABLEKS                       R17 R15 K21 ["fromStateId"]
      129 GETTABLE                         R16 R3 R17
      130 GETTABLEKS                       R18 R15 K22 ["toStateId"]
      132 GETTABLE                         R17 R3 R18
      133 JUMPIFEQKNIL                     R16 ; [+3]
      135 JUMPIFNOTEQKNIL                  R17 ; [+15]
      137 LOADK                            R21 K23 ["transition %* references a missing state; skipped"]
      138 GETTABLEKS                       R23 R15 K2 ["id"]
      140 NAMECALL                         R21 R21 K24 ["format"]
      142 CALL                             R21 2 1
      143 MOVE                             R20 R21
      144 FASTCALL2                        TABLE_INSERT R9 R20 ; [+4]
      146 MOVE                             R19 R9
      147 GETIMPORT                        R18 K27 [table.insert]
      149 CALL                             R18 2 0
      150 JUMP                             ; [+45]
      151 GETTABLEKS                       R18 R16 K28 ["isStart"]
      153 JUMPIF                           R18 ; [+42]
      154 GETTABLEKS                       R18 R17 K28 ["isStart"]
      156 JUMPIF                           R18 ; [+3]
      157 GETTABLEKS                       R18 R17 K29 ["isAny"]
      159 JUMPIFNOT                        R18 ; [+14]
      160 LOADK                            R21 K30 ["transition %* targets a synthetic state; skipped"]
      161 GETTABLEKS                       R23 R15 K2 ["id"]
      163 NAMECALL                         R21 R21 K24 ["format"]
      165 CALL                             R21 2 1
      166 MOVE                             R20 R21
      167 FASTCALL2                        TABLE_INSERT R9 R20 ; [+4]
      169 MOVE                             R19 R9
      170 GETIMPORT                        R18 K27 [table.insert]
      172 CALL                             R18 2 0
      173 JUMP                             ; [+22]
      174 GETTABLEKS                       R18 R15 K2 ["id"]
      176 LOADB                            R19 1
      177 SETTABLE                         R19 R10 R18
      178 GETTABLEKS                       R19 R15 K2 ["id"]
      180 GETTABLE                         R18 R8 R19
      181 JUMPIFNOTEQKNIL                  R18 ; [+8]
      183 GETIMPORT                        R19 K15 [Instance.new]
      185 LOADK                            R20 K31 ["Folder"]
      186 CALL                             R19 1 1
      187 MOVE                             R18 R19
      188 SETTABLEKS                       R0 R18 K17 ["Parent"]
      190 GETUPVAL                         R19 2
      191 MOVE                             R20 R18
      192 MOVE                             R21 R15
      193 MOVE                             R22 R16
      194 MOVE                             R23 R17
      195 CALL                             R19 4 0
      196 FORGLOOP                         R11 2 ; [-70]
      198 MOVE                             R11 R8
      199 LOADNIL                          R12
      200 LOADNIL                          R13
      201 FORGPREP                         R11
      202 GETTABLE                         R16 R10 R14
      203 JUMPIF                           R16 ; [+3]
      204 NAMECALL                         R16 R15 K18 ["Destroy"]
      206 CALL                             R16 1 0
      207 FORGLOOP                         R11 2 ; [-6]
      209 RETURN                           R9 1

PROTO_4:
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

PROTO_5:
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

PROTO_6:
        0 LOADK                            R3 K0 ["Curve"]
        1 NAMECALL                         R1 R0 K1 ["GetAttribute"]
        3 CALL                             R1 2 1
        4 FASTCALL1                        TYPEOF R1 ; [+3]
        5 MOVE                             R3 R1
        6 GETIMPORT                        R2 K3 [typeof]
        8 CALL                             R2 1 1
        9 JUMPIFNOTEQKS                    R2 K4 ["EnumItem"] ; [+8]
       11 GETTABLEKS                       R2 R1 K5 ["EnumType"]
       13 GETIMPORT                        R3 K8 [Enum.PoseEasingStyle]
       15 JUMPIFNOTEQ                      R2 R3 ; [+2]
       17 RETURN                           R1 1
       18 FASTCALL1                        TYPEOF R1 ; [+3]
       19 MOVE                             R3 R1
       20 GETIMPORT                        R2 K3 [typeof]
       22 CALL                             R2 1 1
       23 JUMPIFNOTEQKS                    R2 K9 ["number"] ; [+15]
       25 GETIMPORT                        R2 K8 [Enum.PoseEasingStyle]
       27 MOVE                             R4 R1
       28 NAMECALL                         R2 R2 K10 ["FromValue"]
       30 CALL                             R2 2 1
       31 FASTCALL1                        TYPEOF R2 ; [+3]
       32 MOVE                             R4 R2
       33 GETIMPORT                        R3 K3 [typeof]
       35 CALL                             R3 1 1
       36 JUMPIFNOTEQKS                    R3 K4 ["EnumItem"] ; [+2]
       38 RETURN                           R2 1
       39 GETIMPORT                        R2 K12 [Enum.PoseEasingStyle.Linear]
       41 RETURN                           R2 1

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 LOADNIL                          R2
        3 NAMECALL                         R3 R0 K0 ["GetChildren"]
        5 CALL                             R3 1 3
        6 FORGPREP                         R3
        7 LOADK                            R10 K1 ["RBX_StateId"]
        8 NAMECALL                         R8 R7 K2 ["GetAttribute"]
       10 CALL                             R8 2 1
       11 FASTCALL1                        TYPEOF R8 ; [+3]
       12 MOVE                             R10 R8
       13 GETIMPORT                        R9 K4 [typeof]
       15 CALL                             R9 1 1
       16 JUMPIFNOTEQKS                    R9 K5 ["string"] ; [+70]
       18 LOADK                            R12 K6 ["RBX_IsStart"]
       19 NAMECALL                         R10 R7 K2 ["GetAttribute"]
       21 CALL                             R10 2 1
       22 JUMPIFEQKB                       R10 TRUE ; [+2]
       24 LOADB                            R9 0 +1
       25 LOADB                            R9 1
       26 LOADK                            R13 K7 ["RBX_IsAny"]
       27 NAMECALL                         R11 R7 K2 ["GetAttribute"]
       29 CALL                             R11 2 1
       30 JUMPIFEQKB                       R11 TRUE ; [+2]
       32 LOADB                            R10 0 +1
       33 LOADB                            R10 1
       34 LOADK                            R13 K8 ["Position"]
       35 NAMECALL                         R11 R7 K2 ["GetAttribute"]
       37 CALL                             R11 2 1
       38 JUMPIFNOT                        R9 ; [+1]
       39 MOVE                             R2 R8
       40 DUPTABLE                         R14 K14 [{"id", "name", "position", "isStart", "isAny"}]
       41 SETTABLEKS                       R8 R14 K9 ["id"]
       43 JUMPIFNOT                        R9 ; [+4]
       44 GETUPVAL                         R15 0
       45 GETTABLEKS                       R15 R15 K15 ["ENTRY_STATE_NAME"]
       47 JUMP                             ; [+7]
       48 JUMPIFNOT                        R10 ; [+4]
       49 GETUPVAL                         R15 0
       50 GETTABLEKS                       R15 R15 K16 ["ANY_STATE_NAME"]
       52 JUMP                             ; [+2]
       53 GETTABLEKS                       R15 R7 K17 ["Name"]
       55 SETTABLEKS                       R15 R14 K10 ["name"]
       57 FASTCALL1                        TYPEOF R11 ; [+3]
       58 MOVE                             R17 R11
       59 GETIMPORT                        R16 K4 [typeof]
       61 CALL                             R16 1 1
       62 JUMPIFNOTEQKS                    R16 K18 ["Vector2"] ; [+11]
       64 DUPTABLE                         R15 K21 [{"x", "y"}]
       65 GETTABLEKS                       R16 R11 K22 ["X"]
       67 SETTABLEKS                       R16 R15 K19 ["x"]
       69 GETTABLEKS                       R16 R11 K23 ["Y"]
       71 SETTABLEKS                       R16 R15 K20 ["y"]
       73 JUMP                             ; [+1]
       74 DUPTABLE                         R15 K25 [{["x"] = 0, ["y"] = 0}]
       75 SETTABLEKS                       R15 R14 K11 ["position"]
       77 SETTABLEKS                       R9 R14 K12 ["isStart"]
       79 SETTABLEKS                       R10 R14 K13 ["isAny"]
       81 FASTCALL2                        TABLE_INSERT R1 R14 ; [+4]
       83 MOVE                             R13 R1
       84 GETIMPORT                        R12 K28 [table.insert]
       86 CALL                             R12 2 0
       87 FORGLOOP                         R3 2 ; [-81]
       89 NEWTABLE                         R3 0 0
       91 NAMECALL                         R4 R0 K0 ["GetChildren"]
       93 CALL                             R4 1 3
       94 FORGPREP                         R4
       95 LOADK                            R11 K29 ["RBX_TransitionId"]
       96 NAMECALL                         R9 R8 K2 ["GetAttribute"]
       98 CALL                             R9 2 1
       99 FASTCALL1                        TYPEOF R9 ; [+3]
      100 MOVE                             R11 R9
      101 GETIMPORT                        R10 K4 [typeof]
      103 CALL                             R10 1 1
      104 JUMPIFNOTEQKS                    R10 K5 ["string"] ; [+95]
      106 DUPTABLE                         R12 K36 [{"id", "fromStateId", "toStateId", "Length", "Curve", "Priority", "TriggerExpression"}]
      107 SETTABLEKS                       R9 R12 K9 ["id"]
      109 LOADK                            R16 K37 ["RBX_FromStateId"]
      110 NAMECALL                         R14 R8 K2 ["GetAttribute"]
      112 CALL                             R14 2 1
      113 FASTCALL1                        TYPEOF R14 ; [+3]
      114 MOVE                             R16 R14
      115 GETIMPORT                        R15 K4 [typeof]
      117 CALL                             R15 1 1
      118 JUMPIFNOTEQKS                    R15 K5 ["string"] ; [+3]
      120 MOVE                             R13 R14
      121 JUMP                             ; [+1]
      122 LOADK                            R13 K38 [""]
      123 SETTABLEKS                       R13 R12 K30 ["fromStateId"]
      125 LOADK                            R16 K39 ["RBX_ToStateId"]
      126 NAMECALL                         R14 R8 K2 ["GetAttribute"]
      128 CALL                             R14 2 1
      129 FASTCALL1                        TYPEOF R14 ; [+3]
      130 MOVE                             R16 R14
      131 GETIMPORT                        R15 K4 [typeof]
      133 CALL                             R15 1 1
      134 JUMPIFNOTEQKS                    R15 K5 ["string"] ; [+3]
      136 MOVE                             R13 R14
      137 JUMP                             ; [+1]
      138 LOADK                            R13 K38 [""]
      139 SETTABLEKS                       R13 R12 K31 ["toStateId"]
      141 LOADK                            R16 K40 ["Duration"]
      142 NAMECALL                         R14 R8 K2 ["GetAttribute"]
      144 CALL                             R14 2 1
      145 FASTCALL1                        TYPEOF R14 ; [+3]
      146 MOVE                             R16 R14
      147 GETIMPORT                        R15 K4 [typeof]
      149 CALL                             R15 1 1
      150 JUMPIFNOTEQKS                    R15 K41 ["number"] ; [+3]
      152 MOVE                             R13 R14
      153 JUMP                             ; [+1]
      154 LOADK                            R13 K42 [0.2]
      155 SETTABLEKS                       R13 R12 K32 ["Length"]
      157 GETUPVAL                         R13 1
      158 MOVE                             R14 R8
      159 CALL                             R13 1 1
      160 SETTABLEKS                       R13 R12 K33 ["Curve"]
      162 LOADK                            R16 K34 ["Priority"]
      163 NAMECALL                         R14 R8 K2 ["GetAttribute"]
      165 CALL                             R14 2 1
      166 FASTCALL1                        TYPEOF R14 ; [+3]
      167 MOVE                             R16 R14
      168 GETIMPORT                        R15 K4 [typeof]
      170 CALL                             R15 1 1
      171 JUMPIFNOTEQKS                    R15 K41 ["number"] ; [+3]
      173 MOVE                             R13 R14
      174 JUMP                             ; [+1]
      175 LOADN                            R13 1
      176 SETTABLEKS                       R13 R12 K34 ["Priority"]
      178 LOADK                            R16 K43 ["Expression"]
      179 NAMECALL                         R14 R8 K2 ["GetAttribute"]
      181 CALL                             R14 2 1
      182 FASTCALL1                        TYPEOF R14 ; [+3]
      183 MOVE                             R16 R14
      184 GETIMPORT                        R15 K4 [typeof]
      186 CALL                             R15 1 1
      187 JUMPIFNOTEQKS                    R15 K5 ["string"] ; [+3]
      189 MOVE                             R13 R14
      190 JUMP                             ; [+1]
      191 LOADK                            R13 K38 [""]
      192 SETTABLEKS                       R13 R12 K35 ["TriggerExpression"]
      194 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
      196 MOVE                             R11 R3
      197 GETIMPORT                        R10 K28 [table.insert]
      199 CALL                             R10 2 0
      200 FORGLOOP                         R4 2 ; [-106]
      202 LOADK                            R6 K44 ["EntryState"]
      203 NAMECALL                         R4 R0 K2 ["GetAttribute"]
      205 CALL                             R4 2 1
      206 FASTCALL1                        TYPEOF R4 ; [+3]
      207 MOVE                             R6 R4
      208 GETIMPORT                        R5 K4 [typeof]
      210 CALL                             R5 1 1
      211 JUMPIFNOTEQKS                    R5 K5 ["string"] ; [+59]
      213 JUMPIFEQKS                       R4 K38 [""] ; [+57]
      215 LOADNIL                          R5
      216 LOADNIL                          R6
      217 MOVE                             R7 R1
      218 LOADNIL                          R8
      219 LOADNIL                          R9
      220 FORGPREP                         R7
      221 GETTABLEKS                       R12 R11 K12 ["isStart"]
      223 JUMPIFNOT                        R12 ; [+1]
      224 MOVE                             R5 R11
      225 GETTABLEKS                       R12 R11 K10 ["name"]
      227 JUMPIFNOTEQ                      R12 R4 ; [+2]
      229 MOVE                             R6 R11
      230 FORGLOOP                         R7 2 ; [-10]
      232 JUMPIFEQKNIL                     R5 ; [+38]
      234 JUMPIFEQKNIL                     R6 ; [+36]
      236 DUPTABLE                         R9 K46 [{["id"], ["fromStateId"], ["toStateId"], ["Length"] = 0.2, ["Curve"], ["Priority"] = 1, ["TriggerExpression"] = ""}]
      237 LOADK                            R13 K47 ["RBX_EntryTransitionId"]
      238 NAMECALL                         R11 R0 K2 ["GetAttribute"]
      240 CALL                             R11 2 1
      241 FASTCALL1                        TYPEOF R11 ; [+3]
      242 MOVE                             R13 R11
      243 GETIMPORT                        R12 K4 [typeof]
      245 CALL                             R12 1 1
      246 JUMPIFNOTEQKS                    R12 K5 ["string"] ; [+3]
      248 MOVE                             R10 R11
      249 JUMP                             ; [+1]
      250 LOADK                            R10 K48 ["entry_designation"]
      251 SETTABLEKS                       R10 R9 K9 ["id"]
      253 GETTABLEKS                       R10 R5 K9 ["id"]
      255 SETTABLEKS                       R10 R9 K30 ["fromStateId"]
      257 GETTABLEKS                       R10 R6 K9 ["id"]
      259 SETTABLEKS                       R10 R9 K31 ["toStateId"]
      261 GETIMPORT                        R10 K52 [Enum.PoseEasingStyle.Linear]
      263 SETTABLEKS                       R10 R9 K33 ["Curve"]
      265 FASTCALL2                        TABLE_INSERT R3 R9 ; [+4]
      267 MOVE                             R8 R3
      268 GETIMPORT                        R7 K28 [table.insert]
      270 CALL                             R7 2 0
      271 DUPTABLE                         R5 K59 [{["version"], ["startStateId"], ["currentState"] = , ["states"], ["transitions"]}]
      272 GETUPVAL                         R6 0
      273 GETTABLEKS                       R6 R6 K60 ["CURRENT_VERSION"]
      275 SETTABLEKS                       R6 R5 K53 ["version"]
      277 SETTABLEKS                       R2 R5 K54 ["startStateId"]
      279 SETTABLEKS                       R1 R5 K57 ["states"]
      281 SETTABLEKS                       R3 R5 K58 ["transitions"]
      283 RETURN                           R5 1

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
       22 DUPCLOSURE                       R7 K12 [PROTO_3]
       23 CAPTURE                          VAL R4
       24 CAPTURE                          VAL R6
       25 CAPTURE                          VAL R5
       26 SETTABLEKS                       R7 R3 K13 ["applyToDefinition"]
       28 DUPCLOSURE                       R7 K14 [PROTO_4]
       29 DUPCLOSURE                       R8 K15 [PROTO_5]
       30 DUPCLOSURE                       R9 K16 [PROTO_6]
       31 DUPCLOSURE                       R10 K17 [PROTO_7]
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R9
       34 SETTABLEKS                       R10 R3 K18 ["readFromDefinition"]
       36 RETURN                           R3 1
