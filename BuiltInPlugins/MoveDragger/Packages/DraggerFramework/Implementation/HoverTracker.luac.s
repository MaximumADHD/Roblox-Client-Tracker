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
       25 JUMPIFNOT                        R11 ; [+67]
       26 NAMECALL                         R11 R1 K6 ["isSelectionCycleModifierDown"]
       28 CALL                             R11 1 1
       29 JUMPIFNOT                        R11 ; [+47]
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
       45 JUMPIFNOTEQKS                    R11 K11 ["Instance"] ; [+117]
       47 MOVE                             R12 R7
       48 LOADK                            R15 K12 ["Attachment"]
       49 NAMECALL                         R13 R12 K13 ["IsA"]
       51 CALL                             R13 2 1
       52 MOVE                             R11 R13
       53 JUMPIF                           R11 ; [+11]
       54 LOADK                            R15 K14 ["WeldConstraint"]
       55 NAMECALL                         R13 R12 K13 ["IsA"]
       57 CALL                             R13 2 1
       58 MOVE                             R11 R13
       59 JUMPIF                           R11 ; [+5]
       60 LOADK                            R15 K15 ["Constraint"]
       61 NAMECALL                         R13 R12 K13 ["IsA"]
       63 CALL                             R13 2 1
       64 MOVE                             R11 R13
       65 JUMPIFNOT                        R11 ; [+97]
       66 GETTABLEKS                       R13 R6 K16 ["Origin"]
       68 GETTABLEKS                       R14 R6 K17 ["Direction"]
       70 GETIMPORT                        R15 K20 [RaycastParams.new]
       72 CALL                             R15 0 -1
       73 NAMECALL                         R11 R1 K21 ["gizmoRaycast"]
       75 CALL                             R11 -1 0
       76 JUMP                             ; [+86]
       77 GETTABLEKS                       R11 R0 K22 ["_draggerSchema"]
       79 GETTABLEKS                       R11 R11 K23 ["getMouseTarget"]
       81 MOVE                             R12 R1
       82 MOVE                             R13 R6
       83 MOVE                             R14 R2
       84 LOADB                            R15 0
       85 GETTABLEKS                       R16 R0 K24 ["_canHoverPivot"]
       87 CALL                             R11 5 4
       88 MOVE                             R7 R11
       89 MOVE                             R8 R12
       90 MOVE                             R9 R13
       91 MOVE                             R10 R14
       92 JUMP                             ; [+70]
       93 NAMECALL                         R11 R1 K6 ["isSelectionCycleModifierDown"]
       95 CALL                             R11 1 1
       96 JUMPIFNOT                        R11 ; [+51]
       97 NAMECALL                         R11 R1 K25 ["shouldExtendSelection"]
       99 CALL                             R11 1 1
      100 JUMPIF                           R11 ; [+47]
      101 GETTABLEKS                       R11 R0 K7 ["_selectionCycleCache"]
      103 LOADB                            R13 0
      104 NAMECALL                         R11 R11 K8 ["getNextSelectable"]
      106 CALL                             R11 2 4
      107 MOVE                             R7 R11
      108 MOVE                             R8 R12
      109 MOVE                             R9 R13
      110 MOVE                             R10 R14
      111 FASTCALL1                        TYPEOF R7 ; [+3]
      112 MOVE                             R12 R7
      113 GETIMPORT                        R11 K10 [typeof]
      115 CALL                             R11 1 1
      116 JUMPIFNOTEQKS                    R11 K11 ["Instance"] ; [+46]
      118 MOVE                             R12 R7
      119 LOADK                            R15 K12 ["Attachment"]
      120 NAMECALL                         R13 R12 K13 ["IsA"]
      122 CALL                             R13 2 1
      123 MOVE                             R11 R13
      124 JUMPIF                           R11 ; [+11]
      125 LOADK                            R15 K14 ["WeldConstraint"]
      126 NAMECALL                         R13 R12 K13 ["IsA"]
      128 CALL                             R13 2 1
      129 MOVE                             R11 R13
      130 JUMPIF                           R11 ; [+5]
      131 LOADK                            R15 K15 ["Constraint"]
      132 NAMECALL                         R13 R12 K13 ["IsA"]
      134 CALL                             R13 2 1
      135 MOVE                             R11 R13
      136 JUMPIFNOT                        R11 ; [+26]
      137 GETTABLEKS                       R13 R6 K16 ["Origin"]
      139 GETTABLEKS                       R14 R6 K17 ["Direction"]
      141 GETIMPORT                        R15 K20 [RaycastParams.new]
      143 CALL                             R15 0 -1
      144 NAMECALL                         R11 R1 K21 ["gizmoRaycast"]
      146 CALL                             R11 -1 0
      147 JUMP                             ; [+15]
      148 GETTABLEKS                       R11 R0 K22 ["_draggerSchema"]
      150 GETTABLEKS                       R11 R11 K23 ["getMouseTarget"]
      152 MOVE                             R12 R1
      153 MOVE                             R13 R6
      154 MOVE                             R14 R2
      155 LOADB                            R15 0
      156 GETTABLEKS                       R16 R0 K24 ["_canHoverPivot"]
      158 CALL                             R11 5 4
      159 MOVE                             R7 R11
      160 MOVE                             R8 R12
      161 MOVE                             R9 R13
      162 MOVE                             R10 R14
      163 SETTABLEKS                       R8 R0 K26 ["_hoverItem"]
      165 SETTABLEKS                       R10 R0 K27 ["_hoverMetadata"]
      167 SETTABLEKS                       R7 R0 K4 ["_hoverSelectable"]
      169 LOADNIL                          R11
      170 SETTABLEKS                       R11 R0 K28 ["_hoverHandleId"]
      172 JUMPIFEQKNIL                     R7 ; [+14]
      174 SETTABLEKS                       R9 R0 K29 ["_hoverDistance"]
      176 GETTABLEKS                       R12 R6 K16 ["Origin"]
      178 GETTABLEKS                       R14 R6 K17 ["Direction"]
      180 GETTABLEKS                       R14 R14 K30 ["Unit"]
      182 MUL                              R13 R14 R9
      183 ADD                              R11 R12 R13
      184 SETTABLEKS                       R11 R0 K31 ["_hoverPosition"]
      186 JUMP                             ; [+7]
      187 LOADK                            R9 K32 [∞]
      188 LOADK                            R11 K32 [∞]
      189 SETTABLEKS                       R11 R0 K29 ["_hoverDistance"]
      191 LOADNIL                          R11
      192 SETTABLEKS                       R11 R0 K31 ["_hoverPosition"]
      194 GETUPVAL                         R11 1
      195 CALL                             R11 0 1
      196 JUMPIFNOT                        R11 ; [+2]
      197 SETTABLEKS                       R4 R0 K33 ["_handlesList"]
      199 LOADNIL                          R11
      200 SETTABLEKS                       R11 R0 K34 ["_hoverHandles"]
      202 GETTABLEKS                       R12 R0 K7 ["_selectionCycleCache"]
      204 NAMECALL                         R12 R12 K35 ["hasCycled"]
      206 CALL                             R12 1 1
      207 NAMECALL                         R13 R1 K6 ["isSelectionCycleModifierDown"]
      209 CALL                             R13 1 1
      210 JUMPIF                           R13 ; [+2]
      211 LOADB                            R11 0
      212 JUMP                             ; [+4]
      213 JUMPIF                           R12 ; [+2]
      214 LOADB                            R11 0
      215 JUMP                             ; [+1]
      216 LOADB                            R11 1
      217 JUMPIF                           R11 ; [+80]
      218 LOADB                            R11 0
      219 LOADK                            R12 K36 [-∞]
      220 GETIMPORT                        R13 K38 [pairs]
      222 GETTABLEKS                       R14 R0 K33 ["_handlesList"]
      224 CALL                             R13 1 3
      225 FORGPREP_NEXT                    R13
      226 MOVE                             R20 R6
      227 LOADB                            R21 0
      228 NAMECALL                         R18 R17 K39 ["hitTest"]
      230 CALL                             R18 3 3
      231 GETTABLEKS                       R22 R17 K40 ["getPriority"]
      233 JUMPIFNOT                        R22 ; [+4]
      234 NAMECALL                         R21 R17 K40 ["getPriority"]
      236 CALL                             R21 1 1
      237 JUMP                             ; [+1]
      238 LOADN                            R21 0
      239 JUMPIFNOT                        R18 ; [+56]
      240 MOVE                             R23 R9
      241 MOVE                             R24 R11
      242 JUMPIFNOT                        R24 ; [+7]
      243 MOVE                             R22 R20
      244 JUMPIFNOT                        R22 ; [+11]
      245 JUMPIFLT                         R19 R23 ; [+2]
      247 LOADB                            R22 0 +1
      248 LOADB                            R22 1
      249 JUMP                             ; [+6]
      250 MOVE                             R22 R20
      251 JUMPIF                           R22 ; [+4]
      252 JUMPIFLT                         R19 R23 ; [+2]
      254 LOADB                            R22 0 +1
      255 LOADB                            R22 1
      256 JUMPIFNOT                        R22 ; [+39]
      257 MOVE                             R23 R8
      258 NAMECALL                         R24 R17 K41 ["shouldBiasTowardsObjects"]
      260 CALL                             R24 1 1
      261 JUMPIF                           R24 ; [+2]
      262 LOADB                            R22 0
      263 JUMP                             ; [+17]
      264 JUMPIFNOT                        R23 ; [+5]
      265 MOVE                             R26 R23
      266 NAMECALL                         R24 R3 K42 ["doesContainItem"]
      268 CALL                             R24 2 1
      269 JUMPIF                           R24 ; [+2]
      270 LOADB                            R22 0
      271 JUMP                             ; [+9]
      272 MOVE                             R26 R6
      273 LOADB                            R27 1
      274 NAMECALL                         R24 R17 K39 ["hitTest"]
      276 CALL                             R24 3 1
      277 JUMPIFEQKNIL                     R24 ; [+2]
      279 LOADB                            R22 0 +1
      280 LOADB                            R22 1
      281 JUMPIF                           R22 ; [+14]
      282 JUMPIFNOTLE                      R12 R21 ; [+13]
      284 SETTABLEKS                       R17 R0 K34 ["_hoverHandles"]
      286 SETTABLEKS                       R18 R0 K28 ["_hoverHandleId"]
      288 SETTABLEKS                       R19 R0 K29 ["_hoverDistance"]
      290 LOADNIL                          R22
      291 SETTABLEKS                       R22 R0 K31 ["_hoverPosition"]
      293 MOVE                             R9 R19
      294 MOVE                             R11 R20
      295 MOVE                             R12 R21
      296 FORGLOOP                         R13 2 ; [-71]
      298 GETTABLEKS                       R11 R0 K34 ["_hoverHandles"]
      300 JUMPIFNOT                        R11 ; [+9]
      301 GETTABLEKS                       R11 R0 K22 ["_draggerSchema"]
      303 GETTABLEKS                       R11 R11 K43 ["setHover"]
      305 MOVE                             R12 R1
      306 LOADNIL                          R13
      307 LOADNIL                          R14
      308 CALL                             R11 3 0
      309 JUMP                             ; [+10]
      310 GETTABLEKS                       R11 R0 K22 ["_draggerSchema"]
      312 GETTABLEKS                       R11 R11 K43 ["setHover"]
      314 MOVE                             R12 R1
      315 GETTABLEKS                       R13 R0 K4 ["_hoverSelectable"]
      317 GETTABLEKS                       R14 R0 K26 ["_hoverItem"]
      319 CALL                             R11 3 0
      320 GETTABLEKS                       R11 R0 K44 ["_onHoverChanged"]
      322 JUMPIFNOT                        R11 ; [+24]
      323 GETTABLEKS                       R11 R0 K4 ["_hoverSelectable"]
      325 JUMPIFEQ                         R11 R5 ; [+21]
      327 NAMECALL                         R11 R0 K45 ["_freeHoverEscapeDetector"]
      329 CALL                             R11 1 0
      330 GETTABLEKS                       R11 R0 K4 ["_hoverSelectable"]
      332 JUMPIFNOT                        R11 ; [+14]
      333 GETTABLEKS                       R11 R0 K22 ["_draggerSchema"]
      335 GETTABLEKS                       R11 R11 K46 ["HoverEscapeDetector"]
      337 GETTABLEKS                       R11 R11 K19 ["new"]
      339 MOVE                             R12 R1
      340 GETTABLEKS                       R13 R0 K4 ["_hoverSelectable"]
      342 GETTABLEKS                       R14 R0 K44 ["_onHoverChanged"]
      344 CALL                             R11 3 1
      345 SETTABLEKS                       R11 R0 K47 ["_hoverEscapeDetector"]
      347 RETURN                           R0 0

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
        9 GETTABLEKS                       R2 R0 K5 ["Flags"]
       11 GETTABLEKS                       R2 R2 K6 ["getFFlagDraggerHandlesIsEnabledFunction"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K5 ["Flags"]
       18 GETTABLEKS                       R3 R3 K7 ["getFFlagSBT5424SelectThroughLocked"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K8 [PROTO_0]
       22 NEWTABLE                         R4 16 0
       24 SETTABLEKS                       R4 R4 K9 ["__index"]
       26 DUPCLOSURE                       R5 K10 [PROTO_2]
       27 CAPTURE                          VAL R4
       28 SETTABLEKS                       R5 R4 K11 ["new"]
       30 DUPCLOSURE                       R5 K12 [PROTO_3]
       31 DUPCLOSURE                       R6 K13 [PROTO_4]
       32 DUPCLOSURE                       R7 K14 [PROTO_5]
       33 DUPCLOSURE                       R8 K15 [PROTO_6]
       34 DUPCLOSURE                       R9 K16 [PROTO_7]
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R1
       37 SETTABLEKS                       R9 R4 K17 ["update"]
       39 DUPCLOSURE                       R9 K18 [PROTO_8]
       40 SETTABLEKS                       R9 R4 K19 ["_freeHoverEscapeDetector"]
       42 DUPCLOSURE                       R9 K20 [PROTO_9]
       43 SETTABLEKS                       R9 R4 K21 ["clearHover"]
       45 DUPCLOSURE                       R9 K22 [PROTO_10]
       46 SETTABLEKS                       R9 R4 K23 ["setMouseInBounds"]
       48 DUPCLOSURE                       R9 K24 [PROTO_11]
       49 SETTABLEKS                       R9 R4 K25 ["getHoverHandleId"]
       51 DUPCLOSURE                       R9 K26 [PROTO_12]
       52 SETTABLEKS                       R9 R4 K27 ["getHoverItem"]
       54 DUPCLOSURE                       R9 K28 [PROTO_13]
       55 SETTABLEKS                       R9 R4 K29 ["getHoverMetadata"]
       57 DUPCLOSURE                       R9 K30 [PROTO_14]
       58 SETTABLEKS                       R9 R4 K31 ["getHoverSelectable"]
       60 DUPCLOSURE                       R9 K32 [PROTO_15]
       61 SETTABLEKS                       R9 R4 K33 ["destroy"]
       63 RETURN                           R4 1
