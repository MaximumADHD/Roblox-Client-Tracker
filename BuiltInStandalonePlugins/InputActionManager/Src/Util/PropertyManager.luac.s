PROTO_0:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 DUPTABLE                         R1 K3 [{"name", "uuid", "type"}]
        4 GETTABLEKS                       R2 R0 K4 ["Name"]
        6 SETTABLEKS                       R2 R1 K0 ["name"]
        8 GETUPVAL                         R2 0
        9 MOVE                             R4 R0
       10 NAMECALL                         R2 R2 K5 ["GetOrCreateUniqueId"]
       12 CALL                             R2 2 1
       13 SETTABLEKS                       R2 R1 K1 ["uuid"]
       15 GETTABLEKS                       R2 R0 K6 ["ClassName"]
       17 SETTABLEKS                       R2 R1 K2 ["type"]
       19 RETURN                           R1 1

PROTO_1:
        0 JUMPIFNOTEQKS                    R2 K0 ["Name"] ; [+6]
        2 GETTABLEKS                       R3 R0 K0 ["Name"]
        4 SETTABLEKS                       R3 R1 K1 ["name"]
        6 JUMP                             ; [+23]
        7 JUMPIFNOTEQKS                    R2 K2 ["Enabled"] ; [+6]
        9 GETTABLEKS                       R3 R0 K2 ["Enabled"]
       11 SETTABLEKS                       R3 R1 K3 ["enabled"]
       13 JUMP                             ; [+16]
       14 JUMPIFNOTEQKS                    R2 K4 ["Priority"] ; [+6]
       16 GETTABLEKS                       R3 R0 K4 ["Priority"]
       18 SETTABLEKS                       R3 R1 K5 ["priority"]
       20 JUMP                             ; [+9]
       21 JUMPIFNOTEQKS                    R2 K6 ["Sink"] ; [+6]
       23 GETTABLEKS                       R3 R0 K6 ["Sink"]
       25 SETTABLEKS                       R3 R1 K7 ["sink"]
       27 JUMP                             ; [+2]
       28 LOADB                            R3 0
       29 RETURN                           R3 1
       30 LOADB                            R3 1
       31 RETURN                           R3 1

PROTO_2:
        0 JUMPIFNOTEQKS                    R2 K0 ["Name"] ; [+6]
        2 GETTABLEKS                       R3 R0 K0 ["Name"]
        4 SETTABLEKS                       R3 R1 K1 ["name"]
        6 JUMP                             ; [+16]
        7 JUMPIFNOTEQKS                    R2 K2 ["Enabled"] ; [+6]
        9 GETTABLEKS                       R3 R0 K2 ["Enabled"]
       11 SETTABLEKS                       R3 R1 K3 ["enabled"]
       13 JUMP                             ; [+9]
       14 JUMPIFNOTEQKS                    R2 K4 ["Type"] ; [+6]
       16 GETTABLEKS                       R3 R0 K4 ["Type"]
       18 SETTABLEKS                       R3 R1 K5 ["type"]
       20 JUMP                             ; [+2]
       21 LOADB                            R3 0
       22 RETURN                           R3 1
       23 LOADB                            R3 1
       24 RETURN                           R3 1

