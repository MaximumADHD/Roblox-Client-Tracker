PROTO_0:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 DUPTABLE                         R1 K2 [{"name", "uuid"}]
        4 GETTABLEKS                       R2 R0 K3 ["Name"]
        6 SETTABLEKS                       R2 R1 K0 ["name"]
        8 GETTABLEKS                       R2 R0 K4 ["UniqueId"]
       10 SETTABLEKS                       R2 R1 K1 ["uuid"]
       12 RETURN                           R1 1

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
        6 JUMP                             ; [+126]
        7 JUMPIFNOTEQKS                    R2 K2 ["Backward"] ; [+6]
        9 GETTABLEKS                       R3 R0 K2 ["Backward"]
       11 SETTABLEKS                       R3 R1 K3 ["backward"]
       13 JUMP                             ; [+119]
       14 JUMPIFNOTEQKS                    R2 K4 ["Down"] ; [+6]
       16 GETTABLEKS                       R3 R0 K4 ["Down"]
       18 SETTABLEKS                       R3 R1 K5 ["down"]
       20 JUMP                             ; [+112]
       21 JUMPIFNOTEQKS                    R2 K6 ["Forward"] ; [+6]
       23 GETTABLEKS                       R3 R0 K6 ["Forward"]
       25 SETTABLEKS                       R3 R1 K7 ["forward"]
       27 JUMP                             ; [+105]
       28 JUMPIFNOTEQKS                    R2 K8 ["KeyCode"] ; [+6]
       30 GETTABLEKS                       R3 R0 K8 ["KeyCode"]
       32 SETTABLEKS                       R3 R1 K9 ["keyCode"]
       34 JUMP                             ; [+98]
       35 JUMPIFNOTEQKS                    R2 K10 ["Left"] ; [+6]
       37 GETTABLEKS                       R3 R0 K10 ["Left"]
       39 SETTABLEKS                       R3 R1 K11 ["left"]
       41 JUMP                             ; [+91]
       42 JUMPIFNOTEQKS                    R2 K12 ["PressedThreshold"] ; [+6]
       44 GETTABLEKS                       R3 R0 K12 ["PressedThreshold"]
       46 SETTABLEKS                       R3 R1 K13 ["pressedThreshold"]
       48 JUMP                             ; [+84]
       49 JUMPIFNOTEQKS                    R2 K14 ["PrimaryModifier"] ; [+6]
       51 GETTABLEKS                       R3 R0 K14 ["PrimaryModifier"]
       53 SETTABLEKS                       R3 R1 K15 ["primaryModifier"]
       55 JUMP                             ; [+77]
       56 JUMPIFNOTEQKS                    R2 K16 ["ReleasedThreshold"] ; [+6]
       58 GETTABLEKS                       R3 R0 K16 ["ReleasedThreshold"]
       60 SETTABLEKS                       R3 R1 K17 ["releasedThreshold"]
       62 JUMP                             ; [+70]
       63 JUMPIFNOTEQKS                    R2 K18 ["ResponseCurve"] ; [+6]
       65 GETTABLEKS                       R3 R0 K18 ["ResponseCurve"]
       67 SETTABLEKS                       R3 R1 K19 ["responseCurve"]
       69 JUMP                             ; [+63]
       70 JUMPIFNOTEQKS                    R2 K20 ["Right"] ; [+6]
       72 GETTABLEKS                       R3 R0 K20 ["Right"]
       74 SETTABLEKS                       R3 R1 K21 ["right"]
       76 JUMP                             ; [+56]
       77 JUMPIFNOTEQKS                    R2 K22 ["Scale"] ; [+6]
       79 GETTABLEKS                       R3 R0 K22 ["Scale"]
       81 SETTABLEKS                       R3 R1 K23 ["scale"]
       83 JUMP                             ; [+49]
       84 JUMPIFNOTEQKS                    R2 K24 ["SecondaryModifier"] ; [+6]
       86 GETTABLEKS                       R3 R0 K24 ["SecondaryModifier"]
       88 SETTABLEKS                       R3 R1 K25 ["secondaryModifier"]
       90 JUMP                             ; [+42]
       91 JUMPIFNOTEQKS                    R2 K26 ["UIButton"] ; [+18]
       93 GETTABLEKS                       R4 R0 K26 ["UIButton"]
       95 JUMPIF                           R4 ; [+2]
       96 LOADNIL                          R3
       97 JUMP                             ; [+9]
       98 DUPTABLE                         R3 K28 [{"name", "uuid"}]
       99 GETTABLEKS                       R5 R4 K0 ["Name"]
      101 SETTABLEKS                       R5 R3 K1 ["name"]
      103 GETTABLEKS                       R5 R4 K29 ["UniqueId"]
      105 SETTABLEKS                       R5 R3 K27 ["uuid"]
      107 SETTABLEKS                       R3 R1 K30 ["uiButton"]
      109 JUMP                             ; [+23]
      110 JUMPIFNOTEQKS                    R2 K31 ["Up"] ; [+6]
      112 GETTABLEKS                       R3 R0 K31 ["Up"]
      114 SETTABLEKS                       R3 R1 K32 ["up"]
      116 JUMP                             ; [+16]
      117 JUMPIFNOTEQKS                    R2 K33 ["Vector2Scale"] ; [+6]
      119 GETTABLEKS                       R3 R0 K33 ["Vector2Scale"]
      121 SETTABLEKS                       R3 R1 K34 ["vector2Scale"]
      123 JUMP                             ; [+9]
      124 JUMPIFNOTEQKS                    R2 K35 ["Vector3Scale"] ; [+6]
      126 GETTABLEKS                       R3 R0 K35 ["Vector3Scale"]
      128 SETTABLEKS                       R3 R1 K36 ["vector3Scale"]
      130 JUMP                             ; [+2]
      131 LOADB                            R3 0
      132 RETURN                           R3 1
      133 LOADB                            R3 1
      134 RETURN                           R3 1

