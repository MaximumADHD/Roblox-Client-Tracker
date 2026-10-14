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
       11 DUPTABLE                         R5 K10 [{["Size"], ["LayoutOrder"], ["tag"] = "radius-medium clip", ["onStateChanged"], ["testId"] = "ReferenceImageThumbnail"}]
       12 GETIMPORT                        R6 K13 [UDim2.fromOffset]
       14 LOADN                            R7 96
       15 LOADN                            R8 60
       16 CALL                             R6 2 1
       17 SETTABLEKS                       R6 R5 K3 ["Size"]
       19 GETTABLEKS                       R6 R0 K4 ["LayoutOrder"]
       21 SETTABLEKS                       R6 R5 K4 ["LayoutOrder"]
       23 NEWCLOSURE                       R6 P0
       24 CAPTURE                          VAL R2
       25 CAPTURE                          UPVAL U1
       26 SETTABLEKS                       R6 R5 K7 ["onStateChanged"]
       28 DUPTABLE                         R6 K17 [{"Loading", "Image", "Remove"}]
       29 GETTABLEKS                       R8 R0 K18 ["isLoading"]
       31 JUMPIFNOT                        R8 ; [+18]
       32 GETUPVAL                         R7 0
       33 GETTABLEKS                       R7 R7 K1 ["createElement"]
       35 GETUPVAL                         R8 1
       36 GETTABLEKS                       R8 R8 K19 ["Skeleton"]
       38 DUPTABLE                         R9 K23 [{["tag"] = "size-full", ["radius"], ["testId"] = "ReferenceImageLoading"}]
       39 GETUPVAL                         R10 1
       40 GETTABLEKS                       R10 R10 K24 ["Enums"]
       42 GETTABLEKS                       R10 R10 K25 ["Radius"]
       44 GETTABLEKS                       R10 R10 K26 ["Medium"]
       46 SETTABLEKS                       R10 R9 K21 ["radius"]
       48 CALL                             R7 2 1
       49 JUMP                             ; [+1]
       50 LOADNIL                          R7
       51 SETTABLEKS                       R7 R6 K14 ["Loading"]
       53 GETTABLEKS                       R8 R0 K27 ["imageId"]
       55 JUMPIFNOT                        R8 ; [+17]
       56 GETUPVAL                         R7 0
       57 GETTABLEKS                       R7 R7 K1 ["createElement"]
       59 GETUPVAL                         R8 1
       60 GETTABLEKS                       R8 R8 K15 ["Image"]
       62 DUPTABLE                         R9 K30 [{["Image"], ["ScaleType"], ["tag"] = "size-full radius-medium"}]
       63 GETTABLEKS                       R10 R0 K27 ["imageId"]
       65 SETTABLEKS                       R10 R9 K15 ["Image"]
       67 GETIMPORT                        R10 K33 [Enum.ScaleType.Crop]
       69 SETTABLEKS                       R10 R9 K28 ["ScaleType"]
       71 CALL                             R7 2 1
       72 JUMP                             ; [+1]
       73 LOADNIL                          R7
       74 SETTABLEKS                       R7 R6 K15 ["Image"]
       76 JUMPIFNOT                        R1 ; [+61]
       77 GETTABLEKS                       R8 R0 K34 ["disabled"]
       79 JUMPIF                           R8 ; [+58]
       80 GETUPVAL                         R7 0
       81 GETTABLEKS                       R7 R7 K1 ["createElement"]
       83 GETUPVAL                         R8 1
       84 GETTABLEKS                       R8 R8 K2 ["View"]
       86 DUPTABLE                         R9 K42 [{["AnchorPoint"], ["Position"], ["ZIndex"] = 2, ["tag"] = "auto-xy padding-xxsmall radius-small bg-over-media-0", ["onActivated"], ["testId"] = "ReferenceImageRemove"}]
       87 GETIMPORT                        R10 K45 [Vector2.new]
       89 LOADN                            R11 1
       90 LOADN                            R12 0
       91 CALL                             R10 2 1
       92 SETTABLEKS                       R10 R9 K35 ["AnchorPoint"]
       94 GETIMPORT                        R10 K46 [UDim2.new]
       96 LOADN                            R11 1
       97 LOADN                            R12 -2
       98 LOADN                            R13 0
       99 LOADN                            R14 2
      100 CALL                             R10 4 1
      101 SETTABLEKS                       R10 R9 K36 ["Position"]
      103 GETTABLEKS                       R10 R0 K47 ["onRemove"]
      105 SETTABLEKS                       R10 R9 K40 ["onActivated"]
      107 DUPTABLE                         R10 K49 [{"Icon"}]
      108 GETUPVAL                         R11 0
      109 GETTABLEKS                       R11 R11 K1 ["createElement"]
      111 GETUPVAL                         R12 1
      112 GETTABLEKS                       R12 R12 K48 ["Icon"]
      114 DUPTABLE                         R13 K52 [{"name", "size"}]
      115 GETUPVAL                         R14 1
      116 GETTABLEKS                       R14 R14 K24 ["Enums"]
      118 GETTABLEKS                       R14 R14 K53 ["IconName"]
      120 GETTABLEKS                       R14 R14 K54 ["X"]
      122 SETTABLEKS                       R14 R13 K50 ["name"]
      124 GETUPVAL                         R14 1
      125 GETTABLEKS                       R14 R14 K24 ["Enums"]
      127 GETTABLEKS                       R14 R14 K55 ["IconSize"]
      129 GETTABLEKS                       R14 R14 K56 ["XSmall"]
      131 SETTABLEKS                       R14 R13 K51 ["size"]
      133 CALL                             R11 2 1
      134 SETTABLEKS                       R11 R10 K48 ["Icon"]
      136 CALL                             R7 3 1
      137 JUMP                             ; [+1]
      138 LOADNIL                          R7
      139 SETTABLEKS                       R7 R6 K16 ["Remove"]
      141 CALL                             R3 3 -1
      142 RETURN                           R3 -1

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
