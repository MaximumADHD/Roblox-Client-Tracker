PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Color"]
        2 GETTABLEKS                       R1 R1 K1 ["Extended"]
        4 GETTABLEKS                       R1 R1 K2 ["Blue"]
        6 GETTABLEKS                       R1 R1 K3 ["Blue_500"]
        8 GETTABLEKS                       R1 R1 K4 ["Color3"]
       10 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Color"]
        2 GETTABLEKS                       R1 R1 K1 ["Extended"]
        4 GETTABLEKS                       R1 R1 K2 ["Orange"]
        6 GETTABLEKS                       R1 R1 K3 ["Orange_900"]
        8 GETTABLEKS                       R1 R1 K4 ["Color3"]
       10 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Color"]
        2 GETTABLEKS                       R1 R1 K1 ["Extended"]
        4 GETTABLEKS                       R1 R1 K2 ["Purple"]
        6 GETTABLEKS                       R1 R1 K3 ["Purple_600"]
        8 GETTABLEKS                       R1 R1 K4 ["Color3"]
       10 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["Color"]
        2 GETTABLEKS                       R1 R1 K1 ["Extended"]
        4 GETTABLEKS                       R1 R1 K2 ["Green"]
        6 GETTABLEKS                       R1 R1 K3 ["Green_900"]
        8 GETTABLEKS                       R1 R1 K4 ["Color3"]
       10 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["Color"]
        2 GETTABLEKS                       R1 R1 K1 ["Extended"]
        4 GETTABLEKS                       R1 R1 K2 ["Purple"]
        6 GETTABLEKS                       R1 R1 K3 ["Purple_900"]
        8 GETTABLEKS                       R1 R1 K4 ["Color3"]
       10 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["Color"]
        2 GETTABLEKS                       R1 R1 K1 ["Extended"]
        4 GETTABLEKS                       R1 R1 K2 ["Red"]
        6 GETTABLEKS                       R1 R1 K3 ["Red_600"]
        8 GETTABLEKS                       R1 R1 K4 ["Color3"]
       10 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["Color"]
        2 GETTABLEKS                       R1 R1 K1 ["Extended"]
        4 GETTABLEKS                       R1 R1 K2 ["Blue"]
        6 GETTABLEKS                       R1 R1 K3 ["Blue_700"]
        8 GETTABLEKS                       R1 R1 K4 ["Color3"]
       10 RETURN                           R1 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["Color"]
        2 GETTABLEKS                       R1 R1 K1 ["Extended"]
        4 GETTABLEKS                       R1 R1 K2 ["Orange"]
        6 GETTABLEKS                       R1 R1 K3 ["Orange_1000"]
        8 GETTABLEKS                       R1 R1 K4 ["Color3"]
       10 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Enums"]
        3 GETTABLEKS                       R1 R1 K1 ["ControlState"]
        5 GETTABLEKS                       R1 R1 K2 ["Hover"]
        7 JUMPIFNOTEQ                      R0 R1 ; [+9]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K3 ["onHovered"]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K4 ["index"]
       15 CALL                             R1 1 0
       16 JUMP                             ; [+45]
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K0 ["Enums"]
       20 GETTABLEKS                       R1 R1 K1 ["ControlState"]
       22 GETTABLEKS                       R1 R1 K5 ["Pressed"]
       24 JUMPIFNOTEQ                      R0 R1 ; [+9]
       26 GETUPVAL                         R1 1
       27 GETTABLEKS                       R1 R1 K6 ["onClicked"]
       29 GETUPVAL                         R2 1
       30 GETTABLEKS                       R2 R2 K4 ["index"]
       32 CALL                             R1 1 0
       33 JUMP                             ; [+28]
       34 GETUPVAL                         R1 0
       35 GETTABLEKS                       R1 R1 K0 ["Enums"]
       37 GETTABLEKS                       R1 R1 K1 ["ControlState"]
       39 GETTABLEKS                       R1 R1 K7 ["Default"]
       41 JUMPIFNOTEQ                      R0 R1 ; [+20]
       43 GETUPVAL                         R1 2
       44 GETTABLEKS                       R1 R1 K8 ["current"]
       46 GETUPVAL                         R2 0
       47 GETTABLEKS                       R2 R2 K0 ["Enums"]
       49 GETTABLEKS                       R2 R2 K1 ["ControlState"]
       51 GETTABLEKS                       R2 R2 K5 ["Pressed"]
       53 JUMPIFNOTEQ                      R1 R2 ; [+8]
       55 GETUPVAL                         R1 1
       56 GETTABLEKS                       R1 R1 K9 ["startDragging"]
       58 GETUPVAL                         R2 1
       59 GETTABLEKS                       R2 R2 K4 ["index"]
       61 CALL                             R1 1 0
       62 GETUPVAL                         R1 2
       63 SETTABLEKS                       R0 R1 K8 ["current"]
       65 RETURN                           R0 0

