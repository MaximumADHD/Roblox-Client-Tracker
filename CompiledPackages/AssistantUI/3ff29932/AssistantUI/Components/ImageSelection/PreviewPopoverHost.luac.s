PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["onClose"]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R4 R4 K1 ["useCallback"]
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          VAL R1
       11 NEWTABLE                         R6 0 1
       13 MOVE                             R7 R1
       14 SETLIST                          R6 R7 1 [1]
       16 CALL                             R4 2 1
       17 GETTABLEKS                       R5 R0 K2 ["visible"]
       19 JUMPIFNOT                        R5 ; [+18]
       20 LOADB                            R5 0
       21 GETTABLEKS                       R7 R0 K3 ["imageContent"]
       23 FASTCALL1                        TYPEOF R7 ; [+2]
       24 GETIMPORT                        R6 K5 [typeof]
       26 CALL                             R6 1 1
       27 JUMPIFNOTEQKS                    R6 K6 ["string"] ; [+10]
       29 LOADB                            R5 0
       30 GETTABLEKS                       R6 R0 K3 ["imageContent"]
       32 JUMPIFEQKS                       R6 K7 [""] ; [+5]
       34 JUMPIFNOTEQKNIL                  R2 ; [+2]
       36 LOADB                            R5 0 +1
       37 LOADB                            R5 1
       38 JUMPIF                           R5 ; [+2]
       39 LOADNIL                          R6
       40 RETURN                           R6 1
       41 GETTABLEKS                       R6 R0 K3 ["imageContent"]
       43 GETUPVAL                         R7 3
       44 GETUPVAL                         R8 4
       45 DUPTABLE                         R9 K14 [{["tag"] = "size-full-full", ["backgroundStyle"], ["onActivated"], ["ZIndex"] = 1000}]
       46 GETTABLEKS                       R10 R3 K15 ["Color"]
       48 GETTABLEKS                       R10 R10 K16 ["Common"]
       50 GETTABLEKS                       R10 R10 K17 ["Backdrop"]
       52 SETTABLEKS                       R10 R9 K10 ["backgroundStyle"]
       54 SETTABLEKS                       R4 R9 K11 ["onActivated"]
       56 DUPTABLE                         R10 K19 [{"Preview"}]
       57 GETUPVAL                         R12 5
       58 GETTABLEKS                       R12 R12 K20 ["FFlagAssistantImageGenImprovements"]
       60 JUMPIFNOT                        R12 ; [+107]
       61 GETUPVAL                         R11 3
       62 GETUPVAL                         R12 4
       63 DUPTABLE                         R13 K25 [{["tag"] = "anchor-center-center position-center-center", ["Size"], ["aspectRatio"], ["sizeConstraint"]}]
       64 GETIMPORT                        R14 K28 [UDim2.fromScale]
       66 LOADK                            R15 K29 [0.85]
       67 LOADK                            R16 K29 [0.85]
       68 CALL                             R14 2 1
       69 SETTABLEKS                       R14 R13 K22 ["Size"]
       71 DUPTABLE                         R14 K34 [{["AspectRatio"] = 1, ["AspectType"], ["DominantAxis"]}]
       72 GETIMPORT                        R15 K37 [Enum.AspectType.FitWithinMaxSize]
       74 SETTABLEKS                       R15 R14 K32 ["AspectType"]
       76 GETIMPORT                        R15 K39 [Enum.DominantAxis.Width]
       78 SETTABLEKS                       R15 R14 K33 ["DominantAxis"]
       80 SETTABLEKS                       R14 R13 K23 ["aspectRatio"]
       82 DUPTABLE                         R14 K41 [{"MaxSize"}]
       83 GETIMPORT                        R15 K44 [Vector2.new]
       85 LOADN                            R16 640
       86 LOADN                            R17 640
       87 CALL                             R15 2 1
       88 SETTABLEKS                       R15 R14 K40 ["MaxSize"]
       90 SETTABLEKS                       R14 R13 K24 ["sizeConstraint"]
       92 DUPTABLE                         R14 K47 [{"Image", "CloseButton"}]
       93 GETUPVAL                         R15 3
       94 GETUPVAL                         R16 6
       95 DUPTABLE                         R17 K50 [{["tag"] = "size-full-full bg-surface-200 radius-small", ["Image"], ["ScaleType"], ["ZIndex"] = 1}]
       96 SETTABLEKS                       R6 R17 K45 ["Image"]
       98 GETIMPORT                        R18 K52 [Enum.ScaleType.Fit]
      100 SETTABLEKS                       R18 R17 K49 ["ScaleType"]
      102 CALL                             R15 2 1
      103 SETTABLEKS                       R15 R14 K45 ["Image"]
      105 GETUPVAL                         R15 3
      106 GETUPVAL                         R16 4
      107 DUPTABLE                         R17 K57 [{["tag"] = "auto-xy", ["AnchorPoint"], ["Position"], ["ZIndex"] = 2}]
      108 GETIMPORT                        R18 K44 [Vector2.new]
      110 LOADN                            R19 1
      111 LOADN                            R20 0
      112 CALL                             R18 2 1
      113 SETTABLEKS                       R18 R17 K54 ["AnchorPoint"]
      115 GETIMPORT                        R18 K58 [UDim2.new]
      117 LOADN                            R19 1
      118 LOADN                            R20 -8
      119 LOADN                            R21 0
      120 LOADN                            R22 8
      121 CALL                             R18 4 1
      122 SETTABLEKS                       R18 R17 K55 ["Position"]
      124 DUPTABLE                         R18 K60 [{"Button"}]
      125 GETUPVAL                         R19 3
      126 GETUPVAL                         R20 7
      127 DUPTABLE                         R21 K64 [{"icon", "size", "variant", "onActivated"}]
      128 DUPTABLE                         R22 K66 [{"name"}]
      129 GETUPVAL                         R23 8
      130 GETTABLEKS                       R23 R23 K67 ["Enums"]
      132 GETTABLEKS                       R23 R23 K68 ["IconName"]
      134 GETTABLEKS                       R23 R23 K69 ["X"]
      136 SETTABLEKS                       R23 R22 K65 ["name"]
      138 SETTABLEKS                       R22 R21 K61 ["icon"]
      140 GETUPVAL                         R22 8
      141 GETTABLEKS                       R22 R22 K67 ["Enums"]
      143 GETTABLEKS                       R22 R22 K70 ["InputSize"]
      145 GETTABLEKS                       R22 R22 K71 ["XSmall"]
      147 SETTABLEKS                       R22 R21 K62 ["size"]
      149 GETUPVAL                         R22 8
      150 GETTABLEKS                       R22 R22 K67 ["Enums"]
      152 GETTABLEKS                       R22 R22 K72 ["ButtonVariant"]
      154 GETTABLEKS                       R22 R22 K73 ["Utility"]
      156 SETTABLEKS                       R22 R21 K63 ["variant"]
      158 SETTABLEKS                       R1 R21 K11 ["onActivated"]
      160 CALL                             R19 2 1
      161 SETTABLEKS                       R19 R18 K59 ["Button"]
      163 CALL                             R15 3 1
      164 SETTABLEKS                       R15 R14 K46 ["CloseButton"]
      166 CALL                             R11 3 1
      167 JUMP                             ; [+38]
      168 GETUPVAL                         R11 3
      169 GETUPVAL                         R12 6
      170 DUPTABLE                         R13 K76 [{["tag"] = "anchor-center-center position-center-center radius-small", ["Image"], ["BackgroundTransparency"] = 1, ["ScaleType"], ["Size"], ["ZIndex"] = 2, ["aspectRatio"], ["sizeConstraint"]}]
      171 SETTABLEKS                       R6 R13 K45 ["Image"]
      173 GETIMPORT                        R14 K52 [Enum.ScaleType.Fit]
      175 SETTABLEKS                       R14 R13 K49 ["ScaleType"]
      177 GETIMPORT                        R14 K28 [UDim2.fromScale]
      179 LOADK                            R15 K29 [0.85]
      180 LOADK                            R16 K29 [0.85]
      181 CALL                             R14 2 1
      182 SETTABLEKS                       R14 R13 K22 ["Size"]
      184 DUPTABLE                         R14 K34 [{["AspectRatio"] = 1, ["AspectType"], ["DominantAxis"]}]
      185 GETIMPORT                        R15 K37 [Enum.AspectType.FitWithinMaxSize]
      187 SETTABLEKS                       R15 R14 K32 ["AspectType"]
      189 GETIMPORT                        R15 K39 [Enum.DominantAxis.Width]
      191 SETTABLEKS                       R15 R14 K33 ["DominantAxis"]
      193 SETTABLEKS                       R14 R13 K23 ["aspectRatio"]
      195 DUPTABLE                         R14 K41 [{"MaxSize"}]
      196 GETIMPORT                        R15 K44 [Vector2.new]
      198 LOADN                            R16 640
      199 LOADN                            R17 640
      200 CALL                             R15 2 1
      201 SETTABLEKS                       R15 R14 K40 ["MaxSize"]
      203 SETTABLEKS                       R14 R13 K24 ["sizeConstraint"]
      205 CALL                             R11 2 1
      206 SETTABLEKS                       R11 R10 K18 ["Preview"]
      208 CALL                             R7 3 1
      209 GETUPVAL                         R8 9
      210 GETTABLEKS                       R8 R8 K77 ["createPortal"]
      212 MOVE                             R9 R7
      213 MOVE                             R10 R2
      214 CALL                             R8 2 -1
      215 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K7 ["Parent"]
       23 GETTABLEKS                       R4 R4 K9 ["React"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K7 ["Parent"]
       30 GETTABLEKS                       R5 R5 K10 ["ReactRoblox"]
       32 CALL                             R4 1 1
       33 GETTABLEKS                       R5 R2 K11 ["IconButton"]
       35 GETTABLEKS                       R6 R2 K12 ["Image"]
       37 GETTABLEKS                       R7 R2 K13 ["View"]
       39 GETTABLEKS                       R8 R2 K14 ["Hooks"]
       41 GETTABLEKS                       R8 R8 K15 ["useOverlay"]
       43 GETTABLEKS                       R9 R2 K14 ["Hooks"]
       45 GETTABLEKS                       R9 R9 K16 ["useTokens"]
       47 GETTABLEKS                       R10 R3 K17 ["createElement"]
       49 DUPCLOSURE                       R11 K18 [PROTO_1]
       50 CAPTURE                          VAL R8
       51 CAPTURE                          VAL R9
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R10
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R4
       60 RETURN                           R11 1
