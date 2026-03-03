PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["connectionsByUuid"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFNOT                        R1 ; [+14]
        5 MOVE                             R2 R1
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 NAMECALL                         R7 R6 K1 ["Disconnect"]
       11 CALL                             R7 1 0
       12 FORGLOOP                         R2 2 ; [-4]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K0 ["connectionsByUuid"]
       17 LOADNIL                          R3
       18 SETTABLE                         R3 R2 R0
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["connectionsByUuid"]
        3 GETTABLE                         R2 R3 R0
        4 JUMPIF                           R2 ; [+6]
        5 NEWTABLE                         R2 0 0
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K0 ["connectionsByUuid"]
       10 SETTABLE                         R2 R3 R0
       11 FASTCALL2                        TABLE_INSERT R2 R1 ; [+5]
       13 MOVE                             R4 R2
       14 MOVE                             R5 R1
       15 GETIMPORT                        R3 K3 [table.insert]
       17 CALL                             R3 2 0
       18 RETURN                           R1 1

PROTO_2:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 DUPTABLE                         R1 K2 [{"name", "uuid"}]
        4 GETTABLEKS                       R2 R0 K3 ["Name"]
        6 SETTABLEKS                       R2 R1 K0 ["name"]
        8 GETTABLEKS                       R2 R0 K4 ["UniqueId"]
       10 SETTABLEKS                       R2 R1 K1 ["uuid"]
       12 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["listenersConnected"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 LOADK                            R2 K1 ["UpdateContexts"]
        7 NAMECALL                         R0 R0 K2 ["FireGuest"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["listenersConnected"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 LOADK                            R2 K1 ["UpdateActions"]
        7 NAMECALL                         R0 R0 K2 ["FireGuest"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["listenersConnected"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 LOADK                            R2 K1 ["UpdateBindings"]
        7 NAMECALL                         R0 R0 K2 ["FireGuest"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["Name"]
        2 SETTABLEKS                       R2 R1 K1 ["name"]
        4 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["Enabled"]
        2 SETTABLEKS                       R2 R1 K1 ["enabled"]
        4 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["Priority"]
        2 SETTABLEKS                       R2 R1 K1 ["priority"]
        4 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["Sink"]
        2 SETTABLEKS                       R2 R1 K1 ["sink"]
        4 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["Name"]
        2 SETTABLEKS                       R2 R1 K1 ["name"]
        4 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["Enabled"]
        2 SETTABLEKS                       R2 R1 K1 ["enabled"]
        4 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["Type"]
        2 SETTABLEKS                       R2 R1 K1 ["type"]
        4 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["Name"]
        2 SETTABLEKS                       R2 R1 K1 ["name"]
        4 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["Backward"]
        2 SETTABLEKS                       R2 R1 K1 ["backward"]
        4 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R2 R0 K0 ["Down"]
        2 SETTABLEKS                       R2 R1 K1 ["down"]
        4 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R2 R0 K0 ["Forward"]
        2 SETTABLEKS                       R2 R1 K1 ["forward"]
        4 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R2 R0 K0 ["KeyCode"]
        2 SETTABLEKS                       R2 R1 K1 ["keyCode"]
        4 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R2 R0 K0 ["Left"]
        2 SETTABLEKS                       R2 R1 K1 ["left"]
        4 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R2 R0 K0 ["PressedThreshold"]
        2 SETTABLEKS                       R2 R1 K1 ["pressedThreshold"]
        4 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R2 R0 K0 ["PrimaryModifier"]
        2 SETTABLEKS                       R2 R1 K1 ["primaryModifier"]
        4 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R2 R0 K0 ["ReleasedThreshold"]
        2 SETTABLEKS                       R2 R1 K1 ["releasedThreshold"]
        4 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R2 R0 K0 ["ResponseCurve"]
        2 SETTABLEKS                       R2 R1 K1 ["responseCurve"]
        4 RETURN                           R0 0

PROTO_23:
        0 GETTABLEKS                       R2 R0 K0 ["Right"]
        2 SETTABLEKS                       R2 R1 K1 ["right"]
        4 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R2 R0 K0 ["Scale"]
        2 SETTABLEKS                       R2 R1 K1 ["scale"]
        4 RETURN                           R0 0

PROTO_25:
        0 GETTABLEKS                       R2 R0 K0 ["SecondaryModifier"]
        2 SETTABLEKS                       R2 R1 K1 ["secondaryModifier"]
        4 RETURN                           R0 0

PROTO_26:
        0 GETTABLEKS                       R3 R0 K0 ["UIButton"]
        2 JUMPIF                           R3 ; [+2]
        3 LOADNIL                          R2
        4 JUMP                             ; [+9]
        5 DUPTABLE                         R2 K3 [{"name", "uuid"}]
        6 GETTABLEKS                       R4 R3 K4 ["Name"]
        8 SETTABLEKS                       R4 R2 K1 ["name"]
       10 GETTABLEKS                       R4 R3 K5 ["UniqueId"]
       12 SETTABLEKS                       R4 R2 K2 ["uuid"]
       14 SETTABLEKS                       R2 R1 K6 ["uiButton"]
       16 RETURN                           R0 0

PROTO_27:
        0 GETTABLEKS                       R2 R0 K0 ["Up"]
        2 SETTABLEKS                       R2 R1 K1 ["up"]
        4 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R2 R0 K0 ["Vector2Scale"]
        2 SETTABLEKS                       R2 R1 K1 ["vector2Scale"]
        4 RETURN                           R0 0

PROTO_29:
        0 GETTABLEKS                       R2 R0 K0 ["Vector3Scale"]
        2 SETTABLEKS                       R2 R1 K1 ["vector3Scale"]
        4 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["inputBindings"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R2 R3 K1 ["UIButton"]
        8 JUMPIF                           R2 ; [+2]
        9 LOADNIL                          R1
       10 JUMP                             ; [+9]
       11 DUPTABLE                         R1 K4 [{"name", "uuid"}]
       12 GETTABLEKS                       R3 R2 K5 ["Name"]
       14 SETTABLEKS                       R3 R1 K2 ["name"]
       16 GETTABLEKS                       R3 R2 K6 ["UniqueId"]
       18 SETTABLEKS                       R3 R1 K3 ["uuid"]
       20 SETTABLEKS                       R1 R0 K7 ["uiButton"]
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R0 R1 K8 ["listenersConnected"]
       25 JUMPIF                           R0 ; [+1]
       26 RETURN                           R0 0
       27 GETUPVAL                         R0 3
       28 LOADK                            R2 K9 ["UpdateBindings"]
       29 NAMECALL                         R0 R0 K10 ["FireGuest"]
       31 CALL                             R0 2 0
       32 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["inputBindings"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R2 R3 K1 ["UIButton"]
        8 JUMPIF                           R2 ; [+2]
        9 LOADNIL                          R1
       10 JUMP                             ; [+9]
       11 DUPTABLE                         R1 K4 [{"name", "uuid"}]
       12 GETTABLEKS                       R3 R2 K5 ["Name"]
       14 SETTABLEKS                       R3 R1 K2 ["name"]
       16 GETTABLEKS                       R3 R2 K6 ["UniqueId"]
       18 SETTABLEKS                       R3 R1 K3 ["uuid"]
       20 SETTABLEKS                       R1 R0 K7 ["uiButton"]
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R0 R1 K8 ["listenersConnected"]
       25 JUMPIF                           R0 ; [+1]
       26 RETURN                           R0 0
       27 GETUPVAL                         R0 3
       28 LOADK                            R2 K9 ["UpdateBindings"]
       29 NAMECALL                         R0 R0 K10 ["FireGuest"]
       31 CALL                             R0 2 0
       32 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K0 ["inputBindings"]
        7 GETUPVAL                         R4 2
        8 GETTABLE                         R2 R3 R4
        9 JUMPIFNOT                        R2 ; [+89]
       10 JUMPIFNOTEQKS                    R0 K1 ["UIButton"] ; [+30]
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R5 R6 K0 ["inputBindings"]
       15 GETUPVAL                         R6 2
       16 GETTABLE                         R4 R5 R6
       17 GETTABLEKS                       R3 R4 K2 ["uiButton"]
       19 JUMPIFNOT                        R3 ; [+21]
       20 GETTABLEKS                       R4 R3 K3 ["uuid"]
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R6 R7 K4 ["connectionsByUuid"]
       25 GETTABLE                         R5 R6 R4
       26 JUMPIFNOT                        R5 ; [+14]
       27 MOVE                             R6 R5
       28 LOADNIL                          R7
       29 LOADNIL                          R8
       30 FORGPREP                         R6
       31 NAMECALL                         R11 R10 K5 ["Disconnect"]
       33 CALL                             R11 1 0
       34 FORGLOOP                         R6 2 ; [-4]
       36 GETUPVAL                         R7 1
       37 GETTABLEKS                       R6 R7 K4 ["connectionsByUuid"]
       39 LOADNIL                          R7
       40 SETTABLE                         R7 R6 R4
       41 MOVE                             R3 R1
       42 GETUPVAL                         R4 3
       43 MOVE                             R5 R2
       44 CALL                             R3 2 0
       45 JUMPIFNOTEQKS                    R0 K1 ["UIButton"] ; [+43]
       47 GETUPVAL                         R4 3
       48 GETTABLEKS                       R3 R4 K1 ["UIButton"]
       50 JUMPIFNOT                        R3 ; [+38]
       51 GETUPVAL                         R5 3
       52 GETTABLEKS                       R4 R5 K1 ["UIButton"]
       54 GETTABLEKS                       R3 R4 K6 ["UniqueId"]
       56 GETUPVAL                         R5 3
       57 GETTABLEKS                       R4 R5 K1 ["UIButton"]
       59 LOADK                            R6 K7 ["Name"]
       60 NAMECALL                         R4 R4 K8 ["GetPropertyChangedSignal"]
       62 CALL                             R4 2 1
       63 NEWCLOSURE                       R6 P0
       64 CAPTURE                          UPVAL U1
       65 CAPTURE                          UPVAL U2
       66 CAPTURE                          UPVAL U3
       67 CAPTURE                          UPVAL U4
       68 NAMECALL                         R4 R4 K9 ["Connect"]
       70 CALL                             R4 2 1
       71 GETUPVAL                         R7 1
       72 GETTABLEKS                       R6 R7 K4 ["connectionsByUuid"]
       74 GETTABLE                         R5 R6 R3
       75 JUMPIF                           R5 ; [+6]
       76 NEWTABLE                         R5 0 0
       78 GETUPVAL                         R7 1
       79 GETTABLEKS                       R6 R7 K4 ["connectionsByUuid"]
       81 SETTABLE                         R5 R6 R3
       82 FASTCALL2                        TABLE_INSERT R5 R4 ; [+5]
       84 MOVE                             R7 R5
       85 MOVE                             R8 R4
       86 GETIMPORT                        R6 K12 [table.insert]
       88 CALL                             R6 2 0
       89 GETUPVAL                         R4 1
       90 GETTABLEKS                       R3 R4 K13 ["listenersConnected"]
       92 JUMPIF                           R3 ; [+1]
       93 RETURN                           R0 0
       94 GETUPVAL                         R3 4
       95 LOADK                            R5 K14 ["UpdateBindings"]
       96 NAMECALL                         R3 R3 K15 ["FireGuest"]
       98 CALL                             R3 2 0
       99 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["inputActions"]
        3 GETTABLEKS                       R4 R0 K1 ["UniqueId"]
        5 GETTABLE                         R2 R3 R4
        6 FASTCALL2K                       ASSERT R2 K2 ; [+4]
        8 LOADK                            R3 K2 ["Action not found in state"]
        9 GETIMPORT                        R1 K4 [assert]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K0 ["inputActions"]
       15 GETTABLEKS                       R6 R0 K1 ["UniqueId"]
       17 GETTABLE                         R4 R5 R6
       18 GETTABLEKS                       R1 R4 K5 ["bindings"]
       20 LOADNIL                          R2
       21 LOADNIL                          R3
       22 FORGPREP                         R1
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R7 R8 K6 ["connectionsByUuid"]
       26 GETTABLE                         R6 R7 R5
       27 JUMPIFNOT                        R6 ; [+14]
       28 MOVE                             R7 R6
       29 LOADNIL                          R8
       30 LOADNIL                          R9
       31 FORGPREP                         R7
       32 NAMECALL                         R12 R11 K7 ["Disconnect"]
       34 CALL                             R12 1 0
       35 FORGLOOP                         R7 2 ; [-4]
       37 GETUPVAL                         R8 0
       38 GETTABLEKS                       R7 R8 K6 ["connectionsByUuid"]
       40 LOADNIL                          R8
       41 SETTABLE                         R8 R7 R5
       42 GETUPVAL                         R7 0
       43 GETTABLEKS                       R6 R7 K8 ["inputBindings"]
       45 LOADNIL                          R7
       46 SETTABLE                         R7 R6 R5
       47 FORGLOOP                         R1 2 ; [-25]
       49 GETUPVAL                         R3 0
       50 GETTABLEKS                       R2 R3 K0 ["inputActions"]
       52 GETTABLEKS                       R3 R0 K1 ["UniqueId"]
       54 GETTABLE                         R1 R2 R3
       55 NEWTABLE                         R2 0 0
       57 SETTABLEKS                       R2 R1 K5 ["bindings"]
       59 NAMECALL                         R1 R0 K9 ["GetInputBindings"]
       61 CALL                             R1 1 3
       62 FORGPREP                         R1
       63 GETTABLEKS                       R6 R5 K1 ["UniqueId"]
       65 GETUPVAL                         R8 0
       66 GETTABLEKS                       R7 R8 K8 ["inputBindings"]
       68 GETTABLEKS                       R8 R5 K1 ["UniqueId"]
       70 DUPTABLE                         R9 K28 [{"name", "backward", "down", "forward", "keyCode", "left", "pressedThreshold", "primaryModifier", "releasedThreshold", "responseCurve", "right", "scale", "secondaryModifier", "uiButton", "up", "uuid", "vector2Scale", "vector3Scale"}]
       71 GETTABLEKS                       R10 R5 K29 ["Name"]
       73 SETTABLEKS                       R10 R9 K10 ["name"]
       75 GETTABLEKS                       R10 R5 K30 ["Backward"]
       77 SETTABLEKS                       R10 R9 K11 ["backward"]
       79 GETTABLEKS                       R10 R5 K31 ["Down"]
       81 SETTABLEKS                       R10 R9 K12 ["down"]
       83 GETTABLEKS                       R10 R5 K32 ["Forward"]
       85 SETTABLEKS                       R10 R9 K13 ["forward"]
       87 GETTABLEKS                       R10 R5 K33 ["KeyCode"]
       89 SETTABLEKS                       R10 R9 K14 ["keyCode"]
       91 GETTABLEKS                       R10 R5 K34 ["Left"]
       93 SETTABLEKS                       R10 R9 K15 ["left"]
       95 GETTABLEKS                       R10 R5 K35 ["PressedThreshold"]
       97 SETTABLEKS                       R10 R9 K16 ["pressedThreshold"]
       99 GETTABLEKS                       R10 R5 K36 ["PrimaryModifier"]
      101 SETTABLEKS                       R10 R9 K17 ["primaryModifier"]
      103 GETTABLEKS                       R10 R5 K37 ["ReleasedThreshold"]
      105 SETTABLEKS                       R10 R9 K18 ["releasedThreshold"]
      107 GETTABLEKS                       R10 R5 K38 ["ResponseCurve"]
      109 SETTABLEKS                       R10 R9 K19 ["responseCurve"]
      111 GETTABLEKS                       R10 R5 K39 ["Right"]
      113 SETTABLEKS                       R10 R9 K20 ["right"]
      115 GETTABLEKS                       R10 R5 K40 ["Scale"]
      117 SETTABLEKS                       R10 R9 K21 ["scale"]
      119 GETTABLEKS                       R10 R5 K41 ["SecondaryModifier"]
      121 SETTABLEKS                       R10 R9 K22 ["secondaryModifier"]
      123 GETTABLEKS                       R11 R5 K42 ["UIButton"]
      125 JUMPIF                           R11 ; [+2]
      126 LOADNIL                          R10
      127 JUMP                             ; [+9]
      128 DUPTABLE                         R10 K43 [{"name", "uuid"}]
      129 GETTABLEKS                       R12 R11 K29 ["Name"]
      131 SETTABLEKS                       R12 R10 K10 ["name"]
      133 GETTABLEKS                       R12 R11 K1 ["UniqueId"]
      135 SETTABLEKS                       R12 R10 K25 ["uuid"]
      137 SETTABLEKS                       R10 R9 K23 ["uiButton"]
      139 GETTABLEKS                       R10 R5 K44 ["Up"]
      141 SETTABLEKS                       R10 R9 K24 ["up"]
      143 SETTABLEKS                       R6 R9 K25 ["uuid"]
      145 GETTABLEKS                       R10 R5 K45 ["Vector2Scale"]
      147 SETTABLEKS                       R10 R9 K26 ["vector2Scale"]
      149 GETTABLEKS                       R10 R5 K46 ["Vector3Scale"]
      151 SETTABLEKS                       R10 R9 K27 ["vector3Scale"]
      153 SETTABLE                         R9 R7 R8
      154 GETTABLEKS                       R7 R5 K42 ["UIButton"]
      156 JUMPIFNOT                        R7 ; [+36]
      157 GETTABLEKS                       R8 R5 K42 ["UIButton"]
      159 GETTABLEKS                       R7 R8 K1 ["UniqueId"]
      161 GETTABLEKS                       R8 R5 K42 ["UIButton"]
      163 LOADK                            R10 K29 ["Name"]
      164 NAMECALL                         R8 R8 K47 ["GetPropertyChangedSignal"]
      166 CALL                             R8 2 1
      167 NEWCLOSURE                       R10 P0
      168 CAPTURE                          UPVAL U0
      169 CAPTURE                          VAL R6
      170 CAPTURE                          VAL R5
      171 CAPTURE                          UPVAL U1
      172 NAMECALL                         R8 R8 K48 ["Connect"]
      174 CALL                             R8 2 1
      175 GETUPVAL                         R11 0
      176 GETTABLEKS                       R10 R11 K6 ["connectionsByUuid"]
      178 GETTABLE                         R9 R10 R7
      179 JUMPIF                           R9 ; [+6]
      180 NEWTABLE                         R9 0 0
      182 GETUPVAL                         R11 0
      183 GETTABLEKS                       R10 R11 K6 ["connectionsByUuid"]
      185 SETTABLE                         R9 R10 R7
      186 FASTCALL2                        TABLE_INSERT R9 R8 ; [+5]
      188 MOVE                             R11 R9
      189 MOVE                             R12 R8
      190 GETIMPORT                        R10 K51 [table.insert]
      192 CALL                             R10 2 0
      193 GETTABLEKS                       R7 R5 K52 ["Changed"]
      195 NEWCLOSURE                       R9 P1
      196 CAPTURE                          UPVAL U2
      197 CAPTURE                          UPVAL U0
      198 CAPTURE                          VAL R6
      199 CAPTURE                          VAL R5
      200 CAPTURE                          UPVAL U1
      201 NAMECALL                         R7 R7 K48 ["Connect"]
      203 CALL                             R7 2 1
      204 GETUPVAL                         R10 0
      205 GETTABLEKS                       R9 R10 K6 ["connectionsByUuid"]
      207 GETTABLE                         R8 R9 R6
      208 JUMPIF                           R8 ; [+6]
      209 NEWTABLE                         R8 0 0
      211 GETUPVAL                         R10 0
      212 GETTABLEKS                       R9 R10 K6 ["connectionsByUuid"]
      214 SETTABLE                         R8 R9 R6
      215 FASTCALL2                        TABLE_INSERT R8 R7 ; [+5]
      217 MOVE                             R10 R8
      218 MOVE                             R11 R7
      219 GETIMPORT                        R9 K51 [table.insert]
      221 CALL                             R9 2 0
      222 GETUPVAL                         R11 0
      223 GETTABLEKS                       R10 R11 K0 ["inputActions"]
      225 GETTABLEKS                       R11 R0 K1 ["UniqueId"]
      227 GETTABLE                         R9 R10 R11
      228 GETTABLEKS                       R8 R9 K5 ["bindings"]
      230 FASTCALL2                        TABLE_INSERT R8 R6 ; [+4]
      232 MOVE                             R9 R6
      233 GETIMPORT                        R7 K51 [table.insert]
      235 CALL                             R7 2 0
      236 FORGLOOP                         R1 2 ; [-174]
      238 GETUPVAL                         R2 0
      239 GETTABLEKS                       R1 R2 K53 ["listenersConnected"]
      241 JUMPIF                           R1 ; [+1]
      242 JUMP                             ; [+5]
      243 GETUPVAL                         R1 1
      244 LOADK                            R3 K54 ["UpdateBindings"]
      245 NAMECALL                         R1 R1 K55 ["FireGuest"]
      247 CALL                             R1 2 0
      248 GETUPVAL                         R2 0
      249 GETTABLEKS                       R1 R2 K53 ["listenersConnected"]
      251 JUMPIF                           R1 ; [+1]
      252 RETURN                           R0 0
      253 GETUPVAL                         R1 1
      254 LOADK                            R3 K56 ["UpdateActions"]
      255 NAMECALL                         R1 R1 K55 ["FireGuest"]
      257 CALL                             R1 2 0
      258 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R1 2
        4 GETTABLEKS                       R0 R1 K0 ["listenersConnected"]
        6 JUMPIF                           R0 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 3
        9 LOADK                            R2 K1 ["UpdateActions"]
       10 NAMECALL                         R0 R0 K2 ["FireGuest"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K0 ["inputActions"]
        7 GETUPVAL                         R4 2
        8 GETTABLE                         R2 R3 R4
        9 JUMPIFNOT                        R2 ; [+14]
       10 MOVE                             R3 R1
       11 GETUPVAL                         R4 3
       12 MOVE                             R5 R2
       13 CALL                             R3 2 0
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R3 R4 K1 ["listenersConnected"]
       17 JUMPIF                           R3 ; [+1]
       18 RETURN                           R0 0
       19 GETUPVAL                         R3 4
       20 LOADK                            R5 K2 ["UpdateActions"]
       21 NAMECALL                         R3 R3 K3 ["FireGuest"]
       23 CALL                             R3 2 0
       24 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["inputContexts"]
        3 GETTABLEKS                       R4 R0 K1 ["UniqueId"]
        5 GETTABLE                         R2 R3 R4
        6 FASTCALL2K                       ASSERT R2 K2 ; [+4]
        8 LOADK                            R3 K2 ["Context not found in state"]
        9 GETIMPORT                        R1 K4 [assert]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K0 ["inputContexts"]
       15 GETTABLEKS                       R6 R0 K1 ["UniqueId"]
       17 GETTABLE                         R4 R5 R6
       18 GETTABLEKS                       R1 R4 K5 ["actions"]
       20 LOADNIL                          R2
       21 LOADNIL                          R3
       22 FORGPREP                         R1
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R7 R8 K6 ["connectionsByUuid"]
       26 GETTABLE                         R6 R7 R5
       27 JUMPIFNOT                        R6 ; [+14]
       28 MOVE                             R7 R6
       29 LOADNIL                          R8
       30 LOADNIL                          R9
       31 FORGPREP                         R7
       32 NAMECALL                         R12 R11 K7 ["Disconnect"]
       34 CALL                             R12 1 0
       35 FORGLOOP                         R7 2 ; [-4]
       37 GETUPVAL                         R8 0
       38 GETTABLEKS                       R7 R8 K6 ["connectionsByUuid"]
       40 LOADNIL                          R8
       41 SETTABLE                         R8 R7 R5
       42 GETUPVAL                         R9 0
       43 GETTABLEKS                       R8 R9 K8 ["inputActions"]
       45 GETTABLE                         R7 R8 R5
       46 FASTCALL2K                       ASSERT R7 K9 ; [+4]
       48 LOADK                            R8 K9 ["Action not found in state"]
       49 GETIMPORT                        R6 K4 [assert]
       51 CALL                             R6 2 0
       52 GETUPVAL                         R11 0
       53 GETTABLEKS                       R10 R11 K8 ["inputActions"]
       55 GETTABLE                         R9 R10 R5
       56 GETTABLEKS                       R6 R9 K10 ["bindings"]
       58 LOADNIL                          R7
       59 LOADNIL                          R8
       60 FORGPREP                         R6
       61 GETUPVAL                         R13 0
       62 GETTABLEKS                       R12 R13 K6 ["connectionsByUuid"]
       64 GETTABLE                         R11 R12 R10
       65 JUMPIFNOT                        R11 ; [+14]
       66 MOVE                             R12 R11
       67 LOADNIL                          R13
       68 LOADNIL                          R14
       69 FORGPREP                         R12
       70 NAMECALL                         R17 R16 K7 ["Disconnect"]
       72 CALL                             R17 1 0
       73 FORGLOOP                         R12 2 ; [-4]
       75 GETUPVAL                         R13 0
       76 GETTABLEKS                       R12 R13 K6 ["connectionsByUuid"]
       78 LOADNIL                          R13
       79 SETTABLE                         R13 R12 R10
       80 GETUPVAL                         R12 0
       81 GETTABLEKS                       R11 R12 K11 ["inputBindings"]
       83 LOADNIL                          R12
       84 SETTABLE                         R12 R11 R10
       85 FORGLOOP                         R6 2 ; [-25]
       87 GETUPVAL                         R7 0
       88 GETTABLEKS                       R6 R7 K8 ["inputActions"]
       90 LOADNIL                          R7
       91 SETTABLE                         R7 R6 R5
       92 FORGLOOP                         R1 2 ; [-70]
       94 GETUPVAL                         R3 0
       95 GETTABLEKS                       R2 R3 K0 ["inputContexts"]
       97 GETTABLEKS                       R3 R0 K1 ["UniqueId"]
       99 GETTABLE                         R1 R2 R3
      100 NEWTABLE                         R2 0 0
      102 SETTABLEKS                       R2 R1 K5 ["actions"]
      104 NAMECALL                         R1 R0 K12 ["GetInputActions"]
      106 CALL                             R1 1 3
      107 FORGPREP                         R1
      108 GETTABLEKS                       R6 R5 K1 ["UniqueId"]
      110 GETUPVAL                         R8 0
      111 GETTABLEKS                       R7 R8 K8 ["inputActions"]
      113 GETTABLEKS                       R8 R5 K1 ["UniqueId"]
      115 DUPTABLE                         R9 K17 [{"name", "enabled", "type", "uuid", "bindings"}]
      116 GETTABLEKS                       R10 R5 K18 ["Name"]
      118 SETTABLEKS                       R10 R9 K13 ["name"]
      120 GETTABLEKS                       R10 R5 K19 ["Enabled"]
      122 SETTABLEKS                       R10 R9 K14 ["enabled"]
      124 GETTABLEKS                       R10 R5 K20 ["Type"]
      126 SETTABLEKS                       R10 R9 K15 ["type"]
      128 GETTABLEKS                       R10 R5 K1 ["UniqueId"]
      130 SETTABLEKS                       R10 R9 K16 ["uuid"]
      132 NEWTABLE                         R10 0 0
      134 SETTABLEKS                       R10 R9 K10 ["bindings"]
      136 SETTABLE                         R9 R7 R8
      137 GETUPVAL                         R7 1
      138 MOVE                             R8 R5
      139 CALL                             R7 1 0
      140 GETTABLEKS                       R7 R5 K21 ["InputBindingsChanged"]
      142 NEWCLOSURE                       R9 P0
      143 CAPTURE                          UPVAL U1
      144 CAPTURE                          VAL R5
      145 CAPTURE                          UPVAL U0
      146 CAPTURE                          UPVAL U2
      147 NAMECALL                         R7 R7 K22 ["Connect"]
      149 CALL                             R7 2 1
      150 GETUPVAL                         R10 0
      151 GETTABLEKS                       R9 R10 K6 ["connectionsByUuid"]
      153 GETTABLE                         R8 R9 R6
      154 JUMPIF                           R8 ; [+6]
      155 NEWTABLE                         R8 0 0
      157 GETUPVAL                         R10 0
      158 GETTABLEKS                       R9 R10 K6 ["connectionsByUuid"]
      160 SETTABLE                         R8 R9 R6
      161 FASTCALL2                        TABLE_INSERT R8 R7 ; [+5]
      163 MOVE                             R10 R8
      164 MOVE                             R11 R7
      165 GETIMPORT                        R9 K25 [table.insert]
      167 CALL                             R9 2 0
      168 GETTABLEKS                       R7 R5 K26 ["Changed"]
      170 NEWCLOSURE                       R9 P1
      171 CAPTURE                          UPVAL U3
      172 CAPTURE                          UPVAL U0
      173 CAPTURE                          VAL R6
      174 CAPTURE                          VAL R5
      175 CAPTURE                          UPVAL U2
      176 NAMECALL                         R7 R7 K22 ["Connect"]
      178 CALL                             R7 2 1
      179 GETUPVAL                         R10 0
      180 GETTABLEKS                       R9 R10 K6 ["connectionsByUuid"]
      182 GETTABLE                         R8 R9 R6
      183 JUMPIF                           R8 ; [+6]
      184 NEWTABLE                         R8 0 0
      186 GETUPVAL                         R10 0
      187 GETTABLEKS                       R9 R10 K6 ["connectionsByUuid"]
      189 SETTABLE                         R8 R9 R6
      190 FASTCALL2                        TABLE_INSERT R8 R7 ; [+5]
      192 MOVE                             R10 R8
      193 MOVE                             R11 R7
      194 GETIMPORT                        R9 K25 [table.insert]
      196 CALL                             R9 2 0
      197 GETUPVAL                         R11 0
      198 GETTABLEKS                       R10 R11 K0 ["inputContexts"]
      200 GETTABLEKS                       R11 R0 K1 ["UniqueId"]
      202 GETTABLE                         R9 R10 R11
      203 GETTABLEKS                       R8 R9 K5 ["actions"]
      205 FASTCALL2                        TABLE_INSERT R8 R6 ; [+4]
      207 MOVE                             R9 R6
      208 GETIMPORT                        R7 K25 [table.insert]
      210 CALL                             R7 2 0
      211 FORGLOOP                         R1 2 ; [-104]
      213 GETUPVAL                         R2 0
      214 GETTABLEKS                       R1 R2 K27 ["listenersConnected"]
      216 JUMPIF                           R1 ; [+1]
      217 JUMP                             ; [+5]
      218 GETUPVAL                         R1 2
      219 LOADK                            R3 K28 ["UpdateActions"]
      220 NAMECALL                         R1 R1 K29 ["FireGuest"]
      222 CALL                             R1 2 0
      223 GETUPVAL                         R2 0
      224 GETTABLEKS                       R1 R2 K27 ["listenersConnected"]
      226 JUMPIF                           R1 ; [+1]
      227 RETURN                           R0 0
      228 GETUPVAL                         R1 2
      229 LOADK                            R3 K30 ["UpdateContexts"]
      230 NAMECALL                         R1 R1 K29 ["FireGuest"]
      232 CALL                             R1 2 0
      233 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R1 2
        4 GETTABLEKS                       R0 R1 K0 ["listenersConnected"]
        6 JUMPIF                           R0 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 3
        9 LOADK                            R2 K1 ["UpdateContexts"]
       10 NAMECALL                         R0 R0 K2 ["FireGuest"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K0 ["inputContexts"]
        7 GETUPVAL                         R4 2
        8 GETTABLE                         R2 R3 R4
        9 JUMPIFNOT                        R2 ; [+14]
       10 MOVE                             R3 R1
       11 GETUPVAL                         R4 3
       12 MOVE                             R5 R2
       13 CALL                             R3 2 0
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R3 R4 K1 ["listenersConnected"]
       17 JUMPIF                           R3 ; [+1]
       18 RETURN                           R0 0
       19 GETUPVAL                         R3 4
       20 LOADK                            R5 K2 ["UpdateContexts"]
       21 NAMECALL                         R3 R3 K3 ["FireGuest"]
       23 CALL                             R3 2 0
       24 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R0 R3 K0 ["inputContexts"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 GETTABLEKS                       R5 R4 K1 ["uuid"]
        8 GETUPVAL                         R8 0
        9 GETTABLEKS                       R7 R8 K2 ["connectionsByUuid"]
       11 GETTABLE                         R6 R7 R5
       12 JUMPIFNOT                        R6 ; [+14]
       13 MOVE                             R7 R6
       14 LOADNIL                          R8
       15 LOADNIL                          R9
       16 FORGPREP                         R7
       17 NAMECALL                         R12 R11 K3 ["Disconnect"]
       19 CALL                             R12 1 0
       20 FORGLOOP                         R7 2 ; [-4]
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R7 R8 K2 ["connectionsByUuid"]
       25 LOADNIL                          R8
       26 SETTABLE                         R8 R7 R5
       27 FORGLOOP                         R0 2 ; [-22]
       29 GETIMPORT                        R0 K6 [table.clear]
       31 GETUPVAL                         R2 0
       32 GETTABLEKS                       R1 R2 K0 ["inputContexts"]
       34 CALL                             R0 1 0
       35 GETUPVAL                         R0 1
       36 NAMECALL                         R0 R0 K7 ["GetInputContexts"]
       38 CALL                             R0 1 3
       39 FORGPREP                         R0
       40 GETTABLEKS                       R5 R4 K8 ["UniqueId"]
       42 GETUPVAL                         R7 0
       43 GETTABLEKS                       R6 R7 K0 ["inputContexts"]
       45 DUPTABLE                         R7 K14 [{"name", "enabled", "priority", "sink", "uuid", "actions"}]
       46 GETTABLEKS                       R8 R4 K15 ["Name"]
       48 SETTABLEKS                       R8 R7 K9 ["name"]
       50 GETTABLEKS                       R8 R4 K16 ["Enabled"]
       52 SETTABLEKS                       R8 R7 K10 ["enabled"]
       54 GETTABLEKS                       R8 R4 K17 ["Priority"]
       56 SETTABLEKS                       R8 R7 K11 ["priority"]
       58 GETTABLEKS                       R8 R4 K18 ["Sink"]
       60 SETTABLEKS                       R8 R7 K12 ["sink"]
       62 SETTABLEKS                       R5 R7 K1 ["uuid"]
       64 NEWTABLE                         R8 0 0
       66 SETTABLEKS                       R8 R7 K13 ["actions"]
       68 SETTABLE                         R7 R6 R5
       69 GETUPVAL                         R6 2
       70 MOVE                             R7 R4
       71 CALL                             R6 1 0
       72 GETTABLEKS                       R6 R4 K19 ["InputActionsChanged"]
       74 NEWCLOSURE                       R8 P0
       75 CAPTURE                          UPVAL U2
       76 CAPTURE                          VAL R4
       77 CAPTURE                          UPVAL U0
       78 CAPTURE                          UPVAL U3
       79 NAMECALL                         R6 R6 K20 ["Connect"]
       81 CALL                             R6 2 1
       82 GETUPVAL                         R9 0
       83 GETTABLEKS                       R8 R9 K2 ["connectionsByUuid"]
       85 GETTABLE                         R7 R8 R5
       86 JUMPIF                           R7 ; [+6]
       87 NEWTABLE                         R7 0 0
       89 GETUPVAL                         R9 0
       90 GETTABLEKS                       R8 R9 K2 ["connectionsByUuid"]
       92 SETTABLE                         R7 R8 R5
       93 FASTCALL2                        TABLE_INSERT R7 R6 ; [+5]
       95 MOVE                             R9 R7
       96 MOVE                             R10 R6
       97 GETIMPORT                        R8 K22 [table.insert]
       99 CALL                             R8 2 0
      100 GETTABLEKS                       R6 R4 K23 ["Changed"]
      102 NEWCLOSURE                       R8 P1
      103 CAPTURE                          UPVAL U4
      104 CAPTURE                          UPVAL U0
      105 CAPTURE                          VAL R5
      106 CAPTURE                          VAL R4
      107 CAPTURE                          UPVAL U3
      108 NAMECALL                         R6 R6 K20 ["Connect"]
      110 CALL                             R6 2 1
      111 GETUPVAL                         R9 0
      112 GETTABLEKS                       R8 R9 K2 ["connectionsByUuid"]
      114 GETTABLE                         R7 R8 R5
      115 JUMPIF                           R7 ; [+6]
      116 NEWTABLE                         R7 0 0
      118 GETUPVAL                         R9 0
      119 GETTABLEKS                       R8 R9 K2 ["connectionsByUuid"]
      121 SETTABLE                         R7 R8 R5
      122 FASTCALL2                        TABLE_INSERT R7 R6 ; [+5]
      124 MOVE                             R9 R7
      125 MOVE                             R10 R6
      126 GETIMPORT                        R8 K22 [table.insert]
      128 CALL                             R8 2 0
      129 FORGLOOP                         R0 2 ; [-90]
      131 GETUPVAL                         R1 0
      132 GETTABLEKS                       R0 R1 K24 ["listenersConnected"]
      134 JUMPIF                           R0 ; [+1]
      135 RETURN                           R0 0
      136 GETUPVAL                         R0 3
      137 LOADK                            R2 K25 ["UpdateContexts"]
      138 NAMECALL                         R0 R0 K26 ["FireGuest"]
      140 CALL                             R0 2 0
      141 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["inputContexts"]
        3 RETURN                           R1 1

PROTO_41:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["inputActions"]
        3 RETURN                           R1 1

PROTO_42:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["inputBindings"]
        3 RETURN                           R1 1

PROTO_43:
        0 GETUPVAL                         R2 0
        1 SETTABLEKS                       R1 R2 K0 ["listenersConnected"]
        3 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R0 R3 K0 ["connectionsByUuid"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R6 R7 K0 ["connectionsByUuid"]
        9 GETTABLE                         R5 R6 R3
       10 JUMPIFNOT                        R5 ; [+14]
       11 MOVE                             R6 R5
       12 LOADNIL                          R7
       13 LOADNIL                          R8
       14 FORGPREP                         R6
       15 NAMECALL                         R11 R10 K1 ["Disconnect"]
       17 CALL                             R11 1 0
       18 FORGLOOP                         R6 2 ; [-4]
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R6 R7 K0 ["connectionsByUuid"]
       23 LOADNIL                          R7
       24 SETTABLE                         R7 R6 R3
       25 FORGLOOP                         R0 2 ; [-20]
       27 GETIMPORT                        R0 K4 [table.clear]
       29 GETUPVAL                         R2 0
       30 GETTABLEKS                       R1 R2 K0 ["connectionsByUuid"]
       32 CALL                             R0 1 0
       33 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R0 R3 K0 ["connectionsByUuid"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R6 R7 K0 ["connectionsByUuid"]
        9 GETTABLE                         R5 R6 R3
       10 JUMPIFNOT                        R5 ; [+14]
       11 MOVE                             R6 R5
       12 LOADNIL                          R7
       13 LOADNIL                          R8
       14 FORGPREP                         R6
       15 NAMECALL                         R11 R10 K1 ["Disconnect"]
       17 CALL                             R11 1 0
       18 FORGLOOP                         R6 2 ; [-4]
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R6 R7 K0 ["connectionsByUuid"]
       23 LOADNIL                          R7
       24 SETTABLE                         R7 R6 R3
       25 FORGLOOP                         R0 2 ; [-20]
       27 GETIMPORT                        R0 K4 [table.clear]
       29 GETUPVAL                         R2 0
       30 GETTABLEKS                       R1 R2 K0 ["connectionsByUuid"]
       32 CALL                             R0 1 0
       33 GETUPVAL                         R0 1
       34 CALL                             R0 0 0
       35 GETUPVAL                         R0 2
       36 CALL                             R0 0 0
       37 GETUPVAL                         R0 3
       38 CALL                             R0 0 0
       39 GETUPVAL                         R0 4
       40 CALL                             R0 0 0
       41 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R0 R3 K0 ["connectionsByUuid"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R6 R7 K0 ["connectionsByUuid"]
        9 GETTABLE                         R5 R6 R3
       10 JUMPIFNOT                        R5 ; [+14]
       11 MOVE                             R6 R5
       12 LOADNIL                          R7
       13 LOADNIL                          R8
       14 FORGPREP                         R6
       15 NAMECALL                         R11 R10 K1 ["Disconnect"]
       17 CALL                             R11 1 0
       18 FORGLOOP                         R6 2 ; [-4]
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R6 R7 K0 ["connectionsByUuid"]
       23 LOADNIL                          R7
       24 SETTABLE                         R7 R6 R3
       25 FORGLOOP                         R0 2 ; [-20]
       27 GETIMPORT                        R0 K4 [table.clear]
       29 GETUPVAL                         R2 0
       30 GETTABLEKS                       R1 R2 K0 ["connectionsByUuid"]
       32 CALL                             R0 1 0
       33 GETUPVAL                         R0 1
       34 CALL                             R0 0 0
       35 GETUPVAL                         R0 2
       36 CALL                             R0 0 0
       37 GETUPVAL                         R0 3
       38 CALL                             R0 0 0
       39 GETUPVAL                         R0 4
       40 CALL                             R0 0 0
       41 GETIMPORT                        R0 K4 [table.clear]
       43 GETUPVAL                         R2 0
       44 GETTABLEKS                       R1 R2 K5 ["inputContexts"]
       46 CALL                             R0 1 0
       47 GETIMPORT                        R0 K4 [table.clear]
       49 GETUPVAL                         R2 0
       50 GETTABLEKS                       R1 R2 K6 ["inputActions"]
       52 CALL                             R0 1 0
       53 GETIMPORT                        R0 K4 [table.clear]
       55 GETUPVAL                         R2 0
       56 GETTABLEKS                       R1 R2 K7 ["inputBindings"]
       58 CALL                             R0 1 0
       59 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["UniqueId"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K1 ["InputContextsChanged"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          UPVAL U0
       10 NAMECALL                         R1 R1 K2 ["Connect"]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R3 R4 K3 ["connectionsByUuid"]
       16 GETTABLE                         R2 R3 R0
       17 JUMPIF                           R2 ; [+6]
       18 NEWTABLE                         R2 0 0
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R3 R4 K3 ["connectionsByUuid"]
       23 SETTABLE                         R2 R3 R0
       24 FASTCALL2                        TABLE_INSERT R2 R1 ; [+5]
       26 MOVE                             R4 R2
       27 MOVE                             R5 R1
       28 GETIMPORT                        R3 K6 [table.insert]
       30 CALL                             R3 2 0
       31 RETURN                           R0 0

PROTO_49:
        0 DUPTABLE                         R1 K5 [{"listenersConnected", "inputContexts", "inputActions", "inputBindings", "connectionsByUuid"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["listenersConnected"]
        4 NEWTABLE                         R2 0 0
        6 SETTABLEKS                       R2 R1 K1 ["inputContexts"]
        8 NEWTABLE                         R2 0 0
       10 SETTABLEKS                       R2 R1 K2 ["inputActions"]
       12 NEWTABLE                         R2 0 0
       14 SETTABLEKS                       R2 R1 K3 ["inputBindings"]
       16 NEWTABLE                         R2 0 0
       18 SETTABLEKS                       R2 R1 K4 ["connectionsByUuid"]
       20 NEWCLOSURE                       R2 P0
       21 CAPTURE                          VAL R1
       22 NEWCLOSURE                       R3 P1
       23 CAPTURE                          VAL R1
       24 DUPCLOSURE                       R4 K6 [PROTO_2]
       25 NEWCLOSURE                       R5 P3
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R0
       28 NEWCLOSURE                       R6 P4
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R0
       31 NEWCLOSURE                       R7 P5
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R0
       34 DUPTABLE                         R8 K11 [{"Name", "Enabled", "Priority", "Sink"}]
       35 DUPCLOSURE                       R9 K12 [PROTO_6]
       36 SETTABLEKS                       R9 R8 K7 ["Name"]
       38 DUPCLOSURE                       R9 K13 [PROTO_7]
       39 SETTABLEKS                       R9 R8 K8 ["Enabled"]
       41 DUPCLOSURE                       R9 K14 [PROTO_8]
       42 SETTABLEKS                       R9 R8 K9 ["Priority"]
       44 DUPCLOSURE                       R9 K15 [PROTO_9]
       45 SETTABLEKS                       R9 R8 K10 ["Sink"]
       47 DUPTABLE                         R9 K17 [{"Name", "Enabled", "Type"}]
       48 DUPCLOSURE                       R10 K18 [PROTO_10]
       49 SETTABLEKS                       R10 R9 K7 ["Name"]
       51 DUPCLOSURE                       R10 K19 [PROTO_11]
       52 SETTABLEKS                       R10 R9 K8 ["Enabled"]
       54 DUPCLOSURE                       R10 K20 [PROTO_12]
       55 SETTABLEKS                       R10 R9 K16 ["Type"]
       57 DUPTABLE                         R10 K37 [{"Name", "Backward", "Down", "Forward", "KeyCode", "Left", "PressedThreshold", "PrimaryModifier", "ReleasedThreshold", "ResponseCurve", "Right", "Scale", "SecondaryModifier", "UIButton", "Up", "Vector2Scale", "Vector3Scale"}]
       58 DUPCLOSURE                       R11 K38 [PROTO_13]
       59 SETTABLEKS                       R11 R10 K7 ["Name"]
       61 DUPCLOSURE                       R11 K39 [PROTO_14]
       62 SETTABLEKS                       R11 R10 K21 ["Backward"]
       64 DUPCLOSURE                       R11 K40 [PROTO_15]
       65 SETTABLEKS                       R11 R10 K22 ["Down"]
       67 DUPCLOSURE                       R11 K41 [PROTO_16]
       68 SETTABLEKS                       R11 R10 K23 ["Forward"]
       70 DUPCLOSURE                       R11 K42 [PROTO_17]
       71 SETTABLEKS                       R11 R10 K24 ["KeyCode"]
       73 DUPCLOSURE                       R11 K43 [PROTO_18]
       74 SETTABLEKS                       R11 R10 K25 ["Left"]
       76 DUPCLOSURE                       R11 K44 [PROTO_19]
       77 SETTABLEKS                       R11 R10 K26 ["PressedThreshold"]
       79 DUPCLOSURE                       R11 K45 [PROTO_20]
       80 SETTABLEKS                       R11 R10 K27 ["PrimaryModifier"]
       82 DUPCLOSURE                       R11 K46 [PROTO_21]
       83 SETTABLEKS                       R11 R10 K28 ["ReleasedThreshold"]
       85 DUPCLOSURE                       R11 K47 [PROTO_22]
       86 SETTABLEKS                       R11 R10 K29 ["ResponseCurve"]
       88 DUPCLOSURE                       R11 K48 [PROTO_23]
       89 SETTABLEKS                       R11 R10 K30 ["Right"]
       91 DUPCLOSURE                       R11 K49 [PROTO_24]
       92 SETTABLEKS                       R11 R10 K31 ["Scale"]
       94 DUPCLOSURE                       R11 K50 [PROTO_25]
       95 SETTABLEKS                       R11 R10 K32 ["SecondaryModifier"]
       97 DUPCLOSURE                       R11 K51 [PROTO_26]
       98 SETTABLEKS                       R11 R10 K33 ["UIButton"]
      100 DUPCLOSURE                       R11 K52 [PROTO_27]
      101 SETTABLEKS                       R11 R10 K34 ["Up"]
      103 DUPCLOSURE                       R11 K53 [PROTO_28]
      104 SETTABLEKS                       R11 R10 K35 ["Vector2Scale"]
      106 DUPCLOSURE                       R11 K54 [PROTO_29]
      107 SETTABLEKS                       R11 R10 K36 ["Vector3Scale"]
      109 NEWCLOSURE                       R11 P30
      110 CAPTURE                          VAL R1
      111 CAPTURE                          VAL R0
      112 CAPTURE                          VAL R10
      113 NEWCLOSURE                       R12 P31
      114 CAPTURE                          VAL R1
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R0
      117 CAPTURE                          VAL R9
      118 NEWCLOSURE                       R13 P32
      119 CAPTURE                          VAL R1
      120 CAPTURE                          UPVAL U0
      121 CAPTURE                          VAL R12
      122 CAPTURE                          VAL R0
      123 CAPTURE                          VAL R8
      124 LOADK                            R16 K55 ["getInputContexts"]
      125 NEWCLOSURE                       R17 P33
      126 CAPTURE                          VAL R1
      127 NAMECALL                         R14 R0 K56 ["OnHostInvokeAsync"]
      129 CALL                             R14 3 2
      130 LOADK                            R18 K57 ["getInputActions"]
      131 NEWCLOSURE                       R19 P34
      132 CAPTURE                          VAL R1
      133 NAMECALL                         R16 R0 K56 ["OnHostInvokeAsync"]
      135 CALL                             R16 3 2
      136 LOADK                            R20 K58 ["getInputBindings"]
      137 NEWCLOSURE                       R21 P35
      138 CAPTURE                          VAL R1
      139 NAMECALL                         R18 R0 K56 ["OnHostInvokeAsync"]
      141 CALL                             R18 3 2
      142 LOADK                            R22 K59 ["setListenersConnected"]
      143 NEWCLOSURE                       R23 P36
      144 CAPTURE                          VAL R1
      145 NAMECALL                         R20 R0 K56 ["OnHostInvokeAsync"]
      147 CALL                             R20 3 2
      148 NEWCLOSURE                       R22 P37
      149 CAPTURE                          VAL R1
      150 NEWCLOSURE                       R23 P38
      151 CAPTURE                          VAL R1
      152 CAPTURE                          VAL R15
      153 CAPTURE                          VAL R17
      154 CAPTURE                          VAL R19
      155 CAPTURE                          VAL R21
      156 NEWCLOSURE                       R24 P39
      157 CAPTURE                          VAL R1
      158 CAPTURE                          VAL R15
      159 CAPTURE                          VAL R17
      160 CAPTURE                          VAL R19
      161 CAPTURE                          VAL R21
      162 NEWCLOSURE                       R25 P40
      163 CAPTURE                          VAL R13
      164 CAPTURE                          UPVAL U0
      165 CAPTURE                          VAL R1
      166 MOVE                             R26 R13
      167 CALL                             R26 0 0
      168 GETUPVAL                         R27 0
      169 GETTABLEKS                       R26 R27 K60 ["UniqueId"]
      171 GETUPVAL                         R28 0
      172 GETTABLEKS                       R27 R28 K61 ["InputContextsChanged"]
      174 NEWCLOSURE                       R29 P41
      175 CAPTURE                          VAL R13
      176 NAMECALL                         R27 R27 K62 ["Connect"]
      178 CALL                             R27 2 1
      179 GETTABLEKS                       R29 R1 K4 ["connectionsByUuid"]
      181 GETTABLE                         R28 R29 R26
      182 JUMPIF                           R28 ; [+5]
      183 NEWTABLE                         R28 0 0
      185 GETTABLEKS                       R29 R1 K4 ["connectionsByUuid"]
      187 SETTABLE                         R28 R29 R26
      188 FASTCALL2                        TABLE_INSERT R28 R27 ; [+5]
      190 MOVE                             R30 R28
      191 MOVE                             R31 R27
      192 GETIMPORT                        R29 K65 [table.insert]
      194 CALL                             R29 2 0
      195 DUPTABLE                         R26 K67 [{"destroy", "getInputContexts", "getInputActions", "getInputBindings", "setListenersConnected"}]
      196 SETTABLEKS                       R24 R26 K66 ["destroy"]
      198 SETTABLEKS                       R14 R26 K55 ["getInputContexts"]
      200 SETTABLEKS                       R16 R26 K57 ["getInputActions"]
      202 SETTABLEKS                       R18 R26 K58 ["getInputBindings"]
      204 SETTABLEKS                       R20 R26 K59 ["setListenersConnected"]
      206 RETURN                           R26 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ContextActionService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["InputActionManager"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["DMNetworking"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R1 K12 ["Src"]
       24 GETTABLEKS                       R4 R5 K13 ["Types"]
       26 CALL                             R3 1 1
       27 DUPCLOSURE                       R4 K14 [PROTO_49]
       28 CAPTURE                          VAL R0
       29 RETURN                           R4 1
