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
      122 JUMPIFNOT                        R14 ; [+62]
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
      147 GETUPVAL                         R23 5
      148 GETTABLEKS                       R23 R23 K53 ["FFlagAssistantImageGenImprovements"]
      150 JUMPIFNOT                        R23 ; [+8]
      151 GETUPVAL                         R22 6
      152 GETTABLEKS                       R22 R22 K54 ["Enums"]
      154 GETTABLEKS                       R22 R22 K55 ["IconName"]
      156 GETTABLEKS                       R22 R22 K56 ["MagnifyingGlassPlus"]
      158 JUMP                             ; [+7]
      159 GETUPVAL                         R22 6
      160 GETTABLEKS                       R22 R22 K54 ["Enums"]
      162 GETTABLEKS                       R22 R22 K55 ["IconName"]
      164 GETTABLEKS                       R22 R22 K57 ["PlusSmall"]
      166 SETTABLEKS                       R22 R21 K51 ["name"]
      168 SETTABLEKS                       R21 R20 K48 ["icon"]
      170 GETUPVAL                         R21 6
      171 GETTABLEKS                       R21 R21 K54 ["Enums"]
      173 GETTABLEKS                       R21 R21 K58 ["InputSize"]
      175 GETTABLEKS                       R21 R21 K59 ["XSmall"]
      177 SETTABLEKS                       R21 R20 K49 ["size"]
      179 SETTABLEKS                       R9 R20 K30 ["onActivated"]
      181 CALL                             R18 2 1
      182 SETTABLEKS                       R18 R17 K46 ["Button"]
      184 CALL                             R14 3 1
      185 SETTABLEKS                       R14 R13 K25 ["PreviewButton"]
      187 MOVE                             R14 R3
      188 JUMPIFNOT                        R14 ; [+19]
      189 GETUPVAL                         R14 1
      190 GETUPVAL                         R15 7
      191 DUPTABLE                         R16 K62 [{["tag"] = "size-full-full", ["radius"]}]
      192 GETUPVAL                         R17 6
      193 GETTABLEKS                       R17 R17 K54 ["Enums"]
      195 GETTABLEKS                       R17 R17 K63 ["Radius"]
      197 GETTABLEKS                       R17 R17 K64 ["Small"]
      199 SETTABLEKS                       R17 R16 K61 ["radius"]
      201 DUPTABLE                         R17 K66 [{"Shimmer"}]
      202 GETUPVAL                         R18 1
      203 GETUPVAL                         R19 8
      204 CALL                             R18 1 1
      205 SETTABLEKS                       R18 R17 K65 ["Shimmer"]
      207 CALL                             R14 3 1
      208 SETTABLEKS                       R14 R13 K26 ["Loading"]
      210 MOVE                             R14 R4
      211 JUMPIFNOT                        R14 ; [+15]
      212 GETUPVAL                         R14 1
      213 GETUPVAL                         R15 9
      214 DUPTABLE                         R16 K71 [{["tag"] = "size-full-full align-x-center align-y-center text-body-small text-emphasis-muted padding-x-small", ["Text"], ["TextWrapped"] = True}]
      215 GETTABLEKS                       R17 R1 K72 ["errorMessage"]
      217 JUMPIF                           R17 ; [+6]
      218 GETUPVAL                         R17 10
      219 LOADK                            R19 K73 ["Gen3d"]
      220 LOADK                            R20 K74 ["ImageSelectionSlotFailed"]
      221 NAMECALL                         R17 R17 K75 ["getText"]
      223 CALL                             R17 3 1
      224 SETTABLEKS                       R17 R16 K68 ["Text"]
      226 CALL                             R14 2 1
      227 SETTABLEKS                       R14 R13 K9 ["Failed"]
      229 CALL                             R10 3 -1
      230 RETURN                           R10 -1

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
       12 GETTABLEKS                       R6 R0 K5 ["headerText"]
       14 JUMPIFEQKNIL                     R6 ; [+4]
       16 GETTABLEKS                       R5 R0 K5 ["headerText"]
       18 JUMP                             ; [+6]
       19 GETUPVAL                         R5 1
       20 LOADK                            R7 K6 ["Gen3d"]
       21 LOADK                            R8 K7 ["ImageSelectionHeader"]
       22 NAMECALL                         R5 R5 K8 ["getText"]
       24 CALL                             R5 3 1
       25 GETTABLEKS                       R6 R0 K9 ["slots"]
       27 DUPTABLE                         R7 K11 [{"Layout"}]
       28 GETUPVAL                         R8 2
       29 LOADK                            R9 K12 ["UIGridLayout"]
       30 DUPTABLE                         R10 K18 [{"CellSize", "CellPadding", "FillDirection", "SortOrder", "HorizontalAlignment"}]
       31 GETIMPORT                        R11 K21 [UDim2.new]
       33 LOADK                            R12 K22 [0.5]
       34 LOADN                            R13 -4
       35 LOADN                            R14 0
       36 LOADN                            R15 96
       37 CALL                             R11 4 1
       38 SETTABLEKS                       R11 R10 K13 ["CellSize"]
       40 GETIMPORT                        R11 K24 [UDim2.fromOffset]
       42 LOADN                            R12 8
       43 LOADN                            R13 8
       44 CALL                             R11 2 1
       45 SETTABLEKS                       R11 R10 K14 ["CellPadding"]
       47 GETIMPORT                        R11 K27 [Enum.FillDirection.Horizontal]
       49 SETTABLEKS                       R11 R10 K15 ["FillDirection"]
       51 GETIMPORT                        R11 K29 [Enum.SortOrder.LayoutOrder]
       53 SETTABLEKS                       R11 R10 K16 ["SortOrder"]
       55 GETIMPORT                        R11 K31 [Enum.HorizontalAlignment.Left]
       57 SETTABLEKS                       R11 R10 K17 ["HorizontalAlignment"]
       59 CALL                             R8 2 1
       60 SETTABLEKS                       R8 R7 K10 ["Layout"]
       62 LOADN                            R10 1
       63 LOADN                            R8 4
       64 LOADN                            R9 1
       65 FORNPREP                         R8
       66 GETTABLE                         R11 R6 R10
       67 JUMPIF                           R11 ; [+1]
       68 DUPTABLE                         R11 K34 [{["status"] = "Pending"}]
       69 LOADK                            R13 K35 ["Slot_%*"]
       70 MOVE                             R15 R10
       71 NAMECALL                         R13 R13 K36 ["format"]
       73 CALL                             R13 2 1
       74 MOVE                             R12 R13
       75 GETUPVAL                         R13 2
       76 GETUPVAL                         R14 3
       77 DUPTABLE                         R15 K40 [{"slot", "index", "onSelect", "onPreview", "isSelected", "LayoutOrder"}]
       78 SETTABLEKS                       R11 R15 K37 ["slot"]
       80 SETTABLEKS                       R10 R15 K38 ["index"]
       82 SETTABLEKS                       R2 R15 K0 ["onSelect"]
       84 SETTABLEKS                       R3 R15 K2 ["onPreview"]
       86 JUMPIFEQ                         R4 R10 ; [+2]
       88 LOADB                            R16 0 +1
       89 LOADB                            R16 1
       90 SETTABLEKS                       R16 R15 K39 ["isSelected"]
       92 MOVE                             R16 R1
       93 CALL                             R16 0 1
       94 SETTABLEKS                       R16 R15 K28 ["LayoutOrder"]
       96 CALL                             R13 2 1
       97 SETTABLE                         R13 R7 R12
       98 FORNLOOP                         R8
       99 GETUPVAL                         R8 2
      100 GETUPVAL                         R9 4
      101 DUPTABLE                         R10 K43 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      102 GETTABLEKS                       R11 R0 K28 ["LayoutOrder"]
      104 SETTABLEKS                       R11 R10 K28 ["LayoutOrder"]
      106 DUPTABLE                         R11 K46 [{"Header", "Grid"}]
      107 LENGTH                           R13 R5
      108 LOADN                            R14 0
      109 JUMPIFNOTLT                      R14 R13 ; [+12]
      111 GETUPVAL                         R12 2
      112 GETUPVAL                         R13 5
      113 DUPTABLE                         R14 K49 [{["tag"] = "size-full-0 auto-y text-body-medium text-emphasis-primary padding-y-small text-align-x-left", ["Text"], ["LayoutOrder"]}]
      114 SETTABLEKS                       R5 R14 K48 ["Text"]
      116 MOVE                             R15 R1
      117 CALL                             R15 0 1
      118 SETTABLEKS                       R15 R14 K28 ["LayoutOrder"]
      120 CALL                             R12 2 1
      121 JUMP                             ; [+1]
      122 LOADNIL                          R12
      123 SETTABLEKS                       R12 R11 K44 ["Header"]
      125 GETUPVAL                         R12 2
      126 GETUPVAL                         R13 4
      127 DUPTABLE                         R14 K51 [{["tag"] = "size-full-0 auto-y", ["LayoutOrder"]}]
      128 MOVE                             R15 R1
      129 CALL                             R15 0 1
      130 SETTABLEKS                       R15 R14 K28 ["LayoutOrder"]
      132 MOVE                             R15 R7
      133 CALL                             R12 3 1
      134 SETTABLEKS                       R12 R11 K45 ["Grid"]
      136 CALL                             R8 3 -1
      137 RETURN                           R8 -1

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
       30 GETTABLEKS                       R5 R5 K10 ["ReactUtils"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K11 ["Components"]
       37 GETTABLEKS                       R6 R6 K12 ["ShimmerGradient"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K13 ["Resources"]
       44 GETTABLEKS                       R7 R7 K14 ["Localization"]
       46 GETTABLEKS                       R7 R7 K15 ["Translator"]
       48 CALL                             R6 1 1
       49 GETTABLEKS                       R7 R2 K16 ["IconButton"]
       51 GETTABLEKS                       R8 R2 K17 ["Image"]
       53 GETTABLEKS                       R9 R2 K18 ["Skeleton"]
       55 GETTABLEKS                       R10 R2 K19 ["Text"]
       57 GETTABLEKS                       R11 R2 K20 ["View"]
       59 GETTABLEKS                       R12 R4 K21 ["createNextOrder"]
       61 GETTABLEKS                       R13 R3 K22 ["createElement"]
       63 DUPCLOSURE                       R14 K23 [PROTO_2]
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R13
       66 CAPTURE                          VAL R11
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R10
       74 CAPTURE                          VAL R6
       75 DUPCLOSURE                       R15 K24 [PROTO_5]
       76 CAPTURE                          VAL R12
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R13
       79 CAPTURE                          VAL R14
       80 CAPTURE                          VAL R11
       81 CAPTURE                          VAL R10
       82 RETURN                           R15 1
