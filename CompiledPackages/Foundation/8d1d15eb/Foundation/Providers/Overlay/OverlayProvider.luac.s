PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["gui"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+4]
        5 GETUPVAL                         R0 1
        6 LOADB                            R1 1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FoundationOverlayDisplayOrder"]
        3 JUMPIFNOT                        R2 ; [+5]
        4 GETUPVAL                         R1 1
        5 MOVE                             R2 R0
        6 GETUPVAL                         R3 2
        7 CALL                             R1 2 1
        8 JUMP                             ; [+1]
        9 MOVE                             R1 R0
       10 GETUPVAL                         R2 3
       11 GETTABLEKS                       R2 R2 K1 ["useState"]
       13 GETTABLEKS                       R3 R1 K2 ["gui"]
       15 CALL                             R2 1 2
       16 GETUPVAL                         R4 3
       17 GETTABLEKS                       R4 R4 K1 ["useState"]
       19 LOADB                            R5 0
       20 CALL                             R4 1 2
       21 GETUPVAL                         R7 0
       22 GETTABLEKS                       R7 R7 K3 ["FoundationOverlayKeyboardAwareness"]
       24 JUMPIFNOT                        R7 ; [+4]
       25 GETUPVAL                         R6 4
       26 MOVE                             R7 R2
       27 CALL                             R6 1 1
       28 JUMP                             ; [+1]
       29 LOADNIL                          R6
       30 GETUPVAL                         R7 5
       31 CALL                             R7 0 1
       32 GETUPVAL                         R8 3
       33 GETTABLEKS                       R8 R8 K4 ["useCallback"]
       35 NEWCLOSURE                       R9 P0
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R5
       38 NEWTABLE                         R10 0 1
       40 GETTABLEKS                       R11 R1 K2 ["gui"]
       42 SETLIST                          R10 R11 1 [1]
       44 CALL                             R8 2 1
       45 LOADB                            R9 0
       46 GETTABLEKS                       R10 R1 K2 ["gui"]
       48 JUMPIFNOTEQKNIL                  R10 ; [+6]
       50 LOADB                            R9 0
       51 GETUPVAL                         R10 6
       52 JUMPIFEQKNIL                     R10 ; [+2]
       54 MOVE                             R9 R4
       55 GETTABLEKS                       R11 R1 K2 ["gui"]
       57 JUMPIFEQKNIL                     R11 ; [+4]
       59 GETTABLEKS                       R10 R1 K2 ["gui"]
       61 JUMP                             ; [+1]
       62 MOVE                             R10 R2
       63 GETUPVAL                         R11 3
       64 GETTABLEKS                       R11 R11 K5 ["createElement"]
       66 GETUPVAL                         R12 7
       67 GETTABLEKS                       R12 R12 K6 ["Provider"]
       69 DUPTABLE                         R13 K8 [{"value"}]
       70 DUPTABLE                         R14 K11 [{"requestOverlay", "instance"}]
       71 SETTABLEKS                       R8 R14 K9 ["requestOverlay"]
       73 SETTABLEKS                       R10 R14 K10 ["instance"]
       75 SETTABLEKS                       R14 R13 K7 ["value"]
       77 DUPTABLE                         R14 K14 [{"FoundationOverlay", "Children"}]
       78 JUMPIFNOT                        R9 ; [+82]
       79 GETUPVAL                         R15 8
       80 GETTABLEKS                       R15 R15 K15 ["createPortal"]
       82 GETUPVAL                         R16 3
       83 GETTABLEKS                       R16 R16 K5 ["createElement"]
       85 LOADK                            R17 K16 ["ScreenGui"]
       86 DUPTABLE                         R18 K26 [{["Enabled"] = True, ["DisplayOrder"], ["ZIndexBehavior"], ["ScreenInsets"], ["SafeAreaCompatibility"], ["ClipToDeviceSafeArea"] = False, ["ref"]}]
       87 GETUPVAL                         R20 0
       88 GETTABLEKS                       R20 R20 K0 ["FoundationOverlayDisplayOrder"]
       90 JUMPIFNOT                        R20 ; [+3]
       91 GETTABLEKS                       R19 R1 K19 ["DisplayOrder"]
       93 JUMP                             ; [+4]
       94 GETUPVAL                         R20 9
       95 GETTABLEKS                       R20 R20 K28 ["MAX_LAYOUT_ORDER"]
       97 SUBK                             R19 R20 K27 [1]
       98 SETTABLEKS                       R19 R18 K19 ["DisplayOrder"]
      100 GETIMPORT                        R19 K31 [Enum.ZIndexBehavior.Sibling]
      102 SETTABLEKS                       R19 R18 K20 ["ZIndexBehavior"]
      104 GETUPVAL                         R20 0
      105 GETTABLEKS                       R20 R20 K32 ["FoundationOverlayLuaAppInsetsFix"]
      107 JUMPIFNOT                        R20 ; [+3]
      108 GETIMPORT                        R19 K34 [Enum.ScreenInsets.CoreUISafeInsets]
      110 JUMP                             ; [+2]
      111 GETIMPORT                        R19 K36 [Enum.ScreenInsets.DeviceSafeInsets]
      113 SETTABLEKS                       R19 R18 K21 ["ScreenInsets"]
      115 GETIMPORT                        R19 K38 [Enum.SafeAreaCompatibility.None]
      117 SETTABLEKS                       R19 R18 K22 ["SafeAreaCompatibility"]
      119 GETUPVAL                         R20 0
      120 GETTABLEKS                       R20 R20 K3 ["FoundationOverlayKeyboardAwareness"]
      122 JUMPIF                           R20 ; [+2]
      123 MOVE                             R19 R3
      124 JUMP                             ; [+1]
      125 LOADNIL                          R19
      126 SETTABLEKS                       R19 R18 K25 ["ref"]
      128 DUPTABLE                         R19 K41 [{"SafeAreaFrame", "FoundationStyleLink"}]
      129 GETUPVAL                         R21 0
      130 GETTABLEKS                       R21 R21 K3 ["FoundationOverlayKeyboardAwareness"]
      132 JUMPIFNOT                        R21 ; [+11]
      133 GETUPVAL                         R20 3
      134 GETTABLEKS                       R20 R20 K5 ["createElement"]
      136 LOADK                            R21 K42 ["Frame"]
      137 DUPTABLE                         R22 K47 [{["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ref"]}]
      138 SETTABLEKS                       R6 R22 K43 ["Size"]
      140 SETTABLEKS                       R3 R22 K25 ["ref"]
      142 CALL                             R20 2 1
      143 JUMP                             ; [+1]
      144 LOADNIL                          R20
      145 SETTABLEKS                       R20 R19 K39 ["SafeAreaFrame"]
      147 GETUPVAL                         R20 3
      148 GETTABLEKS                       R20 R20 K5 ["createElement"]
      150 LOADK                            R21 K48 ["StyleLink"]
      151 DUPTABLE                         R22 K50 [{"StyleSheet"}]
      152 SETTABLEKS                       R7 R22 K49 ["StyleSheet"]
      154 CALL                             R20 2 1
      155 SETTABLEKS                       R20 R19 K40 ["FoundationStyleLink"]
      157 CALL                             R16 3 1
      158 GETUPVAL                         R17 6
      159 CALL                             R15 2 1
      160 JUMP                             ; [+1]
      161 LOADNIL                          R15
      162 SETTABLEKS                       R15 R14 K12 ["FoundationOverlay"]
      164 GETUPVAL                         R15 3
      165 GETTABLEKS                       R15 R15 K5 ["createElement"]
      167 GETUPVAL                         R16 3
      168 GETTABLEKS                       R16 R16 K51 ["Fragment"]
      170 LOADNIL                          R17
      171 GETTABLEKS                       R18 R1 K52 ["children"]
      173 CALL                             R15 3 1
      174 SETTABLEKS                       R15 R14 K13 ["Children"]
      176 CALL                             R11 3 -1
      177 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Constants"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Utility"]
       18 GETTABLEKS                       R4 R4 K9 ["Wrappers"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R3 K10 ["Services"]
       23 GETTABLEKS                       R4 R4 K11 ["CoreGui"]
       25 GETTABLEKS                       R5 R3 K10 ["Services"]
       27 GETTABLEKS                       R5 R5 K12 ["RunService"]
       29 GETTABLEKS                       R6 R3 K10 ["Services"]
       31 GETTABLEKS                       R6 R6 K13 ["Players"]
       33 GETTABLEKS                       R8 R6 K14 ["LocalPlayer"]
       35 JUMPIFNOT                        R8 ; [+12]
       36 NAMECALL                         R8 R5 K15 ["IsRunning"]
       38 CALL                             R8 1 1
       39 JUMPIFNOT                        R8 ; [+8]
       40 GETTABLEKS                       R7 R6 K14 ["LocalPlayer"]
       42 LOADK                            R9 K16 ["PlayerGui"]
       43 LOADN                            R10 3
       44 NAMECALL                         R7 R7 K17 ["WaitForChild"]
       46 CALL                             R7 3 1
       47 JUMP                             ; [+1]
       48 LOADNIL                          R7
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K8 ["Utility"]
       53 GETTABLEKS                       R9 R9 K18 ["Flags"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K8 ["Utility"]
       60 GETTABLEKS                       R10 R10 K19 ["isPluginSecurity"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K8 ["Utility"]
       67 GETTABLEKS                       R11 R11 K20 ["withDefaults"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R0 K21 ["Providers"]
       74 GETTABLEKS                       R12 R12 K22 ["Style"]
       76 GETTABLEKS                       R12 R12 K23 ["StyleSheetContext"]
       78 CALL                             R11 1 1
       79 GETTABLEKS                       R11 R11 K24 ["useStyleSheet"]
       81 GETIMPORT                        R12 K6 [require]
       83 GETTABLEKS                       R13 R0 K25 ["Components"]
       85 GETTABLEKS                       R13 R13 K26 ["Types"]
       87 CALL                             R12 1 1
       88 GETIMPORT                        R13 K6 [require]
       90 GETIMPORT                        R14 K1 [script]
       92 GETTABLEKS                       R14 R14 K4 ["Parent"]
       94 GETTABLEKS                       R14 R14 K27 ["OverlayContext"]
       96 CALL                             R13 1 1
       97 GETIMPORT                        R14 K6 [require]
       99 GETIMPORT                        R15 K1 [script]
      101 GETTABLEKS                       R15 R15 K4 ["Parent"]
      103 GETTABLEKS                       R15 R15 K28 ["useKeyboardAwareSize"]
      105 CALL                             R14 1 1
      106 GETIMPORT                        R15 K6 [require]
      108 GETTABLEKS                       R16 R1 K29 ["React"]
      110 CALL                             R15 1 1
      111 GETIMPORT                        R16 K6 [require]
      113 GETTABLEKS                       R17 R1 K30 ["ReactRoblox"]
      115 CALL                             R16 1 1
      116 DUPTABLE                         R17 K32 [{"DisplayOrder"}]
      117 GETTABLEKS                       R19 R2 K34 ["MAX_LAYOUT_ORDER"]
      119 SUBK                             R18 R19 K33 [1]
      120 SETTABLEKS                       R18 R17 K31 ["DisplayOrder"]
      122 MOVE                             R19 R9
      123 CALL                             R19 0 1
      124 JUMPIFNOT                        R19 ; [+2]
      125 MOVE                             R18 R4
      126 JUMP                             ; [+1]
      127 MOVE                             R18 R7
      128 DUPCLOSURE                       R19 K35 [PROTO_1]
      129 CAPTURE                          VAL R8
      130 CAPTURE                          VAL R10
      131 CAPTURE                          VAL R17
      132 CAPTURE                          VAL R15
      133 CAPTURE                          VAL R14
      134 CAPTURE                          VAL R11
      135 CAPTURE                          VAL R18
      136 CAPTURE                          VAL R13
      137 CAPTURE                          VAL R16
      138 CAPTURE                          VAL R2
      139 RETURN                           R19 1
