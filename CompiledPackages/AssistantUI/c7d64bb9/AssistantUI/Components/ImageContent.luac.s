PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R1 R0 K1 ["convertImageDataToTempIdAsync"]
        6 GETUPVAL                         R2 1
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R1 R0 K1 ["releaseTempIdAsync"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["tempId"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["status"]
        3 JUMPIFNOTEQKS                    R0 K1 ["loading"] ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["status"]
        9 JUMPIFNOTEQKS                    R0 K2 ["error"] ; [+26]
       11 GETUPVAL                         R0 1
       12 CALL                             R0 0 1
       13 JUMPIFNOT                        R0 ; [+10]
       14 GETUPVAL                         R0 2
       15 LOADK                            R1 K3 ["rbxasset://textures/ui/GuiImagePlaceholder.png"]
       16 CALL                             R0 1 0
       17 GETUPVAL                         R0 3
       18 GETIMPORT                        R1 K6 [Vector2.new]
       20 LOADN                            R2 48
       21 LOADN                            R3 48
       22 CALL                             R1 2 -1
       23 CALL                             R0 -1 0
       24 GETIMPORT                        R0 K8 [warn]
       26 LOADK                            R2 K9 ["Failed to convert image data to temp ID: %*"]
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R4 R4 K10 ["problem"]
       30 NAMECALL                         R2 R2 K11 ["format"]
       32 CALL                             R2 2 1
       33 MOVE                             R1 R2
       34 CALL                             R0 1 0
       35 RETURN                           R0 0
       36 GETUPVAL                         R0 0
       37 GETTABLEKS                       R0 R0 K12 ["value"]
       39 GETUPVAL                         R1 2
       40 GETTABLEKS                       R2 R0 K13 ["tempId"]
       42 CALL                             R1 1 0
       43 GETUPVAL                         R1 3
       44 GETIMPORT                        R2 K6 [Vector2.new]
       46 GETTABLEKS                       R3 R0 K14 ["width"]
       48 GETTABLEKS                       R4 R0 K15 ["height"]
       50 CALL                             R2 2 -1
       51 CALL                             R1 -1 0
       52 NEWCLOSURE                       R1 P0
       53 CAPTURE                          UPVAL U4
       54 CAPTURE                          VAL R0
       55 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADK                            R2 K1 [""]
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["useState"]
        8 GETIMPORT                        R4 K4 [Vector2.new]
       10 LOADN                            R5 0
       11 LOADN                            R6 0
       12 CALL                             R4 2 -1
       13 CALL                             R3 -1 2
       14 GETTABLEKS                       R5 R0 K5 ["imageContent"]
       16 GETTABLEKS                       R5 R5 K6 ["data"]
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R6 R6 K7 ["useAsync"]
       21 NEWCLOSURE                       R7 P0
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          VAL R5
       24 NEWTABLE                         R8 0 1
       26 MOVE                             R9 R5
       27 SETLIST                          R8 R9 1 [1]
       29 CALL                             R6 2 1
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R7 R7 K8 ["useEffect"]
       33 NEWCLOSURE                       R8 P1
       34 CAPTURE                          VAL R6
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R4
       38 CAPTURE                          UPVAL U2
       39 NEWTABLE                         R9 0 1
       41 MOVE                             R10 R6
       42 SETLIST                          R9 R10 1 [1]
       44 CALL                             R7 2 0
       45 JUMPIFNOTEQKS                    R1 K1 [""] ; [+3]
       47 LOADNIL                          R7
       48 RETURN                           R7 1
       49 GETTABLEKS                       R8 R3 K9 ["Y"]
       51 JUMPIFNOTEQKN                    R8 K10 [0] ; [+3]
       53 LOADN                            R7 1
       54 JUMP                             ; [+5]
       55 GETTABLEKS                       R8 R3 K11 ["X"]
       57 GETTABLEKS                       R9 R3 K9 ["Y"]
       59 DIV                              R7 R8 R9
       60 GETUPVAL                         R8 3
       61 CALL                             R8 0 1
       62 JUMPIF                           R8 ; [+3]
       63 GETUPVAL                         R8 4
       64 CALL                             R8 0 1
       65 JUMPIFNOT                        R8 ; [+150]
       66 GETTABLEKS                       R9 R6 K12 ["status"]
       68 JUMPIFEQKS                       R9 K13 ["error"] ; [+2]
       70 LOADB                            R8 0 +1
       71 LOADB                            R8 1
       72 GETTABLEKS                       R9 R0 K14 ["style"]
       74 JUMPIFNOTEQKS                    R9 K15 ["attachment"] ; [+89]
       76 GETUPVAL                         R9 5
       77 GETUPVAL                         R10 6
       78 DUPTABLE                         R11 K18 [{"tag", "LayoutOrder"}]
       79 NEWTABLE                         R12 2 0
       81 LOADB                            R13 1
       82 SETTABLEKS                       R13 R12 K19 ["auto-xy radius-medium"]
       84 SETTABLEKS                       R8 R12 K20 ["bg-system-alert"]
       86 SETTABLEKS                       R12 R11 K16 ["tag"]
       88 GETTABLEKS                       R12 R0 K17 ["LayoutOrder"]
       90 SETTABLEKS                       R12 R11 K17 ["LayoutOrder"]
       92 DUPTABLE                         R12 K23 [{"Padding", "Image"}]
       93 MOVE                             R13 R8
       94 JUMPIFNOT                        R13 ; [+32]
       95 GETUPVAL                         R13 5
       96 LOADK                            R14 K24 ["UIPadding"]
       97 DUPTABLE                         R15 K29 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       98 GETIMPORT                        R16 K31 [UDim.new]
      100 LOADN                            R17 0
      101 LOADN                            R18 1
      102 CALL                             R16 2 1
      103 SETTABLEKS                       R16 R15 K25 ["PaddingTop"]
      105 GETIMPORT                        R16 K31 [UDim.new]
      107 LOADN                            R17 0
      108 LOADN                            R18 1
      109 CALL                             R16 2 1
      110 SETTABLEKS                       R16 R15 K26 ["PaddingBottom"]
      112 GETIMPORT                        R16 K31 [UDim.new]
      114 LOADN                            R17 0
      115 LOADN                            R18 1
      116 CALL                             R16 2 1
      117 SETTABLEKS                       R16 R15 K27 ["PaddingLeft"]
      119 GETIMPORT                        R16 K31 [UDim.new]
      121 LOADN                            R17 0
      122 LOADN                            R18 1
      123 CALL                             R16 2 1
      124 SETTABLEKS                       R16 R15 K28 ["PaddingRight"]
      126 CALL                             R13 2 1
      127 SETTABLEKS                       R13 R12 K21 ["Padding"]
      129 GETUPVAL                         R13 5
      130 GETUPVAL                         R14 7
      131 DUPTABLE                         R15 K35 [{"tag", "Size", "ScaleType", "Image", "LayoutOrder", "testId"}]
      132 LOADK                            R16 K36 ["radius-medium"]
      133 SETTABLEKS                       R16 R15 K16 ["tag"]
      135 GETIMPORT                        R16 K39 [UDim2.fromOffset]
      137 LOADN                            R17 48
      138 LOADN                            R18 48
      139 CALL                             R16 2 1
      140 SETTABLEKS                       R16 R15 K32 ["Size"]
      142 GETIMPORT                        R16 K42 [Enum.ScaleType.Crop]
      144 SETTABLEKS                       R16 R15 K33 ["ScaleType"]
      146 SETTABLEKS                       R1 R15 K22 ["Image"]
      148 GETTABLEKS                       R16 R0 K17 ["LayoutOrder"]
      150 SETTABLEKS                       R16 R15 K17 ["LayoutOrder"]
      152 GETUPVAL                         R16 8
      153 GETTABLEKS                       R16 R16 K43 ["ImageContent"]
      155 GETTABLEKS                       R16 R16 K22 ["Image"]
      157 SETTABLEKS                       R16 R15 K34 ["testId"]
      159 CALL                             R13 2 1
      160 SETTABLEKS                       R13 R12 K22 ["Image"]
      162 CALL                             R9 3 -1
      163 RETURN                           R9 -1
      164 GETTABLEKS                       R9 R0 K44 ["maxSize"]
      166 JUMPIFNOT                        R9 ; [+49]
      167 GETUPVAL                         R9 5
      168 GETUPVAL                         R10 7
      169 DUPTABLE                         R11 K47 [{"tag", "Size", "ScaleType", "sizeConstraint", "aspectRatio", "Image", "LayoutOrder", "testId"}]
      170 NEWTABLE                         R12 2 0
      172 LOADB                            R13 1
      173 SETTABLEKS                       R13 R12 K48 ["radius-small"]
      175 SETTABLEKS                       R8 R12 K49 ["stroke-system-alert"]
      177 SETTABLEKS                       R12 R11 K16 ["tag"]
      179 GETIMPORT                        R12 K39 [UDim2.fromOffset]
      181 GETTABLEKS                       R13 R3 K11 ["X"]
      183 GETTABLEKS                       R14 R3 K9 ["Y"]
      185 CALL                             R12 2 1
      186 SETTABLEKS                       R12 R11 K32 ["Size"]
      188 GETIMPORT                        R12 K51 [Enum.ScaleType.Fit]
      190 SETTABLEKS                       R12 R11 K33 ["ScaleType"]
      192 DUPTABLE                         R12 K53 [{"MaxSize"}]
      193 GETTABLEKS                       R13 R0 K44 ["maxSize"]
      195 SETTABLEKS                       R13 R12 K52 ["MaxSize"]
      197 SETTABLEKS                       R12 R11 K45 ["sizeConstraint"]
      199 SETTABLEKS                       R7 R11 K46 ["aspectRatio"]
      201 SETTABLEKS                       R1 R11 K22 ["Image"]
      203 GETTABLEKS                       R12 R0 K17 ["LayoutOrder"]
      205 SETTABLEKS                       R12 R11 K17 ["LayoutOrder"]
      207 GETUPVAL                         R12 8
      208 GETTABLEKS                       R12 R12 K43 ["ImageContent"]
      210 GETTABLEKS                       R12 R12 K22 ["Image"]
      212 SETTABLEKS                       R12 R11 K34 ["testId"]
      214 CALL                             R9 2 -1
      215 RETURN                           R9 -1
      216 GETUPVAL                         R8 5
      217 GETUPVAL                         R9 7
      218 DUPTABLE                         R10 K55 [{"tag", "Size", "ScaleType", "SizeConstraint", "sizeConstraint", "aspectRatio", "Image", "LayoutOrder", "testId"}]
      219 LOADK                            R11 K56 ["size-full-0 auto-y radius-small"]
      220 SETTABLEKS                       R11 R10 K16 ["tag"]
      222 GETIMPORT                        R11 K58 [UDim2.fromScale]
      224 LOADN                            R12 1
      225 LOADN                            R13 1
      226 CALL                             R11 2 1
      227 SETTABLEKS                       R11 R10 K32 ["Size"]
      229 GETIMPORT                        R11 K51 [Enum.ScaleType.Fit]
      231 SETTABLEKS                       R11 R10 K33 ["ScaleType"]
      233 GETIMPORT                        R11 K60 [Enum.SizeConstraint.RelativeXX]
      235 SETTABLEKS                       R11 R10 K54 ["SizeConstraint"]
      237 DUPTABLE                         R11 K53 [{"MaxSize"}]
      238 SETTABLEKS                       R3 R11 K52 ["MaxSize"]
      240 SETTABLEKS                       R11 R10 K45 ["sizeConstraint"]
      242 SETTABLEKS                       R7 R10 K46 ["aspectRatio"]
      244 SETTABLEKS                       R1 R10 K22 ["Image"]
      246 GETTABLEKS                       R11 R0 K17 ["LayoutOrder"]
      248 SETTABLEKS                       R11 R10 K17 ["LayoutOrder"]
      250 GETUPVAL                         R11 8
      251 GETTABLEKS                       R11 R11 K43 ["ImageContent"]
      253 GETTABLEKS                       R11 R11 K22 ["Image"]
      255 SETTABLEKS                       R11 R10 K34 ["testId"]
      257 CALL                             R8 2 -1
      258 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Util"]
       39 GETTABLEKS                       R6 R6 K13 ["TestIds"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K14 ["Types"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K15 ["Flags"]
       51 GETTABLEKS                       R8 R8 K16 ["FFlagEnableAssistantInputImageAttachment"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K15 ["Flags"]
       58 GETTABLEKS                       R9 R9 K17 ["FFlagEnablePrimitiveGenTool"]
       60 CALL                             R8 1 1
       61 GETTABLEKS                       R9 R2 K18 ["Image"]
       63 GETTABLEKS                       R10 R2 K19 ["View"]
       65 GETTABLEKS                       R11 R3 K20 ["createElement"]
       67 DUPCLOSURE                       R12 K21 [PROTO_4]
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R11
       74 CAPTURE                          VAL R10
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R5
       77 GETTABLEKS                       R13 R3 K22 ["memo"]
       79 MOVE                             R14 R12
       80 CALL                             R13 1 -1
       81 RETURN                           R13 -1
