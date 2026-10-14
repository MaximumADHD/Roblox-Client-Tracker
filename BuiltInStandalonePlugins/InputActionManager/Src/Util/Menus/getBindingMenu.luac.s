PROTO_0:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+3]
        3 NEWTABLE                         R3 0 0
        5 RETURN                           R3 1
        6 NEWTABLE                         R3 0 0
        8 GETUPVAL                         R4 1
        9 MOVE                             R5 R1
       10 MOVE                             R6 R2
       11 CALL                             R4 2 1
       12 JUMPIFNOT                        R4 ; [+23]
       13 DUPTABLE                         R6 K3 [{"id", "isChecked", "text"}]
       14 GETUPVAL                         R7 2
       15 GETTABLEKS                       R7 R7 K4 ["BINDING_CLAMP_MAGNITUDE_TO_ONE"]
       17 SETTABLEKS                       R7 R6 K0 ["id"]
       19 GETTABLEKS                       R7 R2 K5 ["clampMagnitudeToOne"]
       21 SETTABLEKS                       R7 R6 K1 ["isChecked"]
       23 LOADK                            R9 K6 ["Menu"]
       24 LOADK                            R10 K7 ["ClampMagnitudeToOne"]
       25 NAMECALL                         R7 R0 K8 ["getText"]
       27 CALL                             R7 3 1
       28 SETTABLEKS                       R7 R6 K2 ["text"]
       30 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       32 MOVE                             R5 R3
       33 GETIMPORT                        R4 K11 [table.insert]
       35 CALL                             R4 2 0
       36 DUPTABLE                         R6 K12 [{"id", "text"}]
       37 GETUPVAL                         R7 2
       38 GETTABLEKS                       R7 R7 K13 ["BINDING_DISPLAY_NAME"]
       40 SETTABLEKS                       R7 R6 K0 ["id"]
       42 LOADK                            R9 K6 ["Menu"]
       43 LOADK                            R10 K14 ["DisplayName"]
       44 NAMECALL                         R7 R0 K8 ["getText"]
       46 CALL                             R7 3 1
       47 SETTABLEKS                       R7 R6 K2 ["text"]
       49 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       51 MOVE                             R5 R3
       52 GETIMPORT                        R4 K11 [table.insert]
       54 CALL                             R4 2 0
       55 DUPTABLE                         R6 K12 [{"id", "text"}]
       56 GETUPVAL                         R7 2
       57 GETTABLEKS                       R7 R7 K15 ["BINDING_DISPLAY_IMAGE"]
       59 SETTABLEKS                       R7 R6 K0 ["id"]
       61 LOADK                            R9 K6 ["Menu"]
       62 LOADK                            R10 K16 ["DisplayImage"]
       63 NAMECALL                         R7 R0 K8 ["getText"]
       65 CALL                             R7 3 1
       66 SETTABLEKS                       R7 R6 K2 ["text"]
       68 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       70 MOVE                             R5 R3
       71 GETIMPORT                        R4 K11 [table.insert]
       73 CALL                             R4 2 0
       74 GETUPVAL                         R4 3
       75 MOVE                             R5 R1
       76 MOVE                             R6 R2
       77 CALL                             R4 2 1
       78 JUMPIFNOT                        R4 ; [+38]
       79 DUPTABLE                         R6 K12 [{"id", "text"}]
       80 GETUPVAL                         R7 2
       81 GETTABLEKS                       R7 R7 K17 ["BINDING_PRESSED_THRESHOLD"]
       83 SETTABLEKS                       R7 R6 K0 ["id"]
       85 LOADK                            R9 K6 ["Menu"]
       86 LOADK                            R10 K18 ["PressedThreshold"]
       87 NAMECALL                         R7 R0 K8 ["getText"]
       89 CALL                             R7 3 1
       90 SETTABLEKS                       R7 R6 K2 ["text"]
       92 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       94 MOVE                             R5 R3
       95 GETIMPORT                        R4 K11 [table.insert]
       97 CALL                             R4 2 0
       98 DUPTABLE                         R6 K12 [{"id", "text"}]
       99 GETUPVAL                         R7 2
      100 GETTABLEKS                       R7 R7 K19 ["BINDING_RELEASED_THRESHOLD"]
      102 SETTABLEKS                       R7 R6 K0 ["id"]
      104 LOADK                            R9 K6 ["Menu"]
      105 LOADK                            R10 K20 ["ReleasedThreshold"]
      106 NAMECALL                         R7 R0 K8 ["getText"]
      108 CALL                             R7 3 1
      109 SETTABLEKS                       R7 R6 K2 ["text"]
      111 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
      113 MOVE                             R5 R3
      114 GETIMPORT                        R4 K11 [table.insert]
      116 CALL                             R4 2 0
      117 GETTABLEKS                       R4 R1 K21 ["type"]
      119 GETIMPORT                        R5 K25 [Enum.InputActionType.Direction1D]
      121 JUMPIFNOTEQ                      R4 R5 ; [+21]
      123 DUPTABLE                         R6 K12 [{"id", "text"}]
      124 GETUPVAL                         R7 2
      125 GETTABLEKS                       R7 R7 K26 ["BINDING_SCALE"]
      127 SETTABLEKS                       R7 R6 K0 ["id"]
      129 LOADK                            R9 K6 ["Menu"]
      130 LOADK                            R10 K27 ["Scale"]
      131 NAMECALL                         R7 R0 K8 ["getText"]
      133 CALL                             R7 3 1
      134 SETTABLEKS                       R7 R6 K2 ["text"]
      136 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
      138 MOVE                             R5 R3
      139 GETIMPORT                        R4 K11 [table.insert]
      141 CALL                             R4 2 0
      142 RETURN                           R3 1
      143 GETTABLEKS                       R4 R1 K21 ["type"]
      145 GETIMPORT                        R5 K29 [Enum.InputActionType.Direction2D]
      147 JUMPIFNOTEQ                      R4 R5 ; [+59]
      149 DUPTABLE                         R6 K12 [{"id", "text"}]
      150 GETUPVAL                         R7 2
      151 GETTABLEKS                       R7 R7 K30 ["BINDING_RESPONSE_CURVE"]
      153 SETTABLEKS                       R7 R6 K0 ["id"]
      155 LOADK                            R9 K6 ["Menu"]
      156 LOADK                            R10 K31 ["ResponseCurve"]
      157 NAMECALL                         R7 R0 K8 ["getText"]
      159 CALL                             R7 3 1
      160 SETTABLEKS                       R7 R6 K2 ["text"]
      162 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
      164 MOVE                             R5 R3
      165 GETIMPORT                        R4 K11 [table.insert]
      167 CALL                             R4 2 0
      168 DUPTABLE                         R6 K12 [{"id", "text"}]
      169 GETUPVAL                         R7 2
      170 GETTABLEKS                       R7 R7 K26 ["BINDING_SCALE"]
      172 SETTABLEKS                       R7 R6 K0 ["id"]
      174 LOADK                            R9 K6 ["Menu"]
      175 LOADK                            R10 K27 ["Scale"]
      176 NAMECALL                         R7 R0 K8 ["getText"]
      178 CALL                             R7 3 1
      179 SETTABLEKS                       R7 R6 K2 ["text"]
      181 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
      183 MOVE                             R5 R3
      184 GETIMPORT                        R4 K11 [table.insert]
      186 CALL                             R4 2 0
      187 DUPTABLE                         R6 K12 [{"id", "text"}]
      188 GETUPVAL                         R7 2
      189 GETTABLEKS                       R7 R7 K32 ["BINDING_VECTOR2_SCALE"]
      191 SETTABLEKS                       R7 R6 K0 ["id"]
      193 LOADK                            R9 K6 ["Menu"]
      194 LOADK                            R10 K33 ["Vector2Scale"]
      195 NAMECALL                         R7 R0 K8 ["getText"]
      197 CALL                             R7 3 1
      198 SETTABLEKS                       R7 R6 K2 ["text"]
      200 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
      202 MOVE                             R5 R3
      203 GETIMPORT                        R4 K11 [table.insert]
      205 CALL                             R4 2 0
      206 RETURN                           R3 1
      207 GETTABLEKS                       R4 R1 K21 ["type"]
      209 GETIMPORT                        R5 K35 [Enum.InputActionType.Direction3D]
      211 JUMPIFNOTEQ                      R4 R5 ; [+39]
      213 DUPTABLE                         R6 K12 [{"id", "text"}]
      214 GETUPVAL                         R7 2
      215 GETTABLEKS                       R7 R7 K26 ["BINDING_SCALE"]
      217 SETTABLEKS                       R7 R6 K0 ["id"]
      219 LOADK                            R9 K6 ["Menu"]
      220 LOADK                            R10 K27 ["Scale"]
      221 NAMECALL                         R7 R0 K8 ["getText"]
      223 CALL                             R7 3 1
      224 SETTABLEKS                       R7 R6 K2 ["text"]
      226 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
      228 MOVE                             R5 R3
      229 GETIMPORT                        R4 K11 [table.insert]
      231 CALL                             R4 2 0
      232 DUPTABLE                         R6 K12 [{"id", "text"}]
      233 GETUPVAL                         R7 2
      234 GETTABLEKS                       R7 R7 K36 ["BINDING_VECTOR3_SCALE"]
      236 SETTABLEKS                       R7 R6 K0 ["id"]
      238 LOADK                            R9 K6 ["Menu"]
      239 LOADK                            R10 K37 ["Vector3Scale"]
      240 NAMECALL                         R7 R0 K8 ["getText"]
      242 CALL                             R7 3 1
      243 SETTABLEKS                       R7 R6 K2 ["text"]
      245 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
      247 MOVE                             R5 R3
      248 GETIMPORT                        R4 K11 [table.insert]
      250 CALL                             R4 2 0
      251 RETURN                           R3 1

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
       27 GETTABLEKS                       R4 R4 K11 ["Constants"]
       29 GETTABLEKS                       R4 R4 K12 ["MenuIdentifiers"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K10 ["Util"]
       38 GETTABLEKS                       R5 R5 K13 ["Cell"]
       40 GETTABLEKS                       R5 R5 K14 ["isClampCompatible"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K8 ["Src"]
       47 GETTABLEKS                       R6 R6 K10 ["Util"]
       49 GETTABLEKS                       R6 R6 K13 ["Cell"]
       51 GETTABLEKS                       R6 R6 K15 ["isThresholdCompatible"]
       53 CALL                             R5 1 1
       54 GETTABLEKS                       R6 R0 K8 ["Src"]
       56 GETTABLEKS                       R6 R6 K16 ["Flags"]
       58 GETIMPORT                        R7 K5 [require]
       60 GETTABLEKS                       R8 R6 K17 ["getFFlagIAMBindingMenu"]
       62 CALL                             R7 1 1
       63 DUPCLOSURE                       R8 K18 [PROTO_0]
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R5
       68 RETURN                           R8 1
