PROTO_0:
        0 GETTABLEKS                       R4 R0 K0 ["Scale"]
        2 MUL                              R3 R4 R1
        3 GETTABLEKS                       R4 R0 K1 ["Offset"]
        5 ADD                              R2 R3 R4
        6 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["ContentRegion"]
        2 LOADB                            R4 1
        3 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        5 CALL                             R1 3 1
        6 JUMPIFNOT                        R1 ; [+35]
        7 LOADK                            R4 K2 ["GuiObject"]
        8 NAMECALL                         R2 R1 K3 ["IsA"]
       10 CALL                             R2 2 1
       11 JUMPIFNOT                        R2 ; [+30]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R3 R1 K4 ["Position"]
       15 SETTABLEKS                       R3 R2 K4 ["Position"]
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R3 R1 K5 ["Size"]
       20 SETTABLEKS                       R3 R2 K5 ["Size"]
       22 LOADN                            R3 0
       23 GETTABLEKS                       R5 R1 K5 ["Size"]
       25 GETTABLEKS                       R5 R5 K6 ["X"]
       27 GETTABLEKS                       R6 R0 K7 ["width"]
       29 GETTABLEKS                       R8 R5 K8 ["Scale"]
       31 MUL                              R7 R8 R6
       32 GETTABLEKS                       R8 R5 K9 ["Offset"]
       34 ADD                              R4 R7 R8
       35 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
       37 GETIMPORT                        R2 K12 [math.max]
       39 CALL                             R2 2 1
       40 SETUPVAL                         R2 2
       41 RETURN                           R0 0
       42 GETUPVAL                         R2 1
       43 GETIMPORT                        R3 K15 [UDim2.fromOffset]
       45 LOADN                            R4 0
       46 LOADN                            R5 0
       47 CALL                             R3 2 1
       48 SETTABLEKS                       R3 R2 K4 ["Position"]
       50 GETUPVAL                         R2 1
       51 GETIMPORT                        R3 K17 [UDim2.fromScale]
       53 LOADN                            R4 1
       54 LOADN                            R5 1
       55 CALL                             R3 2 1
       56 SETTABLEKS                       R3 R2 K5 ["Size"]
       58 GETTABLEKS                       R2 R0 K7 ["width"]
       60 SETUPVAL                         R2 2
       61 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R3 K2 [Instance.new]
        2 LOADK                            R4 K3 ["Frame"]
        3 CALL                             R3 1 1
        4 SETTABLEKS                       R0 R3 K4 ["Name"]
        6 GETIMPORT                        R4 K6 [Vector2.new]
        8 MOVE                             R5 R1
        9 LOADN                            R6 0
       10 CALL                             R4 2 1
       11 SETTABLEKS                       R4 R3 K7 ["AnchorPoint"]
       13 SETTABLEKS                       R2 R3 K8 ["Position"]
       15 GETIMPORT                        R4 K10 [UDim2.new]
       17 LOADN                            R5 0
       18 GETUPVAL                         R6 0
       19 LOADN                            R7 1
       20 LOADN                            R8 0
       21 CALL                             R4 4 1
       22 SETTABLEKS                       R4 R3 K11 ["Size"]
       24 GETUPVAL                         R4 1
       25 SETTABLEKS                       R4 R3 K12 ["BackgroundColor3"]
       27 LOADK                            R4 K13 [0.94]
       28 SETTABLEKS                       R4 R3 K14 ["BackgroundTransparency"]
       30 LOADN                            R4 0
       31 SETTABLEKS                       R4 R3 K15 ["BorderSizePixel"]
       33 LOADN                            R4 1
       34 SETTABLEKS                       R4 R3 K16 ["ZIndex"]
       36 GETUPVAL                         R4 2
       37 SETTABLEKS                       R4 R3 K17 ["Parent"]
       39 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["ClearAllChildren"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K1 ["getLayoutMetrics"]
       10 GETUPVAL                         R3 3
       11 LOADN                            R4 0
       12 JUMPIFNOTLT                      R4 R3 ; [+3]
       14 GETUPVAL                         R2 3
       15 JUMP                             ; [+2]
       16 GETTABLEKS                       R2 R0 K2 ["width"]
       18 CALL                             R1 1 1
       19 LOADN                            R3 1
       20 GETTABLEKS                       R4 R1 K3 ["columns"]
       22 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
       24 GETIMPORT                        R2 K6 [math.max]
       26 CALL                             R2 2 1
       27 LOADN                            R4 0
       28 GETTABLEKS                       R5 R1 K7 ["margin"]
       30 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
       32 GETIMPORT                        R3 K6 [math.max]
       34 CALL                             R3 2 1
       35 LOADN                            R5 0
       36 GETTABLEKS                       R6 R1 K8 ["gutter"]
       38 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       40 GETIMPORT                        R4 K6 [math.max]
       42 CALL                             R4 2 1
       43 NEWCLOSURE                       R5 P0
       44 CAPTURE                          VAL R3
       45 CAPTURE                          UPVAL U4
       46 CAPTURE                          UPVAL U0
       47 LOADN                            R6 0
       48 JUMPIFNOTLT                      R6 R3 ; [+21]
       50 MOVE                             R6 R5
       51 LOADK                            R7 K9 ["MarginLeft"]
       52 LOADN                            R8 0
       53 GETIMPORT                        R9 K12 [UDim2.fromOffset]
       55 LOADN                            R10 0
       56 LOADN                            R11 0
       57 CALL                             R9 2 -1
       58 CALL                             R6 -1 0
       59 MOVE                             R6 R5
       60 LOADK                            R7 K13 ["MarginRight"]
       61 LOADN                            R8 1
       62 GETIMPORT                        R9 K15 [UDim2.new]
       64 LOADN                            R10 1
       65 LOADN                            R11 0
       66 LOADN                            R12 0
       67 LOADN                            R13 0
       68 CALL                             R9 4 -1
       69 CALL                             R6 -1 0
       70 LOADN                            R7 0
       71 GETUPVAL                         R9 3
       72 MULK                             R10 R3 K16 [2]
       73 SUB                              R8 R9 R10
       74 FASTCALL2                        MATH_MAX R7 R8 ; [+3]
       76 GETIMPORT                        R6 K6 [math.max]
       78 CALL                             R6 2 1
       79 SUBK                             R8 R2 K17 [1]
       80 MUL                              R7 R4 R8
       81 JUMPIFNOTLT                      R7 R6 ; [+4]
       83 SUB                              R9 R6 R7
       84 DIV                              R8 R9 R2
       85 JUMP                             ; [+1]
       86 LOADN                            R8 0
       87 LOADN                            R11 1
       88 MOVE                             R9 R2
       89 LOADN                            R10 1
       90 FORNPREP                         R9
       91 GETIMPORT                        R12 K19 [Instance.new]
       93 LOADK                            R13 K20 ["Frame"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K23 [string.format]
       97 LOADK                            R14 K24 ["Col%02d"]
       98 MOVE                             R15 R11
       99 CALL                             R13 2 1
      100 SETTABLEKS                       R13 R12 K25 ["Name"]
      102 GETIMPORT                        R13 K12 [UDim2.fromOffset]
      104 SUBK                             R16 R11 K17 [1]
      105 ADD                              R17 R8 R4
      106 MUL                              R15 R16 R17
      107 ADD                              R14 R3 R15
      108 LOADN                            R15 0
      109 CALL                             R13 2 1
      110 SETTABLEKS                       R13 R12 K26 ["Position"]
      112 GETIMPORT                        R13 K15 [UDim2.new]
      114 LOADN                            R14 0
      115 MOVE                             R15 R8
      116 LOADN                            R16 1
      117 LOADN                            R17 0
      118 CALL                             R13 4 1
      119 SETTABLEKS                       R13 R12 K27 ["Size"]
      121 GETUPVAL                         R13 4
      122 SETTABLEKS                       R13 R12 K28 ["BackgroundColor3"]
      124 LOADK                            R13 K29 [0.88]
      125 SETTABLEKS                       R13 R12 K30 ["BackgroundTransparency"]
      127 LOADN                            R13 0
      128 SETTABLEKS                       R13 R12 K31 ["BorderSizePixel"]
      130 LOADN                            R13 2
      131 SETTABLEKS                       R13 R12 K32 ["ZIndex"]
      133 SETTABLEKS                       R11 R12 K33 ["LayoutOrder"]
      135 GETUPVAL                         R13 0
      136 SETTABLEKS                       R13 R12 K34 ["Parent"]
      138 FORNLOOP                         R9
      139 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 JUMPIFEQ                         R0 R1 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 3
        8 GETUPVAL                         R1 4
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 5
       11 GETUPVAL                         R1 6
       12 SETTABLEKS                       R1 R0 K0 ["Visible"]
       14 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 0
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 GETIMPORT                        R2 K3 [task.defer]
       14 MOVE                             R3 R1
       15 CALL                             R2 1 0
       16 GETIMPORT                        R2 K5 [task.delay]
       18 LOADK                            R3 K6 [0.05]
       19 MOVE                             R4 R1
       20 CALL                             R2 2 0
       21 GETIMPORT                        R2 K5 [task.delay]
       23 LOADK                            R3 K7 [0.15]
       24 MOVE                             R4 R1
       25 CALL                             R2 2 0
       26 GETIMPORT                        R2 K5 [task.delay]
       28 LOADK                            R3 K8 [0.3]
       29 MOVE                             R4 R1
       30 CALL                             R2 2 0
       31 RETURN                           R0 0

PROTO_6:
        0 SETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 JUMPIFNOT                        R2 ; [+2]
        3 GETUPVAL                         R2 2
        4 CALL                             R2 0 0
        5 RETURN                           R0 0

PROTO_7:
        0 SETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+3]
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 0
        4 JUMP                             ; [+3]
        5 GETUPVAL                         R2 2
        6 GETUPVAL                         R3 3
        7 CALL                             R2 1 0
        8 GETUPVAL                         R2 4
        9 SETTABLEKS                       R1 R2 K0 ["Visible"]
       11 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+2]
        2 GETUPVAL                         R1 1
        3 CALL                             R1 0 0
        4 RETURN                           R0 0

