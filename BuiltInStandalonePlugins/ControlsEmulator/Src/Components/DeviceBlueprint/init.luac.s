PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["getThemeName"]
        4 CALL                             R1 0 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 1
        3 GETTABLEKS                       R0 R0 K2 ["Studio"]
        5 GETTABLEKS                       R0 R0 K3 ["ThemeChanged"]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 NAMECALL                         R0 R0 K4 ["Connect"]
       12 CALL                             R0 2 1
       13 SETUPVAL                         R0 0
       14 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 LOADNIL                          R0
        1 GETIMPORT                        R1 K1 [pcall]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CALL                             R1 1 0
        8 GETIMPORT                        R1 K4 [task.delay]
       10 LOADK                            R2 K5 [0.1]
       11 NEWCLOSURE                       R3 P1
       12 CAPTURE                          UPVAL U2
       13 CALL                             R1 2 0
       14 NEWCLOSURE                       R1 P2
       15 CAPTURE                          REF R0
       16 CLOSEUPVALS                      R0
       17 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["keyCode"]
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["type"]
        2 JUMPIFNOTEQKS                    R1 K1 ["Thumbstick"] ; [+45]
        4 DUPTABLE                         R1 K2 [{"Thumbstick"}]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K3 ["createElement"]
        8 GETUPVAL                         R3 1
        9 DUPTABLE                         R4 K10 [{"Position", "keyCode", "inputState", "clickInputState", "relativeSocketSize", "relativeStickSize"}]
       10 GETTABLEKS                       R5 R0 K4 ["Position"]
       12 SETTABLEKS                       R5 R4 K4 ["Position"]
       14 GETTABLEKS                       R5 R0 K5 ["keyCode"]
       16 SETTABLEKS                       R5 R4 K5 ["keyCode"]
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R6 R6 K11 ["activeInputs"]
       21 GETTABLEKS                       R7 R0 K5 ["keyCode"]
       23 GETTABLE                         R5 R6 R7
       24 SETTABLEKS                       R5 R4 K6 ["inputState"]
       26 GETUPVAL                         R6 2
       27 GETTABLEKS                       R6 R6 K11 ["activeInputs"]
       29 GETUPVAL                         R8 3
       30 GETTABLEKS                       R9 R0 K5 ["keyCode"]
       32 GETTABLE                         R7 R8 R9
       33 GETTABLE                         R5 R6 R7
       34 SETTABLEKS                       R5 R4 K7 ["clickInputState"]
       36 GETTABLEKS                       R5 R0 K8 ["relativeSocketSize"]
       38 SETTABLEKS                       R5 R4 K8 ["relativeSocketSize"]
       40 GETTABLEKS                       R5 R0 K9 ["relativeStickSize"]
       42 SETTABLEKS                       R5 R4 K9 ["relativeStickSize"]
       44 CALL                             R2 2 1
       45 SETTABLEKS                       R2 R1 K1 ["Thumbstick"]
       47 RETURN                           R1 1
       48 GETTABLEKS                       R1 R0 K0 ["type"]
       50 JUMPIFNOTEQKS                    R1 K12 ["Button"] ; [+31]
       52 DUPTABLE                         R1 K13 [{"Button"}]
       53 GETUPVAL                         R2 0
       54 GETTABLEKS                       R2 R2 K3 ["createElement"]
       56 GETUPVAL                         R3 4
       57 DUPTABLE                         R4 K15 [{"Position", "Size", "keyCode", "inputState"}]
       58 GETTABLEKS                       R5 R0 K4 ["Position"]
       60 SETTABLEKS                       R5 R4 K4 ["Position"]
       62 GETTABLEKS                       R5 R0 K14 ["Size"]
       64 SETTABLEKS                       R5 R4 K14 ["Size"]
       66 GETTABLEKS                       R5 R0 K5 ["keyCode"]
       68 SETTABLEKS                       R5 R4 K5 ["keyCode"]
       70 GETUPVAL                         R6 2
       71 GETTABLEKS                       R6 R6 K11 ["activeInputs"]
       73 GETTABLEKS                       R7 R0 K5 ["keyCode"]
       75 GETTABLE                         R5 R6 R7
       76 SETTABLEKS                       R5 R4 K6 ["inputState"]
       78 CALL                             R2 2 1
       79 SETTABLEKS                       R2 R1 K12 ["Button"]
       81 RETURN                           R1 1
       82 GETTABLEKS                       R1 R0 K0 ["type"]
       84 JUMPIFNOTEQKS                    R1 K16 ["Trigger"] ; [+36]
       86 DUPTABLE                         R1 K17 [{"Trigger"}]
       87 GETUPVAL                         R2 0
       88 GETTABLEKS                       R2 R2 K3 ["createElement"]
       90 GETUPVAL                         R3 5
       91 DUPTABLE                         R4 K19 [{"Position", "Size", "keyCode", "inputState", "Visible"}]
       92 GETTABLEKS                       R5 R0 K4 ["Position"]
       94 SETTABLEKS                       R5 R4 K4 ["Position"]
       96 GETTABLEKS                       R5 R0 K14 ["Size"]
       98 SETTABLEKS                       R5 R4 K14 ["Size"]
      100 GETTABLEKS                       R5 R0 K5 ["keyCode"]
      102 SETTABLEKS                       R5 R4 K5 ["keyCode"]
      104 GETUPVAL                         R6 2
      105 GETTABLEKS                       R6 R6 K11 ["activeInputs"]
      107 GETTABLEKS                       R7 R0 K5 ["keyCode"]
      109 GETTABLE                         R5 R6 R7
      110 SETTABLEKS                       R5 R4 K6 ["inputState"]
      112 GETUPVAL                         R5 2
      113 GETTABLEKS                       R5 R5 K20 ["displayMappings"]
      115 SETTABLEKS                       R5 R4 K18 ["Visible"]
      117 CALL                             R2 2 1
      118 SETTABLEKS                       R2 R1 K16 ["Trigger"]
      120 RETURN                           R1 1
      121 LOADNIL                          R1
      122 RETURN                           R1 1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["arrowDestination"]
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["type"]
        2 JUMPIFNOTEQKS                    R1 K1 ["CrossLayoutMappings"] ; [+44]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K2 ["createElement"]
        7 GETUPVAL                         R2 1
        8 DUPTABLE                         R3 K12 [{"upKeyName", "downKeyName", "leftKeyName", "rightKeyName", "centerKeyName", "Position", "arrowDestination", "arrowBendPoint", "side"}]
        9 GETTABLEKS                       R4 R0 K3 ["upKeyName"]
       11 SETTABLEKS                       R4 R3 K3 ["upKeyName"]
       13 GETTABLEKS                       R4 R0 K4 ["downKeyName"]
       15 SETTABLEKS                       R4 R3 K4 ["downKeyName"]
       17 GETTABLEKS                       R4 R0 K5 ["leftKeyName"]
       19 SETTABLEKS                       R4 R3 K5 ["leftKeyName"]
       21 GETTABLEKS                       R4 R0 K6 ["rightKeyName"]
       23 SETTABLEKS                       R4 R3 K6 ["rightKeyName"]
       25 GETTABLEKS                       R4 R0 K7 ["centerKeyName"]
       27 SETTABLEKS                       R4 R3 K7 ["centerKeyName"]
       29 GETTABLEKS                       R4 R0 K8 ["Position"]
       31 SETTABLEKS                       R4 R3 K8 ["Position"]
       33 GETTABLEKS                       R4 R0 K9 ["arrowDestination"]
       35 SETTABLEKS                       R4 R3 K9 ["arrowDestination"]
       37 GETTABLEKS                       R4 R0 K10 ["arrowBendPoint"]
       39 SETTABLEKS                       R4 R3 K10 ["arrowBendPoint"]
       41 GETTABLEKS                       R4 R0 K11 ["side"]
       43 SETTABLEKS                       R4 R3 K11 ["side"]
       45 CALL                             R1 2 -1
       46 RETURN                           R1 -1
       47 GETTABLEKS                       R1 R0 K0 ["type"]
       49 JUMPIFNOTEQKS                    R1 K13 ["ButtonMapping"] ; [+32]
       51 GETUPVAL                         R1 0
       52 GETTABLEKS                       R1 R1 K2 ["createElement"]
       54 GETUPVAL                         R2 2
       55 DUPTABLE                         R3 K16 [{"Position", "keyName", "side", "arrowStart", "arrowDestination", "arrowBendPoint"}]
       56 GETTABLEKS                       R4 R0 K8 ["Position"]
       58 SETTABLEKS                       R4 R3 K8 ["Position"]
       60 GETTABLEKS                       R4 R0 K14 ["keyName"]
       62 SETTABLEKS                       R4 R3 K14 ["keyName"]
       64 GETTABLEKS                       R4 R0 K11 ["side"]
       66 SETTABLEKS                       R4 R3 K11 ["side"]
       68 GETTABLEKS                       R4 R0 K8 ["Position"]
       70 SETTABLEKS                       R4 R3 K15 ["arrowStart"]
       72 GETTABLEKS                       R4 R0 K9 ["arrowDestination"]
       74 SETTABLEKS                       R4 R3 K9 ["arrowDestination"]
       76 GETTABLEKS                       R4 R0 K10 ["arrowBendPoint"]
       78 SETTABLEKS                       R4 R3 K10 ["arrowBendPoint"]
       80 CALL                             R1 2 -1
       81 RETURN                           R1 -1
       82 LOADNIL                          R1
       83 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Dictionary"]
        3 GETTABLEKS                       R1 R1 K1 ["join"]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K2 ["useState"]
       11 GETUPVAL                         R3 3
       12 GETTABLEKS                       R3 R3 K3 ["getThemeName"]
       14 CALL                             R3 0 -1
       15 CALL                             R2 -1 2
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K2 ["useState"]
       19 LOADB                            R5 0
       20 CALL                             R4 1 2
       21 GETUPVAL                         R6 2
       22 GETTABLEKS                       R6 R6 K4 ["useEffect"]
       24 NEWCLOSURE                       R7 P0
       25 CAPTURE                          VAL R3
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          VAL R5
       28 NEWTABLE                         R8 0 2
       30 MOVE                             R9 R3
       31 MOVE                             R10 R5
       32 SETLIST                          R8 R9 2 [1]
       34 CALL                             R6 2 0
       35 GETUPVAL                         R7 4
       36 GETTABLEKS                       R7 R7 K5 ["GAMEPAD_ID_TO_TYPE"]
       38 GETTABLEKS                       R8 R1 K6 ["selectedGamepadId"]
       40 GETTABLE                         R6 R7 R8
       41 GETUPVAL                         R8 5
       42 GETTABLE                         R7 R8 R6
       43 GETUPVAL                         R8 2
       44 GETTABLEKS                       R8 R8 K7 ["createElement"]
       46 LOADK                            R9 K8 ["Frame"]
       47 NEWTABLE                         R10 2 0
       49 GETUPVAL                         R11 2
       50 GETTABLEKS                       R11 R11 K9 ["Tag"]
       52 LOADK                            R12 K10 ["Component-DeviceBlueprint Width-Scaling CX-Invisible"]
       53 SETTABLE                         R12 R10 R11
       54 GETTABLEKS                       R11 R1 K11 ["LayoutOrder"]
       56 SETTABLEKS                       R11 R10 K11 ["LayoutOrder"]
       58 DUPTABLE                         R11 K13 [{"ControllerLayout"}]
       59 GETUPVAL                         R12 2
       60 GETTABLEKS                       R12 R12 K7 ["createElement"]
       62 LOADK                            R13 K8 ["Frame"]
       63 NEWTABLE                         R14 1 0
       65 GETUPVAL                         R15 2
       66 GETTABLEKS                       R15 R15 K9 ["Tag"]
       68 GETUPVAL                         R16 6
       69 LOADK                            R17 K14 ["Width-Scaling"]
       70 GETTABLEKS                       R19 R1 K15 ["displayMappings"]
       72 JUMPIFNOT                        R19 ; [+2]
       73 LOADK                            R18 K16 ["Mappings-Visible"]
       74 JUMP                             ; [+1]
       75 LOADNIL                          R18
       76 CALL                             R16 2 1
       77 SETTABLE                         R16 R14 R15
       78 DUPTABLE                         R15 K20 [{"GamepadBlueprint", "GamepadControls", "LabelsOverlay"}]
       79 LOADB                            R16 0
       80 JUMPIFEQKNIL                     R7 ; [+34]
       82 MOVE                             R16 R4
       83 JUMPIFNOT                        R16 ; [+31]
       84 GETUPVAL                         R16 2
       85 GETTABLEKS                       R16 R16 K7 ["createElement"]
       87 LOADK                            R17 K21 ["ImageLabel"]
       88 NEWTABLE                         R18 4 0
       90 GETUPVAL                         R19 2
       91 GETTABLEKS                       R19 R19 K9 ["Tag"]
       93 LOADK                            R20 K22 ["Width-Scaling CX-Invisible"]
       94 SETTABLE                         R20 R18 R19
       95 JUMPIFNOTEQKS                    R2 K23 ["Dark"] ; [+6]
       97 GETTABLEKS                       R19 R7 K24 ["DeviceImage"]
       99 GETTABLEKS                       R19 R19 K25 ["srcDark"]
      101 JUMP                             ; [+4]
      102 GETTABLEKS                       R19 R7 K24 ["DeviceImage"]
      104 GETTABLEKS                       R19 R19 K26 ["srcLight"]
      106 SETTABLEKS                       R19 R18 K27 ["Image"]
      108 GETUPVAL                         R19 7
      109 NAMECALL                         R19 R19 K28 ["getNextOrder"]
      111 CALL                             R19 1 1
      112 SETTABLEKS                       R19 R18 K11 ["LayoutOrder"]
      114 CALL                             R16 2 1
      115 SETTABLEKS                       R16 R15 K17 ["GamepadBlueprint"]
      117 LOADB                            R16 0
      118 JUMPIFEQKNIL                     R7 ; [+47]
      120 GETUPVAL                         R16 2
      121 GETTABLEKS                       R16 R16 K7 ["createElement"]
      123 LOADK                            R17 K8 ["Frame"]
      124 NEWTABLE                         R18 4 0
      126 LOADN                            R19 1
      127 SETTABLEKS                       R19 R18 K29 ["BackgroundTransparency"]
      129 GETUPVAL                         R19 2
      130 GETTABLEKS                       R19 R19 K9 ["Tag"]
      132 LOADK                            R20 K14 ["Width-Scaling"]
      133 SETTABLE                         R20 R18 R19
      134 GETUPVAL                         R19 7
      135 NAMECALL                         R19 R19 K28 ["getNextOrder"]
      137 CALL                             R19 1 1
      138 SETTABLEKS                       R19 R18 K11 ["LayoutOrder"]
      140 GETUPVAL                         R19 8
      141 GETTABLEKS                       R19 R19 K30 ["map"]
      143 GETUPVAL                         R20 8
      144 GETTABLEKS                       R20 R20 K31 ["filter"]
      146 GETUPVAL                         R21 0
      147 GETTABLEKS                       R21 R21 K0 ["Dictionary"]
      149 GETTABLEKS                       R21 R21 K1 ["join"]
      151 NEWTABLE                         R22 0 0
      153 MOVE                             R23 R7
      154 CALL                             R21 2 1
      155 DUPCLOSURE                       R22 K32 [PROTO_5]
      156 CALL                             R20 2 1
      157 NEWCLOSURE                       R21 P2
      158 CAPTURE                          UPVAL U2
      159 CAPTURE                          UPVAL U9
      160 CAPTURE                          VAL R1
      161 CAPTURE                          UPVAL U10
      162 CAPTURE                          UPVAL U11
      163 CAPTURE                          UPVAL U12
      164 CALL                             R19 2 -1
      165 CALL                             R16 -1 1
      166 SETTABLEKS                       R16 R15 K18 ["GamepadControls"]
      168 GETTABLEKS                       R17 R1 K15 ["displayMappings"]
      170 JUMPIFNOT                        R17 ; [+53]
      171 JUMPIFEQKNIL                     R7 ; [+52]
      173 GETUPVAL                         R16 2
      174 GETTABLEKS                       R16 R16 K7 ["createElement"]
      176 LOADK                            R17 K8 ["Frame"]
      177 NEWTABLE                         R18 4 0
      179 GETUPVAL                         R19 2
      180 GETTABLEKS                       R19 R19 K9 ["Tag"]
      182 LOADK                            R20 K14 ["Width-Scaling"]
      183 SETTABLE                         R20 R18 R19
      184 LOADN                            R19 1
      185 SETTABLEKS                       R19 R18 K29 ["BackgroundTransparency"]
      187 GETUPVAL                         R19 7
      188 NAMECALL                         R19 R19 K28 ["getNextOrder"]
      190 CALL                             R19 1 1
      191 SETTABLEKS                       R19 R18 K11 ["LayoutOrder"]
      193 LOADB                            R19 0
      194 SETTABLEKS                       R19 R18 K33 ["Interactable"]
      196 NEWTABLE                         R19 0 1
      198 GETUPVAL                         R20 8
      199 GETTABLEKS                       R20 R20 K30 ["map"]
      201 GETUPVAL                         R21 8
      202 GETTABLEKS                       R21 R21 K31 ["filter"]
      204 GETUPVAL                         R22 0
      205 GETTABLEKS                       R22 R22 K0 ["Dictionary"]
      207 GETTABLEKS                       R22 R22 K1 ["join"]
      209 NEWTABLE                         R23 0 0
      211 MOVE                             R24 R7
      212 CALL                             R22 2 1
      213 DUPCLOSURE                       R23 K34 [PROTO_7]
      214 CALL                             R21 2 1
      215 DUPCLOSURE                       R22 K35 [PROTO_8]
      216 CAPTURE                          UPVAL U2
      217 CAPTURE                          UPVAL U13
      218 CAPTURE                          UPVAL U14
      219 CALL                             R20 2 -1
      220 SETLIST                          R19 R20 -1 [1]
      222 CALL                             R16 3 1
      223 JUMP                             ; [+1]
      224 LOADNIL                          R16
      225 SETTABLEKS                       R16 R15 K19 ["LabelsOverlay"]
      227 CALL                             R12 3 1
      228 SETTABLEKS                       R12 R11 K12 ["ControllerLayout"]
      230 CALL                             R8 3 -1
      231 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ControlsEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R0 K9 ["Src"]
       23 GETTABLEKS                       R3 R3 K10 ["Resources"]
       25 GETTABLEKS                       R4 R2 K11 ["Util"]
       27 GETTABLEKS                       R4 R4 K12 ["LayoutOrderIterator"]
       29 GETTABLEKS                       R5 R4 K13 ["new"]
       31 CALL                             R5 0 1
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K9 ["Src"]
       36 GETTABLEKS                       R7 R7 K14 ["Components"]
       38 GETTABLEKS                       R7 R7 K15 ["ControlsWidgets"]
       40 GETTABLEKS                       R7 R7 K16 ["Button"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R8 R0 K9 ["Src"]
       47 GETTABLEKS                       R8 R8 K14 ["Components"]
       49 GETTABLEKS                       R8 R8 K15 ["ControlsWidgets"]
       51 GETTABLEKS                       R8 R8 K17 ["Thumbstick"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K9 ["Src"]
       58 GETTABLEKS                       R9 R9 K14 ["Components"]
       60 GETTABLEKS                       R9 R9 K15 ["ControlsWidgets"]
       62 GETTABLEKS                       R9 R9 K18 ["Trigger"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K9 ["Src"]
       69 GETTABLEKS                       R10 R10 K14 ["Components"]
       71 GETTABLEKS                       R10 R10 K19 ["MappingsWidgets"]
       73 GETTABLEKS                       R10 R10 K20 ["CrossLayoutMappings"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K9 ["Src"]
       80 GETTABLEKS                       R11 R11 K14 ["Components"]
       82 GETTABLEKS                       R11 R11 K19 ["MappingsWidgets"]
       84 GETTABLEKS                       R11 R11 K21 ["ButtonMapping"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K5 [require]
       89 GETTABLEKS                       R12 R0 K9 ["Src"]
       91 GETTABLEKS                       R12 R12 K11 ["Util"]
       93 GETTABLEKS                       R12 R12 K22 ["Constants"]
       95 CALL                             R11 1 1
       96 GETTABLEKS                       R12 R11 K23 ["THUMBSTICK_KEYCODE_TO_THUMBSTICK_CLICK"]
       98 GETIMPORT                        R13 K5 [require]
      100 GETTABLEKS                       R14 R0 K6 ["Packages"]
      102 GETTABLEKS                       R14 R14 K24 ["Dash"]
      104 CALL                             R13 1 1
      105 GETIMPORT                        R14 K5 [require]
      107 GETTABLEKS                       R15 R0 K6 ["Packages"]
      109 GETTABLEKS                       R15 R15 K25 ["Cryo"]
      111 CALL                             R14 1 1
      112 GETTABLEKS                       R15 R2 K26 ["Style"]
      114 GETTABLEKS                       R15 R15 K27 ["ThemeSwitcher"]
      116 GETTABLEKS                       R16 R2 K28 ["Styling"]
      118 GETTABLEKS                       R16 R16 K29 ["joinTags"]
      120 DUPTABLE                         R17 K37 [{["selectedGamepadId"] = 101, ["LayoutOrder"] = , ["activeInputs"], ["displayMappings"] = False}]
      121 NEWTABLE                         R18 0 0
      123 SETTABLEKS                       R18 R17 K34 ["activeInputs"]
      125 NEWTABLE                         R18 8 0
      127 GETIMPORT                        R19 K5 [require]
      129 GETTABLEKS                       R20 R3 K38 ["DeviceControlData"]
      131 GETTABLEKS                       R20 R20 K39 ["Generic"]
      133 CALL                             R19 1 1
      134 SETTABLEKS                       R19 R18 K39 ["Generic"]
      136 GETIMPORT                        R19 K5 [require]
      138 GETTABLEKS                       R20 R3 K38 ["DeviceControlData"]
      140 GETTABLEKS                       R20 R20 K40 ["Playstation4"]
      142 CALL                             R19 1 1
      143 SETTABLEKS                       R19 R18 K41 ["PS4"]
      145 GETIMPORT                        R19 K5 [require]
      147 GETTABLEKS                       R20 R3 K38 ["DeviceControlData"]
      149 GETTABLEKS                       R20 R20 K42 ["Playstation5"]
      151 CALL                             R19 1 1
      152 SETTABLEKS                       R19 R18 K43 ["PS5"]
      154 GETIMPORT                        R19 K5 [require]
      156 GETTABLEKS                       R20 R3 K38 ["DeviceControlData"]
      158 GETTABLEKS                       R20 R20 K44 ["XBox"]
      160 CALL                             R19 1 1
      161 SETTABLEKS                       R19 R18 K45 ["XboxOne"]
      163 GETIMPORT                        R19 K5 [require]
      165 GETTABLEKS                       R20 R3 K38 ["DeviceControlData"]
      167 GETTABLEKS                       R20 R20 K46 ["Quest2"]
      169 CALL                             R19 1 1
      170 SETTABLEKS                       R19 R18 K46 ["Quest2"]
      172 GETIMPORT                        R19 K5 [require]
      174 GETTABLEKS                       R20 R3 K38 ["DeviceControlData"]
      176 GETTABLEKS                       R20 R20 K47 ["Quest3"]
      178 CALL                             R19 1 1
      179 SETTABLEKS                       R19 R18 K47 ["Quest3"]
      181 GETIMPORT                        R19 K5 [require]
      183 GETTABLEKS                       R20 R3 K38 ["DeviceControlData"]
      185 GETTABLEKS                       R20 R20 K48 ["GenericHandheld"]
      187 CALL                             R19 1 1
      188 SETTABLEKS                       R19 R18 K48 ["GenericHandheld"]
      190 DUPCLOSURE                       R19 K49 [PROTO_9]
      191 CAPTURE                          VAL R14
      192 CAPTURE                          VAL R17
      193 CAPTURE                          VAL R1
      194 CAPTURE                          VAL R15
      195 CAPTURE                          VAL R11
      196 CAPTURE                          VAL R18
      197 CAPTURE                          VAL R16
      198 CAPTURE                          VAL R5
      199 CAPTURE                          VAL R13
      200 CAPTURE                          VAL R7
      201 CAPTURE                          VAL R12
      202 CAPTURE                          VAL R6
      203 CAPTURE                          VAL R8
      204 CAPTURE                          VAL R9
      205 CAPTURE                          VAL R10
      206 GETTABLEKS                       R20 R1 K50 ["memo"]
      208 MOVE                             R21 R19
      209 CALL                             R20 1 -1
      210 RETURN                           R20 -1
