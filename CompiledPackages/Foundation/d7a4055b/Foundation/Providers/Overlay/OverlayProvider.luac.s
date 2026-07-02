PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["gui"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+4]
        5 GETUPVAL                         R0 1
        6 LOADB                            R1 1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["gui"]
        3 JUMPIFEQKNIL                     R0 ; [+12]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["gui"]
        8 GETUPVAL                         R1 1
        9 JUMPIFEQ                         R0 R1 ; [+6]
       11 GETUPVAL                         R0 2
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K0 ["gui"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETTABLEKS                       R2 R0 K1 ["gui"]
        5 CALL                             R1 1 2
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["useState"]
        9 LOADB                            R4 0
       10 CALL                             R3 1 2
       11 GETUPVAL                         R5 1
       12 CALL                             R5 0 1
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K2 ["useCallback"]
       16 NEWCLOSURE                       R7 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R4
       19 NEWTABLE                         R8 0 1
       21 GETTABLEKS                       R9 R0 K1 ["gui"]
       23 SETLIST                          R8 R9 1 [1]
       25 CALL                             R6 2 1
       26 GETUPVAL                         R7 2
       27 GETTABLEKS                       R7 R7 K3 ["FoundationOverlayProviderFrameTiming"]
       29 JUMPIF                           R7 ; [+15]
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R7 R7 K4 ["useEffect"]
       33 NEWCLOSURE                       R8 P1
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R2
       37 NEWTABLE                         R9 0 2
       39 GETTABLEKS                       R10 R0 K1 ["gui"]
       41 MOVE                             R11 R1
       42 SETLIST                          R9 R10 2 [1]
       44 CALL                             R7 2 0
       45 LOADNIL                          R7
       46 GETUPVAL                         R8 2
       47 GETTABLEKS                       R8 R8 K5 ["FoundationLazyOverlayLoading"]
       49 JUMPIFNOT                        R8 ; [+11]
       50 GETTABLEKS                       R9 R0 K1 ["gui"]
       52 NOT                              R8 R9
       53 JUMPIFNOT                        R8 ; [+5]
       54 LOADB                            R8 0
       55 GETUPVAL                         R9 3
       56 JUMPIFEQKNIL                     R9 ; [+2]
       58 MOVE                             R8 R3
       59 MOVE                             R7 R8
       60 JUMP                             ; [+10]
       61 GETTABLEKS                       R9 R0 K1 ["gui"]
       63 NOT                              R8 R9
       64 JUMPIFNOT                        R8 ; [+5]
       65 GETUPVAL                         R9 3
       66 JUMPIFNOTEQKNIL                  R9 ; [+2]
       68 LOADB                            R8 0 +1
       69 LOADB                            R8 1
       70 MOVE                             R7 R8
       71 MOVE                             R8 R1
       72 GETUPVAL                         R9 2
       73 GETTABLEKS                       R9 R9 K3 ["FoundationOverlayProviderFrameTiming"]
       75 JUMPIFNOT                        R9 ; [+8]
       76 GETTABLEKS                       R9 R0 K1 ["gui"]
       78 JUMPIFEQKNIL                     R9 ; [+4]
       80 GETTABLEKS                       R8 R0 K1 ["gui"]
       82 JUMP                             ; [+1]
       83 MOVE                             R8 R1
       84 GETUPVAL                         R9 0
       85 GETTABLEKS                       R9 R9 K6 ["createElement"]
       87 GETUPVAL                         R10 4
       88 GETTABLEKS                       R10 R10 K7 ["Provider"]
       90 DUPTABLE                         R11 K9 [{"value"}]
       91 DUPTABLE                         R12 K12 [{"requestOverlay", "instance"}]
       92 SETTABLEKS                       R6 R12 K10 ["requestOverlay"]
       94 SETTABLEKS                       R8 R12 K11 ["instance"]
       96 SETTABLEKS                       R12 R11 K8 ["value"]
       98 DUPTABLE                         R12 K15 [{"FoundationOverlay", "Children"}]
       99 JUMPIFNOT                        R7 ; [+71]
      100 GETUPVAL                         R13 5
      101 GETTABLEKS                       R13 R13 K16 ["createPortal"]
      103 GETUPVAL                         R14 0
      104 GETTABLEKS                       R14 R14 K6 ["createElement"]
      106 LOADK                            R15 K17 ["ScreenGui"]
      107 DUPTABLE                         R16 K26 [{["Enabled"] = True, ["DisplayOrder"], ["ZIndexBehavior"], ["ScreenInsets"], ["SafeAreaCompatibility"], ["ClipToDeviceSafeArea"], ["ref"]}]
      108 GETUPVAL                         R18 6
      109 GETTABLEKS                       R18 R18 K28 ["MAX_LAYOUT_ORDER"]
      111 SUBK                             R17 R18 K27 [1]
      112 SETTABLEKS                       R17 R16 K20 ["DisplayOrder"]
      114 GETIMPORT                        R17 K31 [Enum.ZIndexBehavior.Sibling]
      116 SETTABLEKS                       R17 R16 K21 ["ZIndexBehavior"]
      118 GETUPVAL                         R18 2
      119 GETTABLEKS                       R18 R18 K32 ["FoundationOverlayLuaAppInsetsFix"]
      121 JUMPIFNOT                        R18 ; [+3]
      122 GETIMPORT                        R17 K34 [Enum.ScreenInsets.CoreUISafeInsets]
      124 JUMP                             ; [+2]
      125 GETIMPORT                        R17 K36 [Enum.ScreenInsets.DeviceSafeInsets]
      127 SETTABLEKS                       R17 R16 K22 ["ScreenInsets"]
      129 GETUPVAL                         R18 2
      130 GETTABLEKS                       R18 R18 K37 ["FoundationOverlayNoClip"]
      132 JUMPIFNOT                        R18 ; [+3]
      133 GETIMPORT                        R17 K39 [Enum.SafeAreaCompatibility.None]
      135 JUMP                             ; [+1]
      136 LOADNIL                          R17
      137 SETTABLEKS                       R17 R16 K23 ["SafeAreaCompatibility"]
      139 GETUPVAL                         R18 2
      140 GETTABLEKS                       R18 R18 K37 ["FoundationOverlayNoClip"]
      142 JUMPIFNOT                        R18 ; [+2]
      143 LOADB                            R17 0
      144 JUMP                             ; [+1]
      145 LOADNIL                          R17
      146 SETTABLEKS                       R17 R16 K24 ["ClipToDeviceSafeArea"]
      148 SETTABLEKS                       R2 R16 K25 ["ref"]
      150 DUPTABLE                         R17 K41 [{"FoundationStyleLink"}]
      151 GETUPVAL                         R19 2
      152 GETTABLEKS                       R19 R19 K42 ["FoundationDisableStylingPolyfill"]
      154 JUMPIFNOT                        R19 ; [+9]
      155 GETUPVAL                         R18 0
      156 GETTABLEKS                       R18 R18 K6 ["createElement"]
      158 LOADK                            R19 K43 ["StyleLink"]
      159 DUPTABLE                         R20 K45 [{"StyleSheet"}]
      160 SETTABLEKS                       R5 R20 K44 ["StyleSheet"]
      162 CALL                             R18 2 1
      163 JUMP                             ; [+1]
      164 LOADNIL                          R18
      165 SETTABLEKS                       R18 R17 K40 ["FoundationStyleLink"]
      167 CALL                             R14 3 1
      168 GETUPVAL                         R15 3
      169 CALL                             R13 2 1
      170 JUMP                             ; [+1]
      171 LOADNIL                          R13
      172 SETTABLEKS                       R13 R12 K13 ["FoundationOverlay"]
      174 GETUPVAL                         R13 0
      175 GETTABLEKS                       R13 R13 K6 ["createElement"]
      177 GETUPVAL                         R14 0
      178 GETTABLEKS                       R14 R14 K46 ["Fragment"]
      180 LOADNIL                          R15
      181 GETTABLEKS                       R16 R0 K47 ["children"]
      183 CALL                             R13 3 1
      184 SETTABLEKS                       R13 R12 K14 ["Children"]
      186 CALL                             R9 3 -1
      187 RETURN                           R9 -1

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
       53 GETTABLEKS                       R9 R9 K18 ["isPluginSecurity"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K8 ["Utility"]
       60 GETTABLEKS                       R10 R10 K19 ["Flags"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K20 ["Providers"]
       67 GETTABLEKS                       R11 R11 K21 ["Style"]
       69 GETTABLEKS                       R11 R11 K22 ["StyleSheetContext"]
       71 CALL                             R10 1 1
       72 GETTABLEKS                       R10 R10 K23 ["useStyleSheet"]
       74 GETIMPORT                        R11 K6 [require]
       76 GETIMPORT                        R12 K1 [script]
       78 GETTABLEKS                       R12 R12 K4 ["Parent"]
       80 GETTABLEKS                       R12 R12 K24 ["OverlayContext"]
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
