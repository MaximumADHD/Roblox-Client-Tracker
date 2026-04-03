PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["gui"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+4]
        5 GETUPVAL                         R0 1
        6 LOADB                            R1 1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["gui"]
        3 JUMPIFEQKNIL                     R0 ; [+12]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R0 R1 K0 ["gui"]
        8 GETUPVAL                         R1 1
        9 JUMPIFEQ                         R0 R1 ; [+6]
       11 GETUPVAL                         R0 2
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R1 R2 K0 ["gui"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 GETTABLEKS                       R2 R0 K1 ["gui"]
        5 CALL                             R1 1 2
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K0 ["useState"]
        9 LOADB                            R4 0
       10 CALL                             R3 1 2
       11 GETUPVAL                         R5 1
       12 CALL                             R5 0 1
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R6 R7 K2 ["useCallback"]
       16 NEWCLOSURE                       R7 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R4
       19 NEWTABLE                         R8 0 1
       21 GETTABLEKS                       R9 R0 K1 ["gui"]
       23 SETLIST                          R8 R9 1 [1]
       25 CALL                             R6 2 1
       26 GETUPVAL                         R8 2
       27 GETTABLEKS                       R7 R8 K3 ["FoundationOverlayProviderFrameTiming"]
       29 JUMPIF                           R7 ; [+15]
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R7 R8 K4 ["useEffect"]
       33 NEWCLOSURE                       R8 P1
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R2
       37 NEWTABLE                         R9 0 2
       39 GETTABLEKS                       R10 R0 K1 ["gui"]
       41 MOVE                             R11 R1
       42 SETLIST                          R9 R10 2 [1]
       44 CALL                             R7 2 0
       45 GETTABLEKS                       R8 R0 K1 ["gui"]
       47 NOT                              R7 R8
       48 JUMPIFNOT                        R7 ; [+5]
       49 LOADB                            R7 0
       50 GETUPVAL                         R8 3
       51 JUMPIFEQKNIL                     R8 ; [+2]
       53 MOVE                             R7 R3
       54 MOVE                             R8 R1
       55 GETUPVAL                         R10 2
       56 GETTABLEKS                       R9 R10 K3 ["FoundationOverlayProviderFrameTiming"]
       58 JUMPIFNOT                        R9 ; [+8]
       59 GETTABLEKS                       R9 R0 K1 ["gui"]
       61 JUMPIFEQKNIL                     R9 ; [+4]
       63 GETTABLEKS                       R8 R0 K1 ["gui"]
       65 JUMP                             ; [+1]
       66 MOVE                             R8 R1
       67 GETUPVAL                         R10 0
       68 GETTABLEKS                       R9 R10 K5 ["createElement"]
       70 GETUPVAL                         R11 4
       71 GETTABLEKS                       R10 R11 K6 ["Provider"]
       73 DUPTABLE                         R11 K8 [{"value"}]
       74 DUPTABLE                         R12 K11 [{"requestOverlay", "instance"}]
       75 SETTABLEKS                       R6 R12 K9 ["requestOverlay"]
       77 SETTABLEKS                       R8 R12 K10 ["instance"]
       79 SETTABLEKS                       R12 R11 K7 ["value"]
       81 DUPTABLE                         R12 K14 [{"FoundationOverlay", "Children"}]
       82 JUMPIFNOT                        R7 ; [+62]
       83 GETUPVAL                         R14 5
       84 GETTABLEKS                       R13 R14 K15 ["createPortal"]
       86 GETUPVAL                         R15 0
       87 GETTABLEKS                       R14 R15 K5 ["createElement"]
       89 LOADK                            R15 K16 ["ScreenGui"]
       90 DUPTABLE                         R16 K24 [{"Enabled", "DisplayOrder", "ZIndexBehavior", "ScreenInsets", "SafeAreaCompatibility", "ClipToDeviceSafeArea", "ref"}]
       91 LOADB                            R17 1
       92 SETTABLEKS                       R17 R16 K17 ["Enabled"]
       94 GETUPVAL                         R19 6
       95 GETTABLEKS                       R18 R19 K26 ["MAX_LAYOUT_ORDER"]
       97 SUBK                             R17 R18 K25 [1]
       98 SETTABLEKS                       R17 R16 K18 ["DisplayOrder"]
      100 GETIMPORT                        R17 K29 [Enum.ZIndexBehavior.Sibling]
      102 SETTABLEKS                       R17 R16 K19 ["ZIndexBehavior"]
      104 GETUPVAL                         R19 2
      105 GETTABLEKS                       R18 R19 K30 ["FoundationOverlayLuaAppInsetsFix"]
      107 JUMPIFNOT                        R18 ; [+3]
      108 GETIMPORT                        R17 K32 [Enum.ScreenInsets.CoreUISafeInsets]
      110 JUMP                             ; [+2]
      111 GETIMPORT                        R17 K34 [Enum.ScreenInsets.DeviceSafeInsets]
      113 SETTABLEKS                       R17 R16 K20 ["ScreenInsets"]
      115 GETIMPORT                        R17 K36 [Enum.SafeAreaCompatibility.None]
      117 SETTABLEKS                       R17 R16 K21 ["SafeAreaCompatibility"]
      119 LOADB                            R17 0
      120 SETTABLEKS                       R17 R16 K22 ["ClipToDeviceSafeArea"]
      122 SETTABLEKS                       R2 R16 K23 ["ref"]
      124 DUPTABLE                         R17 K38 [{"FoundationStyleLink"}]
      125 GETUPVAL                         R20 2
      126 GETTABLEKS                       R19 R20 K39 ["FoundationDisableStylingPolyfill"]
      128 JUMPIFNOT                        R19 ; [+9]
      129 GETUPVAL                         R19 0
      130 GETTABLEKS                       R18 R19 K5 ["createElement"]
      132 LOADK                            R19 K40 ["StyleLink"]
      133 DUPTABLE                         R20 K42 [{"StyleSheet"}]
      134 SETTABLEKS                       R5 R20 K41 ["StyleSheet"]
      136 CALL                             R18 2 1
      137 JUMP                             ; [+1]
      138 LOADNIL                          R18
      139 SETTABLEKS                       R18 R17 K37 ["FoundationStyleLink"]
      141 CALL                             R14 3 1
      142 GETUPVAL                         R15 3
      143 CALL                             R13 2 1
      144 JUMP                             ; [+1]
      145 LOADNIL                          R13
      146 SETTABLEKS                       R13 R12 K12 ["FoundationOverlay"]
      148 GETUPVAL                         R14 0
      149 GETTABLEKS                       R13 R14 K5 ["createElement"]
      151 GETUPVAL                         R15 0
      152 GETTABLEKS                       R14 R15 K43 ["Fragment"]
      154 LOADNIL                          R15
      155 GETTABLEKS                       R16 R0 K44 ["children"]
      157 CALL                             R13 3 1
      158 SETTABLEKS                       R13 R12 K13 ["Children"]
      160 CALL                             R9 3 -1
      161 RETURN                           R9 -1

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
       53 GETTABLEKS                       R9 R10 K18 ["isPluginSecurity"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R11 R0 K8 ["Utility"]
       60 GETTABLEKS                       R10 R11 K19 ["Flags"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R11 K6 [require]
       65 GETTABLEKS                       R14 R0 K20 ["Providers"]
       67 GETTABLEKS                       R13 R14 K21 ["Style"]
       69 GETTABLEKS                       R12 R13 K22 ["StyleSheetContext"]
       71 CALL                             R11 1 1
       72 GETTABLEKS                       R10 R11 K23 ["useStyleSheet"]
       74 GETIMPORT                        R11 K6 [require]
       76 GETIMPORT                        R14 K1 [script]
       78 GETTABLEKS                       R13 R14 K4 ["Parent"]
       80 GETTABLEKS                       R12 R13 K24 ["OverlayContext"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K6 [require]
       85 GETTABLEKS                       R13 R1 K25 ["React"]
       87 CALL                             R12 1 1
       88 GETIMPORT                        R13 K6 [require]
       90 GETTABLEKS                       R14 R1 K26 ["ReactRoblox"]
       92 CALL                             R13 1 1
       93 MOVE                             R15 R8
       94 CALL                             R15 0 1
       95 JUMPIFNOT                        R15 ; [+2]
       96 MOVE                             R14 R4
       97 JUMP                             ; [+1]
       98 MOVE                             R14 R7
       99 DUPCLOSURE                       R15 K27 [PROTO_2]
      100 CAPTURE                          VAL R12
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R9
      103 CAPTURE                          VAL R14
      104 CAPTURE                          VAL R11
      105 CAPTURE                          VAL R13
      106 CAPTURE                          VAL R2
      107 RETURN                           R15 1
