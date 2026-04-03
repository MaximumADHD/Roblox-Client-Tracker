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
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K2 ["_onHoverChanged"]
        9 JUMPIFNOT                        R2 ; [+4]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K2 ["_onHoverChanged"]
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
        9 FASTCALL1                        ASSERT R7 ; [+2]
       10 GETIMPORT                        R6 K4 [assert]
       12 CALL                             R6 1 0
       13 FASTCALL1                        TYPE R1 ; [+3]
       14 MOVE                             R9 R1
       15 GETIMPORT                        R8 K1 [type]
       17 CALL                             R8 1 1
       18 JUMPIFEQKS                       R8 K2 ["table"] ; [+2]
       20 LOADB                            R7 0 +1
       21 LOADB                            R7 1
       22 FASTCALL1                        ASSERT R7 ; [+2]
       23 GETIMPORT                        R6 K4 [assert]
       25 CALL                             R6 1 0
       26 DUPTABLE                         R7 K14 [{"_draggerSchema", "_handlesList", "_selectionCycleCache", "_hoverHandleId", "_hoverItem", "_mouseInBounds", "_hoverMetadata", "_canHoverPivot", "_onHoverChanged"}]
       27 SETTABLEKS                       R1 R7 K5 ["_draggerSchema"]
       29 SETTABLEKS                       R2 R7 K6 ["_handlesList"]
       31 SETTABLEKS                       R3 R7 K7 ["_selectionCycleCache"]
       33 LOADNIL                          R8
       34 SETTABLEKS                       R8 R7 K8 ["_hoverHandleId"]
       36 LOADNIL                          R8
       37 SETTABLEKS                       R8 R7 K9 ["_hoverItem"]
       39 LOADB                            R8 1
       40 SETTABLEKS                       R8 R7 K10 ["_mouseInBounds"]
       42 LOADNIL                          R8
       43 SETTABLEKS                       R8 R7 K11 ["_hoverMetadata"]
       45 SETTABLEKS                       R5 R7 K12 ["_canHoverPivot"]
       47 SETTABLEKS                       R4 R7 K13 ["_onHoverChanged"]
       49 GETUPVAL                         R8 0
       50 FASTCALL2                        SETMETATABLE R7 R8 ; [+3]
       52 GETIMPORT                        R6 K16 [setmetatable]
       54 CALL                             R6 2 1
       55 GETTABLEKS                       R7 R1 K17 ["onExternalHover"]
       57 JUMPIFNOT                        R7 ; [+8]
       58 GETTABLEKS                       R7 R1 K17 ["onExternalHover"]
       60 MOVE                             R8 R0
       61 NEWCLOSURE                       R9 P0
       62 CAPTURE                          VAL R6
       63 CALL                             R7 2 1
       64 SETTABLEKS                       R7 R6 K18 ["_disconnectOnExternalHover"]
       66 RETURN                           R6 1

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
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+11]
        3 NAMECALL                         R2 R0 K0 ["isAltKeyDown"]
        5 CALL                             R2 1 1
        6 JUMPIF                           R2 ; [+2]
        7 LOADB                            R2 0
        8 RETURN                           R2 1
        9 JUMPIF                           R1 ; [+2]
       10 LOADB                            R2 0
       11 RETURN                           R2 1
       12 LOADB                            R2 1
       13 RETURN                           R2 1
       14 NAMECALL                         R2 R0 K0 ["isAltKeyDown"]
       16 CALL                             R2 1 -1
       17 RETURN                           R2 -1

PROTO_5:
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

