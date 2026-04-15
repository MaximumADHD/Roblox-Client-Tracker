PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["gui"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+4]
        5 GETUPVAL                         R0 1
        6 LOADB                            R1 1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["FoundationOverlayDisplayOrder"]
        3 JUMPIFNOT                        R2 ; [+5]
        4 GETUPVAL                         R1 1
        5 MOVE                             R2 R0
        6 GETUPVAL                         R3 2
        7 CALL                             R1 2 1
        8 JUMP                             ; [+1]
        9 MOVE                             R1 R0
       10 GETUPVAL                         R3 3
       11 GETTABLEKS                       R2 R3 K1 ["useState"]
       13 GETTABLEKS                       R3 R1 K2 ["gui"]
       15 CALL                             R2 1 2
       16 GETUPVAL                         R5 3
       17 GETTABLEKS                       R4 R5 K1 ["useState"]
       19 LOADB                            R5 0
       20 CALL                             R4 1 2
       21 GETUPVAL                         R8 0
       22 GETTABLEKS                       R7 R8 K3 ["FoundationOverlayKeyboardAwareness"]
       24 JUMPIFNOT                        R7 ; [+4]
       25 GETUPVAL                         R6 4
       26 MOVE                             R7 R2
       27 CALL                             R6 1 1
       28 JUMP                             ; [+1]
       29 LOADNIL                          R6
       30 GETUPVAL                         R7 5
       31 CALL                             R7 0 1
       32 GETUPVAL                         R9 3
       33 GETTABLEKS                       R8 R9 K4 ["useCallback"]
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
       63 GETUPVAL                         R12 3
       64 GETTABLEKS                       R11 R12 K5 ["createElement"]
       66 GETUPVAL                         R13 7
       67 GETTABLEKS                       R12 R13 K6 ["Provider"]
       69 DUPTABLE                         R13 K8 [{"value"}]
       70 DUPTABLE                         R14 K11 [{"requestOverlay", "instance"}]
       71 SETTABLEKS                       R8 R14 K9 ["requestOverlay"]
       73 SETTABLEKS                       R10 R14 K10 ["instance"]
       75 SETTABLEKS                       R14 R13 K7 ["value"]
       77 DUPTABLE                         R14 K14 [{"FoundationOverlay", "Children"}]
       78 JUMPIFNOT                        R9 ; [+87]
       79 GETUPVAL                         R16 8
       80 GETTABLEKS                       R15 R16 K15 ["createPortal"]
       82 GETUPVAL                         R17 3
       83 GETTABLEKS                       R16 R17 K5 ["createElement"]
       85 LOADK                            R17 K16 ["ScreenGui"]
       86 DUPTABLE                         R18 K24 [{"Enabled", "DisplayOrder", "ZIndexBehavior", "ScreenInsets", "SafeAreaCompatibility", "ClipToDeviceSafeArea", "ref"}]
       87 LOADB                            R19 1
       88 SETTABLEKS                       R19 R18 K17 ["Enabled"]
       90 GETUPVAL                         R21 0
       91 GETTABLEKS                       R20 R21 K0 ["FoundationOverlayDisplayOrder"]
       93 JUMPIFNOT                        R20 ; [+3]
       94 GETTABLEKS                       R19 R1 K18 ["DisplayOrder"]
       96 JUMP                             ; [+4]
       97 GETUPVAL                         R21 9
       98 GETTABLEKS                       R20 R21 K26 ["MAX_LAYOUT_ORDER"]
      100 SUBK                             R19 R20 K25 [1]
      101 SETTABLEKS                       R19 R18 K18 ["DisplayOrder"]
      103 GETIMPORT                        R19 K29 [Enum.ZIndexBehavior.Sibling]
      105 SETTABLEKS                       R19 R18 K19 ["ZIndexBehavior"]
      107 GETIMPORT                        R19 K31 [Enum.ScreenInsets.DeviceSafeInsets]
      109 SETTABLEKS                       R19 R18 K20 ["ScreenInsets"]
      111 GETIMPORT                        R19 K33 [Enum.SafeAreaCompatibility.None]
      113 SETTABLEKS                       R19 R18 K21 ["SafeAreaCompatibility"]
      115 LOADB                            R19 0
      116 SETTABLEKS                       R19 R18 K22 ["ClipToDeviceSafeArea"]
      118 GETUPVAL                         R21 0
      119 GETTABLEKS                       R20 R21 K3 ["FoundationOverlayKeyboardAwareness"]
      121 JUMPIF                           R20 ; [+2]
      122 MOVE                             R19 R3
      123 JUMP                             ; [+1]
      124 LOADNIL                          R19
      125 SETTABLEKS                       R19 R18 K23 ["ref"]
      127 DUPTABLE                         R19 K36 [{"SafeAreaFrame", "FoundationStyleLink"}]
      128 GETUPVAL                         R22 0
      129 GETTABLEKS                       R21 R22 K3 ["FoundationOverlayKeyboardAwareness"]
      131 JUMPIFNOT                        R21 ; [+17]
      132 GETUPVAL                         R21 3
      133 GETTABLEKS                       R20 R21 K5 ["createElement"]
      135 LOADK                            R21 K37 ["Frame"]
      136 DUPTABLE                         R22 K41 [{"Size", "BackgroundTransparency", "BorderSizePixel", "ref"}]
      137 SETTABLEKS                       R6 R22 K38 ["Size"]
      139 LOADN                            R23 1
      140 SETTABLEKS                       R23 R22 K39 ["BackgroundTransparency"]
      142 LOADN                            R23 0
      143 SETTABLEKS                       R23 R22 K40 ["BorderSizePixel"]
      145 SETTABLEKS                       R3 R22 K23 ["ref"]
      147 CALL                             R20 2 1
      148 JUMP                             ; [+1]
      149 LOADNIL                          R20
      150 SETTABLEKS                       R20 R19 K34 ["SafeAreaFrame"]
      152 GETUPVAL                         R21 3
      153 GETTABLEKS                       R20 R21 K5 ["createElement"]
      155 LOADK                            R21 K42 ["StyleLink"]
      156 DUPTABLE                         R22 K44 [{"StyleSheet"}]
      157 SETTABLEKS                       R7 R22 K43 ["StyleSheet"]
      159 CALL                             R20 2 1
      160 SETTABLEKS                       R20 R19 K35 ["FoundationStyleLink"]
      162 CALL                             R16 3 1
      163 GETUPVAL                         R17 6
      164 CALL                             R15 2 1
      165 JUMP                             ; [+1]
      166 LOADNIL                          R15
      167 SETTABLEKS                       R15 R14 K12 ["FoundationOverlay"]
      169 GETUPVAL                         R16 3
      170 GETTABLEKS                       R15 R16 K5 ["createElement"]
      172 GETUPVAL                         R17 3
      173 GETTABLEKS                       R16 R17 K45 ["Fragment"]
      175 LOADNIL                          R17
      176 GETTABLEKS                       R18 R1 K46 ["children"]
      178 CALL                             R15 3 1
      179 SETTABLEKS                       R15 R14 K13 ["Children"]
      181 CALL                             R11 3 -1
      182 RETURN                           R11 -1

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
       16 GETTABLEKS                       R5 R0 K8 ["Utility"]
       18 GETTABLEKS                       R4 R5 K9 ["Wrappers"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R5 R3 K10 ["Services"]
       23 GETTABLEKS                       R4 R5 K11 ["CoreGui"]
       25 GETTABLEKS                       R6 R3 K10 ["Services"]
       27 GETTABLEKS                       R5 R6 K12 ["RunService"]
       29 GETTABLEKS                       R7 R3 K10 ["Services"]
       31 GETTABLEKS                       R6 R7 K13 ["Players"]
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
       51 GETTABLEKS                       R10 R0 K8 ["Utility"]
       53 GETTABLEKS                       R9 R10 K18 ["Flags"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R11 R0 K8 ["Utility"]
       60 GETTABLEKS                       R10 R11 K19 ["isPluginSecurity"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R12 R0 K8 ["Utility"]
       67 GETTABLEKS                       R11 R12 K20 ["withDefaults"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R12 K6 [require]
       72 GETTABLEKS                       R15 R0 K21 ["Providers"]
       74 GETTABLEKS                       R14 R15 K22 ["Style"]
       76 GETTABLEKS                       R13 R14 K23 ["StyleSheetContext"]
       78 CALL                             R12 1 1
       79 GETTABLEKS                       R11 R12 K24 ["useStyleSheet"]
       81 GETIMPORT                        R12 K6 [require]
       83 GETTABLEKS                       R14 R0 K25 ["Components"]
       85 GETTABLEKS                       R13 R14 K26 ["Types"]
       87 CALL                             R12 1 1
       88 GETIMPORT                        R13 K6 [require]
       90 GETIMPORT                        R16 K1 [script]
       92 GETTABLEKS                       R15 R16 K4 ["Parent"]
       94 GETTABLEKS                       R14 R15 K27 ["OverlayContext"]
       96 CALL                             R13 1 1
       97 GETIMPORT                        R14 K6 [require]
       99 GETIMPORT                        R17 K1 [script]
      101 GETTABLEKS                       R16 R17 K4 ["Parent"]
      103 GETTABLEKS                       R15 R16 K28 ["useKeyboardAwareSize"]
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
