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
        0 NAMECALL                         R1 R0 K0 ["getNavigationModel"]
        2 CALL                             R1 1 1
        3 GETIMPORT                        R2 K4 [Enum.CameraNavigationModel.IndustryCompatible]
        5 JUMPIFNOTEQ                      R1 R2 ; [+5]
        7 NAMECALL                         R2 R0 K5 ["isCtrlKeyDown"]
        9 CALL                             R2 1 -1
       10 RETURN                           R2 -1
       11 NAMECALL                         R2 R0 K6 ["isAltKeyDown"]
       13 CALL                             R2 1 -1
       14 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+24]
        3 NAMECALL                         R3 R0 K0 ["getNavigationModel"]
        5 CALL                             R3 1 1
        6 GETIMPORT                        R4 K4 [Enum.CameraNavigationModel.IndustryCompatible]
        8 JUMPIFNOTEQ                      R3 R4 ; [+6]
       10 NAMECALL                         R4 R0 K5 ["isCtrlKeyDown"]
       12 CALL                             R4 1 1
       13 MOVE                             R2 R4
       14 JUMP                             ; [+4]
       15 NAMECALL                         R4 R0 K6 ["isAltKeyDown"]
       17 CALL                             R4 1 1
       18 MOVE                             R2 R4
       19 JUMPIF                           R2 ; [+2]
       20 LOADB                            R2 0
       21 RETURN                           R2 1
       22 JUMPIF                           R1 ; [+2]
       23 LOADB                            R2 0
       24 RETURN                           R2 1
       25 LOADB                            R2 1
       26 RETURN                           R2 1
       27 GETUPVAL                         R2 1
       28 MOVE                             R3 R0
       29 CALL                             R2 1 -1
       30 RETURN                           R2 -1

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
       23 JUMPIFNOT                        R11 ; [+80]
       24 NAMECALL                         R12 R1 K5 ["getNavigationModel"]
       26 CALL                             R12 1 1
       27 GETIMPORT                        R13 K9 [Enum.CameraNavigationModel.IndustryCompatible]
       29 JUMPIFNOTEQ                      R12 R13 ; [+6]
       31 NAMECALL                         R13 R1 K10 ["isCtrlKeyDown"]
       33 CALL                             R13 1 1
       34 MOVE                             R11 R13
       35 JUMP                             ; [+4]
       36 NAMECALL                         R13 R1 K11 ["isAltKeyDown"]
       38 CALL                             R13 1 1
       39 MOVE                             R11 R13
       40 JUMPIFNOT                        R11 ; [+47]
       41 GETTABLEKS                       R11 R0 K12 ["_selectionCycleCache"]
       43 LOADB                            R13 0
       44 NAMECALL                         R11 R11 K13 ["getNextSelectable"]
       46 CALL                             R11 2 4
       47 MOVE                             R7 R11
       48 MOVE                             R8 R12
       49 MOVE                             R9 R13
       50 MOVE                             R10 R14
       51 FASTCALL1                        TYPEOF R7 ; [+3]
       52 MOVE                             R12 R7
       53 GETIMPORT                        R11 K15 [typeof]
       55 CALL                             R11 1 1
       56 JUMPIFNOTEQKS                    R11 K16 ["Instance"] ; [+130]
       58 MOVE                             R12 R7
       59 LOADK                            R15 K17 ["Attachment"]
       60 NAMECALL                         R13 R12 K18 ["IsA"]
       62 CALL                             R13 2 1
       63 MOVE                             R11 R13
       64 JUMPIF                           R11 ; [+11]
       65 LOADK                            R15 K19 ["WeldConstraint"]
       66 NAMECALL                         R13 R12 K18 ["IsA"]
       68 CALL                             R13 2 1
       69 MOVE                             R11 R13
       70 JUMPIF                           R11 ; [+5]
       71 LOADK                            R15 K20 ["Constraint"]
       72 NAMECALL                         R13 R12 K18 ["IsA"]
       74 CALL                             R13 2 1
       75 MOVE                             R11 R13
       76 JUMPIFNOT                        R11 ; [+110]
       77 GETTABLEKS                       R13 R6 K21 ["Origin"]
       79 GETTABLEKS                       R14 R6 K22 ["Direction"]
       81 GETIMPORT                        R15 K25 [RaycastParams.new]
       83 CALL                             R15 0 -1
       84 NAMECALL                         R11 R1 K26 ["gizmoRaycast"]
       86 CALL                             R11 -1 0
       87 JUMP                             ; [+99]
       88 GETTABLEKS                       R11 R0 K27 ["_draggerSchema"]
       90 GETTABLEKS                       R11 R11 K28 ["getMouseTarget"]
       92 MOVE                             R12 R1
       93 MOVE                             R13 R6
       94 MOVE                             R14 R2
       95 LOADB                            R15 0
       96 GETTABLEKS                       R16 R0 K29 ["_canHoverPivot"]
       98 CALL                             R11 5 4
       99 MOVE                             R7 R11
      100 MOVE                             R8 R12
      101 MOVE                             R9 R13
      102 MOVE                             R10 R14
      103 JUMP                             ; [+83]
      104 NAMECALL                         R12 R1 K5 ["getNavigationModel"]
      106 CALL                             R12 1 1
      107 GETIMPORT                        R13 K9 [Enum.CameraNavigationModel.IndustryCompatible]
      109 JUMPIFNOTEQ                      R12 R13 ; [+6]
      111 NAMECALL                         R13 R1 K10 ["isCtrlKeyDown"]
      113 CALL                             R13 1 1
      114 MOVE                             R11 R13
      115 JUMP                             ; [+4]
      116 NAMECALL                         R13 R1 K11 ["isAltKeyDown"]
      118 CALL                             R13 1 1
      119 MOVE                             R11 R13
      120 JUMPIFNOT                        R11 ; [+51]
      121 NAMECALL                         R11 R1 K30 ["shouldExtendSelection"]
      123 CALL                             R11 1 1
      124 JUMPIF                           R11 ; [+47]
      125 GETTABLEKS                       R11 R0 K12 ["_selectionCycleCache"]
      127 LOADB                            R13 0
      128 NAMECALL                         R11 R11 K13 ["getNextSelectable"]
      130 CALL                             R11 2 4
      131 MOVE                             R7 R11
      132 MOVE                             R8 R12
      133 MOVE                             R9 R13
      134 MOVE                             R10 R14
      135 FASTCALL1                        TYPEOF R7 ; [+3]
      136 MOVE                             R12 R7
      137 GETIMPORT                        R11 K15 [typeof]
      139 CALL                             R11 1 1
      140 JUMPIFNOTEQKS                    R11 K16 ["Instance"] ; [+46]
      142 MOVE                             R12 R7
      143 LOADK                            R15 K17 ["Attachment"]
      144 NAMECALL                         R13 R12 K18 ["IsA"]
      146 CALL                             R13 2 1
      147 MOVE                             R11 R13
      148 JUMPIF                           R11 ; [+11]
      149 LOADK                            R15 K19 ["WeldConstraint"]
      150 NAMECALL                         R13 R12 K18 ["IsA"]
      152 CALL                             R13 2 1
      153 MOVE                             R11 R13
      154 JUMPIF                           R11 ; [+5]
      155 LOADK                            R15 K20 ["Constraint"]
      156 NAMECALL                         R13 R12 K18 ["IsA"]
      158 CALL                             R13 2 1
      159 MOVE                             R11 R13
      160 JUMPIFNOT                        R11 ; [+26]
      161 GETTABLEKS                       R13 R6 K21 ["Origin"]
      163 GETTABLEKS                       R14 R6 K22 ["Direction"]
      165 GETIMPORT                        R15 K25 [RaycastParams.new]
      167 CALL                             R15 0 -1
      168 NAMECALL                         R11 R1 K26 ["gizmoRaycast"]
      170 CALL                             R11 -1 0
      171 JUMP                             ; [+15]
      172 GETTABLEKS                       R11 R0 K27 ["_draggerSchema"]
      174 GETTABLEKS                       R11 R11 K28 ["getMouseTarget"]
      176 MOVE                             R12 R1
      177 MOVE                             R13 R6
      178 MOVE                             R14 R2
      179 LOADB                            R15 0
      180 GETTABLEKS                       R16 R0 K29 ["_canHoverPivot"]
      182 CALL                             R11 5 4
      183 MOVE                             R7 R11
      184 MOVE                             R8 R12
      185 MOVE                             R9 R13
      186 MOVE                             R10 R14
      187 SETTABLEKS                       R8 R0 K31 ["_hoverItem"]
      189 SETTABLEKS                       R10 R0 K32 ["_hoverMetadata"]
      191 SETTABLEKS                       R7 R0 K3 ["_hoverSelectable"]
      193 LOADNIL                          R11
      194 SETTABLEKS                       R11 R0 K33 ["_hoverHandleId"]
      196 JUMPIFEQKNIL                     R7 ; [+14]
      198 SETTABLEKS                       R9 R0 K34 ["_hoverDistance"]
      200 GETTABLEKS                       R12 R6 K21 ["Origin"]
      202 GETTABLEKS                       R14 R6 K22 ["Direction"]
      204 GETTABLEKS                       R14 R14 K35 ["Unit"]
      206 MUL                              R13 R14 R9
      207 ADD                              R11 R12 R13
      208 SETTABLEKS                       R11 R0 K36 ["_hoverPosition"]
      210 JUMP                             ; [+7]
      211 LOADK                            R9 K37 [∞]
      212 LOADK                            R11 K37 [∞]
      213 SETTABLEKS                       R11 R0 K34 ["_hoverDistance"]
      215 LOADNIL                          R11
      216 SETTABLEKS                       R11 R0 K36 ["_hoverPosition"]
      218 GETUPVAL                         R11 1
      219 CALL                             R11 0 1
      220 JUMPIFNOT                        R11 ; [+2]
      221 SETTABLEKS                       R4 R0 K38 ["_handlesList"]
      223 LOADNIL                          R11
      224 SETTABLEKS                       R11 R0 K39 ["_hoverHandles"]
      226 GETTABLEKS                       R12 R0 K12 ["_selectionCycleCache"]
      228 NAMECALL                         R12 R12 K40 ["hasCycled"]
      230 CALL                             R12 1 1
      231 GETUPVAL                         R13 2
      232 CALL                             R13 0 1
      233 JUMPIFNOT                        R13 ; [+24]
      234 NAMECALL                         R14 R1 K5 ["getNavigationModel"]
      236 CALL                             R14 1 1
      237 GETIMPORT                        R15 K9 [Enum.CameraNavigationModel.IndustryCompatible]
      239 JUMPIFNOTEQ                      R14 R15 ; [+6]
      241 NAMECALL                         R15 R1 K10 ["isCtrlKeyDown"]
      243 CALL                             R15 1 1
      244 MOVE                             R13 R15
      245 JUMP                             ; [+4]
      246 NAMECALL                         R15 R1 K11 ["isAltKeyDown"]
      248 CALL                             R15 1 1
      249 MOVE                             R13 R15
      250 JUMPIF                           R13 ; [+2]
      251 LOADB                            R11 0
      252 JUMP                             ; [+21]
      253 JUMPIF                           R12 ; [+2]
      254 LOADB                            R11 0
      255 JUMP                             ; [+18]
      256 LOADB                            R11 1
      257 JUMP                             ; [+16]
      258 NAMECALL                         R13 R1 K5 ["getNavigationModel"]
      260 CALL                             R13 1 1
      261 GETIMPORT                        R14 K9 [Enum.CameraNavigationModel.IndustryCompatible]
      263 JUMPIFNOTEQ                      R13 R14 ; [+6]
      265 NAMECALL                         R14 R1 K10 ["isCtrlKeyDown"]
      267 CALL                             R14 1 1
      268 MOVE                             R11 R14
      269 JUMP                             ; [+4]
      270 NAMECALL                         R14 R1 K11 ["isAltKeyDown"]
      272 CALL                             R14 1 1
      273 MOVE                             R11 R14
      274 JUMPIF                           R11 ; [+80]
      275 LOADB                            R11 0
      276 LOADK                            R12 K41 [-∞]
      277 GETIMPORT                        R13 K43 [pairs]
      279 GETTABLEKS                       R14 R0 K38 ["_handlesList"]
      281 CALL                             R13 1 3
      282 FORGPREP_NEXT                    R13
      283 MOVE                             R20 R6
      284 LOADB                            R21 0
      285 NAMECALL                         R18 R17 K44 ["hitTest"]
      287 CALL                             R18 3 3
      288 GETTABLEKS                       R22 R17 K45 ["getPriority"]
      290 JUMPIFNOT                        R22 ; [+4]
      291 NAMECALL                         R21 R17 K45 ["getPriority"]
      293 CALL                             R21 1 1
      294 JUMP                             ; [+1]
      295 LOADN                            R21 0
      296 JUMPIFNOT                        R18 ; [+56]
      297 MOVE                             R23 R9
      298 MOVE                             R24 R11
      299 JUMPIFNOT                        R24 ; [+7]
      300 MOVE                             R22 R20
      301 JUMPIFNOT                        R22 ; [+11]
      302 JUMPIFLT                         R19 R23 ; [+2]
      304 LOADB                            R22 0 +1
      305 LOADB                            R22 1
      306 JUMP                             ; [+6]
      307 MOVE                             R22 R20
      308 JUMPIF                           R22 ; [+4]
      309 JUMPIFLT                         R19 R23 ; [+2]
      311 LOADB                            R22 0 +1
      312 LOADB                            R22 1
      313 JUMPIFNOT                        R22 ; [+39]
      314 MOVE                             R23 R8
      315 NAMECALL                         R24 R17 K46 ["shouldBiasTowardsObjects"]
      317 CALL                             R24 1 1
      318 JUMPIF                           R24 ; [+2]
      319 LOADB                            R22 0
      320 JUMP                             ; [+17]
      321 JUMPIFNOT                        R23 ; [+5]
      322 MOVE                             R26 R23
      323 NAMECALL                         R24 R3 K47 ["doesContainItem"]
      325 CALL                             R24 2 1
      326 JUMPIF                           R24 ; [+2]
      327 LOADB                            R22 0
      328 JUMP                             ; [+9]
      329 MOVE                             R26 R6
      330 LOADB                            R27 1
      331 NAMECALL                         R24 R17 K44 ["hitTest"]
      333 CALL                             R24 3 1
      334 JUMPIFEQKNIL                     R24 ; [+2]
      336 LOADB                            R22 0 +1
      337 LOADB                            R22 1
      338 JUMPIF                           R22 ; [+14]
      339 JUMPIFNOTLE                      R12 R21 ; [+13]
      341 SETTABLEKS                       R17 R0 K39 ["_hoverHandles"]
      343 SETTABLEKS                       R18 R0 K33 ["_hoverHandleId"]
      345 SETTABLEKS                       R19 R0 K34 ["_hoverDistance"]
      347 LOADNIL                          R22
      348 SETTABLEKS                       R22 R0 K36 ["_hoverPosition"]
      350 MOVE                             R9 R19
      351 MOVE                             R11 R20
      352 MOVE                             R12 R21
      353 FORGLOOP                         R13 2 ; [-71]
      355 GETTABLEKS                       R11 R0 K39 ["_hoverHandles"]
      357 JUMPIFNOT                        R11 ; [+9]
      358 GETTABLEKS                       R11 R0 K27 ["_draggerSchema"]
      360 GETTABLEKS                       R11 R11 K48 ["setHover"]
      362 MOVE                             R12 R1
      363 LOADNIL                          R13
      364 LOADNIL                          R14
      365 CALL                             R11 3 0
      366 JUMP                             ; [+10]
      367 GETTABLEKS                       R11 R0 K27 ["_draggerSchema"]
      369 GETTABLEKS                       R11 R11 K48 ["setHover"]
      371 MOVE                             R12 R1
      372 GETTABLEKS                       R13 R0 K3 ["_hoverSelectable"]
      374 GETTABLEKS                       R14 R0 K31 ["_hoverItem"]
      376 CALL                             R11 3 0
      377 GETTABLEKS                       R11 R0 K49 ["_onHoverChanged"]
      379 JUMPIFNOT                        R11 ; [+24]
      380 GETTABLEKS                       R11 R0 K3 ["_hoverSelectable"]
      382 JUMPIFEQ                         R11 R5 ; [+21]
      384 NAMECALL                         R11 R0 K50 ["_freeHoverEscapeDetector"]
      386 CALL                             R11 1 0
      387 GETTABLEKS                       R11 R0 K3 ["_hoverSelectable"]
      389 JUMPIFNOT                        R11 ; [+14]
      390 GETTABLEKS                       R11 R0 K27 ["_draggerSchema"]
      392 GETTABLEKS                       R11 R11 K51 ["HoverEscapeDetector"]
      394 GETTABLEKS                       R11 R11 K24 ["new"]
      396 MOVE                             R12 R1
      397 GETTABLEKS                       R13 R0 K3 ["_hoverSelectable"]
      399 GETTABLEKS                       R14 R0 K49 ["_onHoverChanged"]
      401 CALL                             R11 3 1
      402 SETTABLEKS                       R11 R0 K52 ["_hoverEscapeDetector"]
      404 RETURN                           R0 0

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
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R1 K9 ["Utility"]
       17 GETTABLEKS                       R3 R3 K10 ["SelectionHelper"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K8 [require]
       22 GETTABLEKS                       R4 R1 K11 ["Flags"]
       24 GETTABLEKS                       R4 R4 K12 ["getFFlagDraggerHandlesIsEnabledFunction"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K8 [require]
       29 GETTABLEKS                       R5 R1 K11 ["Flags"]
       31 GETTABLEKS                       R5 R5 K13 ["getFFlagSBT5424SelectThroughLocked"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K8 [require]
       36 GETTABLEKS                       R6 R1 K11 ["Flags"]
       38 GETTABLEKS                       R6 R6 K14 ["getFFlagDraggerImprovements"]
       40 CALL                             R5 1 1
       41 DUPCLOSURE                       R6 K15 [PROTO_0]
       42 NEWTABLE                         R7 16 0
       44 SETTABLEKS                       R7 R7 K16 ["__index"]
       46 DUPCLOSURE                       R8 K17 [PROTO_2]
       47 CAPTURE                          VAL R7
       48 SETTABLEKS                       R8 R7 K18 ["new"]
       50 DUPCLOSURE                       R8 K19 [PROTO_3]
       51 DUPCLOSURE                       R9 K20 [PROTO_4]
       52 DUPCLOSURE                       R10 K21 [PROTO_5]
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R9
       55 DUPCLOSURE                       R11 K22 [PROTO_6]
       56 DUPCLOSURE                       R12 K23 [PROTO_7]
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R5
       60 SETTABLEKS                       R12 R7 K24 ["update"]
       62 DUPCLOSURE                       R12 K25 [PROTO_8]
       63 SETTABLEKS                       R12 R7 K26 ["_freeHoverEscapeDetector"]
       65 DUPCLOSURE                       R12 K27 [PROTO_9]
       66 SETTABLEKS                       R12 R7 K28 ["clearHover"]
       68 DUPCLOSURE                       R12 K29 [PROTO_10]
       69 SETTABLEKS                       R12 R7 K30 ["setMouseInBounds"]
       71 DUPCLOSURE                       R12 K31 [PROTO_11]
       72 SETTABLEKS                       R12 R7 K32 ["getHoverHandleId"]
       74 DUPCLOSURE                       R12 K33 [PROTO_12]
       75 SETTABLEKS                       R12 R7 K34 ["getHoverItem"]
       77 DUPCLOSURE                       R12 K35 [PROTO_13]
       78 SETTABLEKS                       R12 R7 K36 ["getHoverMetadata"]
       80 DUPCLOSURE                       R12 K37 [PROTO_14]
       81 SETTABLEKS                       R12 R7 K38 ["getHoverSelectable"]
       83 DUPCLOSURE                       R12 K39 [PROTO_15]
       84 SETTABLEKS                       R12 R7 K40 ["destroy"]
       86 RETURN                           R7 1
