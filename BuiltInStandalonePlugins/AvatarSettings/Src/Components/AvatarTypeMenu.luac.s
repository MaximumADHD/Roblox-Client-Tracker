PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+21]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R1 R2 R0
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R2 R3 K0 ["value"]
        8 JUMPIFEQ                         R2 R1 ; [+9]
       10 GETUPVAL                         R2 3
       11 LOADK                            R4 K1 ["AvatarTypeSelected"]
       12 DUPTABLE                         R5 K3 [{"avatarType"}]
       13 SETTABLEKS                       R0 R5 K2 ["avatarType"]
       15 NAMECALL                         R2 R2 K4 ["logCounter"]
       17 CALL                             R2 3 0
       18 GETUPVAL                         R3 2
       19 GETTABLEKS                       R2 R3 K5 ["set"]
       21 MOVE                             R3 R1
       22 CALL                             R2 1 0
       23 JUMP                             ; [+6]
       24 GETUPVAL                         R2 2
       25 GETTABLEKS                       R1 R2 K5 ["set"]
       27 GETUPVAL                         R3 1
       28 GETTABLE                         R2 R3 R0
       29 CALL                             R1 1 0
       30 GETUPVAL                         R2 4
       31 GETTABLEKS                       R1 R2 K6 ["close"]
       33 CALL                             R1 0 0
       34 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 NEWTABLE                         R4 4 0
        4 GETUPVAL                         R6 2
        5 GETTABLEKS                       R5 R6 K0 ["Tag"]
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
       31 GETUPVAL                         R11 5
       32 GETTABLEKS                       R10 R11 K21 ["value"]
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
       67 CAPTURE                          UPVAL U8
       68 CAPTURE                          UPVAL U5
       69 CAPTURE                          UPVAL U9
       70 CAPTURE                          UPVAL U10
       71 SETTABLEKS                       R9 R8 K14 ["OnClick"]
       73 CALL                             R6 2 1
       74 SETTABLEKS                       R6 R5 K4 ["Selector"]
       76 CALL                             R2 3 -1
       77 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 CALL                             R3 0 1
        6 JUMPIFNOT                        R3 ; [+5]
        7 GETUPVAL                         R2 2
        8 NAMECALL                         R2 R2 K0 ["use"]
       10 CALL                             R2 1 1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R2
       13 GETUPVAL                         R3 3
       14 CALL                             R3 0 1
       15 GETUPVAL                         R5 4
       16 GETTABLEKS                       R4 R5 K1 ["useContext"]
       18 GETUPVAL                         R5 5
       19 CALL                             R4 1 1
       20 GETTABLEKS                       R7 R4 K2 ["settings"]
       22 JUMPIFNOTEQKNIL                  R7 ; [+2]
       24 LOADB                            R6 0 +1
       25 LOADB                            R6 1
       26 FASTCALL2K                       ASSERT R6 K3 ; [+4]
       28 LOADK                            R7 K3 ["Settings must not be nil in AvatarSettingsContext"]
       29 GETIMPORT                        R5 K5 [assert]
       31 CALL                             R5 2 0
       32 GETTABLEKS                       R7 R4 K2 ["settings"]
       34 GETTABLEKS                       R6 R7 K6 ["navigationBarSettings"]
       36 GETTABLEKS                       R5 R6 K7 ["avatarType"]
       38 NEWCLOSURE                       R6 P0
       39 CAPTURE                          UPVAL U6
       40 CAPTURE                          UPVAL U7
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          VAL R3
       43 CAPTURE                          UPVAL U8
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R1
       46 CAPTURE                          UPVAL U1
       47 CAPTURE                          UPVAL U9
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R0
       50 GETUPVAL                         R7 6
       51 GETUPVAL                         R8 10
       52 DUPTABLE                         R9 K9 [{"OnFocusLost"}]
       53 GETTABLEKS                       R10 R0 K10 ["close"]
       55 SETTABLEKS                       R10 R9 K8 ["OnFocusLost"]
       57 GETUPVAL                         R10 6
       58 GETUPVAL                         R11 7
       59 NEWTABLE                         R12 8 0
       61 GETUPVAL                         R14 4
       62 GETTABLEKS                       R13 R14 K11 ["Tag"]
       64 LOADK                            R14 K12 ["RadioButtonContainer X-Column AvatarTypeDropdownList"]
       65 SETTABLE                         R14 R12 R13
       66 GETIMPORT                        R13 K15 [Vector2.new]
       68 LOADN                            R14 1
       69 LOADN                            R15 0
       70 CALL                             R13 2 1
       71 SETTABLEKS                       R13 R12 K16 ["AnchorPoint"]
       73 GETIMPORT                        R13 K19 [UDim2.fromOffset]
       75 LOADN                            R14 200
       76 LOADN                            R15 0
       77 CALL                             R13 2 1
       78 SETTABLEKS                       R13 R12 K20 ["Size"]
       80 GETIMPORT                        R13 K24 [Enum.AutomaticSize.Y]
       82 SETTABLEKS                       R13 R12 K22 ["AutomaticSize"]
       84 GETIMPORT                        R13 K25 [UDim2.new]
       86 LOADN                            R14 1
       87 LOADN                            R15 208
       88 LOADN                            R16 0
       89 LOADN                            R17 36
       90 CALL                             R13 4 1
       91 SETTABLEKS                       R13 R12 K26 ["Position"]
       93 DUPTABLE                         R13 K30 [{"R15Only", "R6Only", "R15AndR6"}]
       94 MOVE                             R14 R6
       95 GETIMPORT                        R15 K33 [Enum.GameAvatarType.R15]
       97 LOADK                            R16 K27 ["R15Only"]
       98 CALL                             R14 2 1
       99 SETTABLEKS                       R14 R13 K27 ["R15Only"]
      101 MOVE                             R14 R6
      102 GETIMPORT                        R15 K35 [Enum.GameAvatarType.R6]
      104 LOADK                            R16 K28 ["R6Only"]
      105 CALL                             R14 2 1
      106 SETTABLEKS                       R14 R13 K28 ["R6Only"]
      108 MOVE                             R14 R6
      109 GETIMPORT                        R15 K37 [Enum.GameAvatarType.PlayerChoice]
      111 LOADK                            R16 K29 ["R15AndR6"]
      112 CALL                             R14 2 1
      113 SETTABLEKS                       R14 R13 K29 ["R15AndR6"]
      115 CALL                             R10 3 -1
      116 CALL                             R7 -1 -1
      117 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Components"]
       13 GETTABLEKS                       R3 R4 K8 ["Contexts"]
       15 GETTABLEKS                       R2 R3 K9 ["AvatarSettingsContext"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R4 R0 K10 ["Packages"]
       22 GETTABLEKS                       R3 R4 K11 ["Framework"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Packages"]
       29 GETTABLEKS                       R4 R5 K12 ["React"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R6 R0 K10 ["Packages"]
       36 GETTABLEKS                       R5 R6 K13 ["ReactUtils"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R4 K14 ["createNextOrder"]
       41 GETTABLEKS                       R6 R2 K15 ["ContextServices"]
       43 GETTABLEKS                       R7 R6 K16 ["Localization"]
       45 GETIMPORT                        R8 K5 [require]
       47 GETTABLEKS                       R12 R0 K6 ["Src"]
       49 GETTABLEKS                       R11 R12 K17 ["Util"]
       51 GETTABLEKS                       R10 R11 K18 ["Telemetry"]
       53 GETTABLEKS                       R9 R10 K19 ["TelemetryContext"]
       55 CALL                             R8 1 1
       56 GETTABLEKS                       R9 R2 K20 ["UI"]
       58 GETTABLEKS                       R10 R9 K21 ["Pane"]
       60 GETTABLEKS                       R11 R9 K22 ["RadioButton"]
       62 GETTABLEKS                       R12 R9 K23 ["CaptureFocus"]
       64 GETIMPORT                        R13 K5 [require]
       66 GETTABLEKS                       R16 R0 K6 ["Src"]
       68 GETTABLEKS                       R15 R16 K24 ["Flags"]
       70 GETTABLEKS                       R14 R15 K25 ["getFFlagAddTelemetry"]
       72 CALL                             R13 1 1
       73 GETTABLEKS                       R14 R3 K26 ["createElement"]
       75 NEWTABLE                         R15 4 0
       77 GETIMPORT                        R17 K30 [Enum.GameAvatarType.R15]
       79 GETTABLEKS                       R16 R17 K31 ["Name"]
       81 GETIMPORT                        R17 K30 [Enum.GameAvatarType.R15]
       83 SETTABLE                         R17 R15 R16
       84 GETIMPORT                        R17 K33 [Enum.GameAvatarType.R6]
       86 GETTABLEKS                       R16 R17 K31 ["Name"]
       88 GETIMPORT                        R17 K33 [Enum.GameAvatarType.R6]
       90 SETTABLE                         R17 R15 R16
       91 GETIMPORT                        R17 K35 [Enum.GameAvatarType.PlayerChoice]
       93 GETTABLEKS                       R16 R17 K31 ["Name"]
       95 GETIMPORT                        R17 K35 [Enum.GameAvatarType.PlayerChoice]
       97 SETTABLE                         R17 R15 R16
       98 DUPCLOSURE                       R16 K36 [PROTO_2]
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R13
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R14
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R11
      108 CAPTURE                          VAL R15
      109 CAPTURE                          VAL R12
      110 RETURN                           R16 1
