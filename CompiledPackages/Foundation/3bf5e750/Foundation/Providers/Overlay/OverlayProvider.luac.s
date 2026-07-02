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
       21 GETUPVAL                         R6 4
       22 CALL                             R6 0 1
       23 GETUPVAL                         R7 3
       24 GETTABLEKS                       R7 R7 K3 ["useCallback"]
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
       54 GETUPVAL                         R10 3
       55 GETTABLEKS                       R10 R10 K4 ["createElement"]
       57 GETUPVAL                         R11 6
       58 GETTABLEKS                       R11 R11 K5 ["Provider"]
       60 DUPTABLE                         R12 K7 [{"value"}]
       61 DUPTABLE                         R13 K10 [{"requestOverlay", "instance"}]
       62 SETTABLEKS                       R7 R13 K8 ["requestOverlay"]
       64 SETTABLEKS                       R9 R13 K9 ["instance"]
       66 SETTABLEKS                       R13 R12 K6 ["value"]
       68 DUPTABLE                         R13 K13 [{"FoundationOverlay", "Children"}]
       69 JUMPIFNOT                        R8 ; [+63]
       70 GETUPVAL                         R14 7
       71 GETTABLEKS                       R14 R14 K14 ["createPortal"]
       73 GETUPVAL                         R15 3
       74 GETTABLEKS                       R15 R15 K4 ["createElement"]
       76 LOADK                            R16 K15 ["ScreenGui"]
       77 DUPTABLE                         R17 K25 [{["Enabled"] = True, ["DisplayOrder"], ["ZIndexBehavior"], ["ScreenInsets"], ["SafeAreaCompatibility"], ["ClipToDeviceSafeArea"] = False, ["ref"]}]
       78 GETUPVAL                         R19 0
       79 GETTABLEKS                       R19 R19 K0 ["FoundationOverlayDisplayOrder"]
       81 JUMPIFNOT                        R19 ; [+3]
       82 GETTABLEKS                       R18 R1 K18 ["DisplayOrder"]
       84 JUMP                             ; [+4]
       85 GETUPVAL                         R19 8
       86 GETTABLEKS                       R19 R19 K27 ["MAX_LAYOUT_ORDER"]
       88 SUBK                             R18 R19 K26 [1]
       89 SETTABLEKS                       R18 R17 K18 ["DisplayOrder"]
       91 GETIMPORT                        R18 K30 [Enum.ZIndexBehavior.Sibling]
       93 SETTABLEKS                       R18 R17 K19 ["ZIndexBehavior"]
       95 GETUPVAL                         R19 0
       96 GETTABLEKS                       R19 R19 K31 ["FoundationOverlayLuaAppInsetsFix"]
       98 JUMPIFNOT                        R19 ; [+3]
       99 GETIMPORT                        R18 K33 [Enum.ScreenInsets.CoreUISafeInsets]
      101 JUMP                             ; [+2]
      102 GETIMPORT                        R18 K35 [Enum.ScreenInsets.DeviceSafeInsets]
      104 SETTABLEKS                       R18 R17 K20 ["ScreenInsets"]
      106 GETIMPORT                        R18 K37 [Enum.SafeAreaCompatibility.None]
      108 SETTABLEKS                       R18 R17 K21 ["SafeAreaCompatibility"]
      110 SETTABLEKS                       R3 R17 K24 ["ref"]
      112 DUPTABLE                         R18 K39 [{"FoundationStyleLink"}]
      113 GETUPVAL                         R20 0
      114 GETTABLEKS                       R20 R20 K40 ["FoundationDisableStylingPolyfill"]
      116 JUMPIFNOT                        R20 ; [+9]
      117 GETUPVAL                         R19 3
      118 GETTABLEKS                       R19 R19 K4 ["createElement"]
      120 LOADK                            R20 K41 ["StyleLink"]
      121 DUPTABLE                         R21 K43 [{"StyleSheet"}]
      122 SETTABLEKS                       R6 R21 K42 ["StyleSheet"]
      124 CALL                             R19 2 1
      125 JUMP                             ; [+1]
      126 LOADNIL                          R19
      127 SETTABLEKS                       R19 R18 K38 ["FoundationStyleLink"]
      129 CALL                             R15 3 1
      130 GETUPVAL                         R16 5
      131 CALL                             R14 2 1
      132 JUMP                             ; [+1]
      133 LOADNIL                          R14
      134 SETTABLEKS                       R14 R13 K11 ["FoundationOverlay"]
      136 GETUPVAL                         R14 3
      137 GETTABLEKS                       R14 R14 K4 ["createElement"]
      139 GETUPVAL                         R15 3
      140 GETTABLEKS                       R15 R15 K44 ["Fragment"]
      142 LOADNIL                          R16
      143 GETTABLEKS                       R17 R1 K45 ["children"]
      145 CALL                             R14 3 1
      146 SETTABLEKS                       R14 R13 K12 ["Children"]
      148 CALL                             R10 3 -1
      149 RETURN                           R10 -1

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