PROTO_9:
        0 JUMPIFEQKNIL                     R0 ; [+14]
        2 LOADK                            R3 K0 ["ClipNumber"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K1 ["clip"]
        6 JUMPIFNOT                        R4 ; [+5]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K1 ["clip"]
       10 GETTABLEKS                       R4 R4 K2 ["number"]
       12 NAMECALL                         R1 R0 K3 ["SetAttribute"]
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["useRef"]
        9 LOADNIL                          R3
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K3 ["useEventCallback"]
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R2
       18 CALL                             R3 1 1
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K4 ["createElement"]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K5 ["View"]
       25 DUPTABLE                         R6 K14 [{["tag"], ["backgroundStyle"], ["stateLayer"], ["onStateChanged"], ["testId"] = "Source", ["LayoutOrder"], ["ref"]}]
       26 NEWTABLE                         R7 4 0
       28 LOADB                            R8 1
       29 SETTABLEKS                       R8 R7 K15 ["size-2500-2500 radius-small"]
       31 GETTABLEKS                       R9 R0 K16 ["clip"]
       33 JUMPIFEQKNIL                     R9 ; [+2]
       35 LOADB                            R8 0 +1
       36 LOADB                            R8 1
       37 SETTABLEKS                       R8 R7 K17 ["bg-shift-100"]
       39 GETTABLEKS                       R9 R0 K18 ["state"]
       41 JUMPIFEQKS                       R9 K19 ["focused"] ; [+2]
       43 LOADB                            R8 0 +1
       44 LOADB                            R8 1
       45 SETTABLEKS                       R8 R7 K20 ["stroke-standard stroke-system-contrast"]
       47 GETTABLEKS                       R9 R0 K18 ["state"]
       49 JUMPIFEQKS                       R9 K21 ["selected"] ; [+2]
       51 LOADB                            R8 0 +1
       52 LOADB                            R8 1
       53 SETTABLEKS                       R8 R7 K22 ["stroke-standard stroke-muted"]
       55 SETTABLEKS                       R7 R6 K6 ["tag"]
       57 GETTABLEKS                       R7 R0 K16 ["clip"]
       59 JUMPIFNOT                        R7 ; [+16]
       60 DUPTABLE                         R7 K26 [{["Color3"], ["Transparency"] = 0.84}]
       61 GETUPVAL                         R9 3
       62 GETTABLEKS                       R13 R0 K16 ["clip"]
       64 GETTABLEKS                       R13 R13 K28 ["number"]
       66 SUBK                             R12 R13 K27 [1]
       67 GETUPVAL                         R14 3
       68 LENGTH                           R13 R14
       69 MOD                              R11 R12 R13
       70 ADDK                             R10 R11 K27 [1]
       71 GETTABLE                         R8 R9 R10
       72 MOVE                             R9 R1
       73 CALL                             R8 1 1
       74 SETTABLEKS                       R8 R7 K23 ["Color3"]
       76 SETTABLEKS                       R7 R6 K7 ["backgroundStyle"]
       78 DUPTABLE                         R7 K30 [{"affordance"}]
       79 GETUPVAL                         R8 0
       80 GETTABLEKS                       R8 R8 K31 ["Enums"]
       82 GETTABLEKS                       R8 R8 K32 ["StateLayerAffordance"]
       84 GETTABLEKS                       R8 R8 K33 ["Background"]
       86 SETTABLEKS                       R8 R7 K29 ["affordance"]
       88 SETTABLEKS                       R7 R6 K8 ["stateLayer"]
       90 SETTABLEKS                       R3 R6 K9 ["onStateChanged"]
       92 GETTABLEKS                       R7 R0 K34 ["layoutOrder"]
       94 SETTABLEKS                       R7 R6 K12 ["LayoutOrder"]
       96 NEWCLOSURE                       R7 P1
       97 CAPTURE                          VAL R0
       98 SETTABLEKS                       R7 R6 K13 ["ref"]
      100 DUPTABLE                         R7 K37 [{"Shift", "Inner"}]
      101 GETTABLEKS                       R8 R0 K18 ["state"]
      103 JUMPIFNOT                        R8 ; [+8]
      104 GETUPVAL                         R8 1
      105 GETTABLEKS                       R8 R8 K4 ["createElement"]
      107 GETUPVAL                         R9 0
      108 GETTABLEKS                       R9 R9 K5 ["View"]
      110 DUPTABLE                         R10 K41 [{["tag"] = "bg-shift-200 size-full", ["ZIndex"] = -10}]
      111 CALL                             R8 2 1
      112 SETTABLEKS                       R8 R7 K35 ["Shift"]
      114 GETUPVAL                         R8 1
      115 GETTABLEKS                       R8 R8 K4 ["createElement"]
      117 GETUPVAL                         R9 0
      118 GETTABLEKS                       R9 R9 K5 ["View"]
      120 DUPTABLE                         R10 K43 [{["tag"] = "padding-small size-full"}]
      121 DUPTABLE                         R11 K47 [{"FrameNumber", "ClipDisplayName", "Image"}]
      122 GETUPVAL                         R12 1
      123 GETTABLEKS                       R12 R12 K4 ["createElement"]
      125 GETUPVAL                         R13 4
      126 DUPTABLE                         R14 K49 [{"frameNumber"}]
      127 GETTABLEKS                       R15 R0 K50 ["index"]
      129 SETTABLEKS                       R15 R14 K48 ["frameNumber"]
      131 CALL                             R12 2 1
      132 SETTABLEKS                       R12 R11 K44 ["FrameNumber"]
      134 GETTABLEKS                       R12 R0 K16 ["clip"]
      136 JUMPIFNOT                        R12 ; [+44]
      137 GETTABLEKS                       R12 R0 K51 ["clipDisplayName"]
      139 JUMPIFNOT                        R12 ; [+41]
      140 GETUPVAL                         R12 1
      141 GETTABLEKS                       R12 R12 K4 ["createElement"]
      143 GETUPVAL                         R13 0
      144 GETTABLEKS                       R13 R13 K5 ["View"]
      146 DUPTABLE                         R14 K54 [{["tag"] = "auto-x size-0-400 padding-x-xsmall radius-small anchor-bottom-left position-bottom-left", ["ZIndex"] = 10, ["backgroundStyle"]}]
      147 DUPTABLE                         R15 K55 [{"Color3"}]
      148 GETUPVAL                         R17 3
      149 GETTABLEKS                       R21 R0 K16 ["clip"]
      151 GETTABLEKS                       R21 R21 K28 ["number"]
      153 SUBK                             R20 R21 K27 [1]
      154 GETUPVAL                         R22 3
      155 LENGTH                           R21 R22
      156 MOD                              R19 R20 R21
      157 ADDK                             R18 R19 K27 [1]
      158 GETTABLE                         R16 R17 R18
      159 MOVE                             R17 R1
      160 CALL                             R16 1 1
      161 SETTABLEKS                       R16 R15 K23 ["Color3"]
      163 SETTABLEKS                       R15 R14 K7 ["backgroundStyle"]
      165 DUPTABLE                         R15 K57 [{"Text"}]
      166 GETUPVAL                         R16 1
      167 GETTABLEKS                       R16 R16 K4 ["createElement"]
      169 GETUPVAL                         R17 0
      170 GETTABLEKS                       R17 R17 K56 ["Text"]
      172 DUPTABLE                         R18 K59 [{["Text"], ["tag"] = "text-label-small content-action-emphasis auto-x size-0-full"}]
      173 GETTABLEKS                       R19 R0 K51 ["clipDisplayName"]
      175 SETTABLEKS                       R19 R18 K56 ["Text"]
      177 CALL                             R16 2 1
      178 SETTABLEKS                       R16 R15 K56 ["Text"]
      180 CALL                             R12 3 1
      181 SETTABLEKS                       R12 R11 K45 ["ClipDisplayName"]
      183 GETUPVAL                         R12 1
      184 GETTABLEKS                       R12 R12 K4 ["createElement"]
      186 GETUPVAL                         R13 0
      187 GETTABLEKS                       R13 R13 K5 ["View"]
      189 DUPTABLE                         R14 K61 [{["tag"] = "size-full-full anchor-center-center position-center-center"}]
      190 GETUPVAL                         R15 1
      191 GETTABLEKS                       R15 R15 K4 ["createElement"]
      193 GETUPVAL                         R16 0
      194 GETTABLEKS                       R16 R16 K46 ["Image"]
      196 DUPTABLE                         R17 K67 [{["tag"] = "size-full-full", ["testId"] = "ClipImage", ["ImageContent"], ["ScaleType"], ["ResampleMode"]}]
      197 GETTABLEKS                       R18 R0 K68 ["source"]
      199 GETTABLEKS                       R18 R18 K69 ["content"]
      201 SETTABLEKS                       R18 R17 K64 ["ImageContent"]
      203 GETIMPORT                        R18 K72 [Enum.ScaleType.Fit]
      205 SETTABLEKS                       R18 R17 K65 ["ScaleType"]
      207 GETIMPORT                        R18 K75 [Enum.ResamplerMode.Pixelated]
      209 SETTABLEKS                       R18 R17 K66 ["ResampleMode"]
      211 CALL                             R15 2 -1
      212 CALL                             R12 -1 1
      213 SETTABLEKS                       R12 R11 K46 ["Image"]
      215 CALL                             R8 3 1
      216 SETTABLEKS                       R8 R7 K36 ["Inner"]
      218 CALL                             R4 3 -1
      219 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimatedImageImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Components"]
       20 GETTABLEKS                       R3 R3 K10 ["FrameNumber"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Packages"]
       34 GETTABLEKS                       R5 R5 K12 ["ReactUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K8 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["Types"]
       43 CALL                             R5 1 1
       44 NEWTABLE                         R6 0 8
       46 DUPCLOSURE                       R7 K14 [PROTO_0]
       47 DUPCLOSURE                       R8 K15 [PROTO_1]
       48 DUPCLOSURE                       R9 K16 [PROTO_2]
       49 DUPCLOSURE                       R10 K17 [PROTO_3]
       50 DUPCLOSURE                       R11 K18 [PROTO_4]
       51 DUPCLOSURE                       R12 K19 [PROTO_5]
       52 DUPCLOSURE                       R13 K20 [PROTO_6]
       53 DUPCLOSURE                       R14 K21 [PROTO_7]
       54 SETLIST                          R6 R7 8 [1]
       56 DUPCLOSURE                       R7 K22 [PROTO_10]
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R2
       62 RETURN                           R7 1
