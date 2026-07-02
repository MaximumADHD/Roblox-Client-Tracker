PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Frame"]
        4 NEWTABLE                         R3 2 0
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K2 ["Tag"]
        9 LOADK                            R5 K3 ["X-Row Component-VRMappingLabel"]
       10 SETTABLE                         R5 R3 R4
       11 GETTABLEKS                       R4 R0 K4 ["LayoutOrder"]
       13 SETTABLEKS                       R4 R3 K4 ["LayoutOrder"]
       15 DUPTABLE                         R4 K7 [{"LeftText", "RightText"}]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K0 ["createElement"]
       19 LOADK                            R6 K8 ["TextLabel"]
       20 NEWTABLE                         R7 4 0
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R8 R8 K2 ["Tag"]
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
       44 GETUPVAL                         R5 0
       45 GETTABLEKS                       R5 R5 K0 ["createElement"]
       47 LOADK                            R6 K8 ["TextLabel"]
       48 NEWTABLE                         R7 4 0
       50 GETUPVAL                         R8 0
       51 GETTABLEKS                       R8 R8 K2 ["Tag"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["shouldVRControlsRespond"]
        3 JUMPIFNOT                        R0 ; [+24]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["activeVRUserCFrames"]
        8 GETIMPORT                        R3 K5 [Enum.UserCFrame.Head]
       10 GETTABLE                         R1 R2 R3
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 2
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K1 ["activeVRUserCFrames"]
       16 GETIMPORT                        R3 K7 [Enum.UserCFrame.LeftHand]
       18 GETTABLE                         R1 R2 R3
       19 CALL                             R0 1 0
       20 GETUPVAL                         R0 3
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K1 ["activeVRUserCFrames"]
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
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useContext"]
        7 GETUPVAL                         R3 2
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K1 ["useContext"]
       12 GETUPVAL                         R4 3
       13 CALL                             R3 1 1
       14 GETTABLEKS                       R3 R3 K2 ["setVRUserCFrameActive"]
       16 GETTABLEKS                       R4 R2 K3 ["activeVRUserCFrames"]
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R5 R5 K1 ["useContext"]
       21 GETUPVAL                         R6 3
       22 CALL                             R5 1 1
       23 GETTABLEKS                       R5 R5 K4 ["setVRCFrameTranslationSensitivity"]
       25 GETUPVAL                         R6 1
       26 GETTABLEKS                       R6 R6 K5 ["useState"]
       28 LOADN                            R7 5
       29 CALL                             R6 1 2
       30 JUMPIFNOT                        R3 ; [+2]
       31 JUMPIFNOT                        R4 ; [+1]
       32 JUMPIF                           R5 ; [+1]
       33 RETURN                           R0 0
       34 GETUPVAL                         R8 1
       35 GETTABLEKS                       R8 R8 K5 ["useState"]
       37 GETTABLEKS                       R9 R0 K6 ["shouldShowTooltip"]
       39 CALL                             R8 1 2
       40 GETUPVAL                         R10 1
       41 GETTABLEKS                       R10 R10 K5 ["useState"]
       43 LOADB                            R11 0
       44 CALL                             R10 1 2
       45 GETUPVAL                         R12 1
       46 GETTABLEKS                       R12 R12 K7 ["useCallback"]
       48 NEWCLOSURE                       R13 P0
       49 CAPTURE                          VAL R11
       50 NEWTABLE                         R14 0 1
       52 MOVE                             R15 R11
       53 SETLIST                          R14 R15 1 [1]
       55 CALL                             R12 2 1
       56 GETUPVAL                         R13 1
       57 GETTABLEKS                       R13 R13 K7 ["useCallback"]
       59 NEWCLOSURE                       R14 P1
       60 CAPTURE                          VAL R11
       61 NEWTABLE                         R15 0 1
       63 MOVE                             R16 R11
       64 SETLIST                          R15 R16 1 [1]
       66 CALL                             R13 2 1
       67 GETUPVAL                         R14 1
       68 GETTABLEKS                       R14 R14 K5 ["useState"]
       70 LOADB                            R15 0
       71 CALL                             R14 1 2
       72 GETTABLEKS                       R16 R2 K8 ["gamepadId"]
       74 GETUPVAL                         R17 1
       75 GETTABLEKS                       R17 R17 K9 ["useMemo"]
       77 NEWCLOSURE                       R18 P2
       78 CAPTURE                          UPVAL U4
       79 CAPTURE                          VAL R16
       80 NEWTABLE                         R19 0 1
       82 MOVE                             R20 R16
       83 SETLIST                          R19 R20 1 [1]
       85 CALL                             R17 2 1
       86 GETUPVAL                         R18 1
       87 GETTABLEKS                       R18 R18 K5 ["useState"]
       89 GETIMPORT                        R20 K13 [Enum.UserCFrame.Head]
       91 GETTABLE                         R19 R4 R20
       92 CALL                             R18 1 2
       93 GETUPVAL                         R20 1
       94 GETTABLEKS                       R20 R20 K5 ["useState"]
       96 GETIMPORT                        R22 K15 [Enum.UserCFrame.LeftHand]
       98 GETTABLE                         R21 R4 R22
       99 CALL                             R20 1 2
      100 GETUPVAL                         R22 1
      101 GETTABLEKS                       R22 R22 K5 ["useState"]
      103 GETIMPORT                        R24 K17 [Enum.UserCFrame.RightHand]
      105 GETTABLE                         R23 R4 R24
      106 CALL                             R22 1 2
      107 DUPCLOSURE                       R24 K18 [PROTO_4]
      108 NEWCLOSURE                       R25 P4
      109 CAPTURE                          VAL R18
      110 CAPTURE                          VAL R20
      111 CAPTURE                          VAL R22
      112 GETUPVAL                         R26 1
      113 GETTABLEKS                       R26 R26 K19 ["useEffect"]
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
      127 GETUPVAL                         R26 1
      128 GETTABLEKS                       R26 R26 K19 ["useEffect"]
      130 NEWCLOSURE                       R27 P6
      131 CAPTURE                          VAL R2
      132 CAPTURE                          VAL R19
      133 CAPTURE                          VAL R21
      134 CAPTURE                          VAL R23
      135 NEWTABLE                         R28 0 1
      137 GETTABLEKS                       R29 R2 K3 ["activeVRUserCFrames"]
      139 SETLIST                          R28 R29 1 [1]
      141 CALL                             R26 2 0
      142 GETUPVAL                         R26 1
      143 GETTABLEKS                       R26 R26 K20 ["createElement"]
      145 LOADK                            R27 K21 ["Frame"]
      146 NEWTABLE                         R28 2 0
      148 GETUPVAL                         R29 1
      149 GETTABLEKS                       R29 R29 K22 ["Tag"]
      151 GETUPVAL                         R30 5
      152 LOADK                            R31 K23 ["Component-VRControls CX-Invisible"]
      153 CALL                             R30 1 1
      154 SETTABLE                         R30 R28 R29
      155 GETTABLEKS                       R29 R0 K24 ["LayoutOrder"]
      157 SETTABLEKS                       R29 R28 K24 ["LayoutOrder"]
      159 DUPTABLE                         R29 K26 [{"InnerContainer"}]
      160 GETUPVAL                         R30 1
      161 GETTABLEKS                       R30 R30 K20 ["createElement"]
      163 LOADK                            R31 K21 ["Frame"]
      164 NEWTABLE                         R32 2 0
      166 GETUPVAL                         R33 1
      167 GETTABLEKS                       R33 R33 K22 ["Tag"]
      169 LOADK                            R34 K27 ["CX-Invisible"]
      170 SETTABLE                         R34 R32 R33
      171 GETUPVAL                         R33 6
      172 NAMECALL                         R33 R33 K28 ["getNextOrder"]
      174 CALL                             R33 1 1
      175 SETTABLEKS                       R33 R32 K24 ["LayoutOrder"]
      177 DUPTABLE                         R33 K33 [{"Separator", "Controls", "ResetPositionsTooltip", "Tooltip"}]
      178 GETUPVAL                         R34 1
      179 GETTABLEKS                       R34 R34 K20 ["createElement"]
      181 LOADK                            R35 K21 ["Frame"]
      182 DUPTABLE                         R36 K34 [{"LayoutOrder"}]
      183 GETUPVAL                         R37 6
      184 NAMECALL                         R37 R37 K28 ["getNextOrder"]
      186 CALL                             R37 1 1
      187 SETTABLEKS                       R37 R36 K24 ["LayoutOrder"]
      189 CALL                             R34 2 1
      190 SETTABLEKS                       R34 R33 K29 ["Separator"]
      192 GETUPVAL                         R34 1
      193 GETTABLEKS                       R34 R34 K20 ["createElement"]
      195 LOADK                            R35 K21 ["Frame"]
      196 NEWTABLE                         R36 2 0
      198 GETUPVAL                         R37 1
      199 GETTABLEKS                       R37 R37 K22 ["Tag"]
      201 LOADK                            R38 K35 ["X-Column CX-Invisible"]
      202 SETTABLE                         R38 R36 R37
      203 GETUPVAL                         R37 6
      204 NAMECALL                         R37 R37 K28 ["getNextOrder"]
      206 CALL                             R37 1 1
      207 SETTABLEKS                       R37 R36 K24 ["LayoutOrder"]
      209 DUPTABLE                         R37 K39 [{"LabelAndTooltipFrame", "ContainerFrame", "SliderFrame"}]
      210 GETUPVAL                         R38 1
      211 GETTABLEKS                       R38 R38 K20 ["createElement"]
      213 LOADK                            R39 K21 ["Frame"]
      214 DUPTABLE                         R40 K34 [{"LayoutOrder"}]
      215 GETUPVAL                         R41 6
      216 NAMECALL                         R41 R41 K28 ["getNextOrder"]
      218 CALL                             R41 1 1
      219 SETTABLEKS                       R41 R40 K24 ["LayoutOrder"]
      221 DUPTABLE                         R41 K42 [{"Label", "TooltipButton"}]
      222 GETUPVAL                         R42 1
      223 GETTABLEKS                       R42 R42 K20 ["createElement"]
      225 LOADK                            R43 K43 ["TextLabel"]
      226 NEWTABLE                         R44 4 0
      228 GETUPVAL                         R45 1
      229 GETTABLEKS                       R45 R45 K22 ["Tag"]
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
      249 GETUPVAL                         R42 1
      250 GETTABLEKS                       R42 R42 K20 ["createElement"]
      252 LOADK                            R43 K48 ["TextButton"]
      253 NEWTABLE                         R44 8 0
      255 GETUPVAL                         R45 1
      256 GETTABLEKS                       R45 R45 K22 ["Tag"]
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
      289 GETUPVAL                         R45 1
      290 GETTABLEKS                       R45 R45 K56 ["Event"]
      292 GETTABLEKS                       R45 R45 K57 ["MouseEnter"]
      294 NEWCLOSURE                       R46 P7
      295 CAPTURE                          VAL R15
      296 SETTABLE                         R46 R44 R45
      297 GETUPVAL                         R45 1
      298 GETTABLEKS                       R45 R45 K56 ["Event"]
      300 GETTABLEKS                       R45 R45 K58 ["MouseLeave"]
      302 NEWCLOSURE                       R46 P8
      303 CAPTURE                          VAL R15
      304 SETTABLE                         R46 R44 R45
      305 GETUPVAL                         R45 1
      306 GETTABLEKS                       R45 R45 K56 ["Event"]
      308 GETTABLEKS                       R45 R45 K59 ["MouseButton1Click"]
      310 NEWCLOSURE                       R46 P9
      311 CAPTURE                          VAL R9
      312 CAPTURE                          VAL R8
      313 SETTABLE                         R46 R44 R45
      314 CALL                             R42 2 1
      315 SETTABLEKS                       R42 R41 K41 ["TooltipButton"]
      317 CALL                             R38 3 1
      318 SETTABLEKS                       R38 R37 K36 ["LabelAndTooltipFrame"]
      320 GETUPVAL                         R38 1
      321 GETTABLEKS                       R38 R38 K20 ["createElement"]
      323 LOADK                            R39 K21 ["Frame"]
      324 DUPTABLE                         R40 K34 [{"LayoutOrder"}]
      325 GETUPVAL                         R41 6
      326 NAMECALL                         R41 R41 K28 ["getNextOrder"]
      328 CALL                             R41 1 1
      329 SETTABLEKS                       R41 R40 K24 ["LayoutOrder"]
      331 DUPTABLE                         R41 K62 [{"CheckboxFrame", "ResetPositionsFrame"}]
      332 GETUPVAL                         R42 1
      333 GETTABLEKS                       R42 R42 K20 ["createElement"]
      335 LOADK                            R43 K21 ["Frame"]
      336 DUPTABLE                         R44 K34 [{"LayoutOrder"}]
      337 GETUPVAL                         R45 6
      338 NAMECALL                         R45 R45 K28 ["getNextOrder"]
      340 CALL                             R45 1 1
      341 SETTABLEKS                       R45 R44 K24 ["LayoutOrder"]
      343 DUPTABLE                         R45 K66 [{"HeadsetBox", "LeftHandBox", "RightHandBox"}]
      344 GETUPVAL                         R46 1
      345 GETTABLEKS                       R46 R46 K20 ["createElement"]
      347 GETUPVAL                         R47 7
      348 DUPTABLE                         R48 K72 [{["Checked"], ["Key"], ["OnClick"], ["Text"], ["Disabled"] = False, ["LayoutOrder"]}]
      349 SETTABLEKS                       R18 R48 K67 ["Checked"]
      351 GETIMPORT                        R49 K13 [Enum.UserCFrame.Head]
      353 GETTABLEKS                       R49 R49 K73 ["Name"]
      355 SETTABLEKS                       R49 R48 K68 ["Key"]
      357 NEWCLOSURE                       R49 P10
      358 CAPTURE                          VAL R18
      359 CAPTURE                          VAL R19
      360 CAPTURE                          VAL R20
      361 CAPTURE                          VAL R22
      362 CAPTURE                          VAL R3
      363 SETTABLEKS                       R49 R48 K69 ["OnClick"]
      365 LOADK                            R51 K44 ["VRControls"]
      366 LOADK                            R52 K74 ["HeadsetLabel"]
      367 NAMECALL                         R49 R1 K46 ["getText"]
      369 CALL                             R49 3 1
      370 SETTABLEKS                       R49 R48 K47 ["Text"]
      372 GETUPVAL                         R49 6
      373 NAMECALL                         R49 R49 K28 ["getNextOrder"]
      375 CALL                             R49 1 1
      376 SETTABLEKS                       R49 R48 K24 ["LayoutOrder"]
      378 CALL                             R46 2 1
      379 SETTABLEKS                       R46 R45 K63 ["HeadsetBox"]
      381 GETUPVAL                         R46 1
      382 GETTABLEKS                       R46 R46 K20 ["createElement"]
      384 GETUPVAL                         R47 7
      385 DUPTABLE                         R48 K75 [{"Checked", "Key", "OnClick", "Text", "Disabled", "LayoutOrder"}]
      386 SETTABLEKS                       R20 R48 K67 ["Checked"]
      388 GETIMPORT                        R49 K15 [Enum.UserCFrame.LeftHand]
      390 GETTABLEKS                       R49 R49 K73 ["Name"]
      392 SETTABLEKS                       R49 R48 K68 ["Key"]
      394 NEWCLOSURE                       R49 P11
      395 CAPTURE                          VAL R20
      396 CAPTURE                          VAL R21
      397 CAPTURE                          VAL R18
      398 CAPTURE                          VAL R22
      399 CAPTURE                          VAL R3
      400 SETTABLEKS                       R49 R48 K69 ["OnClick"]
      402 LOADK                            R51 K44 ["VRControls"]
      403 LOADK                            R52 K76 ["LeftControllerLabel"]
      404 NAMECALL                         R49 R1 K46 ["getText"]
      406 CALL                             R49 3 1
      407 SETTABLEKS                       R49 R48 K47 ["Text"]
      409 NOT                              R49 R17
      410 SETTABLEKS                       R49 R48 K70 ["Disabled"]
      412 GETUPVAL                         R49 6
      413 NAMECALL                         R49 R49 K28 ["getNextOrder"]
      415 CALL                             R49 1 1
      416 SETTABLEKS                       R49 R48 K24 ["LayoutOrder"]
      418 CALL                             R46 2 1
      419 SETTABLEKS                       R46 R45 K64 ["LeftHandBox"]
      421 GETUPVAL                         R46 1
      422 GETTABLEKS                       R46 R46 K20 ["createElement"]
      424 GETUPVAL                         R47 7
      425 DUPTABLE                         R48 K75 [{"Checked", "Key", "OnClick", "Text", "Disabled", "LayoutOrder"}]
      426 SETTABLEKS                       R22 R48 K67 ["Checked"]
      428 GETIMPORT                        R49 K17 [Enum.UserCFrame.RightHand]
      430 GETTABLEKS                       R49 R49 K73 ["Name"]
      432 SETTABLEKS                       R49 R48 K68 ["Key"]
      434 NEWCLOSURE                       R49 P12
      435 CAPTURE                          VAL R22
      436 CAPTURE                          VAL R23
      437 CAPTURE                          VAL R18
      438 CAPTURE                          VAL R20
      439 CAPTURE                          VAL R3
      440 SETTABLEKS                       R49 R48 K69 ["OnClick"]
      442 LOADK                            R51 K44 ["VRControls"]
      443 LOADK                            R52 K77 ["RightControllerLabel"]
      444 NAMECALL                         R49 R1 K46 ["getText"]
      446 CALL                             R49 3 1
      447 SETTABLEKS                       R49 R48 K47 ["Text"]
      449 NOT                              R49 R17
      450 SETTABLEKS                       R49 R48 K70 ["Disabled"]
      452 GETUPVAL                         R49 6
      453 NAMECALL                         R49 R49 K28 ["getNextOrder"]
      455 CALL                             R49 1 1
      456 SETTABLEKS                       R49 R48 K24 ["LayoutOrder"]
      458 CALL                             R46 2 1
      459 SETTABLEKS                       R46 R45 K65 ["RightHandBox"]
      461 CALL                             R42 3 1
      462 SETTABLEKS                       R42 R41 K60 ["CheckboxFrame"]
      464 GETTABLEKS                       R42 R0 K78 ["inPlayClient"]
      466 JUMPIFNOT                        R42 ; [+68]
      467 GETUPVAL                         R42 1
      468 GETTABLEKS                       R42 R42 K20 ["createElement"]
      470 LOADK                            R43 K21 ["Frame"]
      471 DUPTABLE                         R44 K34 [{"LayoutOrder"}]
      472 GETUPVAL                         R45 6
      473 NAMECALL                         R45 R45 K28 ["getNextOrder"]
      475 CALL                             R45 1 1
      476 SETTABLEKS                       R45 R44 K24 ["LayoutOrder"]
      478 DUPTABLE                         R45 K80 [{"ResetPositionsButton"}]
      479 GETUPVAL                         R46 1
      480 GETTABLEKS                       R46 R46 K20 ["createElement"]
      482 LOADK                            R47 K81 ["ImageButton"]
      483 NEWTABLE                         R48 8 0
      485 GETUPVAL                         R49 1
      486 GETTABLEKS                       R49 R49 K22 ["Tag"]
      488 LOADK                            R50 K82 ["data-testid=ResetPositionsButton"]
      489 SETTABLE                         R50 R48 R49
      490 GETUPVAL                         R49 1
      491 GETTABLEKS                       R49 R49 K56 ["Event"]
      493 GETTABLEKS                       R49 R49 K57 ["MouseEnter"]
      495 SETTABLE                         R12 R48 R49
      496 GETUPVAL                         R49 1
      497 GETTABLEKS                       R49 R49 K56 ["Event"]
      499 GETTABLEKS                       R49 R49 K58 ["MouseLeave"]
      501 SETTABLE                         R13 R48 R49
      502 GETUPVAL                         R49 1
      503 GETTABLEKS                       R49 R49 K56 ["Event"]
      505 GETTABLEKS                       R49 R49 K59 ["MouseButton1Click"]
      507 DUPCLOSURE                       R50 K83 [PROTO_15]
      508 CAPTURE                          UPVAL U8
      509 SETTABLE                         R50 R48 R49
      510 GETUPVAL                         R49 6
      511 NAMECALL                         R49 R49 K28 ["getNextOrder"]
      513 CALL                             R49 1 1
      514 SETTABLEKS                       R49 R48 K24 ["LayoutOrder"]
      516 DUPTABLE                         R49 K85 [{"ResetIconImage"}]
      517 GETUPVAL                         R50 1
      518 GETTABLEKS                       R50 R50 K20 ["createElement"]
      520 LOADK                            R51 K86 ["ImageLabel"]
      521 DUPTABLE                         R52 K34 [{"LayoutOrder"}]
      522 GETUPVAL                         R53 6
      523 NAMECALL                         R53 R53 K28 ["getNextOrder"]
      525 CALL                             R53 1 1
      526 SETTABLEKS                       R53 R52 K24 ["LayoutOrder"]
      528 CALL                             R50 2 1
      529 SETTABLEKS                       R50 R49 K84 ["ResetIconImage"]
      531 CALL                             R46 3 1
      532 SETTABLEKS                       R46 R45 K79 ["ResetPositionsButton"]
      534 CALL                             R42 3 1
      535 SETTABLEKS                       R42 R41 K61 ["ResetPositionsFrame"]
      537 CALL                             R38 3 1
      538 SETTABLEKS                       R38 R37 K37 ["ContainerFrame"]
      540 GETUPVAL                         R38 1
      541 GETTABLEKS                       R38 R38 K20 ["createElement"]
      543 LOADK                            R39 K21 ["Frame"]
      544 NEWTABLE                         R40 2 0
      546 GETUPVAL                         R41 1
      547 GETTABLEKS                       R41 R41 K22 ["Tag"]
      549 LOADK                            R42 K87 ["data-testid=TranslationSlider"]
      550 SETTABLE                         R42 R40 R41
      551 GETUPVAL                         R41 6
      552 NAMECALL                         R41 R41 K28 ["getNextOrder"]
      554 CALL                             R41 1 1
      555 SETTABLEKS                       R41 R40 K24 ["LayoutOrder"]
      557 DUPTABLE                         R41 K90 [{"SliderLabel", "TranslationSlider"}]
      558 GETUPVAL                         R42 1
      559 GETTABLEKS                       R42 R42 K20 ["createElement"]
      561 LOADK                            R43 K43 ["TextLabel"]
      562 NEWTABLE                         R44 4 0
      564 GETUPVAL                         R45 1
      565 GETTABLEKS                       R45 R45 K22 ["Tag"]
      567 LOADK                            R46 K27 ["CX-Invisible"]
      568 SETTABLE                         R46 R44 R45
      569 LOADK                            R47 K44 ["VRControls"]
      570 LOADK                            R48 K91 ["TranslationSensitivityLabel"]
      571 NAMECALL                         R45 R1 K46 ["getText"]
      573 CALL                             R45 3 1
      574 SETTABLEKS                       R45 R44 K47 ["Text"]
      576 GETUPVAL                         R45 6
      577 NAMECALL                         R45 R45 K28 ["getNextOrder"]
      579 CALL                             R45 1 1
      580 SETTABLEKS                       R45 R44 K24 ["LayoutOrder"]
      582 CALL                             R42 2 1
      583 SETTABLEKS                       R42 R41 K88 ["SliderLabel"]
      585 GETUPVAL                         R42 1
      586 GETTABLEKS                       R42 R42 K20 ["createElement"]
      588 GETUPVAL                         R43 9
      589 DUPTABLE                         R44 K104 [{["LayoutOrder"], ["AnchorPoint"], ["Disabled"] = False, ["Value"], ["Min"] = 1, ["Max"] = 10, ["OnValueChanged"], ["SnapIncrement"] = 1, ["VerticalDragTolerance"] = 0, ["ShowInput"] = True}]
      590 GETUPVAL                         R45 6
      591 NAMECALL                         R45 R45 K28 ["getNextOrder"]
      593 CALL                             R45 1 1
      594 SETTABLEKS                       R45 R44 K24 ["LayoutOrder"]
      596 GETIMPORT                        R45 K106 [Vector2.new]
      598 LOADN                            R46 0
      599 LOADN                            R47 0
      600 CALL                             R45 2 1
      601 SETTABLEKS                       R45 R44 K92 ["AnchorPoint"]
      603 SETTABLEKS                       R6 R44 K93 ["Value"]
      605 NEWCLOSURE                       R45 P14
      606 CAPTURE                          VAL R7
      607 CAPTURE                          VAL R5
      608 SETTABLEKS                       R45 R44 K98 ["OnValueChanged"]
      610 CALL                             R42 2 1
      611 SETTABLEKS                       R42 R41 K89 ["TranslationSlider"]
      613 CALL                             R38 3 1
      614 SETTABLEKS                       R38 R37 K38 ["SliderFrame"]
      616 CALL                             R34 3 1
      617 SETTABLEKS                       R34 R33 K30 ["Controls"]
      619 GETTABLEKS                       R34 R0 K78 ["inPlayClient"]
      621 JUMPIFNOT                        R34 ; [+27]
      622 MOVE                             R34 R10
      623 JUMPIFNOT                        R34 ; [+25]
      624 GETUPVAL                         R34 1
      625 GETTABLEKS                       R34 R34 K20 ["createElement"]
      627 LOADK                            R35 K43 ["TextLabel"]
      628 NEWTABLE                         R36 4 0
      630 GETUPVAL                         R37 1
      631 GETTABLEKS                       R37 R37 K22 ["Tag"]
      633 LOADK                            R38 K107 ["ResetPositionsTooltip data-testid=ResetPositionsTooltip"]
      634 SETTABLE                         R38 R36 R37
      635 LOADK                            R39 K44 ["VRControls"]
      636 LOADK                            R40 K108 ["ResetAllLabel"]
      637 NAMECALL                         R37 R1 K46 ["getText"]
      639 CALL                             R37 3 1
      640 SETTABLEKS                       R37 R36 K47 ["Text"]
      642 GETUPVAL                         R37 6
      643 NAMECALL                         R37 R37 K28 ["getNextOrder"]
      645 CALL                             R37 1 1
      646 SETTABLEKS                       R37 R36 K24 ["LayoutOrder"]
      648 CALL                             R34 2 1
      649 SETTABLEKS                       R34 R33 K31 ["ResetPositionsTooltip"]
      651 MOVE                             R34 R8
      652 JUMPIFNOT                        R34 ; [+208]
      653 GETUPVAL                         R34 1
      654 GETTABLEKS                       R34 R34 K20 ["createElement"]
      656 LOADK                            R35 K21 ["Frame"]
      657 NEWTABLE                         R36 1 0
      659 GETUPVAL                         R37 1
      660 GETTABLEKS                       R37 R37 K22 ["Tag"]
      662 LOADK                            R38 K109 ["data-testid=Tooltip"]
      663 SETTABLE                         R38 R36 R37
      664 DUPTABLE                         R37 K117 [{"MoveMapping", "FlyMapping", "RotateMapping", "TiltMapping", "ToggleCursorLock", "SwitchControllers", "MouseMapping1"}]
      665 GETUPVAL                         R38 1
      666 GETTABLEKS                       R38 R38 K20 ["createElement"]
      668 GETUPVAL                         R39 10
      669 DUPTABLE                         R40 K120 [{"leftText", "rightText", "LayoutOrder"}]
      670 LOADK                            R43 K44 ["VRControls"]
      671 LOADK                            R44 K121 ["MoveHelpLabel"]
      672 NAMECALL                         R41 R1 K46 ["getText"]
      674 CALL                             R41 3 1
      675 SETTABLEKS                       R41 R40 K118 ["leftText"]
      677 LOADK                            R43 K44 ["VRControls"]
      678 LOADK                            R44 K122 ["ShiftWASDLabel"]
      679 NAMECALL                         R41 R1 K46 ["getText"]
      681 CALL                             R41 3 1
      682 SETTABLEKS                       R41 R40 K119 ["rightText"]
      684 GETUPVAL                         R41 6
      685 NAMECALL                         R41 R41 K28 ["getNextOrder"]
      687 CALL                             R41 1 1
      688 SETTABLEKS                       R41 R40 K24 ["LayoutOrder"]
      690 CALL                             R38 2 1
      691 SETTABLEKS                       R38 R37 K110 ["MoveMapping"]
      693 GETUPVAL                         R38 1
      694 GETTABLEKS                       R38 R38 K20 ["createElement"]
      696 GETUPVAL                         R39 10
      697 DUPTABLE                         R40 K120 [{"leftText", "rightText", "LayoutOrder"}]
      698 LOADK                            R43 K44 ["VRControls"]
      699 LOADK                            R44 K123 ["FlyUpDownHelpLabel"]
      700 NAMECALL                         R41 R1 K46 ["getText"]
      702 CALL                             R41 3 1
      703 SETTABLEKS                       R41 R40 K118 ["leftText"]
      705 LOADK                            R43 K44 ["VRControls"]
      706 LOADK                            R44 K124 ["ShiftEQLabel"]
      707 NAMECALL                         R41 R1 K46 ["getText"]
      709 CALL                             R41 3 1
      710 SETTABLEKS                       R41 R40 K119 ["rightText"]
      712 GETUPVAL                         R41 6
      713 NAMECALL                         R41 R41 K28 ["getNextOrder"]
      715 CALL                             R41 1 1
      716 SETTABLEKS                       R41 R40 K24 ["LayoutOrder"]
      718 CALL                             R38 2 1
      719 SETTABLEKS                       R38 R37 K111 ["FlyMapping"]
      721 GETUPVAL                         R38 1
      722 GETTABLEKS                       R38 R38 K20 ["createElement"]
      724 GETUPVAL                         R39 10
      725 DUPTABLE                         R40 K120 [{"leftText", "rightText", "LayoutOrder"}]
      726 LOADK                            R43 K44 ["VRControls"]
      727 LOADK                            R44 K125 ["RotateHelpLabel"]
      728 NAMECALL                         R41 R1 K46 ["getText"]
      730 CALL                             R41 3 1
      731 SETTABLEKS                       R41 R40 K118 ["leftText"]
      733 LOADK                            R43 K44 ["VRControls"]
      734 LOADK                            R44 K126 ["MouseMoveHelpLabel"]
      735 NAMECALL                         R41 R1 K46 ["getText"]
      737 CALL                             R41 3 1
      738 SETTABLEKS                       R41 R40 K119 ["rightText"]
      740 GETUPVAL                         R41 6
      741 NAMECALL                         R41 R41 K28 ["getNextOrder"]
      743 CALL                             R41 1 1
      744 SETTABLEKS                       R41 R40 K24 ["LayoutOrder"]
      746 CALL                             R38 2 1
      747 SETTABLEKS                       R38 R37 K112 ["RotateMapping"]
      749 GETUPVAL                         R38 1
      750 GETTABLEKS                       R38 R38 K20 ["createElement"]
      752 GETUPVAL                         R39 10
      753 DUPTABLE                         R40 K120 [{"leftText", "rightText", "LayoutOrder"}]
      754 LOADK                            R43 K44 ["VRControls"]
      755 LOADK                            R44 K127 ["TiltHelpLabel"]
      756 NAMECALL                         R41 R1 K46 ["getText"]
      758 CALL                             R41 3 1
      759 SETTABLEKS                       R41 R40 K118 ["leftText"]
      761 LOADK                            R43 K44 ["VRControls"]
      762 LOADK                            R44 K128 ["RightClickAndMouseMoveHelpLabel"]
      763 NAMECALL                         R41 R1 K46 ["getText"]
      765 CALL                             R41 3 1
      766 SETTABLEKS                       R41 R40 K119 ["rightText"]
      768 GETUPVAL                         R41 6
      769 NAMECALL                         R41 R41 K28 ["getNextOrder"]
      771 CALL                             R41 1 1
      772 SETTABLEKS                       R41 R40 K24 ["LayoutOrder"]
      774 CALL                             R38 2 1
      775 SETTABLEKS                       R38 R37 K113 ["TiltMapping"]
      777 GETUPVAL                         R38 1
      778 GETTABLEKS                       R38 R38 K20 ["createElement"]
      780 GETUPVAL                         R39 10
      781 DUPTABLE                         R40 K120 [{"leftText", "rightText", "LayoutOrder"}]
      782 LOADK                            R43 K44 ["VRControls"]
      783 LOADK                            R44 K129 ["ToggleCursorLockLabel"]
      784 NAMECALL                         R41 R1 K46 ["getText"]
      786 CALL                             R41 3 1
      787 SETTABLEKS                       R41 R40 K118 ["leftText"]
      789 LOADK                            R43 K44 ["VRControls"]
      790 LOADK                            R44 K130 ["ToggleCursorShortcutLabel"]
      791 NAMECALL                         R41 R1 K46 ["getText"]
      793 CALL                             R41 3 1
      794 SETTABLEKS                       R41 R40 K119 ["rightText"]
      796 GETUPVAL                         R41 6
      797 NAMECALL                         R41 R41 K28 ["getNextOrder"]
      799 CALL                             R41 1 1
      800 SETTABLEKS                       R41 R40 K24 ["LayoutOrder"]
      802 CALL                             R38 2 1
      803 SETTABLEKS                       R38 R37 K114 ["ToggleCursorLock"]
      805 GETUPVAL                         R38 1
      806 GETTABLEKS                       R38 R38 K20 ["createElement"]
      808 GETUPVAL                         R39 10
      809 DUPTABLE                         R40 K120 [{"leftText", "rightText", "LayoutOrder"}]
      810 LOADK                            R43 K44 ["VRControls"]
      811 LOADK                            R44 K131 ["SwitchControllersLabel"]
      812 NAMECALL                         R41 R1 K46 ["getText"]
      814 CALL                             R41 3 1
      815 SETTABLEKS                       R41 R40 K118 ["leftText"]
      817 LOADK                            R43 K44 ["VRControls"]
      818 LOADK                            R44 K132 ["ShiftLeftRightLabel"]
      819 NAMECALL                         R41 R1 K46 ["getText"]
      821 CALL                             R41 3 1
      822 SETTABLEKS                       R41 R40 K119 ["rightText"]
      824 GETUPVAL                         R41 6
      825 NAMECALL                         R41 R41 K28 ["getNextOrder"]
      827 CALL                             R41 1 1
      828 SETTABLEKS                       R41 R40 K24 ["LayoutOrder"]
      830 CALL                             R38 2 1
      831 SETTABLEKS                       R38 R37 K115 ["SwitchControllers"]
      833 GETUPVAL                         R38 1
      834 GETTABLEKS                       R38 R38 K20 ["createElement"]
      836 LOADK                            R39 K43 ["TextLabel"]
      837 NEWTABLE                         R40 4 0
      839 GETUPVAL                         R41 1
      840 GETTABLEKS                       R41 R41 K22 ["Tag"]
      842 LOADK                            R42 K27 ["CX-Invisible"]
      843 SETTABLE                         R42 R40 R41
      844 LOADK                            R43 K44 ["VRControls"]
      845 LOADK                            R44 K133 ["MouseInteractionHelpLabel1"]
      846 NAMECALL                         R41 R1 K46 ["getText"]
      848 CALL                             R41 3 1
      849 SETTABLEKS                       R41 R40 K47 ["Text"]
      851 GETUPVAL                         R41 6
      852 NAMECALL                         R41 R41 K28 ["getNextOrder"]
      854 CALL                             R41 1 1
      855 SETTABLEKS                       R41 R40 K24 ["LayoutOrder"]
      857 CALL                             R38 2 1
      858 SETTABLEKS                       R38 R37 K116 ["MouseMapping1"]
      860 CALL                             R34 3 1
      861 SETTABLEKS                       R34 R33 K32 ["Tooltip"]
      863 CALL                             R30 3 1
      864 SETTABLEKS                       R30 R29 K25 ["InnerContainer"]
      866 CALL                             R26 3 -1
      867 RETURN                           R26 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ControlsEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["ContextServices"]
       16 GETTABLEKS                       R2 R2 K9 ["Localization"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R0 K6 ["Packages"]
       22 GETTABLEKS                       R4 R4 K10 ["React"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K11 ["Src"]
       29 GETTABLEKS                       R5 R5 K12 ["Util"]
       31 GETTABLEKS                       R5 R5 K13 ["Constants"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R6 R0 K11 ["Src"]
       38 GETTABLEKS                       R6 R6 K12 ["Util"]
       40 GETTABLEKS                       R6 R6 K14 ["MockableProxyPluginComponents"]
       42 CALL                             R5 1 1
       43 GETTABLEKS                       R5 R5 K15 ["StudioDeviceEmulator"]
       45 GETIMPORT                        R6 K5 [require]
       47 GETTABLEKS                       R7 R0 K11 ["Src"]
       49 GETTABLEKS                       R7 R7 K12 ["Util"]
       51 GETTABLEKS                       R7 R7 K16 ["MappingsContext"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K5 [require]
       56 GETTABLEKS                       R8 R0 K11 ["Src"]
       58 GETTABLEKS                       R8 R8 K12 ["Util"]
       60 GETTABLEKS                       R8 R8 K17 ["MappingsActionsContext"]
       62 CALL                             R7 1 1
       63 GETTABLEKS                       R8 R1 K18 ["Styling"]
       65 GETTABLEKS                       R8 R8 K19 ["joinTags"]
       67 GETTABLEKS                       R9 R1 K20 ["UI"]
       69 GETTABLEKS                       R9 R9 K21 ["Checkbox"]
       71 GETTABLEKS                       R10 R1 K20 ["UI"]
       73 GETTABLEKS                       R10 R10 K22 ["Slider"]
       75 GETTABLEKS                       R11 R1 K12 ["Util"]
       77 GETTABLEKS                       R11 R11 K23 ["LayoutOrderIterator"]
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
