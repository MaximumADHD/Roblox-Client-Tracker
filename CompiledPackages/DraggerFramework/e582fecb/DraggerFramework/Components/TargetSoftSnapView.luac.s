PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 NAMECALL                         R1 R0 K0 ["AddLine"]
        4 CALL                             R1 3 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 NAMECALL                         R1 R0 K0 ["AddLine"]
        4 CALL                             R1 3 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["From"]
        2 GETTABLEKS                       R2 R0 K1 ["To"]
        4 JUMPIFNOTEQ                      R1 R2 ; [+33]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["createElement"]
        9 LOADK                            R4 K3 ["BoxHandleAdornment"]
       10 DUPTABLE                         R5 K12 [{["CFrame"], ["Adornee"], ["Size"], ["Color3"], ["ZIndex"] = 0, ["AlwaysOnTop"] = True}]
       11 GETIMPORT                        R6 K14 [CFrame.new]
       13 MOVE                             R7 R1
       14 CALL                             R6 1 1
       15 SETTABLEKS                       R6 R5 K4 ["CFrame"]
       17 GETIMPORT                        R6 K16 [workspace]
       19 GETTABLEKS                       R6 R6 K17 ["Terrain"]
       21 SETTABLEKS                       R6 R5 K5 ["Adornee"]
       23 LOADK                            R7 K18 [{1, 1, 1}]
       24 LOADK                            R9 K19 [0.3]
       25 GETTABLEKS                       R10 R0 K20 ["Scale"]
       27 MUL                              R8 R9 R10
       28 MUL                              R6 R7 R8
       29 SETTABLEKS                       R6 R5 K6 ["Size"]
       31 GETTABLEKS                       R6 R0 K7 ["Color3"]
       33 SETTABLEKS                       R6 R5 K7 ["Color3"]
       35 CALL                             R3 2 -1
       36 CLOSEUPVALS                      R1
       37 RETURN                           R3 -1
       38 SUB                              R3 R2 R1
       39 GETTABLEKS                       R4 R3 K21 ["Unit"]
       41 LOADK                            R7 K22 [1.5]
       42 GETTABLEKS                       R8 R0 K20 ["Scale"]
       44 MUL                              R6 R7 R8
       45 MUL                              R5 R4 R6
       46 SUB                              R1 R1 R5
       47 ADD                              R2 R2 R5
       48 GETUPVAL                         R6 0
       49 GETTABLEKS                       R6 R6 K23 ["createFragment"]
       51 DUPTABLE                         R7 K26 [{"Bottom", "Top"}]
       52 GETUPVAL                         R8 0
       53 GETTABLEKS                       R8 R8 K2 ["createElement"]
       55 GETUPVAL                         R9 1
       56 DUPTABLE                         R10 K29 [{["Color3"], ["AlwaysOnTop"] = False, ["Render"]}]
       57 GETTABLEKS                       R11 R0 K7 ["Color3"]
       59 SETTABLEKS                       R11 R10 K7 ["Color3"]
       61 NEWCLOSURE                       R11 P0
       62 CAPTURE                          REF R1
       63 CAPTURE                          REF R2
       64 SETTABLEKS                       R11 R10 K28 ["Render"]
       66 CALL                             R8 2 1
       67 SETTABLEKS                       R8 R7 K24 ["Bottom"]
       69 GETUPVAL                         R8 0
       70 GETTABLEKS                       R8 R8 K2 ["createElement"]
       72 GETUPVAL                         R9 1
       73 DUPTABLE                         R10 K32 [{["Color3"], ["AlwaysOnTop"] = True, ["Transparency"] = 0.6, ["Render"]}]
       74 GETTABLEKS                       R11 R0 K7 ["Color3"]
       76 SETTABLEKS                       R11 R10 K7 ["Color3"]
       78 NEWCLOSURE                       R11 P1
       79 CAPTURE                          REF R1
       80 CAPTURE                          REF R2
       81 SETTABLEKS                       R11 R10 K28 ["Render"]
       83 CALL                             R8 2 1
       84 SETTABLEKS                       R8 R7 K25 ["Top"]
       86 CALL                             R6 1 -1
       87 CLOSEUPVALS                      R1
       88 RETURN                           R6 -1

