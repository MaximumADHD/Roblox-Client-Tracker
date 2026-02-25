PROTO_0:
        0 NEWTABLE                         R0 8 0
        2 GETUPVAL                         R1 0
        3 LOADK                            R3 K0 ["DeviceDropdown"]
        4 LOADK                            R4 K1 ["GenericGamepad"]
        5 NAMECALL                         R1 R1 K2 ["getText"]
        7 CALL                             R1 3 1
        8 SETTABLEN                        R1 R0 101
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K0 ["DeviceDropdown"]
       11 LOADK                            R4 K3 ["PS4"]
       12 NAMECALL                         R1 R1 K2 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEN                        R1 R0 102
       16 GETUPVAL                         R1 0
       17 LOADK                            R3 K0 ["DeviceDropdown"]
       18 LOADK                            R4 K4 ["PS5"]
       19 NAMECALL                         R1 R1 K2 ["getText"]
       21 CALL                             R1 3 1
       22 SETTABLEN                        R1 R0 103
       23 GETUPVAL                         R1 0
       24 LOADK                            R3 K0 ["DeviceDropdown"]
       25 LOADK                            R4 K5 ["Xbox"]
       26 NAMECALL                         R1 R1 K2 ["getText"]
       28 CALL                             R1 3 1
       29 SETTABLEN                        R1 R0 104
       30 GETUPVAL                         R1 0
       31 LOADK                            R3 K0 ["DeviceDropdown"]
       32 LOADK                            R4 K6 ["Quest2"]
       33 NAMECALL                         R1 R1 K2 ["getText"]
       35 CALL                             R1 3 1
       36 SETTABLEN                        R1 R0 105
       37 GETUPVAL                         R1 0
       38 LOADK                            R3 K0 ["DeviceDropdown"]
       39 LOADK                            R4 K7 ["Quest3"]
       40 NAMECALL                         R1 R1 K2 ["getText"]
       42 CALL                             R1 3 1
       43 SETTABLEN                        R1 R0 106
       44 GETUPVAL                         R1 0
       45 LOADK                            R3 K0 ["DeviceDropdown"]
       46 LOADK                            R4 K8 ["GenericHandheld"]
       47 NAMECALL                         R1 R1 K2 ["getText"]
       49 CALL                             R1 3 1
       50 SETTABLEN                        R1 R0 107
       51 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 SETTABLE                         R1 R0 R2
        3 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["reduce"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["keys"]
        6 GETUPVAL                         R2 1
        7 CALL                             R1 1 1
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U1
       10 NEWTABLE                         R3 0 0
       12 CALL                             R0 3 -1
       13 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["X"]
        3 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 FASTCALL2                        TABLE_INSERT R0 R2 ; [+5]
        4 MOVE                             R4 R0
        5 MOVE                             R5 R2
        6 GETIMPORT                        R3 K2 [table.insert]
        8 CALL                             R3 2 0
        9 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["reduce"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["deviceIds"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U2
        8 NEWTABLE                         R3 0 0
       10 CALL                             R0 3 1
       11 GETIMPORT                        R1 K4 [table.sort]
       13 MOVE                             R2 R0
       14 CALL                             R1 1 0
       15 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["onChanged"]
        6 JUMPIFNOT                        R1 ; [+6]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K0 ["onChanged"]
       10 GETUPVAL                         R3 2
       11 GETTABLE                         R2 R3 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["useMemo"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R1
        9 NEWTABLE                         R4 0 4
       11 GETTABLEKS                       R5 R0 K2 ["selectedGamepadId"]
       13 GETTABLEKS                       R6 R0 K3 ["deviceIds"]
       15 GETTABLEKS                       R7 R1 K4 ["getText"]
       17 GETTABLEKS                       R8 R1 K5 ["getLocale"]
       19 SETLIST                          R4 R5 4 [1]
       21 CALL                             R2 2 1
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R3 R4 K1 ["useMemo"]
       25 NEWCLOSURE                       R4 P1
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          VAL R2
       28 NEWTABLE                         R5 0 1
       30 MOVE                             R6 R2
       31 SETLIST                          R5 R6 1 [1]
       33 CALL                             R3 2 1
       34 GETUPVAL                         R5 1
       35 GETTABLEKS                       R4 R5 K6 ["useState"]
       37 LOADB                            R5 0
       38 CALL                             R4 1 2
       39 GETUPVAL                         R7 1
       40 GETTABLEKS                       R6 R7 K6 ["useState"]
       42 GETUPVAL                         R7 3
       43 CALL                             R6 1 2
       44 GETUPVAL                         R9 1
       45 GETTABLEKS                       R8 R9 K1 ["useMemo"]
       47 NEWCLOSURE                       R9 P2
       48 CAPTURE                          VAL R6
       49 NEWTABLE                         R10 0 1
       51 MOVE                             R11 R6
       52 SETLIST                          R10 R11 1 [1]
       54 CALL                             R8 2 1
       55 GETUPVAL                         R10 1
       56 GETTABLEKS                       R9 R10 K1 ["useMemo"]
       58 NEWCLOSURE                       R10 P3
       59 CAPTURE                          UPVAL U2
       60 CAPTURE                          VAL R0
       61 CAPTURE                          VAL R2
       62 NEWTABLE                         R11 0 1
       64 GETTABLEKS                       R12 R0 K3 ["deviceIds"]
       66 SETLIST                          R11 R12 1 [1]
       68 CALL                             R9 2 1
       69 GETUPVAL                         R11 1
       70 GETTABLEKS                       R10 R11 K7 ["useCallback"]
       72 NEWCLOSURE                       R11 P4
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R0
       75 CAPTURE                          VAL R3
       76 NEWTABLE                         R12 0 1
       78 GETTABLEKS                       R13 R0 K8 ["onChanged"]
       80 SETLIST                          R12 R13 1 [1]
       82 CALL                             R10 2 1
       83 GETUPVAL                         R12 1
       84 GETTABLEKS                       R11 R12 K7 ["useCallback"]
       86 NEWCLOSURE                       R12 P5
       87 CAPTURE                          VAL R5
       88 NEWTABLE                         R13 0 1
       90 MOVE                             R14 R5
       91 SETLIST                          R13 R14 1 [1]
       93 CALL                             R11 2 1
       94 GETUPVAL                         R13 1
       95 GETTABLEKS                       R12 R13 K7 ["useCallback"]
       97 NEWCLOSURE                       R13 P6
       98 CAPTURE                          VAL R5
       99 NEWTABLE                         R14 0 1
      101 MOVE                             R15 R5
      102 SETLIST                          R14 R15 1 [1]
      104 CALL                             R12 2 1
      105 GETUPVAL                         R14 1
      106 GETTABLEKS                       R13 R14 K7 ["useCallback"]
      108 NEWCLOSURE                       R14 P7
      109 CAPTURE                          VAL R7
      110 NEWTABLE                         R15 0 1
      112 MOVE                             R16 R7
      113 SETLIST                          R15 R16 1 [1]
      115 CALL                             R13 2 1
      116 GETUPVAL                         R15 1
      117 GETTABLEKS                       R14 R15 K9 ["createElement"]
      119 LOADK                            R15 K10 ["Frame"]
      120 NEWTABLE                         R16 4 0
      122 GETUPVAL                         R18 1
      123 GETTABLEKS                       R17 R18 K11 ["Tag"]
      125 LOADK                            R18 K12 ["Component-DeviceDropdown data-testid=Component-DeviceDropdown"]
      126 SETTABLE                         R18 R16 R17
      127 GETTABLEKS                       R17 R0 K13 ["LayoutOrder"]
      129 SETTABLEKS                       R17 R16 K13 ["LayoutOrder"]
      131 GETUPVAL                         R19 1
      132 GETTABLEKS                       R18 R19 K14 ["Change"]
      134 GETTABLEKS                       R17 R18 K15 ["AbsoluteSize"]
      136 SETTABLE                         R13 R16 R17
      137 DUPTABLE                         R17 K19 [{"Selected", "ButtonContainer", "Menu"}]
      138 GETUPVAL                         R19 1
      139 GETTABLEKS                       R18 R19 K9 ["createElement"]
      141 LOADK                            R19 K20 ["TextButton"]
      142 NEWTABLE                         R20 4 0
      144 GETUPVAL                         R22 1
      145 GETTABLEKS                       R21 R22 K11 ["Tag"]
      147 LOADK                            R22 K21 ["X-Fill CX-Invisible data-testid=DeviceDropdown-SelectedDeviceButton"]
      148 SETTABLE                         R22 R20 R21
      149 GETTABLEKS                       R22 R0 K2 ["selectedGamepadId"]
      151 GETTABLE                         R21 R2 R22
      152 SETTABLEKS                       R21 R20 K22 ["Text"]
      154 GETUPVAL                         R22 4
      155 GETTABLEKS                       R21 R22 K23 ["DEVICEDROPDOWN_TEXTBUTTON"]
      157 SETTABLEKS                       R21 R20 K24 ["ZIndex"]
      159 GETUPVAL                         R23 1
      160 GETTABLEKS                       R22 R23 K25 ["Event"]
      162 GETTABLEKS                       R21 R22 K26 ["Activated"]
      164 SETTABLE                         R12 R20 R21
      165 CALL                             R18 2 1
      166 SETTABLEKS                       R18 R17 K16 ["Selected"]
      168 GETUPVAL                         R19 1
      169 GETTABLEKS                       R18 R19 K9 ["createElement"]
      171 LOADK                            R19 K10 ["Frame"]
      172 NEWTABLE                         R20 2 0
      174 GETUPVAL                         R22 1
      175 GETTABLEKS                       R21 R22 K11 ["Tag"]
      177 LOADK                            R22 K27 ["CX-Invisible"]
      178 SETTABLE                         R22 R20 R21
      179 GETUPVAL                         R22 4
      180 GETTABLEKS                       R21 R22 K28 ["DEVICEDROPDOWN_IMAGEBUTTON"]
      182 SETTABLEKS                       R21 R20 K24 ["ZIndex"]
      184 DUPTABLE                         R21 K30 [{"OpenSelectorButton"}]
      185 GETUPVAL                         R23 1
      186 GETTABLEKS                       R22 R23 K9 ["createElement"]
      188 LOADK                            R23 K31 ["ImageButton"]
      189 NEWTABLE                         R24 2 0
      191 GETUPVAL                         R26 1
      192 GETTABLEKS                       R25 R26 K11 ["Tag"]
      194 GETUPVAL                         R26 5
      195 JUMPIFNOT                        R4 ; [+2]
      196 LOADK                            R27 K32 ["Close"]
      197 JUMP                             ; [+1]
      198 LOADK                            R27 K33 ["Open"]
      199 LOADK                            R28 K34 ["data-testid=DeviceDropdown-DropdownImageButton"]
      200 CALL                             R26 2 1
      201 SETTABLE                         R26 R24 R25
      202 GETUPVAL                         R27 1
      203 GETTABLEKS                       R26 R27 K25 ["Event"]
      205 GETTABLEKS                       R25 R26 K26 ["Activated"]
      207 SETTABLE                         R12 R24 R25
      208 CALL                             R22 2 1
      209 SETTABLEKS                       R22 R21 K29 ["OpenSelectorButton"]
      211 CALL                             R18 3 1
      212 SETTABLEKS                       R18 R17 K17 ["ButtonContainer"]
      214 GETUPVAL                         R19 1
      215 GETTABLEKS                       R18 R19 K9 ["createElement"]
      217 GETUPVAL                         R19 6
      218 NEWTABLE                         R20 8 0
      220 GETUPVAL                         R22 1
      221 GETTABLEKS                       R21 R22 K11 ["Tag"]
      223 LOADK                            R22 K35 ["DeviceDropdownMenu"]
      224 SETTABLE                         R22 R20 R21
      225 SETTABLEKS                       R9 R20 K36 ["Items"]
      227 SETTABLEKS                       R8 R20 K37 ["Width"]
      229 NOT                              R21 R4
      230 SETTABLEKS                       R21 R20 K38 ["Hide"]
      232 SETTABLEKS                       R10 R20 K39 ["OnItemActivated"]
      234 SETTABLEKS                       R11 R20 K40 ["OnFocusLost"]
      236 CALL                             R18 2 1
      237 SETTABLEKS                       R18 R17 K18 ["Menu"]
      239 CALL                             R14 3 -1
      240 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ControlsEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R4 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R3 R4 K10 ["Localization"]
       25 GETTABLEKS                       R5 R2 K11 ["Styling"]
       27 GETTABLEKS                       R4 R5 K12 ["joinTags"]
       29 GETTABLEKS                       R5 R2 K13 ["UI"]
       31 GETTABLEKS                       R6 R5 K14 ["DropdownMenu"]
       33 GETIMPORT                        R7 K5 [require]
       35 GETTABLEKS                       R9 R0 K6 ["Packages"]
       37 GETTABLEKS                       R8 R9 K15 ["Dash"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K5 [require]
       42 GETTABLEKS                       R11 R0 K16 ["Src"]
       44 GETTABLEKS                       R10 R11 K17 ["Resources"]
       46 GETTABLEKS                       R9 R10 K18 ["StyleConstants"]
       48 CALL                             R8 1 1
       49 GETTABLEKS                       R9 R8 K19 ["ZIndexData"]
       51 GETIMPORT                        R10 K22 [Vector2.new]
       53 LOADN                            R11 200
       54 LOADN                            R12 40
       55 CALL                             R10 2 1
       56 DUPCLOSURE                       R11 K23 [PROTO_10]
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R10
       61 CAPTURE                          VAL R9
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R6
       64 GETTABLEKS                       R12 R1 K24 ["memo"]
       66 MOVE                             R13 R11
       67 CALL                             R12 1 -1
       68 RETURN                           R12 -1
