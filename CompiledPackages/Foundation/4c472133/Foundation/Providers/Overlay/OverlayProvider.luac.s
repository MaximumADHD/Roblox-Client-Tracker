PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["gui"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+4]
        5 GETUPVAL                         R0 1
        6 LOADB                            R1 1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K0 ["useState"]
        7 GETTABLEKS                       R3 R1 K1 ["gui"]
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K0 ["useState"]
       13 LOADB                            R5 0
       14 CALL                             R4 1 2
       15 GETUPVAL                         R7 3
       16 GETTABLEKS                       R7 R7 K2 ["FoundationOverlayKeyboardAwarenessHardened"]
       18 JUMPIFNOT                        R7 ; [+8]
       19 GETTABLEKS                       R7 R1 K1 ["gui"]
       21 JUMPIF                           R7 ; [+5]
       22 MOVE                             R6 R2
       23 JUMPIFNOT                        R6 ; [+4]
       24 GETTABLEKS                       R6 R2 K3 ["Parent"]
       26 JUMP                             ; [+1]
       27 LOADNIL                          R6
       28 GETUPVAL                         R8 3
       29 GETTABLEKS                       R8 R8 K4 ["FoundationOverlayKeyboardAwareness"]
       31 JUMPIFNOT                        R8 ; [+10]
       32 GETUPVAL                         R7 4
       33 GETUPVAL                         R9 3
       34 GETTABLEKS                       R9 R9 K2 ["FoundationOverlayKeyboardAwarenessHardened"]
       36 JUMPIFNOT                        R9 ; [+2]
       37 MOVE                             R8 R6
       38 JUMP                             ; [+1]
       39 MOVE                             R8 R2
       40 CALL                             R7 1 1
       41 JUMP                             ; [+1]
       42 LOADNIL                          R7
       43 GETUPVAL                         R8 5
       44 CALL                             R8 0 1
       45 GETUPVAL                         R9 2
       46 GETTABLEKS                       R9 R9 K5 ["useCallback"]
       48 NEWCLOSURE                       R10 P0
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R5
       51 NEWTABLE                         R11 0 1
       53 GETTABLEKS                       R12 R1 K1 ["gui"]
       55 SETLIST                          R11 R12 1 [1]
       57 CALL                             R9 2 1
       58 LOADB                            R10 0
       59 GETTABLEKS                       R11 R1 K1 ["gui"]
       61 JUMPIFNOTEQKNIL                  R11 ; [+6]
       63 LOADB                            R10 0
       64 GETUPVAL                         R11 6
       65 JUMPIFEQKNIL                     R11 ; [+2]
       67 MOVE                             R10 R4
       68 GETTABLEKS                       R12 R1 K1 ["gui"]
       70 JUMPIFEQKNIL                     R12 ; [+4]
       72 GETTABLEKS                       R11 R1 K1 ["gui"]
       74 JUMP                             ; [+1]
       75 MOVE                             R11 R2
       76 LOADNIL                          R12
       77 GETUPVAL                         R13 3
       78 GETTABLEKS                       R13 R13 K2 ["FoundationOverlayKeyboardAwarenessHardened"]
       80 JUMPIFNOT                        R13 ; [+8]
       81 GETTABLEKS                       R13 R1 K1 ["gui"]
       83 JUMPIFEQKNIL                     R13 ; [+4]
       85 GETTABLEKS                       R12 R1 K1 ["gui"]
       87 JUMP                             ; [+1]
       88 MOVE                             R12 R6
       89 GETUPVAL                         R13 2
       90 GETTABLEKS                       R13 R13 K6 ["createElement"]
       92 GETUPVAL                         R14 7
       93 GETTABLEKS                       R14 R14 K7 ["Provider"]
       95 DUPTABLE                         R15 K9 [{"value"}]
       96 DUPTABLE                         R16 K13 [{"requestOverlay", "instance", "screen"}]
       97 SETTABLEKS                       R9 R16 K10 ["requestOverlay"]
       99 SETTABLEKS                       R11 R16 K11 ["instance"]
      101 SETTABLEKS                       R12 R16 K12 ["screen"]
      103 SETTABLEKS                       R16 R15 K8 ["value"]
      105 DUPTABLE                         R16 K16 [{"FoundationOverlay", "Children"}]
      106 JUMPIFNOT                        R10 ; [+66]
      107 GETUPVAL                         R17 8
      108 GETTABLEKS                       R17 R17 K17 ["createPortal"]
      110 GETUPVAL                         R18 2
      111 GETTABLEKS                       R18 R18 K6 ["createElement"]
      113 LOADK                            R19 K18 ["ScreenGui"]
      114 DUPTABLE                         R20 K28 [{["Enabled"] = True, ["DisplayOrder"], ["ZIndexBehavior"], ["ScreenInsets"], ["SafeAreaCompatibility"], ["ClipToDeviceSafeArea"] = False, ["ref"]}]
      115 GETTABLEKS                       R21 R1 K21 ["DisplayOrder"]
      117 SETTABLEKS                       R21 R20 K21 ["DisplayOrder"]
      119 GETIMPORT                        R21 K31 [Enum.ZIndexBehavior.Sibling]
      121 SETTABLEKS                       R21 R20 K22 ["ZIndexBehavior"]
      123 GETIMPORT                        R21 K33 [Enum.ScreenInsets.DeviceSafeInsets]
      125 SETTABLEKS                       R21 R20 K23 ["ScreenInsets"]
      127 GETIMPORT                        R21 K35 [Enum.SafeAreaCompatibility.None]
      129 SETTABLEKS                       R21 R20 K24 ["SafeAreaCompatibility"]
      131 GETUPVAL                         R22 3
      132 GETTABLEKS                       R22 R22 K4 ["FoundationOverlayKeyboardAwareness"]
      134 JUMPIF                           R22 ; [+2]
      135 MOVE                             R21 R3
      136 JUMP                             ; [+1]
      137 LOADNIL                          R21
      138 SETTABLEKS                       R21 R20 K27 ["ref"]
      140 DUPTABLE                         R21 K38 [{"SafeAreaFrame", "FoundationStyleLink"}]
      141 GETUPVAL                         R23 3
      142 GETTABLEKS                       R23 R23 K4 ["FoundationOverlayKeyboardAwareness"]
      144 JUMPIFNOT                        R23 ; [+11]
      145 GETUPVAL                         R22 2
      146 GETTABLEKS                       R22 R22 K6 ["createElement"]
      148 LOADK                            R23 K39 ["Frame"]
      149 DUPTABLE                         R24 K45 [{["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ref"]}]
      150 SETTABLEKS                       R7 R24 K40 ["Size"]
      152 SETTABLEKS                       R3 R24 K27 ["ref"]
      154 CALL                             R22 2 1
      155 JUMP                             ; [+1]
      156 LOADNIL                          R22
      157 SETTABLEKS                       R22 R21 K36 ["SafeAreaFrame"]
      159 GETUPVAL                         R22 2
      160 GETTABLEKS                       R22 R22 K6 ["createElement"]
      162 LOADK                            R23 K46 ["StyleLink"]
      163 DUPTABLE                         R24 K48 [{"StyleSheet"}]
      164 SETTABLEKS                       R8 R24 K47 ["StyleSheet"]
      166 CALL                             R22 2 1
      167 SETTABLEKS                       R22 R21 K37 ["FoundationStyleLink"]
      169 CALL                             R18 3 1
      170 GETUPVAL                         R19 6
      171 CALL                             R17 2 1
      172 JUMP                             ; [+1]
      173 LOADNIL                          R17
      174 SETTABLEKS                       R17 R16 K14 ["FoundationOverlay"]
      176 GETUPVAL                         R17 2
      177 GETTABLEKS                       R17 R17 K6 ["createElement"]
      179 GETUPVAL                         R18 2
      180 GETTABLEKS                       R18 R18 K49 ["Fragment"]
      182 LOADNIL                          R19
      183 GETTABLEKS                       R20 R1 K50 ["children"]
      185 CALL                             R17 3 1
      186 SETTABLEKS                       R17 R16 K15 ["Children"]
      188 CALL                             R13 3 -1
      189 RETURN                           R13 -1

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
       33 GETIMPORT                        R7 K6 [require]
       35 GETTABLEKS                       R8 R0 K8 ["Utility"]
       37 GETTABLEKS                       R8 R8 K14 ["Flags"]
       39 CALL                             R7 1 1
       40 LOADNIL                          R8
       41 GETTABLEKS                       R9 R7 K15 ["FoundationUseMainGuiUtility"]
       43 JUMPIF                           R9 ; [+17]
       44 GETTABLEKS                       R9 R6 K16 ["LocalPlayer"]
       46 JUMPIFNOT                        R9 ; [+13]
       47 NAMECALL                         R9 R5 K17 ["IsRunning"]
       49 CALL                             R9 1 1
       50 JUMPIFNOT                        R9 ; [+9]
       51 GETTABLEKS                       R9 R6 K16 ["LocalPlayer"]
       53 LOADK                            R11 K18 ["PlayerGui"]
       54 LOADN                            R12 3
       55 NAMECALL                         R9 R9 K19 ["WaitForChild"]
       57 CALL                             R9 3 1
       58 MOVE                             R8 R9
       59 JUMP                             ; [+1]
       60 LOADNIL                          R8
       61 GETIMPORT                        R9 K6 [require]
       63 GETTABLEKS                       R10 R0 K8 ["Utility"]
       65 GETTABLEKS                       R10 R10 K20 ["getMainGui"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K6 [require]
       70 GETTABLEKS                       R11 R0 K8 ["Utility"]
       72 GETTABLEKS                       R11 R11 K21 ["isPluginSecurity"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K6 [require]
       77 GETTABLEKS                       R12 R0 K8 ["Utility"]
       79 GETTABLEKS                       R12 R12 K22 ["withDefaults"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K6 [require]
       84 GETTABLEKS                       R13 R0 K23 ["Providers"]
       86 GETTABLEKS                       R13 R13 K24 ["Style"]
       88 GETTABLEKS                       R13 R13 K25 ["StyleSheetContext"]
       90 CALL                             R12 1 1
       91 GETTABLEKS                       R12 R12 K26 ["useStyleSheet"]
       93 GETIMPORT                        R13 K6 [require]
       95 GETTABLEKS                       R14 R0 K27 ["Components"]
       97 GETTABLEKS                       R14 R14 K28 ["Types"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K6 [require]
      102 GETIMPORT                        R15 K1 [script]
      104 GETTABLEKS                       R15 R15 K4 ["Parent"]
      106 GETTABLEKS                       R15 R15 K29 ["OverlayContext"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K6 [require]
      111 GETIMPORT                        R16 K1 [script]
      113 GETTABLEKS                       R16 R16 K4 ["Parent"]
      115 GETTABLEKS                       R16 R16 K30 ["useKeyboardAwareSize"]
      117 CALL                             R15 1 1
      118 GETIMPORT                        R16 K6 [require]
      120 GETTABLEKS                       R17 R1 K31 ["React"]
      122 CALL                             R16 1 1
      123 GETIMPORT                        R17 K6 [require]
      125 GETTABLEKS                       R18 R1 K32 ["ReactRoblox"]
      127 CALL                             R17 1 1
      128 DUPTABLE                         R18 K34 [{"DisplayOrder"}]
      129 GETTABLEKS                       R20 R2 K36 ["MAX_LAYOUT_ORDER"]
      131 SUBK                             R19 R20 K35 [1]
      132 SETTABLEKS                       R19 R18 K33 ["DisplayOrder"]
      134 GETTABLEKS                       R20 R7 K15 ["FoundationUseMainGuiUtility"]
      136 JUMPIFNOT                        R20 ; [+3]
      137 MOVE                             R19 R9
      138 CALL                             R19 0 1
      139 JUMP                             ; [+6]
      140 MOVE                             R20 R10
      141 CALL                             R20 0 1
      142 JUMPIFNOT                        R20 ; [+2]
      143 MOVE                             R19 R4
      144 JUMP                             ; [+1]
      145 MOVE                             R19 R8
      146 DUPCLOSURE                       R20 K37 [PROTO_1]
      147 CAPTURE                          VAL R11
      148 CAPTURE                          VAL R18
      149 CAPTURE                          VAL R16
      150 CAPTURE                          VAL R7
      151 CAPTURE                          VAL R15
      152 CAPTURE                          VAL R12
      153 CAPTURE                          VAL R19
      154 CAPTURE                          VAL R14
      155 CAPTURE                          VAL R17
      156 RETURN                           R20 1