PROTO_4:
        0 DUPTABLE                         R1 K2 [{"uuid", "actions"}]
        1 GETTABLEKS                       R2 R0 K3 ["UniqueId"]
        3 SETTABLEKS                       R2 R1 K0 ["uuid"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K1 ["actions"]
        9 GETUPVAL                         R2 0
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 FORGPREP                         R2
       13 GETUPVAL                         R8 1
       14 GETTABLEKS                       R7 R8 K4 ["serializeContextProperty"]
       16 MOVE                             R8 R0
       17 MOVE                             R9 R1
       18 MOVE                             R10 R6
       19 CALL                             R7 3 0
       20 FORGLOOP                         R2 2 ; [-8]
       22 RETURN                           R1 1

PROTO_5:
        0 DUPTABLE                         R1 K2 [{"uuid", "bindings"}]
        1 GETTABLEKS                       R2 R0 K3 ["UniqueId"]
        3 SETTABLEKS                       R2 R1 K0 ["uuid"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K1 ["bindings"]
        9 GETUPVAL                         R2 0
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 FORGPREP                         R2
       13 GETUPVAL                         R8 1
       14 GETTABLEKS                       R7 R8 K4 ["serializeActionProperty"]
       16 MOVE                             R8 R0
       17 MOVE                             R9 R1
       18 MOVE                             R10 R6
       19 CALL                             R7 3 0
       20 FORGLOOP                         R2 2 ; [-8]
       22 RETURN                           R1 1

PROTO_6:
        0 DUPTABLE                         R1 K1 [{"uuid"}]
        1 GETTABLEKS                       R2 R0 K2 ["UniqueId"]
        3 SETTABLEKS                       R2 R1 K0 ["uuid"]
        5 GETUPVAL                         R2 0
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 GETUPVAL                         R8 1
       10 GETTABLEKS                       R7 R8 K3 ["serializeBindingProperty"]
       12 MOVE                             R8 R0
       13 MOVE                             R9 R1
       14 MOVE                             R10 R6
       15 CALL                             R7 3 0
       16 FORGLOOP                         R2 2 ; [-8]
       18 RETURN                           R1 1

PROTO_7:
        0 JUMPIFNOTEQKS                    R2 K0 ["Name"] ; [+6]
        2 GETTABLEKS                       R3 R0 K1 ["name"]
        4 SETTABLEKS                       R3 R1 K0 ["Name"]
        6 JUMP                             ; [+23]
        7 JUMPIFNOTEQKS                    R2 K2 ["Enabled"] ; [+6]
        9 GETTABLEKS                       R3 R0 K3 ["enabled"]
       11 SETTABLEKS                       R3 R1 K2 ["Enabled"]
       13 JUMP                             ; [+16]
       14 JUMPIFNOTEQKS                    R2 K4 ["Priority"] ; [+6]
       16 GETTABLEKS                       R3 R0 K5 ["priority"]
       18 SETTABLEKS                       R3 R1 K4 ["Priority"]
       20 JUMP                             ; [+9]
       21 JUMPIFNOTEQKS                    R2 K6 ["Sink"] ; [+6]
       23 GETTABLEKS                       R3 R0 K7 ["sink"]
       25 SETTABLEKS                       R3 R1 K6 ["Sink"]
       27 JUMP                             ; [+2]
       28 LOADB                            R3 0
       29 RETURN                           R3 1
       30 LOADB                            R3 1
       31 RETURN                           R3 1

PROTO_8:
        0 JUMPIFNOTEQKS                    R2 K0 ["Name"] ; [+6]
        2 GETTABLEKS                       R3 R0 K1 ["name"]
        4 SETTABLEKS                       R3 R1 K0 ["Name"]
        6 JUMP                             ; [+16]
        7 JUMPIFNOTEQKS                    R2 K2 ["Enabled"] ; [+6]
        9 GETTABLEKS                       R3 R0 K3 ["enabled"]
       11 SETTABLEKS                       R3 R1 K2 ["Enabled"]
       13 JUMP                             ; [+9]
       14 JUMPIFNOTEQKS                    R2 K4 ["Type"] ; [+6]
       16 GETTABLEKS                       R3 R0 K5 ["type"]
       18 SETTABLEKS                       R3 R1 K4 ["Type"]
       20 JUMP                             ; [+2]
       21 LOADB                            R3 0
       22 RETURN                           R3 1
       23 LOADB                            R3 1
       24 RETURN                           R3 1

PROTO_9:
        0 JUMPIFNOTEQKS                    R2 K0 ["Name"] ; [+6]
        2 GETTABLEKS                       R3 R0 K1 ["name"]
        4 SETTABLEKS                       R3 R1 K0 ["Name"]
        6 JUMP                             ; [+111]
        7 JUMPIFNOTEQKS                    R2 K2 ["Backward"] ; [+6]
        9 GETTABLEKS                       R3 R0 K3 ["backward"]
       11 SETTABLEKS                       R3 R1 K2 ["Backward"]
       13 JUMP                             ; [+104]
       14 JUMPIFNOTEQKS                    R2 K4 ["Down"] ; [+6]
       16 GETTABLEKS                       R3 R0 K5 ["down"]
       18 SETTABLEKS                       R3 R1 K4 ["Down"]
       20 JUMP                             ; [+97]
       21 JUMPIFNOTEQKS                    R2 K6 ["Forward"] ; [+6]
       23 GETTABLEKS                       R3 R0 K7 ["forward"]
       25 SETTABLEKS                       R3 R1 K6 ["Forward"]
       27 JUMP                             ; [+90]
       28 JUMPIFNOTEQKS                    R2 K8 ["KeyCode"] ; [+6]
       30 GETTABLEKS                       R3 R0 K9 ["keyCode"]
       32 SETTABLEKS                       R3 R1 K8 ["KeyCode"]
       34 JUMP                             ; [+83]
       35 JUMPIFNOTEQKS                    R2 K10 ["Left"] ; [+6]
       37 GETTABLEKS                       R3 R0 K11 ["left"]
       39 SETTABLEKS                       R3 R1 K10 ["Left"]
       41 JUMP                             ; [+76]
       42 JUMPIFNOTEQKS                    R2 K12 ["PressedThreshold"] ; [+6]
       44 GETTABLEKS                       R3 R0 K13 ["pressedThreshold"]
       46 SETTABLEKS                       R3 R1 K12 ["PressedThreshold"]
       48 JUMP                             ; [+69]
       49 JUMPIFNOTEQKS                    R2 K14 ["PrimaryModifier"] ; [+6]
       51 GETTABLEKS                       R3 R0 K15 ["primaryModifier"]
       53 SETTABLEKS                       R3 R1 K14 ["PrimaryModifier"]
       55 JUMP                             ; [+62]
       56 JUMPIFNOTEQKS                    R2 K16 ["ReleasedThreshold"] ; [+6]
       58 GETTABLEKS                       R3 R0 K17 ["releasedThreshold"]
       60 SETTABLEKS                       R3 R1 K16 ["ReleasedThreshold"]
       62 JUMP                             ; [+55]
       63 JUMPIFNOTEQKS                    R2 K18 ["ResponseCurve"] ; [+6]
       65 GETTABLEKS                       R3 R0 K19 ["responseCurve"]
       67 SETTABLEKS                       R3 R1 K18 ["ResponseCurve"]
       69 JUMP                             ; [+48]
       70 JUMPIFNOTEQKS                    R2 K20 ["Right"] ; [+6]
       72 GETTABLEKS                       R3 R0 K21 ["right"]
       74 SETTABLEKS                       R3 R1 K20 ["Right"]
       76 JUMP                             ; [+41]
       77 JUMPIFNOTEQKS                    R2 K22 ["Scale"] ; [+6]
       79 GETTABLEKS                       R3 R0 K23 ["scale"]
       81 SETTABLEKS                       R3 R1 K22 ["Scale"]
       83 JUMP                             ; [+34]
       84 JUMPIFNOTEQKS                    R2 K24 ["SecondaryModifier"] ; [+6]
       86 GETTABLEKS                       R3 R0 K25 ["secondaryModifier"]
       88 SETTABLEKS                       R3 R1 K24 ["SecondaryModifier"]
       90 JUMP                             ; [+27]
       91 JUMPIFNOTEQKS                    R2 K26 ["UIButton"] ; [+3]
       93 LOADB                            R3 0
       94 RETURN                           R3 1
       95 JUMPIFNOTEQKS                    R2 K27 ["Up"] ; [+6]
       97 GETTABLEKS                       R3 R0 K28 ["up"]
       99 SETTABLEKS                       R3 R1 K27 ["Up"]
      101 JUMP                             ; [+16]
      102 JUMPIFNOTEQKS                    R2 K29 ["Vector2Scale"] ; [+6]
      104 GETTABLEKS                       R3 R0 K30 ["vector2Scale"]
      106 SETTABLEKS                       R3 R1 K29 ["Vector2Scale"]
      108 JUMP                             ; [+9]
      109 JUMPIFNOTEQKS                    R2 K31 ["Vector3Scale"] ; [+6]
      111 GETTABLEKS                       R3 R0 K32 ["vector3Scale"]
      113 SETTABLEKS                       R3 R1 K31 ["Vector3Scale"]
      115 JUMP                             ; [+2]
      116 LOADB                            R3 0
      117 RETURN                           R3 1
      118 LOADB                            R3 1
      119 RETURN                           R3 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETUPVAL                         R8 1
        5 GETTABLEKS                       R7 R8 K0 ["deserializeContextProperty"]
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
        4 GETUPVAL                         R8 1
        5 GETTABLEKS                       R7 R8 K0 ["deserializeActionProperty"]
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
        4 GETUPVAL                         R8 1
        5 GETTABLEKS                       R7 R8 K0 ["deserializeBindingProperty"]
        7 MOVE                             R8 R0
        8 MOVE                             R9 R1
        9 MOVE                             R10 R6
       10 CALL                             R7 3 0
       11 FORGLOOP                         R2 2 ; [-8]
       13 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 16 0
       16 NEWTABLE                         R3 0 4
       18 LOADK                            R4 K8 ["Name"]
       19 LOADK                            R5 K9 ["Enabled"]
       20 LOADK                            R6 K10 ["Priority"]
       21 LOADK                            R7 K11 ["Sink"]
       22 SETLIST                          R3 R4 4 [1]
       24 NEWTABLE                         R4 0 3
       26 LOADK                            R5 K8 ["Name"]
       27 LOADK                            R6 K9 ["Enabled"]
       28 LOADK                            R7 K12 ["Type"]
       29 SETLIST                          R4 R5 3 [1]
       31 NEWTABLE                         R5 0 17
       33 LOADK                            R6 K8 ["Name"]
       34 LOADK                            R7 K13 ["Backward"]
       35 LOADK                            R8 K14 ["Down"]
       36 LOADK                            R9 K15 ["Forward"]
       37 LOADK                            R10 K16 ["KeyCode"]
       38 LOADK                            R11 K17 ["Left"]
       39 LOADK                            R12 K18 ["PressedThreshold"]
       40 LOADK                            R13 K19 ["PrimaryModifier"]
       41 LOADK                            R14 K20 ["ReleasedThreshold"]
       42 LOADK                            R15 K21 ["ResponseCurve"]
       43 LOADK                            R16 K22 ["Right"]
       44 LOADK                            R17 K23 ["Scale"]
       45 LOADK                            R18 K24 ["SecondaryModifier"]
       46 LOADK                            R19 K25 ["UIButton"]
       47 LOADK                            R20 K26 ["Up"]
       48 LOADK                            R21 K27 ["Vector2Scale"]
       49 SETLIST                          R5 R6 16 [1]
       51 LOADK                            R6 K28 ["Vector3Scale"]
       52 SETLIST                          R5 R6 1 [17]
       54 DUPCLOSURE                       R6 K29 [PROTO_0]
       55 DUPCLOSURE                       R7 K30 [PROTO_1]
       56 SETTABLEKS                       R7 R2 K31 ["serializeContextProperty"]
       58 DUPCLOSURE                       R7 K32 [PROTO_2]
       59 SETTABLEKS                       R7 R2 K33 ["serializeActionProperty"]
       61 DUPCLOSURE                       R7 K34 [PROTO_3]
       62 SETTABLEKS                       R7 R2 K35 ["serializeBindingProperty"]
       64 DUPCLOSURE                       R7 K36 [PROTO_4]
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R2
       67 SETTABLEKS                       R7 R2 K37 ["serializeContext"]
       69 DUPCLOSURE                       R7 K38 [PROTO_5]
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R2
       72 SETTABLEKS                       R7 R2 K39 ["serializeAction"]
       74 DUPCLOSURE                       R7 K40 [PROTO_6]
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R2
       77 SETTABLEKS                       R7 R2 K41 ["serializeBinding"]
       79 DUPCLOSURE                       R7 K42 [PROTO_7]
       80 SETTABLEKS                       R7 R2 K43 ["deserializeContextProperty"]
       82 DUPCLOSURE                       R7 K44 [PROTO_8]
       83 SETTABLEKS                       R7 R2 K45 ["deserializeActionProperty"]
       85 DUPCLOSURE                       R7 K46 [PROTO_9]
       86 SETTABLEKS                       R7 R2 K47 ["deserializeBindingProperty"]
       88 DUPCLOSURE                       R7 K48 [PROTO_10]
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R2
       91 SETTABLEKS                       R7 R2 K49 ["deserializeContext"]
       93 DUPCLOSURE                       R7 K50 [PROTO_11]
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R2
       96 SETTABLEKS                       R7 R2 K51 ["deserializeAction"]
       98 DUPCLOSURE                       R7 K52 [PROTO_12]
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R2
      101 SETTABLEKS                       R7 R2 K53 ["deserializeBinding"]
      103 SETTABLEKS                       R3 R2 K54 ["CONTEXT_PROPERTIES"]
      105 SETTABLEKS                       R4 R2 K55 ["ACTION_PROPERTIES"]
      107 SETTABLEKS                       R5 R2 K56 ["BINDING_PROPERTIES"]
      109 RETURN                           R2 1
