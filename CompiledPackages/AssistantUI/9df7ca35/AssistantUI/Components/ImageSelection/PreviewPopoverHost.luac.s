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
       57 GETUPVAL                         R11 3
       58 GETUPVAL                         R12 4
       59 DUPTABLE                         R13 K24 [{["tag"] = "anchor-center-center position-center-center", ["Size"], ["aspectRatio"], ["sizeConstraint"]}]
       60 GETIMPORT                        R14 K27 [UDim2.fromScale]
       62 LOADK                            R15 K28 [0.85]
       63 LOADK                            R16 K28 [0.85]
       64 CALL                             R14 2 1
       65 SETTABLEKS                       R14 R13 K21 ["Size"]
       67 DUPTABLE                         R14 K33 [{["AspectRatio"] = 1, ["AspectType"], ["DominantAxis"]}]
       68 GETIMPORT                        R15 K36 [Enum.AspectType.FitWithinMaxSize]
       70 SETTABLEKS                       R15 R14 K31 ["AspectType"]
       72 GETIMPORT                        R15 K38 [Enum.DominantAxis.Width]
       74 SETTABLEKS                       R15 R14 K32 ["DominantAxis"]
       76 SETTABLEKS                       R14 R13 K22 ["aspectRatio"]
       78 DUPTABLE                         R14 K40 [{"MaxSize"}]
       79 GETIMPORT                        R15 K43 [Vector2.new]
       81 LOADN                            R16 640
       82 LOADN                            R17 640
       83 CALL                             R15 2 1
       84 SETTABLEKS                       R15 R14 K39 ["MaxSize"]
       86 SETTABLEKS                       R14 R13 K23 ["sizeConstraint"]
       88 DUPTABLE                         R14 K46 [{"Image", "CloseButton"}]
       89 GETUPVAL                         R15 3
       90 GETUPVAL                         R16 5
       91 DUPTABLE                         R17 K49 [{["tag"] = "size-full-full bg-surface-200 radius-small", ["Image"], ["ScaleType"], ["ZIndex"] = 1}]
       92 SETTABLEKS                       R6 R17 K44 ["Image"]
       94 GETIMPORT                        R18 K51 [Enum.ScaleType.Fit]
       96 SETTABLEKS                       R18 R17 K48 ["ScaleType"]
       98 CALL                             R15 2 1
       99 SETTABLEKS                       R15 R14 K44 ["Image"]
      101 GETUPVAL                         R15 3
      102 GETUPVAL                         R16 4
      103 DUPTABLE                         R17 K56 [{["tag"] = "auto-xy", ["AnchorPoint"], ["Position"], ["ZIndex"] = 2}]
      104 GETIMPORT                        R18 K43 [Vector2.new]
      106 LOADN                            R19 1
      107 LOADN                            R20 0
      108 CALL                             R18 2 1
      109 SETTABLEKS                       R18 R17 K53 ["AnchorPoint"]
      111 GETIMPORT                        R18 K57 [UDim2.new]
      113 LOADN                            R19 1
      114 LOADN                            R20 -8
      115 LOADN                            R21 0
      116 LOADN                            R22 8
      117 CALL                             R18 4 1
      118 SETTABLEKS                       R18 R17 K54 ["Position"]
      120 DUPTABLE                         R18 K59 [{"Button"}]
      121 GETUPVAL                         R19 3
      122 GETUPVAL                         R20 6
      123 DUPTABLE                         R21 K63 [{"icon", "size", "variant", "onActivated"}]
      124 DUPTABLE                         R22 K65 [{"name"}]
      125 GETUPVAL                         R23 7
      126 GETTABLEKS                       R23 R23 K66 ["Enums"]
      128 GETTABLEKS                       R23 R23 K67 ["IconName"]
      130 GETTABLEKS                       R23 R23 K68 ["X"]
      132 SETTABLEKS                       R23 R22 K64 ["name"]
      134 SETTABLEKS                       R22 R21 K60 ["icon"]
      136 GETUPVAL                         R22 7
      137 GETTABLEKS                       R22 R22 K66 ["Enums"]
      139 GETTABLEKS                       R22 R22 K69 ["InputSize"]
      141 GETTABLEKS                       R22 R22 K70 ["XSmall"]
      143 SETTABLEKS                       R22 R21 K61 ["size"]
      145 GETUPVAL                         R22 7
      146 GETTABLEKS                       R22 R22 K66 ["Enums"]
      148 GETTABLEKS                       R22 R22 K71 ["ButtonVariant"]
      150 GETTABLEKS                       R22 R22 K72 ["Utility"]
      152 SETTABLEKS                       R22 R21 K62 ["variant"]
      154 SETTABLEKS                       R1 R21 K11 ["onActivated"]
      156 CALL                             R19 2 1
      157 SETTABLEKS                       R19 R18 K58 ["Button"]
      159 CALL                             R15 3 1
      160 SETTABLEKS                       R15 R14 K45 ["CloseButton"]
      162 CALL                             R11 3 1
      163 SETTABLEKS                       R11 R10 K18 ["Preview"]
      165 CALL                             R7 3 1
      166 GETUPVAL                         R8 8
      167 GETTABLEKS                       R8 R8 K73 ["createPortal"]
      169 MOVE                             R9 R7
      170 MOVE                             R10 R2
      171 CALL                             R8 2 -1
      172 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactRoblox"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K10 ["IconButton"]
       30 GETTABLEKS                       R5 R1 K11 ["Image"]
       32 GETTABLEKS                       R6 R1 K12 ["View"]
       34 GETTABLEKS                       R7 R1 K13 ["Hooks"]
       36 GETTABLEKS                       R7 R7 K14 ["useOverlay"]
       38 GETTABLEKS                       R8 R1 K13 ["Hooks"]
       40 GETTABLEKS                       R8 R8 K15 ["useTokens"]
       42 GETTABLEKS                       R9 R2 K16 ["createElement"]
       44 DUPCLOSURE                       R10 K17 [PROTO_1]
       45 CAPTURE                          VAL R7
       46 CAPTURE                          VAL R8
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R9
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R3
       54 RETURN                           R10 1