PROTO_3:
        0 JUMPIFNOTEQKS                    R2 K0 ["Name"] ; [+6]
        2 GETTABLEKS                       R3 R0 K0 ["Name"]
        4 SETTABLEKS                       R3 R1 K1 ["name"]
        6 JUMP                             ; [+167]
        7 JUMPIFNOTEQKS                    R2 K2 ["Backward"] ; [+6]
        9 GETTABLEKS                       R3 R0 K2 ["Backward"]
       11 SETTABLEKS                       R3 R1 K3 ["backward"]
       13 JUMP                             ; [+160]
       14 JUMPIFNOTEQKS                    R2 K4 ["ClampMagnitudeToOne"] ; [+6]
       16 GETTABLEKS                       R3 R0 K4 ["ClampMagnitudeToOne"]
       18 SETTABLEKS                       R3 R1 K5 ["clampMagnitudeToOne"]
       20 JUMP                             ; [+153]
       21 JUMPIFNOTEQKS                    R2 K6 ["DisplayImage"] ; [+9]
       23 GETTABLEKS                       R4 R0 K6 ["DisplayImage"]
       25 GETTABLEKS                       R4 R4 K8 ["Uri"]
       27 ORK                              R3 R4 K7 [""]
       28 SETTABLEKS                       R3 R1 K9 ["displayImage"]
       30 JUMP                             ; [+143]
       31 JUMPIFNOTEQKS                    R2 K10 ["DisplayName"] ; [+6]
       33 GETTABLEKS                       R3 R0 K10 ["DisplayName"]
       35 SETTABLEKS                       R3 R1 K11 ["displayName"]
       37 JUMP                             ; [+136]
       38 JUMPIFNOTEQKS                    R2 K12 ["Down"] ; [+6]
       40 GETTABLEKS                       R3 R0 K12 ["Down"]
       42 SETTABLEKS                       R3 R1 K13 ["down"]
       44 JUMP                             ; [+129]
       45 JUMPIFNOTEQKS                    R2 K14 ["Forward"] ; [+6]
       47 GETTABLEKS                       R3 R0 K14 ["Forward"]
       49 SETTABLEKS                       R3 R1 K15 ["forward"]
       51 JUMP                             ; [+122]
       52 JUMPIFNOTEQKS                    R2 K16 ["KeyCode"] ; [+6]
       54 GETTABLEKS                       R3 R0 K16 ["KeyCode"]
       56 SETTABLEKS                       R3 R1 K17 ["keyCode"]
       58 JUMP                             ; [+115]
       59 JUMPIFNOTEQKS                    R2 K18 ["Left"] ; [+6]
       61 GETTABLEKS                       R3 R0 K18 ["Left"]
       63 SETTABLEKS                       R3 R1 K19 ["left"]
       65 JUMP                             ; [+108]
       66 JUMPIFNOTEQKS                    R2 K20 ["PressedThreshold"] ; [+6]
       68 GETTABLEKS                       R3 R0 K20 ["PressedThreshold"]
       70 SETTABLEKS                       R3 R1 K21 ["pressedThreshold"]
       72 JUMP                             ; [+101]
       73 JUMPIFNOTEQKS                    R2 K22 ["PrimaryModifier"] ; [+6]
       75 GETTABLEKS                       R3 R0 K22 ["PrimaryModifier"]
       77 SETTABLEKS                       R3 R1 K23 ["primaryModifier"]
       79 JUMP                             ; [+94]
       80 JUMPIFNOTEQKS                    R2 K24 ["PointerIndex"] ; [+6]
       82 GETTABLEKS                       R3 R0 K24 ["PointerIndex"]
       84 SETTABLEKS                       R3 R1 K25 ["pointerIndex"]
       86 JUMP                             ; [+87]
       87 JUMPIFNOTEQKS                    R2 K26 ["ReleasedThreshold"] ; [+6]
       89 GETTABLEKS                       R3 R0 K26 ["ReleasedThreshold"]
       91 SETTABLEKS                       R3 R1 K27 ["releasedThreshold"]
       93 JUMP                             ; [+80]
       94 JUMPIFNOTEQKS                    R2 K28 ["ResponseCurve"] ; [+6]
       96 GETTABLEKS                       R3 R0 K28 ["ResponseCurve"]
       98 SETTABLEKS                       R3 R1 K29 ["responseCurve"]
      100 JUMP                             ; [+73]
      101 JUMPIFNOTEQKS                    R2 K30 ["Right"] ; [+6]
      103 GETTABLEKS                       R3 R0 K30 ["Right"]
      105 SETTABLEKS                       R3 R1 K31 ["right"]
      107 JUMP                             ; [+66]
      108 JUMPIFNOTEQKS                    R2 K32 ["Scale"] ; [+6]
      110 GETTABLEKS                       R3 R0 K32 ["Scale"]
      112 SETTABLEKS                       R3 R1 K33 ["scale"]
      114 JUMP                             ; [+59]
      115 JUMPIFNOTEQKS                    R2 K34 ["SecondaryModifier"] ; [+6]
      117 GETTABLEKS                       R3 R0 K34 ["SecondaryModifier"]
      119 SETTABLEKS                       R3 R1 K35 ["secondaryModifier"]
      121 JUMP                             ; [+52]
      122 JUMPIFNOTEQKS                    R2 K36 ["Type"] ; [+6]
      124 GETTABLEKS                       R3 R0 K36 ["Type"]
      126 SETTABLEKS                       R3 R1 K37 ["type"]
      128 JUMP                             ; [+45]
      129 JUMPIFNOTEQKS                    R2 K38 ["UIButton"] ; [+10]
      131 GETUPVAL                         R3 0
      132 GETTABLEKS                       R3 R3 K39 ["serializeBindingButton"]
      134 GETTABLEKS                       R4 R0 K38 ["UIButton"]
      136 CALL                             R3 1 1
      137 SETTABLEKS                       R3 R1 K40 ["uiButton"]
      139 JUMP                             ; [+34]
      140 JUMPIFNOTEQKS                    R2 K41 ["UIModifier"] ; [+10]
      142 GETUPVAL                         R3 0
      143 GETTABLEKS                       R3 R3 K39 ["serializeBindingButton"]
      145 GETTABLEKS                       R4 R0 K41 ["UIModifier"]
      147 CALL                             R3 1 1
      148 SETTABLEKS                       R3 R1 K42 ["uiModifier"]
      150 JUMP                             ; [+23]
      151 JUMPIFNOTEQKS                    R2 K43 ["Up"] ; [+6]
      153 GETTABLEKS                       R3 R0 K43 ["Up"]
      155 SETTABLEKS                       R3 R1 K44 ["up"]
      157 JUMP                             ; [+16]
      158 JUMPIFNOTEQKS                    R2 K45 ["Vector2Scale"] ; [+6]
      160 GETTABLEKS                       R3 R0 K45 ["Vector2Scale"]
      162 SETTABLEKS                       R3 R1 K46 ["vector2Scale"]
      164 JUMP                             ; [+9]
      165 JUMPIFNOTEQKS                    R2 K47 ["Vector3Scale"] ; [+6]
      167 GETTABLEKS                       R3 R0 K47 ["Vector3Scale"]
      169 SETTABLEKS                       R3 R1 K48 ["vector3Scale"]
      171 JUMP                             ; [+2]
      172 LOADB                            R3 0
      173 RETURN                           R3 1
      174 LOADB                            R3 1
      175 RETURN                           R3 1

