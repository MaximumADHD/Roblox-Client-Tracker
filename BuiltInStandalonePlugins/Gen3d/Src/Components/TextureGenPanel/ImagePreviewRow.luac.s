PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onSelect"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["Enums"]
        5 GETTABLEKS                       R3 R3 K1 ["ControlState"]
        7 GETTABLEKS                       R3 R3 K2 ["Hover"]
        9 JUMPIFEQ                         R0 R3 ; [+12]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K0 ["Enums"]
       14 GETTABLEKS                       R3 R3 K1 ["ControlState"]
       16 GETTABLEKS                       R3 R3 K3 ["Pressed"]
       18 JUMPIFEQ                         R0 R3 ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["useState"]
        9 LOADB                            R3 0
       10 CALL                             R2 1 2
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K3 ["useRef"]
       14 LOADNIL                          R5
       15 CALL                             R4 1 1
       16 GETTABLEKS                       R5 R0 K4 ["slot"]
       18 GETTABLEKS                       R6 R0 K5 ["index"]
       20 LOADB                            R7 0
       21 GETTABLEKS                       R8 R5 K6 ["status"]
       23 JUMPIFNOTEQKS                    R8 K7 ["Ready"] ; [+7]
       25 GETTABLEKS                       R8 R5 K8 ["thumbnailContent"]
       27 JUMPIFNOTEQKNIL                  R8 ; [+2]
       29 LOADB                            R7 0 +1
       30 LOADB                            R7 1
       31 LOADB                            R8 1
       32 GETTABLEKS                       R9 R5 K6 ["status"]
       34 JUMPIFEQKS                       R9 K9 ["Failed"] ; [+7]
       36 GETTABLEKS                       R9 R5 K6 ["status"]
       38 JUMPIFEQKS                       R9 K10 ["Cancelled"] ; [+2]
       40 LOADB                            R8 0 +1
       41 LOADB                            R8 1
       42 GETUPVAL                         R9 1
       43 GETTABLEKS                       R9 R9 K11 ["createElement"]
       45 GETUPVAL                         R10 0
       46 GETTABLEKS                       R10 R10 K12 ["View"]
       48 DUPTABLE                         R11 K20 [{["ref"], ["LayoutOrder"], ["Size"], ["tag"] = "radius-medium bg-surface-200", ["stroke"], ["testId"]}]
       49 SETTABLEKS                       R4 R11 K13 ["ref"]
       51 SETTABLEKS                       R6 R11 K14 ["LayoutOrder"]
       53 GETIMPORT                        R12 K23 [UDim2.new]
       55 LOADK                            R13 K24 [0.333333333333333]
       56 LOADN                            R14 -6
       57 LOADN                            R15 0
       58 LOADN                            R16 90
       59 CALL                             R12 4 1
       60 SETTABLEKS                       R12 R11 K15 ["Size"]
       62 GETTABLEKS                       R13 R0 K25 ["selected"]
       64 JUMPIFNOT                        R13 ; [+12]
       65 DUPTABLE                         R12 K29 [{["Color"], ["Thickness"] = 2}]
       66 GETTABLEKS                       R13 R1 K26 ["Color"]
       68 GETTABLEKS                       R13 R13 K30 ["Content"]
       70 GETTABLEKS                       R13 R13 K31 ["Emphasis"]
       72 GETTABLEKS                       R13 R13 K32 ["Color3"]
       74 SETTABLEKS                       R13 R12 K26 ["Color"]
       76 JUMP                             ; [+1]
       77 LOADNIL                          R12
       78 SETTABLEKS                       R12 R11 K18 ["stroke"]
       80 LOADK                            R12 K33 ["ImagePreviewSlot%*"]
       81 MOVE                             R14 R6
       82 NAMECALL                         R12 R12 K34 ["format"]
       84 CALL                             R12 2 1
       85 SETTABLEKS                       R12 R11 K19 ["testId"]
       87 DUPTABLE                         R12 K39 [{"Image", "HoverPreview", "Loading", "Error"}]
       88 JUMPIFNOT                        R7 ; [+27]
       89 GETUPVAL                         R13 1
       90 GETTABLEKS                       R13 R13 K11 ["createElement"]
       92 GETUPVAL                         R14 0
       93 GETTABLEKS                       R14 R14 K35 ["Image"]
       95 DUPTABLE                         R15 K44 [{["Image"], ["ScaleType"], ["tag"] = "size-full radius-medium", ["onActivated"], ["onStateChanged"]}]
       96 GETTABLEKS                       R16 R5 K8 ["thumbnailContent"]
       98 SETTABLEKS                       R16 R15 K35 ["Image"]
      100 GETIMPORT                        R16 K47 [Enum.ScaleType.Fit]
      102 SETTABLEKS                       R16 R15 K40 ["ScaleType"]
      104 NEWCLOSURE                       R16 P0
      105 CAPTURE                          VAL R0
      106 CAPTURE                          VAL R6
      107 SETTABLEKS                       R16 R15 K42 ["onActivated"]
      109 NEWCLOSURE                       R16 P1
      110 CAPTURE                          VAL R3
      111 CAPTURE                          UPVAL U0
      112 SETTABLEKS                       R16 R15 K43 ["onStateChanged"]
      114 CALL                             R13 2 1
      115 JUMP                             ; [+1]
      116 LOADNIL                          R13
      117 SETTABLEKS                       R13 R12 K35 ["Image"]
      119 JUMPIFNOT                        R7 ; [+84]
      120 JUMPIFNOT                        R2 ; [+83]
      121 GETUPVAL                         R13 1
      122 GETTABLEKS                       R13 R13 K11 ["createElement"]
      124 GETUPVAL                         R14 0
      125 GETTABLEKS                       R14 R14 K48 ["Popover"]
      127 GETTABLEKS                       R14 R14 K49 ["Root"]
      129 DUPTABLE                         R15 K52 [{["isOpen"] = True}]
      130 DUPTABLE                         R16 K54 [{"Anchor", "Content"}]
      131 GETUPVAL                         R17 1
      132 GETTABLEKS                       R17 R17 K11 ["createElement"]
      134 GETUPVAL                         R18 0
      135 GETTABLEKS                       R18 R18 K48 ["Popover"]
      137 GETTABLEKS                       R18 R18 K53 ["Anchor"]
      139 DUPTABLE                         R19 K56 [{"anchorRef"}]
      140 SETTABLEKS                       R4 R19 K55 ["anchorRef"]
      142 CALL                             R17 2 1
      143 SETTABLEKS                       R17 R16 K53 ["Anchor"]
      145 GETUPVAL                         R17 1
      146 GETTABLEKS                       R17 R17 K11 ["createElement"]
      148 GETUPVAL                         R18 0
      149 GETTABLEKS                       R18 R18 K48 ["Popover"]
      151 GETTABLEKS                       R18 R18 K30 ["Content"]
      153 DUPTABLE                         R19 K61 [{["side"], ["hasArrow"] = False, ["selectionGroup"] = False}]
      154 DUPTABLE                         R20 K65 [{["position"], ["offset"] = 16}]
      155 GETUPVAL                         R21 0
      156 GETTABLEKS                       R21 R21 K66 ["Enums"]
      158 GETTABLEKS                       R21 R21 K67 ["PopoverSide"]
      160 GETTABLEKS                       R21 R21 K68 ["Top"]
      162 SETTABLEKS                       R21 R20 K62 ["position"]
      164 SETTABLEKS                       R20 R19 K57 ["side"]
      166 DUPTABLE                         R20 K69 [{"Image"}]
      167 GETUPVAL                         R21 1
      168 GETTABLEKS                       R21 R21 K11 ["createElement"]
      170 GETUPVAL                         R22 0
      171 GETTABLEKS                       R22 R22 K35 ["Image"]
      173 DUPTABLE                         R23 K70 [{["Image"], ["ScaleType"], ["Size"], ["tag"] = "radius-medium bg-surface-200", ["testId"]}]
      174 GETTABLEKS                       R24 R5 K8 ["thumbnailContent"]
      176 SETTABLEKS                       R24 R23 K35 ["Image"]
      178 GETIMPORT                        R24 K47 [Enum.ScaleType.Fit]
      180 SETTABLEKS                       R24 R23 K40 ["ScaleType"]
      182 GETIMPORT                        R24 K72 [UDim2.fromOffset]
      184 LOADN                            R25 360
      185 LOADN                            R26 225
      186 CALL                             R24 2 1
      187 SETTABLEKS                       R24 R23 K15 ["Size"]
      189 LOADK                            R24 K73 ["ImagePreviewHover%*"]
      190 MOVE                             R26 R6
      191 NAMECALL                         R24 R24 K34 ["format"]
      193 CALL                             R24 2 1
      194 SETTABLEKS                       R24 R23 K19 ["testId"]
      196 CALL                             R21 2 1
      197 SETTABLEKS                       R21 R20 K35 ["Image"]
      199 CALL                             R17 3 1
      200 SETTABLEKS                       R17 R16 K30 ["Content"]
      202 CALL                             R13 3 1
      203 JUMP                             ; [+1]
      204 LOADNIL                          R13
      205 SETTABLEKS                       R13 R12 K36 ["HoverPreview"]
      207 JUMPIF                           R7 ; [+19]
      208 JUMPIF                           R8 ; [+18]
      209 GETUPVAL                         R13 1
      210 GETTABLEKS                       R13 R13 K11 ["createElement"]
      212 GETUPVAL                         R14 0
      213 GETTABLEKS                       R14 R14 K74 ["Skeleton"]
      215 DUPTABLE                         R15 K77 [{["tag"] = "size-full", ["radius"]}]
      216 GETUPVAL                         R16 0
      217 GETTABLEKS                       R16 R16 K66 ["Enums"]
      219 GETTABLEKS                       R16 R16 K78 ["Radius"]
      221 GETTABLEKS                       R16 R16 K79 ["Medium"]
      223 SETTABLEKS                       R16 R15 K76 ["radius"]
      225 CALL                             R13 2 1
      226 JUMP                             ; [+1]
      227 LOADNIL                          R13
      228 SETTABLEKS                       R13 R12 K37 ["Loading"]
      230 JUMPIFNOT                        R8 ; [+14]
      231 GETUPVAL                         R13 1
      232 GETTABLEKS                       R13 R13 K11 ["createElement"]
      234 GETUPVAL                         R14 0
      235 GETTABLEKS                       R14 R14 K80 ["Text"]
      237 DUPTABLE                         R15 K82 [{["Text"], ["tag"] = "size-full text-body-small text-wrap padding-small"}]
      238 GETTABLEKS                       R17 R5 K84 ["errorMessage"]
      240 ORK                              R16 R17 K83 ["Image unavailable"]
      241 SETTABLEKS                       R16 R15 K80 ["Text"]
      243 CALL                             R13 2 1
      244 JUMP                             ; [+1]
      245 LOADNIL                          R13
      246 SETTABLEKS                       R13 R12 K38 ["Error"]
      248 CALL                             R9 3 -1
      249 RETURN                           R9 -1

