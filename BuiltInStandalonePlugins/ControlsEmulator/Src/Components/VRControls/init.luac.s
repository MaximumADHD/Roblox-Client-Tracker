PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Frame"]
        4 NEWTABLE                         R3 2 0
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K2 ["Tag"]
        9 LOADK                            R5 K3 ["X-Row Component-VRMappingLabel"]
       10 SETTABLE                         R5 R3 R4
       11 GETTABLEKS                       R4 R0 K4 ["LayoutOrder"]
       13 SETTABLEKS                       R4 R3 K4 ["LayoutOrder"]
       15 DUPTABLE                         R4 K7 [{"LeftText", "RightText"}]
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R5 R6 K0 ["createElement"]
       19 LOADK                            R6 K8 ["TextLabel"]
       20 NEWTABLE                         R7 4 0
       22 GETUPVAL                         R9 0
       23 GETTABLEKS                       R8 R9 K2 ["Tag"]
       25 LOADK                            R9 K9 ["CX-Invisible"]
       26 SETTABLE                         R9 R7 R8
       27 GETTABLEKS                       R8 R0 K10 ["leftText"]
       29 SETTABLEKS                       R8 R7 K11 ["Text"]
       31 GETIMPORT                        R8 K15 [Enum.TextXAlignment.Left]
       33 SETTABLEKS                       R8 R7 K13 ["TextXAlignment"]
       35 GETUPVAL                         R8 1
       36 NAMECALL                         R8 R8 K16 ["getNextOrder"]
       38 CALL                             R8 1 1
       39 SETTABLEKS                       R8 R7 K4 ["LayoutOrder"]
       41 CALL                             R5 2 1
       42 SETTABLEKS                       R5 R4 K5 ["LeftText"]
       44 GETUPVAL                         R6 0
       45 GETTABLEKS                       R5 R6 K0 ["createElement"]
       47 LOADK                            R6 K8 ["TextLabel"]
       48 NEWTABLE                         R7 4 0
       50 GETUPVAL                         R9 0
       51 GETTABLEKS                       R8 R9 K2 ["Tag"]
       53 LOADK                            R9 K9 ["CX-Invisible"]
       54 SETTABLE                         R9 R7 R8
       55 GETTABLEKS                       R8 R0 K17 ["rightText"]
       57 SETTABLEKS                       R8 R7 K11 ["Text"]
       59 GETIMPORT                        R8 K15 [Enum.TextXAlignment.Left]
       61 SETTABLEKS                       R8 R7 K13 ["TextXAlignment"]
       63 GETUPVAL                         R8 1
       64 NAMECALL                         R8 R8 K16 ["getNextOrder"]
       66 CALL                             R8 1 1
       67 SETTABLEKS                       R8 R7 K4 ["LayoutOrder"]
       69 CALL                             R5 2 1
       70 SETTABLEKS                       R5 R4 K6 ["RightText"]
       72 CALL                             R1 3 -1
       73 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLE                         R1 R2 R3
        3 JUMPIFEQKB                       R1 TRUE ; [+2]
        5 LOADB                            R0 0 +1
        6 LOADB                            R0 1
        7 RETURN                           R0 1

