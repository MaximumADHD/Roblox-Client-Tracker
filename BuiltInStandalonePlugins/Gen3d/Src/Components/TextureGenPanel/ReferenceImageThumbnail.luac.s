PROTO_0:
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

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["createElement"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K2 ["View"]
       11 DUPTABLE                         R5 K9 [{["Size"], ["LayoutOrder"], ["tag"] = "radius-medium clip", ["onStateChanged"], ["testId"]}]
       12 GETTABLEKS                       R6 R0 K10 ["size"]
       14 JUMPIF                           R6 ; [+5]
       15 GETIMPORT                        R6 K13 [UDim2.fromOffset]
       17 LOADN                            R7 96
       18 LOADN                            R8 60
       19 CALL                             R6 2 1
       20 SETTABLEKS                       R6 R5 K3 ["Size"]
       22 GETTABLEKS                       R6 R0 K4 ["LayoutOrder"]
       24 SETTABLEKS                       R6 R5 K4 ["LayoutOrder"]
       26 NEWCLOSURE                       R6 P0
       27 CAPTURE                          VAL R2
       28 CAPTURE                          UPVAL U1
       29 SETTABLEKS                       R6 R5 K7 ["onStateChanged"]
       31 GETTABLEKS                       R7 R0 K8 ["testId"]
       33 ORK                              R6 R7 K14 ["ReferenceImageThumbnail"]
       34 SETTABLEKS                       R6 R5 K8 ["testId"]
       36 DUPTABLE                         R6 K18 [{"Loading", "Image", "Remove"}]
       37 GETTABLEKS                       R8 R0 K19 ["isLoading"]
       39 JUMPIFNOT                        R8 ; [+18]
       40 GETUPVAL                         R7 0
       41 GETTABLEKS                       R7 R7 K1 ["createElement"]
       43 GETUPVAL                         R8 1
       44 GETTABLEKS                       R8 R8 K20 ["Skeleton"]
       46 DUPTABLE                         R9 K24 [{["tag"] = "size-full", ["radius"], ["testId"] = "ReferenceImageLoading"}]
       47 GETUPVAL                         R10 1
       48 GETTABLEKS                       R10 R10 K25 ["Enums"]
       50 GETTABLEKS                       R10 R10 K26 ["Radius"]
       52 GETTABLEKS                       R10 R10 K27 ["Medium"]
       54 SETTABLEKS                       R10 R9 K22 ["radius"]
       56 CALL                             R7 2 1
       57 JUMP                             ; [+1]
       58 LOADNIL                          R7
       59 SETTABLEKS                       R7 R6 K15 ["Loading"]
       61 GETTABLEKS                       R8 R0 K28 ["imageId"]
       63 JUMPIFNOT                        R8 ; [+17]
       64 GETUPVAL                         R7 0
       65 GETTABLEKS                       R7 R7 K1 ["createElement"]
       67 GETUPVAL                         R8 1
       68 GETTABLEKS                       R8 R8 K16 ["Image"]
       70 DUPTABLE                         R9 K31 [{["Image"], ["ScaleType"], ["tag"] = "size-full radius-medium"}]
       71 GETTABLEKS                       R10 R0 K28 ["imageId"]
       73 SETTABLEKS                       R10 R9 K16 ["Image"]
       75 GETIMPORT                        R10 K34 [Enum.ScaleType.Crop]
       77 SETTABLEKS                       R10 R9 K29 ["ScaleType"]
       79 CALL                             R7 2 1
       80 JUMP                             ; [+1]
       81 LOADNIL                          R7
       82 SETTABLEKS                       R7 R6 K16 ["Image"]
       84 JUMPIFNOT                        R1 ; [+74]
       85 GETTABLEKS                       R8 R0 K35 ["disabled"]
       87 JUMPIF                           R8 ; [+71]
       88 GETUPVAL                         R7 0
       89 GETTABLEKS                       R7 R7 K1 ["createElement"]
       91 GETUPVAL                         R8 1
       92 GETTABLEKS                       R8 R8 K2 ["View"]
       94 DUPTABLE                         R9 K42 [{["AnchorPoint"], ["Position"], ["ZIndex"] = 2, ["tag"] = "auto-xy padding-xxsmall radius-small bg-over-media-0", ["onActivated"], ["testId"]}]
       95 GETIMPORT                        R10 K45 [Vector2.new]
       97 LOADN                            R11 1
       98 LOADN                            R12 0
       99 CALL                             R10 2 1
      100 SETTABLEKS                       R10 R9 K36 ["AnchorPoint"]
      102 GETIMPORT                        R10 K46 [UDim2.new]
      104 LOADN                            R11 1
      105 LOADN                            R12 -2
      106 LOADN                            R13 0
      107 LOADN                            R14 2
      108 CALL                             R10 4 1
      109 SETTABLEKS                       R10 R9 K37 ["Position"]
      111 GETTABLEKS                       R10 R0 K47 ["onRemove"]
      113 SETTABLEKS                       R10 R9 K41 ["onActivated"]
      115 GETTABLEKS                       R11 R0 K8 ["testId"]
      117 JUMPIFNOT                        R11 ; [+7]
      118 LOADK                            R10 K48 ["%*Remove"]
      119 GETTABLEKS                       R12 R0 K8 ["testId"]
      121 NAMECALL                         R10 R10 K49 ["format"]
      123 CALL                             R10 2 1
      124 JUMP                             ; [+1]
      125 LOADK                            R10 K50 ["ReferenceImageRemove"]
      126 SETTABLEKS                       R10 R9 K8 ["testId"]
      128 DUPTABLE                         R10 K52 [{"Icon"}]
      129 GETUPVAL                         R11 0
      130 GETTABLEKS                       R11 R11 K1 ["createElement"]
      132 GETUPVAL                         R12 1
      133 GETTABLEKS                       R12 R12 K51 ["Icon"]
      135 DUPTABLE                         R13 K54 [{"name", "size"}]
      136 GETUPVAL                         R14 1
      137 GETTABLEKS                       R14 R14 K25 ["Enums"]
      139 GETTABLEKS                       R14 R14 K55 ["IconName"]
      141 GETTABLEKS                       R14 R14 K56 ["X"]
      143 SETTABLEKS                       R14 R13 K53 ["name"]
      145 GETUPVAL                         R14 1
      146 GETTABLEKS                       R14 R14 K25 ["Enums"]
      148 GETTABLEKS                       R14 R14 K57 ["IconSize"]
      150 GETTABLEKS                       R14 R14 K58 ["XSmall"]
      152 SETTABLEKS                       R14 R13 K10 ["size"]
      154 CALL                             R11 2 1
      155 SETTABLEKS                       R11 R10 K51 ["Icon"]
      157 CALL                             R7 3 1
      158 JUMP                             ; [+1]
      159 LOADNIL                          R7
      160 SETTABLEKS                       R7 R6 K17 ["Remove"]
      162 CALL                             R3 3 -1
      163 RETURN                           R3 -1

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
       21 DUPCLOSURE                       R3 K9 [PROTO_1]
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 RETURN                           R3 1