PROTO_3:
        0 DUPTABLE                         R1 K1 [{"Layout"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K2 ["createElement"]
        4 LOADK                            R3 K3 ["UIListLayout"]
        5 DUPTABLE                         R4 K7 [{"FillDirection", "SortOrder", "Padding"}]
        6 GETIMPORT                        R5 K10 [Enum.FillDirection.Horizontal]
        8 SETTABLEKS                       R5 R4 K4 ["FillDirection"]
       10 GETIMPORT                        R5 K12 [Enum.SortOrder.LayoutOrder]
       12 SETTABLEKS                       R5 R4 K5 ["SortOrder"]
       14 GETIMPORT                        R5 K15 [UDim.new]
       16 LOADN                            R6 0
       17 LOADN                            R7 8
       18 CALL                             R5 2 1
       19 SETTABLEKS                       R5 R4 K6 ["Padding"]
       21 CALL                             R2 2 1
       22 SETTABLEKS                       R2 R1 K0 ["Layout"]
       24 LOADN                            R4 1
       25 LOADN                            R2 3
       26 LOADN                            R3 1
       27 FORNPREP                         R2
       28 LOADK                            R5 K16 ["Slot_%*"]
       29 MOVE                             R7 R4
       30 NAMECALL                         R5 R5 K17 ["format"]
       32 CALL                             R5 2 1
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R6 R6 K2 ["createElement"]
       36 GETUPVAL                         R7 1
       37 DUPTABLE                         R8 K22 [{"slot", "index", "selected", "onSelect"}]
       38 GETTABLEKS                       R10 R0 K23 ["slots"]
       40 GETTABLE                         R9 R10 R4
       41 JUMPIF                           R9 ; [+1]
       42 DUPTABLE                         R9 K26 [{["status"] = "Pending"}]
       43 SETTABLEKS                       R9 R8 K18 ["slot"]
       45 SETTABLEKS                       R4 R8 K19 ["index"]
       47 GETTABLEKS                       R10 R0 K27 ["selectedIndex"]
       49 JUMPIFEQ                         R10 R4 ; [+2]
       51 LOADB                            R9 0 +1
       52 LOADB                            R9 1
       53 SETTABLEKS                       R9 R8 K20 ["selected"]
       55 GETTABLEKS                       R9 R0 K21 ["onSelect"]
       57 SETTABLEKS                       R9 R8 K21 ["onSelect"]
       59 CALL                             R6 2 1
       60 SETTABLE                         R6 R1 R5
       61 FORNLOOP                         R2
       62 GETUPVAL                         R2 0
       63 GETTABLEKS                       R2 R2 K2 ["createElement"]
       65 LOADK                            R3 K28 ["Frame"]
       66 DUPTABLE                         R4 K36 [{["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ClipsDescendants"] = False}]
       67 GETIMPORT                        R5 K38 [UDim2.new]
       69 LOADN                            R6 1
       70 LOADN                            R7 0
       71 LOADN                            R8 0
       72 LOADN                            R9 90
       73 CALL                             R5 4 1
       74 SETTABLEKS                       R5 R4 K29 ["Size"]
       76 MOVE                             R5 R1
       77 CALL                             R2 3 -1
       78 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3d"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K9 [PROTO_2]
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R1
       24 DUPCLOSURE                       R4 K10 [PROTO_3]
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R3
       27 RETURN                           R4 1