PROTO_4:
        0 JUMPIFNOT                        R0 ; [+2]
        1 LOADN                            R1 1
        2 RETURN                           R1 1
        3 LOADN                            R1 0
        4 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R5 0
        1 JUMPIFNOT                        R5 ; [+2]
        2 LOADN                            R4 1
        3 JUMP                             ; [+1]
        4 LOADN                            R4 0
        5 GETUPVAL                         R6 1
        6 JUMPIFNOT                        R6 ; [+2]
        7 LOADN                            R5 1
        8 JUMP                             ; [+1]
        9 LOADN                            R5 0
       10 ADD                              R3 R4 R5
       11 GETUPVAL                         R5 2
       12 JUMPIFNOT                        R5 ; [+2]
       13 LOADN                            R4 1
       14 JUMP                             ; [+1]
       15 LOADN                            R4 0
       16 ADD                              R2 R3 R4
       17 JUMPIFEQKN                       R2 K0 [1] ; [+2]
       19 LOADB                            R3 0 +1
       20 LOADB                            R3 1
       21 JUMPIF                           R0 ; [+3]
       22 JUMPIFNOT                        R3 ; [+2]
       23 LOADB                            R4 0
       24 RETURN                           R4 1
       25 MOVE                             R4 R1
       26 MOVE                             R5 R0
       27 CALL                             R4 1 0
       28 LOADB                            R4 1
       29 RETURN                           R4 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+27]
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 GETIMPORT                        R1 K3 [Enum.UserCFrame.Head]
        8 LOADB                            R2 1
        9 LOADB                            R3 0
       10 CALL                             R0 3 0
       11 GETUPVAL                         R0 3
       12 LOADB                            R1 0
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 2
       15 GETIMPORT                        R1 K5 [Enum.UserCFrame.LeftHand]
       17 LOADB                            R2 0
       18 LOADB                            R3 0
       19 CALL                             R0 3 0
       20 GETUPVAL                         R0 4
       21 LOADB                            R1 0
       22 CALL                             R0 1 0
       23 GETUPVAL                         R0 2
       24 GETIMPORT                        R1 K7 [Enum.UserCFrame.RightHand]
       26 LOADB                            R2 0
       27 LOADB                            R3 0
       28 CALL                             R0 3 0
       29 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["shouldVRControlsRespond"]
        3 JUMPIFNOT                        R0 ; [+24]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["activeVRUserCFrames"]
        8 GETIMPORT                        R3 K5 [Enum.UserCFrame.Head]
       10 GETTABLE                         R1 R2 R3
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 2
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R2 R3 K1 ["activeVRUserCFrames"]
       16 GETIMPORT                        R3 K7 [Enum.UserCFrame.LeftHand]
       18 GETTABLE                         R1 R2 R3
       19 CALL                             R0 1 0
       20 GETUPVAL                         R0 3
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R2 R3 K1 ["activeVRUserCFrames"]
       24 GETIMPORT                        R3 K9 [Enum.UserCFrame.RightHand]
       26 GETTABLE                         R1 R2 R3
       27 CALL                             R0 1 0
       28 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 NOT                              R0 R1
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R6 0
        4 JUMPIFNOT                        R6 ; [+2]
        5 LOADN                            R5 1
        6 JUMP                             ; [+1]
        7 LOADN                            R5 0
        8 GETUPVAL                         R7 2
        9 JUMPIFNOT                        R7 ; [+2]
       10 LOADN                            R6 1
       11 JUMP                             ; [+1]
       12 LOADN                            R6 0
       13 ADD                              R4 R5 R6
       14 GETUPVAL                         R6 3
       15 JUMPIFNOT                        R6 ; [+2]
       16 LOADN                            R5 1
       17 JUMP                             ; [+1]
       18 LOADN                            R5 0
       19 ADD                              R3 R4 R5
       20 JUMPIFEQKN                       R3 K0 [1] ; [+2]
       22 LOADB                            R4 0 +1
       23 LOADB                            R4 1
       24 JUMPIF                           R0 ; [+3]
       25 JUMPIFNOT                        R4 ; [+2]
       26 LOADB                            R1 0
       27 JUMP                             ; [+4]
       28 MOVE                             R5 R2
       29 MOVE                             R6 R0
       30 CALL                             R5 1 0
       31 LOADB                            R1 1
       32 JUMPIFNOT                        R1 ; [+6]
       33 GETUPVAL                         R1 4
       34 GETIMPORT                        R2 K4 [Enum.UserCFrame.Head]
       36 MOVE                             R3 R0
       37 LOADB                            R4 0
       38 CALL                             R1 3 0
       39 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 NOT                              R0 R1
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R6 2
        4 JUMPIFNOT                        R6 ; [+2]
        5 LOADN                            R5 1
        6 JUMP                             ; [+1]
        7 LOADN                            R5 0
        8 GETUPVAL                         R7 0
        9 JUMPIFNOT                        R7 ; [+2]
       10 LOADN                            R6 1
       11 JUMP                             ; [+1]
       12 LOADN                            R6 0
       13 ADD                              R4 R5 R6
       14 GETUPVAL                         R6 3
       15 JUMPIFNOT                        R6 ; [+2]
       16 LOADN                            R5 1
       17 JUMP                             ; [+1]
       18 LOADN                            R5 0
       19 ADD                              R3 R4 R5
       20 JUMPIFEQKN                       R3 K0 [1] ; [+2]
       22 LOADB                            R4 0 +1
       23 LOADB                            R4 1
       24 JUMPIF                           R0 ; [+3]
       25 JUMPIFNOT                        R4 ; [+2]
       26 LOADB                            R1 0
       27 JUMP                             ; [+4]
       28 MOVE                             R5 R2
       29 MOVE                             R6 R0
       30 CALL                             R5 1 0
       31 LOADB                            R1 1
       32 JUMPIFNOT                        R1 ; [+6]
       33 GETUPVAL                         R1 4
       34 GETIMPORT                        R2 K4 [Enum.UserCFrame.LeftHand]
       36 MOVE                             R3 R0
       37 LOADB                            R4 0
       38 CALL                             R1 3 0
       39 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 NOT                              R0 R1
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R6 2
        4 JUMPIFNOT                        R6 ; [+2]
        5 LOADN                            R5 1
        6 JUMP                             ; [+1]
        7 LOADN                            R5 0
        8 GETUPVAL                         R7 3
        9 JUMPIFNOT                        R7 ; [+2]
       10 LOADN                            R6 1
       11 JUMP                             ; [+1]
       12 LOADN                            R6 0
       13 ADD                              R4 R5 R6
       14 GETUPVAL                         R6 0
       15 JUMPIFNOT                        R6 ; [+2]
       16 LOADN                            R5 1
       17 JUMP                             ; [+1]
       18 LOADN                            R5 0
       19 ADD                              R3 R4 R5
       20 JUMPIFEQKN                       R3 K0 [1] ; [+2]
       22 LOADB                            R4 0 +1
       23 LOADB                            R4 1
       24 JUMPIF                           R0 ; [+3]
       25 JUMPIFNOT                        R4 ; [+2]
       26 LOADB                            R1 0
       27 JUMP                             ; [+4]
       28 MOVE                             R5 R2
       29 MOVE                             R6 R0
       30 CALL                             R5 1 0
       31 LOADB                            R1 1
       32 JUMPIFNOT                        R1 ; [+6]
       33 GETUPVAL                         R1 4
       34 GETIMPORT                        R2 K4 [Enum.UserCFrame.RightHand]
       36 MOVE                             R3 R0
       37 LOADB                            R4 0
       38 CALL                             R1 3 0
       39 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["ResetVRUserCFramesAsync"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_15:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_14]
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["useContext"]
        7 GETUPVAL                         R3 2
        8 CALL                             R2 1 1
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R4 R5 K1 ["useContext"]
       12 GETUPVAL                         R5 3
       13 CALL                             R4 1 1
       14 GETTABLEKS                       R3 R4 K2 ["setVRUserCFrameActive"]
       16 GETTABLEKS                       R4 R2 K3 ["activeVRUserCFrames"]
       18 GETUPVAL                         R7 1
       19 GETTABLEKS                       R6 R7 K1 ["useContext"]
       21 GETUPVAL                         R7 3
       22 CALL                             R6 1 1
       23 GETTABLEKS                       R5 R6 K4 ["setVRCFrameTranslationSensitivity"]
       25 GETUPVAL                         R7 1
       26 GETTABLEKS                       R6 R7 K5 ["useState"]
       28 LOADN                            R7 5
       29 CALL                             R6 1 2
       30 JUMPIFNOT                        R3 ; [+2]
       31 JUMPIFNOT                        R4 ; [+1]
       32 JUMPIF                           R5 ; [+1]
       33 RETURN                           R0 0
       34 GETUPVAL                         R9 1
       35 GETTABLEKS                       R8 R9 K5 ["useState"]
       37 GETTABLEKS                       R9 R0 K6 ["shouldShowTooltip"]
       39 CALL                             R8 1 2
       40 GETUPVAL                         R11 1
       41 GETTABLEKS                       R10 R11 K5 ["useState"]
       43 LOADB                            R11 0
       44 CALL                             R10 1 2
       45 GETUPVAL                         R13 1
       46 GETTABLEKS                       R12 R13 K7 ["useCallback"]
       48 NEWCLOSURE                       R13 P0
       49 CAPTURE                          VAL R11
       50 NEWTABLE                         R14 0 1
       52 MOVE                             R15 R11
       53 SETLIST                          R14 R15 1 [1]
       55 CALL                             R12 2 1
       56 GETUPVAL                         R14 1
       57 GETTABLEKS                       R13 R14 K7 ["useCallback"]
       59 NEWCLOSURE                       R14 P1
       60 CAPTURE                          VAL R11
       61 NEWTABLE                         R15 0 1
       63 MOVE                             R16 R11
       64 SETLIST                          R15 R16 1 [1]
       66 CALL                             R13 2 1
       67 GETUPVAL                         R15 1
       68 GETTABLEKS                       R14 R15 K5 ["useState"]
       70 LOADB                            R15 0
       71 CALL                             R14 1 2
       72 GETTABLEKS                       R16 R2 K8 ["gamepadId"]
       74 GETUPVAL                         R18 1
       75 GETTABLEKS                       R17 R18 K9 ["useMemo"]
       77 NEWCLOSURE                       R18 P2
       78 CAPTURE                          UPVAL U4
       79 CAPTURE                          VAL R16
       80 NEWTABLE                         R19 0 1
       82 MOVE                             R20 R16
       83 SETLIST                          R19 R20 1 [1]
       85 CALL                             R17 2 1
       86 GETUPVAL                         R19 1
       87 GETTABLEKS                       R18 R19 K5 ["useState"]
       89 GETIMPORT                        R20 K13 [Enum.UserCFrame.Head]
       91 GETTABLE                         R19 R4 R20
       92 CALL                             R18 1 2
       93 GETUPVAL                         R21 1
       94 GETTABLEKS                       R20 R21 K5 ["useState"]
       96 GETIMPORT                        R22 K15 [Enum.UserCFrame.LeftHand]
       98 GETTABLE                         R21 R4 R22
       99 CALL                             R20 1 2
      100 GETUPVAL                         R23 1
      101 GETTABLEKS                       R22 R23 K5 ["useState"]
      103 GETIMPORT                        R24 K17 [Enum.UserCFrame.RightHand]
      105 GETTABLE                         R23 R4 R24
      106 CALL                             R22 1 2
      107 DUPCLOSURE                       R24 K18 [PROTO_4]
      108 NEWCLOSURE                       R25 P4
      109 CAPTURE                          VAL R18
      110 CAPTURE                          VAL R20
      111 CAPTURE                          VAL R22
      112 GETUPVAL                         R27 1
      113 GETTABLEKS                       R26 R27 K19 ["useEffect"]
      115 NEWCLOSURE                       R27 P5
      116 CAPTURE                          VAL R17
      117 CAPTURE                          VAL R19
      118 CAPTURE                          VAL R3
      119 CAPTURE                          VAL R21
      120 CAPTURE                          VAL R23
      121 NEWTABLE                         R28 0 1
      123 MOVE                             R29 R17
      124 SETLIST                          R28 R29 1 [1]
      126 CALL                             R26 2 0
      127 GETUPVAL                         R27 1
      128 GETTABLEKS                       R26 R27 K19 ["useEffect"]
      130 NEWCLOSURE                       R27 P6
      131 CAPTURE                          VAL R2
      132 CAPTURE                          VAL R19
      133 CAPTURE                          VAL R21
      134 CAPTURE                          VAL R23
      135 NEWTABLE                         R28 0 1
      137 GETTABLEKS                       R29 R2 K3 ["activeVRUserCFrames"]
      139 SETLIST                          R28 R29 1 [1]
      141 CALL                             R26 2 0
      142 GETUPVAL                         R27 1
      143 GETTABLEKS                       R26 R27 K20 ["createElement"]
      145 LOADK                            R27 K21 ["Frame"]
      146 NEWTABLE                         R28 2 0
      148 GETUPVAL                         R30 1
      149 GETTABLEKS                       R29 R30 K22 ["Tag"]
      151 GETUPVAL                         R30 5
      152 LOADK                            R31 K23 ["Component-VRControls CX-Invisible"]
      153 CALL                             R30 1 1
      154 SETTABLE                         R30 R28 R29
      155 GETTABLEKS                       R29 R0 K24 ["LayoutOrder"]
      157 SETTABLEKS                       R29 R28 K24 ["LayoutOrder"]
      159 DUPTABLE                         R29 K26 [{"InnerContainer"}]
      160 GETUPVAL                         R31 1
      161 GETTABLEKS                       R30 R31 K20 ["createElement"]
      163 LOADK                            R31 K21 ["Frame"]
      164 NEWTABLE                         R32 2 0
      166 GETUPVAL                         R34 1
      167 GETTABLEKS                       R33 R34 K22 ["Tag"]
      169 LOADK                            R34 K27 ["CX-Invisible"]
      170 SETTABLE                         R34 R32 R33
      171 GETUPVAL                         R33 6
      172 NAMECALL                         R33 R33 K28 ["getNextOrder"]
      174 CALL                             R33 1 1
      175 SETTABLEKS                       R33 R32 K24 ["LayoutOrder"]
      177 DUPTABLE                         R33 K33 [{"Separator", "Controls", "ResetPositionsTooltip", "Tooltip"}]
      178 GETUPVAL                         R35 1
      179 GETTABLEKS                       R34 R35 K20 ["createElement"]
      181 LOADK                            R35 K21 ["Frame"]
      182 DUPTABLE                         R36 K34 [{"LayoutOrder"}]
      183 GETUPVAL                         R37 6
      184 NAMECALL                         R37 R37 K28 ["getNextOrder"]
      186 CALL                             R37 1 1
      187 SETTABLEKS                       R37 R36 K24 ["LayoutOrder"]
      189 CALL                             R34 2 1
      190 SETTABLEKS                       R34 R33 K29 ["Separator"]
      192 GETUPVAL                         R35 1
      193 GETTABLEKS                       R34 R35 K20 ["createElement"]
      195 LOADK                            R35 K21 ["Frame"]
      196 NEWTABLE                         R36 2 0
      198 GETUPVAL                         R38 1
      199 GETTABLEKS                       R37 R38 K22 ["Tag"]
      201 LOADK                            R38 K35 ["X-Column CX-Invisible"]
      202 SETTABLE                         R38 R36 R37
      203 GETUPVAL                         R37 6
      204 NAMECALL                         R37 R37 K28 ["getNextOrder"]
      206 CALL                             R37 1 1
      207 SETTABLEKS                       R37 R36 K24 ["LayoutOrder"]
      209 DUPTABLE                         R37 K39 [{"LabelAndTooltipFrame", "ContainerFrame", "SliderFrame"}]
      210 GETUPVAL                         R39 1
      211 GETTABLEKS                       R38 R39 K20 ["createElement"]
      213 LOADK                            R39 K21 ["Frame"]
      214 DUPTABLE                         R40 K34 [{"LayoutOrder"}]
      215 GETUPVAL                         R41 6
      216 NAMECALL                         R41 R41 K28 ["getNextOrder"]
      218 CALL                             R41 1 1
      219 SETTABLEKS                       R41 R40 K24 ["LayoutOrder"]
      221 DUPTABLE                         R41 K42 [{"Label", "TooltipButton"}]
      222 GETUPVAL                         R43 1
      223 GETTABLEKS                       R42 R43 K20 ["createElement"]
      225 LOADK                            R43 K43 ["TextLabel"]
      226 NEWTABLE                         R44 4 0
      228 GETUPVAL                         R46 1
      229 GETTABLEKS                       R45 R46 K22 ["Tag"]
      231 LOADK                            R46 K27 ["CX-Invisible"]
      232 SETTABLE                         R46 R44 R45
      233 LOADK                            R47 K44 ["VRControls"]
      234 LOADK                            R48 K45 ["MoveAndRotateLabel"]
      235 NAMECALL                         R45 R1 K46 ["getText"]
      237 CALL                             R45 3 1
      238 SETTABLEKS                       R45 R44 K47 ["Text"]
      240 GETUPVAL                         R45 6
      241 NAMECALL                         R45 R45 K28 ["getNextOrder"]
      243 CALL                             R45 1 1
      244 SETTABLEKS                       R45 R44 K24 ["LayoutOrder"]
      246 CALL                             R42 2 1
      247 SETTABLEKS                       R42 R41 K40 ["Label"]
      249 GETUPVAL                         R43 1
      250 GETTABLEKS                       R42 R43 K20 ["createElement"]
      252 LOADK                            R43 K48 ["TextButton"]
      253 NEWTABLE                         R44 8 0
      255 GETUPVAL                         R46 1
      256 GETTABLEKS                       R45 R46 K22 ["Tag"]
      258 GETUPVAL                         R46 5
      259 LOADK                            R47 K49 ["X-Circle"]
      260 JUMPIF                           R8 ; [+1]
      261 JUMPIFNOT                        R14 ; [+2]
      262 LOADK                            R48 K50 ["FilledIn"]
      263 JUMP                             ; [+1]
      264 LOADNIL                          R48
      265 CALL                             R46 2 1
      266 SETTABLE                         R46 R44 R45
      267 LOADK                            R47 K44 ["VRControls"]
      268 LOADK                            R48 K51 ["TooltipInfoLabel"]
      269 NAMECALL                         R45 R1 K46 ["getText"]
      271 CALL                             R45 3 1
      272 SETTABLEKS                       R45 R44 K47 ["Text"]
      274 GETIMPORT                        R45 K54 [UDim2.new]
      276 LOADN                            R46 0
      277 LOADN                            R47 20
      278 LOADN                            R48 0
      279 LOADN                            R49 20
      280 CALL                             R45 4 1
      281 SETTABLEKS                       R45 R44 K55 ["Size"]
      283 GETUPVAL                         R45 6
      284 NAMECALL                         R45 R45 K28 ["getNextOrder"]
      286 CALL                             R45 1 1
      287 SETTABLEKS                       R45 R44 K24 ["LayoutOrder"]
      289 GETUPVAL                         R47 1
      290 GETTABLEKS                       R46 R47 K56 ["Event"]
      292 GETTABLEKS                       R45 R46 K57 ["MouseEnter"]
      294 NEWCLOSURE                       R46 P7
      295 CAPTURE                          VAL R15
      296 SETTABLE                         R46 R44 R45
      297 GETUPVAL                         R47 1
      298 GETTABLEKS                       R46 R47 K56 ["Event"]
      300 GETTABLEKS                       R45 R46 K58 ["MouseLeave"]
      302 NEWCLOSURE                       R46 P8
      303 CAPTURE                          VAL R15
      304 SETTABLE                         R46 R44 R45
      305 GETUPVAL                         R47 1
      306 GETTABLEKS                       R46 R47 K56 ["Event"]
      308 GETTABLEKS                       R45 R46 K59 ["MouseButton1Click"]
      310 NEWCLOSURE                       R46 P9
      311 CAPTURE                          VAL R9
      312 CAPTURE                          VAL R8
      313 SETTABLE                         R46 R44 R45
      314 CALL                             R42 2 1
      315 SETTABLEKS                       R42 R41 K41 ["TooltipButton"]
      317 CALL                             R38 3 1
      318 SETTABLEKS                       R38 R37 K36 ["LabelAndTooltipFrame"]
      320 GETUPVAL                         R39 1
      321 GETTABLEKS                       R38 R39 K20 ["createElement"]
      323 LOADK                            R39 K21 ["Frame"]
      324 DUPTABLE                         R40 K34 [{"LayoutOrder"}]
      325 GETUPVAL                         R41 6
      326 NAMECALL                         R41 R41 K28 ["getNextOrder"]
      328 CALL                             R41 1 1
      329 SETTABLEKS                       R41 R40 K24 ["LayoutOrder"]
      331 DUPTABLE                         R41 K62 [{"CheckboxFrame", "ResetPositionsFrame"}]
      332 GETUPVAL                         R43 1
      333 GETTABLEKS                       R42 R43 K20 ["createElement"]
      335 LOADK                            R43 K21 ["Frame"]
      336 DUPTABLE                         R44 K34 [{"LayoutOrder"}]
      337 GETUPVAL                         R45 6
      338 NAMECALL                         R45 R45 K28 ["getNextOrder"]
      340 CALL                             R45 1 1
      341 SETTABLEKS                       R45 R44 K24 ["LayoutOrder"]
      343 DUPTABLE                         R45 K66 [{"HeadsetBox", "LeftHandBox", "RightHandBox"}]
      344 GETUPVAL                         R47 1
      345 GETTABLEKS                       R46 R47 K20 ["createElement"]
      347 GETUPVAL                         R47 7
      348 DUPTABLE                         R48 K71 [{"Checked", "Key", "OnClick", "Text", "Disabled", "LayoutOrder"}]
      349 SETTABLEKS                       R18 R48 K67 ["Checked"]
      351 GETIMPORT                        R50 K13 [Enum.UserCFrame.Head]
      353 GETTABLEKS                       R49 R50 K72 ["Name"]
      355 SETTABLEKS                       R49 R48 K68 ["Key"]
      357 NEWCLOSURE                       R49 P10
      358 CAPTURE                          VAL R18
      359 CAPTURE                          VAL R19
      360 CAPTURE                          VAL R20
      361 CAPTURE                          VAL R22
      362 CAPTURE                          VAL R3
      363 SETTABLEKS                       R49 R48 K69 ["OnClick"]
      365 LOADK                            R51 K44 ["VRControls"]
      366 LOADK                            R52 K73 ["HeadsetLabel"]
      367 NAMECALL                         R49 R1 K46 ["getText"]
      369 CALL                             R49 3 1
      370 SETTABLEKS                       R49 R48 K47 ["Text"]
      372 LOADB                            R49 0
      373 SETTABLEKS                       R49 R48 K70 ["Disabled"]
      375 GETUPVAL                         R49 6
      376 NAMECALL                         R49 R49 K28 ["getNextOrder"]
      378 CALL                             R49 1 1
      379 SETTABLEKS                       R49 R48 K24 ["LayoutOrder"]
      381 CALL                             R46 2 1
      382 SETTABLEKS                       R46 R45 K63 ["HeadsetBox"]
      384 GETUPVAL                         R47 1
      385 GETTABLEKS                       R46 R47 K20 ["createElement"]
      387 GETUPVAL                         R47 7
      388 DUPTABLE                         R48 K71 [{"Checked", "Key", "OnClick", "Text", "Disabled", "LayoutOrder"}]
      389 SETTABLEKS                       R20 R48 K67 ["Checked"]
      391 GETIMPORT                        R50 K15 [Enum.UserCFrame.LeftHand]
      393 GETTABLEKS                       R49 R50 K72 ["Name"]
      395 SETTABLEKS                       R49 R48 K68 ["Key"]
      397 NEWCLOSURE                       R49 P11
      398 CAPTURE                          VAL R20
      399 CAPTURE                          VAL R21
      400 CAPTURE                          VAL R18
      401 CAPTURE                          VAL R22
      402 CAPTURE                          VAL R3
      403 SETTABLEKS                       R49 R48 K69 ["OnClick"]
      405 LOADK                            R51 K44 ["VRControls"]
      406 LOADK                            R52 K74 ["LeftControllerLabel"]
      407 NAMECALL                         R49 R1 K46 ["getText"]
      409 CALL                             R49 3 1
      410 SETTABLEKS                       R49 R48 K47 ["Text"]
      412 NOT                              R49 R17
      413 SETTABLEKS                       R49 R48 K70 ["Disabled"]
      415 GETUPVAL                         R49 6
      416 NAMECALL                         R49 R49 K28 ["getNextOrder"]
      418 CALL                             R49 1 1
      419 SETTABLEKS                       R49 R48 K24 ["LayoutOrder"]
      421 CALL                             R46 2 1
      422 SETTABLEKS                       R46 R45 K64 ["LeftHandBox"]
      424 GETUPVAL                         R47 1
      425 GETTABLEKS                       R46 R47 K20 ["createElement"]
      427 GETUPVAL                         R47 7
      428 DUPTABLE                         R48 K71 [{"Checked", "Key", "OnClick", "Text", "Disabled", "LayoutOrder"}]
      429 SETTABLEKS                       R22 R48 K67 ["Checked"]
      431 GETIMPORT                        R50 K17 [Enum.UserCFrame.RightHand]
      433 GETTABLEKS                       R49 R50 K72 ["Name"]
      435 SETTABLEKS                       R49 R48 K68 ["Key"]
      437 NEWCLOSURE                       R49 P12
      438 CAPTURE                          VAL R22
      439 CAPTURE                          VAL R23
      440 CAPTURE                          VAL R18
      441 CAPTURE                          VAL R20
      442 CAPTURE                          VAL R3
      443 SETTABLEKS                       R49 R48 K69 ["OnClick"]
      445 LOADK                            R51 K44 ["VRControls"]
      446 LOADK                            R52 K75 ["RightControllerLabel"]
      447 NAMECALL                         R49 R1 K46 ["getText"]
      449 CALL                             R49 3 1
      450 SETTABLEKS                       R49 R48 K47 ["Text"]
      452 NOT                              R49 R17
      453 SETTABLEKS                       R49 R48 K70 ["Disabled"]
      455 GETUPVAL                         R49 6
      456 NAMECALL                         R49 R49 K28 ["getNextOrder"]
      458 CALL                             R49 1 1
      459 SETTABLEKS                       R49 R48 K24 ["LayoutOrder"]
      461 CALL                             R46 2 1
      462 SETTABLEKS                       R46 R45 K65 ["RightHandBox"]
      464 CALL                             R42 3 1
      465 SETTABLEKS                       R42 R41 K60 ["CheckboxFrame"]
      467 GETTABLEKS                       R42 R0 K76 ["inPlayClient"]
      469 JUMPIFNOT                        R42 ; [+68]
      470 GETUPVAL                         R43 1
      471 GETTABLEKS                       R42 R43 K20 ["createElement"]
      473 LOADK                            R43 K21 ["Frame"]
      474 DUPTABLE                         R44 K34 [{"LayoutOrder"}]
      475 GETUPVAL                         R45 6
      476 NAMECALL                         R45 R45 K28 ["getNextOrder"]
      478 CALL                             R45 1 1
      479 SETTABLEKS                       R45 R44 K24 ["LayoutOrder"]
      481 DUPTABLE                         R45 K78 [{"ResetPositionsButton"}]
      482 GETUPVAL                         R47 1
      483 GETTABLEKS                       R46 R47 K20 ["createElement"]
      485 LOADK                            R47 K79 ["ImageButton"]
      486 NEWTABLE                         R48 8 0
      488 GETUPVAL                         R50 1
      489 GETTABLEKS                       R49 R50 K22 ["Tag"]
      491 LOADK                            R50 K80 ["data-testid=ResetPositionsButton"]
      492 SETTABLE                         R50 R48 R49
      493 GETUPVAL                         R51 1
      494 GETTABLEKS                       R50 R51 K56 ["Event"]
      496 GETTABLEKS                       R49 R50 K57 ["MouseEnter"]
      498 SETTABLE                         R12 R48 R49
      499 GETUPVAL                         R51 1
      500 GETTABLEKS                       R50 R51 K56 ["Event"]
      502 GETTABLEKS                       R49 R50 K58 ["MouseLeave"]
      504 SETTABLE                         R13 R48 R49
      505 GETUPVAL                         R51 1
      506 GETTABLEKS                       R50 R51 K56 ["Event"]
      508 GETTABLEKS                       R49 R50 K59 ["MouseButton1Click"]
      510 DUPCLOSURE                       R50 K81 [PROTO_15]
      511 CAPTURE                          UPVAL U8
      512 SETTABLE                         R50 R48 R49
      513 GETUPVAL                         R49 6
      514 NAMECALL                         R49 R49 K28 ["getNextOrder"]
      516 CALL                             R49 1 1
      517 SETTABLEKS                       R49 R48 K24 ["LayoutOrder"]
      519 DUPTABLE                         R49 K83 [{"ResetIconImage"}]
      520 GETUPVAL                         R51 1
      521 GETTABLEKS                       R50 R51 K20 ["createElement"]
      523 LOADK                            R51 K84 ["ImageLabel"]
      524 DUPTABLE                         R52 K34 [{"LayoutOrder"}]
      525 GETUPVAL                         R53 6
      526 NAMECALL                         R53 R53 K28 ["getNextOrder"]
      528 CALL                             R53 1 1
      529 SETTABLEKS                       R53 R52 K24 ["LayoutOrder"]
      531 CALL                             R50 2 1
      532 SETTABLEKS                       R50 R49 K82 ["ResetIconImage"]
      534 CALL                             R46 3 1
      535 SETTABLEKS                       R46 R45 K77 ["ResetPositionsButton"]
      537 CALL                             R42 3 1
      538 SETTABLEKS                       R42 R41 K61 ["ResetPositionsFrame"]
      540 CALL                             R38 3 1
      541 SETTABLEKS                       R38 R37 K37 ["ContainerFrame"]
      543 GETUPVAL                         R39 1
      544 GETTABLEKS                       R38 R39 K20 ["createElement"]
      546 LOADK                            R39 K21 ["Frame"]
      547 NEWTABLE                         R40 2 0
      549 GETUPVAL                         R42 1
      550 GETTABLEKS                       R41 R42 K22 ["Tag"]
      552 LOADK                            R42 K85 ["data-testid=TranslationSlider"]
      553 SETTABLE                         R42 R40 R41
      554 GETUPVAL                         R41 6
      555 NAMECALL                         R41 R41 K28 ["getNextOrder"]
      557 CALL                             R41 1 1
      558 SETTABLEKS                       R41 R40 K24 ["LayoutOrder"]
      560 DUPTABLE                         R41 K88 [{"SliderLabel", "TranslationSlider"}]
      561 GETUPVAL                         R43 1
      562 GETTABLEKS                       R42 R43 K20 ["createElement"]
      564 LOADK                            R43 K43 ["TextLabel"]
      565 NEWTABLE                         R44 4 0
      567 GETUPVAL                         R46 1
      568 GETTABLEKS                       R45 R46 K22 ["Tag"]
      570 LOADK                            R46 K27 ["CX-Invisible"]
      571 SETTABLE                         R46 R44 R45
      572 LOADK                            R47 K44 ["VRControls"]
      573 LOADK                            R48 K89 ["TranslationSensitivityLabel"]
      574 NAMECALL                         R45 R1 K46 ["getText"]
      576 CALL                             R45 3 1
      577 SETTABLEKS                       R45 R44 K47 ["Text"]
      579 GETUPVAL                         R45 6
      580 NAMECALL                         R45 R45 K28 ["getNextOrder"]
      582 CALL                             R45 1 1
      583 SETTABLEKS                       R45 R44 K24 ["LayoutOrder"]
      585 CALL                             R42 2 1
      586 SETTABLEKS                       R42 R41 K86 ["SliderLabel"]
      588 GETUPVAL                         R43 1
      589 GETTABLEKS                       R42 R43 K20 ["createElement"]
      591 GETUPVAL                         R43 9
      592 DUPTABLE                         R44 K98 [{"LayoutOrder", "AnchorPoint", "Disabled", "Value", "Min", "Max", "OnValueChanged", "SnapIncrement", "VerticalDragTolerance", "ShowInput"}]
      593 GETUPVAL                         R45 6
      594 NAMECALL                         R45 R45 K28 ["getNextOrder"]
      596 CALL                             R45 1 1
      597 SETTABLEKS                       R45 R44 K24 ["LayoutOrder"]
      599 GETIMPORT                        R45 K100 [Vector2.new]
      601 LOADN                            R46 0
      602 LOADN                            R47 0
      603 CALL                             R45 2 1
      604 SETTABLEKS                       R45 R44 K90 ["AnchorPoint"]
      606 LOADB                            R45 0
      607 SETTABLEKS                       R45 R44 K70 ["Disabled"]
      609 SETTABLEKS                       R6 R44 K91 ["Value"]
      611 LOADN                            R45 1
      612 SETTABLEKS                       R45 R44 K92 ["Min"]
      614 LOADN                            R45 10
      615 SETTABLEKS                       R45 R44 K93 ["Max"]
      617 NEWCLOSURE                       R45 P14
      618 CAPTURE                          VAL R7
      619 CAPTURE                          VAL R5
      620 SETTABLEKS                       R45 R44 K94 ["OnValueChanged"]
      622 LOADN                            R45 1
      623 SETTABLEKS                       R45 R44 K95 ["SnapIncrement"]
      625 LOADN                            R45 0
      626 SETTABLEKS                       R45 R44 K96 ["VerticalDragTolerance"]
      628 LOADB                            R45 1
      629 SETTABLEKS                       R45 R44 K97 ["ShowInput"]
      631 CALL                             R42 2 1
      632 SETTABLEKS                       R42 R41 K87 ["TranslationSlider"]
      634 CALL                             R38 3 1
      635 SETTABLEKS                       R38 R37 K38 ["SliderFrame"]
      637 CALL                             R34 3 1
      638 SETTABLEKS                       R34 R33 K30 ["Controls"]
      640 GETTABLEKS                       R34 R0 K76 ["inPlayClient"]
      642 JUMPIFNOT                        R34 ; [+27]
      643 MOVE                             R34 R10
      644 JUMPIFNOT                        R34 ; [+25]
      645 GETUPVAL                         R35 1
      646 GETTABLEKS                       R34 R35 K20 ["createElement"]
      648 LOADK                            R35 K43 ["TextLabel"]
      649 NEWTABLE                         R36 4 0
      651 GETUPVAL                         R38 1
      652 GETTABLEKS                       R37 R38 K22 ["Tag"]
      654 LOADK                            R38 K101 ["ResetPositionsTooltip data-testid=ResetPositionsTooltip"]
      655 SETTABLE                         R38 R36 R37
      656 LOADK                            R39 K44 ["VRControls"]
      657 LOADK                            R40 K102 ["ResetAllLabel"]
      658 NAMECALL                         R37 R1 K46 ["getText"]
      660 CALL                             R37 3 1
      661 SETTABLEKS                       R37 R36 K47 ["Text"]
      663 GETUPVAL                         R37 6
      664 NAMECALL                         R37 R37 K28 ["getNextOrder"]
      666 CALL                             R37 1 1
      667 SETTABLEKS                       R37 R36 K24 ["LayoutOrder"]
      669 CALL                             R34 2 1
      670 SETTABLEKS                       R34 R33 K31 ["ResetPositionsTooltip"]
      672 MOVE                             R34 R8
      673 JUMPIFNOT                        R34 ; [+208]
      674 GETUPVAL                         R35 1
      675 GETTABLEKS                       R34 R35 K20 ["createElement"]
      677 LOADK                            R35 K21 ["Frame"]
      678 NEWTABLE                         R36 1 0
      680 GETUPVAL                         R38 1
      681 GETTABLEKS                       R37 R38 K22 ["Tag"]
      683 LOADK                            R38 K103 ["data-testid=Tooltip"]
      684 SETTABLE                         R38 R36 R37
      685 DUPTABLE                         R37 K111 [{"MoveMapping", "FlyMapping", "RotateMapping", "TiltMapping", "ToggleCursorLock", "SwitchControllers", "MouseMapping1"}]
      686 GETUPVAL                         R39 1
      687 GETTABLEKS                       R38 R39 K20 ["createElement"]
      689 GETUPVAL                         R39 10
      690 DUPTABLE                         R40 K114 [{"leftText", "rightText", "LayoutOrder"}]
      691 LOADK                            R43 K44 ["VRControls"]
      692 LOADK                            R44 K115 ["MoveHelpLabel"]
      693 NAMECALL                         R41 R1 K46 ["getText"]
      695 CALL                             R41 3 1
      696 SETTABLEKS                       R41 R40 K112 ["leftText"]
      698 LOADK                            R43 K44 ["VRControls"]
      699 LOADK                            R44 K116 ["ShiftWASDLabel"]
      700 NAMECALL                         R41 R1 K46 ["getText"]
      702 CALL                             R41 3 1
      703 SETTABLEKS                       R41 R40 K113 ["rightText"]
      705 GETUPVAL                         R41 6
      706 NAMECALL                         R41 R41 K28 ["getNextOrder"]
      708 CALL                             R41 1 1
      709 SETTABLEKS                       R41 R40 K24 ["LayoutOrder"]
      711 CALL                             R38 2 1
      712 SETTABLEKS                       R38 R37 K104 ["MoveMapping"]
      714 GETUPVAL                         R39 1
      715 GETTABLEKS                       R38 R39 K20 ["createElement"]
      717 GETUPVAL                         R39 10
      718 DUPTABLE                         R40 K114 [{"leftText", "rightText", "LayoutOrder"}]
      719 LOADK                            R43 K44 ["VRControls"]
      720 LOADK                            R44 K117 ["FlyUpDownHelpLabel"]
      721 NAMECALL                         R41 R1 K46 ["getText"]
      723 CALL                             R41 3 1
      724 SETTABLEKS                       R41 R40 K112 ["leftText"]
      726 LOADK                            R43 K44 ["VRControls"]
      727 LOADK                            R44 K118 ["ShiftEQLabel"]
      728 NAMECALL                         R41 R1 K46 ["getText"]
      730 CALL                             R41 3 1
      731 SETTABLEKS                       R41 R40 K113 ["rightText"]
      733 GETUPVAL                         R41 6
      734 NAMECALL                         R41 R41 K28 ["getNextOrder"]
      736 CALL                             R41 1 1
      737 SETTABLEKS                       R41 R40 K24 ["LayoutOrder"]
      739 CALL                             R38 2 1
      740 SETTABLEKS                       R38 R37 K105 ["FlyMapping"]
      742 GETUPVAL                         R39 1
      743 GETTABLEKS                       R38 R39 K20 ["createElement"]
      745 GETUPVAL                         R39 10
      746 DUPTABLE                         R40 K114 [{"leftText", "rightText", "LayoutOrder"}]
      747 LOADK                            R43 K44 ["VRControls"]
      748 LOADK                            R44 K119 ["RotateHelpLabel"]
      749 NAMECALL                         R41 R1 K46 ["getText"]
      751 CALL                             R41 3 1
      752 SETTABLEKS                       R41 R40 K112 ["leftText"]
      754 LOADK                            R43 K44 ["VRControls"]
      755 LOADK                            R44 K120 ["MouseMoveHelpLabel"]
      756 NAMECALL                         R41 R1 K46 ["getText"]
      758 CALL                             R41 3 1
      759 SETTABLEKS                       R41 R40 K113 ["rightText"]
      761 GETUPVAL                         R41 6
      762 NAMECALL                         R41 R41 K28 ["getNextOrder"]
      764 CALL                             R41 1 1
      765 SETTABLEKS                       R41 R40 K24 ["LayoutOrder"]
      767 CALL                             R38 2 1
      768 SETTABLEKS                       R38 R37 K106 ["RotateMapping"]
      770 GETUPVAL                         R39 1
      771 GETTABLEKS                       R38 R39 K20 ["createElement"]
      773 GETUPVAL                         R39 10
      774 DUPTABLE                         R40 K114 [{"leftText", "rightText", "LayoutOrder"}]
      775 LOADK                            R43 K44 ["VRControls"]
      776 LOADK                            R44 K121 ["TiltHelpLabel"]
      777 NAMECALL                         R41 R1 K46 ["getText"]
      779 CALL                             R41 3 1
      780 SETTABLEKS                       R41 R40 K112 ["leftText"]
      782 LOADK                            R43 K44 ["VRControls"]
      783 LOADK                            R44 K122 ["RightClickAndMouseMoveHelpLabel"]
      784 NAMECALL                         R41 R1 K46 ["getText"]
      786 CALL                             R41 3 1
      787 SETTABLEKS                       R41 R40 K113 ["rightText"]
      789 GETUPVAL                         R41 6
      790 NAMECALL                         R41 R41 K28 ["getNextOrder"]
      792 CALL                             R41 1 1
      793 SETTABLEKS                       R41 R40 K24 ["LayoutOrder"]
      795 CALL                             R38 2 1
      796 SETTABLEKS                       R38 R37 K107 ["TiltMapping"]
      798 GETUPVAL                         R39 1
      799 GETTABLEKS                       R38 R39 K20 ["createElement"]
      801 GETUPVAL                         R39 10
      802 DUPTABLE                         R40 K114 [{"leftText", "rightText", "LayoutOrder"}]
      803 LOADK                            R43 K44 ["VRControls"]
      804 LOADK                            R44 K123 ["ToggleCursorLockLabel"]
      805 NAMECALL                         R41 R1 K46 ["getText"]
      807 CALL                             R41 3 1
      808 SETTABLEKS                       R41 R40 K112 ["leftText"]
      810 LOADK                            R43 K44 ["VRControls"]
      811 LOADK                            R44 K124 ["ToggleCursorShortcutLabel"]
      812 NAMECALL                         R41 R1 K46 ["getText"]
      814 CALL                             R41 3 1
      815 SETTABLEKS                       R41 R40 K113 ["rightText"]
      817 GETUPVAL                         R41 6
      818 NAMECALL                         R41 R41 K28 ["getNextOrder"]
      820 CALL                             R41 1 1
      821 SETTABLEKS                       R41 R40 K24 ["LayoutOrder"]
      823 CALL                             R38 2 1
      824 SETTABLEKS                       R38 R37 K108 ["ToggleCursorLock"]
      826 GETUPVAL                         R39 1
      827 GETTABLEKS                       R38 R39 K20 ["createElement"]
      829 GETUPVAL                         R39 10
      830 DUPTABLE                         R40 K114 [{"leftText", "rightText", "LayoutOrder"}]
      831 LOADK                            R43 K44 ["VRControls"]
      832 LOADK                            R44 K125 ["SwitchControllersLabel"]
      833 NAMECALL                         R41 R1 K46 ["getText"]
      835 CALL                             R41 3 1
      836 SETTABLEKS                       R41 R40 K112 ["leftText"]
      838 LOADK                            R43 K44 ["VRControls"]
      839 LOADK                            R44 K126 ["ShiftLeftRightLabel"]
      840 NAMECALL                         R41 R1 K46 ["getText"]
      842 CALL                             R41 3 1
      843 SETTABLEKS                       R41 R40 K113 ["rightText"]
      845 GETUPVAL                         R41 6
      846 NAMECALL                         R41 R41 K28 ["getNextOrder"]
      848 CALL                             R41 1 1
      849 SETTABLEKS                       R41 R40 K24 ["LayoutOrder"]
      851 CALL                             R38 2 1
      852 SETTABLEKS                       R38 R37 K109 ["SwitchControllers"]
      854 GETUPVAL                         R39 1
      855 GETTABLEKS                       R38 R39 K20 ["createElement"]
      857 LOADK                            R39 K43 ["TextLabel"]
      858 NEWTABLE                         R40 4 0
      860 GETUPVAL                         R42 1
      861 GETTABLEKS                       R41 R42 K22 ["Tag"]
      863 LOADK                            R42 K27 ["CX-Invisible"]
      864 SETTABLE                         R42 R40 R41
      865 LOADK                            R43 K44 ["VRControls"]
      866 LOADK                            R44 K127 ["MouseInteractionHelpLabel1"]
      867 NAMECALL                         R41 R1 K46 ["getText"]
      869 CALL                             R41 3 1
      870 SETTABLEKS                       R41 R40 K47 ["Text"]
      872 GETUPVAL                         R41 6
      873 NAMECALL                         R41 R41 K28 ["getNextOrder"]
      875 CALL                             R41 1 1
      876 SETTABLEKS                       R41 R40 K24 ["LayoutOrder"]
      878 CALL                             R38 2 1
      879 SETTABLEKS                       R38 R37 K110 ["MouseMapping1"]
      881 CALL                             R34 3 1
      882 SETTABLEKS                       R34 R33 K32 ["Tooltip"]
      884 CALL                             R30 3 1
      885 SETTABLEKS                       R30 R29 K25 ["InnerContainer"]
      887 CALL                             R26 3 -1
      888 RETURN                           R26 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ControlsEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["ContextServices"]
       16 GETTABLEKS                       R2 R3 K9 ["Localization"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R5 R0 K6 ["Packages"]
       22 GETTABLEKS                       R4 R5 K10 ["React"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R7 R0 K11 ["Src"]
       29 GETTABLEKS                       R6 R7 K12 ["Util"]
       31 GETTABLEKS                       R5 R6 K13 ["Constants"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R9 R0 K11 ["Src"]
       38 GETTABLEKS                       R8 R9 K12 ["Util"]
       40 GETTABLEKS                       R7 R8 K14 ["MockableProxyPluginComponents"]
       42 CALL                             R6 1 1
       43 GETTABLEKS                       R5 R6 K15 ["StudioDeviceEmulator"]
       45 GETIMPORT                        R6 K5 [require]
       47 GETTABLEKS                       R9 R0 K11 ["Src"]
       49 GETTABLEKS                       R8 R9 K12 ["Util"]
       51 GETTABLEKS                       R7 R8 K16 ["MappingsContext"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K5 [require]
       56 GETTABLEKS                       R10 R0 K11 ["Src"]
       58 GETTABLEKS                       R9 R10 K12 ["Util"]
       60 GETTABLEKS                       R8 R9 K17 ["MappingsActionsContext"]
       62 CALL                             R7 1 1
       63 GETTABLEKS                       R9 R1 K18 ["Styling"]
       65 GETTABLEKS                       R8 R9 K19 ["joinTags"]
       67 GETTABLEKS                       R10 R1 K20 ["UI"]
       69 GETTABLEKS                       R9 R10 K21 ["Checkbox"]
       71 GETTABLEKS                       R11 R1 K20 ["UI"]
       73 GETTABLEKS                       R10 R11 K22 ["Slider"]
       75 GETTABLEKS                       R12 R1 K12 ["Util"]
       77 GETTABLEKS                       R11 R12 K23 ["LayoutOrderIterator"]
       79 GETTABLEKS                       R12 R11 K24 ["new"]
       81 CALL                             R12 0 1
       82 GETTABLEKS                       R13 R4 K25 ["HAND_TRACKED_DEVICES"]
       84 DUPCLOSURE                       R14 K26 [PROTO_0]
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R12
       87 DUPCLOSURE                       R15 K27 [PROTO_17]
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R13
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R12
       95 CAPTURE                          VAL R9
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R10
       98 CAPTURE                          VAL R14
       99 GETTABLEKS                       R16 R3 K28 ["memo"]
      101 MOVE                             R17 R15
      102 CALL                             R16 1 -1
      103 RETURN                           R16 -1