PROTO_9:
        0 LOADB                            R1 1
        1 SETUPVAL                         R1 0
        2 GETUPVAL                         R1 1
        3 ADDK                             R1 R1 K0 [1]
        4 SETUPVAL                         R1 1
        5 GETUPVAL                         R1 2
        6 NAMECALL                         R1 R1 K1 ["Destroy"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["Frame"]
        3 CALL                             R2 1 1
        4 LOADK                            R3 K4 ["__GridOverlay"]
        5 SETTABLEKS                       R3 R2 K5 ["Name"]
        7 GETIMPORT                        R3 K8 [UDim2.fromScale]
        9 LOADN                            R4 1
       10 LOADN                            R5 1
       11 CALL                             R3 2 1
       12 SETTABLEKS                       R3 R2 K9 ["Size"]
       14 LOADN                            R3 1
       15 SETTABLEKS                       R3 R2 K10 ["BackgroundTransparency"]
       17 LOADN                            R3 0
       18 SETTABLEKS                       R3 R2 K11 ["BorderSizePixel"]
       20 LOADB                            R3 0
       21 SETTABLEKS                       R3 R2 K12 ["Visible"]
       23 LOADN                            R3 50
       24 SETTABLEKS                       R3 R2 K13 ["ZIndex"]
       26 SETTABLEKS                       R0 R2 K14 ["Parent"]
       28 MOVE                             R3 R1
       29 GETTABLEKS                       R4 R1 K15 ["width"]
       31 LOADB                            R5 0
       32 LOADB                            R6 0
       33 LOADN                            R7 0
       34 DUPCLOSURE                       R8 K16 [PROTO_0]
       35 NEWCLOSURE                       R9 P1
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R2
       38 CAPTURE                          REF R4
       39 NEWCLOSURE                       R10 P2
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R9
       42 CAPTURE                          UPVAL U0
       43 CAPTURE                          REF R4
       44 CAPTURE                          UPVAL U1
       45 NEWCLOSURE                       R11 P3
       46 CAPTURE                          REF R7
       47 CAPTURE                          REF R6
       48 CAPTURE                          VAL R10
       49 CAPTURE                          REF R3
       50 CAPTURE                          VAL R2
       51 CAPTURE                          REF R5
       52 MOVE                             R12 R10
       53 MOVE                             R13 R1
       54 CALL                             R12 1 0
       55 NEWTABLE                         R12 0 0
       57 NEWCLOSURE                       R13 P4
       58 CAPTURE                          REF R3
       59 CAPTURE                          REF R5
       60 CAPTURE                          VAL R11
       61 SETTABLEKS                       R13 R12 K17 ["setProfile"]
       63 NEWCLOSURE                       R13 P5
       64 CAPTURE                          REF R5
       65 CAPTURE                          VAL R11
       66 CAPTURE                          VAL R9
       67 CAPTURE                          REF R3
       68 CAPTURE                          VAL R2
       69 SETTABLEKS                       R13 R12 K18 ["setVisible"]
       71 NEWCLOSURE                       R13 P6
       72 CAPTURE                          REF R5
       73 CAPTURE                          VAL R11
       74 SETTABLEKS                       R13 R12 K19 ["refreshTarget"]
       76 NEWCLOSURE                       R13 P7
       77 CAPTURE                          REF R6
       78 CAPTURE                          REF R7
       79 CAPTURE                          VAL R2
       80 SETTABLEKS                       R13 R12 K20 ["destroy"]
       82 CLOSEUPVALS                      R3
       83 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["AppFramework"]
       13 GETTABLEKS                       R2 R2 K8 ["DeviceProfiles"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K11 [Color3.fromRGB]
       18 LOADN                            R3 255
       19 LOADN                            R4 64
       20 LOADN                            R5 128
       21 CALL                             R2 3 1
       22 NEWTABLE                         R3 1 0
       24 DUPCLOSURE                       R4 K12 [PROTO_10]
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R2
       27 SETTABLEKS                       R4 R3 K13 ["mount"]
       29 RETURN                           R3 1
