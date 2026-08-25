PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["text"]
        2 GETTABLEKS                       R4 R1 K0 ["text"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_2:
        0 MOVE                             R2 R0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R1
        3 CALL                             R2 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 LOADK                            R2 K0 ["%* %*"]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K1 ["prefix"]
        4 MOVE                             R5 R0
        5 NAMECALL                         R2 R2 K2 ["format"]
        7 CALL                             R2 3 1
        8 MOVE                             R1 R2
        9 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K20 [{[1], ["label"] = "", ["value"], ["onChanged"], ["isDisabled"], ["hasError"], ["hint"], ["minimum"], ["maximum"], ["precision"], ["step"], ["formatAsString"], ["controlsVariant"], ["hasControls"] = False, ["variant"], ["width"], ["size"], ["testId"]}]
        3 GETTABLEKS                       R4 R0 K0 ["LayoutOrder"]
        5 SETTABLEKS                       R4 R3 K0 ["LayoutOrder"]
        7 GETTABLEKS                       R4 R0 K3 ["value"]
        9 SETTABLEKS                       R4 R3 K3 ["value"]
       11 GETTABLEKS                       R4 R0 K4 ["onChanged"]
       13 SETTABLEKS                       R4 R3 K4 ["onChanged"]
       15 GETTABLEKS                       R4 R0 K5 ["isDisabled"]
       17 SETTABLEKS                       R4 R3 K5 ["isDisabled"]
       19 GETTABLEKS                       R4 R0 K6 ["hasError"]
       21 SETTABLEKS                       R4 R3 K6 ["hasError"]
       23 GETTABLEKS                       R4 R0 K7 ["hint"]
       25 SETTABLEKS                       R4 R3 K7 ["hint"]
       27 GETTABLEKS                       R4 R0 K8 ["minimum"]
       29 SETTABLEKS                       R4 R3 K8 ["minimum"]
       31 GETTABLEKS                       R4 R0 K9 ["maximum"]
       33 SETTABLEKS                       R4 R3 K9 ["maximum"]
       35 GETTABLEKS                       R5 R0 K10 ["precision"]
       37 ORK                              R4 R5 K21 [0]
       38 SETTABLEKS                       R4 R3 K10 ["precision"]
       40 GETTABLEKS                       R5 R0 K11 ["step"]
       42 ORK                              R4 R5 K22 [1]
       43 SETTABLEKS                       R4 R3 K11 ["step"]
       45 GETTABLEKS                       R5 R0 K23 ["prefix"]
       47 JUMPIFNOT                        R5 ; [+3]
       48 NEWCLOSURE                       R4 P0
       49 CAPTURE                          VAL R0
       50 JUMP                             ; [+1]
       51 LOADNIL                          R4
       52 SETTABLEKS                       R4 R3 K12 ["formatAsString"]
       54 GETUPVAL                         R4 2
       55 GETTABLEKS                       R4 R4 K24 ["None"]
       57 SETTABLEKS                       R4 R3 K13 ["controlsVariant"]
       59 GETUPVAL                         R4 3
       60 GETTABLEKS                       R4 R4 K25 ["Contrast"]
       62 SETTABLEKS                       R4 R3 K16 ["variant"]
       64 GETIMPORT                        R4 K28 [UDim.new]
       66 LOADN                            R5 1
       67 LOADN                            R6 0
       68 CALL                             R4 2 1
       69 SETTABLEKS                       R4 R3 K17 ["width"]
       71 GETUPVAL                         R4 4
       72 GETTABLEKS                       R4 R4 K29 ["Small"]
       74 SETTABLEKS                       R4 R3 K18 ["size"]
       76 GETTABLEKS                       R4 R0 K19 ["testId"]
       78 SETTABLEKS                       R4 R3 K19 ["testId"]
       80 CALL                             R1 2 -1
       81 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 DUPTABLE                         R6 K3 [{[1], ["tag"] = "row gap-medium align-y-center size-full-0 auto-y"}]
        3 SETTABLEKS                       R2 R6 K0 ["LayoutOrder"]
        5 DUPTABLE                         R7 K6 [{"Label", "Control"}]
        6 GETUPVAL                         R8 0
        7 GETUPVAL                         R9 2
        8 DUPTABLE                         R10 K12 [{[1] = 1, ["Text"], ["Size"], ["tag"] = "text-body-medium text-align-x-left auto-y content-default", ["testId"]}]
        9 SETTABLEKS                       R0 R10 K8 ["Text"]
       11 GETIMPORT                        R11 K15 [UDim2.fromOffset]
       13 LOADN                            R12 100
       14 LOADN                            R13 0
       15 CALL                             R11 2 1
       16 SETTABLEKS                       R11 R10 K9 ["Size"]
       18 JUMPIFNOT                        R3 ; [+7]
       19 LOADK                            R12 K16 ["%*-label"]
       20 MOVE                             R14 R3
       21 NAMECALL                         R12 R12 K17 ["format"]
       23 CALL                             R12 2 1
       24 MOVE                             R11 R12
       25 JUMP                             ; [+1]
       26 LOADNIL                          R11
       27 SETTABLEKS                       R11 R10 K11 ["testId"]
       29 CALL                             R8 2 1
       30 SETTABLEKS                       R8 R7 K4 ["Label"]
       32 GETUPVAL                         R8 0
       33 GETUPVAL                         R9 1
       34 DUPTABLE                         R10 K20 [{[1] = 2, ["tag"] = "fill auto-y"}]
       35 MOVE                             R11 R1
       36 CALL                             R8 3 1
       37 SETTABLEKS                       R8 R7 K5 ["Control"]
       39 CALL                             R4 3 -1
       40 RETURN                           R4 -1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 DUPTABLE                         R5 K4 [{"LayoutOrder", "Size", "AutomaticSize", "tag"}]
        3 SETTABLEKS                       R1 R5 K0 ["LayoutOrder"]
        5 JUMPIFNOT                        R2 ; [+8]
        6 GETIMPORT                        R6 K7 [UDim2.new]
        8 MOVE                             R7 R2
        9 GETIMPORT                        R8 K9 [UDim.new]
       11 CALL                             R8 0 -1
       12 CALL                             R6 -1 1
       13 JUMP                             ; [+1]
       14 LOADNIL                          R6
       15 SETTABLEKS                       R6 R5 K1 ["Size"]
       17 GETIMPORT                        R6 K12 [Enum.AutomaticSize.Y]
       19 SETTABLEKS                       R6 R5 K2 ["AutomaticSize"]
       21 JUMPIFNOT                        R2 ; [+2]
       22 LOADNIL                          R6
       23 JUMP                             ; [+1]
       24 LOADK                            R6 K13 ["fill auto-y"]
       25 SETTABLEKS                       R6 R5 K3 ["tag"]
       27 MOVE                             R6 R0
       28 CALL                             R3 3 -1
       29 RETURN                           R3 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K2 [{[1] = "row gap-small size-full-0 auto-y"}]
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onActivated"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["Hooks"]
        5 GETTABLEKS                       R2 R2 K1 ["useTokens"]
        7 CALL                             R2 0 1
        8 NEWTABLE                         R3 0 0
       10 GETUPVAL                         R4 2
       11 LOADNIL                          R5
       12 LOADNIL                          R6
       13 FORGPREP                         R4
       14 GETTABLEKS                       R10 R0 K2 ["activeTab"]
       16 JUMPIFEQ                         R10 R8 ; [+2]
       18 LOADB                            R9 0 +1
       19 LOADB                            R9 1
       20 GETUPVAL                         R10 3
       21 GETUPVAL                         R11 4
       22 DUPTABLE                         R12 K9 [{["LayoutOrder"], ["tag"] = "col flex-y-between align-x-center fill size-full", ["onActivated"], ["selection"], ["testId"]}]
       23 SETTABLEKS                       R7 R12 K3 ["LayoutOrder"]
       25 NEWCLOSURE                       R13 P0
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R8
       28 SETTABLEKS                       R13 R12 K6 ["onActivated"]
       30 DUPTABLE                         R13 K12 [{["Selectable"] = True}]
       31 SETTABLEKS                       R13 R12 K7 ["selection"]
       33 LOADK                            R14 K13 ["device-tab-%*"]
       34 MOVE                             R16 R8
       35 NAMECALL                         R14 R14 K14 ["format"]
       37 CALL                             R14 2 1
       38 MOVE                             R13 R14
       39 SETTABLEKS                       R13 R12 K8 ["testId"]
       41 DUPTABLE                         R13 K17 [{"Content", "Indicator"}]
       42 GETUPVAL                         R14 3
       43 GETUPVAL                         R15 4
       44 DUPTABLE                         R16 K20 [{["LayoutOrder"] = 1, ["tag"] = "row gap-small align-x-center align-y-center fill size-full"}]
       45 DUPTABLE                         R17 K23 [{"Icon", "Label"}]
       46 GETUPVAL                         R18 3
       47 GETUPVAL                         R19 5
       48 DUPTABLE                         R20 K27 [{["LayoutOrder"] = 1, ["name"], ["size"], ["style"]}]
       49 GETUPVAL                         R22 6
       50 GETTABLE                         R21 R22 R8
       51 SETTABLEKS                       R21 R20 K24 ["name"]
       53 GETUPVAL                         R21 7
       54 GETTABLEKS                       R21 R21 K28 ["Medium"]
       56 SETTABLEKS                       R21 R20 K25 ["size"]
       58 JUMPIFNOT                        R9 ; [+7]
       59 GETTABLEKS                       R21 R2 K29 ["Color"]
       61 GETTABLEKS                       R21 R21 K15 ["Content"]
       63 GETTABLEKS                       R21 R21 K30 ["Default"]
       65 JUMP                             ; [+6]
       66 GETTABLEKS                       R21 R2 K29 ["Color"]
       68 GETTABLEKS                       R21 R21 K15 ["Content"]
       70 GETTABLEKS                       R21 R21 K31 ["Emphasis"]
       72 SETTABLEKS                       R21 R20 K26 ["style"]
       74 CALL                             R18 2 1
       75 SETTABLEKS                       R18 R17 K21 ["Icon"]
       77 GETUPVAL                         R18 3
       78 GETUPVAL                         R19 8
       79 DUPTABLE                         R20 K34 [{["LayoutOrder"] = 2, ["Text"], ["tag"]}]
       80 LOADK                            R23 K35 ["DeviceManager"]
       81 GETUPVAL                         R25 9
       82 GETTABLE                         R24 R25 R8
       83 NAMECALL                         R21 R1 K36 ["getText"]
       85 CALL                             R21 3 1
       86 SETTABLEKS                       R21 R20 K33 ["Text"]
       88 NEWTABLE                         R21 4 0
       90 LOADB                            R22 1
       91 SETTABLEKS                       R22 R21 K37 ["text-title-medium auto-xy"]
       93 SETTABLEKS                       R9 R21 K38 ["content-default"]
       95 NOT                              R22 R9
       96 SETTABLEKS                       R22 R21 K39 ["content-emphasis"]
       98 SETTABLEKS                       R21 R20 K4 ["tag"]
      100 CALL                             R18 2 1
      101 SETTABLEKS                       R18 R17 K22 ["Label"]
      103 CALL                             R14 3 1
      104 SETTABLEKS                       R14 R13 K15 ["Content"]
      106 JUMPIFNOT                        R9 ; [+25]
      107 GETUPVAL                         R14 3
      108 GETUPVAL                         R15 4
      109 DUPTABLE                         R16 K43 [{["LayoutOrder"] = 2, ["Size"], ["backgroundStyle"], ["testId"] = "active-tab-indicator"}]
      110 GETIMPORT                        R17 K46 [UDim2.new]
      112 LOADN                            R18 1
      113 LOADN                            R19 0
      114 LOADN                            R20 0
      115 GETTABLEKS                       R21 R2 K47 ["Stroke"]
      117 GETTABLEKS                       R21 R21 K48 ["Thick"]
      119 CALL                             R17 4 1
      120 SETTABLEKS                       R17 R16 K40 ["Size"]
      122 GETTABLEKS                       R17 R2 K29 ["Color"]
      124 GETTABLEKS                       R17 R17 K49 ["System"]
      126 GETTABLEKS                       R17 R17 K50 ["Contrast"]
      128 SETTABLEKS                       R17 R16 K41 ["backgroundStyle"]
      130 CALL                             R14 2 1
      131 JUMP                             ; [+1]
      132 LOADNIL                          R14
      133 SETTABLEKS                       R14 R13 K16 ["Indicator"]
      135 CALL                             R10 3 1
      136 SETTABLE                         R10 R3 R8
      137 FORGLOOP                         R4 2 ; [-124]
      139 GETUPVAL                         R4 3
      140 GETUPVAL                         R5 4
      141 DUPTABLE                         R6 K53 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"] = "device-tabs"}]
      142 GETTABLEKS                       R7 R0 K3 ["LayoutOrder"]
      144 SETTABLEKS                       R7 R6 K3 ["LayoutOrder"]
      146 DUPTABLE                         R7 K56 [{"Tabs", "Divider"}]
      147 GETUPVAL                         R8 3
      148 GETUPVAL                         R9 4
      149 DUPTABLE                         R10 K58 [{["LayoutOrder"] = 1, ["tag"] = "row size-full-1400"}]
      150 MOVE                             R11 R3
      151 CALL                             R8 3 1
      152 SETTABLEKS                       R8 R7 K54 ["Tabs"]
      154 GETUPVAL                         R8 3
      155 GETUPVAL                         R9 1
      156 GETTABLEKS                       R9 R9 K55 ["Divider"]
      158 DUPTABLE                         R10 K59 [{["LayoutOrder"] = 2}]
      159 CALL                             R8 2 1
      160 SETTABLEKS                       R8 R7 K55 ["Divider"]
      162 CALL                             R4 3 -1
      163 RETURN                           R4 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["selectDevice"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["draftId"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setState"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 MOVE                             R2 R0
        7 NEWCLOSURE                       R3 P1
        8 CAPTURE                          VAL R1
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["selectDevice"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["draftId"]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K2 ["deleteSelected"]
       11 MOVE                             R3 R1
       12 CALL                             R2 1 -1
       13 RETURN                           R2 -1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setState"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 MOVE                             R2 R0
        7 NEWCLOSURE                       R3 P1
        8 CAPTURE                          VAL R1
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["hideStandard"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["draftId"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setState"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 MOVE                             R2 R0
        7 NEWCLOSURE                       R3 P1
        8 CAPTURE                          VAL R1
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["addDevice"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setState"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 MOVE                             R2 R0
        7 NEWCLOSURE                       R3 P1
        8 CAPTURE                          VAL R1
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["state"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["getFFlagEnableDeviceSimulatorDeviceVisibility"]
        7 CALL                             R3 0 1
        8 MOVE                             R4 R3
        9 JUMPIFNOT                        R4 ; [+6]
       10 GETTABLEKS                       R5 R2 K2 ["activeTab"]
       12 JUMPIFEQKS                       R5 K3 ["mobile"] ; [+2]
       14 LOADB                            R4 0 +1
       15 LOADB                            R4 1
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R5 R5 K4 ["visibleDevicesForTab"]
       19 MOVE                             R6 R2
       20 CALL                             R5 1 1
       21 NEWTABLE                         R6 0 0
       23 NEWTABLE                         R7 0 0
       25 GETTABLEKS                       R9 R2 K5 ["selectedByTab"]
       27 GETTABLEKS                       R10 R2 K2 ["activeTab"]
       29 GETTABLE                         R8 R9 R10
       30 MOVE                             R9 R5
       31 LOADNIL                          R10
       32 LOADNIL                          R11
       33 FORGPREP                         R9
       34 GETTABLEKS                       R14 R13 K6 ["info"]
       36 GETTABLEKS                       R16 R13 K7 ["draftId"]
       38 JUMPIFEQ                         R8 R16 ; [+2]
       40 LOADB                            R15 0 +1
       41 LOADB                            R15 1
       42 GETUPVAL                         R16 3
       43 GETUPVAL                         R17 4
       44 DUPTABLE                         R18 K13 [{"LayoutOrder", "onActivated", "selection", "tag", "testId"}]
       45 SETTABLEKS                       R12 R18 K8 ["LayoutOrder"]
       47 NEWCLOSURE                       R19 P0
       48 CAPTURE                          VAL R0
       49 CAPTURE                          UPVAL U2
       50 CAPTURE                          VAL R13
       51 SETTABLEKS                       R19 R18 K9 ["onActivated"]
       53 DUPTABLE                         R19 K16 [{["Selectable"] = True}]
       54 SETTABLEKS                       R19 R18 K10 ["selection"]
       56 NEWTABLE                         R19 2 0
       58 LOADB                            R20 1
       59 SETTABLEKS                       R20 R19 K17 ["row flex-between align-y-center size-full-900 padding-x-small radius-small"]
       61 SETTABLEKS                       R15 R19 K18 ["bg-shift-200"]
       63 SETTABLEKS                       R19 R18 K11 ["tag"]
       65 LOADK                            R20 K19 ["device-%*"]
       66 GETTABLEKS                       R22 R13 K7 ["draftId"]
       68 NAMECALL                         R20 R20 K20 ["format"]
       70 CALL                             R20 2 1
       71 MOVE                             R19 R20
       72 SETTABLEKS                       R19 R18 K12 ["testId"]
       74 DUPTABLE                         R19 K24 [{"Title", "Delete", "Hide"}]
       75 GETUPVAL                         R20 3
       76 GETUPVAL                         R21 5
       77 DUPTABLE                         R22 K28 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "text-body-medium text-align-x-left text-align-y-center text-truncate-end fill size-0-full content-emphasis"}]
       78 GETTABLEKS                       R23 R14 K29 ["deviceName"]
       80 SETTABLEKS                       R23 R22 K26 ["Text"]
       82 CALL                             R20 2 1
       83 SETTABLEKS                       R20 R19 K21 ["Title"]
       85 GETTABLEKS                       R21 R14 K30 ["isCustom"]
       87 JUMPIFNOT                        R21 ; [+32]
       88 GETUPVAL                         R20 3
       89 GETUPVAL                         R21 6
       90 DUPTABLE                         R22 K34 [{["LayoutOrder"] = 2, ["icon"], ["size"], ["onActivated"], ["testId"]}]
       91 GETUPVAL                         R23 7
       92 GETTABLEKS                       R23 R23 K35 ["Icon"]
       94 GETTABLEKS                       R23 R23 K36 ["TrashCan"]
       96 SETTABLEKS                       R23 R22 K32 ["icon"]
       98 GETUPVAL                         R23 8
       99 GETTABLEKS                       R23 R23 K37 ["XSmall"]
      101 SETTABLEKS                       R23 R22 K33 ["size"]
      103 NEWCLOSURE                       R23 P1
      104 CAPTURE                          VAL R0
      105 CAPTURE                          UPVAL U2
      106 CAPTURE                          VAL R13
      107 SETTABLEKS                       R23 R22 K9 ["onActivated"]
      109 LOADK                            R24 K38 ["delete-%*"]
      110 GETTABLEKS                       R26 R13 K7 ["draftId"]
      112 NAMECALL                         R24 R24 K20 ["format"]
      114 CALL                             R24 2 1
      115 MOVE                             R23 R24
      116 SETTABLEKS                       R23 R22 K12 ["testId"]
      118 CALL                             R20 2 1
      119 JUMP                             ; [+1]
      120 LOADNIL                          R20
      121 SETTABLEKS                       R20 R19 K22 ["Delete"]
      123 JUMPIFNOT                        R4 ; [+35]
      124 GETTABLEKS                       R21 R14 K30 ["isCustom"]
      126 JUMPIF                           R21 ; [+32]
      127 GETUPVAL                         R20 3
      128 GETUPVAL                         R21 6
      129 DUPTABLE                         R22 K34 [{["LayoutOrder"] = 2, ["icon"], ["size"], ["onActivated"], ["testId"]}]
      130 GETUPVAL                         R23 7
      131 GETTABLEKS                       R23 R23 K35 ["Icon"]
      133 GETTABLEKS                       R23 R23 K39 ["X"]
      135 SETTABLEKS                       R23 R22 K32 ["icon"]
      137 GETUPVAL                         R23 8
      138 GETTABLEKS                       R23 R23 K37 ["XSmall"]
      140 SETTABLEKS                       R23 R22 K33 ["size"]
      142 NEWCLOSURE                       R23 P2
      143 CAPTURE                          VAL R0
      144 CAPTURE                          UPVAL U2
      145 CAPTURE                          VAL R13
      146 SETTABLEKS                       R23 R22 K9 ["onActivated"]
      148 LOADK                            R24 K40 ["hide-%*"]
      149 GETTABLEKS                       R26 R13 K7 ["draftId"]
      151 NAMECALL                         R24 R24 K20 ["format"]
      153 CALL                             R24 2 1
      154 MOVE                             R23 R24
      155 SETTABLEKS                       R23 R22 K12 ["testId"]
      157 CALL                             R20 2 1
      158 JUMP                             ; [+1]
      159 LOADNIL                          R20
      160 SETTABLEKS                       R20 R19 K23 ["Hide"]
      162 CALL                             R16 3 1
      163 GETTABLEKS                       R17 R14 K30 ["isCustom"]
      165 JUMPIFNOT                        R17 ; [+4]
      166 GETTABLEKS                       R17 R13 K7 ["draftId"]
      168 SETTABLE                         R16 R6 R17
      169 JUMP                             ; [+3]
      170 GETTABLEKS                       R17 R13 K7 ["draftId"]
      172 SETTABLE                         R16 R7 R17
      173 FORGLOOP                         R9 2 ; [-140]
      175 GETUPVAL                         R9 3
      176 GETUPVAL                         R10 4
      177 DUPTABLE                         R11 K42 [{["tag"] = "col size-full-0 auto-y gap-xsmall padding-x-large padding-y-medium"}]
      178 DUPTABLE                         R12 K47 [{"CustomHeader", "CustomList", "StandardHeader", "StandardList"}]
      179 GETUPVAL                         R13 3
      180 GETUPVAL                         R14 4
      181 DUPTABLE                         R15 K49 [{["LayoutOrder"] = 1, ["tag"] = "row flex-between align-y-center size-full-0 auto-y"}]
      182 DUPTABLE                         R16 K51 [{"Title", "Add"}]
      183 GETUPVAL                         R17 3
      184 GETUPVAL                         R18 5
      185 DUPTABLE                         R19 K53 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "text-title-medium auto-xy"}]
      186 LOADK                            R22 K54 ["DeviceMenu"]
      187 LOADK                            R23 K55 ["Custom"]
      188 NAMECALL                         R20 R1 K56 ["getText"]
      190 CALL                             R20 3 1
      191 SETTABLEKS                       R20 R19 K26 ["Text"]
      193 CALL                             R17 2 1
      194 SETTABLEKS                       R17 R16 K21 ["Title"]
      196 GETUPVAL                         R17 3
      197 GETUPVAL                         R18 6
      198 DUPTABLE                         R19 K58 [{["LayoutOrder"] = 2, ["icon"], ["size"], ["onActivated"], ["testId"] = "add-device"}]
      199 GETUPVAL                         R20 7
      200 GETTABLEKS                       R20 R20 K35 ["Icon"]
      202 GETTABLEKS                       R20 R20 K59 ["PlusSmall"]
      204 SETTABLEKS                       R20 R19 K32 ["icon"]
      206 GETUPVAL                         R20 8
      207 GETTABLEKS                       R20 R20 K60 ["Small"]
      209 SETTABLEKS                       R20 R19 K33 ["size"]
      211 NEWCLOSURE                       R20 P3
      212 CAPTURE                          VAL R0
      213 CAPTURE                          UPVAL U2
      214 CAPTURE                          VAL R1
      215 SETTABLEKS                       R20 R19 K9 ["onActivated"]
      217 CALL                             R17 2 1
      218 SETTABLEKS                       R17 R16 K50 ["Add"]
      220 CALL                             R13 3 1
      221 SETTABLEKS                       R13 R12 K43 ["CustomHeader"]
      223 GETUPVAL                         R13 3
      224 GETUPVAL                         R14 4
      225 DUPTABLE                         R15 K62 [{["LayoutOrder"] = 2, ["tag"] = "col gap-xsmall size-full-0 auto-y"}]
      226 MOVE                             R16 R6
      227 CALL                             R13 3 1
      228 SETTABLEKS                       R13 R12 K44 ["CustomList"]
      230 GETUPVAL                         R13 3
      231 GETUPVAL                         R14 4
      232 DUPTABLE                         R15 K64 [{["LayoutOrder"] = 3, ["tag"] = "row flex-between align-y-center size-full-0 auto-y"}]
      233 DUPTABLE                         R16 K51 [{"Title", "Add"}]
      234 GETUPVAL                         R17 3
      235 GETUPVAL                         R18 5
      236 DUPTABLE                         R19 K53 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "text-title-medium auto-xy"}]
      237 LOADK                            R22 K65 ["DeviceManager"]
      238 LOADK                            R23 K66 ["Standard"]
      239 NAMECALL                         R20 R1 K56 ["getText"]
      241 CALL                             R20 3 1
      242 SETTABLEKS                       R20 R19 K26 ["Text"]
      244 CALL                             R17 2 1
      245 SETTABLEKS                       R17 R16 K21 ["Title"]
      247 JUMPIFNOT                        R4 ; [+21]
      248 GETUPVAL                         R17 3
      249 GETUPVAL                         R18 6
      250 DUPTABLE                         R19 K68 [{["LayoutOrder"] = 2, ["icon"], ["size"], ["onActivated"], ["testId"] = "add-standard-devices"}]
      251 GETUPVAL                         R20 7
      252 GETTABLEKS                       R20 R20 K35 ["Icon"]
      254 GETTABLEKS                       R20 R20 K59 ["PlusSmall"]
      256 SETTABLEKS                       R20 R19 K32 ["icon"]
      258 GETUPVAL                         R20 8
      259 GETTABLEKS                       R20 R20 K60 ["Small"]
      261 SETTABLEKS                       R20 R19 K33 ["size"]
      263 GETTABLEKS                       R20 R0 K69 ["onAddDevices"]
      265 SETTABLEKS                       R20 R19 K9 ["onActivated"]
      267 CALL                             R17 2 1
      268 JUMP                             ; [+1]
      269 LOADNIL                          R17
      270 SETTABLEKS                       R17 R16 K50 ["Add"]
      272 CALL                             R13 3 1
      273 SETTABLEKS                       R13 R12 K45 ["StandardHeader"]
      275 GETUPVAL                         R13 3
      276 GETUPVAL                         R14 4
      277 DUPTABLE                         R15 K72 [{["LayoutOrder"] = 4, ["tag"] = "col gap-xsmall size-full-0 auto-y padding-top-small"}]
      278 MOVE                             R16 R7
      279 CALL                             R13 3 1
      280 SETTABLEKS                       R13 R12 K46 ["StandardList"]
      282 CALL                             R9 3 -1
      283 RETURN                           R9 -1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+3]
        2 GETUPVAL                         R2 0
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1
        5 LOADNIL                          R1
        6 RETURN                           R1 1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["updateSelected"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setState"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 MOVE                             R3 R1
        7 NEWCLOSURE                       R4 P1
        8 CAPTURE                          VAL R2
        9 CALL                             R3 1 0
       10 RETURN                           R0 0

PROTO_22:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R5 0
        6 GETTABLE                         R4 R0 R5
        7 NOT                              R3 R4
        8 SETTABLE                         R3 R1 R2
        9 RETURN                           R1 1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setExpanded"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R6 0
        1 GETTABLE                         R5 R6 R0
        2 JUMPIFEQKB                       R5 TRUE ; [+2]
        4 LOADB                            R4 0 +1
        5 LOADB                            R4 1
        6 GETUPVAL                         R5 1
        7 GETUPVAL                         R6 2
        8 DUPTABLE                         R7 K4 [{[1], ["tag"] = "col size-full-0 auto-y gap-xsmall", ["testId"]}]
        9 SETTABLEKS                       R2 R7 K0 ["LayoutOrder"]
       11 LOADK                            R9 K5 ["device-settings-section-%*"]
       12 MOVE                             R11 R0
       13 NAMECALL                         R9 R9 K6 ["format"]
       15 CALL                             R9 2 1
       16 MOVE                             R8 R9
       17 SETTABLEKS                       R8 R7 K3 ["testId"]
       19 DUPTABLE                         R8 K9 [{"Header", "Content"}]
       20 GETUPVAL                         R9 1
       21 GETUPVAL                         R10 2
       22 DUPTABLE                         R11 K14 [{[1] = 1, ["tag"] = "row gap-xsmall align-y-center size-full-600", ["onActivated"], ["selection"], ["testId"]}]
       23 NEWCLOSURE                       R12 P0
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R12 R11 K12 ["onActivated"]
       28 DUPTABLE                         R12 K17 [{["Selectable"] = True}]
       29 SETTABLEKS                       R12 R11 K13 ["selection"]
       31 LOADK                            R13 K18 ["device-settings-section-%*-header"]
       32 MOVE                             R15 R0
       33 NAMECALL                         R13 R13 K6 ["format"]
       35 CALL                             R13 2 1
       36 MOVE                             R12 R13
       37 SETTABLEKS                       R12 R11 K3 ["testId"]
       39 DUPTABLE                         R12 K21 [{"Chevron", "Label"}]
       40 GETUPVAL                         R13 1
       41 GETUPVAL                         R14 4
       42 DUPTABLE                         R15 K24 [{[1] = 1, ["name"], ["size"], ["testId"]}]
       43 JUMPIFNOT                        R4 ; [+6]
       44 GETUPVAL                         R16 5
       45 GETTABLEKS                       R16 R16 K25 ["Icon"]
       47 GETTABLEKS                       R16 R16 K26 ["ChevronSmallDown"]
       49 JUMP                             ; [+5]
       50 GETUPVAL                         R16 5
       51 GETTABLEKS                       R16 R16 K25 ["Icon"]
       53 GETTABLEKS                       R16 R16 K27 ["ChevronSmallRight"]
       55 SETTABLEKS                       R16 R15 K22 ["name"]
       57 GETUPVAL                         R16 6
       58 GETTABLEKS                       R16 R16 K28 ["XSmall"]
       60 SETTABLEKS                       R16 R15 K23 ["size"]
       62 LOADK                            R17 K29 ["device-settings-section-%*-chevron"]
       63 MOVE                             R19 R0
       64 NAMECALL                         R17 R17 K6 ["format"]
       66 CALL                             R17 2 1
       67 MOVE                             R16 R17
       68 SETTABLEKS                       R16 R15 K3 ["testId"]
       70 CALL                             R13 2 1
       71 SETTABLEKS                       R13 R12 K19 ["Chevron"]
       73 GETUPVAL                         R13 1
       74 GETUPVAL                         R14 7
       75 DUPTABLE                         R15 K33 [{[1] = 2, ["Text"], ["tag"] = "text-title-small auto-xy content-emphasis"}]
       76 SETTABLEKS                       R1 R15 K31 ["Text"]
       78 CALL                             R13 2 1
       79 SETTABLEKS                       R13 R12 K20 ["Label"]
       81 CALL                             R9 3 1
       82 SETTABLEKS                       R9 R8 K7 ["Header"]
       84 JUMPIFNOT                        R4 ; [+6]
       85 GETUPVAL                         R9 1
       86 GETUPVAL                         R10 2
       87 DUPTABLE                         R11 K35 [{[1] = 2, ["tag"] = "size-full-0 auto-y padding-left-small"}]
       88 MOVE                             R12 R3
       89 CALL                             R9 3 1
       90 JUMP                             ; [+1]
       91 LOADNIL                          R9
       92 SETTABLEKS                       R9 R8 K8 ["Content"]
       94 CALL                             R5 3 -1
       95 RETURN                           R5 -1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["deviceName"]
        3 RETURN                           R0 0

PROTO_26:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["setState"]
        5 NEWCLOSURE                       R3 P1
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R1
        8 MOVE                             R4 R2
        9 NEWCLOSURE                       R5 P2
       10 CAPTURE                          VAL R3
       11 CALL                             R4 1 0
       12 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["platform"]
        3 RETURN                           R0 0

PROTO_28:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["number"] ; [+8]
        7 GETIMPORT                        R1 K5 [Enum.Platform]
        9 MOVE                             R3 R0
       10 NAMECALL                         R1 R1 K6 ["FromValue"]
       12 CALL                             R1 2 1
       13 JUMP                             ; [+1]
       14 LOADNIL                          R1
       15 JUMPIFNOT                        R1 ; [+12]
       16 NEWCLOSURE                       R2 P0
       17 CAPTURE                          VAL R1
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K7 ["setState"]
       21 NEWCLOSURE                       R4 P1
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          VAL R2
       24 MOVE                             R5 R3
       25 NEWCLOSURE                       R6 P2
       26 CAPTURE                          VAL R4
       27 CALL                             R5 1 0
       28 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["width"]
        3 RETURN                           R0 0

PROTO_30:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["setState"]
        5 NEWCLOSURE                       R3 P1
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R1
        8 MOVE                             R4 R2
        9 NEWCLOSURE                       R5 P2
       10 CAPTURE                          VAL R3
       11 CALL                             R4 1 0
       12 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["height"]
        3 RETURN                           R0 0

PROTO_32:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["setState"]
        5 NEWCLOSURE                       R3 P1
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R1
        8 MOVE                             R4 R2
        9 NEWCLOSURE                       R5 P2
       10 CAPTURE                          VAL R3
       11 CALL                             R4 1 0
       12 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["dpi"]
        3 RETURN                           R0 0

PROTO_34:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["setState"]
        5 NEWCLOSURE                       R3 P1
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R1
        8 MOVE                             R4 R2
        9 NEWCLOSURE                       R5 P2
       10 CAPTURE                          VAL R3
       11 CALL                             R4 1 0
       12 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["memoryMB"]
        3 RETURN                           R0 0

PROTO_36:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["setState"]
        5 NEWCLOSURE                       R3 P1
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R1
        8 MOVE                             R4 R2
        9 NEWCLOSURE                       R5 P2
       10 CAPTURE                          VAL R3
       11 CALL                             R4 1 0
       12 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["portraitKeyboardHeight"]
        3 RETURN                           R0 0

PROTO_38:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["setState"]
        5 NEWCLOSURE                       R3 P1
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R1
        8 MOVE                             R4 R2
        9 NEWCLOSURE                       R5 P2
       10 CAPTURE                          VAL R3
       11 CALL                             R4 1 0
       12 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["landscapeKeyboardHeight"]
        3 RETURN                           R0 0

PROTO_40:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["setState"]
        5 NEWCLOSURE                       R3 P1
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R1
        8 MOVE                             R4 R2
        9 NEWCLOSURE                       R5 P2
       10 CAPTURE                          VAL R3
       11 CALL                             R4 1 0
       12 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["state"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["getSelected"]
        7 MOVE                             R4 R2
        8 CALL                             R3 1 1
        9 JUMPIF                           R3 ; [+19]
       10 GETUPVAL                         R4 2
       11 GETUPVAL                         R5 3
       12 DUPTABLE                         R6 K4 [{["tag"] = "size-full align-x-center align-y-center"}]
       13 DUPTABLE                         R7 K6 [{"Empty"}]
       14 GETUPVAL                         R8 2
       15 GETUPVAL                         R9 4
       16 DUPTABLE                         R10 K9 [{["Text"], ["tag"] = "text-body-medium content-muted auto-xy"}]
       17 LOADK                            R13 K10 ["DeviceManager"]
       18 LOADK                            R14 K11 ["EmptyState"]
       19 NAMECALL                         R11 R1 K12 ["getText"]
       21 CALL                             R11 3 1
       22 SETTABLEKS                       R11 R10 K7 ["Text"]
       24 CALL                             R8 2 1
       25 SETTABLEKS                       R8 R7 K5 ["Empty"]
       27 CALL                             R4 3 -1
       28 RETURN                           R4 -1
       29 GETTABLEKS                       R4 R3 K13 ["info"]
       31 GETTABLEKS                       R5 R4 K14 ["isCustom"]
       33 GETUPVAL                         R6 1
       34 GETTABLEKS                       R6 R6 K15 ["validate"]
       36 MOVE                             R7 R2
       37 MOVE                             R8 R1
       38 CALL                             R6 2 2
       39 GETTABLEKS                       R9 R3 K16 ["draftId"]
       41 GETTABLE                         R8 R7 R9
       42 NEWCLOSURE                       R9 P0
       43 CAPTURE                          VAL R8
       44 JUMPIFNOT                        R8 ; [+3]
       45 GETTABLEKS                       R10 R8 K17 ["deviceName"]
       47 JUMP                             ; [+1]
       48 LOADNIL                          R10
       49 JUMPIFNOT                        R8 ; [+3]
       50 GETTABLEKS                       R11 R8 K18 ["width"]
       52 JUMP                             ; [+1]
       53 LOADNIL                          R11
       54 JUMPIFNOT                        R8 ; [+3]
       55 GETTABLEKS                       R12 R8 K19 ["height"]
       57 JUMP                             ; [+1]
       58 LOADNIL                          R12
       59 JUMPIFNOT                        R8 ; [+3]
       60 GETTABLEKS                       R13 R8 K20 ["dpi"]
       62 JUMP                             ; [+1]
       63 LOADNIL                          R13
       64 JUMPIFNOT                        R8 ; [+3]
       65 GETTABLEKS                       R14 R8 K21 ["memoryMB"]
       67 JUMP                             ; [+1]
       68 LOADNIL                          R14
       69 JUMPIFNOT                        R8 ; [+3]
       70 GETTABLEKS                       R15 R8 K22 ["portraitKeyboardHeight"]
       72 JUMP                             ; [+1]
       73 LOADNIL                          R15
       74 JUMPIFNOT                        R8 ; [+3]
       75 GETTABLEKS                       R16 R8 K23 ["landscapeKeyboardHeight"]
       77 JUMP                             ; [+1]
       78 LOADNIL                          R16
       79 GETTABLEKS                       R17 R0 K24 ["expanded"]
       81 NEWCLOSURE                       R18 P1
       82 CAPTURE                          VAL R0
       83 CAPTURE                          UPVAL U1
       84 NEWCLOSURE                       R19 P2
       85 CAPTURE                          VAL R17
       86 CAPTURE                          UPVAL U2
       87 CAPTURE                          UPVAL U3
       88 CAPTURE                          VAL R0
       89 CAPTURE                          UPVAL U5
       90 CAPTURE                          UPVAL U6
       91 CAPTURE                          UPVAL U7
       92 CAPTURE                          UPVAL U4
       93 GETUPVAL                         R20 2
       94 GETUPVAL                         R21 3
       95 DUPTABLE                         R22 K28 [{["tag"] = "col size-full-0 auto-y gap-small padding-large", ["testId"] = "device-details-form"}]
       96 DUPTABLE                         R23 K32 [{"Name", "Platform", "Settings"}]
       97 GETUPVAL                         R24 8
       98 LOADK                            R27 K10 ["DeviceManager"]
       99 LOADK                            R28 K33 ["NameLabel"]
      100 NAMECALL                         R25 R1 K12 ["getText"]
      102 CALL                             R25 3 1
      103 GETUPVAL                         R26 2
      104 GETUPVAL                         R27 9
      105 DUPTABLE                         R28 K45 [{["label"] = "", ["text"], ["placeholder"], ["onChanged"], ["isDisabled"], ["hasError"], ["hint"], ["width"], ["size"], ["variant"], ["testId"] = "device-name"}]
      106 GETTABLEKS                       R29 R4 K17 ["deviceName"]
      108 SETTABLEKS                       R29 R28 K36 ["text"]
      110 LOADK                            R31 K10 ["DeviceManager"]
      111 LOADK                            R32 K46 ["NamePlaceholder"]
      112 NAMECALL                         R29 R1 K12 ["getText"]
      114 CALL                             R29 3 1
      115 SETTABLEKS                       R29 R28 K37 ["placeholder"]
      117 NEWCLOSURE                       R29 P3
      118 CAPTURE                          VAL R0
      119 CAPTURE                          UPVAL U1
      120 SETTABLEKS                       R29 R28 K38 ["onChanged"]
      122 NOT                              R29 R5
      123 SETTABLEKS                       R29 R28 K39 ["isDisabled"]
      125 JUMPIFNOTEQKNIL                  R10 ; [+2]
      127 LOADB                            R29 0 +1
      128 LOADB                            R29 1
      129 SETTABLEKS                       R29 R28 K40 ["hasError"]
      131 SETTABLEKS                       R10 R28 K41 ["hint"]
      133 GETIMPORT                        R29 K49 [UDim.new]
      135 LOADN                            R30 1
      136 LOADN                            R31 0
      137 CALL                             R29 2 1
      138 SETTABLEKS                       R29 R28 K18 ["width"]
      140 GETUPVAL                         R29 10
      141 GETTABLEKS                       R29 R29 K50 ["Small"]
      143 SETTABLEKS                       R29 R28 K42 ["size"]
      145 GETUPVAL                         R29 11
      146 GETTABLEKS                       R29 R29 K51 ["Contrast"]
      148 SETTABLEKS                       R29 R28 K43 ["variant"]
      150 CALL                             R26 2 1
      151 LOADN                            R27 1
      152 LOADK                            R28 K44 ["device-name"]
      153 CALL                             R24 4 1
      154 SETTABLEKS                       R24 R23 K29 ["Name"]
      156 GETUPVAL                         R24 8
      157 LOADK                            R27 K10 ["DeviceManager"]
      158 LOADK                            R28 K30 ["Platform"]
      159 NAMECALL                         R25 R1 K12 ["getText"]
      161 CALL                             R25 3 1
      162 GETUPVAL                         R26 2
      163 GETUPVAL                         R27 12
      164 GETTABLEKS                       R27 R27 K52 ["Root"]
      166 DUPTABLE                         R28 K59 [{["label"] = "", ["value"], ["items"], ["onItemChanged"], ["isDisabled"], ["width"], ["size"], ["variant"], ["maxHeight"] = 250, ["testId"] = "device-platform"}]
      167 GETTABLEKS                       R29 R4 K60 ["platform"]
      169 GETTABLEKS                       R29 R29 K61 ["Value"]
      171 SETTABLEKS                       R29 R28 K53 ["value"]
      173 GETUPVAL                         R29 13
      174 SETTABLEKS                       R29 R28 K54 ["items"]
      176 NEWCLOSURE                       R29 P4
      177 CAPTURE                          VAL R0
      178 CAPTURE                          UPVAL U1
      179 SETTABLEKS                       R29 R28 K55 ["onItemChanged"]
      181 NOT                              R29 R5
      182 SETTABLEKS                       R29 R28 K39 ["isDisabled"]
      184 GETIMPORT                        R29 K49 [UDim.new]
      186 LOADN                            R30 1
      187 LOADN                            R31 0
      188 CALL                             R29 2 1
      189 SETTABLEKS                       R29 R28 K18 ["width"]
      191 GETUPVAL                         R29 10
      192 GETTABLEKS                       R29 R29 K50 ["Small"]
      194 SETTABLEKS                       R29 R28 K42 ["size"]
      196 GETUPVAL                         R29 11
      197 GETTABLEKS                       R29 R29 K51 ["Contrast"]
      199 SETTABLEKS                       R29 R28 K43 ["variant"]
      201 CALL                             R26 2 1
      202 LOADN                            R27 2
      203 LOADK                            R28 K58 ["device-platform"]
      204 CALL                             R24 4 1
      205 SETTABLEKS                       R24 R23 K30 ["Platform"]
      207 GETUPVAL                         R24 2
      208 GETUPVAL                         R25 3
      209 DUPTABLE                         R26 K66 [{["LayoutOrder"] = 3, ["tag"] = "col gap-xsmall size-full-0 auto-y", ["testId"] = "device-settings"}]
      210 DUPTABLE                         R27 K70 [{"Display", "Performance", "Keyboard"}]
      211 MOVE                             R28 R19
      212 LOADK                            R29 K71 ["display"]
      213 LOADK                            R32 K10 ["DeviceManager"]
      214 LOADK                            R33 K67 ["Display"]
      215 NAMECALL                         R30 R1 K12 ["getText"]
      217 CALL                             R30 3 1
      218 LOADN                            R31 1
      219 GETUPVAL                         R32 2
      220 GETUPVAL                         R33 3
      221 DUPTABLE                         R34 K73 [{["tag"] = "col gap-small size-full-0 auto-y padding-x-medium padding-y-small"}]
      222 DUPTABLE                         R35 K76 [{"Dimensions", "PixelDensity"}]
      223 GETUPVAL                         R36 8
      224 LOADK                            R39 K10 ["DeviceManager"]
      225 LOADK                            R40 K74 ["Dimensions"]
      226 NAMECALL                         R37 R1 K12 ["getText"]
      228 CALL                             R37 3 1
      229 DUPTABLE                         R39 K79 [{"Width", "Height"}]
      230 GETUPVAL                         R41 14
      231 DUPTABLE                         R42 K87 [{["prefix"] = "W", ["value"], ["onChanged"], ["isDisabled"], ["hasError"], ["hint"], ["minimum"] = 1, ["maximum"] = 7680, ["testId"] = "device-width"}]
      232 GETTABLEKS                       R43 R4 K18 ["width"]
      234 SETTABLEKS                       R43 R42 K53 ["value"]
      236 NEWCLOSURE                       R43 P5
      237 CAPTURE                          VAL R0
      238 CAPTURE                          UPVAL U1
      239 SETTABLEKS                       R43 R42 K38 ["onChanged"]
      241 NOT                              R43 R5
      242 SETTABLEKS                       R43 R42 K39 ["isDisabled"]
      244 JUMPIFNOTEQKNIL                  R11 ; [+2]
      246 LOADB                            R43 0 +1
      247 LOADB                            R43 1
      248 SETTABLEKS                       R43 R42 K40 ["hasError"]
      250 SETTABLEKS                       R11 R42 K41 ["hint"]
      252 CALL                             R41 1 1
      253 GETUPVAL                         R42 2
      254 GETUPVAL                         R43 3
      255 DUPTABLE                         R44 K92 [{["LayoutOrder"] = 1, ["Size"] = , ["AutomaticSize"], ["tag"] = "fill auto-y"}]
      256 GETIMPORT                        R45 K95 [Enum.AutomaticSize.Y]
      258 SETTABLEKS                       R45 R44 K90 ["AutomaticSize"]
      260 MOVE                             R45 R41
      261 CALL                             R42 3 1
      262 MOVE                             R40 R42
      263 SETTABLEKS                       R40 R39 K77 ["Width"]
      265 GETUPVAL                         R41 14
      266 DUPTABLE                         R42 K99 [{["prefix"] = "H", ["value"], ["onChanged"], ["isDisabled"], ["hasError"], ["hint"], ["minimum"] = 1, ["maximum"] = 4320, ["testId"] = "device-height"}]
      267 GETTABLEKS                       R43 R4 K19 ["height"]
      269 SETTABLEKS                       R43 R42 K53 ["value"]
      271 NEWCLOSURE                       R43 P6
      272 CAPTURE                          VAL R0
      273 CAPTURE                          UPVAL U1
      274 SETTABLEKS                       R43 R42 K38 ["onChanged"]
      276 NOT                              R43 R5
      277 SETTABLEKS                       R43 R42 K39 ["isDisabled"]
      279 JUMPIFNOTEQKNIL                  R12 ; [+2]
      281 LOADB                            R43 0 +1
      282 LOADB                            R43 1
      283 SETTABLEKS                       R43 R42 K40 ["hasError"]
      285 SETTABLEKS                       R12 R42 K41 ["hint"]
      287 CALL                             R41 1 1
      288 GETUPVAL                         R42 2
      289 GETUPVAL                         R43 3
      290 DUPTABLE                         R44 K101 [{["LayoutOrder"] = 2, ["Size"] = , ["AutomaticSize"], ["tag"] = "fill auto-y"}]
      291 GETIMPORT                        R45 K95 [Enum.AutomaticSize.Y]
      293 SETTABLEKS                       R45 R44 K90 ["AutomaticSize"]
      295 MOVE                             R45 R41
      296 CALL                             R42 3 1
      297 MOVE                             R40 R42
      298 SETTABLEKS                       R40 R39 K78 ["Height"]
      300 GETUPVAL                         R40 2
      301 GETUPVAL                         R41 3
      302 DUPTABLE                         R42 K103 [{["tag"] = "row gap-small size-full-0 auto-y"}]
      303 MOVE                             R43 R39
      304 CALL                             R40 3 1
      305 MOVE                             R38 R40
      306 LOADN                            R39 1
      307 LOADK                            R40 K104 ["device-dimensions"]
      308 CALL                             R36 4 1
      309 SETTABLEKS                       R36 R35 K74 ["Dimensions"]
      311 GETUPVAL                         R36 8
      312 LOADK                            R39 K10 ["DeviceManager"]
      313 LOADK                            R40 K75 ["PixelDensity"]
      314 NAMECALL                         R37 R1 K12 ["getText"]
      316 CALL                             R37 3 1
      317 GETUPVAL                         R38 14
      318 DUPTABLE                         R39 K109 [{["prefix"] = "PPI", ["value"], ["onChanged"], ["isDisabled"], ["hasError"], ["hint"], ["minimum"] = 72, ["maximum"] = 10000, ["testId"] = "pixel-density"}]
      319 GETTABLEKS                       R40 R4 K20 ["dpi"]
      321 SETTABLEKS                       R40 R39 K53 ["value"]
      323 NEWCLOSURE                       R40 P7
      324 CAPTURE                          VAL R0
      325 CAPTURE                          UPVAL U1
      326 SETTABLEKS                       R40 R39 K38 ["onChanged"]
      328 NOT                              R40 R5
      329 SETTABLEKS                       R40 R39 K39 ["isDisabled"]
      331 JUMPIFNOTEQKNIL                  R13 ; [+2]
      333 LOADB                            R40 0 +1
      334 LOADB                            R40 1
      335 SETTABLEKS                       R40 R39 K40 ["hasError"]
      337 SETTABLEKS                       R13 R39 K41 ["hint"]
      339 CALL                             R38 1 1
      340 LOADN                            R39 2
      341 LOADK                            R40 K108 ["pixel-density"]
      342 CALL                             R36 4 1
      343 SETTABLEKS                       R36 R35 K75 ["PixelDensity"]
      345 CALL                             R32 3 -1
      346 CALL                             R28 -1 1
      347 SETTABLEKS                       R28 R27 K67 ["Display"]
      349 GETTABLEKS                       R29 R0 K110 ["hasInternalPermission"]
      351 JUMPIFNOT                        R29 ; [+49]
      352 MOVE                             R28 R19
      353 LOADK                            R29 K111 ["performance"]
      354 LOADK                            R32 K10 ["DeviceManager"]
      355 LOADK                            R33 K68 ["Performance"]
      356 NAMECALL                         R30 R1 K12 ["getText"]
      358 CALL                             R30 3 1
      359 LOADN                            R31 2
      360 GETUPVAL                         R32 2
      361 GETUPVAL                         R33 3
      362 DUPTABLE                         R34 K73 [{["tag"] = "col gap-small size-full-0 auto-y padding-x-medium padding-y-small"}]
      363 DUPTABLE                         R35 K113 [{"Memory"}]
      364 GETUPVAL                         R36 8
      365 LOADK                            R39 K10 ["DeviceManager"]
      366 LOADK                            R40 K112 ["Memory"]
      367 NAMECALL                         R37 R1 K12 ["getText"]
      369 CALL                             R37 3 1
      370 GETUPVAL                         R38 14
      371 DUPTABLE                         R39 K118 [{["prefix"] = "MB", ["value"], ["onChanged"], ["isDisabled"], ["hasError"], ["hint"], ["minimum"] = 0, ["maximum"] = 1048576, ["testId"] = "device-memory"}]
      372 GETTABLEKS                       R40 R4 K21 ["memoryMB"]
      374 SETTABLEKS                       R40 R39 K53 ["value"]
      376 NEWCLOSURE                       R40 P8
      377 CAPTURE                          VAL R0
      378 CAPTURE                          UPVAL U1
      379 SETTABLEKS                       R40 R39 K38 ["onChanged"]
      381 NOT                              R40 R5
      382 SETTABLEKS                       R40 R39 K39 ["isDisabled"]
      384 JUMPIFNOTEQKNIL                  R14 ; [+2]
      386 LOADB                            R40 0 +1
      387 LOADB                            R40 1
      388 SETTABLEKS                       R40 R39 K40 ["hasError"]
      390 SETTABLEKS                       R14 R39 K41 ["hint"]
      392 CALL                             R38 1 1
      393 LOADN                            R39 1
      394 LOADK                            R40 K117 ["device-memory"]
      395 CALL                             R36 4 1
      396 SETTABLEKS                       R36 R35 K112 ["Memory"]
      398 CALL                             R32 3 -1
      399 CALL                             R28 -1 1
      400 JUMP                             ; [+1]
      401 LOADNIL                          R28
      402 SETTABLEKS                       R28 R27 K68 ["Performance"]
      404 MOVE                             R28 R19
      405 LOADK                            R29 K119 ["keyboard"]
      406 LOADK                            R32 K10 ["DeviceManager"]
      407 LOADK                            R33 K120 ["KeyboardSettings"]
      408 NAMECALL                         R30 R1 K12 ["getText"]
      410 CALL                             R30 3 1
      411 LOADN                            R31 3
      412 GETUPVAL                         R32 2
      413 GETUPVAL                         R33 3
      414 DUPTABLE                         R34 K73 [{["tag"] = "col gap-small size-full-0 auto-y padding-x-medium padding-y-small"}]
      415 DUPTABLE                         R35 K122 [{"Heights"}]
      416 GETUPVAL                         R36 8
      417 LOADK                            R39 K10 ["DeviceManager"]
      418 LOADK                            R40 K123 ["KeyboardHeight"]
      419 NAMECALL                         R37 R1 K12 ["getText"]
      421 CALL                             R37 3 1
      422 DUPTABLE                         R39 K126 [{"Portrait", "Landscape"}]
      423 GETUPVAL                         R41 14
      424 DUPTABLE                         R42 K128 [{["prefix"], ["value"], ["onChanged"], ["isDisabled"], ["hasError"], ["hint"], ["minimum"] = 0, ["maximum"] = 4320, ["testId"] = "portrait-keyboard-height"}]
      425 LOADK                            R45 K10 ["DeviceManager"]
      426 LOADK                            R46 K124 ["Portrait"]
      427 NAMECALL                         R43 R1 K12 ["getText"]
      429 CALL                             R43 3 1
      430 SETTABLEKS                       R43 R42 K80 ["prefix"]
      432 GETTABLEKS                       R43 R4 K22 ["portraitKeyboardHeight"]
      434 SETTABLEKS                       R43 R42 K53 ["value"]
      436 NEWCLOSURE                       R43 P9
      437 CAPTURE                          VAL R0
      438 CAPTURE                          UPVAL U1
      439 SETTABLEKS                       R43 R42 K38 ["onChanged"]
      441 NOT                              R43 R5
      442 SETTABLEKS                       R43 R42 K39 ["isDisabled"]
      444 JUMPIFNOTEQKNIL                  R15 ; [+2]
      446 LOADB                            R43 0 +1
      447 LOADB                            R43 1
      448 SETTABLEKS                       R43 R42 K40 ["hasError"]
      450 SETTABLEKS                       R15 R42 K41 ["hint"]
      452 CALL                             R41 1 1
      453 GETUPVAL                         R42 2
      454 GETUPVAL                         R43 3
      455 DUPTABLE                         R44 K92 [{["LayoutOrder"] = 1, ["Size"] = , ["AutomaticSize"], ["tag"] = "fill auto-y"}]
      456 GETIMPORT                        R45 K95 [Enum.AutomaticSize.Y]
      458 SETTABLEKS                       R45 R44 K90 ["AutomaticSize"]
      460 MOVE                             R45 R41
      461 CALL                             R42 3 1
      462 MOVE                             R40 R42
      463 SETTABLEKS                       R40 R39 K124 ["Portrait"]
      465 GETUPVAL                         R41 14
      466 DUPTABLE                         R42 K130 [{["prefix"], ["value"], ["onChanged"], ["isDisabled"], ["hasError"], ["hint"], ["minimum"] = 0, ["maximum"] = 4320, ["testId"] = "landscape-keyboard-height"}]
      467 LOADK                            R45 K10 ["DeviceManager"]
      468 LOADK                            R46 K125 ["Landscape"]
      469 NAMECALL                         R43 R1 K12 ["getText"]
      471 CALL                             R43 3 1
      472 SETTABLEKS                       R43 R42 K80 ["prefix"]
      474 GETTABLEKS                       R43 R4 K23 ["landscapeKeyboardHeight"]
      476 SETTABLEKS                       R43 R42 K53 ["value"]
      478 NEWCLOSURE                       R43 P10
      479 CAPTURE                          VAL R0
      480 CAPTURE                          UPVAL U1
      481 SETTABLEKS                       R43 R42 K38 ["onChanged"]
      483 NOT                              R43 R5
      484 SETTABLEKS                       R43 R42 K39 ["isDisabled"]
      486 JUMPIFNOTEQKNIL                  R16 ; [+2]
      488 LOADB                            R43 0 +1
      489 LOADB                            R43 1
      490 SETTABLEKS                       R43 R42 K40 ["hasError"]
      492 SETTABLEKS                       R16 R42 K41 ["hint"]
      494 CALL                             R41 1 1
      495 GETUPVAL                         R42 2
      496 GETUPVAL                         R43 3
      497 DUPTABLE                         R44 K101 [{["LayoutOrder"] = 2, ["Size"] = , ["AutomaticSize"], ["tag"] = "fill auto-y"}]
      498 GETIMPORT                        R45 K95 [Enum.AutomaticSize.Y]
      500 SETTABLEKS                       R45 R44 K90 ["AutomaticSize"]
      502 MOVE                             R45 R41
      503 CALL                             R42 3 1
      504 MOVE                             R40 R42
      505 SETTABLEKS                       R40 R39 K125 ["Landscape"]
      507 GETUPVAL                         R40 2
      508 GETUPVAL                         R41 3
      509 DUPTABLE                         R42 K103 [{["tag"] = "row gap-small size-full-0 auto-y"}]
      510 MOVE                             R43 R39
      511 CALL                             R40 3 1
      512 MOVE                             R38 R40
      513 LOADN                            R39 1
      514 LOADK                            R40 K131 ["keyboard-height"]
      515 CALL                             R36 4 1
      516 SETTABLEKS                       R36 R35 K121 ["Heights"]
      518 CALL                             R32 3 -1
      519 CALL                             R28 -1 1
      520 SETTABLEKS                       R28 R27 K69 ["Keyboard"]
      522 CALL                             R24 3 1
      523 SETTABLEKS                       R24 R23 K31 ["Settings"]
      525 CALL                             R20 3 -1
      526 RETURN                           R20 -1

PROTO_42:
        0 GETIMPORT                        R1 K3 [Enum.Platform.IOS]
        2 JUMPIFEQ                         R0 R1 ; [+5]
        4 GETIMPORT                        R1 K5 [Enum.Platform.OSX]
        6 JUMPIFNOTEQ                      R0 R1 ; [+7]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K6 ["Icon"]
       11 GETTABLEKS                       R1 R1 K7 ["Apple"]
       13 RETURN                           R1 1
       14 GETIMPORT                        R1 K9 [Enum.Platform.Android]
       16 JUMPIFNOTEQ                      R0 R1 ; [+7]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K6 ["Icon"]
       21 GETTABLEKS                       R1 R1 K8 ["Android"]
       23 RETURN                           R1 1
       24 LOADNIL                          R1
       25 RETURN                           R1 1

PROTO_43:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R6 R6 K0 ["isHidden"]
        9 GETUPVAL                         R7 2
       10 GETTABLEKS                       R8 R5 K1 ["info"]
       12 GETTABLEKS                       R8 R8 K2 ["deviceId"]
       14 CALL                             R6 2 1
       15 JUMPIF                           R6 ; [+6]
       16 GETTABLEKS                       R6 R5 K1 ["info"]
       18 GETTABLEKS                       R6 R6 K2 ["deviceId"]
       20 LOADB                            R7 1
       21 SETTABLE                         R7 R0 R6
       22 FORGLOOP                         R1 2 ; [-17]
       24 RETURN                           R0 1

PROTO_44:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 0
        5 GETTABLE                         R2 R1 R3
        6 JUMPIFNOT                        R2 ; [+4]
        7 GETUPVAL                         R2 0
        8 LOADNIL                          R3
        9 SETTABLE                         R3 R1 R2
       10 RETURN                           R1 1
       11 GETUPVAL                         R2 0
       12 LOADB                            R3 1
       13 SETTABLE                         R3 R1 R2
       14 RETURN                           R1 1

PROTO_45:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_48:
        0 GETTABLEKS                       R2 R0 K0 ["info"]
        2 GETTABLEKS                       R2 R2 K1 ["deviceId"]
        4 GETUPVAL                         R5 0
        5 GETTABLE                         R4 R5 R2
        6 JUMPIFEQKB                       R4 TRUE ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 GETTABLEKS                       R5 R0 K0 ["info"]
       12 GETTABLEKS                       R5 R5 K2 ["platform"]
       14 GETIMPORT                        R6 K6 [Enum.Platform.IOS]
       16 JUMPIFEQ                         R5 R6 ; [+5]
       18 GETIMPORT                        R6 K8 [Enum.Platform.OSX]
       20 JUMPIFNOTEQ                      R5 R6 ; [+7]
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K9 ["Icon"]
       25 GETTABLEKS                       R4 R4 K10 ["Apple"]
       27 JUMP                             ; [+11]
       28 GETIMPORT                        R6 K12 [Enum.Platform.Android]
       30 JUMPIFNOTEQ                      R5 R6 ; [+7]
       32 GETUPVAL                         R4 1
       33 GETTABLEKS                       R4 R4 K9 ["Icon"]
       35 GETTABLEKS                       R4 R4 K11 ["Android"]
       37 JUMP                             ; [+1]
       38 LOADNIL                          R4
       39 GETUPVAL                         R5 2
       40 GETUPVAL                         R6 3
       41 DUPTABLE                         R7 K19 [{["LayoutOrder"], ["tag"] = "row gap-small align-y-center size-full-900 padding-x-small radius-small", ["onActivated"], ["selection"], ["testId"]}]
       42 SETTABLEKS                       R1 R7 K13 ["LayoutOrder"]
       44 NEWCLOSURE                       R8 P0
       45 CAPTURE                          VAL R2
       46 CAPTURE                          UPVAL U4
       47 SETTABLEKS                       R8 R7 K16 ["onActivated"]
       49 DUPTABLE                         R8 K22 [{["Selectable"] = True}]
       50 SETTABLEKS                       R8 R7 K17 ["selection"]
       52 LOADK                            R9 K23 ["add-device-%*"]
       53 MOVE                             R11 R2
       54 NAMECALL                         R9 R9 K24 ["format"]
       56 CALL                             R9 2 1
       57 MOVE                             R8 R9
       58 SETTABLEKS                       R8 R7 K18 ["testId"]
       60 DUPTABLE                         R8 K28 [{"Check", "OsIcon", "Label"}]
       61 GETUPVAL                         R9 2
       62 GETUPVAL                         R10 5
       63 DUPTABLE                         R11 K34 [{["LayoutOrder"] = 1, ["label"] = "", ["isChecked"], ["onActivated"], ["size"]}]
       64 SETTABLEKS                       R3 R11 K32 ["isChecked"]
       66 NEWCLOSURE                       R12 P1
       67 CAPTURE                          VAL R2
       68 CAPTURE                          UPVAL U4
       69 SETTABLEKS                       R12 R11 K16 ["onActivated"]
       71 GETUPVAL                         R12 6
       72 GETTABLEKS                       R12 R12 K35 ["Small"]
       74 SETTABLEKS                       R12 R11 K33 ["size"]
       76 CALL                             R9 2 1
       77 SETTABLEKS                       R9 R8 K25 ["Check"]
       79 JUMPIFNOT                        R4 ; [+12]
       80 GETUPVAL                         R9 2
       81 GETUPVAL                         R10 7
       82 DUPTABLE                         R11 K38 [{["LayoutOrder"] = 2, ["name"], ["size"]}]
       83 SETTABLEKS                       R4 R11 K37 ["name"]
       85 GETUPVAL                         R12 8
       86 GETTABLEKS                       R12 R12 K35 ["Small"]
       88 SETTABLEKS                       R12 R11 K33 ["size"]
       90 CALL                             R9 2 1
       91 JUMP                             ; [+1]
       92 LOADNIL                          R9
       93 SETTABLEKS                       R9 R8 K26 ["OsIcon"]
       95 GETUPVAL                         R9 2
       96 GETUPVAL                         R10 9
       97 DUPTABLE                         R11 K41 [{["LayoutOrder"] = 3, ["Text"], ["tag"]}]
       98 GETTABLEKS                       R12 R0 K0 ["info"]
      100 GETTABLEKS                       R12 R12 K42 ["deviceName"]
      102 SETTABLEKS                       R12 R11 K40 ["Text"]
      104 NEWTABLE                         R12 4 0
      106 LOADB                            R13 1
      107 SETTABLEKS                       R13 R12 K43 ["text-body-small text-align-x-left text-truncate-end fill size-0-full"]
      109 SETTABLEKS                       R3 R12 K44 ["content-emphasis"]
      111 NOT                              R13 R3
      112 SETTABLEKS                       R13 R12 K45 ["content-default"]
      114 SETTABLEKS                       R12 R11 K14 ["tag"]
      116 CALL                             R9 2 1
      117 SETTABLEKS                       R9 R8 K27 ["Label"]
      119 CALL                             R5 3 -1
      120 RETURN                           R5 -1

PROTO_49:
        0 LENGTH                           R3 R2
        1 JUMPIFNOTEQKN                    R3 K0 [0] ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R3 0
        5 ADDK                             R3 R3 K1 [1]
        6 SETUPVAL                         R3 0
        7 DUPTABLE                         R3 K3 [{"Header"}]
        8 GETUPVAL                         R4 1
        9 GETUPVAL                         R5 2
       10 DUPTABLE                         R6 K8 [{["LayoutOrder"] = 0, ["Text"], ["tag"] = "text-title-small text-align-x-left content-emphasis auto-y size-full-0 padding-x-small"}]
       11 SETTABLEKS                       R1 R6 K5 ["Text"]
       13 CALL                             R4 2 1
       14 SETTABLEKS                       R4 R3 K2 ["Header"]
       16 MOVE                             R4 R2
       17 LOADNIL                          R5
       18 LOADNIL                          R6
       19 FORGPREP                         R4
       20 LOADK                            R10 K9 ["row-%*"]
       21 GETTABLEKS                       R12 R8 K10 ["info"]
       23 GETTABLEKS                       R12 R12 K11 ["deviceId"]
       25 NAMECALL                         R10 R10 K12 ["format"]
       27 CALL                             R10 2 1
       28 MOVE                             R9 R10
       29 GETUPVAL                         R10 3
       30 MOVE                             R11 R8
       31 MOVE                             R12 R7
       32 CALL                             R10 2 1
       33 SETTABLE                         R10 R3 R9
       34 FORGLOOP                         R4 2 ; [-15]
       36 GETUPVAL                         R4 4
       37 LOADK                            R6 K13 ["section-%*"]
       38 MOVE                             R8 R0
       39 NAMECALL                         R6 R6 K12 ["format"]
       41 CALL                             R6 2 1
       42 MOVE                             R5 R6
       43 GETUPVAL                         R6 1
       44 GETUPVAL                         R7 5
       45 DUPTABLE                         R8 K15 [{["LayoutOrder"], ["tag"] = "col gap-small size-full-0 auto-y"}]
       46 GETUPVAL                         R9 0
       47 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       49 MOVE                             R9 R3
       50 CALL                             R6 3 1
       51 SETTABLE                         R6 R4 R5
       52 RETURN                           R0 0

PROTO_50:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETTABLEKS                       R6 R5 K0 ["info"]
        8 GETTABLEKS                       R6 R6 K1 ["deviceId"]
       10 LOADB                            R7 1
       11 SETTABLE                         R7 R0 R6
       12 FORGLOOP                         R1 2 ; [-7]
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R1 R1 K2 ["onUpdate"]
       17 GETUPVAL                         R2 2
       18 MOVE                             R3 R0
       19 CALL                             R1 2 0
       20 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["state"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["standardDevicesForTab"]
        7 MOVE                             R4 R2
        8 CALL                             R3 1 1
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K2 ["useState"]
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          VAL R3
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          VAL R2
       16 CALL                             R4 1 2
       17 NEWCLOSURE                       R6 P1
       18 CAPTURE                          VAL R5
       19 NEWCLOSURE                       R7 P2
       20 CAPTURE                          VAL R4
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          UPVAL U5
       24 CAPTURE                          VAL R5
       25 CAPTURE                          UPVAL U6
       26 CAPTURE                          UPVAL U7
       27 CAPTURE                          UPVAL U8
       28 CAPTURE                          UPVAL U9
       29 CAPTURE                          UPVAL U10
       30 NEWTABLE                         R8 0 0
       32 NEWTABLE                         R9 0 0
       34 MOVE                             R10 R3
       35 LOADNIL                          R11
       36 LOADNIL                          R12
       37 FORGPREP                         R10
       38 GETTABLEKS                       R15 R14 K3 ["info"]
       40 GETTABLEKS                       R15 R15 K4 ["tier"]
       42 LOADB                            R16 0
       43 GETUPVAL                         R17 11
       44 LOADNIL                          R18
       45 LOADNIL                          R19
       46 FORGPREP                         R17
       47 GETTABLEKS                       R22 R21 K4 ["tier"]
       49 JUMPIFNOTEQ                      R22 R15 ; [+3]
       51 LOADB                            R16 1
       52 JUMP                             ; [+2]
       53 FORGLOOP                         R17 2 ; [-7]
       55 JUMPIFNOT                        R16 ; [+13]
       56 GETTABLE                         R17 R8 R15
       57 JUMPIF                           R17 ; [+3]
       58 NEWTABLE                         R17 0 0
       60 SETTABLE                         R17 R8 R15
       61 GETTABLE                         R18 R8 R15
       62 FASTCALL2                        TABLE_INSERT R18 R14 ; [+4]
       64 MOVE                             R19 R14
       65 GETIMPORT                        R17 K7 [table.insert]
       67 CALL                             R17 2 0
       68 JUMP                             ; [+7]
       69 FASTCALL2                        TABLE_INSERT R9 R14 ; [+5]
       71 MOVE                             R18 R9
       72 MOVE                             R19 R14
       73 GETIMPORT                        R17 K7 [table.insert]
       75 CALL                             R17 2 0
       76 FORGLOOP                         R10 2 ; [-39]
       78 NEWTABLE                         R10 0 0
       80 LOADN                            R11 0
       81 NEWCLOSURE                       R12 P3
       82 CAPTURE                          REF R11
       83 CAPTURE                          UPVAL U4
       84 CAPTURE                          UPVAL U10
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R10
       87 CAPTURE                          UPVAL U5
       88 GETUPVAL                         R13 11
       89 LOADNIL                          R14
       90 LOADNIL                          R15
       91 FORGPREP                         R13
       92 MOVE                             R18 R12
       93 GETTABLEKS                       R19 R17 K4 ["tier"]
       95 LOADK                            R22 K8 ["DeviceMenu"]
       96 GETTABLEKS                       R23 R17 K9 ["key"]
       98 NAMECALL                         R20 R1 K10 ["getText"]
      100 CALL                             R20 3 1
      101 GETTABLEKS                       R22 R17 K4 ["tier"]
      103 GETTABLE                         R21 R8 R22
      104 JUMPIF                           R21 ; [+2]
      105 NEWTABLE                         R21 0 0
      107 CALL                             R18 3 0
      108 FORGLOOP                         R13 2 ; [-17]
      110 MOVE                             R13 R12
      111 LOADK                            R14 K11 ["other"]
      112 LOADK                            R17 K8 ["DeviceMenu"]
      113 LOADK                            R18 K12 ["Other"]
      114 NAMECALL                         R15 R1 K10 ["getText"]
      116 CALL                             R15 3 1
      117 MOVE                             R16 R9
      118 CALL                             R13 3 0
      119 NEWCLOSURE                       R13 P4
      120 CAPTURE                          VAL R3
      121 CAPTURE                          VAL R0
      122 CAPTURE                          VAL R4
      123 GETUPVAL                         R14 4
      124 GETUPVAL                         R15 12
      125 DUPTABLE                         R16 K23 [{["uri"], ["type"] = "Default", ["width"] = 480, ["isContentFullBleed"] = True, ["primaryAction"], ["secondaryAction"], ["escapeAction"]}]
      126 GETUPVAL                         R17 13
      127 SETTABLEKS                       R17 R16 K13 ["uri"]
      129 DUPTABLE                         R17 K26 [{"uri", "text", "onActivated"}]
      130 GETUPVAL                         R18 14
      131 GETTABLEKS                       R18 R18 K27 ["child"]
      133 GETUPVAL                         R19 13
      134 LOADK                            R20 K28 ["Update"]
      135 CALL                             R18 2 1
      136 SETTABLEKS                       R18 R17 K13 ["uri"]
      138 LOADK                            R20 K29 ["DeviceManager"]
      139 LOADK                            R21 K28 ["Update"]
      140 NAMECALL                         R18 R1 K10 ["getText"]
      142 CALL                             R18 3 1
      143 SETTABLEKS                       R18 R17 K24 ["text"]
      145 SETTABLEKS                       R13 R17 K25 ["onActivated"]
      147 SETTABLEKS                       R17 R16 K20 ["primaryAction"]
      149 DUPTABLE                         R17 K26 [{"uri", "text", "onActivated"}]
      150 GETUPVAL                         R18 14
      151 GETTABLEKS                       R18 R18 K27 ["child"]
      153 GETUPVAL                         R19 13
      154 LOADK                            R20 K30 ["Cancel"]
      155 CALL                             R18 2 1
      156 SETTABLEKS                       R18 R17 K13 ["uri"]
      158 LOADK                            R20 K31 ["Common"]
      159 LOADK                            R21 K30 ["Cancel"]
      160 NAMECALL                         R18 R1 K10 ["getText"]
      162 CALL                             R18 3 1
      163 SETTABLEKS                       R18 R17 K24 ["text"]
      165 GETTABLEKS                       R18 R0 K32 ["onCancel"]
      167 SETTABLEKS                       R18 R17 K25 ["onActivated"]
      169 SETTABLEKS                       R17 R16 K21 ["secondaryAction"]
      171 DUPTABLE                         R17 K34 [{"uri", "onClose"}]
      172 GETUPVAL                         R18 14
      173 GETTABLEKS                       R18 R18 K27 ["child"]
      175 GETUPVAL                         R19 13
      176 LOADK                            R20 K35 ["Close"]
      177 CALL                             R18 2 1
      178 SETTABLEKS                       R18 R17 K13 ["uri"]
      180 GETTABLEKS                       R18 R0 K32 ["onCancel"]
      182 SETTABLEKS                       R18 R17 K33 ["onClose"]
      184 SETTABLEKS                       R17 R16 K22 ["escapeAction"]
      186 DUPTABLE                         R17 K37 [{"Content"}]
      187 GETUPVAL                         R18 4
      188 GETUPVAL                         R19 5
      189 DUPTABLE                         R20 K40 [{["tag"] = "col gap-medium padding-large size-full-0 auto-y"}]
      190 DUPTABLE                         R21 K43 [{"Heading", "List"}]
      191 GETUPVAL                         R22 4
      192 GETUPVAL                         R23 5
      193 DUPTABLE                         R24 K47 [{["LayoutOrder"] = 1, ["tag"] = "col gap-xsmall size-full-0 auto-y"}]
      194 DUPTABLE                         R25 K50 [{"Title", "Subtitle"}]
      195 GETUPVAL                         R26 4
      196 GETUPVAL                         R27 10
      197 DUPTABLE                         R28 K53 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "text-title-large text-align-x-left content-emphasis auto-y size-full-0"}]
      198 LOADK                            R31 K29 ["DeviceManager"]
      199 LOADK                            R32 K54 ["AddDevices"]
      200 NAMECALL                         R29 R1 K10 ["getText"]
      202 CALL                             R29 3 1
      203 SETTABLEKS                       R29 R28 K51 ["Text"]
      205 CALL                             R26 2 1
      206 SETTABLEKS                       R26 R25 K48 ["Title"]
      208 GETUPVAL                         R26 4
      209 GETUPVAL                         R27 10
      210 DUPTABLE                         R28 K57 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "text-body-small text-align-x-left content-muted auto-y size-full-0"}]
      211 LOADK                            R31 K29 ["DeviceManager"]
      212 LOADK                            R32 K58 ["SelectDevices"]
      213 NAMECALL                         R29 R1 K10 ["getText"]
      215 CALL                             R29 3 1
      216 SETTABLEKS                       R29 R28 K51 ["Text"]
      218 CALL                             R26 2 1
      219 SETTABLEKS                       R26 R25 K49 ["Subtitle"]
      221 CALL                             R22 3 1
      222 SETTABLEKS                       R22 R21 K41 ["Heading"]
      224 GETUPVAL                         R22 4
      225 GETUPVAL                         R23 15
      226 DUPTABLE                         R24 K64 [{["LayoutOrder"] = 2, ["Size"], ["layout"], ["scroll"], ["testId"] = "add-devices-scroll"}]
      227 GETIMPORT                        R25 K67 [UDim2.new]
      229 LOADN                            R26 1
      230 LOADN                            R27 0
      231 LOADN                            R28 0
      232 LOADN                            R29 320
      233 CALL                             R25 4 1
      234 SETTABLEKS                       R25 R24 K59 ["Size"]
      236 DUPTABLE                         R25 K69 [{"FillDirection"}]
      237 GETIMPORT                        R26 K72 [Enum.FillDirection.Vertical]
      239 SETTABLEKS                       R26 R25 K68 ["FillDirection"]
      241 SETTABLEKS                       R25 R24 K60 ["layout"]
      243 DUPTABLE                         R25 K76 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      244 GETIMPORT                        R26 K79 [Enum.AutomaticSize.Y]
      246 SETTABLEKS                       R26 R25 K73 ["AutomaticCanvasSize"]
      248 GETIMPORT                        R26 K81 [UDim2.fromOffset]
      250 LOADN                            R27 0
      251 LOADN                            R28 0
      252 CALL                             R26 2 1
      253 SETTABLEKS                       R26 R25 K74 ["CanvasSize"]
      255 GETIMPORT                        R26 K82 [Enum.ScrollingDirection.Y]
      257 SETTABLEKS                       R26 R25 K75 ["ScrollingDirection"]
      259 SETTABLEKS                       R25 R24 K61 ["scroll"]
      261 DUPTABLE                         R25 K84 [{"Inner"}]
      262 GETUPVAL                         R26 4
      263 GETUPVAL                         R27 5
      264 DUPTABLE                         R28 K86 [{["tag"] = "col gap-medium size-full-0 auto-y"}]
      265 MOVE                             R29 R10
      266 CALL                             R26 3 1
      267 SETTABLEKS                       R26 R25 K83 ["Inner"]
      269 CALL                             R22 3 1
      270 SETTABLEKS                       R22 R21 K42 ["List"]
      272 CALL                             R18 3 1
      273 SETTABLEKS                       R18 R17 K36 ["Content"]
      275 CALL                             R14 3 -1
      276 CLOSEUPVALS                      R11
      277 RETURN                           R14 -1

