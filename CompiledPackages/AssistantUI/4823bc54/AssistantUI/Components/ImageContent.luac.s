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
        9 JUMPIFNOTEQKS                    R0 K2 ["error"] ; [+23]
       11 GETUPVAL                         R0 1
       12 LOADK                            R1 K3 ["rbxasset://textures/ui/GuiImagePlaceholder.png"]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 2
       15 GETIMPORT                        R1 K6 [Vector2.new]
       17 LOADN                            R2 48
       18 LOADN                            R3 48
       19 CALL                             R1 2 -1
       20 CALL                             R0 -1 0
       21 GETIMPORT                        R0 K8 [warn]
       23 LOADK                            R2 K9 ["Failed to convert image data to temp ID: %*"]
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K10 ["problem"]
       27 NAMECALL                         R2 R2 K11 ["format"]
       29 CALL                             R2 2 1
       30 MOVE                             R1 R2
       31 CALL                             R0 1 0
       32 RETURN                           R0 0
       33 GETUPVAL                         R0 0
       34 GETTABLEKS                       R0 R0 K12 ["value"]
       36 GETUPVAL                         R1 1
       37 GETTABLEKS                       R2 R0 K13 ["tempId"]
       39 CALL                             R1 1 0
       40 GETUPVAL                         R1 2
       41 GETIMPORT                        R2 K6 [Vector2.new]
       43 GETTABLEKS                       R3 R0 K14 ["width"]
       45 GETTABLEKS                       R4 R0 K15 ["height"]
       47 CALL                             R2 2 -1
       48 CALL                             R1 -1 0
       49 NEWCLOSURE                       R1 P0
       50 CAPTURE                          UPVAL U3
       51 CAPTURE                          VAL R0
       52 RETURN                           R1 1

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
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R4
       37 CAPTURE                          UPVAL U2
       38 NEWTABLE                         R9 0 1
       40 MOVE                             R10 R6
       41 SETLIST                          R9 R10 1 [1]
       43 CALL                             R7 2 0
       44 JUMPIFNOTEQKS                    R1 K1 [""] ; [+3]
       46 LOADNIL                          R7
       47 RETURN                           R7 1
       48 GETTABLEKS                       R8 R3 K9 ["Y"]
       50 JUMPIFNOTEQKN                    R8 K10 [0] ; [+3]
       52 LOADN                            R7 1
       53 JUMP                             ; [+5]
       54 GETTABLEKS                       R8 R3 K11 ["X"]
       56 GETTABLEKS                       R9 R3 K9 ["Y"]
       58 DIV                              R7 R8 R9
       59 GETTABLEKS                       R9 R6 K12 ["status"]
       61 JUMPIFEQKS                       R9 K13 ["error"] ; [+2]
       63 LOADB                            R8 0 +1
       64 LOADB                            R8 1
       65 GETTABLEKS                       R9 R0 K14 ["style"]
       67 JUMPIFNOTEQKS                    R9 K15 ["attachment"] ; [+86]
       69 GETUPVAL                         R9 3
       70 GETUPVAL                         R10 4
       71 DUPTABLE                         R11 K18 [{"tag", "LayoutOrder"}]
       72 NEWTABLE                         R12 2 0
       74 LOADB                            R13 1
       75 SETTABLEKS                       R13 R12 K19 ["auto-xy radius-medium"]
       77 SETTABLEKS                       R8 R12 K20 ["bg-system-alert"]
       79 SETTABLEKS                       R12 R11 K16 ["tag"]
       81 GETTABLEKS                       R12 R0 K17 ["LayoutOrder"]
       83 SETTABLEKS                       R12 R11 K17 ["LayoutOrder"]
       85 DUPTABLE                         R12 K23 [{"Padding", "Image"}]
       86 MOVE                             R13 R8
       87 JUMPIFNOT                        R13 ; [+32]
       88 GETUPVAL                         R13 3
       89 LOADK                            R14 K24 ["UIPadding"]
       90 DUPTABLE                         R15 K29 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       91 GETIMPORT                        R16 K31 [UDim.new]
       93 LOADN                            R17 0
       94 LOADN                            R18 1
       95 CALL                             R16 2 1
       96 SETTABLEKS                       R16 R15 K25 ["PaddingTop"]
       98 GETIMPORT                        R16 K31 [UDim.new]
      100 LOADN                            R17 0
      101 LOADN                            R18 1
      102 CALL                             R16 2 1
      103 SETTABLEKS                       R16 R15 K26 ["PaddingBottom"]
      105 GETIMPORT                        R16 K31 [UDim.new]
      107 LOADN                            R17 0
      108 LOADN                            R18 1
      109 CALL                             R16 2 1
      110 SETTABLEKS                       R16 R15 K27 ["PaddingLeft"]
      112 GETIMPORT                        R16 K31 [UDim.new]
      114 LOADN                            R17 0
      115 LOADN                            R18 1
      116 CALL                             R16 2 1
      117 SETTABLEKS                       R16 R15 K28 ["PaddingRight"]
      119 CALL                             R13 2 1
      120 SETTABLEKS                       R13 R12 K21 ["Padding"]
      122 GETUPVAL                         R13 3
      123 GETUPVAL                         R14 5
      124 DUPTABLE                         R15 K36 [{["tag"] = "radius-medium", ["Size"], ["ScaleType"], ["Image"], ["LayoutOrder"], ["testId"]}]
      125 GETIMPORT                        R16 K39 [UDim2.fromOffset]
      127 LOADN                            R17 48
      128 LOADN                            R18 48
      129 CALL                             R16 2 1
      130 SETTABLEKS                       R16 R15 K33 ["Size"]
      132 GETIMPORT                        R16 K42 [Enum.ScaleType.Crop]
      134 SETTABLEKS                       R16 R15 K34 ["ScaleType"]
      136 SETTABLEKS                       R1 R15 K22 ["Image"]
      138 GETTABLEKS                       R16 R0 K17 ["LayoutOrder"]
      140 SETTABLEKS                       R16 R15 K17 ["LayoutOrder"]
      142 GETUPVAL                         R16 6
      143 GETTABLEKS                       R16 R16 K43 ["ImageContent"]
      145 GETTABLEKS                       R16 R16 K22 ["Image"]
      147 SETTABLEKS                       R16 R15 K35 ["testId"]
      149 CALL                             R13 2 1
      150 SETTABLEKS                       R13 R12 K22 ["Image"]
      152 CALL                             R9 3 -1
      153 RETURN                           R9 -1
      154 GETTABLEKS                       R9 R0 K44 ["maxSize"]
      156 JUMPIFNOT                        R9 ; [+49]
      157 GETUPVAL                         R9 3
      158 GETUPVAL                         R10 5
      159 DUPTABLE                         R11 K47 [{"tag", "Size", "ScaleType", "sizeConstraint", "aspectRatio", "Image", "LayoutOrder", "testId"}]
      160 NEWTABLE                         R12 2 0
      162 LOADB                            R13 1
      163 SETTABLEKS                       R13 R12 K48 ["radius-small"]
      165 SETTABLEKS                       R8 R12 K49 ["stroke-system-alert"]
      167 SETTABLEKS                       R12 R11 K16 ["tag"]
      169 GETIMPORT                        R12 K39 [UDim2.fromOffset]
      171 GETTABLEKS                       R13 R3 K11 ["X"]
      173 GETTABLEKS                       R14 R3 K9 ["Y"]
      175 CALL                             R12 2 1
      176 SETTABLEKS                       R12 R11 K33 ["Size"]
      178 GETIMPORT                        R12 K51 [Enum.ScaleType.Fit]
      180 SETTABLEKS                       R12 R11 K34 ["ScaleType"]
      182 DUPTABLE                         R12 K53 [{"MaxSize"}]
      183 GETTABLEKS                       R13 R0 K44 ["maxSize"]
      185 SETTABLEKS                       R13 R12 K52 ["MaxSize"]
      187 SETTABLEKS                       R12 R11 K45 ["sizeConstraint"]
      189 SETTABLEKS                       R7 R11 K46 ["aspectRatio"]
      191 SETTABLEKS                       R1 R11 K22 ["Image"]
      193 GETTABLEKS                       R12 R0 K17 ["LayoutOrder"]
      195 SETTABLEKS                       R12 R11 K17 ["LayoutOrder"]
      197 GETUPVAL                         R12 6
      198 GETTABLEKS                       R12 R12 K43 ["ImageContent"]
      200 GETTABLEKS                       R12 R12 K22 ["Image"]
      202 SETTABLEKS                       R12 R11 K35 ["testId"]
      204 CALL                             R9 2 -1
      205 RETURN                           R9 -1
      206 GETUPVAL                         R9 3
      207 GETUPVAL                         R10 5
      208 DUPTABLE                         R11 K56 [{["tag"] = "size-full-0 auto-y radius-small", ["Size"], ["ScaleType"], ["SizeConstraint"], ["sizeConstraint"], ["aspectRatio"], ["Image"], ["LayoutOrder"], ["testId"]}]
      209 GETIMPORT                        R12 K58 [UDim2.fromScale]
      211 LOADN                            R13 1
      212 LOADN                            R14 1
      213 CALL                             R12 2 1
      214 SETTABLEKS                       R12 R11 K33 ["Size"]
      216 GETIMPORT                        R12 K51 [Enum.ScaleType.Fit]
      218 SETTABLEKS                       R12 R11 K34 ["ScaleType"]
      220 GETIMPORT                        R12 K60 [Enum.SizeConstraint.RelativeXX]
      222 SETTABLEKS                       R12 R11 K55 ["SizeConstraint"]
      224 DUPTABLE                         R12 K53 [{"MaxSize"}]
      225 SETTABLEKS                       R3 R12 K52 ["MaxSize"]
      227 SETTABLEKS                       R12 R11 K45 ["sizeConstraint"]
      229 SETTABLEKS                       R7 R11 K46 ["aspectRatio"]
      231 SETTABLEKS                       R1 R11 K22 ["Image"]
      233 GETTABLEKS                       R12 R0 K17 ["LayoutOrder"]
      235 SETTABLEKS                       R12 R11 K17 ["LayoutOrder"]
      237 GETUPVAL                         R12 6
      238 GETTABLEKS                       R12 R12 K43 ["ImageContent"]
      240 GETTABLEKS                       R12 R12 K22 ["Image"]
      242 SETTABLEKS                       R12 R11 K35 ["testId"]
      244 CALL                             R9 2 -1
      245 RETURN                           R9 -1

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
       47 GETTABLEKS                       R7 R2 K15 ["Image"]
       49 GETTABLEKS                       R8 R2 K16 ["View"]
       51 GETTABLEKS                       R9 R3 K17 ["createElement"]
       53 DUPCLOSURE                       R10 K18 [PROTO_4]
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R9
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R5
       61 GETTABLEKS                       R11 R3 K19 ["memo"]
       63 MOVE                             R12 R10
       64 CALL                             R11 1 -1
       65 RETURN                           R11 -1
