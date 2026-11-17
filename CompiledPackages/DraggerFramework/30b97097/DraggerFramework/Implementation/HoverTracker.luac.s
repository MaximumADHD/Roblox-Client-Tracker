PROTO_0:
        0 NAMECALL                         R4 R0 K0 ["shouldBiasTowardsObjects"]
        2 CALL                             R4 1 1
        3 JUMPIF                           R4 ; [+2]
        4 LOADB                            R4 0
        5 RETURN                           R4 1
        6 JUMPIFNOT                        R3 ; [+5]
        7 MOVE                             R6 R3
        8 NAMECALL                         R4 R2 K1 ["doesContainItem"]
       10 CALL                             R4 2 1
       11 JUMPIF                           R4 ; [+2]
       12 LOADB                            R4 0
       13 RETURN                           R4 1
       14 MOVE                             R7 R1
       15 LOADB                            R8 1
       16 NAMECALL                         R5 R0 K2 ["hitTest"]
       18 CALL                             R5 3 1
       19 JUMPIFEQKNIL                     R5 ; [+2]
       21 LOADB                            R4 0 +1
       22 LOADB                            R4 1
       23 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 SETTABLEKS                       R0 R2 K0 ["_hoverSelectable"]
        3 GETUPVAL                         R2 0
        4 SETTABLEKS                       R1 R2 K1 ["_hoverItem"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["_onHoverChanged"]
        9 JUMPIFNOT                        R2 ; [+4]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K2 ["_onHoverChanged"]
       13 CALL                             R2 0 0
       14 RETURN                           R0 0

PROTO_2:
        0 FASTCALL1                        TYPE R2 ; [+3]
        1 MOVE                             R9 R2
        2 GETIMPORT                        R8 K1 [type]
        4 CALL                             R8 1 1
        5 JUMPIFEQKS                       R8 K2 ["table"] ; [+2]
        7 LOADB                            R7 0 +1
        8 LOADB                            R7 1
        9 FASTCALL2K                       ASSERT R7 K3 ; [+4]
       11 LOADK                            R8 K3 ["Wrong type"]
       12 GETIMPORT                        R6 K5 [assert]
       14 CALL                             R6 2 0
       15 FASTCALL1                        TYPE R1 ; [+3]
       16 MOVE                             R9 R1
       17 GETIMPORT                        R8 K1 [type]
       19 CALL                             R8 1 1
       20 JUMPIFEQKS                       R8 K2 ["table"] ; [+2]
       22 LOADB                            R7 0 +1
       23 LOADB                            R7 1
       24 FASTCALL2K                       ASSERT R7 K3 ; [+4]
       26 LOADK                            R8 K3 ["Wrong type"]
       27 GETIMPORT                        R6 K5 [assert]
       29 CALL                             R6 2 0
       30 DUPTABLE                         R7 K17 [{["_draggerSchema"], ["_handlesList"], ["_selectionCycleCache"], ["_hoverHandleId"] = , ["_hoverItem"] = , ["_mouseInBounds"] = True, ["_hoverMetadata"] = , ["_canHoverPivot"], ["_onHoverChanged"]}]
       31 SETTABLEKS                       R1 R7 K6 ["_draggerSchema"]
       33 SETTABLEKS                       R2 R7 K7 ["_handlesList"]
       35 SETTABLEKS                       R3 R7 K8 ["_selectionCycleCache"]
       37 SETTABLEKS                       R5 R7 K15 ["_canHoverPivot"]
       39 SETTABLEKS                       R4 R7 K16 ["_onHoverChanged"]
       41 GETUPVAL                         R8 0
       42 FASTCALL2                        SETMETATABLE R7 R8 ; [+3]
       44 GETIMPORT                        R6 K19 [setmetatable]
       46 CALL                             R6 2 1
       47 GETTABLEKS                       R7 R1 K20 ["onExternalHover"]
       49 JUMPIFNOT                        R7 ; [+8]
       50 GETTABLEKS                       R7 R1 K20 ["onExternalHover"]
       52 MOVE                             R8 R0
       53 NEWCLOSURE                       R9 P0
       54 CAPTURE                          VAL R6
       55 CALL                             R7 2 1
       56 SETTABLEKS                       R7 R6 K21 ["_disconnectOnExternalHover"]
       58 RETURN                           R6 1

PROTO_3:
        0 JUMPIFNOT                        R3 ; [+7]
        1 MOVE                             R4 R1
        2 JUMPIFNOT                        R4 ; [+4]
        3 JUMPIFLT                         R0 R2 ; [+2]
        5 LOADB                            R4 0 +1
        6 LOADB                            R4 1
        7 RETURN                           R4 1
        8 MOVE                             R4 R1
        9 JUMPIF                           R4 ; [+4]
       10 JUMPIFLT                         R0 R2 ; [+2]
       12 LOADB                            R4 0 +1
       13 LOADB                            R4 1
       14 RETURN                           R4 1

PROTO_4:
        0 NAMECALL                         R1 R0 K0 ["isSelectionCycleModifierDown"]
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_5:
        0 NAMECALL                         R2 R0 K0 ["isSelectionCycleModifierDown"]
        2 CALL                             R2 1 1
        3 JUMPIF                           R2 ; [+2]
        4 LOADB                            R2 0
        5 RETURN                           R2 1
        6 JUMPIF                           R1 ; [+2]
        7 LOADB                            R2 0
        8 RETURN                           R2 1
        9 LOADB                            R2 1
       10 RETURN                           R2 1

PROTO_6:
        0 LOADK                            R3 K0 ["Attachment"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+9]
        5 LOADK                            R3 K2 ["WeldConstraint"]
        6 NAMECALL                         R1 R0 K1 ["IsA"]
        8 CALL                             R1 2 1
        9 JUMPIF                           R1 ; [+4]
       10 LOADK                            R3 K3 ["Constraint"]
       11 NAMECALL                         R1 R0 K1 ["IsA"]
       13 CALL                             R1 2 1
       14 RETURN                           R1 1

PROTO_7:
        0 JUMPIFNOTEQKNIL                  R2 ; [+2]
        2 LOADB                            R6 0 +1
        3 LOADB                            R6 1
        4 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        6 LOADK                            R7 K0 ["HoverTracker:update called with nil currentSelection"]
        7 GETIMPORT                        R5 K2 [assert]
        9 CALL                             R5 2 0
       10 GETTABLEKS                       R5 R0 K3 ["_mouseInBounds"]
       12 JUMPIF                           R5 ; [+1]
       13 RETURN                           R0 0
       14 GETTABLEKS                       R5 R0 K4 ["_hoverSelectable"]
       16 NAMECALL                         R6 R1 K5 ["getMouseRay"]
       18 CALL                             R6 1 1
       19 LOADNIL                          R7
       20 LOADNIL                          R8
       21 LOADNIL                          R9
       22 LOADNIL                          R10
       23 GETUPVAL                         R11 0
       24 CALL                             R11 0 1
       25 JUMPIFNOT                        R11 ; [+66]
       26 NAMECALL                         R11 R1 K6 ["isSelectionCycleModifierDown"]
       28 CALL                             R11 1 1
       29 JUMPIFNOT                        R11 ; [+46]
       30 GETTABLEKS                       R11 R0 K7 ["_selectionCycleCache"]
       32 LOADB                            R13 0
       33 NAMECALL                         R11 R11 K8 ["getNextSelectable"]
       35 CALL                             R11 2 4
       36 MOVE                             R7 R11
       37 MOVE                             R8 R12
       38 MOVE                             R9 R13
       39 MOVE                             R10 R14
       40 FASTCALL1                        TYPEOF R7 ; [+3]
       41 MOVE                             R12 R7
       42 GETIMPORT                        R11 K10 [typeof]
       44 CALL                             R11 1 1
       45 JUMPIFNOTEQKS                    R11 K11 ["Instance"] ; [+115]
       47 LOADK                            R15 K12 ["Attachment"]
       48 NAMECALL                         R13 R7 K13 ["IsA"]
       50 CALL                             R13 2 1
       51 MOVE                             R11 R13
       52 JUMPIF                           R11 ; [+11]
       53 LOADK                            R15 K14 ["WeldConstraint"]
       54 NAMECALL                         R13 R7 K13 ["IsA"]
       56 CALL                             R13 2 1
       57 MOVE                             R11 R13
       58 JUMPIF                           R11 ; [+5]
       59 LOADK                            R15 K15 ["Constraint"]
       60 NAMECALL                         R13 R7 K13 ["IsA"]
       62 CALL                             R13 2 1
       63 MOVE                             R11 R13
       64 JUMPIFNOT                        R11 ; [+96]
       65 GETTABLEKS                       R13 R6 K16 ["Origin"]
       67 GETTABLEKS                       R14 R6 K17 ["Direction"]
       69 GETIMPORT                        R15 K20 [RaycastParams.new]
       71 CALL                             R15 0 -1
       72 NAMECALL                         R11 R1 K21 ["gizmoRaycast"]
       74 CALL                             R11 -1 0
       75 JUMP                             ; [+85]
       76 GETTABLEKS                       R11 R0 K22 ["_draggerSchema"]
       78 GETTABLEKS                       R11 R11 K23 ["getMouseTarget"]
       80 MOVE                             R12 R1
       81 MOVE                             R13 R6
       82 MOVE                             R14 R2
       83 LOADB                            R15 0
       84 GETTABLEKS                       R16 R0 K24 ["_canHoverPivot"]
       86 CALL                             R11 5 4
       87 MOVE                             R7 R11
       88 MOVE                             R8 R12
       89 MOVE                             R9 R13
       90 MOVE                             R10 R14
       91 JUMP                             ; [+69]
       92 NAMECALL                         R11 R1 K6 ["isSelectionCycleModifierDown"]
       94 CALL                             R11 1 1
       95 JUMPIFNOT                        R11 ; [+50]
       96 NAMECALL                         R11 R1 K25 ["shouldExtendSelection"]
       98 CALL                             R11 1 1
       99 JUMPIF                           R11 ; [+46]
      100 GETTABLEKS                       R11 R0 K7 ["_selectionCycleCache"]
      102 LOADB                            R13 0
      103 NAMECALL                         R11 R11 K8 ["getNextSelectable"]
      105 CALL                             R11 2 4
      106 MOVE                             R7 R11
      107 MOVE                             R8 R12
      108 MOVE                             R9 R13
      109 MOVE                             R10 R14
      110 FASTCALL1                        TYPEOF R7 ; [+3]
      111 MOVE                             R12 R7
      112 GETIMPORT                        R11 K10 [typeof]
      114 CALL                             R11 1 1
      115 JUMPIFNOTEQKS                    R11 K11 ["Instance"] ; [+45]
      117 LOADK                            R15 K12 ["Attachment"]
      118 NAMECALL                         R13 R7 K13 ["IsA"]
      120 CALL                             R13 2 1
      121 MOVE                             R11 R13
      122 JUMPIF                           R11 ; [+11]
      123 LOADK                            R15 K14 ["WeldConstraint"]
      124 NAMECALL                         R13 R7 K13 ["IsA"]
      126 CALL                             R13 2 1
      127 MOVE                             R11 R13
      128 JUMPIF                           R11 ; [+5]
      129 LOADK                            R15 K15 ["Constraint"]
      130 NAMECALL                         R13 R7 K13 ["IsA"]
      132 CALL                             R13 2 1
      133 MOVE                             R11 R13
      134 JUMPIFNOT                        R11 ; [+26]
      135 GETTABLEKS                       R13 R6 K16 ["Origin"]
      137 GETTABLEKS                       R14 R6 K17 ["Direction"]
      139 GETIMPORT                        R15 K20 [RaycastParams.new]
      141 CALL                             R15 0 -1
      142 NAMECALL                         R11 R1 K21 ["gizmoRaycast"]
      144 CALL                             R11 -1 0
      145 JUMP                             ; [+15]
      146 GETTABLEKS                       R11 R0 K22 ["_draggerSchema"]
      148 GETTABLEKS                       R11 R11 K23 ["getMouseTarget"]
      150 MOVE                             R12 R1
      151 MOVE                             R13 R6
      152 MOVE                             R14 R2
      153 LOADB                            R15 0
      154 GETTABLEKS                       R16 R0 K24 ["_canHoverPivot"]
      156 CALL                             R11 5 4
      157 MOVE                             R7 R11
      158 MOVE                             R8 R12
      159 MOVE                             R9 R13
      160 MOVE                             R10 R14
      161 SETTABLEKS                       R8 R0 K26 ["_hoverItem"]
      163 SETTABLEKS                       R10 R0 K27 ["_hoverMetadata"]
      165 SETTABLEKS                       R7 R0 K4 ["_hoverSelectable"]
      167 LOADNIL                          R11
      168 SETTABLEKS                       R11 R0 K28 ["_hoverHandleId"]
      170 JUMPIFEQKNIL                     R7 ; [+14]
      172 SETTABLEKS                       R9 R0 K29 ["_hoverDistance"]
      174 GETTABLEKS                       R12 R6 K16 ["Origin"]
      176 GETTABLEKS                       R14 R6 K17 ["Direction"]
      178 GETTABLEKS                       R14 R14 K30 ["Unit"]
      180 MUL                              R13 R14 R9
      181 ADD                              R11 R12 R13
      182 SETTABLEKS                       R11 R0 K31 ["_hoverPosition"]
      184 JUMP                             ; [+7]
      185 LOADK                            R9 K32 [Infinity]
      186 LOADK                            R11 K32 [Infinity]
      187 SETTABLEKS                       R11 R0 K29 ["_hoverDistance"]
      189 LOADNIL                          R11
      190 SETTABLEKS                       R11 R0 K31 ["_hoverPosition"]
      192 GETUPVAL                         R11 1
      193 CALL                             R11 0 1
      194 JUMPIFNOT                        R11 ; [+2]
      195 SETTABLEKS                       R4 R0 K33 ["_handlesList"]
      197 LOADNIL                          R11
      198 SETTABLEKS                       R11 R0 K34 ["_hoverHandles"]
      200 GETTABLEKS                       R12 R0 K7 ["_selectionCycleCache"]
      202 NAMECALL                         R12 R12 K35 ["hasCycled"]
      204 CALL                             R12 1 1
      205 NAMECALL                         R13 R1 K6 ["isSelectionCycleModifierDown"]
      207 CALL                             R13 1 1
      208 JUMPIF                           R13 ; [+2]
      209 LOADB                            R11 0
      210 JUMP                             ; [+4]
      211 JUMPIF                           R12 ; [+2]
      212 LOADB                            R11 0
      213 JUMP                             ; [+1]
      214 LOADB                            R11 1
      215 JUMPIF                           R11 ; [+77]
      216 LOADB                            R11 0
      217 LOADK                            R12 K36 [-Infinity]
      218 GETIMPORT                        R13 K38 [pairs]
      220 GETTABLEKS                       R14 R0 K33 ["_handlesList"]
      222 CALL                             R13 1 3
      223 FORGPREP_NEXT                    R13
      224 MOVE                             R20 R6
      225 LOADB                            R21 0
      226 NAMECALL                         R18 R17 K39 ["hitTest"]
      228 CALL                             R18 3 3
      229 GETTABLEKS                       R22 R17 K40 ["getPriority"]
      231 JUMPIFNOT                        R22 ; [+4]
      232 NAMECALL                         R21 R17 K40 ["getPriority"]
      234 CALL                             R21 1 1
      235 JUMP                             ; [+1]
      236 LOADN                            R21 0
      237 JUMPIFNOT                        R18 ; [+53]
      238 JUMPIFNOT                        R11 ; [+7]
      239 MOVE                             R22 R20
      240 JUMPIFNOT                        R22 ; [+11]
      241 JUMPIFLT                         R19 R9 ; [+2]
      243 LOADB                            R22 0 +1
      244 LOADB                            R22 1
      245 JUMP                             ; [+6]
      246 MOVE                             R22 R20
      247 JUMPIF                           R22 ; [+4]
      248 JUMPIFLT                         R19 R9 ; [+2]
      250 LOADB                            R22 0 +1
      251 LOADB                            R22 1
      252 JUMPIFNOT                        R22 ; [+38]
      253 NAMECALL                         R24 R17 K41 ["shouldBiasTowardsObjects"]
      255 CALL                             R24 1 1
      256 JUMPIF                           R24 ; [+2]
      257 LOADB                            R22 0
      258 JUMP                             ; [+17]
      259 JUMPIFNOT                        R8 ; [+5]
      260 MOVE                             R26 R8
      261 NAMECALL                         R24 R3 K42 ["doesContainItem"]
      263 CALL                             R24 2 1
      264 JUMPIF                           R24 ; [+2]
      265 LOADB                            R22 0
      266 JUMP                             ; [+9]
      267 MOVE                             R26 R6
      268 LOADB                            R27 1
      269 NAMECALL                         R24 R17 K39 ["hitTest"]
      271 CALL                             R24 3 1
      272 JUMPIFEQKNIL                     R24 ; [+2]
      274 LOADB                            R22 0 +1
      275 LOADB                            R22 1
      276 JUMPIF                           R22 ; [+14]
      277 JUMPIFNOTLE                      R12 R21 ; [+13]
      279 SETTABLEKS                       R17 R0 K34 ["_hoverHandles"]
      281 SETTABLEKS                       R18 R0 K28 ["_hoverHandleId"]
      283 SETTABLEKS                       R19 R0 K29 ["_hoverDistance"]
      285 LOADNIL                          R22
      286 SETTABLEKS                       R22 R0 K31 ["_hoverPosition"]
      288 MOVE                             R9 R19
      289 MOVE                             R11 R20
      290 MOVE                             R12 R21
      291 FORGLOOP                         R13 2 ; [-68]
      293 GETTABLEKS                       R11 R0 K34 ["_hoverHandles"]
      295 JUMPIFNOT                        R11 ; [+9]
      296 GETTABLEKS                       R11 R0 K22 ["_draggerSchema"]
      298 GETTABLEKS                       R11 R11 K43 ["setHover"]
      300 MOVE                             R12 R1
      301 LOADNIL                          R13
      302 LOADNIL                          R14
      303 CALL                             R11 3 0
      304 JUMP                             ; [+10]
      305 GETTABLEKS                       R11 R0 K22 ["_draggerSchema"]
      307 GETTABLEKS                       R11 R11 K43 ["setHover"]
      309 MOVE                             R12 R1
      310 GETTABLEKS                       R13 R0 K4 ["_hoverSelectable"]
      312 GETTABLEKS                       R14 R0 K26 ["_hoverItem"]
      314 CALL                             R11 3 0
      315 GETTABLEKS                       R11 R0 K44 ["_onHoverChanged"]
      317 JUMPIFNOT                        R11 ; [+24]
      318 GETTABLEKS                       R11 R0 K4 ["_hoverSelectable"]
      320 JUMPIFEQ                         R11 R5 ; [+21]
      322 NAMECALL                         R11 R0 K45 ["_freeHoverEscapeDetector"]
      324 CALL                             R11 1 0
      325 GETTABLEKS                       R11 R0 K4 ["_hoverSelectable"]
      327 JUMPIFNOT                        R11 ; [+14]
      328 GETTABLEKS                       R11 R0 K22 ["_draggerSchema"]
      330 GETTABLEKS                       R11 R11 K46 ["HoverEscapeDetector"]
      332 GETTABLEKS                       R11 R11 K19 ["new"]
      334 MOVE                             R12 R1
      335 GETTABLEKS                       R13 R0 K4 ["_hoverSelectable"]
      337 GETTABLEKS                       R14 R0 K44 ["_onHoverChanged"]
      339 CALL                             R11 3 1
      340 SETTABLEKS                       R11 R0 K47 ["_hoverEscapeDetector"]
      342 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["_hoverEscapeDetector"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["_hoverEscapeDetector"]
        5 NAMECALL                         R1 R1 K1 ["destroy"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["_hoverEscapeDetector"]
       11 RETURN                           R0 0

PROTO_9:
        0 NAMECALL                         R2 R0 K0 ["_freeHoverEscapeDetector"]
        2 CALL                             R2 1 0
        3 LOADNIL                          R2
        4 SETTABLEKS                       R2 R0 K1 ["_hoverItem"]
        6 LOADNIL                          R2
        7 SETTABLEKS                       R2 R0 K2 ["_hoverMetadata"]
        9 LOADNIL                          R2
       10 SETTABLEKS                       R2 R0 K3 ["_hoverSelectable"]
       12 LOADNIL                          R2
       13 SETTABLEKS                       R2 R0 K4 ["_hoverPosition"]
       15 LOADNIL                          R2
       16 SETTABLEKS                       R2 R0 K5 ["_hoverHandles"]
       18 LOADNIL                          R2
       19 SETTABLEKS                       R2 R0 K6 ["_hoverHandleId"]
       21 LOADNIL                          R2
       22 SETTABLEKS                       R2 R0 K7 ["_hoverDistance"]
       24 GETTABLEKS                       R2 R0 K8 ["_draggerSchema"]
       26 GETTABLEKS                       R2 R2 K9 ["setHover"]
       28 MOVE                             R3 R1
       29 LOADNIL                          R4
       30 LOADNIL                          R5
       31 CALL                             R2 3 0
       32 RETURN                           R0 0

PROTO_10:
        0 SETTABLEKS                       R1 R0 K0 ["_mouseInBounds"]
        2 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["_hoverHandles"]
        2 GETTABLEKS                       R2 R0 K1 ["_hoverHandleId"]
        4 GETTABLEKS                       R3 R0 K2 ["_hoverDistance"]
        6 RETURN                           R1 3

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["_hoverItem"]
        2 GETTABLEKS                       R2 R0 K1 ["_hoverPosition"]
        4 RETURN                           R1 2

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["_hoverMetadata"]
        2 RETURN                           R1 1

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["_hoverSelectable"]
        2 RETURN                           R1 1

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["_disconnectOnExternalHover"]
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETTABLEKS                       R1 R0 K0 ["_disconnectOnExternalHover"]
        5 CALL                             R1 0 0
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K0 ["_disconnectOnExternalHover"]
        9 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K2 ["Parent"]
       13 GETTABLEKS                       R2 R2 K5 ["SelectionCycleCache"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K7 ["Flags"]
       25 GETTABLEKS                       R4 R4 K8 ["getFFlagDraggerHandlesIsEnabledFunction"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R5 R0 K7 ["Flags"]
       32 GETTABLEKS                       R5 R5 K9 ["getFFlagSBT5424SelectThroughLocked"]
       34 CALL                             R4 1 1
       35 DUPCLOSURE                       R5 K10 [PROTO_0]
       36 NEWTABLE                         R6 16 0
       38 SETTABLEKS                       R6 R6 K11 ["__index"]
       40 DUPCLOSURE                       R7 K12 [PROTO_2]
       41 CAPTURE                          VAL R6
       42 SETTABLEKS                       R7 R6 K13 ["new"]
       44 DUPCLOSURE                       R7 K14 [PROTO_3]
       45 DUPCLOSURE                       R8 K15 [PROTO_4]
       46 DUPCLOSURE                       R9 K16 [PROTO_5]
       47 DUPCLOSURE                       R10 K17 [PROTO_6]
       48 DUPCLOSURE                       R11 K18 [PROTO_7]
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R3
       51 SETTABLEKS                       R11 R6 K19 ["update"]
       53 DUPCLOSURE                       R11 K20 [PROTO_8]
       54 SETTABLEKS                       R11 R6 K21 ["_freeHoverEscapeDetector"]
       56 DUPCLOSURE                       R11 K22 [PROTO_9]
       57 SETTABLEKS                       R11 R6 K23 ["clearHover"]
       59 DUPCLOSURE                       R11 K24 [PROTO_10]
       60 SETTABLEKS                       R11 R6 K25 ["setMouseInBounds"]
       62 DUPCLOSURE                       R11 K26 [PROTO_11]
       63 SETTABLEKS                       R11 R6 K27 ["getHoverHandleId"]
       65 DUPCLOSURE                       R11 K28 [PROTO_12]
       66 SETTABLEKS                       R11 R6 K29 ["getHoverItem"]
       68 DUPCLOSURE                       R11 K30 [PROTO_13]
       69 SETTABLEKS                       R11 R6 K31 ["getHoverMetadata"]
       71 DUPCLOSURE                       R11 K32 [PROTO_14]
       72 SETTABLEKS                       R11 R6 K33 ["getHoverSelectable"]
       74 DUPCLOSURE                       R11 K34 [PROTO_15]
       75 SETTABLEKS                       R11 R6 K35 ["destroy"]
       77 RETURN                           R6 1
