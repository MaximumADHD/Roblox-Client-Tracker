PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 NEWTABLE                         R4 0 2
        4 DUPTABLE                         R5 K3 [{"icon", "id", "text"}]
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R6 R6 K4 ["TextUppercaseALowercaseA"]
        8 SETTABLEKS                       R6 R5 K0 ["icon"]
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R6 R6 K5 ["BINDING_DISPLAY_NAME"]
       13 SETTABLEKS                       R6 R5 K1 ["id"]
       15 LOADK                            R8 K6 ["Menu"]
       16 LOADK                            R9 K7 ["DisplayName"]
       17 NAMECALL                         R6 R0 K8 ["getText"]
       19 CALL                             R6 3 1
       20 SETTABLEKS                       R6 R5 K2 ["text"]
       22 DUPTABLE                         R6 K3 [{"icon", "id", "text"}]
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R7 R7 K9 ["Image"]
       26 SETTABLEKS                       R7 R6 K0 ["icon"]
       28 GETUPVAL                         R7 1
       29 GETTABLEKS                       R7 R7 K10 ["BINDING_DISPLAY_IMAGE"]
       31 SETTABLEKS                       R7 R6 K1 ["id"]
       33 LOADK                            R9 K6 ["Menu"]
       34 LOADK                            R10 K11 ["DisplayImage"]
       35 NAMECALL                         R7 R0 K8 ["getText"]
       37 CALL                             R7 3 1
       38 SETTABLEKS                       R7 R6 K2 ["text"]
       40 SETLIST                          R4 R5 2 [1]
       42 NEWTABLE                         R5 0 0
       44 DUPTABLE                         R8 K3 [{"icon", "id", "text"}]
       45 GETUPVAL                         R9 0
       46 GETTABLEKS                       R9 R9 K12 ["LocationPin"]
       48 SETTABLEKS                       R9 R8 K0 ["icon"]
       50 GETUPVAL                         R9 1
       51 GETTABLEKS                       R9 R9 K13 ["SHOW_IN_EXPLORER"]
       53 SETTABLEKS                       R9 R8 K1 ["id"]
       55 LOADK                            R11 K6 ["Menu"]
       56 LOADK                            R12 K14 ["ShowInExplorer"]
       57 NAMECALL                         R9 R0 K8 ["getText"]
       59 CALL                             R9 3 1
       60 SETTABLEKS                       R9 R8 K2 ["text"]
       62 FASTCALL2                        TABLE_INSERT R3 R8 ; [+4]
       64 MOVE                             R7 R3
       65 GETIMPORT                        R6 K17 [table.insert]
       67 CALL                             R6 2 0
       68 GETUPVAL                         R6 2
       69 MOVE                             R7 R1
       70 MOVE                             R8 R2
       71 CALL                             R6 2 1
       72 JUMPIFNOT                        R6 ; [+25]
       73 DUPTABLE                         R8 K3 [{"icon", "id", "text"}]
       74 GETUPVAL                         R9 3
       75 GETTABLEKS                       R10 R2 K18 ["clampMagnitudeToOne"]
       77 CALL                             R9 1 1
       78 SETTABLEKS                       R9 R8 K0 ["icon"]
       80 GETUPVAL                         R9 1
       81 GETTABLEKS                       R9 R9 K19 ["BINDING_CLAMP_MAGNITUDE_TO_ONE"]
       83 SETTABLEKS                       R9 R8 K1 ["id"]
       85 LOADK                            R11 K6 ["Menu"]
       86 LOADK                            R12 K20 ["ClampMagnitudeToOne"]
       87 NAMECALL                         R9 R0 K8 ["getText"]
       89 CALL                             R9 3 1
       90 SETTABLEKS                       R9 R8 K2 ["text"]
       92 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
       94 MOVE                             R7 R5
       95 GETIMPORT                        R6 K17 [table.insert]
       97 CALL                             R6 2 0
       98 GETUPVAL                         R6 4
       99 MOVE                             R7 R1
      100 MOVE                             R8 R2
      101 CALL                             R6 2 1
      102 JUMPIFNOT                        R6 ; [+38]
      103 DUPTABLE                         R8 K21 [{"id", "text"}]
      104 GETUPVAL                         R9 1
      105 GETTABLEKS                       R9 R9 K22 ["BINDING_PRESSED_THRESHOLD"]
      107 SETTABLEKS                       R9 R8 K1 ["id"]
      109 LOADK                            R11 K6 ["Menu"]
      110 LOADK                            R12 K23 ["PressedThreshold"]
      111 NAMECALL                         R9 R0 K8 ["getText"]
      113 CALL                             R9 3 1
      114 SETTABLEKS                       R9 R8 K2 ["text"]
      116 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
      118 MOVE                             R7 R5
      119 GETIMPORT                        R6 K17 [table.insert]
      121 CALL                             R6 2 0
      122 DUPTABLE                         R8 K21 [{"id", "text"}]
      123 GETUPVAL                         R9 1
      124 GETTABLEKS                       R9 R9 K24 ["BINDING_RELEASED_THRESHOLD"]
      126 SETTABLEKS                       R9 R8 K1 ["id"]
      128 LOADK                            R11 K6 ["Menu"]
      129 LOADK                            R12 K25 ["ReleasedThreshold"]
      130 NAMECALL                         R9 R0 K8 ["getText"]
      132 CALL                             R9 3 1
      133 SETTABLEKS                       R9 R8 K2 ["text"]
      135 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
      137 MOVE                             R7 R5
      138 GETIMPORT                        R6 K17 [table.insert]
      140 CALL                             R6 2 0
      141 GETTABLEKS                       R6 R1 K26 ["type"]
      143 GETIMPORT                        R7 K30 [Enum.InputActionType.Direction1D]
      145 JUMPIFNOTEQ                      R6 R7 ; [+21]
      147 DUPTABLE                         R8 K21 [{"id", "text"}]
      148 GETUPVAL                         R9 1
      149 GETTABLEKS                       R9 R9 K31 ["BINDING_SCALE"]
      151 SETTABLEKS                       R9 R8 K1 ["id"]
      153 LOADK                            R11 K6 ["Menu"]
      154 LOADK                            R12 K32 ["Scale"]
      155 NAMECALL                         R9 R0 K8 ["getText"]
      157 CALL                             R9 3 1
      158 SETTABLEKS                       R9 R8 K2 ["text"]
      160 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
      162 MOVE                             R7 R5
      163 GETIMPORT                        R6 K17 [table.insert]
      165 CALL                             R6 2 0
      166 JUMP                             ; [+120]
      167 GETTABLEKS                       R6 R1 K26 ["type"]
      169 GETIMPORT                        R7 K34 [Enum.InputActionType.Direction2D]
      171 JUMPIFNOTEQ                      R6 R7 ; [+71]
      173 GETTABLEKS                       R6 R2 K35 ["keyCode"]
      175 GETIMPORT                        R7 K38 [Enum.KeyCode.Thumbstick1]
      177 JUMPIFEQ                         R6 R7 ; [+7]
      179 GETTABLEKS                       R6 R2 K35 ["keyCode"]
      181 GETIMPORT                        R7 K40 [Enum.KeyCode.Thumbstick2]
      183 JUMPIFNOTEQ                      R6 R7 ; [+20]
      185 DUPTABLE                         R8 K21 [{"id", "text"}]
      186 GETUPVAL                         R9 1
      187 GETTABLEKS                       R9 R9 K41 ["BINDING_RESPONSE_CURVE"]
      189 SETTABLEKS                       R9 R8 K1 ["id"]
      191 LOADK                            R11 K6 ["Menu"]
      192 LOADK                            R12 K42 ["ResponseCurve"]
      193 NAMECALL                         R9 R0 K8 ["getText"]
      195 CALL                             R9 3 1
      196 SETTABLEKS                       R9 R8 K2 ["text"]
      198 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
      200 MOVE                             R7 R5
      201 GETIMPORT                        R6 K17 [table.insert]
      203 CALL                             R6 2 0
      204 DUPTABLE                         R8 K21 [{"id", "text"}]
      205 GETUPVAL                         R9 1
      206 GETTABLEKS                       R9 R9 K31 ["BINDING_SCALE"]
      208 SETTABLEKS                       R9 R8 K1 ["id"]
      210 LOADK                            R11 K6 ["Menu"]
      211 LOADK                            R12 K32 ["Scale"]
      212 NAMECALL                         R9 R0 K8 ["getText"]
      214 CALL                             R9 3 1
      215 SETTABLEKS                       R9 R8 K2 ["text"]
      217 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
      219 MOVE                             R7 R5
      220 GETIMPORT                        R6 K17 [table.insert]
      222 CALL                             R6 2 0
      223 DUPTABLE                         R8 K21 [{"id", "text"}]
      224 GETUPVAL                         R9 1
      225 GETTABLEKS                       R9 R9 K43 ["BINDING_VECTOR2_SCALE"]
      227 SETTABLEKS                       R9 R8 K1 ["id"]
      229 LOADK                            R11 K6 ["Menu"]
      230 LOADK                            R12 K44 ["Vector2Scale"]
      231 NAMECALL                         R9 R0 K8 ["getText"]
      233 CALL                             R9 3 1
      234 SETTABLEKS                       R9 R8 K2 ["text"]
      236 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
      238 MOVE                             R7 R5
      239 GETIMPORT                        R6 K17 [table.insert]
      241 CALL                             R6 2 0
      242 JUMP                             ; [+44]
      243 GETTABLEKS                       R6 R1 K26 ["type"]
      245 GETIMPORT                        R7 K46 [Enum.InputActionType.Direction3D]
      247 JUMPIFNOTEQ                      R6 R7 ; [+39]
      249 DUPTABLE                         R8 K21 [{"id", "text"}]
      250 GETUPVAL                         R9 1
      251 GETTABLEKS                       R9 R9 K31 ["BINDING_SCALE"]
      253 SETTABLEKS                       R9 R8 K1 ["id"]
      255 LOADK                            R11 K6 ["Menu"]
      256 LOADK                            R12 K32 ["Scale"]
      257 NAMECALL                         R9 R0 K8 ["getText"]
      259 CALL                             R9 3 1
      260 SETTABLEKS                       R9 R8 K2 ["text"]
      262 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
      264 MOVE                             R7 R5
      265 GETIMPORT                        R6 K17 [table.insert]
      267 CALL                             R6 2 0
      268 DUPTABLE                         R8 K21 [{"id", "text"}]
      269 GETUPVAL                         R9 1
      270 GETTABLEKS                       R9 R9 K47 ["BINDING_VECTOR3_SCALE"]
      272 SETTABLEKS                       R9 R8 K1 ["id"]
      274 LOADK                            R11 K6 ["Menu"]
      275 LOADK                            R12 K48 ["Vector3Scale"]
      276 NAMECALL                         R9 R0 K8 ["getText"]
      278 CALL                             R9 3 1
      279 SETTABLEKS                       R9 R8 K2 ["text"]
      281 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
      283 MOVE                             R7 R5
      284 GETIMPORT                        R6 K17 [table.insert]
      286 CALL                             R6 2 0
      287 NEWTABLE                         R6 0 0
      289 LENGTH                           R7 R3
      290 LOADN                            R8 0
      291 JUMPIFNOTLT                      R8 R7 ; [+10]
      293 DUPTABLE                         R9 K50 [{"items"}]
      294 SETTABLEKS                       R3 R9 K49 ["items"]
      296 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      298 MOVE                             R8 R6
      299 GETIMPORT                        R7 K17 [table.insert]
      301 CALL                             R7 2 0
      302 DUPTABLE                         R9 K50 [{"items"}]
      303 SETTABLEKS                       R4 R9 K49 ["items"]
      305 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      307 MOVE                             R8 R6
      308 GETIMPORT                        R7 K17 [table.insert]
      310 CALL                             R7 2 0
      311 LENGTH                           R7 R5
      312 LOADN                            R8 0
      313 JUMPIFNOTLT                      R8 R7 ; [+10]
      315 DUPTABLE                         R9 K50 [{"items"}]
      316 SETTABLEKS                       R5 R9 K49 ["items"]
      318 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      320 MOVE                             R8 R6
      321 GETIMPORT                        R7 K17 [table.insert]
      323 CALL                             R7 2 0
      324 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["getIconForBoolean"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Util"]
       36 GETTABLEKS                       R5 R5 K12 ["Constants"]
       38 GETTABLEKS                       R5 R5 K13 ["MenuIdentifiers"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Src"]
       45 GETTABLEKS                       R6 R6 K10 ["Util"]
       47 GETTABLEKS                       R6 R6 K14 ["Cell"]
       49 GETTABLEKS                       R6 R6 K15 ["isClampCompatible"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K8 ["Src"]
       56 GETTABLEKS                       R7 R7 K10 ["Util"]
       58 GETTABLEKS                       R7 R7 K14 ["Cell"]
       60 GETTABLEKS                       R7 R7 K16 ["isThresholdCompatible"]
       62 CALL                             R6 1 1
       63 GETTABLEKS                       R7 R1 K17 ["Enums"]
       65 GETTABLEKS                       R7 R7 K18 ["IconName"]
       67 DUPCLOSURE                       R8 K19 [PROTO_0]
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R6
       73 RETURN                           R8 1