PROTO_6:
        0 JUMPIFNOTEQKNIL                  R2 ; [+2]
        2 LOADB                            R6 0 +1
        3 LOADB                            R6 1
        4 FASTCALL1                        ASSERT R6 ; [+2]
        5 GETIMPORT                        R5 K1 [assert]
        7 CALL                             R5 1 0
        8 GETTABLEKS                       R5 R0 K2 ["_mouseInBounds"]
       10 JUMPIF                           R5 ; [+1]
       11 RETURN                           R0 0
       12 GETTABLEKS                       R5 R0 K3 ["_hoverSelectable"]
       14 NAMECALL                         R6 R1 K4 ["getMouseRay"]
       16 CALL                             R6 1 1
       17 LOADNIL                          R7
       18 LOADNIL                          R8
       19 LOADNIL                          R9
       20 LOADNIL                          R10
       21 GETUPVAL                         R11 0
       22 CALL                             R11 0 1
       23 JUMPIFNOT                        R11 ; [+67]
       24 NAMECALL                         R11 R1 K5 ["isAltKeyDown"]
       26 CALL                             R11 1 1
       27 JUMPIFNOT                        R11 ; [+47]
       28 GETTABLEKS                       R11 R0 K6 ["_selectionCycleCache"]
       30 LOADB                            R13 0
       31 NAMECALL                         R11 R11 K7 ["getNextSelectable"]
       33 CALL                             R11 2 4
       34 MOVE                             R7 R11
       35 MOVE                             R8 R12
       36 MOVE                             R9 R13
       37 MOVE                             R10 R14
       38 FASTCALL1                        TYPEOF R7 ; [+3]
       39 MOVE                             R12 R7
       40 GETIMPORT                        R11 K9 [typeof]
       42 CALL                             R11 1 1
       43 JUMPIFNOTEQKS                    R11 K10 ["Instance"] ; [+117]
       45 MOVE                             R12 R7
       46 LOADK                            R15 K11 ["Attachment"]
       47 NAMECALL                         R13 R12 K12 ["IsA"]
       49 CALL                             R13 2 1
       50 MOVE                             R11 R13
       51 JUMPIF                           R11 ; [+11]
       52 LOADK                            R15 K13 ["WeldConstraint"]
       53 NAMECALL                         R13 R12 K12 ["IsA"]
       55 CALL                             R13 2 1
       56 MOVE                             R11 R13
       57 JUMPIF                           R11 ; [+5]
       58 LOADK                            R15 K14 ["Constraint"]
       59 NAMECALL                         R13 R12 K12 ["IsA"]
       61 CALL                             R13 2 1
       62 MOVE                             R11 R13
       63 JUMPIFNOT                        R11 ; [+97]
       64 GETTABLEKS                       R13 R6 K15 ["Origin"]
       66 GETTABLEKS                       R14 R6 K16 ["Direction"]
       68 GETIMPORT                        R15 K19 [RaycastParams.new]
       70 CALL                             R15 0 -1
       71 NAMECALL                         R11 R1 K20 ["gizmoRaycast"]
       73 CALL                             R11 -1 0
       74 JUMP                             ; [+86]
       75 GETTABLEKS                       R12 R0 K21 ["_draggerSchema"]
       77 GETTABLEKS                       R11 R12 K22 ["getMouseTarget"]
       79 MOVE                             R12 R1
       80 MOVE                             R13 R6
       81 MOVE                             R14 R2
       82 LOADB                            R15 0
       83 GETTABLEKS                       R16 R0 K23 ["_canHoverPivot"]
       85 CALL                             R11 5 4
       86 MOVE                             R7 R11
       87 MOVE                             R8 R12
       88 MOVE                             R9 R13
       89 MOVE                             R10 R14
       90 JUMP                             ; [+70]
       91 NAMECALL                         R11 R1 K5 ["isAltKeyDown"]
       93 CALL                             R11 1 1
       94 JUMPIFNOT                        R11 ; [+51]
       95 NAMECALL                         R11 R1 K24 ["shouldExtendSelection"]
       97 CALL                             R11 1 1
       98 JUMPIF                           R11 ; [+47]
       99 GETTABLEKS                       R11 R0 K6 ["_selectionCycleCache"]
      101 LOADB                            R13 0
      102 NAMECALL                         R11 R11 K7 ["getNextSelectable"]
      104 CALL                             R11 2 4
      105 MOVE                             R7 R11
      106 MOVE                             R8 R12
      107 MOVE                             R9 R13
      108 MOVE                             R10 R14
      109 FASTCALL1                        TYPEOF R7 ; [+3]
      110 MOVE                             R12 R7
      111 GETIMPORT                        R11 K9 [typeof]
      113 CALL                             R11 1 1
      114 JUMPIFNOTEQKS                    R11 K10 ["Instance"] ; [+46]
      116 MOVE                             R12 R7
      117 LOADK                            R15 K11 ["Attachment"]
      118 NAMECALL                         R13 R12 K12 ["IsA"]
      120 CALL                             R13 2 1
      121 MOVE                             R11 R13
      122 JUMPIF                           R11 ; [+11]
      123 LOADK                            R15 K13 ["WeldConstraint"]
      124 NAMECALL                         R13 R12 K12 ["IsA"]
      126 CALL                             R13 2 1
      127 MOVE                             R11 R13
      128 JUMPIF                           R11 ; [+5]
      129 LOADK                            R15 K14 ["Constraint"]
      130 NAMECALL                         R13 R12 K12 ["IsA"]
      132 CALL                             R13 2 1
      133 MOVE                             R11 R13
      134 JUMPIFNOT                        R11 ; [+26]
      135 GETTABLEKS                       R13 R6 K15 ["Origin"]
      137 GETTABLEKS                       R14 R6 K16 ["Direction"]
      139 GETIMPORT                        R15 K19 [RaycastParams.new]
      141 CALL                             R15 0 -1
      142 NAMECALL                         R11 R1 K20 ["gizmoRaycast"]
      144 CALL                             R11 -1 0
      145 JUMP                             ; [+15]
      146 GETTABLEKS                       R12 R0 K21 ["_draggerSchema"]
      148 GETTABLEKS                       R11 R12 K22 ["getMouseTarget"]
      150 MOVE                             R12 R1
      151 MOVE                             R13 R6
      152 MOVE                             R14 R2
      153 LOADB                            R15 0
      154 GETTABLEKS                       R16 R0 K23 ["_canHoverPivot"]
      156 CALL                             R11 5 4
      157 MOVE                             R7 R11
      158 MOVE                             R8 R12
      159 MOVE                             R9 R13
      160 MOVE                             R10 R14
      161 SETTABLEKS                       R8 R0 K25 ["_hoverItem"]
      163 SETTABLEKS                       R10 R0 K26 ["_hoverMetadata"]
      165 SETTABLEKS                       R7 R0 K3 ["_hoverSelectable"]
      167 LOADNIL                          R11
      168 SETTABLEKS                       R11 R0 K27 ["_hoverHandleId"]
      170 JUMPIFEQKNIL                     R7 ; [+14]
      172 SETTABLEKS                       R9 R0 K28 ["_hoverDistance"]
      174 GETTABLEKS                       R12 R6 K15 ["Origin"]
      176 GETTABLEKS                       R15 R6 K16 ["Direction"]
      178 GETTABLEKS                       R14 R15 K29 ["Unit"]
      180 MUL                              R13 R14 R9
      181 ADD                              R11 R12 R13
      182 SETTABLEKS                       R11 R0 K30 ["_hoverPosition"]
      184 JUMP                             ; [+7]
      185 LOADK                            R9 K31 [∞]
      186 LOADK                            R11 K31 [∞]
      187 SETTABLEKS                       R11 R0 K28 ["_hoverDistance"]
      189 LOADNIL                          R11
      190 SETTABLEKS                       R11 R0 K30 ["_hoverPosition"]
      192 GETUPVAL                         R11 1
      193 CALL                             R11 0 1
      194 JUMPIFNOT                        R11 ; [+2]
      195 SETTABLEKS                       R4 R0 K32 ["_handlesList"]
      197 LOADNIL                          R11
      198 SETTABLEKS                       R11 R0 K33 ["_hoverHandles"]
      200 GETTABLEKS                       R12 R0 K6 ["_selectionCycleCache"]
      202 NAMECALL                         R12 R12 K34 ["hasCycled"]
      204 CALL                             R12 1 1
      205 GETUPVAL                         R13 2
      206 CALL                             R13 0 1
      207 JUMPIFNOT                        R13 ; [+11]
      208 NAMECALL                         R13 R1 K5 ["isAltKeyDown"]
      210 CALL                             R13 1 1
      211 JUMPIF                           R13 ; [+2]
      212 LOADB                            R11 0
      213 JUMP                             ; [+9]
      214 JUMPIF                           R12 ; [+2]
      215 LOADB                            R11 0
      216 JUMP                             ; [+6]
      217 LOADB                            R11 1
      218 JUMP                             ; [+4]
      219 NAMECALL                         R13 R1 K5 ["isAltKeyDown"]
      221 CALL                             R13 1 1
      222 MOVE                             R11 R13
      223 JUMPIF                           R11 ; [+80]
      224 LOADB                            R11 0
      225 LOADK                            R12 K35 [-∞]
      226 GETIMPORT                        R13 K37 [pairs]
      228 GETTABLEKS                       R14 R0 K32 ["_handlesList"]
      230 CALL                             R13 1 3
      231 FORGPREP_NEXT                    R13
      232 MOVE                             R20 R6
      233 LOADB                            R21 0
      234 NAMECALL                         R18 R17 K38 ["hitTest"]
      236 CALL                             R18 3 3
      237 GETTABLEKS                       R22 R17 K39 ["getPriority"]
      239 JUMPIFNOT                        R22 ; [+4]
      240 NAMECALL                         R21 R17 K39 ["getPriority"]
      242 CALL                             R21 1 1
      243 JUMP                             ; [+1]
      244 LOADN                            R21 0
      245 JUMPIFNOT                        R18 ; [+56]
      246 MOVE                             R23 R9
      247 MOVE                             R24 R11
      248 JUMPIFNOT                        R24 ; [+7]
      249 MOVE                             R22 R20
      250 JUMPIFNOT                        R22 ; [+11]
      251 JUMPIFLT                         R19 R23 ; [+2]
      253 LOADB                            R22 0 +1
      254 LOADB                            R22 1
      255 JUMP                             ; [+6]
      256 MOVE                             R22 R20
      257 JUMPIF                           R22 ; [+4]
      258 JUMPIFLT                         R19 R23 ; [+2]
      260 LOADB                            R22 0 +1
      261 LOADB                            R22 1
      262 JUMPIFNOT                        R22 ; [+39]
      263 MOVE                             R23 R8
      264 NAMECALL                         R24 R17 K40 ["shouldBiasTowardsObjects"]
      266 CALL                             R24 1 1
      267 JUMPIF                           R24 ; [+2]
      268 LOADB                            R22 0
      269 JUMP                             ; [+17]
      270 JUMPIFNOT                        R23 ; [+5]
      271 MOVE                             R26 R23
      272 NAMECALL                         R24 R3 K41 ["doesContainItem"]
      274 CALL                             R24 2 1
      275 JUMPIF                           R24 ; [+2]
      276 LOADB                            R22 0
      277 JUMP                             ; [+9]
      278 MOVE                             R26 R6
      279 LOADB                            R27 1
      280 NAMECALL                         R24 R17 K38 ["hitTest"]
      282 CALL                             R24 3 1
      283 JUMPIFEQKNIL                     R24 ; [+2]
      285 LOADB                            R22 0 +1
      286 LOADB                            R22 1
      287 JUMPIF                           R22 ; [+14]
      288 JUMPIFNOTLE                      R12 R21 ; [+13]
      290 SETTABLEKS                       R17 R0 K33 ["_hoverHandles"]
      292 SETTABLEKS                       R18 R0 K27 ["_hoverHandleId"]
      294 SETTABLEKS                       R19 R0 K28 ["_hoverDistance"]
      296 LOADNIL                          R22
      297 SETTABLEKS                       R22 R0 K30 ["_hoverPosition"]
      299 MOVE                             R9 R19
      300 MOVE                             R11 R20
      301 MOVE                             R12 R21
      302 FORGLOOP                         R13 2 ; [-71]
      304 GETTABLEKS                       R11 R0 K33 ["_hoverHandles"]
      306 JUMPIFNOT                        R11 ; [+9]
      307 GETTABLEKS                       R12 R0 K21 ["_draggerSchema"]
      309 GETTABLEKS                       R11 R12 K42 ["setHover"]
      311 MOVE                             R12 R1
      312 LOADNIL                          R13
      313 LOADNIL                          R14
      314 CALL                             R11 3 0
      315 JUMP                             ; [+10]
      316 GETTABLEKS                       R12 R0 K21 ["_draggerSchema"]
      318 GETTABLEKS                       R11 R12 K42 ["setHover"]
      320 MOVE                             R12 R1
      321 GETTABLEKS                       R13 R0 K3 ["_hoverSelectable"]
      323 GETTABLEKS                       R14 R0 K25 ["_hoverItem"]
      325 CALL                             R11 3 0
      326 GETTABLEKS                       R11 R0 K43 ["_onHoverChanged"]
      328 JUMPIFNOT                        R11 ; [+24]
      329 GETTABLEKS                       R11 R0 K3 ["_hoverSelectable"]
      331 JUMPIFEQ                         R11 R5 ; [+21]
      333 NAMECALL                         R11 R0 K44 ["_freeHoverEscapeDetector"]
      335 CALL                             R11 1 0
      336 GETTABLEKS                       R11 R0 K3 ["_hoverSelectable"]
      338 JUMPIFNOT                        R11 ; [+14]
      339 GETTABLEKS                       R13 R0 K21 ["_draggerSchema"]
      341 GETTABLEKS                       R12 R13 K45 ["HoverEscapeDetector"]
      343 GETTABLEKS                       R11 R12 K18 ["new"]
      345 MOVE                             R12 R1
      346 GETTABLEKS                       R13 R0 K3 ["_hoverSelectable"]
      348 GETTABLEKS                       R14 R0 K43 ["_onHoverChanged"]
      350 CALL                             R11 3 1
      351 SETTABLEKS                       R11 R0 K46 ["_hoverEscapeDetector"]
      353 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_hoverEscapeDetector"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["_hoverEscapeDetector"]
        5 NAMECALL                         R1 R1 K1 ["destroy"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["_hoverEscapeDetector"]
       11 RETURN                           R0 0

PROTO_8:
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
       24 GETTABLEKS                       R3 R0 K8 ["_draggerSchema"]
       26 GETTABLEKS                       R2 R3 K9 ["setHover"]
       28 MOVE                             R3 R1
       29 LOADNIL                          R4
       30 LOADNIL                          R5
       31 CALL                             R2 3 0
       32 RETURN                           R0 0

PROTO_9:
        0 SETTABLEKS                       R1 R0 K0 ["_mouseInBounds"]
        2 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["_hoverHandles"]
        2 GETTABLEKS                       R2 R0 K1 ["_hoverHandleId"]
        4 GETTABLEKS                       R3 R0 K2 ["_hoverDistance"]
        6 RETURN                           R1 3

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["_hoverItem"]
        2 GETTABLEKS                       R2 R0 K1 ["_hoverPosition"]
        4 RETURN                           R1 2

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["_hoverMetadata"]
        2 RETURN                           R1 1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["_hoverSelectable"]
        2 RETURN                           R1 1

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["_disconnectOnExternalHover"]
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETTABLEKS                       R1 R0 K0 ["_disconnectOnExternalHover"]
        5 CALL                             R1 0 0
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K0 ["_disconnectOnExternalHover"]
        9 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R3 K5 [script]
        9 GETTABLEKS                       R2 R3 K6 ["Parent"]
       11 GETTABLEKS                       R1 R2 K6 ["Parent"]
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R4 R1 K9 ["Utility"]
       17 GETTABLEKS                       R3 R4 K10 ["SelectionHelper"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K8 [require]
       22 GETTABLEKS                       R5 R1 K11 ["Flags"]
       24 GETTABLEKS                       R4 R5 K12 ["getFFlagDraggerHandlesIsEnabledFunction"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K8 [require]
       29 GETTABLEKS                       R6 R1 K11 ["Flags"]
       31 GETTABLEKS                       R5 R6 K13 ["getFFlagSBT5424SelectThroughLocked"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K8 [require]
       36 GETTABLEKS                       R7 R1 K11 ["Flags"]
       38 GETTABLEKS                       R6 R7 K14 ["getFFlagDraggerImprovements"]
       40 CALL                             R5 1 1
       41 DUPCLOSURE                       R6 K15 [PROTO_0]
       42 NEWTABLE                         R7 16 0
       44 SETTABLEKS                       R7 R7 K16 ["__index"]
       46 DUPCLOSURE                       R8 K17 [PROTO_2]
       47 CAPTURE                          VAL R7
       48 SETTABLEKS                       R8 R7 K18 ["new"]
       50 DUPCLOSURE                       R8 K19 [PROTO_3]
       51 DUPCLOSURE                       R9 K20 [PROTO_4]
       52 CAPTURE                          VAL R5
       53 DUPCLOSURE                       R10 K21 [PROTO_5]
       54 DUPCLOSURE                       R11 K22 [PROTO_6]
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R5
       58 SETTABLEKS                       R11 R7 K23 ["update"]
       60 DUPCLOSURE                       R11 K24 [PROTO_7]
       61 SETTABLEKS                       R11 R7 K25 ["_freeHoverEscapeDetector"]
       63 DUPCLOSURE                       R11 K26 [PROTO_8]
       64 SETTABLEKS                       R11 R7 K27 ["clearHover"]
       66 DUPCLOSURE                       R11 K28 [PROTO_9]
       67 SETTABLEKS                       R11 R7 K29 ["setMouseInBounds"]
       69 DUPCLOSURE                       R11 K30 [PROTO_10]
       70 SETTABLEKS                       R11 R7 K31 ["getHoverHandleId"]
       72 DUPCLOSURE                       R11 K32 [PROTO_11]
       73 SETTABLEKS                       R11 R7 K33 ["getHoverItem"]
       75 DUPCLOSURE                       R11 K34 [PROTO_12]
       76 SETTABLEKS                       R11 R7 K35 ["getHoverMetadata"]
       78 DUPCLOSURE                       R11 K36 [PROTO_13]
       79 SETTABLEKS                       R11 R7 K37 ["getHoverSelectable"]
       81 DUPCLOSURE                       R11 K38 [PROTO_14]
       82 SETTABLEKS                       R11 R7 K39 ["destroy"]
       84 RETURN                           R7 1