PROTO_3:
        0 JUMPIFNOT                        R0 ; [+23]
        1 LOADK                            R3 K0 ["Part"]
        2 NAMECALL                         R1 R0 K1 ["IsA"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+18]
        6 GETTABLEKS                       R1 R0 K2 ["Shape"]
        8 GETIMPORT                        R2 K6 [Enum.PartType.Ball]
       10 JUMPIFNOTEQ                      R1 R2 ; [+4]
       12 GETIMPORT                        R1 K6 [Enum.PartType.Ball]
       14 RETURN                           R1 1
       15 GETTABLEKS                       R1 R0 K2 ["Shape"]
       17 GETIMPORT                        R2 K8 [Enum.PartType.Cylinder]
       19 JUMPIFNOTEQ                      R1 R2 ; [+4]
       21 GETIMPORT                        R1 K8 [Enum.PartType.Cylinder]
       23 RETURN                           R1 1
       24 LOADNIL                          R1
       25 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["DraggerContext"]
        2 NAMECALL                         R2 R1 K1 ["getChosenColor"]
        4 CALL                             R2 1 1
        5 NEWTABLE                         R3 1 0
        7 GETTABLEKS                       R4 R0 K2 ["DragTarget"]
        9 GETTABLEKS                       R5 R4 K3 ["softSnaps"]
       11 LOADNIL                          R6
       12 LOADNIL                          R7
       13 FORGPREP                         R5
       14 GETTABLEKS                       R10 R9 K4 ["a"]
       16 GETTABLEKS                       R11 R9 K5 ["b"]
       18 GETUPVAL                         R12 0
       19 GETTABLEKS                       R12 R12 K6 ["createElement"]
       21 GETUPVAL                         R13 1
       22 DUPTABLE                         R14 K11 [{"From", "To", "Scale", "Color3"}]
       23 SETTABLEKS                       R10 R14 K7 ["From"]
       25 SETTABLEKS                       R11 R14 K8 ["To"]
       27 LOADK                            R18 K12 [0.5]
       28 ADD                              R19 R10 R11
       29 MUL                              R17 R18 R19
       30 NAMECALL                         R15 R1 K13 ["getHandleScale"]
       32 CALL                             R15 2 1
       33 SETTABLEKS                       R15 R14 K9 ["Scale"]
       35 SETTABLEKS                       R2 R14 K10 ["Color3"]
       37 CALL                             R12 2 1
       38 SETTABLE                         R12 R3 R8
       39 FORGLOOP                         R5 2 ; [-26]
       41 NAMECALL                         R5 R1 K14 ["getGridColor"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R7 R4 K15 ["targetPart"]
       46 JUMPIFNOT                        R7 ; [+23]
       47 LOADK                            R10 K16 ["Part"]
       48 NAMECALL                         R8 R7 K17 ["IsA"]
       50 CALL                             R8 2 1
       51 JUMPIFNOT                        R8 ; [+18]
       52 GETTABLEKS                       R8 R7 K18 ["Shape"]
       54 GETIMPORT                        R9 K22 [Enum.PartType.Ball]
       56 JUMPIFNOTEQ                      R8 R9 ; [+4]
       58 GETIMPORT                        R6 K22 [Enum.PartType.Ball]
       60 JUMP                             ; [+10]
       61 GETTABLEKS                       R8 R7 K18 ["Shape"]
       63 GETIMPORT                        R9 K24 [Enum.PartType.Cylinder]
       65 JUMPIFNOTEQ                      R8 R9 ; [+4]
       67 GETIMPORT                        R6 K24 [Enum.PartType.Cylinder]
       69 JUMP                             ; [+1]
       70 LOADNIL                          R6
       71 GETIMPORT                        R7 K22 [Enum.PartType.Ball]
       73 JUMPIFNOTEQ                      R6 R7 ; [+16]
       75 GETUPVAL                         R7 0
       76 GETTABLEKS                       R7 R7 K6 ["createElement"]
       78 GETUPVAL                         R8 2
       79 DUPTABLE                         R9 K25 [{"Part", "Color3"}]
       80 GETTABLEKS                       R10 R4 K15 ["targetPart"]
       82 SETTABLEKS                       R10 R9 K16 ["Part"]
       84 SETTABLEKS                       R5 R9 K10 ["Color3"]
       86 CALL                             R7 2 1
       87 SETTABLEKS                       R7 R3 K26 ["MajorLines"]
       89 JUMP                             ; [+18]
       90 GETIMPORT                        R7 K24 [Enum.PartType.Cylinder]
       92 JUMPIFNOTEQ                      R6 R7 ; [+15]
       94 GETUPVAL                         R7 0
       95 GETTABLEKS                       R7 R7 K6 ["createElement"]
       97 GETUPVAL                         R8 3
       98 DUPTABLE                         R9 K25 [{"Part", "Color3"}]
       99 GETTABLEKS                       R10 R4 K15 ["targetPart"]
      101 SETTABLEKS                       R10 R9 K16 ["Part"]
      103 SETTABLEKS                       R5 R9 K10 ["Color3"]
      105 CALL                             R7 2 1
      106 SETTABLEKS                       R7 R3 K26 ["MajorLines"]
      108 GETUPVAL                         R7 0
      109 GETTABLEKS                       R7 R7 K27 ["createFragment"]
      111 MOVE                             R8 R3
      112 CALL                             R7 1 -1
      113 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R1 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R3 R1 K5 ["Packages"]
       15 GETTABLEKS                       R3 R3 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K4 [require]
       20 GETTABLEKS                       R4 R0 K7 ["Components"]
       22 GETTABLEKS                       R4 R4 K8 ["WireframeHandleAdornment"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K4 [require]
       27 GETTABLEKS                       R5 R0 K7 ["Components"]
       29 GETTABLEKS                       R5 R5 K9 ["SphereMajorLines"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K4 [require]
       34 GETTABLEKS                       R6 R0 K7 ["Components"]
       36 GETTABLEKS                       R6 R6 K10 ["CylinderMajorLines"]
       38 CALL                             R5 1 1
       39 DUPCLOSURE                       R6 K11 [PROTO_2]
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R3
       42 DUPCLOSURE                       R7 K12 [PROTO_3]
       43 DUPCLOSURE                       R8 K13 [PROTO_4]
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R5
       48 RETURN                           R8 1
