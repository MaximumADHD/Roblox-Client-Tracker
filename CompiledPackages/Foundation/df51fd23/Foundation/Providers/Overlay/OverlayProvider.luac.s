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
       21 GETUPVAL                         R6 4
       22 CALL                             R6 0 1
       23 GETUPVAL                         R8 3
       24 GETTABLEKS                       R7 R8 K3 ["useCallback"]
       26 NEWCLOSURE                       R8 P0
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R5
       29 NEWTABLE                         R9 0 1
       31 GETTABLEKS                       R10 R1 K2 ["gui"]
       33 SETLIST                          R9 R10 1 [1]
       35 CALL                             R7 2 1
       36 LOADB                            R8 0
       37 GETTABLEKS                       R9 R1 K2 ["gui"]
       39 JUMPIFNOTEQKNIL                  R9 ; [+6]
       41 LOADB                            R8 0
       42 GETUPVAL                         R9 5
       43 JUMPIFEQKNIL                     R9 ; [+2]
       45 MOVE                             R8 R4
       46 GETTABLEKS                       R10 R1 K2 ["gui"]
       48 JUMPIFEQKNIL                     R10 ; [+4]
       50 GETTABLEKS                       R9 R1 K2 ["gui"]
       52 JUMP                             ; [+1]
       53 MOVE                             R9 R2
       54 GETUPVAL                         R11 3
       55 GETTABLEKS                       R10 R11 K4 ["createElement"]
       57 GETUPVAL                         R12 6
       58 GETTABLEKS                       R11 R12 K5 ["Provider"]
       60 DUPTABLE                         R12 K7 [{"value"}]
       61 DUPTABLE                         R13 K10 [{"requestOverlay", "instance"}]
       62 SETTABLEKS                       R7 R13 K8 ["requestOverlay"]
       64 SETTABLEKS                       R9 R13 K9 ["instance"]
       66 SETTABLEKS                       R13 R12 K6 ["value"]
       68 DUPTABLE                         R13 K13 [{"FoundationOverlay", "Children"}]
       69 JUMPIFNOT                        R8 ; [+69]
       70 GETUPVAL                         R15 7
       71 GETTABLEKS                       R14 R15 K14 ["createPortal"]
       73 GETUPVAL                         R16 3
       74 GETTABLEKS                       R15 R16 K4 ["createElement"]
       76 LOADK                            R16 K15 ["ScreenGui"]
       77 DUPTABLE                         R17 K23 [{"Enabled", "DisplayOrder", "ZIndexBehavior", "ScreenInsets", "SafeAreaCompatibility", "ClipToDeviceSafeArea", "ref"}]
       78 LOADB                            R18 1
       79 SETTABLEKS                       R18 R17 K16 ["Enabled"]
       81 GETUPVAL                         R20 0
       82 GETTABLEKS                       R19 R20 K0 ["FoundationOverlayDisplayOrder"]
       84 JUMPIFNOT                        R19 ; [+3]
       85 GETTABLEKS                       R18 R1 K17 ["DisplayOrder"]
       87 JUMP                             ; [+4]
       88 GETUPVAL                         R20 8
       89 GETTABLEKS                       R19 R20 K25 ["MAX_LAYOUT_ORDER"]
       91 SUBK                             R18 R19 K24 [1]
       92 SETTABLEKS                       R18 R17 K17 ["DisplayOrder"]
       94 GETIMPORT                        R18 K28 [Enum.ZIndexBehavior.Sibling]
       96 SETTABLEKS                       R18 R17 K18 ["ZIndexBehavior"]
       98 GETUPVAL                         R20 0
       99 GETTABLEKS                       R19 R20 K29 ["FoundationOverlayLuaAppInsetsFix"]
      101 JUMPIFNOT                        R19 ; [+3]
      102 GETIMPORT                        R18 K31 [Enum.ScreenInsets.CoreUISafeInsets]
      104 JUMP                             ; [+2]
      105 GETIMPORT                        R18 K33 [Enum.ScreenInsets.DeviceSafeInsets]
      107 SETTABLEKS                       R18 R17 K19 ["ScreenInsets"]
      109 GETIMPORT                        R18 K35 [Enum.SafeAreaCompatibility.None]
      111 SETTABLEKS                       R18 R17 K20 ["SafeAreaCompatibility"]
      113 LOADB                            R18 0
      114 SETTABLEKS                       R18 R17 K21 ["ClipToDeviceSafeArea"]
      116 SETTABLEKS                       R3 R17 K22 ["ref"]
      118 DUPTABLE                         R18 K37 [{"FoundationStyleLink"}]
      119 GETUPVAL                         R21 0
      120 GETTABLEKS                       R20 R21 K38 ["FoundationDisableStylingPolyfill"]
      122 JUMPIFNOT                        R20 ; [+9]
      123 GETUPVAL                         R20 3
      124 GETTABLEKS                       R19 R20 K4 ["createElement"]
      126 LOADK                            R20 K39 ["StyleLink"]
      127 DUPTABLE                         R21 K41 [{"StyleSheet"}]
      128 SETTABLEKS                       R6 R21 K40 ["StyleSheet"]
      130 CALL                             R19 2 1
      131 JUMP                             ; [+1]
      132 LOADNIL                          R19
      133 SETTABLEKS                       R19 R18 K36 ["FoundationStyleLink"]
      135 CALL                             R15 3 1
      136 GETUPVAL                         R16 5
      137 CALL                             R14 2 1
      138 JUMP                             ; [+1]
      139 LOADNIL                          R14
      140 SETTABLEKS                       R14 R13 K11 ["FoundationOverlay"]
      142 GETUPVAL                         R15 3
      143 GETTABLEKS                       R14 R15 K4 ["createElement"]
      145 GETUPVAL                         R16 3
      146 GETTABLEKS                       R15 R16 K42 ["Fragment"]
      148 LOADNIL                          R16
      149 GETTABLEKS                       R17 R1 K43 ["children"]
      151 CALL                             R14 3 1
      152 SETTABLEKS                       R14 R13 K12 ["Children"]
      154 CALL                             R10 3 -1
      155 RETURN                           R10 -1

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
       99 GETTABLEKS                       R15 R1 K28 ["React"]
      101 CALL                             R14 1 1
      102 GETIMPORT                        R15 K6 [require]
      104 GETTABLEKS                       R16 R1 K29 ["ReactRoblox"]
      106 CALL                             R15 1 1
      107 DUPTABLE                         R16 K31 [{"DisplayOrder"}]
      108 GETTABLEKS                       R18 R2 K33 ["MAX_LAYOUT_ORDER"]
      110 SUBK                             R17 R18 K32 [1]
      111 SETTABLEKS                       R17 R16 K30 ["DisplayOrder"]
      113 MOVE                             R18 R9
      114 CALL                             R18 0 1
      115 JUMPIFNOT                        R18 ; [+2]
      116 MOVE                             R17 R4
      117 JUMP                             ; [+1]
      118 MOVE                             R17 R7
      119 DUPCLOSURE                       R18 K34 [PROTO_1]
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R10
      122 CAPTURE                          VAL R16
      123 CAPTURE                          VAL R14
      124 CAPTURE                          VAL R11
      125 CAPTURE                          VAL R17
      126 CAPTURE                          VAL R13
      127 CAPTURE                          VAL R15
      128 CAPTURE                          VAL R2
      129 RETURN                           R18 1
