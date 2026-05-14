PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["value"]
        5 JUMPIFEQ                         R2 R1 ; [+9]
        7 GETUPVAL                         R2 2
        8 LOADK                            R4 K1 ["AvatarTypeSelected"]
        9 DUPTABLE                         R5 K3 [{"avatarType"}]
       10 SETTABLEKS                       R0 R5 K2 ["avatarType"]
       12 NAMECALL                         R2 R2 K4 ["logCounter"]
       14 CALL                             R2 3 0
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K5 ["set"]
       18 MOVE                             R3 R1
       19 CALL                             R2 1 0
       20 GETUPVAL                         R2 3
       21 GETTABLEKS                       R2 R2 K6 ["close"]
       23 CALL                             R2 0 0
       24 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 NEWTABLE                         R4 4 0
        4 GETUPVAL                         R5 2
        5 GETTABLEKS                       R5 R5 K0 ["Tag"]
        7 LOADK                            R6 K1 ["AvatarTypeDropdownItem X-Column X-Middle X-Left X-PadS"]
        8 SETTABLE                         R6 R4 R5
        9 GETUPVAL                         R5 3
       10 CALL                             R5 0 1
       11 SETTABLEKS                       R5 R4 K2 ["LayoutOrder"]
       13 LOADN                            R5 0
       14 SETTABLEKS                       R5 R4 K3 ["BackgroundTransparency"]
       16 DUPTABLE                         R5 K5 [{"Selector"}]
       17 GETUPVAL                         R6 0
       18 GETUPVAL                         R7 4
       19 DUPTABLE                         R8 K15 [{"TextWrapped", "TextXAlignment", "AutomaticSize", "Selected", "Key", "Text", "Description", "Disabled", "OnClick"}]
       20 LOADB                            R9 1
       21 SETTABLEKS                       R9 R8 K6 ["TextWrapped"]
       23 GETIMPORT                        R9 K18 [Enum.TextXAlignment.Left]
       25 SETTABLEKS                       R9 R8 K7 ["TextXAlignment"]
       27 GETIMPORT                        R9 K20 [Enum.AutomaticSize.XY]
       29 SETTABLEKS                       R9 R8 K8 ["AutomaticSize"]
       31 GETUPVAL                         R10 5
       32 GETTABLEKS                       R10 R10 K21 ["value"]
       34 JUMPIFEQ                         R10 R0 ; [+2]
       36 LOADB                            R9 0 +1
       37 LOADB                            R9 1
       38 SETTABLEKS                       R9 R8 K9 ["Selected"]
       40 GETTABLEKS                       R9 R0 K22 ["Name"]
       42 SETTABLEKS                       R9 R8 K10 ["Key"]
       44 GETUPVAL                         R9 6
       45 LOADK                            R11 K23 ["AvatarTypeSelector"]
       46 MOVE                             R12 R1
       47 NAMECALL                         R9 R9 K24 ["getText"]
       49 CALL                             R9 3 1
       50 SETTABLEKS                       R9 R8 K11 ["Text"]
       52 GETUPVAL                         R9 6
       53 LOADK                            R11 K23 ["AvatarTypeSelector"]
       54 MOVE                             R13 R1
       55 LOADK                            R14 K12 ["Description"]
       56 CONCAT                           R12 R13 R14
       57 NAMECALL                         R9 R9 K24 ["getText"]
       59 CALL                             R9 3 1
       60 SETTABLEKS                       R9 R8 K12 ["Description"]
       62 LOADB                            R9 0
       63 SETTABLEKS                       R9 R8 K13 ["Disabled"]
       65 NEWCLOSURE                       R9 P0
       66 CAPTURE                          UPVAL U7
       67 CAPTURE                          UPVAL U5
       68 CAPTURE                          UPVAL U8
       69 CAPTURE                          UPVAL U9
       70 SETTABLEKS                       R9 R8 K14 ["OnClick"]
       72 CALL                             R6 2 1
       73 SETTABLEKS                       R6 R5 K4 ["Selector"]
       75 CALL                             R2 3 -1
       76 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["use"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K1 ["useContext"]
       13 GETUPVAL                         R5 4
       14 CALL                             R4 1 1
       15 GETTABLEKS                       R7 R4 K2 ["settings"]
       17 JUMPIFNOTEQKNIL                  R7 ; [+2]
       19 LOADB                            R6 0 +1
       20 LOADB                            R6 1
       21 FASTCALL2K                       ASSERT R6 K3 ; [+4]
       23 LOADK                            R7 K3 ["Settings must not be nil in AvatarSettingsContext"]
       24 GETIMPORT                        R5 K5 [assert]
       26 CALL                             R5 2 0
       27 GETTABLEKS                       R5 R4 K2 ["settings"]
       29 GETTABLEKS                       R5 R5 K6 ["navigationBarSettings"]
       31 GETTABLEKS                       R5 R5 K7 ["avatarType"]
       33 NEWCLOSURE                       R6 P0
       34 CAPTURE                          UPVAL U5
       35 CAPTURE                          UPVAL U6
       36 CAPTURE                          UPVAL U3
       37 CAPTURE                          VAL R3
       38 CAPTURE                          UPVAL U7
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R1
       41 CAPTURE                          UPVAL U8
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R0
       44 GETUPVAL                         R7 5
       45 GETUPVAL                         R8 9
       46 DUPTABLE                         R9 K9 [{"OnFocusLost"}]
       47 GETTABLEKS                       R10 R0 K10 ["close"]
       49 SETTABLEKS                       R10 R9 K8 ["OnFocusLost"]
       51 GETUPVAL                         R10 5
       52 GETUPVAL                         R11 6
       53 NEWTABLE                         R12 8 0
       55 GETUPVAL                         R13 3
       56 GETTABLEKS                       R13 R13 K11 ["Tag"]
       58 LOADK                            R14 K12 ["RadioButtonContainer X-Column AvatarTypeDropdownList"]
       59 SETTABLE                         R14 R12 R13
       60 GETIMPORT                        R13 K15 [Vector2.new]
       62 LOADN                            R14 1
       63 LOADN                            R15 0
       64 CALL                             R13 2 1
       65 SETTABLEKS                       R13 R12 K16 ["AnchorPoint"]
       67 GETIMPORT                        R13 K19 [UDim2.fromOffset]
       69 LOADN                            R14 200
       70 LOADN                            R15 0
       71 CALL                             R13 2 1
       72 SETTABLEKS                       R13 R12 K20 ["Size"]
       74 GETIMPORT                        R13 K24 [Enum.AutomaticSize.Y]
       76 SETTABLEKS                       R13 R12 K22 ["AutomaticSize"]
       78 GETIMPORT                        R13 K25 [UDim2.new]
       80 LOADN                            R14 1
       81 LOADN                            R15 208
       82 LOADN                            R16 0
       83 LOADN                            R17 36
       84 CALL                             R13 4 1
       85 SETTABLEKS                       R13 R12 K26 ["Position"]
       87 DUPTABLE                         R13 K30 [{"R15Only", "R6Only", "R15AndR6"}]
       88 MOVE                             R14 R6
       89 GETIMPORT                        R15 K33 [Enum.GameAvatarType.R15]
       91 LOADK                            R16 K27 ["R15Only"]
       92 CALL                             R14 2 1
       93 SETTABLEKS                       R14 R13 K27 ["R15Only"]
       95 MOVE                             R14 R6
       96 GETIMPORT                        R15 K35 [Enum.GameAvatarType.R6]
       98 LOADK                            R16 K28 ["R6Only"]
       99 CALL                             R14 2 1
      100 SETTABLEKS                       R14 R13 K28 ["R6Only"]
      102 MOVE                             R14 R6
      103 GETIMPORT                        R15 K37 [Enum.GameAvatarType.PlayerChoice]
      105 LOADK                            R16 K29 ["R15AndR6"]
      106 CALL                             R14 2 1
      107 SETTABLEKS                       R14 R13 K29 ["R15AndR6"]
      109 CALL                             R10 3 -1
      110 CALL                             R7 -1 -1
      111 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["Contexts"]
       15 GETTABLEKS                       R2 R2 K9 ["AvatarSettingsContext"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K10 ["Packages"]
       22 GETTABLEKS                       R3 R3 K11 ["Framework"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K10 ["Packages"]
       29 GETTABLEKS                       R4 R4 K12 ["React"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K10 ["Packages"]
       36 GETTABLEKS                       R5 R5 K13 ["ReactUtils"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R4 K14 ["createNextOrder"]
       41 GETTABLEKS                       R6 R2 K15 ["ContextServices"]
       43 GETTABLEKS                       R7 R6 K16 ["Localization"]
       45 GETIMPORT                        R8 K5 [require]
       47 GETTABLEKS                       R9 R0 K6 ["Src"]
       49 GETTABLEKS                       R9 R9 K17 ["Util"]
       51 GETTABLEKS                       R9 R9 K18 ["Telemetry"]
       53 GETTABLEKS                       R9 R9 K19 ["TelemetryContext"]
       55 CALL                             R8 1 1
       56 GETTABLEKS                       R9 R2 K20 ["UI"]
       58 GETTABLEKS                       R10 R9 K21 ["Pane"]
       60 GETTABLEKS                       R11 R9 K22 ["RadioButton"]
       62 GETTABLEKS                       R12 R9 K23 ["CaptureFocus"]
       64 GETTABLEKS                       R13 R3 K24 ["createElement"]
       66 NEWTABLE                         R14 4 0
       68 GETIMPORT                        R15 K28 [Enum.GameAvatarType.R15]
       70 GETTABLEKS                       R15 R15 K29 ["Name"]
       72 GETIMPORT                        R16 K28 [Enum.GameAvatarType.R15]
       74 SETTABLE                         R16 R14 R15
       75 GETIMPORT                        R15 K31 [Enum.GameAvatarType.R6]
       77 GETTABLEKS                       R15 R15 K29 ["Name"]
       79 GETIMPORT                        R16 K31 [Enum.GameAvatarType.R6]
       81 SETTABLE                         R16 R14 R15
       82 GETIMPORT                        R15 K33 [Enum.GameAvatarType.PlayerChoice]
       84 GETTABLEKS                       R15 R15 K29 ["Name"]
       86 GETIMPORT                        R16 K33 [Enum.GameAvatarType.PlayerChoice]
       88 SETTABLE                         R16 R14 R15
       89 DUPCLOSURE                       R15 K34 [PROTO_2]
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R13
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R14
       99 CAPTURE                          VAL R12
      100 RETURN                           R15 1
