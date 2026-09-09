PROTO_0:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 DUPTABLE                         R1 K3 [{"name", "uuid", "type"}]
        4 GETTABLEKS                       R2 R0 K4 ["Name"]
        6 SETTABLEKS                       R2 R1 K0 ["name"]
        8 GETUPVAL                         R3 0
        9 CALL                             R3 0 1
       10 JUMPIFNOT                        R3 ; [+6]
       11 GETUPVAL                         R2 1
       12 MOVE                             R4 R0
       13 NAMECALL                         R2 R2 K5 ["GetOrCreateUniqueId"]
       15 CALL                             R2 2 1
       16 JUMP                             ; [+2]
       17 GETTABLEKS                       R2 R0 K6 ["UniqueId"]
       19 SETTABLEKS                       R2 R1 K1 ["uuid"]
       21 GETTABLEKS                       R2 R0 K7 ["ClassName"]
       23 SETTABLEKS                       R2 R1 K2 ["type"]
       25 RETURN                           R1 1

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
        6 JUMP                             ; [+132]
        7 JUMPIFNOTEQKS                    R2 K2 ["Backward"] ; [+6]
        9 GETTABLEKS                       R3 R0 K2 ["Backward"]
       11 SETTABLEKS                       R3 R1 K3 ["backward"]
       13 JUMP                             ; [+125]
       14 JUMPIFNOTEQKS                    R2 K4 ["Down"] ; [+6]
       16 GETTABLEKS                       R3 R0 K4 ["Down"]
       18 SETTABLEKS                       R3 R1 K5 ["down"]
       20 JUMP                             ; [+118]
       21 JUMPIFNOTEQKS                    R2 K6 ["Forward"] ; [+6]
       23 GETTABLEKS                       R3 R0 K6 ["Forward"]
       25 SETTABLEKS                       R3 R1 K7 ["forward"]
       27 JUMP                             ; [+111]
       28 JUMPIFNOTEQKS                    R2 K8 ["KeyCode"] ; [+6]
       30 GETTABLEKS                       R3 R0 K8 ["KeyCode"]
       32 SETTABLEKS                       R3 R1 K9 ["keyCode"]
       34 JUMP                             ; [+104]
       35 JUMPIFNOTEQKS                    R2 K10 ["Left"] ; [+6]
       37 GETTABLEKS                       R3 R0 K10 ["Left"]
       39 SETTABLEKS                       R3 R1 K11 ["left"]
       41 JUMP                             ; [+97]
       42 JUMPIFNOTEQKS                    R2 K12 ["PressedThreshold"] ; [+6]
       44 GETTABLEKS                       R3 R0 K12 ["PressedThreshold"]
       46 SETTABLEKS                       R3 R1 K13 ["pressedThreshold"]
       48 JUMP                             ; [+90]
       49 JUMPIFNOTEQKS                    R2 K14 ["PrimaryModifier"] ; [+6]
       51 GETTABLEKS                       R3 R0 K14 ["PrimaryModifier"]
       53 SETTABLEKS                       R3 R1 K15 ["primaryModifier"]
       55 JUMP                             ; [+83]
       56 JUMPIFNOTEQKS                    R2 K16 ["ReleasedThreshold"] ; [+6]
       58 GETTABLEKS                       R3 R0 K16 ["ReleasedThreshold"]
       60 SETTABLEKS                       R3 R1 K17 ["releasedThreshold"]
       62 JUMP                             ; [+76]
       63 JUMPIFNOTEQKS                    R2 K18 ["ResponseCurve"] ; [+6]
       65 GETTABLEKS                       R3 R0 K18 ["ResponseCurve"]
       67 SETTABLEKS                       R3 R1 K19 ["responseCurve"]
       69 JUMP                             ; [+69]
       70 JUMPIFNOTEQKS                    R2 K20 ["Right"] ; [+6]
       72 GETTABLEKS                       R3 R0 K20 ["Right"]
       74 SETTABLEKS                       R3 R1 K21 ["right"]
       76 JUMP                             ; [+62]
       77 JUMPIFNOTEQKS                    R2 K22 ["Scale"] ; [+6]
       79 GETTABLEKS                       R3 R0 K22 ["Scale"]
       81 SETTABLEKS                       R3 R1 K23 ["scale"]
       83 JUMP                             ; [+55]
       84 JUMPIFNOTEQKS                    R2 K24 ["SecondaryModifier"] ; [+6]
       86 GETTABLEKS                       R3 R0 K24 ["SecondaryModifier"]
       88 SETTABLEKS                       R3 R1 K25 ["secondaryModifier"]
       90 JUMP                             ; [+48]
       91 JUMPIFNOTEQKS                    R2 K26 ["UIButton"] ; [+10]
       93 GETUPVAL                         R3 0
       94 GETTABLEKS                       R3 R3 K27 ["serializeBindingButton"]
       96 GETTABLEKS                       R4 R0 K26 ["UIButton"]
       98 CALL                             R3 1 1
       99 SETTABLEKS                       R3 R1 K28 ["uiButton"]
      101 JUMP                             ; [+37]
      102 GETUPVAL                         R3 1
      103 CALL                             R3 0 1
      104 JUMPIFNOT                        R3 ; [+11]
      105 JUMPIFNOTEQKS                    R2 K29 ["UIModifier"] ; [+10]
      107 GETUPVAL                         R3 0
      108 GETTABLEKS                       R3 R3 K27 ["serializeBindingButton"]
      110 GETTABLEKS                       R4 R0 K29 ["UIModifier"]
      112 CALL                             R3 1 1
      113 SETTABLEKS                       R3 R1 K30 ["uiModifier"]
      115 JUMP                             ; [+23]
      116 JUMPIFNOTEQKS                    R2 K31 ["Up"] ; [+6]
      118 GETTABLEKS                       R3 R0 K31 ["Up"]
      120 SETTABLEKS                       R3 R1 K32 ["up"]
      122 JUMP                             ; [+16]
      123 JUMPIFNOTEQKS                    R2 K33 ["Vector2Scale"] ; [+6]
      125 GETTABLEKS                       R3 R0 K33 ["Vector2Scale"]
      127 SETTABLEKS                       R3 R1 K34 ["vector2Scale"]
      129 JUMP                             ; [+9]
      130 JUMPIFNOTEQKS                    R2 K35 ["Vector3Scale"] ; [+6]
      132 GETTABLEKS                       R3 R0 K35 ["Vector3Scale"]
      134 SETTABLEKS                       R3 R1 K36 ["vector3Scale"]
      136 JUMP                             ; [+2]
      137 LOADB                            R3 0
      138 RETURN                           R3 1
      139 LOADB                            R3 1
      140 RETURN                           R3 1