PROTO_4:
        0 DUPTABLE                         R1 K2 [{"actions", "uuid"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["actions"]
        5 GETUPVAL                         R2 0
        6 MOVE                             R4 R0
        7 NAMECALL                         R2 R2 K3 ["GetOrCreateUniqueId"]
        9 CALL                             R2 2 1
       10 SETTABLEKS                       R2 R1 K1 ["uuid"]
       12 GETUPVAL                         R2 1
       13 LOADNIL                          R3
       14 LOADNIL                          R4
       15 FORGPREP                         R2
       16 GETUPVAL                         R7 2
       17 GETTABLEKS                       R7 R7 K4 ["serializeContextProperty"]
       19 MOVE                             R8 R0
       20 MOVE                             R9 R1
       21 MOVE                             R10 R6
       22 CALL                             R7 3 0
       23 FORGLOOP                         R2 2 ; [-8]
       25 RETURN                           R1 1

PROTO_5:
        0 DUPTABLE                         R1 K2 [{"bindings", "uuid"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["bindings"]
        5 GETUPVAL                         R2 0
        6 MOVE                             R4 R0
        7 NAMECALL                         R2 R2 K3 ["GetOrCreateUniqueId"]
        9 CALL                             R2 2 1
       10 SETTABLEKS                       R2 R1 K1 ["uuid"]
       12 GETUPVAL                         R2 1
       13 LOADNIL                          R3
       14 LOADNIL                          R4
       15 FORGPREP                         R2
       16 GETUPVAL                         R7 2
       17 GETTABLEKS                       R7 R7 K4 ["serializeActionProperty"]
       19 MOVE                             R8 R0
       20 MOVE                             R9 R1
       21 MOVE                             R10 R6
       22 CALL                             R7 3 0
       23 FORGLOOP                         R2 2 ; [-8]
       25 RETURN                           R1 1

PROTO_6:
        0 DUPTABLE                         R1 K1 [{"uuid"}]
        1 GETUPVAL                         R2 0
        2 MOVE                             R4 R0
        3 NAMECALL                         R2 R2 K2 ["GetOrCreateUniqueId"]
        5 CALL                             R2 2 1
        6 SETTABLEKS                       R2 R1 K0 ["uuid"]
        8 GETUPVAL                         R2 1
        9 CALL                             R2 0 1
       10 JUMPIFNOT                        R2 ; [+20]
       11 GETTABLEKS                       R2 R0 K3 ["SecondaryModifier"]
       13 GETIMPORT                        R3 K7 [Enum.KeyCode.None]
       15 JUMPIFEQ                         R2 R3 ; [+15]
       17 GETTABLEKS                       R2 R0 K8 ["PrimaryModifier"]
       19 GETIMPORT                        R3 K7 [Enum.KeyCode.None]
       21 JUMPIFNOTEQ                      R2 R3 ; [+9]
       23 GETTABLEKS                       R2 R0 K3 ["SecondaryModifier"]
       25 SETTABLEKS                       R2 R0 K8 ["PrimaryModifier"]
       27 GETIMPORT                        R2 K7 [Enum.KeyCode.None]
       29 SETTABLEKS                       R2 R0 K3 ["SecondaryModifier"]
       31 GETUPVAL                         R2 2
       32 LOADNIL                          R3
       33 LOADNIL                          R4
       34 FORGPREP                         R2
       35 GETUPVAL                         R7 3
       36 GETTABLEKS                       R7 R7 K9 ["serializeBindingProperty"]
       38 MOVE                             R8 R0
       39 MOVE                             R9 R1
       40 MOVE                             R10 R6
       41 CALL                             R7 3 0
       42 FORGLOOP                         R2 2 ; [-8]
       44 RETURN                           R1 1

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["name"]
        2 JUMPIFEQKNIL                     R3 ; [+8]
        4 JUMPIFNOTEQKS                    R2 K1 ["Name"] ; [+6]
        6 GETTABLEKS                       R3 R0 K0 ["name"]
        8 SETTABLEKS                       R3 R1 K1 ["Name"]
       10 JUMP                             ; [+35]
       11 GETTABLEKS                       R3 R0 K2 ["enabled"]
       13 JUMPIFEQKNIL                     R3 ; [+8]
       15 JUMPIFNOTEQKS                    R2 K3 ["Enabled"] ; [+6]
       17 GETTABLEKS                       R3 R0 K2 ["enabled"]
       19 SETTABLEKS                       R3 R1 K3 ["Enabled"]
       21 JUMP                             ; [+24]
       22 GETTABLEKS                       R3 R0 K4 ["priority"]
       24 JUMPIFEQKNIL                     R3 ; [+8]
       26 JUMPIFNOTEQKS                    R2 K5 ["Priority"] ; [+6]
       28 GETTABLEKS                       R3 R0 K4 ["priority"]
       30 SETTABLEKS                       R3 R1 K5 ["Priority"]
       32 JUMP                             ; [+13]
       33 GETTABLEKS                       R3 R0 K6 ["sink"]
       35 JUMPIFEQKNIL                     R3 ; [+8]
       37 JUMPIFNOTEQKS                    R2 K7 ["Sink"] ; [+6]
       39 GETTABLEKS                       R3 R0 K6 ["sink"]
       41 SETTABLEKS                       R3 R1 K7 ["Sink"]
       43 JUMP                             ; [+2]
       44 LOADB                            R3 0
       45 RETURN                           R3 1
       46 LOADB                            R3 1
       47 RETURN                           R3 1

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["name"]
        2 JUMPIFEQKNIL                     R3 ; [+8]
        4 JUMPIFNOTEQKS                    R2 K1 ["Name"] ; [+6]
        6 GETTABLEKS                       R3 R0 K0 ["name"]
        8 SETTABLEKS                       R3 R1 K1 ["Name"]
       10 JUMP                             ; [+24]
       11 GETTABLEKS                       R3 R0 K2 ["enabled"]
       13 JUMPIFEQKNIL                     R3 ; [+8]
       15 JUMPIFNOTEQKS                    R2 K3 ["Enabled"] ; [+6]
       17 GETTABLEKS                       R3 R0 K2 ["enabled"]
       19 SETTABLEKS                       R3 R1 K3 ["Enabled"]
       21 JUMP                             ; [+13]
       22 GETTABLEKS                       R3 R0 K4 ["type"]
       24 JUMPIFEQKNIL                     R3 ; [+8]
       26 JUMPIFNOTEQKS                    R2 K5 ["Type"] ; [+6]
       28 GETTABLEKS                       R3 R0 K4 ["type"]
       30 SETTABLEKS                       R3 R1 K5 ["Type"]
       32 JUMP                             ; [+2]
       33 LOADB                            R3 0
       34 RETURN                           R3 1
       35 LOADB                            R3 1
       36 RETURN                           R3 1

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["name"]
        2 JUMPIFEQKNIL                     R3 ; [+8]
        4 JUMPIFNOTEQKS                    R2 K1 ["Name"] ; [+6]
        6 GETTABLEKS                       R3 R0 K0 ["name"]
        8 SETTABLEKS                       R3 R1 K1 ["Name"]
       10 JUMP                             ; [+263]
       11 GETTABLEKS                       R3 R0 K2 ["backward"]
       13 JUMPIFEQKNIL                     R3 ; [+8]
       15 JUMPIFNOTEQKS                    R2 K3 ["Backward"] ; [+6]
       17 GETTABLEKS                       R3 R0 K2 ["backward"]
       19 SETTABLEKS                       R3 R1 K3 ["Backward"]
       21 JUMP                             ; [+252]
       22 GETTABLEKS                       R3 R0 K4 ["clampMagnitudeToOne"]
       24 JUMPIFEQKNIL                     R3 ; [+8]
       26 JUMPIFNOTEQKS                    R2 K5 ["ClampMagnitudeToOne"] ; [+6]
       28 GETTABLEKS                       R3 R0 K4 ["clampMagnitudeToOne"]
       30 SETTABLEKS                       R3 R1 K5 ["ClampMagnitudeToOne"]
       32 JUMP                             ; [+241]
       33 GETTABLEKS                       R3 R0 K6 ["displayImage"]
       35 JUMPIFEQKNIL                     R3 ; [+11]
       37 JUMPIFNOTEQKS                    R2 K7 ["DisplayImage"] ; [+9]
       39 GETIMPORT                        R3 K10 [Content.fromUri]
       41 GETTABLEKS                       R4 R0 K6 ["displayImage"]
       43 CALL                             R3 1 1
       44 SETTABLEKS                       R3 R1 K7 ["DisplayImage"]
       46 JUMP                             ; [+227]
       47 GETTABLEKS                       R3 R0 K11 ["displayName"]
       49 JUMPIFEQKNIL                     R3 ; [+8]
       51 JUMPIFNOTEQKS                    R2 K12 ["DisplayName"] ; [+6]
       53 GETTABLEKS                       R3 R0 K11 ["displayName"]
       55 SETTABLEKS                       R3 R1 K12 ["DisplayName"]
       57 JUMP                             ; [+216]
       58 GETTABLEKS                       R3 R0 K13 ["down"]
       60 JUMPIFEQKNIL                     R3 ; [+8]
       62 JUMPIFNOTEQKS                    R2 K14 ["Down"] ; [+6]
       64 GETTABLEKS                       R3 R0 K13 ["down"]
       66 SETTABLEKS                       R3 R1 K14 ["Down"]
       68 JUMP                             ; [+205]
       69 GETTABLEKS                       R3 R0 K15 ["forward"]
       71 JUMPIFEQKNIL                     R3 ; [+8]
       73 JUMPIFNOTEQKS                    R2 K16 ["Forward"] ; [+6]
       75 GETTABLEKS                       R3 R0 K15 ["forward"]
       77 SETTABLEKS                       R3 R1 K16 ["Forward"]
       79 JUMP                             ; [+194]
       80 GETTABLEKS                       R3 R0 K17 ["keyCode"]
       82 JUMPIFEQKNIL                     R3 ; [+8]
       84 JUMPIFNOTEQKS                    R2 K18 ["KeyCode"] ; [+6]
       86 GETTABLEKS                       R3 R0 K17 ["keyCode"]
       88 SETTABLEKS                       R3 R1 K18 ["KeyCode"]
       90 JUMP                             ; [+183]
       91 GETTABLEKS                       R3 R0 K19 ["left"]
       93 JUMPIFEQKNIL                     R3 ; [+8]
       95 JUMPIFNOTEQKS                    R2 K20 ["Left"] ; [+6]
       97 GETTABLEKS                       R3 R0 K19 ["left"]
       99 SETTABLEKS                       R3 R1 K20 ["Left"]
      101 JUMP                             ; [+172]
      102 GETTABLEKS                       R3 R0 K21 ["pressedThreshold"]
      104 JUMPIFEQKNIL                     R3 ; [+8]
      106 JUMPIFNOTEQKS                    R2 K22 ["PressedThreshold"] ; [+6]
      108 GETTABLEKS                       R3 R0 K21 ["pressedThreshold"]
      110 SETTABLEKS                       R3 R1 K22 ["PressedThreshold"]
      112 JUMP                             ; [+161]
      113 GETTABLEKS                       R3 R0 K23 ["primaryModifier"]
      115 JUMPIFEQKNIL                     R3 ; [+8]
      117 JUMPIFNOTEQKS                    R2 K24 ["PrimaryModifier"] ; [+6]
      119 GETTABLEKS                       R3 R0 K23 ["primaryModifier"]
      121 SETTABLEKS                       R3 R1 K24 ["PrimaryModifier"]
      123 JUMP                             ; [+150]
      124 GETTABLEKS                       R3 R0 K25 ["pointerIndex"]
      126 JUMPIFEQKNIL                     R3 ; [+8]
      128 JUMPIFNOTEQKS                    R2 K26 ["PointerIndex"] ; [+6]
      130 GETTABLEKS                       R3 R0 K25 ["pointerIndex"]
      132 SETTABLEKS                       R3 R1 K26 ["PointerIndex"]
      134 JUMP                             ; [+139]
      135 GETTABLEKS                       R3 R0 K27 ["releasedThreshold"]
      137 JUMPIFEQKNIL                     R3 ; [+8]
      139 JUMPIFNOTEQKS                    R2 K28 ["ReleasedThreshold"] ; [+6]
      141 GETTABLEKS                       R3 R0 K27 ["releasedThreshold"]
      143 SETTABLEKS                       R3 R1 K28 ["ReleasedThreshold"]
      145 JUMP                             ; [+128]
      146 GETTABLEKS                       R3 R0 K29 ["responseCurve"]
      148 JUMPIFEQKNIL                     R3 ; [+8]
      150 JUMPIFNOTEQKS                    R2 K30 ["ResponseCurve"] ; [+6]
      152 GETTABLEKS                       R3 R0 K29 ["responseCurve"]
      154 SETTABLEKS                       R3 R1 K30 ["ResponseCurve"]
      156 JUMP                             ; [+117]
      157 GETTABLEKS                       R3 R0 K31 ["right"]
      159 JUMPIFEQKNIL                     R3 ; [+8]
      161 JUMPIFNOTEQKS                    R2 K32 ["Right"] ; [+6]
      163 GETTABLEKS                       R3 R0 K31 ["right"]
      165 SETTABLEKS                       R3 R1 K32 ["Right"]
      167 JUMP                             ; [+106]
      168 GETTABLEKS                       R3 R0 K33 ["scale"]
      170 JUMPIFEQKNIL                     R3 ; [+8]
      172 JUMPIFNOTEQKS                    R2 K34 ["Scale"] ; [+6]
      174 GETTABLEKS                       R3 R0 K33 ["scale"]
      176 SETTABLEKS                       R3 R1 K34 ["Scale"]
      178 JUMP                             ; [+95]
      179 GETTABLEKS                       R3 R0 K35 ["secondaryModifier"]
      181 JUMPIFEQKNIL                     R3 ; [+8]
      183 JUMPIFNOTEQKS                    R2 K36 ["SecondaryModifier"] ; [+6]
      185 GETTABLEKS                       R3 R0 K35 ["secondaryModifier"]
      187 SETTABLEKS                       R3 R1 K36 ["SecondaryModifier"]
      189 JUMP                             ; [+84]
      190 GETTABLEKS                       R3 R0 K37 ["type"]
      192 JUMPIFEQKNIL                     R3 ; [+8]
      194 JUMPIFNOTEQKS                    R2 K38 ["Type"] ; [+6]
      196 GETTABLEKS                       R3 R0 K37 ["type"]
      198 SETTABLEKS                       R3 R1 K38 ["Type"]
      200 JUMP                             ; [+73]
      201 GETTABLEKS                       R3 R0 K39 ["uiButton"]
      203 JUMPIFEQKNIL                     R3 ; [+16]
      205 JUMPIFNOTEQKS                    R2 K40 ["UIButton"] ; [+14]
      207 GETTABLEKS                       R3 R0 K39 ["uiButton"]
      209 GETTABLEKS                       R3 R3 K41 ["uuid"]
      211 JUMPIFNOTEQKS                    R3 K42 [""] ; [+6]
      213 LOADNIL                          R3
      214 SETTABLEKS                       R3 R1 K40 ["UIButton"]
      216 LOADB                            R3 1
      217 RETURN                           R3 1
      218 LOADB                            R3 0
      219 RETURN                           R3 1
      220 GETTABLEKS                       R3 R0 K43 ["uiModifier"]
      222 JUMPIFEQKNIL                     R3 ; [+16]
      224 JUMPIFNOTEQKS                    R2 K44 ["UIModifier"] ; [+14]
      226 GETTABLEKS                       R3 R0 K43 ["uiModifier"]
      228 GETTABLEKS                       R3 R3 K41 ["uuid"]
      230 JUMPIFNOTEQKS                    R3 K42 [""] ; [+6]
      232 LOADNIL                          R3
      233 SETTABLEKS                       R3 R1 K44 ["UIModifier"]
      235 LOADB                            R3 1
      236 RETURN                           R3 1
      237 LOADB                            R3 0
      238 RETURN                           R3 1
      239 GETTABLEKS                       R3 R0 K45 ["up"]
      241 JUMPIFEQKNIL                     R3 ; [+8]
      243 JUMPIFNOTEQKS                    R2 K46 ["Up"] ; [+6]
      245 GETTABLEKS                       R3 R0 K45 ["up"]
      247 SETTABLEKS                       R3 R1 K46 ["Up"]
      249 JUMP                             ; [+24]
      250 GETTABLEKS                       R3 R0 K47 ["vector2Scale"]
      252 JUMPIFEQKNIL                     R3 ; [+8]
      254 JUMPIFNOTEQKS                    R2 K48 ["Vector2Scale"] ; [+6]
      256 GETTABLEKS                       R3 R0 K47 ["vector2Scale"]
      258 SETTABLEKS                       R3 R1 K48 ["Vector2Scale"]
      260 JUMP                             ; [+13]
      261 GETTABLEKS                       R3 R0 K49 ["vector3Scale"]
      263 JUMPIFEQKNIL                     R3 ; [+8]
      265 JUMPIFNOTEQKS                    R2 K50 ["Vector3Scale"] ; [+6]
      267 GETTABLEKS                       R3 R0 K49 ["vector3Scale"]
      269 SETTABLEKS                       R3 R1 K50 ["Vector3Scale"]
      271 JUMP                             ; [+2]
      272 LOADB                            R3 0
      273 RETURN                           R3 1
      274 LOADB                            R3 1
      275 RETURN                           R3 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETUPVAL                         R7 1
        5 GETTABLEKS                       R7 R7 K0 ["deserializeContextProperty"]
        7 MOVE                             R8 R0
        8 MOVE                             R9 R1
        9 MOVE                             R10 R6
       10 CALL                             R7 3 0
       11 FORGLOOP                         R2 2 ; [-8]
       13 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETUPVAL                         R7 1
        5 GETTABLEKS                       R7 R7 K0 ["deserializeActionProperty"]
        7 MOVE                             R8 R0
        8 MOVE                             R9 R1
        9 MOVE                             R10 R6
       10 CALL                             R7 3 0
       11 FORGLOOP                         R2 2 ; [-8]
       13 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETUPVAL                         R7 1
        5 GETTABLEKS                       R7 R7 K0 ["deserializeBindingProperty"]
        7 MOVE                             R8 R0
        8 MOVE                             R9 R1
        9 MOVE                             R10 R6
       10 CALL                             R7 3 0
       11 FORGLOOP                         R2 2 ; [-8]
       13 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UniqueIdLookupService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["InputActionManager"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Types"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Src"]
       24 GETTABLEKS                       R4 R4 K12 ["Flags"]
       26 GETTABLEKS                       R4 R4 K13 ["getFFlagIAMSecondaryRequiresPrimaryModifier"]
       28 CALL                             R3 1 1
       29 NEWTABLE                         R4 16 0
       31 NEWTABLE                         R5 0 4
       33 LOADK                            R6 K14 ["Name"]
       34 LOADK                            R7 K15 ["Enabled"]
       35 LOADK                            R8 K16 ["Priority"]
       36 LOADK                            R9 K17 ["Sink"]
       37 SETLIST                          R5 R6 4 [1]
       39 NEWTABLE                         R6 0 3
       41 LOADK                            R7 K14 ["Name"]
       42 LOADK                            R8 K15 ["Enabled"]
       43 LOADK                            R9 K18 ["Type"]
       44 SETLIST                          R6 R7 3 [1]
       46 NEWTABLE                         R7 0 23
       48 LOADK                            R8 K19 ["ClampMagnitudeToOne"]
       49 LOADK                            R9 K20 ["DisplayImage"]
       50 LOADK                            R10 K21 ["DisplayName"]
       51 LOADK                            R11 K14 ["Name"]
       52 LOADK                            R12 K22 ["Backward"]
       53 LOADK                            R13 K23 ["Down"]
       54 LOADK                            R14 K24 ["Forward"]
       55 LOADK                            R15 K25 ["KeyCode"]
       56 LOADK                            R16 K26 ["Left"]
       57 LOADK                            R17 K27 ["PressedThreshold"]
       58 LOADK                            R18 K28 ["PrimaryModifier"]
       59 LOADK                            R19 K29 ["PointerIndex"]
       60 LOADK                            R20 K30 ["ReleasedThreshold"]
       61 LOADK                            R21 K31 ["ResponseCurve"]
       62 LOADK                            R22 K32 ["Right"]
       63 LOADK                            R23 K33 ["Scale"]
       64 SETLIST                          R7 R8 16 [1]
       66 LOADK                            R8 K34 ["SecondaryModifier"]
       67 LOADK                            R9 K18 ["Type"]
       68 LOADK                            R10 K35 ["UIButton"]
       69 LOADK                            R11 K36 ["UIModifier"]
       70 LOADK                            R12 K37 ["Up"]
       71 LOADK                            R13 K38 ["Vector2Scale"]
       72 LOADK                            R14 K39 ["Vector3Scale"]
       73 SETLIST                          R7 R8 7 [17]
       75 DUPCLOSURE                       R8 K40 [PROTO_0]
       76 CAPTURE                          VAL R0
       77 SETTABLEKS                       R8 R4 K41 ["serializeBindingButton"]
       79 DUPCLOSURE                       R8 K42 [PROTO_1]
       80 SETTABLEKS                       R8 R4 K43 ["serializeContextProperty"]
       82 DUPCLOSURE                       R8 K44 [PROTO_2]
       83 SETTABLEKS                       R8 R4 K45 ["serializeActionProperty"]
       85 DUPCLOSURE                       R8 K46 [PROTO_3]
       86 CAPTURE                          VAL R4
       87 SETTABLEKS                       R8 R4 K47 ["serializeBindingProperty"]
       89 DUPCLOSURE                       R8 K48 [PROTO_4]
       90 CAPTURE                          VAL R0
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R4
       93 SETTABLEKS                       R8 R4 K49 ["serializeContext"]
       95 DUPCLOSURE                       R8 K50 [PROTO_5]
       96 CAPTURE                          VAL R0
       97 CAPTURE                          VAL R6
       98 CAPTURE                          VAL R4
       99 SETTABLEKS                       R8 R4 K51 ["serializeAction"]
      101 DUPCLOSURE                       R8 K52 [PROTO_6]
      102 CAPTURE                          VAL R0
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R4
      106 SETTABLEKS                       R8 R4 K53 ["serializeBinding"]
      108 DUPCLOSURE                       R8 K54 [PROTO_7]
      109 SETTABLEKS                       R8 R4 K55 ["deserializeContextProperty"]
      111 DUPCLOSURE                       R8 K56 [PROTO_8]
      112 SETTABLEKS                       R8 R4 K57 ["deserializeActionProperty"]
      114 DUPCLOSURE                       R8 K58 [PROTO_9]
      115 SETTABLEKS                       R8 R4 K59 ["deserializeBindingProperty"]
      117 DUPCLOSURE                       R8 K60 [PROTO_10]
      118 CAPTURE                          VAL R5
      119 CAPTURE                          VAL R4
      120 SETTABLEKS                       R8 R4 K61 ["deserializeContext"]
      122 DUPCLOSURE                       R8 K62 [PROTO_11]
      123 CAPTURE                          VAL R6
      124 CAPTURE                          VAL R4
      125 SETTABLEKS                       R8 R4 K63 ["deserializeAction"]
      127 DUPCLOSURE                       R8 K64 [PROTO_12]
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R4
      130 SETTABLEKS                       R8 R4 K65 ["deserializeBinding"]
      132 SETTABLEKS                       R5 R4 K66 ["CONTEXT_PROPERTIES"]
      134 SETTABLEKS                       R6 R4 K67 ["ACTION_PROPERTIES"]
      136 SETTABLEKS                       R7 R4 K68 ["BINDING_PROPERTIES"]
      138 RETURN                           R4 1
