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
       22 GETTABLEKS                       R7 R8 K3 ["FoundationOverlayKeyboardAwarenessHardened"]
       24 JUMPIFNOT                        R7 ; [+8]
       25 GETTABLEKS                       R7 R1 K2 ["gui"]
       27 JUMPIF                           R7 ; [+5]
       28 MOVE                             R6 R2
       29 JUMPIFNOT                        R6 ; [+4]
       30 GETTABLEKS                       R6 R2 K4 ["Parent"]
       32 JUMP                             ; [+1]
       33 LOADNIL                          R6
       34 GETUPVAL                         R9 0
       35 GETTABLEKS                       R8 R9 K5 ["FoundationOverlayKeyboardAwareness"]
       37 JUMPIFNOT                        R8 ; [+10]
       38 GETUPVAL                         R7 4
       39 GETUPVAL                         R10 0
       40 GETTABLEKS                       R9 R10 K3 ["FoundationOverlayKeyboardAwarenessHardened"]
       42 JUMPIFNOT                        R9 ; [+2]
       43 MOVE                             R8 R6
       44 JUMP                             ; [+1]
       45 MOVE                             R8 R2
       46 CALL                             R7 1 1
       47 JUMP                             ; [+1]
       48 LOADNIL                          R7
       49 GETUPVAL                         R8 5
       50 CALL                             R8 0 1
       51 GETUPVAL                         R10 3
       52 GETTABLEKS                       R9 R10 K6 ["useCallback"]
       54 NEWCLOSURE                       R10 P0
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R5
       57 NEWTABLE                         R11 0 1
       59 GETTABLEKS                       R12 R1 K2 ["gui"]
       61 SETLIST                          R11 R12 1 [1]
       63 CALL                             R9 2 1
       64 LOADB                            R10 0
       65 GETTABLEKS                       R11 R1 K2 ["gui"]
       67 JUMPIFNOTEQKNIL                  R11 ; [+6]
       69 LOADB                            R10 0
       70 GETUPVAL                         R11 6
       71 JUMPIFEQKNIL                     R11 ; [+2]
       73 MOVE                             R10 R4
       74 GETTABLEKS                       R12 R1 K2 ["gui"]
       76 JUMPIFEQKNIL                     R12 ; [+4]
       78 GETTABLEKS                       R11 R1 K2 ["gui"]
       80 JUMP                             ; [+1]
       81 MOVE                             R11 R2
       82 LOADNIL                          R12
       83 GETUPVAL                         R14 0
       84 GETTABLEKS                       R13 R14 K3 ["FoundationOverlayKeyboardAwarenessHardened"]
       86 JUMPIFNOT                        R13 ; [+8]
       87 GETTABLEKS                       R13 R1 K2 ["gui"]
       89 JUMPIFEQKNIL                     R13 ; [+4]
       91 GETTABLEKS                       R12 R1 K2 ["gui"]
       93 JUMP                             ; [+1]
       94 MOVE                             R12 R6
       95 GETUPVAL                         R14 3
       96 GETTABLEKS                       R13 R14 K7 ["createElement"]
       98 GETUPVAL                         R15 7
       99 GETTABLEKS                       R14 R15 K8 ["Provider"]
      101 DUPTABLE                         R15 K10 [{"value"}]
      102 DUPTABLE                         R16 K14 [{"requestOverlay", "instance", "screen"}]
      103 SETTABLEKS                       R9 R16 K11 ["requestOverlay"]
      105 SETTABLEKS                       R11 R16 K12 ["instance"]
      107 SETTABLEKS                       R12 R16 K13 ["screen"]
      109 SETTABLEKS                       R16 R15 K9 ["value"]
      111 DUPTABLE                         R16 K17 [{"FoundationOverlay", "Children"}]
      112 JUMPIFNOT                        R10 ; [+87]
      113 GETUPVAL                         R18 8
      114 GETTABLEKS                       R17 R18 K18 ["createPortal"]
      116 GETUPVAL                         R19 3
      117 GETTABLEKS                       R18 R19 K7 ["createElement"]
      119 LOADK                            R19 K19 ["ScreenGui"]
      120 DUPTABLE                         R20 K27 [{"Enabled", "DisplayOrder", "ZIndexBehavior", "ScreenInsets", "SafeAreaCompatibility", "ClipToDeviceSafeArea", "ref"}]
      121 LOADB                            R21 1
      122 SETTABLEKS                       R21 R20 K20 ["Enabled"]
      124 GETUPVAL                         R23 0
      125 GETTABLEKS                       R22 R23 K0 ["FoundationOverlayDisplayOrder"]
      127 JUMPIFNOT                        R22 ; [+3]
      128 GETTABLEKS                       R21 R1 K21 ["DisplayOrder"]
      130 JUMP                             ; [+4]
      131 GETUPVAL                         R23 9
      132 GETTABLEKS                       R22 R23 K29 ["MAX_LAYOUT_ORDER"]
      134 SUBK                             R21 R22 K28 [1]
      135 SETTABLEKS                       R21 R20 K21 ["DisplayOrder"]
      137 GETIMPORT                        R21 K32 [Enum.ZIndexBehavior.Sibling]
      139 SETTABLEKS                       R21 R20 K22 ["ZIndexBehavior"]
      141 GETIMPORT                        R21 K34 [Enum.ScreenInsets.DeviceSafeInsets]
      143 SETTABLEKS                       R21 R20 K23 ["ScreenInsets"]
      145 GETIMPORT                        R21 K36 [Enum.SafeAreaCompatibility.None]
      147 SETTABLEKS                       R21 R20 K24 ["SafeAreaCompatibility"]
      149 LOADB                            R21 0
      150 SETTABLEKS                       R21 R20 K25 ["ClipToDeviceSafeArea"]
      152 GETUPVAL                         R23 0
      153 GETTABLEKS                       R22 R23 K5 ["FoundationOverlayKeyboardAwareness"]
      155 JUMPIF                           R22 ; [+2]
      156 MOVE                             R21 R3
      157 JUMP                             ; [+1]
      158 LOADNIL                          R21
      159 SETTABLEKS                       R21 R20 K26 ["ref"]
      161 DUPTABLE                         R21 K39 [{"SafeAreaFrame", "FoundationStyleLink"}]
      162 GETUPVAL                         R24 0
      163 GETTABLEKS                       R23 R24 K5 ["FoundationOverlayKeyboardAwareness"]
      165 JUMPIFNOT                        R23 ; [+17]
      166 GETUPVAL                         R23 3
      167 GETTABLEKS                       R22 R23 K7 ["createElement"]
      169 LOADK                            R23 K40 ["Frame"]
      170 DUPTABLE                         R24 K44 [{"Size", "BackgroundTransparency", "BorderSizePixel", "ref"}]
      171 SETTABLEKS                       R7 R24 K41 ["Size"]
      173 LOADN                            R25 1
      174 SETTABLEKS                       R25 R24 K42 ["BackgroundTransparency"]
      176 LOADN                            R25 0
      177 SETTABLEKS                       R25 R24 K43 ["BorderSizePixel"]
      179 SETTABLEKS                       R3 R24 K26 ["ref"]
      181 CALL                             R22 2 1
      182 JUMP                             ; [+1]
      183 LOADNIL                          R22
      184 SETTABLEKS                       R22 R21 K37 ["SafeAreaFrame"]
      186 GETUPVAL                         R23 3
      187 GETTABLEKS                       R22 R23 K7 ["createElement"]
      189 LOADK                            R23 K45 ["StyleLink"]
      190 DUPTABLE                         R24 K47 [{"StyleSheet"}]
      191 SETTABLEKS                       R8 R24 K46 ["StyleSheet"]
      193 CALL                             R22 2 1
      194 SETTABLEKS                       R22 R21 K38 ["FoundationStyleLink"]
      196 CALL                             R18 3 1
      197 GETUPVAL                         R19 6
      198 CALL                             R17 2 1
      199 JUMP                             ; [+1]
      200 LOADNIL                          R17
      201 SETTABLEKS                       R17 R16 K15 ["FoundationOverlay"]
      203 GETUPVAL                         R18 3
      204 GETTABLEKS                       R17 R18 K7 ["createElement"]
      206 GETUPVAL                         R19 3
      207 GETTABLEKS                       R18 R19 K48 ["Fragment"]
      209 LOADNIL                          R19
      210 GETTABLEKS                       R20 R1 K49 ["children"]
      212 CALL                             R17 3 1
      213 SETTABLEKS                       R17 R16 K16 ["Children"]
      215 CALL                             R13 3 -1
      216 RETURN                           R13 -1

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
       33 GETIMPORT                        R7 K6 [require]
       35 GETTABLEKS                       R9 R0 K8 ["Utility"]
       37 GETTABLEKS                       R8 R9 K14 ["Flags"]
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
       63 GETTABLEKS                       R11 R0 K8 ["Utility"]
       65 GETTABLEKS                       R10 R11 K20 ["getMainGui"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K6 [require]
       70 GETTABLEKS                       R12 R0 K8 ["Utility"]
       72 GETTABLEKS                       R11 R12 K21 ["isPluginSecurity"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K6 [require]
       77 GETTABLEKS                       R13 R0 K8 ["Utility"]
       79 GETTABLEKS                       R12 R13 K22 ["withDefaults"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R13 K6 [require]
       84 GETTABLEKS                       R16 R0 K23 ["Providers"]
       86 GETTABLEKS                       R15 R16 K24 ["Style"]
       88 GETTABLEKS                       R14 R15 K25 ["StyleSheetContext"]
       90 CALL                             R13 1 1
       91 GETTABLEKS                       R12 R13 K26 ["useStyleSheet"]
       93 GETIMPORT                        R13 K6 [require]
       95 GETTABLEKS                       R15 R0 K27 ["Components"]
       97 GETTABLEKS                       R14 R15 K28 ["Types"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K6 [require]
      102 GETIMPORT                        R17 K1 [script]
      104 GETTABLEKS                       R16 R17 K4 ["Parent"]
      106 GETTABLEKS                       R15 R16 K29 ["OverlayContext"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K6 [require]
      111 GETIMPORT                        R18 K1 [script]
      113 GETTABLEKS                       R17 R18 K4 ["Parent"]
      115 GETTABLEKS                       R16 R17 K30 ["useKeyboardAwareSize"]
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
      147 CAPTURE                          VAL R7
      148 CAPTURE                          VAL R11
      149 CAPTURE                          VAL R18
      150 CAPTURE                          VAL R16
      151 CAPTURE                          VAL R15
      152 CAPTURE                          VAL R12
      153 CAPTURE                          VAL R19
      154 CAPTURE                          VAL R14
      155 CAPTURE                          VAL R17
      156 CAPTURE                          VAL R2
      157 RETURN                           R20 1