PROTO_52:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createState"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["input"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_53:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onResolved"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_54:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onResolved"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["getOutput"]
        6 GETUPVAL                         R2 2
        7 CALL                             R1 1 -1
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_55:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["cloneSelected"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_56:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 MOVE                             R2 R0
        5 NEWCLOSURE                       R3 P1
        6 CAPTURE                          VAL R1
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_57:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["selectTab"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_58:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 MOVE                             R3 R1
        5 NEWCLOSURE                       R4 P1
        6 CAPTURE                          VAL R2
        7 CALL                             R3 1 0
        8 RETURN                           R0 0

PROTO_59:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_60:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_61:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setStandardVisibility"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R4 2
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_62:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 MOVE                             R4 R2
        6 NEWCLOSURE                       R5 P1
        7 CAPTURE                          VAL R3
        8 CALL                             R4 1 0
        9 GETUPVAL                         R2 2
       10 LOADB                            R3 0
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_63:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R3 R0 K0 ["hasInternalPermission"]
        4 JUMPIFEQKNIL                     R3 ; [+4]
        6 GETTABLEKS                       R2 R0 K0 ["hasInternalPermission"]
        8 JUMP                             ; [+4]
        9 GETUPVAL                         R2 1
       10 NAMECALL                         R2 R2 K1 ["HasInternalPermission"]
       12 CALL                             R2 1 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K2 ["useState"]
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          VAL R0
       19 CALL                             R3 1 2
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R5 R5 K2 ["useState"]
       23 DUPTABLE                         R6 K8 [{["display"] = True, ["performance"] = True, ["keyboard"] = False}]
       24 CALL                             R5 1 2
       25 GETUPVAL                         R7 2
       26 GETTABLEKS                       R7 R7 K2 ["useState"]
       28 LOADB                            R8 0
       29 CALL                             R7 1 2
       30 GETUPVAL                         R9 3
       31 GETTABLEKS                       R9 R9 K9 ["validate"]
       33 MOVE                             R10 R3
       34 MOVE                             R11 R1
       35 CALL                             R9 2 1
       36 MOVE                             R10 R9
       37 JUMPIFNOT                        R10 ; [+5]
       38 GETUPVAL                         R10 3
       39 GETTABLEKS                       R10 R10 K10 ["isDirty"]
       41 MOVE                             R11 R3
       42 CALL                             R10 1 1
       43 GETUPVAL                         R11 3
       44 GETTABLEKS                       R11 R11 K11 ["getSelected"]
       46 MOVE                             R12 R3
       47 CALL                             R11 1 1
       48 NEWCLOSURE                       R12 P1
       49 CAPTURE                          VAL R0
       50 NEWCLOSURE                       R13 P2
       51 CAPTURE                          VAL R0
       52 CAPTURE                          UPVAL U3
       53 CAPTURE                          VAL R3
       54 NEWCLOSURE                       R14 P3
       55 CAPTURE                          VAL R4
       56 CAPTURE                          UPVAL U3
       57 CAPTURE                          VAL R1
       58 GETUPVAL                         R15 4
       59 GETUPVAL                         R16 5
       60 DUPTABLE                         R17 K23 [{["uri"], ["type"] = "Default", ["width"] = 650, ["isContentFullBleed"] = True, ["tertiaryActionVariant"], ["primaryAction"], ["secondaryAction"], ["tertiaryAction"], ["escapeAction"]}]
       61 GETUPVAL                         R18 6
       62 SETTABLEKS                       R18 R17 K12 ["uri"]
       64 GETUPVAL                         R18 7
       65 GETTABLEKS                       R18 R18 K24 ["Enums"]
       67 GETTABLEKS                       R18 R18 K25 ["ButtonVariant"]
       69 GETTABLEKS                       R18 R18 K26 ["Utility"]
       71 SETTABLEKS                       R18 R17 K18 ["tertiaryActionVariant"]
       73 DUPTABLE                         R18 K30 [{"uri", "text", "disabled", "onActivated"}]
       74 GETUPVAL                         R19 8
       75 GETTABLEKS                       R19 R19 K31 ["child"]
       77 GETUPVAL                         R20 6
       78 LOADK                            R21 K32 ["Apply"]
       79 CALL                             R19 2 1
       80 SETTABLEKS                       R19 R18 K12 ["uri"]
       82 LOADK                            R21 K33 ["DeviceManager"]
       83 LOADK                            R22 K32 ["Apply"]
       84 NAMECALL                         R19 R1 K34 ["getText"]
       86 CALL                             R19 3 1
       87 SETTABLEKS                       R19 R18 K27 ["text"]
       89 NOT                              R19 R10
       90 SETTABLEKS                       R19 R18 K28 ["disabled"]
       92 SETTABLEKS                       R13 R18 K29 ["onActivated"]
       94 SETTABLEKS                       R18 R17 K19 ["primaryAction"]
       96 DUPTABLE                         R18 K35 [{"uri", "text", "onActivated"}]
       97 GETUPVAL                         R19 8
       98 GETTABLEKS                       R19 R19 K31 ["child"]
      100 GETUPVAL                         R20 6
      101 LOADK                            R21 K36 ["Cancel"]
      102 CALL                             R19 2 1
      103 SETTABLEKS                       R19 R18 K12 ["uri"]
      105 LOADK                            R21 K37 ["Common"]
      106 LOADK                            R22 K36 ["Cancel"]
      107 NAMECALL                         R19 R1 K34 ["getText"]
      109 CALL                             R19 3 1
      110 SETTABLEKS                       R19 R18 K27 ["text"]
      112 SETTABLEKS                       R12 R18 K29 ["onActivated"]
      114 SETTABLEKS                       R18 R17 K20 ["secondaryAction"]
      116 JUMPIFNOT                        R11 ; [+24]
      117 GETTABLEKS                       R19 R11 K38 ["info"]
      119 GETTABLEKS                       R19 R19 K39 ["isCustom"]
      121 JUMPIF                           R19 ; [+19]
      122 DUPTABLE                         R18 K35 [{"uri", "text", "onActivated"}]
      123 GETUPVAL                         R19 8
      124 GETTABLEKS                       R19 R19 K31 ["child"]
      126 GETUPVAL                         R20 6
      127 LOADK                            R21 K40 ["SaveAsCustom"]
      128 CALL                             R19 2 1
      129 SETTABLEKS                       R19 R18 K12 ["uri"]
      131 LOADK                            R21 K33 ["DeviceManager"]
      132 LOADK                            R22 K41 ["Duplicate"]
      133 NAMECALL                         R19 R1 K34 ["getText"]
      135 CALL                             R19 3 1
      136 SETTABLEKS                       R19 R18 K27 ["text"]
      138 SETTABLEKS                       R14 R18 K29 ["onActivated"]
      140 JUMP                             ; [+1]
      141 LOADNIL                          R18
      142 SETTABLEKS                       R18 R17 K21 ["tertiaryAction"]
      144 DUPTABLE                         R18 K43 [{"uri", "onClose"}]
      145 GETUPVAL                         R19 8
      146 GETTABLEKS                       R19 R19 K31 ["child"]
      148 GETUPVAL                         R20 6
      149 LOADK                            R21 K44 ["Close"]
      150 CALL                             R19 2 1
      151 SETTABLEKS                       R19 R18 K12 ["uri"]
      153 SETTABLEKS                       R12 R18 K42 ["onClose"]
      155 SETTABLEKS                       R18 R17 K22 ["escapeAction"]
      157 DUPTABLE                         R18 K47 [{"Content", "AddDevices"}]
      158 GETUPVAL                         R19 4
      159 GETUPVAL                         R20 9
      160 DUPTABLE                         R21 K50 [{["tag"] = "col size-full-0 auto-y"}]
      161 DUPTABLE                         R22 K53 [{"Tabs", "Body"}]
      162 GETUPVAL                         R23 4
      163 GETUPVAL                         R24 10
      164 DUPTABLE                         R25 K57 [{["LayoutOrder"] = 1, ["activeTab"], ["onActivated"]}]
      165 GETTABLEKS                       R26 R3 K56 ["activeTab"]
      167 SETTABLEKS                       R26 R25 K56 ["activeTab"]
      169 NEWCLOSURE                       R26 P4
      170 CAPTURE                          VAL R4
      171 CAPTURE                          UPVAL U3
      172 SETTABLEKS                       R26 R25 K29 ["onActivated"]
      174 CALL                             R23 2 1
      175 SETTABLEKS                       R23 R22 K51 ["Tabs"]
      177 GETUPVAL                         R23 4
      178 GETUPVAL                         R24 9
      179 DUPTABLE                         R25 K63 [{["LayoutOrder"] = 2, ["tag"] = "row size-full-0", ["Size"], ["testId"] = "device-manager-body"}]
      180 GETIMPORT                        R26 K66 [UDim2.new]
      182 LOADN                            R27 1
      183 LOADN                            R28 0
      184 LOADN                            R29 0
      185 LOADN                            R30 420
      186 CALL                             R26 4 1
      187 SETTABLEKS                       R26 R25 K60 ["Size"]
      189 DUPTABLE                         R26 K70 [{"Rail", "Divider", "Details"}]
      190 GETUPVAL                         R27 4
      191 GETUPVAL                         R28 11
      192 DUPTABLE                         R29 K74 [{["LayoutOrder"] = 1, ["Size"], ["layout"], ["scroll"], ["testId"] = "device-list-scroll"}]
      193 GETIMPORT                        R30 K66 [UDim2.new]
      195 LOADN                            R31 0
      196 LOADN                            R32 240
      197 LOADN                            R33 1
      198 LOADN                            R34 0
      199 CALL                             R30 4 1
      200 SETTABLEKS                       R30 R29 K60 ["Size"]
      202 DUPTABLE                         R30 K76 [{"FillDirection"}]
      203 GETIMPORT                        R31 K79 [Enum.FillDirection.Vertical]
      205 SETTABLEKS                       R31 R30 K75 ["FillDirection"]
      207 SETTABLEKS                       R30 R29 K71 ["layout"]
      209 DUPTABLE                         R30 K83 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      210 GETIMPORT                        R31 K86 [Enum.AutomaticSize.Y]
      212 SETTABLEKS                       R31 R30 K80 ["AutomaticCanvasSize"]
      214 GETIMPORT                        R31 K88 [UDim2.fromOffset]
      216 LOADN                            R32 0
      217 LOADN                            R33 0
      218 CALL                             R31 2 1
      219 SETTABLEKS                       R31 R30 K81 ["CanvasSize"]
      221 GETIMPORT                        R31 K89 [Enum.ScrollingDirection.Y]
      223 SETTABLEKS                       R31 R30 K82 ["ScrollingDirection"]
      225 SETTABLEKS                       R30 R29 K72 ["scroll"]
      227 DUPTABLE                         R30 K91 [{"DeviceList"}]
      228 GETUPVAL                         R31 4
      229 GETUPVAL                         R32 12
      230 DUPTABLE                         R33 K95 [{"state", "setState", "onAddDevices"}]
      231 SETTABLEKS                       R3 R33 K92 ["state"]
      233 SETTABLEKS                       R4 R33 K93 ["setState"]
      235 GETUPVAL                         R35 13
      236 GETTABLEKS                       R35 R35 K96 ["getFFlagEnableDeviceSimulatorDeviceVisibility"]
      238 CALL                             R35 0 1
      239 JUMPIFNOT                        R35 ; [+3]
      240 NEWCLOSURE                       R34 P5
      241 CAPTURE                          VAL R8
      242 JUMP                             ; [+1]
      243 LOADNIL                          R34
      244 SETTABLEKS                       R34 R33 K94 ["onAddDevices"]
      246 CALL                             R31 2 1
      247 SETTABLEKS                       R31 R30 K90 ["DeviceList"]
      249 CALL                             R27 3 1
      250 SETTABLEKS                       R27 R26 K67 ["Rail"]
      252 GETUPVAL                         R27 4
      253 GETUPVAL                         R28 7
      254 GETTABLEKS                       R28 R28 K68 ["Divider"]
      256 DUPTABLE                         R29 K98 [{["LayoutOrder"] = 2, ["orientation"]}]
      257 GETUPVAL                         R30 7
      258 GETTABLEKS                       R30 R30 K24 ["Enums"]
      260 GETTABLEKS                       R30 R30 K99 ["Orientation"]
      262 GETTABLEKS                       R30 R30 K78 ["Vertical"]
      264 SETTABLEKS                       R30 R29 K97 ["orientation"]
      266 CALL                             R27 2 1
      267 SETTABLEKS                       R27 R26 K68 ["Divider"]
      269 GETUPVAL                         R27 4
      270 GETUPVAL                         R28 11
      271 DUPTABLE                         R29 K103 [{["LayoutOrder"] = 3, ["Size"], ["flexItem"], ["layout"], ["scroll"], ["testId"] = "device-details-scroll"}]
      272 GETIMPORT                        R30 K105 [UDim2.fromScale]
      274 LOADN                            R31 0
      275 LOADN                            R32 1
      276 CALL                             R30 2 1
      277 SETTABLEKS                       R30 R29 K60 ["Size"]
      279 DUPTABLE                         R30 K109 [{["FlexMode"], ["GrowRatio"] = 1, ["ShrinkRatio"] = 1}]
      280 GETIMPORT                        R31 K112 [Enum.UIFlexMode.Fill]
      282 SETTABLEKS                       R31 R30 K106 ["FlexMode"]
      284 SETTABLEKS                       R30 R29 K101 ["flexItem"]
      286 DUPTABLE                         R30 K76 [{"FillDirection"}]
      287 GETIMPORT                        R31 K79 [Enum.FillDirection.Vertical]
      289 SETTABLEKS                       R31 R30 K75 ["FillDirection"]
      291 SETTABLEKS                       R30 R29 K71 ["layout"]
      293 DUPTABLE                         R30 K83 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      294 GETIMPORT                        R31 K86 [Enum.AutomaticSize.Y]
      296 SETTABLEKS                       R31 R30 K80 ["AutomaticCanvasSize"]
      298 GETIMPORT                        R31 K88 [UDim2.fromOffset]
      300 LOADN                            R32 0
      301 LOADN                            R33 0
      302 CALL                             R31 2 1
      303 SETTABLEKS                       R31 R30 K81 ["CanvasSize"]
      305 GETIMPORT                        R31 K89 [Enum.ScrollingDirection.Y]
      307 SETTABLEKS                       R31 R30 K82 ["ScrollingDirection"]
      309 SETTABLEKS                       R30 R29 K72 ["scroll"]
      311 DUPTABLE                         R30 K114 [{"DeviceDetails"}]
      312 GETUPVAL                         R31 4
      313 GETUPVAL                         R32 14
      314 DUPTABLE                         R33 K117 [{"state", "setState", "expanded", "setExpanded", "hasInternalPermission"}]
      315 SETTABLEKS                       R3 R33 K92 ["state"]
      317 SETTABLEKS                       R4 R33 K93 ["setState"]
      319 SETTABLEKS                       R5 R33 K115 ["expanded"]
      321 SETTABLEKS                       R6 R33 K116 ["setExpanded"]
      323 SETTABLEKS                       R2 R33 K0 ["hasInternalPermission"]
      325 CALL                             R31 2 1
      326 SETTABLEKS                       R31 R30 K113 ["DeviceDetails"]
      328 CALL                             R27 3 1
      329 SETTABLEKS                       R27 R26 K69 ["Details"]
      331 CALL                             R23 3 1
      332 SETTABLEKS                       R23 R22 K52 ["Body"]
      334 CALL                             R19 3 1
      335 SETTABLEKS                       R19 R18 K45 ["Content"]
      337 JUMPIFNOT                        R7 ; [+17]
      338 GETUPVAL                         R19 4
      339 GETUPVAL                         R20 15
      340 DUPTABLE                         R21 K120 [{"state", "onCancel", "onUpdate"}]
      341 SETTABLEKS                       R3 R21 K92 ["state"]
      343 NEWCLOSURE                       R22 P6
      344 CAPTURE                          VAL R8
      345 SETTABLEKS                       R22 R21 K118 ["onCancel"]
      347 NEWCLOSURE                       R22 P7
      348 CAPTURE                          VAL R4
      349 CAPTURE                          UPVAL U3
      350 CAPTURE                          VAL R8
      351 SETTABLEKS                       R22 R21 K119 ["onUpdate"]
      353 CALL                             R19 2 1
      354 JUMP                             ; [+1]
      355 LOADNIL                          R19
      356 SETTABLEKS                       R19 R18 K46 ["AddDevices"]
      358 CALL                             R15 3 -1
      359 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DeviceSimulatorToolbar"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["StudioService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Bin"]
       17 GETTABLEKS                       R3 R3 K11 ["Common"]
       19 GETTABLEKS                       R3 R3 K12 ["defineLuaFlags"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R0 K13 ["Packages"]
       26 GETTABLEKS                       R4 R4 K14 ["BuilderIcons"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R0 K15 ["Src"]
       33 GETTABLEKS                       R5 R5 K16 ["DeviceConstants"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETIMPORT                        R6 K1 [script]
       40 GETTABLEKS                       R6 R6 K17 ["Parent"]
       42 GETTABLEKS                       R6 R6 K18 ["DeviceManagerModel"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R7 R0 K13 ["Packages"]
       49 GETTABLEKS                       R7 R7 K19 ["Foundation"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K9 [require]
       54 GETTABLEKS                       R8 R0 K13 ["Packages"]
       56 GETTABLEKS                       R8 R8 K20 ["React"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K9 [require]
       61 GETTABLEKS                       R9 R0 K13 ["Packages"]
       63 GETTABLEKS                       R9 R9 K21 ["StudioFoundation"]
       65 CALL                             R8 1 1
       66 GETTABLEKS                       R9 R8 K22 ["Components"]
       68 GETTABLEKS                       R9 R9 K23 ["Dialog"]
       70 GETTABLEKS                       R10 R6 K24 ["Checkbox"]
       72 GETTABLEKS                       R11 R6 K25 ["Dropdown"]
       74 GETTABLEKS                       R12 R6 K26 ["Icon"]
       76 GETTABLEKS                       R13 R6 K27 ["IconButton"]
       78 GETTABLEKS                       R14 R6 K28 ["Enums"]
       80 GETTABLEKS                       R14 R14 K29 ["IconSize"]
       82 GETTABLEKS                       R15 R6 K28 ["Enums"]
       84 GETTABLEKS                       R15 R15 K30 ["InputSize"]
       86 GETTABLEKS                       R16 R6 K28 ["Enums"]
       88 GETTABLEKS                       R16 R16 K31 ["InputVariant"]
       90 GETTABLEKS                       R17 R6 K28 ["Enums"]
       92 GETTABLEKS                       R17 R17 K32 ["NumberInputControlsVariant"]
       94 GETTABLEKS                       R18 R6 K33 ["NumberInput"]
       96 GETTABLEKS                       R19 R6 K34 ["ScrollView"]
       98 GETTABLEKS                       R20 R8 K35 ["Util"]
      100 GETTABLEKS                       R20 R20 K36 ["StudioUri"]
      102 GETTABLEKS                       R21 R6 K37 ["Text"]
      104 GETTABLEKS                       R22 R6 K38 ["TextInput"]
      106 GETTABLEKS                       R23 R6 K39 ["View"]
      108 GETTABLEKS                       R24 R7 K40 ["createElement"]
      110 GETIMPORT                        R25 K9 [require]
      112 GETTABLEKS                       R26 R0 K15 ["Src"]
      114 GETTABLEKS                       R26 R26 K41 ["Hooks"]
      116 GETTABLEKS                       R26 R26 K42 ["useLocalization"]
      118 CALL                             R25 1 1
      119 GETTABLEKS                       R26 R20 K43 ["fromWidget"]
      121 LOADK                            R27 K2 ["DeviceSimulatorToolbar"]
      122 LOADK                            R28 K44 ["DeviceManagerDialog"]
      123 CALL                             R26 2 1
      124 GETTABLEKS                       R27 R20 K43 ["fromWidget"]
      126 LOADK                            R28 K2 ["DeviceSimulatorToolbar"]
      127 LOADK                            R29 K45 ["AddDevicesDialog"]
      128 CALL                             R27 2 1
      129 NEWTABLE                         R28 0 4
      131 LOADK                            R29 K46 ["mobile"]
      132 LOADK                            R30 K47 ["desktop"]
      133 LOADK                            R31 K48 ["console"]
      134 LOADK                            R32 K49 ["headset"]
      135 SETLIST                          R28 R29 4 [1]
      137 DUPTABLE                         R29 K54 [{["mobile"] = "Mobile", ["desktop"] = "Desktop", ["console"] = "Console", ["headset"] = "Headset"}]
      138 DUPTABLE                         R30 K55 [{"mobile", "desktop", "console", "headset"}]
      139 GETTABLEKS                       R31 R3 K26 ["Icon"]
      141 GETTABLEKS                       R31 R31 K56 ["SmartphonePortrait"]
      143 SETTABLEKS                       R31 R30 K46 ["mobile"]
      145 GETTABLEKS                       R31 R3 K26 ["Icon"]
      147 GETTABLEKS                       R31 R31 K57 ["PictureInPicture"]
      149 SETTABLEKS                       R31 R30 K47 ["desktop"]
      151 GETTABLEKS                       R31 R3 K26 ["Icon"]
      153 GETTABLEKS                       R31 R31 K58 ["Controller"]
      155 SETTABLEKS                       R31 R30 K48 ["console"]
      157 GETTABLEKS                       R31 R3 K26 ["Icon"]
      159 GETTABLEKS                       R31 R31 K59 ["XrHeadset"]
      161 SETTABLEKS                       R31 R30 K49 ["headset"]
      163 DUPTABLE                         R31 K76 [{["IOS"] = "iOS", ["OSX"] = "macOS", ["XBox360"] = "Xbox 360", ["XBoxOne"] = "Xbox One", ["PS3"] = "PlayStation 3", ["PS4"] = "PlayStation 4", ["PS5"] = "PlayStation 5", ["MetaOS"] = "Meta OS"}]
      164 NEWTABLE                         R32 0 0
      166 GETIMPORT                        R33 K79 [Enum.Platform]
      168 NAMECALL                         R33 R33 K80 ["GetEnumItems"]
      170 CALL                             R33 1 3
      171 FORGPREP                         R33
      172 DUPTABLE                         R40 K83 [{"id", "text"}]
      173 GETTABLEKS                       R41 R37 K84 ["Value"]
      175 SETTABLEKS                       R41 R40 K81 ["id"]
      177 GETTABLEKS                       R42 R37 K85 ["Name"]
      179 GETTABLE                         R41 R31 R42
      180 JUMPIF                           R41 ; [+2]
      181 GETTABLEKS                       R41 R37 K85 ["Name"]
      183 SETTABLEKS                       R41 R40 K82 ["text"]
      185 FASTCALL2                        TABLE_INSERT R32 R40 ; [+4]
      187 MOVE                             R39 R32
      188 GETIMPORT                        R38 K88 [table.insert]
      190 CALL                             R38 2 0
      191 FORGLOOP                         R33 2 ; [-20]
      193 GETIMPORT                        R33 K90 [table.sort]
      195 MOVE                             R34 R32
      196 DUPCLOSURE                       R35 K91 [PROTO_0]
      197 CALL                             R33 2 0
      198 DUPCLOSURE                       R33 K92 [PROTO_2]
      199 DUPCLOSURE                       R34 K93 [PROTO_4]
      200 CAPTURE                          VAL R24
      201 CAPTURE                          VAL R18
      202 CAPTURE                          VAL R17
      203 CAPTURE                          VAL R16
      204 CAPTURE                          VAL R15
      205 DUPCLOSURE                       R35 K94 [PROTO_5]
      206 CAPTURE                          VAL R24
      207 CAPTURE                          VAL R23
      208 CAPTURE                          VAL R21
      209 DUPCLOSURE                       R36 K95 [PROTO_6]
      210 CAPTURE                          VAL R24
      211 CAPTURE                          VAL R23
      212 DUPCLOSURE                       R37 K96 [PROTO_7]
      213 CAPTURE                          VAL R24
      214 CAPTURE                          VAL R23
      215 DUPCLOSURE                       R38 K97 [PROTO_9]
      216 CAPTURE                          VAL R25
      217 CAPTURE                          VAL R6
      218 CAPTURE                          VAL R28
      219 CAPTURE                          VAL R24
      220 CAPTURE                          VAL R23
      221 CAPTURE                          VAL R12
      222 CAPTURE                          VAL R30
      223 CAPTURE                          VAL R14
      224 CAPTURE                          VAL R21
      225 CAPTURE                          VAL R29
      226 DUPCLOSURE                       R39 K98 [PROTO_18]
      227 CAPTURE                          VAL R25
      228 CAPTURE                          VAL R2
      229 CAPTURE                          VAL R5
      230 CAPTURE                          VAL R24
      231 CAPTURE                          VAL R23
      232 CAPTURE                          VAL R21
      233 CAPTURE                          VAL R13
      234 CAPTURE                          VAL R3
      235 CAPTURE                          VAL R15
      236 DUPCLOSURE                       R40 K99 [PROTO_41]
      237 CAPTURE                          VAL R25
      238 CAPTURE                          VAL R5
      239 CAPTURE                          VAL R24
      240 CAPTURE                          VAL R23
      241 CAPTURE                          VAL R21
      242 CAPTURE                          VAL R12
      243 CAPTURE                          VAL R3
      244 CAPTURE                          VAL R14
      245 CAPTURE                          VAL R35
      246 CAPTURE                          VAL R22
      247 CAPTURE                          VAL R15
      248 CAPTURE                          VAL R16
      249 CAPTURE                          VAL R11
      250 CAPTURE                          VAL R32
      251 CAPTURE                          VAL R34
      252 NEWTABLE                         R41 0 3
      254 DUPTABLE                         R42 K103 [{["tier"], ["key"] = "Flagship"}]
      255 GETTABLEKS                       R43 R4 K104 ["Tier"]
      257 GETTABLEKS                       R43 R43 K105 ["HIGH"]
      259 SETTABLEKS                       R43 R42 K100 ["tier"]
      261 DUPTABLE                         R43 K107 [{["tier"], ["key"] = "MidRange"}]
      262 GETTABLEKS                       R44 R4 K104 ["Tier"]
      264 GETTABLEKS                       R44 R44 K108 ["MID"]
      266 SETTABLEKS                       R44 R43 K100 ["tier"]
      268 DUPTABLE                         R44 K110 [{["tier"], ["key"] = "EntryLevel"}]
      269 GETTABLEKS                       R45 R4 K104 ["Tier"]
      271 GETTABLEKS                       R45 R45 K111 ["LOW"]
      273 SETTABLEKS                       R45 R44 K100 ["tier"]
      275 SETLIST                          R41 R42 3 [1]
      277 DUPCLOSURE                       R42 K112 [PROTO_42]
      278 CAPTURE                          VAL R3
      279 DUPCLOSURE                       R43 K113 [PROTO_51]
      280 CAPTURE                          VAL R25
      281 CAPTURE                          VAL R5
      282 CAPTURE                          VAL R7
      283 CAPTURE                          VAL R3
      284 CAPTURE                          VAL R24
      285 CAPTURE                          VAL R23
      286 CAPTURE                          VAL R10
      287 CAPTURE                          VAL R15
      288 CAPTURE                          VAL R12
      289 CAPTURE                          VAL R14
      290 CAPTURE                          VAL R21
      291 CAPTURE                          VAL R41
      292 CAPTURE                          VAL R9
      293 CAPTURE                          VAL R27
      294 CAPTURE                          VAL R20
      295 CAPTURE                          VAL R19
      296 DUPCLOSURE                       R44 K114 [PROTO_63]
      297 CAPTURE                          VAL R25
      298 CAPTURE                          VAL R1
      299 CAPTURE                          VAL R7
      300 CAPTURE                          VAL R5
      301 CAPTURE                          VAL R24
      302 CAPTURE                          VAL R9
      303 CAPTURE                          VAL R26
      304 CAPTURE                          VAL R6
      305 CAPTURE                          VAL R20
      306 CAPTURE                          VAL R23
      307 CAPTURE                          VAL R38
      308 CAPTURE                          VAL R19
      309 CAPTURE                          VAL R39
      310 CAPTURE                          VAL R2
      311 CAPTURE                          VAL R40
      312 CAPTURE                          VAL R43
      313 GETTABLEKS                       R45 R7 K115 ["memo"]
      315 MOVE                             R46 R44
      316 CALL                             R45 1 -1
      317 RETURN                           R45 -1
