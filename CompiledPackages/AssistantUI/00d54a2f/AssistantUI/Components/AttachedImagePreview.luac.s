PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 [""]
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADB                            R1 0
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R1 R0 K1 ["convertImageDataToTempIdAsync"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["imageData"]
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R1 R0 K1 ["releaseTempIdAsync"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["tempId"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["status"]
        3 JUMPIFNOTEQKS                    R0 K1 ["loading"] ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R0 R1 K0 ["status"]
        9 JUMPIFNOTEQKS                    R0 K2 ["error"] ; [+16]
       11 GETUPVAL                         R0 1
       12 LOADB                            R1 1
       13 CALL                             R0 1 0
       14 GETIMPORT                        R0 K4 [warn]
       16 LOADK                            R2 K5 ["Failed to convert image data to temp ID: %*"]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R4 R5 K6 ["problem"]
       20 NAMECALL                         R2 R2 K7 ["format"]
       22 CALL                             R2 2 1
       23 MOVE                             R1 R2
       24 CALL                             R0 1 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R1 0
       27 GETTABLEKS                       R0 R1 K8 ["value"]
       29 GETUPVAL                         R1 2
       30 GETTABLEKS                       R2 R0 K9 ["tempId"]
       32 CALL                             R1 1 0
       33 NEWCLOSURE                       R1 P0
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          VAL R0
       36 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADK                            R2 K1 [""]
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K0 ["useState"]
        8 LOADB                            R4 0
        9 CALL                             R3 1 2
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R5 R6 K2 ["useEffect"]
       13 NEWCLOSURE                       R6 P0
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R4
       16 NEWTABLE                         R7 0 1
       18 GETTABLEKS                       R8 R0 K3 ["imageData"]
       20 SETLIST                          R7 R8 1 [1]
       22 CALL                             R5 2 0
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R5 R6 K4 ["useAsync"]
       26 NEWCLOSURE                       R6 P1
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          VAL R0
       29 NEWTABLE                         R7 0 1
       31 GETTABLEKS                       R8 R0 K3 ["imageData"]
       33 SETLIST                          R7 R8 1 [1]
       35 CALL                             R5 2 1
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R6 R7 K2 ["useEffect"]
       39 NEWCLOSURE                       R7 P2
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R2
       43 CAPTURE                          UPVAL U2
       44 NEWTABLE                         R8 0 1
       46 MOVE                             R9 R5
       47 SETLIST                          R8 R9 1 [1]
       49 CALL                             R6 2 0
       50 GETUPVAL                         R6 3
       51 GETUPVAL                         R7 4
       52 DUPTABLE                         R8 K8 [{"tag", "Size", "LayoutOrder"}]
       53 LOADK                            R9 K9 ["radius-small"]
       54 SETTABLEKS                       R9 R8 K5 ["tag"]
       56 GETIMPORT                        R9 K12 [UDim2.fromOffset]
       58 LOADN                            R10 80
       59 LOADN                            R11 80
       60 CALL                             R9 2 1
       61 SETTABLEKS                       R9 R8 K6 ["Size"]
       63 GETTABLEKS                       R9 R0 K7 ["LayoutOrder"]
       65 SETTABLEKS                       R9 R8 K7 ["LayoutOrder"]
       67 DUPTABLE                         R9 K16 [{"ErrorIndicator", "ImageLabel", "RemoveButtonContainer"}]
       68 MOVE                             R10 R3
       69 JUMPIFNOT                        R10 ; [+49]
       70 GETUPVAL                         R10 3
       71 GETUPVAL                         R11 4
       72 DUPTABLE                         R12 K17 [{"tag"}]
       73 LOADK                            R13 K18 ["size-full-full radius-small bg-surface-200 align-x-center align-y-center"]
       74 SETTABLEKS                       R13 R12 K5 ["tag"]
       76 DUPTABLE                         R13 K21 [{"ErrorIcon", "UIStroke"}]
       77 GETUPVAL                         R14 3
       78 GETUPVAL                         R15 5
       79 DUPTABLE                         R16 K24 [{"tag", "name", "foregroundColor"}]
       80 LOADK                            R17 K25 ["size-600-600"]
       81 SETTABLEKS                       R17 R16 K5 ["tag"]
       83 LOADK                            R17 K26 ["icons/status/warning"]
       84 SETTABLEKS                       R17 R16 K22 ["name"]
       86 GETIMPORT                        R17 K29 [Color3.fromRGB]
       88 LOADN                            R18 200
       89 LOADN                            R19 80
       90 LOADN                            R20 80
       91 CALL                             R17 3 1
       92 SETTABLEKS                       R17 R16 K23 ["foregroundColor"]
       94 CALL                             R14 2 1
       95 SETTABLEKS                       R14 R13 K19 ["ErrorIcon"]
       97 GETUPVAL                         R14 3
       98 LOADK                            R15 K20 ["UIStroke"]
       99 DUPTABLE                         R16 K33 [{"Color", "Thickness", "ApplyStrokeMode"}]
      100 GETIMPORT                        R17 K29 [Color3.fromRGB]
      102 LOADN                            R18 180
      103 LOADN                            R19 180
      104 LOADN                            R20 180
      105 CALL                             R17 3 1
      106 SETTABLEKS                       R17 R16 K30 ["Color"]
      108 LOADN                            R17 2
      109 SETTABLEKS                       R17 R16 K31 ["Thickness"]
      111 GETIMPORT                        R17 K36 [Enum.ApplyStrokeMode.Border]
      113 SETTABLEKS                       R17 R16 K32 ["ApplyStrokeMode"]
      115 CALL                             R14 2 1
      116 SETTABLEKS                       R14 R13 K20 ["UIStroke"]
      118 CALL                             R10 3 1
      119 SETTABLEKS                       R10 R9 K13 ["ErrorIndicator"]
      121 NOT                              R10 R3
      122 JUMPIFNOT                        R10 ; [+35]
      123 GETUPVAL                         R10 3
      124 GETUPVAL                         R11 6
      125 DUPTABLE                         R12 K39 [{"tag", "Image", "ScaleType"}]
      126 LOADK                            R13 K40 ["size-full-full radius-small"]
      127 SETTABLEKS                       R13 R12 K5 ["tag"]
      129 SETTABLEKS                       R1 R12 K37 ["Image"]
      131 GETIMPORT                        R13 K42 [Enum.ScaleType.Fit]
      133 SETTABLEKS                       R13 R12 K38 ["ScaleType"]
      135 DUPTABLE                         R13 K43 [{"UIStroke"}]
      136 GETUPVAL                         R14 3
      137 LOADK                            R15 K20 ["UIStroke"]
      138 DUPTABLE                         R16 K33 [{"Color", "Thickness", "ApplyStrokeMode"}]
      139 GETIMPORT                        R17 K29 [Color3.fromRGB]
      141 LOADN                            R18 180
      142 LOADN                            R19 180
      143 LOADN                            R20 180
      144 CALL                             R17 3 1
      145 SETTABLEKS                       R17 R16 K30 ["Color"]
      147 LOADN                            R17 1
      148 SETTABLEKS                       R17 R16 K31 ["Thickness"]
      150 GETIMPORT                        R17 K36 [Enum.ApplyStrokeMode.Border]
      152 SETTABLEKS                       R17 R16 K32 ["ApplyStrokeMode"]
      154 CALL                             R14 2 1
      155 SETTABLEKS                       R14 R13 K20 ["UIStroke"]
      157 CALL                             R10 3 1
      158 SETTABLEKS                       R10 R9 K14 ["ImageLabel"]
      160 GETUPVAL                         R10 3
      161 LOADK                            R11 K44 ["Frame"]
      162 DUPTABLE                         R12 K49 [{"Size", "Position", "AnchorPoint", "BackgroundTransparency", "ZIndex"}]
      163 GETIMPORT                        R13 K12 [UDim2.fromOffset]
      165 LOADN                            R14 24
      166 LOADN                            R15 24
      167 CALL                             R13 2 1
      168 SETTABLEKS                       R13 R12 K6 ["Size"]
      170 GETIMPORT                        R13 K51 [UDim2.new]
      172 LOADN                            R14 1
      173 LOADN                            R15 8
      174 LOADN                            R16 0
      175 LOADN                            R17 0
      176 CALL                             R13 4 1
      177 SETTABLEKS                       R13 R12 K45 ["Position"]
      179 GETIMPORT                        R13 K53 [Vector2.new]
      181 LOADN                            R14 1
      182 LOADN                            R15 0
      183 CALL                             R13 2 1
      184 SETTABLEKS                       R13 R12 K46 ["AnchorPoint"]
      186 LOADN                            R13 1
      187 SETTABLEKS                       R13 R12 K47 ["BackgroundTransparency"]
      189 LOADN                            R13 2
      190 SETTABLEKS                       R13 R12 K48 ["ZIndex"]
      192 DUPTABLE                         R13 K55 [{"RemoveButton"}]
      193 GETUPVAL                         R14 3
      194 GETUPVAL                         R15 7
      195 DUPTABLE                         R16 K60 [{"icon", "tag", "iconTag", "onActivated", "testId"}]
      196 LOADK                            R17 K61 ["icons/actions/reject"]
      197 SETTABLEKS                       R17 R16 K56 ["icon"]
      199 LOADK                            R17 K62 ["size-400-400 radius-circle bg-surface-100 align-x-center align-y-center"]
      200 SETTABLEKS                       R17 R16 K5 ["tag"]
      202 LOADK                            R17 K63 ["size-300-300 content-default"]
      203 SETTABLEKS                       R17 R16 K57 ["iconTag"]
      205 GETTABLEKS                       R17 R0 K64 ["onRemove"]
      207 SETTABLEKS                       R17 R16 K58 ["onActivated"]
      209 GETUPVAL                         R19 8
      210 GETTABLEKS                       R18 R19 K65 ["AttachedImagePreview"]
      212 GETTABLEKS                       R17 R18 K66 ["Remove"]
      214 SETTABLEKS                       R17 R16 K59 ["testId"]
      216 CALL                             R14 2 1
      217 SETTABLEKS                       R14 R13 K54 ["RemoveButton"]
      219 CALL                             R10 3 1
      220 SETTABLEKS                       R10 R9 K15 ["RemoveButtonContainer"]
      222 CALL                             R6 3 -1
      223 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R3 K7 ["CustomIconButton"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Guest"]
       18 GETTABLEKS                       R3 R4 K9 ["Environment"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Parent"]
       25 GETTABLEKS                       R4 R5 K11 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Parent"]
       32 GETTABLEKS                       R5 R6 K12 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K10 ["Parent"]
       39 GETTABLEKS                       R6 R7 K13 ["ReactUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K14 ["Util"]
       46 GETTABLEKS                       R7 R8 K15 ["TestIds"]
       48 CALL                             R6 1 1
       49 GETTABLEKS                       R7 R3 K16 ["Icon"]
       51 GETTABLEKS                       R8 R3 K17 ["Image"]
       53 GETTABLEKS                       R9 R3 K18 ["View"]
       55 GETTABLEKS                       R10 R4 K19 ["createElement"]
       57 DUPCLOSURE                       R11 K20 [PROTO_5]
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R10
       62 CAPTURE                          VAL R9
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R6
       67 GETTABLEKS                       R12 R4 K21 ["memo"]
       69 MOVE                             R13 R11
       70 CALL                             R12 1 -1
       71 RETURN                           R12 -1