PROTO_4:
        0 DUPTABLE                         R1 K2 [{"actions", "uuid"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["actions"]
        5 GETUPVAL                         R3 0
        6 CALL                             R3 0 1
        7 JUMPIFNOT                        R3 ; [+6]
        8 GETUPVAL                         R2 1
        9 MOVE                             R4 R0
       10 NAMECALL                         R2 R2 K3 ["GetOrCreateUniqueId"]
       12 CALL                             R2 2 1
       13 JUMP                             ; [+2]
       14 GETTABLEKS                       R2 R0 K4 ["UniqueId"]
       16 SETTABLEKS                       R2 R1 K1 ["uuid"]
       18 GETUPVAL                         R2 2
       19 LOADNIL                          R3
       20 LOADNIL                          R4
       21 FORGPREP                         R2
       22 GETUPVAL                         R7 3
       23 GETTABLEKS                       R7 R7 K5 ["serializeContextProperty"]
       25 MOVE                             R8 R0
       26 MOVE                             R9 R1
       27 MOVE                             R10 R6
       28 CALL                             R7 3 0
       29 FORGLOOP                         R2 2 ; [-8]
       31 RETURN                           R1 1

PROTO_5:
        0 DUPTABLE                         R1 K2 [{"bindings", "uuid"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["bindings"]
        5 GETUPVAL                         R3 0
        6 CALL                             R3 0 1
        7 JUMPIFNOT                        R3 ; [+6]
        8 GETUPVAL                         R2 1
        9 MOVE                             R4 R0
       10 NAMECALL                         R2 R2 K3 ["GetOrCreateUniqueId"]
       12 CALL                             R2 2 1
       13 JUMP                             ; [+2]
       14 GETTABLEKS                       R2 R0 K4 ["UniqueId"]
       16 SETTABLEKS                       R2 R1 K1 ["uuid"]
       18 GETUPVAL                         R2 2
       19 LOADNIL                          R3
       20 LOADNIL                          R4
       21 FORGPREP                         R2
       22 GETUPVAL                         R7 3
       23 GETTABLEKS                       R7 R7 K5 ["serializeActionProperty"]
       25 MOVE                             R8 R0
       26 MOVE                             R9 R1
       27 MOVE                             R10 R6
       28 CALL                             R7 3 0
       29 FORGLOOP                         R2 2 ; [-8]
       31 RETURN                           R1 1

PROTO_6:
        0 DUPTABLE                         R1 K1 [{"uuid"}]
        1 GETUPVAL                         R3 0
        2 CALL                             R3 0 1
        3 JUMPIFNOT                        R3 ; [+6]
        4 GETUPVAL                         R2 1
        5 MOVE                             R4 R0
        6 NAMECALL                         R2 R2 K2 ["GetOrCreateUniqueId"]
        8 CALL                             R2 2 1
        9 JUMP                             ; [+2]
       10 GETTABLEKS                       R2 R0 K3 ["UniqueId"]
       12 SETTABLEKS                       R2 R1 K0 ["uuid"]
       14 GETUPVAL                         R2 2
       15 LOADNIL                          R3
       16 LOADNIL                          R4
       17 FORGPREP                         R2
       18 GETUPVAL                         R7 3
       19 GETTABLEKS                       R7 R7 K4 ["serializeBindingProperty"]
       21 MOVE                             R8 R0
       22 MOVE                             R9 R1
       23 MOVE                             R10 R6
       24 CALL                             R7 3 0
       25 FORGLOOP                         R2 2 ; [-8]
       27 RETURN                           R1 1

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
       10 JUMP                             ; [+208]
       11 GETTABLEKS                       R3 R0 K2 ["backward"]
       13 JUMPIFEQKNIL                     R3 ; [+8]
       15 JUMPIFNOTEQKS                    R2 K3 ["Backward"] ; [+6]
       17 GETTABLEKS                       R3 R0 K2 ["backward"]
       19 SETTABLEKS                       R3 R1 K3 ["Backward"]
       21 JUMP                             ; [+197]
       22 GETTABLEKS                       R3 R0 K4 ["down"]
       24 JUMPIFEQKNIL                     R3 ; [+8]
       26 JUMPIFNOTEQKS                    R2 K5 ["Down"] ; [+6]
       28 GETTABLEKS                       R3 R0 K4 ["down"]
       30 SETTABLEKS                       R3 R1 K5 ["Down"]
       32 JUMP                             ; [+186]
       33 GETTABLEKS                       R3 R0 K6 ["forward"]
       35 JUMPIFEQKNIL                     R3 ; [+8]
       37 JUMPIFNOTEQKS                    R2 K7 ["Forward"] ; [+6]
       39 GETTABLEKS                       R3 R0 K6 ["forward"]
       41 SETTABLEKS                       R3 R1 K7 ["Forward"]
       43 JUMP                             ; [+175]
       44 GETTABLEKS                       R3 R0 K8 ["keyCode"]
       46 JUMPIFEQKNIL                     R3 ; [+8]
       48 JUMPIFNOTEQKS                    R2 K9 ["KeyCode"] ; [+6]
       50 GETTABLEKS                       R3 R0 K8 ["keyCode"]
       52 SETTABLEKS                       R3 R1 K9 ["KeyCode"]
       54 JUMP                             ; [+164]
       55 GETTABLEKS                       R3 R0 K10 ["left"]
       57 JUMPIFEQKNIL                     R3 ; [+8]
       59 JUMPIFNOTEQKS                    R2 K11 ["Left"] ; [+6]
       61 GETTABLEKS                       R3 R0 K10 ["left"]
       63 SETTABLEKS                       R3 R1 K11 ["Left"]
       65 JUMP                             ; [+153]
       66 GETTABLEKS                       R3 R0 K12 ["pressedThreshold"]
       68 JUMPIFEQKNIL                     R3 ; [+8]
       70 JUMPIFNOTEQKS                    R2 K13 ["PressedThreshold"] ; [+6]
       72 GETTABLEKS                       R3 R0 K12 ["pressedThreshold"]
       74 SETTABLEKS                       R3 R1 K13 ["PressedThreshold"]
       76 JUMP                             ; [+142]
       77 GETTABLEKS                       R3 R0 K14 ["primaryModifier"]
       79 JUMPIFEQKNIL                     R3 ; [+8]
       81 JUMPIFNOTEQKS                    R2 K15 ["PrimaryModifier"] ; [+6]
       83 GETTABLEKS                       R3 R0 K14 ["primaryModifier"]
       85 SETTABLEKS                       R3 R1 K15 ["PrimaryModifier"]
       87 JUMP                             ; [+131]
       88 GETTABLEKS                       R3 R0 K16 ["releasedThreshold"]
       90 JUMPIFEQKNIL                     R3 ; [+8]
       92 JUMPIFNOTEQKS                    R2 K17 ["ReleasedThreshold"] ; [+6]
       94 GETTABLEKS                       R3 R0 K16 ["releasedThreshold"]
       96 SETTABLEKS                       R3 R1 K17 ["ReleasedThreshold"]
       98 JUMP                             ; [+120]
       99 GETTABLEKS                       R3 R0 K18 ["responseCurve"]
      101 JUMPIFEQKNIL                     R3 ; [+8]
      103 JUMPIFNOTEQKS                    R2 K19 ["ResponseCurve"] ; [+6]
      105 GETTABLEKS                       R3 R0 K18 ["responseCurve"]
      107 SETTABLEKS                       R3 R1 K19 ["ResponseCurve"]
      109 JUMP                             ; [+109]
      110 GETTABLEKS                       R3 R0 K20 ["right"]
      112 JUMPIFEQKNIL                     R3 ; [+8]
      114 JUMPIFNOTEQKS                    R2 K21 ["Right"] ; [+6]
      116 GETTABLEKS                       R3 R0 K20 ["right"]
      118 SETTABLEKS                       R3 R1 K21 ["Right"]
      120 JUMP                             ; [+98]
      121 GETTABLEKS                       R3 R0 K22 ["scale"]
      123 JUMPIFEQKNIL                     R3 ; [+8]
      125 JUMPIFNOTEQKS                    R2 K23 ["Scale"] ; [+6]
      127 GETTABLEKS                       R3 R0 K22 ["scale"]
      129 SETTABLEKS                       R3 R1 K23 ["Scale"]
      131 JUMP                             ; [+87]
      132 GETTABLEKS                       R3 R0 K24 ["secondaryModifier"]
      134 JUMPIFEQKNIL                     R3 ; [+8]
      136 JUMPIFNOTEQKS                    R2 K25 ["SecondaryModifier"] ; [+6]
      138 GETTABLEKS                       R3 R0 K24 ["secondaryModifier"]
      140 SETTABLEKS                       R3 R1 K25 ["SecondaryModifier"]
      142 JUMP                             ; [+76]
      143 GETTABLEKS                       R3 R0 K26 ["uiButton"]
      145 JUMPIFEQKNIL                     R3 ; [+16]
      147 JUMPIFNOTEQKS                    R2 K27 ["UIButton"] ; [+14]
      149 GETTABLEKS                       R3 R0 K26 ["uiButton"]
      151 GETTABLEKS                       R3 R3 K28 ["uuid"]
      153 JUMPIFNOTEQKS                    R3 K29 [""] ; [+6]
      155 LOADNIL                          R3
      156 SETTABLEKS                       R3 R1 K27 ["UIButton"]
      158 LOADB                            R3 1
      159 RETURN                           R3 1
      160 LOADB                            R3 0
      161 RETURN                           R3 1
      162 GETUPVAL                         R3 0
      163 CALL                             R3 0 1
      164 JUMPIFNOT                        R3 ; [+19]
      165 GETTABLEKS                       R3 R0 K30 ["uiModifier"]
      167 JUMPIFEQKNIL                     R3 ; [+16]
      169 JUMPIFNOTEQKS                    R2 K31 ["UIModifier"] ; [+14]
      171 GETTABLEKS                       R3 R0 K30 ["uiModifier"]
      173 GETTABLEKS                       R3 R3 K28 ["uuid"]
      175 JUMPIFNOTEQKS                    R3 K29 [""] ; [+6]
      177 LOADNIL                          R3
      178 SETTABLEKS                       R3 R1 K31 ["UIModifier"]
      180 LOADB                            R3 1
      181 RETURN                           R3 1
      182 LOADB                            R3 0
      183 RETURN                           R3 1
      184 GETTABLEKS                       R3 R0 K32 ["up"]
      186 JUMPIFEQKNIL                     R3 ; [+8]
      188 JUMPIFNOTEQKS                    R2 K33 ["Up"] ; [+6]
      190 GETTABLEKS                       R3 R0 K32 ["up"]
      192 SETTABLEKS                       R3 R1 K33 ["Up"]
      194 JUMP                             ; [+24]
      195 GETTABLEKS                       R3 R0 K34 ["vector2Scale"]
      197 JUMPIFEQKNIL                     R3 ; [+8]
      199 JUMPIFNOTEQKS                    R2 K35 ["Vector2Scale"] ; [+6]
      201 GETTABLEKS                       R3 R0 K34 ["vector2Scale"]
      203 SETTABLEKS                       R3 R1 K35 ["Vector2Scale"]
      205 JUMP                             ; [+13]
      206 GETTABLEKS                       R3 R0 K36 ["vector3Scale"]
      208 JUMPIFEQKNIL                     R3 ; [+8]
      210 JUMPIFNOTEQKS                    R2 K37 ["Vector3Scale"] ; [+6]
      212 GETTABLEKS                       R3 R0 K36 ["vector3Scale"]
      214 SETTABLEKS                       R3 R1 K37 ["Vector3Scale"]
      216 JUMP                             ; [+2]
      217 LOADB                            R3 0
      218 RETURN                           R3 1
      219 LOADB                            R3 1
      220 RETURN                           R3 1

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
       20 GETTABLEKS                       R3 R1 K10 ["Src"]
       22 GETTABLEKS                       R3 R3 K12 ["Flags"]
       24 GETIMPORT                        R4 K9 [require]
       26 GETTABLEKS                       R5 R3 K13 ["getFFlagIAMUIModifier"]
       28 CALL                             R4 1 1
       29 NEWTABLE                         R5 16 0
       31 NEWTABLE                         R6 0 4
       33 LOADK                            R7 K14 ["Name"]
       34 LOADK                            R8 K15 ["Enabled"]
       35 LOADK                            R9 K16 ["Priority"]
       36 LOADK                            R10 K17 ["Sink"]
       37 SETLIST                          R6 R7 4 [1]
       39 NEWTABLE                         R7 0 3
       41 LOADK                            R8 K14 ["Name"]
       42 LOADK                            R9 K15 ["Enabled"]
       43 LOADK                            R10 K18 ["Type"]
       44 SETLIST                          R7 R8 3 [1]
       46 NEWTABLE                         R8 0 18
       48 LOADK                            R9 K14 ["Name"]
       49 LOADK                            R10 K19 ["Backward"]
       50 LOADK                            R11 K20 ["Down"]
       51 LOADK                            R12 K21 ["Forward"]
       52 LOADK                            R13 K22 ["KeyCode"]
       53 LOADK                            R14 K23 ["Left"]
       54 LOADK                            R15 K24 ["PressedThreshold"]
       55 LOADK                            R16 K25 ["PrimaryModifier"]
       56 LOADK                            R17 K26 ["ReleasedThreshold"]
       57 LOADK                            R18 K27 ["ResponseCurve"]
       58 LOADK                            R19 K28 ["Right"]
       59 LOADK                            R20 K29 ["Scale"]
       60 LOADK                            R21 K30 ["SecondaryModifier"]
       61 LOADK                            R22 K31 ["UIButton"]
       62 LOADK                            R23 K32 ["UIModifier"]
       63 LOADK                            R24 K33 ["Up"]
       64 SETLIST                          R8 R9 16 [1]
       66 LOADK                            R9 K34 ["Vector2Scale"]
       67 LOADK                            R10 K35 ["Vector3Scale"]
       68 SETLIST                          R8 R9 2 [17]
       70 DUPCLOSURE                       R9 K36 [PROTO_0]
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R0
       73 SETTABLEKS                       R9 R5 K37 ["serializeBindingButton"]
       75 DUPCLOSURE                       R9 K38 [PROTO_1]
       76 SETTABLEKS                       R9 R5 K39 ["serializeContextProperty"]
       78 DUPCLOSURE                       R9 K40 [PROTO_2]
       79 SETTABLEKS                       R9 R5 K41 ["serializeActionProperty"]
       81 DUPCLOSURE                       R9 K42 [PROTO_3]
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R4
       84 SETTABLEKS                       R9 R5 K43 ["serializeBindingProperty"]
       86 DUPCLOSURE                       R9 K44 [PROTO_4]
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R0
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R5
       91 SETTABLEKS                       R9 R5 K45 ["serializeContext"]
       93 DUPCLOSURE                       R9 K46 [PROTO_5]
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R0
       96 CAPTURE                          VAL R7
       97 CAPTURE                          VAL R5
       98 SETTABLEKS                       R9 R5 K47 ["serializeAction"]
      100 DUPCLOSURE                       R9 K48 [PROTO_6]
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R0
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R5
      105 SETTABLEKS                       R9 R5 K49 ["serializeBinding"]
      107 DUPCLOSURE                       R9 K50 [PROTO_7]
      108 SETTABLEKS                       R9 R5 K51 ["deserializeContextProperty"]
      110 DUPCLOSURE                       R9 K52 [PROTO_8]
      111 SETTABLEKS                       R9 R5 K53 ["deserializeActionProperty"]
      113 DUPCLOSURE                       R9 K54 [PROTO_9]
      114 CAPTURE                          VAL R4
      115 SETTABLEKS                       R9 R5 K55 ["deserializeBindingProperty"]
      117 DUPCLOSURE                       R9 K56 [PROTO_10]
      118 CAPTURE                          VAL R6
      119 CAPTURE                          VAL R5
      120 SETTABLEKS                       R9 R5 K57 ["deserializeContext"]
      122 DUPCLOSURE                       R9 K58 [PROTO_11]
      123 CAPTURE                          VAL R7
      124 CAPTURE                          VAL R5
      125 SETTABLEKS                       R9 R5 K59 ["deserializeAction"]
      127 DUPCLOSURE                       R9 K60 [PROTO_12]
      128 CAPTURE                          VAL R8
      129 CAPTURE                          VAL R5
      130 SETTABLEKS                       R9 R5 K61 ["deserializeBinding"]
      132 SETTABLEKS                       R6 R5 K62 ["CONTEXT_PROPERTIES"]
      134 SETTABLEKS                       R7 R5 K63 ["ACTION_PROPERTIES"]
      136 SETTABLEKS                       R8 R5 K64 ["BINDING_PROPERTIES"]
      138 RETURN                           R5 1
