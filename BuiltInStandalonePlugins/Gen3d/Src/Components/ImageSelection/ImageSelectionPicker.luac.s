PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["slot"]
        2 LOADB                            R2 0
        3 GETTABLEKS                       R3 R1 K1 ["status"]
        5 JUMPIFNOTEQKS                    R3 K2 ["Ready"] ; [+11]
        7 GETTABLEKS                       R4 R1 K3 ["thumbnailContent"]
        9 FASTCALL1                        TYPEOF R4 ; [+2]
       10 GETIMPORT                        R3 K5 [typeof]
       12 CALL                             R3 1 1
       13 JUMPIFEQKS                       R3 K6 ["string"] ; [+2]
       15 LOADB                            R2 0 +1
       16 LOADB                            R2 1
       17 LOADB                            R3 1
       18 GETTABLEKS                       R4 R1 K1 ["status"]
       20 JUMPIFEQKS                       R4 K7 ["Pending"] ; [+7]
       22 GETTABLEKS                       R4 R1 K1 ["status"]
       24 JUMPIFEQKS                       R4 K8 ["Generating"] ; [+2]
       26 LOADB                            R3 0 +1
       27 LOADB                            R3 1
       28 LOADB                            R4 1
       29 GETTABLEKS                       R5 R1 K1 ["status"]
       31 JUMPIFEQKS                       R5 K9 ["Failed"] ; [+7]
       33 GETTABLEKS                       R5 R1 K1 ["status"]
       35 JUMPIFEQKS                       R5 K10 ["Cancelled"] ; [+2]
       37 LOADB                            R4 0 +1
       38 LOADB                            R4 1
       39 GETTABLEKS                       R5 R0 K11 ["onSelect"]
       41 GETTABLEKS                       R6 R0 K12 ["onPreview"]
       43 GETTABLEKS                       R7 R0 K13 ["index"]
       45 GETUPVAL                         R8 0
       46 GETTABLEKS                       R8 R8 K14 ["useCallback"]
       48 NEWCLOSURE                       R9 P0
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R7
       52 NEWTABLE                         R10 0 3
       54 MOVE                             R11 R2
       55 MOVE                             R12 R5
       56 MOVE                             R13 R7
       57 SETLIST                          R10 R11 3 [1]
       59 CALL                             R8 2 1
       60 GETUPVAL                         R9 0
       61 GETTABLEKS                       R9 R9 K14 ["useCallback"]
       63 NEWCLOSURE                       R10 P1
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R7
       67 NEWTABLE                         R11 0 3
       69 MOVE                             R12 R2
       70 MOVE                             R13 R6
       71 MOVE                             R14 R7
       72 SETLIST                          R11 R12 3 [1]
       74 CALL                             R9 2 1
       75 GETUPVAL                         R10 1
       76 GETUPVAL                         R11 2
       77 DUPTABLE                         R12 K19 [{["tag"] = "size-full-0 bg-shift-200 radius-small", ["Size"], ["LayoutOrder"]}]
       78 GETIMPORT                        R13 K22 [UDim2.new]
       80 LOADK                            R14 K23 [0.5]
       81 LOADN                            R15 -4
       82 LOADN                            R16 0
       83 LOADN                            R17 96
       84 CALL                             R13 4 1
       85 SETTABLEKS                       R13 R12 K17 ["Size"]
       87 GETTABLEKS                       R13 R0 K18 ["LayoutOrder"]
       89 SETTABLEKS                       R13 R12 K18 ["LayoutOrder"]
       91 DUPTABLE                         R13 K27 [{"Preview", "PreviewButton", "Loading", "Failed"}]
       92 MOVE                             R14 R2
       93 JUMPIFNOT                        R14 ; [+25]
       94 GETUPVAL                         R14 1
       95 GETUPVAL                         R15 3
       96 DUPTABLE                         R16 K31 [{"tag", "Image", "ScaleType", "onActivated"}]
       97 NEWTABLE                         R17 2 0
       99 LOADB                            R18 1
      100 SETTABLEKS                       R18 R17 K32 ["size-full-full radius-small"]
      102 GETTABLEKS                       R18 R0 K33 ["isSelected"]
      104 SETTABLEKS                       R18 R17 K34 ["bg-action-soft-emphasis"]
      106 SETTABLEKS                       R17 R16 K15 ["tag"]
      108 GETTABLEKS                       R17 R1 K3 ["thumbnailContent"]
      110 SETTABLEKS                       R17 R16 K28 ["Image"]
      112 GETIMPORT                        R17 K37 [Enum.ScaleType.Fit]
      114 SETTABLEKS                       R17 R16 K29 ["ScaleType"]
      116 SETTABLEKS                       R8 R16 K30 ["onActivated"]
      118 CALL                             R14 2 1
      119 SETTABLEKS                       R14 R13 K24 ["Preview"]
      121 MOVE                             R14 R2
      122 JUMPIFNOT                        R14 ; [+50]
      123 GETUPVAL                         R14 1
      124 GETUPVAL                         R15 2
      125 DUPTABLE                         R16 K43 [{["tag"] = "auto-xy", ["AnchorPoint"], ["Position"], ["ZIndex"] = 2}]
      126 GETIMPORT                        R17 K45 [Vector2.new]
      128 LOADN                            R18 1
      129 LOADN                            R19 0
      130 CALL                             R17 2 1
      131 SETTABLEKS                       R17 R16 K39 ["AnchorPoint"]
      133 GETIMPORT                        R17 K22 [UDim2.new]
      135 LOADN                            R18 1
      136 LOADN                            R19 -4
      137 LOADN                            R20 0
      138 LOADN                            R21 4
      139 CALL                             R17 4 1
      140 SETTABLEKS                       R17 R16 K40 ["Position"]
      142 DUPTABLE                         R17 K47 [{"Button"}]
      143 GETUPVAL                         R18 1
      144 GETUPVAL                         R19 4
      145 DUPTABLE                         R20 K50 [{"icon", "size", "onActivated"}]
      146 DUPTABLE                         R21 K52 [{"name"}]
      147 GETUPVAL                         R22 5
      148 GETTABLEKS                       R22 R22 K53 ["Enums"]
      150 GETTABLEKS                       R22 R22 K54 ["IconName"]
      152 GETTABLEKS                       R22 R22 K55 ["MagnifyingGlassPlus"]
      154 SETTABLEKS                       R22 R21 K51 ["name"]
      156 SETTABLEKS                       R21 R20 K48 ["icon"]
      158 GETUPVAL                         R21 5
      159 GETTABLEKS                       R21 R21 K53 ["Enums"]
      161 GETTABLEKS                       R21 R21 K56 ["InputSize"]
      163 GETTABLEKS                       R21 R21 K57 ["XSmall"]
      165 SETTABLEKS                       R21 R20 K49 ["size"]
      167 SETTABLEKS                       R9 R20 K30 ["onActivated"]
      169 CALL                             R18 2 1
      170 SETTABLEKS                       R18 R17 K46 ["Button"]
      172 CALL                             R14 3 1
      173 SETTABLEKS                       R14 R13 K25 ["PreviewButton"]
      175 MOVE                             R14 R3
      176 JUMPIFNOT                        R14 ; [+19]
      177 GETUPVAL                         R14 1
      178 GETUPVAL                         R15 6
      179 DUPTABLE                         R16 K60 [{["tag"] = "size-full-full", ["radius"]}]
      180 GETUPVAL                         R17 5
      181 GETTABLEKS                       R17 R17 K53 ["Enums"]
      183 GETTABLEKS                       R17 R17 K61 ["Radius"]
      185 GETTABLEKS                       R17 R17 K62 ["Small"]
      187 SETTABLEKS                       R17 R16 K59 ["radius"]
      189 DUPTABLE                         R17 K64 [{"Shimmer"}]
      190 GETUPVAL                         R18 1
      191 GETUPVAL                         R19 7
      192 CALL                             R18 1 1
      193 SETTABLEKS                       R18 R17 K63 ["Shimmer"]
      195 CALL                             R14 3 1
      196 SETTABLEKS                       R14 R13 K26 ["Loading"]
      198 MOVE                             R14 R4
      199 JUMPIFNOT                        R14 ; [+11]
      200 GETUPVAL                         R14 1
      201 GETUPVAL                         R15 8
      202 DUPTABLE                         R16 K69 [{["tag"] = "size-full-full align-x-center align-y-center text-body-small text-emphasis-muted padding-x-small", ["Text"], ["TextWrapped"] = True}]
      203 GETTABLEKS                       R17 R1 K70 ["errorMessage"]
      205 JUMPIF                           R17 ; [+2]
      206 GETTABLEKS                       R17 R0 K71 ["defaultFailedText"]
      208 SETTABLEKS                       R17 R16 K66 ["Text"]
      210 CALL                             R14 2 1
      211 SETTABLEKS                       R14 R13 K9 ["Failed"]
      213 CALL                             R10 3 -1
      214 RETURN                           R10 -1

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["onSelect"]
        4 JUMPIF                           R2 ; [+1]
        5 DUPCLOSURE                       R2 K1 [PROTO_3]
        6 GETTABLEKS                       R3 R0 K2 ["onPreview"]
        8 JUMPIF                           R3 ; [+1]
        9 DUPCLOSURE                       R3 K3 [PROTO_4]
       10 GETTABLEKS                       R4 R0 K4 ["selectedIndex"]
       12 GETTABLEKS                       R5 R0 K5 ["headerText"]
       14 GETTABLEKS                       R6 R0 K6 ["slots"]
       16 DUPTABLE                         R7 K8 [{"Layout"}]
       17 GETUPVAL                         R8 1
       18 LOADK                            R9 K9 ["UIGridLayout"]
       19 DUPTABLE                         R10 K15 [{"CellSize", "CellPadding", "FillDirection", "SortOrder", "HorizontalAlignment"}]
       20 GETIMPORT                        R11 K18 [UDim2.new]
       22 LOADK                            R12 K19 [0.5]
       23 LOADN                            R13 -4
       24 LOADN                            R14 0
       25 LOADN                            R15 96
       26 CALL                             R11 4 1
       27 SETTABLEKS                       R11 R10 K10 ["CellSize"]
       29 GETIMPORT                        R11 K21 [UDim2.fromOffset]
       31 LOADN                            R12 8
       32 LOADN                            R13 8
       33 CALL                             R11 2 1
       34 SETTABLEKS                       R11 R10 K11 ["CellPadding"]
       36 GETIMPORT                        R11 K24 [Enum.FillDirection.Horizontal]
       38 SETTABLEKS                       R11 R10 K12 ["FillDirection"]
       40 GETIMPORT                        R11 K26 [Enum.SortOrder.LayoutOrder]
       42 SETTABLEKS                       R11 R10 K13 ["SortOrder"]
       44 GETIMPORT                        R11 K28 [Enum.HorizontalAlignment.Left]
       46 SETTABLEKS                       R11 R10 K14 ["HorizontalAlignment"]
       48 CALL                             R8 2 1
       49 SETTABLEKS                       R8 R7 K7 ["Layout"]
       51 LOADN                            R10 1
       52 LOADN                            R8 4
       53 LOADN                            R9 1
       54 FORNPREP                         R8
       55 GETTABLE                         R11 R6 R10
       56 JUMPIF                           R11 ; [+1]
       57 DUPTABLE                         R11 K31 [{["status"] = "Pending"}]
       58 LOADK                            R12 K32 ["Slot_%*"]
       59 MOVE                             R14 R10
       60 NAMECALL                         R12 R12 K33 ["format"]
       62 CALL                             R12 2 1
       63 GETUPVAL                         R13 1
       64 GETUPVAL                         R14 2
       65 DUPTABLE                         R15 K38 [{"slot", "index", "onSelect", "onPreview", "isSelected", "defaultFailedText", "LayoutOrder"}]
       66 SETTABLEKS                       R11 R15 K34 ["slot"]
       68 SETTABLEKS                       R10 R15 K35 ["index"]
       70 SETTABLEKS                       R2 R15 K0 ["onSelect"]
       72 SETTABLEKS                       R3 R15 K2 ["onPreview"]
       74 JUMPIFEQ                         R4 R10 ; [+2]
       76 LOADB                            R16 0 +1
       77 LOADB                            R16 1
       78 SETTABLEKS                       R16 R15 K36 ["isSelected"]
       80 GETTABLEKS                       R16 R0 K37 ["defaultFailedText"]
       82 SETTABLEKS                       R16 R15 K37 ["defaultFailedText"]
       84 MOVE                             R16 R1
       85 CALL                             R16 0 1
       86 SETTABLEKS                       R16 R15 K25 ["LayoutOrder"]
       88 CALL                             R13 2 1
       89 SETTABLE                         R13 R7 R12
       90 FORNLOOP                         R8
       91 GETUPVAL                         R8 1
       92 GETUPVAL                         R9 3
       93 DUPTABLE                         R10 K41 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
       94 GETTABLEKS                       R11 R0 K25 ["LayoutOrder"]
       96 SETTABLEKS                       R11 R10 K25 ["LayoutOrder"]
       98 DUPTABLE                         R11 K44 [{"Header", "Grid"}]
       99 LENGTH                           R13 R5
      100 LOADN                            R14 0
      101 JUMPIFNOTLT                      R14 R13 ; [+12]
      103 GETUPVAL                         R12 1
      104 GETUPVAL                         R13 4
      105 DUPTABLE                         R14 K47 [{["tag"] = "size-full-0 auto-y text-body-medium text-emphasis-primary padding-y-small text-align-x-left", ["Text"], ["LayoutOrder"]}]
      106 SETTABLEKS                       R5 R14 K46 ["Text"]
      108 MOVE                             R15 R1
      109 CALL                             R15 0 1
      110 SETTABLEKS                       R15 R14 K25 ["LayoutOrder"]
      112 CALL                             R12 2 1
      113 JUMP                             ; [+1]
      114 LOADNIL                          R12
      115 SETTABLEKS                       R12 R11 K42 ["Header"]
      117 GETUPVAL                         R12 1
      118 GETUPVAL                         R13 3
      119 DUPTABLE                         R14 K49 [{["tag"] = "size-full-0 auto-y", ["LayoutOrder"]}]
      120 MOVE                             R15 R1
      121 CALL                             R15 0 1
      122 SETTABLEKS                       R15 R14 K25 ["LayoutOrder"]
      124 MOVE                             R15 R7
      125 CALL                             R12 3 1
      126 SETTABLEKS                       R12 R11 K43 ["Grid"]
      128 CALL                             R8 3 -1
      129 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3d"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Components"]
       34 GETTABLEKS                       R5 R5 K12 ["ShimmerGradient"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R1 K13 ["IconButton"]
       39 GETTABLEKS                       R6 R1 K14 ["Image"]
       41 GETTABLEKS                       R7 R1 K15 ["Skeleton"]
       43 GETTABLEKS                       R8 R1 K16 ["Text"]
       45 GETTABLEKS                       R9 R1 K17 ["View"]
       47 GETTABLEKS                       R10 R3 K18 ["createNextOrder"]
       49 GETTABLEKS                       R11 R2 K19 ["createElement"]
       51 DUPCLOSURE                       R12 K20 [PROTO_2]
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R11
       54 CAPTURE                          VAL R9
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R8
       61 DUPCLOSURE                       R13 K21 [PROTO_5]
       62 CAPTURE                          VAL R10
       63 CAPTURE                          VAL R11
       64 CAPTURE                          VAL R12
       65 CAPTURE                          VAL R9
       66 CAPTURE                          VAL R8
       67 RETURN                           R13 1
