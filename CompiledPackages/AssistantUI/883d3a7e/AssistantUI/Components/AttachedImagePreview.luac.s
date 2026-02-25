PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R1 R0 K1 ["convertImageDataToTempIdAsync"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["imageData"]
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R1 R0 K1 ["releaseTempIdAsync"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["tempId"]
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

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADK                            R2 K1 [""]
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K0 ["useState"]
        8 LOADB                            R4 0
        9 CALL                             R3 1 2
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R5 R6 K2 ["useAsync"]
       13 NEWCLOSURE                       R6 P0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R0
       16 NEWTABLE                         R7 0 1
       18 GETTABLEKS                       R8 R0 K3 ["imageData"]
       20 SETLIST                          R7 R8 1 [1]
       22 CALL                             R5 2 1
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R6 R7 K4 ["useEffect"]
       26 NEWCLOSURE                       R7 P1
       27 CAPTURE                          VAL R5
       28 CAPTURE                          VAL R4
       29 CAPTURE                          VAL R2
       30 CAPTURE                          UPVAL U2
       31 NEWTABLE                         R8 0 1
       33 MOVE                             R9 R5
       34 SETLIST                          R8 R9 1 [1]
       36 CALL                             R6 2 0
       37 GETUPVAL                         R6 3
       38 GETUPVAL                         R7 4
       39 DUPTABLE                         R8 K8 [{"tag", "Size", "LayoutOrder"}]
       40 LOADK                            R9 K9 ["radius-small"]
       41 SETTABLEKS                       R9 R8 K5 ["tag"]
       43 GETIMPORT                        R9 K12 [UDim2.fromOffset]
       45 LOADN                            R10 80
       46 LOADN                            R11 80
       47 CALL                             R9 2 1
       48 SETTABLEKS                       R9 R8 K6 ["Size"]
       50 GETTABLEKS                       R9 R0 K7 ["LayoutOrder"]
       52 SETTABLEKS                       R9 R8 K7 ["LayoutOrder"]
       54 DUPTABLE                         R9 K16 [{"ErrorIndicator", "ImageLabel", "RemoveButtonContainer"}]
       55 MOVE                             R10 R3
       56 JUMPIFNOT                        R10 ; [+49]
       57 GETUPVAL                         R10 3
       58 GETUPVAL                         R11 4
       59 DUPTABLE                         R12 K17 [{"tag"}]
       60 LOADK                            R13 K18 ["size-full-full radius-small bg-surface-200 align-x-center align-y-center"]
       61 SETTABLEKS                       R13 R12 K5 ["tag"]
       63 DUPTABLE                         R13 K21 [{"ErrorIcon", "UIStroke"}]
       64 GETUPVAL                         R14 3
       65 GETUPVAL                         R15 5
       66 DUPTABLE                         R16 K24 [{"tag", "name", "foregroundColor"}]
       67 LOADK                            R17 K25 ["size-600-600"]
       68 SETTABLEKS                       R17 R16 K5 ["tag"]
       70 LOADK                            R17 K26 ["icons/status/warning"]
       71 SETTABLEKS                       R17 R16 K22 ["name"]
       73 GETIMPORT                        R17 K29 [Color3.fromRGB]
       75 LOADN                            R18 200
       76 LOADN                            R19 80
       77 LOADN                            R20 80
       78 CALL                             R17 3 1
       79 SETTABLEKS                       R17 R16 K23 ["foregroundColor"]
       81 CALL                             R14 2 1
       82 SETTABLEKS                       R14 R13 K19 ["ErrorIcon"]
       84 GETUPVAL                         R14 3
       85 LOADK                            R15 K20 ["UIStroke"]
       86 DUPTABLE                         R16 K33 [{"Color", "Thickness", "ApplyStrokeMode"}]
       87 GETIMPORT                        R17 K29 [Color3.fromRGB]
       89 LOADN                            R18 180
       90 LOADN                            R19 180
       91 LOADN                            R20 180
       92 CALL                             R17 3 1
       93 SETTABLEKS                       R17 R16 K30 ["Color"]
       95 LOADN                            R17 2
       96 SETTABLEKS                       R17 R16 K31 ["Thickness"]
       98 GETIMPORT                        R17 K36 [Enum.ApplyStrokeMode.Border]
      100 SETTABLEKS                       R17 R16 K32 ["ApplyStrokeMode"]
      102 CALL                             R14 2 1
      103 SETTABLEKS                       R14 R13 K20 ["UIStroke"]
      105 CALL                             R10 3 1
      106 SETTABLEKS                       R10 R9 K13 ["ErrorIndicator"]
      108 NOT                              R10 R3
      109 JUMPIFNOT                        R10 ; [+35]
      110 GETUPVAL                         R10 3
      111 GETUPVAL                         R11 6
      112 DUPTABLE                         R12 K39 [{"tag", "Image", "ScaleType"}]
      113 LOADK                            R13 K40 ["size-full-full radius-small"]
      114 SETTABLEKS                       R13 R12 K5 ["tag"]
      116 SETTABLEKS                       R1 R12 K37 ["Image"]
      118 GETIMPORT                        R13 K42 [Enum.ScaleType.Fit]
      120 SETTABLEKS                       R13 R12 K38 ["ScaleType"]
      122 DUPTABLE                         R13 K43 [{"UIStroke"}]
      123 GETUPVAL                         R14 3
      124 LOADK                            R15 K20 ["UIStroke"]
      125 DUPTABLE                         R16 K33 [{"Color", "Thickness", "ApplyStrokeMode"}]
      126 GETIMPORT                        R17 K29 [Color3.fromRGB]
      128 LOADN                            R18 180
      129 LOADN                            R19 180
      130 LOADN                            R20 180
      131 CALL                             R17 3 1
      132 SETTABLEKS                       R17 R16 K30 ["Color"]
      134 LOADN                            R17 1
      135 SETTABLEKS                       R17 R16 K31 ["Thickness"]
      137 GETIMPORT                        R17 K36 [Enum.ApplyStrokeMode.Border]
      139 SETTABLEKS                       R17 R16 K32 ["ApplyStrokeMode"]
      141 CALL                             R14 2 1
      142 SETTABLEKS                       R14 R13 K20 ["UIStroke"]
      144 CALL                             R10 3 1
      145 SETTABLEKS                       R10 R9 K14 ["ImageLabel"]
      147 GETUPVAL                         R10 3
      148 LOADK                            R11 K44 ["Frame"]
      149 DUPTABLE                         R12 K48 [{"Size", "Position", "AnchorPoint", "BackgroundTransparency"}]
      150 GETIMPORT                        R13 K12 [UDim2.fromOffset]
      152 LOADN                            R14 24
      153 LOADN                            R15 24
      154 CALL                             R13 2 1
      155 SETTABLEKS                       R13 R12 K6 ["Size"]
      157 GETIMPORT                        R13 K50 [UDim2.new]
      159 LOADN                            R14 1
      160 LOADN                            R15 8
      161 LOADN                            R16 0
      162 LOADN                            R17 0
      163 CALL                             R13 4 1
      164 SETTABLEKS                       R13 R12 K45 ["Position"]
      166 GETIMPORT                        R13 K52 [Vector2.new]
      168 LOADN                            R14 1
      169 LOADN                            R15 0
      170 CALL                             R13 2 1
      171 SETTABLEKS                       R13 R12 K46 ["AnchorPoint"]
      173 LOADN                            R13 1
      174 SETTABLEKS                       R13 R12 K47 ["BackgroundTransparency"]
      176 DUPTABLE                         R13 K54 [{"RemoveButton"}]
      177 GETUPVAL                         R14 3
      178 GETUPVAL                         R15 7
      179 DUPTABLE                         R16 K58 [{"icon", "tag", "iconTag", "onActivated"}]
      180 LOADK                            R17 K59 ["icons/actions/reject"]
      181 SETTABLEKS                       R17 R16 K55 ["icon"]
      183 LOADK                            R17 K60 ["size-400-400 radius-circle bg-surface-100 align-x-center align-y-center"]
      184 SETTABLEKS                       R17 R16 K5 ["tag"]
      186 LOADK                            R17 K61 ["size-300-300 content-default"]
      187 SETTABLEKS                       R17 R16 K56 ["iconTag"]
      189 GETTABLEKS                       R17 R0 K62 ["onRemove"]
      191 SETTABLEKS                       R17 R16 K57 ["onActivated"]
      193 CALL                             R14 2 1
      194 SETTABLEKS                       R14 R13 K53 ["RemoveButton"]
      196 CALL                             R10 3 1
      197 SETTABLEKS                       R10 R9 K15 ["RemoveButtonContainer"]
      199 CALL                             R6 3 -1
      200 RETURN                           R6 -1

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
       42 GETTABLEKS                       R6 R3 K14 ["Icon"]
       44 GETTABLEKS                       R7 R3 K15 ["Image"]
       46 GETTABLEKS                       R8 R3 K16 ["View"]
       48 GETTABLEKS                       R9 R4 K17 ["createElement"]
       50 DUPCLOSURE                       R10 K18 [PROTO_4]
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R9
       55 CAPTURE                          VAL R8
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R1
       59 GETTABLEKS                       R11 R4 K19 ["memo"]
       61 MOVE                             R12 R10
       62 CALL                             R11 1 -1
       63 RETURN                           R11 -1
