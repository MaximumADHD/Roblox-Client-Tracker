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
      122 JUMPIFNOT                        R14 ; [+63]
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
      148 GETTABLEKS                       R23 R23 K53 ["getFFlagAssistantImageGenImprovements"]
      150 CALL                             R23 0 1
      151 JUMPIFNOT                        R23 ; [+8]
      152 GETUPVAL                         R22 6
      153 GETTABLEKS                       R22 R22 K54 ["Enums"]
      155 GETTABLEKS                       R22 R22 K55 ["IconName"]
      157 GETTABLEKS                       R22 R22 K56 ["MagnifyingGlassPlus"]
      159 JUMP                             ; [+7]
      160 GETUPVAL                         R22 6
      161 GETTABLEKS                       R22 R22 K54 ["Enums"]
      163 GETTABLEKS                       R22 R22 K55 ["IconName"]
      165 GETTABLEKS                       R22 R22 K57 ["PlusSmall"]
      167 SETTABLEKS                       R22 R21 K51 ["name"]
      169 SETTABLEKS                       R21 R20 K48 ["icon"]
      171 GETUPVAL                         R21 6
      172 GETTABLEKS                       R21 R21 K54 ["Enums"]
      174 GETTABLEKS                       R21 R21 K58 ["InputSize"]
      176 GETTABLEKS                       R21 R21 K59 ["XSmall"]
      178 SETTABLEKS                       R21 R20 K49 ["size"]
      180 SETTABLEKS                       R9 R20 K30 ["onActivated"]
      182 CALL                             R18 2 1
      183 SETTABLEKS                       R18 R17 K46 ["Button"]
      185 CALL                             R14 3 1
      186 SETTABLEKS                       R14 R13 K25 ["PreviewButton"]
      188 MOVE                             R14 R3
      189 JUMPIFNOT                        R14 ; [+19]
      190 GETUPVAL                         R14 1
      191 GETUPVAL                         R15 7
      192 DUPTABLE                         R16 K62 [{["tag"] = "size-full-full", ["radius"]}]
      193 GETUPVAL                         R17 6
      194 GETTABLEKS                       R17 R17 K54 ["Enums"]
      196 GETTABLEKS                       R17 R17 K63 ["Radius"]
      198 GETTABLEKS                       R17 R17 K64 ["Small"]
      200 SETTABLEKS                       R17 R16 K61 ["radius"]
      202 DUPTABLE                         R17 K66 [{"Shimmer"}]
      203 GETUPVAL                         R18 1
      204 GETUPVAL                         R19 8
      205 CALL                             R18 1 1
      206 SETTABLEKS                       R18 R17 K65 ["Shimmer"]
      208 CALL                             R14 3 1
      209 SETTABLEKS                       R14 R13 K26 ["Loading"]
      211 MOVE                             R14 R4
      212 JUMPIFNOT                        R14 ; [+11]
      213 GETUPVAL                         R14 1
      214 GETUPVAL                         R15 9
      215 DUPTABLE                         R16 K71 [{["tag"] = "size-full-full align-x-center align-y-center text-body-small text-emphasis-muted padding-x-small", ["Text"], ["TextWrapped"] = True}]
      216 GETTABLEKS                       R17 R1 K72 ["errorMessage"]
      218 JUMPIF                           R17 ; [+2]
      219 GETTABLEKS                       R17 R0 K73 ["defaultFailedText"]
      221 SETTABLEKS                       R17 R16 K68 ["Text"]
      223 CALL                             R14 2 1
      224 SETTABLEKS                       R14 R13 K9 ["Failed"]
      226 CALL                             R10 3 -1
      227 RETURN                           R10 -1

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
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K13 ["Bin"]
       41 GETTABLEKS                       R6 R6 K14 ["Common"]
       43 GETTABLEKS                       R6 R6 K15 ["defineLuaFlags"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R1 K16 ["IconButton"]
       48 GETTABLEKS                       R7 R1 K17 ["Image"]
       50 GETTABLEKS                       R8 R1 K18 ["Skeleton"]
       52 GETTABLEKS                       R9 R1 K19 ["Text"]
       54 GETTABLEKS                       R10 R1 K20 ["View"]
       56 GETTABLEKS                       R11 R3 K21 ["createNextOrder"]
       58 GETTABLEKS                       R12 R2 K22 ["createElement"]
       60 DUPCLOSURE                       R13 K23 [PROTO_2]
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R12
       63 CAPTURE                          VAL R10
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R9
       71 DUPCLOSURE                       R14 K24 [PROTO_5]
       72 CAPTURE                          VAL R11
       73 CAPTURE                          VAL R12
       74 CAPTURE                          VAL R13
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R9
       77 RETURN                           R14 1
