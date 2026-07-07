PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"Size", "LayoutOrder"}]
        5 GETTABLEKS                       R4 R0 K1 ["Size"]
        7 SETTABLEKS                       R4 R3 K1 ["Size"]
        9 GETTABLEKS                       R4 R0 K2 ["LayoutOrder"]
       11 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       13 DUPTABLE                         R4 K7 [{"BackButton", "RerollButton", "SaveButton"}]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K0 ["createElement"]
       17 GETUPVAL                         R6 2
       18 DUPTABLE                         R7 K12 [{["LayoutOrder"] = 1, ["Size"], ["OnClick"], ["Style"] = "Round"}]
       19 GETIMPORT                        R8 K15 [UDim2.fromOffset]
       21 LOADN                            R9 32
       22 LOADN                            R10 32
       23 CALL                             R8 2 1
       24 SETTABLEKS                       R8 R7 K1 ["Size"]
       26 GETTABLEKS                       R8 R0 K16 ["OnBackButtonClick"]
       28 SETTABLEKS                       R8 R7 K9 ["OnClick"]
       30 DUPTABLE                         R8 K18 [{"Icon"}]
       31 GETUPVAL                         R9 0
       32 GETTABLEKS                       R9 R9 K0 ["createElement"]
       34 GETUPVAL                         R10 3
       35 DUPTABLE                         R11 K24 [{["AnchorPoint"], ["Image"] = "rbxasset://textures/StudioSharedUI/Undo.png", ["Position"], ["Size"], ["Style"] = "Colored"}]
       36 GETIMPORT                        R12 K27 [Vector2.new]
       38 LOADK                            R13 K28 [0.5]
       39 LOADK                            R14 K28 [0.5]
       40 CALL                             R12 2 1
       41 SETTABLEKS                       R12 R11 K19 ["AnchorPoint"]
       43 GETIMPORT                        R12 K30 [UDim2.fromScale]
       45 LOADK                            R13 K28 [0.5]
       46 LOADK                            R14 K28 [0.5]
       47 CALL                             R12 2 1
       48 SETTABLEKS                       R12 R11 K22 ["Position"]
       50 GETIMPORT                        R12 K15 [UDim2.fromOffset]
       52 LOADN                            R13 16
       53 LOADN                            R14 16
       54 CALL                             R12 2 1
       55 SETTABLEKS                       R12 R11 K1 ["Size"]
       57 CALL                             R9 2 1
       58 SETTABLEKS                       R9 R8 K17 ["Icon"]
       60 CALL                             R5 3 1
       61 SETTABLEKS                       R5 R4 K4 ["BackButton"]
       63 GETUPVAL                         R5 0
       64 GETTABLEKS                       R5 R5 K0 ["createElement"]
       66 GETUPVAL                         R6 4
       67 DUPTABLE                         R7 K37 [{["LayoutOrder"] = 2, ["AnchorPoint"], ["Disabled"], ["LeftIcon"], ["Size"], ["Position"], ["Style"] = "Primary", ["StyleModifier"], ["TooltipText"], ["OnClick"]}]
       68 GETIMPORT                        R8 K27 [Vector2.new]
       70 LOADN                            R9 1
       71 LOADK                            R10 K28 [0.5]
       72 CALL                             R8 2 1
       73 SETTABLEKS                       R8 R7 K19 ["AnchorPoint"]
       75 GETTABLEKS                       R9 R0 K38 ["Enabled"]
       77 NOT                              R8 R9
       78 SETTABLEKS                       R8 R7 K32 ["Disabled"]
       80 GETTABLEKS                       R8 R0 K10 ["Style"]
       82 GETTABLEKS                       R8 R8 K39 ["RerollIcon"]
       84 SETTABLEKS                       R8 R7 K33 ["LeftIcon"]
       86 GETIMPORT                        R8 K15 [UDim2.fromOffset]
       88 LOADN                            R9 32
       89 LOADN                            R10 32
       90 CALL                             R8 2 1
       91 SETTABLEKS                       R8 R7 K1 ["Size"]
       93 GETIMPORT                        R8 K40 [UDim2.new]
       95 LOADN                            R9 1
       96 GETTABLEKS                       R12 R0 K10 ["Style"]
       98 GETTABLEKS                       R12 R12 K42 ["GenerateButtonSize"]
      100 GETTABLEKS                       R12 R12 K43 ["X"]
      102 GETTABLEKS                       R12 R12 K44 ["Offset"]
      104 MINUS                            R11 R12
      105 SUBK                             R10 R11 K41 [5]
      106 LOADK                            R11 K28 [0.5]
      107 LOADN                            R12 0
      108 CALL                             R8 4 1
      109 SETTABLEKS                       R8 R7 K22 ["Position"]
      111 GETTABLEKS                       R9 R0 K38 ["Enabled"]
      113 JUMPIF                           R9 ; [+4]
      114 GETUPVAL                         R8 5
      115 GETTABLEKS                       R8 R8 K32 ["Disabled"]
      117 JUMP                             ; [+1]
      118 LOADNIL                          R8
      119 SETTABLEKS                       R8 R7 K35 ["StyleModifier"]
      121 GETTABLEKS                       R8 R0 K45 ["RerollTooltipText"]
      123 SETTABLEKS                       R8 R7 K36 ["TooltipText"]
      125 GETTABLEKS                       R8 R0 K46 ["OnRerollButtonClick"]
      127 SETTABLEKS                       R8 R7 K9 ["OnClick"]
      129 CALL                             R5 2 1
      130 SETTABLEKS                       R5 R4 K5 ["RerollButton"]
      132 GETUPVAL                         R5 0
      133 GETTABLEKS                       R5 R5 K0 ["createElement"]
      135 GETUPVAL                         R6 4
      136 DUPTABLE                         R7 K49 [{["LayoutOrder"] = 3, ["AnchorPoint"], ["Disabled"], ["Position"], ["Size"], ["Style"], ["StyleModifier"], ["Text"], ["TooltipText"], ["OnClick"]}]
      137 GETIMPORT                        R8 K27 [Vector2.new]
      139 LOADN                            R9 1
      140 LOADK                            R10 K28 [0.5]
      141 CALL                             R8 2 1
      142 SETTABLEKS                       R8 R7 K19 ["AnchorPoint"]
      144 GETTABLEKS                       R9 R0 K38 ["Enabled"]
      146 NOT                              R8 R9
      147 SETTABLEKS                       R8 R7 K32 ["Disabled"]
      149 GETIMPORT                        R8 K30 [UDim2.fromScale]
      151 LOADN                            R9 1
      152 LOADK                            R10 K28 [0.5]
      153 CALL                             R8 2 1
      154 SETTABLEKS                       R8 R7 K22 ["Position"]
      156 GETTABLEKS                       R8 R0 K10 ["Style"]
      158 GETTABLEKS                       R8 R8 K42 ["GenerateButtonSize"]
      160 SETTABLEKS                       R8 R7 K1 ["Size"]
      162 GETTABLEKS                       R8 R0 K10 ["Style"]
      164 GETTABLEKS                       R8 R8 K50 ["GenerateButtonStyle"]
      166 SETTABLEKS                       R8 R7 K10 ["Style"]
      168 GETTABLEKS                       R9 R0 K38 ["Enabled"]
      170 JUMPIF                           R9 ; [+4]
      171 GETUPVAL                         R8 5
      172 GETTABLEKS                       R8 R8 K32 ["Disabled"]
      174 JUMP                             ; [+1]
      175 LOADNIL                          R8
      176 SETTABLEKS                       R8 R7 K35 ["StyleModifier"]
      178 GETTABLEKS                       R8 R0 K51 ["GenerateButtonText"]
      180 SETTABLEKS                       R8 R7 K48 ["Text"]
      182 GETTABLEKS                       R8 R0 K52 ["QuotaTooltipText"]
      184 SETTABLEKS                       R8 R7 K36 ["TooltipText"]
      186 GETTABLEKS                       R8 R0 K53 ["OnGenerateButtonClick"]
      188 SETTABLEKS                       R8 R7 K9 ["OnClick"]
      190 CALL                             R5 2 1
      191 SETTABLEKS                       R5 R4 K6 ["SaveButton"]
      193 CALL                             R1 3 -1
      194 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K2 ["ThresholdTime"]
        6 ORK                              R1 R2 K1 [180]
        7 GETIMPORT                        R3 K5 [os.clock]
        9 CALL                             R3 0 1
       10 GETTABLEKS                       R4 R0 K6 ["startTime"]
       12 SUB                              R2 R3 R4
       13 JUMPIFNOTLT                      R1 R2 ; [+37]
       15 GETUPVAL                         R3 2
       16 NAMECALL                         R3 R3 K7 ["Disconnect"]
       18 CALL                             R3 1 0
       19 GETUPVAL                         R3 3
       20 GETTABLEKS                       R3 R3 K8 ["addError"]
       22 GETUPVAL                         R4 4
       23 LOADK                            R5 K9 ["Timeout"]
       24 GETUPVAL                         R6 5
       25 LOADK                            R8 K10 ["PreviewArea"]
       26 LOADK                            R9 K11 ["TimeoutTitle"]
       27 NAMECALL                         R6 R6 K12 ["getText"]
       29 CALL                             R6 3 1
       30 GETUPVAL                         R7 5
       31 LOADK                            R9 K10 ["PreviewArea"]
       32 LOADK                            R10 K13 ["TimeoutDescription"]
       33 NAMECALL                         R7 R7 K12 ["getText"]
       35 CALL                             R7 3 1
       36 LOADK                            R8 K14 ["error"]
       37 CALL                             R3 5 0
       38 GETUPVAL                         R3 3
       39 GETTABLEKS                       R3 R3 K15 ["removePreview"]
       41 GETTABLEKS                       R4 R0 K16 ["uuid"]
       43 CALL                             R3 1 0
       44 GETUPVAL                         R3 6
       45 GETTABLEKS                       R3 R3 K17 ["cancelGenerationRequest"]
       47 GETTABLEKS                       R4 R0 K16 ["uuid"]
       49 CALL                             R3 1 0
       50 RETURN                           R0 0
       51 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 1
        4 GETUPVAL                         R1 4
        5 GETTABLEKS                       R1 R1 K0 ["RenderStepped"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U8
       14 CAPTURE                          UPVAL U2
       15 NAMECALL                         R1 R1 K1 ["Connect"]
       17 CALL                             R1 2 1
       18 SETUPVAL                         R1 3
       19 GETUPVAL                         R1 9
       20 GETUPVAL                         R2 3
       21 SETTABLEKS                       R2 R1 K2 ["current"]
       23 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["PreviewData"]
        3 GETTABLEKS                       R0 R0 K1 ["meshParts"]
        5 JUMPIFNOT                        R0 ; [+52]
        6 GETIMPORT                        R1 K4 [Instance.new]
        8 LOADK                            R2 K5 ["Model"]
        9 CALL                             R1 1 1
       10 MOVE                             R2 R0
       11 LOADNIL                          R3
       12 LOADNIL                          R4
       13 FORGPREP                         R2
       14 GETUPVAL                         R7 1
       15 MOVE                             R8 R6
       16 CALL                             R7 1 1
       17 JUMPIFNOT                        R7 ; [+37]
       18 LOADK                            R8 K6 [""]
       19 SETTABLEKS                       R8 R7 K7 ["TextureID"]
       21 GETIMPORT                        R8 K9 [Color3.new]
       23 LOADN                            R9 163
       24 LOADN                            R10 162
       25 LOADN                            R11 165
       26 CALL                             R8 3 1
       27 SETTABLEKS                       R8 R7 K10 ["Color"]
       29 GETIMPORT                        R8 K12 [BrickColor.new]
       31 LOADK                            R9 K13 ["Medium stone grey"]
       32 CALL                             R8 1 1
       33 SETTABLEKS                       R8 R7 K11 ["BrickColor"]
       35 GETIMPORT                        R8 K17 [Enum.Material.Plastic]
       37 SETTABLEKS                       R8 R7 K15 ["Material"]
       39 NAMECALL                         R8 R7 K18 ["GetChildren"]
       41 CALL                             R8 1 3
       42 FORGPREP                         R8
       43 LOADK                            R15 K19 ["SurfaceAppearance"]
       44 NAMECALL                         R13 R12 K20 ["IsA"]
       46 CALL                             R13 2 1
       47 JUMPIFNOT                        R13 ; [+3]
       48 NAMECALL                         R13 R12 K21 ["Destroy"]
       50 CALL                             R13 1 0
       51 FORGLOOP                         R8 2 ; [-9]
       53 SETTABLEKS                       R1 R7 K22 ["Parent"]
       55 FORGLOOP                         R2 2 ; [-42]
       57 RETURN                           R1 1
       58 LOADNIL                          R1
       59 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["PreviewData"]
        3 GETTABLEKS                       R0 R0 K1 ["rotation"]
        5 GETIMPORT                        R2 K4 [CFrame.fromEulerAnglesYXZ]
        7 GETTABLEKS                       R5 R0 K5 ["X"]
        9 FASTCALL1                        MATH_RAD R5 ; [+2]
       10 GETIMPORT                        R4 K8 [math.rad]
       12 CALL                             R4 1 1
       13 MINUS                            R3 R4
       14 GETTABLEKS                       R6 R0 K9 ["Y"]
       16 FASTCALL1                        MATH_RAD R6 ; [+2]
       17 GETIMPORT                        R5 K8 [math.rad]
       19 CALL                             R5 1 1
       20 MINUS                            R4 R5
       21 GETTABLEKS                       R7 R0 K10 ["Z"]
       23 FASTCALL1                        MATH_RAD R7 ; [+2]
       24 GETIMPORT                        R6 K8 [math.rad]
       26 CALL                             R6 1 1
       27 MINUS                            R5 R6
       28 CALL                             R2 3 1
       29 GETUPVAL                         R3 1
       30 GETTABLEKS                       R3 R3 K11 ["INITIAL_FOCUS_DIRECTION"]
       32 MUL                              R1 R2 R3
       33 RETURN                           R1 1

PROTO_5:
        0 GETIMPORT                        R0 K1 [ipairs]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["PreviewData"]
        5 GETTABLEKS                       R1 R1 K3 ["allPreviews"]
        7 CALL                             R0 1 3
        8 FORGPREP_INEXT                   R0
        9 GETTABLEKS                       R5 R4 K4 ["previewAngle"]
       11 JUMPIFNOTEQKS                    R5 K5 ["PreviewFront"] ; [+5]
       13 GETUPVAL                         R5 1
       14 LOADN                            R6 0
       15 SETTABLE                         R6 R5 R3
       16 JUMP                             ; [+14]
       17 GETIMPORT                        R5 K8 [string.gsub]
       19 GETTABLEKS                       R6 R4 K4 ["previewAngle"]
       21 LOADK                            R7 K9 ["Preview"]
       22 LOADK                            R8 K10 [""]
       23 CALL                             R5 3 1
       24 GETUPVAL                         R6 1
       25 FASTCALL1                        TONUMBER R5 ; [+3]
       26 MOVE                             R8 R5
       27 GETIMPORT                        R7 K12 [tonumber]
       29 CALL                             R7 1 1
       30 SETTABLE                         R7 R6 R3
       31 FORGLOOP                         R0 2 [inext] ; [-23]
       33 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 LOADN                            R2 0
        5 JUMPIFNOTLT                      R2 R1 ; [+5]
        7 JUMPIFNOT                        R0 ; [+3]
        8 NAMECALL                         R1 R0 K1 ["Disconnect"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["current"]
        4 GETTABLE                         R0 R1 R2
        5 GETUPVAL                         R2 0
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K0 ["current"]
        9 GETTABLE                         R1 R2 R3
       10 JUMPIFNOT                        R0 ; [+1]
       11 JUMPIF                           R1 ; [+1]
       12 RETURN                           R0 0
       13 JUMPIFNOTEQKN                    R0 K1 [270] ; [+4]
       15 JUMPIFNOTEQKN                    R1 K2 [0] ; [+2]
       17 LOADN                            R1 360
       18 JUMPIFNOTEQKN                    R1 K1 [270] ; [+4]
       20 JUMPIFNOTEQKN                    R0 K2 [0] ; [+2]
       22 LOADN                            R0 360
       23 GETIMPORT                        R3 K4 [tick]
       25 CALL                             R3 0 1
       26 GETUPVAL                         R4 3
       27 SUB                              R2 R3 R4
       28 DIVK                             R3 R2 K5 [0.2]
       29 SUB                              R6 R1 R0
       30 MUL                              R5 R6 R3
       31 ADD                              R4 R0 R5
       32 GETUPVAL                         R5 4
       33 GETUPVAL                         R6 5
       34 GETUPVAL                         R7 6
       35 GETIMPORT                        R8 K8 [CFrame.fromEulerAnglesYXZ]
       37 GETUPVAL                         R11 7
       38 GETTABLEKS                       R11 R11 K9 ["X"]
       40 FASTCALL1                        MATH_RAD R11 ; [+2]
       41 GETIMPORT                        R10 K12 [math.rad]
       43 CALL                             R10 1 1
       44 MINUS                            R9 R10
       45 GETUPVAL                         R12 7
       46 GETTABLEKS                       R12 R12 K13 ["Y"]
       48 ADD                              R11 R4 R12
       49 FASTCALL1                        MATH_RAD R11 ; [+2]
       50 GETIMPORT                        R10 K12 [math.rad]
       52 CALL                             R10 1 1
       53 GETUPVAL                         R13 7
       54 GETTABLEKS                       R13 R13 K14 ["Z"]
       56 FASTCALL1                        MATH_RAD R13 ; [+2]
       57 GETIMPORT                        R12 K12 [math.rad]
       59 CALL                             R12 1 1
       60 MINUS                            R11 R12
       61 CALL                             R8 3 -1
       62 CALL                             R6 -1 1
       63 SETTABLEKS                       R6 R5 K6 ["CFrame"]
       65 LOADK                            R5 K5 [0.2]
       66 JUMPIFNOTLE                      R5 R2 ; [+9]
       68 GETUPVAL                         R5 8
       69 NAMECALL                         R5 R5 K15 ["Disconnect"]
       71 CALL                             R5 1 0
       72 GETUPVAL                         R5 9
       73 LOADB                            R6 0
       74 CALL                             R5 1 0
       75 RETURN                           R0 0
       76 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["PreviewData"]
        3 GETTABLEKS                       R0 R0 K1 ["rotation"]
        5 GETIMPORT                        R1 K3 [tick]
        7 CALL                             R1 0 1
        8 GETUPVAL                         R2 1
        9 LOADB                            R3 1
       10 CALL                             R2 1 0
       11 LOADNIL                          R2
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K4 ["RenderStepped"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          UPVAL U5
       19 CAPTURE                          VAL R1
       20 CAPTURE                          UPVAL U6
       21 CAPTURE                          UPVAL U7
       22 CAPTURE                          UPVAL U8
       23 CAPTURE                          VAL R0
       24 CAPTURE                          REF R2
       25 CAPTURE                          UPVAL U1
       26 NAMECALL                         R3 R3 K5 ["Connect"]
       28 CALL                             R3 2 1
       29 MOVE                             R2 R3
       30 CLOSEUPVALS                      R2
       31 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R3 1
        4 MOD                              R2 R0 R3
        5 ADDK                             R1 R2 K0 [1]
        6 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 SUBK                             R1 R0 K0 [1]
        4 JUMPIFNOTEQKN                    R1 K1 [0] ; [+3]
        6 GETUPVAL                         R2 1
        7 RETURN                           R2 1
        8 MOVE                             R2 R1
        9 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["status"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["STATUS"]
        5 GETTABLEKS                       R3 R3 K2 ["COMPLETED"]
        7 JUMPIFEQ                         R2 R3 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_15:
        0 LOADN                            R0 0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["generations"]
        4 LOADNIL                          R2
        5 LOADNIL                          R3
        6 FORGPREP                         R1
        7 GETTABLEKS                       R6 R5 K1 ["status"]
        9 GETUPVAL                         R7 1
       10 GETTABLEKS                       R7 R7 K2 ["STATUS"]
       12 GETTABLEKS                       R7 R7 K3 ["PENDING"]
       14 JUMPIFNOTEQ                      R6 R7 ; [+2]
       16 ADDK                             R0 R0 K4 [1]
       17 FORGLOOP                         R1 2 ; [-11]
       19 GETUPVAL                         R1 2
       20 CALL                             R1 0 1
       21 JUMPIFNOTLE                      R1 R0 ; [+3]
       23 LOADB                            R1 1
       24 RETURN                           R1 1
       25 LOADB                            R1 0
       26 RETURN                           R1 1

PROTO_16:
        0 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOT                        R1 ; [+2]
        3 GETUPVAL                         R2 2
        4 NOT                              R1 R2
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["PreviewData"]
        3 GETTABLEKS                       R0 R0 K1 ["previewUrlCount"]
        5 JUMPIFNOTEQKN                    R0 K2 [4] ; [+9]
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K0 ["PreviewData"]
       10 GETTABLEKS                       R0 R0 K3 ["imageFailed"]
       12 LOADN                            R1 2
       13 JUMPIFLE                         R1 R0 ; [+16]
       15 GETUPVAL                         R0 0
       16 GETTABLEKS                       R0 R0 K0 ["PreviewData"]
       18 GETTABLEKS                       R0 R0 K1 ["previewUrlCount"]
       20 JUMPIFNOTEQKN                    R0 K4 [3] ; [+40]
       22 GETUPVAL                         R0 0
       23 GETTABLEKS                       R0 R0 K0 ["PreviewData"]
       25 GETTABLEKS                       R0 R0 K3 ["imageFailed"]
       27 LOADN                            R1 1
       28 JUMPIFNOTLE                      R1 R0 ; [+32]
       30 GETUPVAL                         R0 1
       31 GETTABLEKS                       R0 R0 K5 ["addError"]
       33 GETUPVAL                         R1 2
       34 GETUPVAL                         R2 3
       35 GETUPVAL                         R3 4
       36 CALL                             R1 2 1
       37 LOADK                            R2 K6 ["ImageFailed"]
       38 GETUPVAL                         R3 5
       39 LOADK                            R5 K7 ["EntryArea"]
       40 LOADK                            R6 K8 ["ErrorAlertTitle"]
       41 NAMECALL                         R3 R3 K9 ["getText"]
       43 CALL                             R3 3 1
       44 GETUPVAL                         R4 5
       45 LOADK                            R6 K10 ["PreviewArea"]
       46 LOADK                            R7 K6 ["ImageFailed"]
       47 NAMECALL                         R4 R4 K9 ["getText"]
       49 CALL                             R4 3 1
       50 LOADK                            R5 K11 ["error"]
       51 CALL                             R0 5 0
       52 GETUPVAL                         R0 1
       53 GETTABLEKS                       R0 R0 K12 ["removePreview"]
       55 GETUPVAL                         R1 0
       56 GETTABLEKS                       R1 R1 K0 ["PreviewData"]
       58 GETTABLEKS                       R1 R1 K13 ["uuid"]
       60 CALL                             R0 1 0
       61 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["removePreview"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["PreviewData"]
        6 GETTABLEKS                       R1 R1 K2 ["uuid"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 2
       10 GETTABLEKS                       R0 R0 K3 ["cancelGenerationRequest"]
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K1 ["PreviewData"]
       15 GETTABLEKS                       R1 R1 K2 ["uuid"]
       17 CALL                             R0 1 0
       18 GETUPVAL                         R0 3
       19 JUMPIFNOT                        R0 ; [+4]
       20 GETUPVAL                         R0 3
       21 NAMECALL                         R0 R0 K4 ["Disconnect"]
       23 CALL                             R0 1 0
       24 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createPartGroup"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 JUMPIFNOT                        R0 ; [+8]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["previewTexture"]
        9 MOVE                             R2 R0
       10 GETUPVAL                         R3 2
       11 GETUPVAL                         R4 3
       12 CALL                             R1 3 -1
       13 RETURN                           R1 -1
       14 GETUPVAL                         R1 4
       15 LOADK                            R3 K2 ["PromptEntry"]
       16 LOADK                            R4 K3 ["PartGroupError"]
       17 NAMECALL                         R1 R1 K4 ["getText"]
       19 CALL                             R1 3 -1
       20 RETURN                           R1 -1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["removePreview"]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["PreviewData"]
        9 GETTABLEKS                       R1 R1 K2 ["uuid"]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 3
       13 GETTABLEKS                       R0 R0 K3 ["promptText"]
       15 GETUPVAL                         R1 4
       16 GETUPVAL                         R2 3
       17 CALL                             R1 1 1
       18 LOADNIL                          R2
       19 SETTABLEKS                       R2 R1 K4 ["seed"]
       21 GETUPVAL                         R2 5
       22 GETUPVAL                         R3 6
       23 GETUPVAL                         R4 7
       24 CALL                             R2 2 1
       25 GETUPVAL                         R3 3
       26 GETTABLEKS                       R3 R3 K5 ["rotation"]
       28 NAMECALL                         R3 R3 K6 ["ToEulerAnglesYXZ"]
       30 CALL                             R3 1 3
       31 FASTCALL1                        MATH_DEG R3 ; [+3]
       32 MOVE                             R8 R3
       33 GETIMPORT                        R7 K9 [math.deg]
       35 CALL                             R7 1 1
       36 FASTCALL1                        MATH_DEG R4 ; [+3]
       37 MOVE                             R9 R4
       38 GETIMPORT                        R8 K9 [math.deg]
       40 CALL                             R8 1 1
       41 FASTCALL1                        MATH_DEG R5 ; [+3]
       42 MOVE                             R10 R5
       43 GETIMPORT                        R9 K9 [math.deg]
       45 CALL                             R9 1 1
       46 FASTCALL                         VECTOR ; [+2]
       47 GETIMPORT                        R6 K12 [Vector3.new]
       49 CALL                             R6 3 1
       50 GETIMPORT                        R7 K14 [pcall]
       52 NEWCLOSURE                       R8 P0
       53 CAPTURE                          UPVAL U7
       54 CAPTURE                          UPVAL U6
       55 CAPTURE                          VAL R0
       56 CAPTURE                          VAL R1
       57 CAPTURE                          UPVAL U8
       58 CALL                             R7 1 2
       59 GETUPVAL                         R9 0
       60 LOADB                            R10 1
       61 CALL                             R9 1 0
       62 JUMPIFNOT                        R7 ; [+7]
       63 FASTCALL1                        TYPEOF R8 ; [+3]
       64 MOVE                             R10 R8
       65 GETIMPORT                        R9 K16 [typeof]
       67 CALL                             R9 1 1
       68 JUMPIFNOTEQKS                    R9 K17 ["string"] ; [+16]
       70 GETUPVAL                         R9 1
       71 GETTABLEKS                       R9 R9 K18 ["addError"]
       73 MOVE                             R10 R2
       74 MOVE                             R11 R8
       75 GETUPVAL                         R12 8
       76 LOADK                            R14 K19 ["EntryArea"]
       77 LOADK                            R15 K20 ["ErrorAlertTitle"]
       78 NAMECALL                         R12 R12 K21 ["getText"]
       80 CALL                             R12 3 1
       81 MOVE                             R13 R8
       82 LOADK                            R14 K22 ["error"]
       83 CALL                             R9 5 0
       84 RETURN                           R0 0
       85 GETUPVAL                         R9 6
       86 SETTABLEKS                       R9 R8 K23 ["meshParts"]
       88 SETTABLEKS                       R6 R8 K5 ["rotation"]
       90 GETUPVAL                         R9 3
       91 GETTABLEKS                       R9 R9 K24 ["smartUVUnwrap"]
       93 SETTABLEKS                       R9 R8 K24 ["smartUVUnwrap"]
       95 GETUPVAL                         R9 3
       96 GETTABLEKS                       R9 R9 K25 ["promptMasking"]
       98 SETTABLEKS                       R9 R8 K25 ["promptMasking"]
      100 GETUPVAL                         R9 1
      101 GETTABLEKS                       R9 R9 K26 ["addOrUpdatePreview"]
      103 MOVE                             R10 R8
      104 CALL                             R9 1 0
      105 DUPTABLE                         R9 K28 [{"hash", "uuid"}]
      106 SETTABLEKS                       R2 R9 K27 ["hash"]
      108 GETTABLEKS                       R10 R8 K2 ["uuid"]
      110 SETTABLEKS                       R10 R9 K2 ["uuid"]
      112 GETUPVAL                         R10 1
      113 GETTABLEKS                       R10 R10 K29 ["addOrUpdateModelToPreview"]
      115 MOVE                             R11 R9
      116 CALL                             R10 1 0
      117 GETUPVAL                         R10 9
      118 LOADK                            R12 K30 ["GeneratedPreview"]
      119 GETUPVAL                         R13 6
      120 MOVE                             R14 R0
      121 GETUPVAL                         R15 3
      122 GETTABLEKS                       R15 R15 K4 ["seed"]
      124 MOVE                             R16 R6
      125 GETUPVAL                         R17 3
      126 GETTABLEKS                       R17 R17 K24 ["smartUVUnwrap"]
      128 GETUPVAL                         R18 3
      129 GETTABLEKS                       R18 R18 K25 ["promptMasking"]
      131 GETTABLEKS                       R19 R8 K2 ["uuid"]
      133 NAMECALL                         R10 R10 K31 ["report"]
      135 CALL                             R10 9 0
      136 GETUPVAL                         R10 10
      137 GETUPVAL                         R11 11
      138 GETUPVAL                         R12 1
      139 GETUPVAL                         R13 7
      140 CALL                             R10 3 0
      141 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["generateTexture"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["PreviewData"]
        6 GETTABLEKS                       R1 R1 K2 ["uuid"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETIMPORT                        R0 K1 [pcall]
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CALL                             R0 1 2
        9 FASTCALL1                        TYPEOF R1 ; [+3]
       10 MOVE                             R3 R1
       11 GETIMPORT                        R2 K3 [typeof]
       13 CALL                             R2 1 1
       14 JUMPIFNOTEQKS                    R2 K4 ["string"] ; [+6]
       16 GETUPVAL                         R2 3
       17 GETTABLEKS                       R2 R2 K5 ["MAX_GENERATIONS_MESSAGE"]
       19 JUMPIFEQ                         R1 R2 ; [+10]
       21 GETUPVAL                         R2 4
       22 GETTABLEKS                       R2 R2 K6 ["removePreview"]
       24 GETUPVAL                         R3 2
       25 GETTABLEKS                       R3 R3 K7 ["PreviewData"]
       27 GETTABLEKS                       R3 R3 K8 ["uuid"]
       29 CALL                             R2 1 0
       30 GETUPVAL                         R2 0
       31 LOADB                            R3 1
       32 CALL                             R2 1 0
       33 LOADNIL                          R2
       34 JUMPIFNOT                        R0 ; [+7]
       35 MOVE                             R2 R1
       36 GETIMPORT                        R3 K10 [tick]
       38 CALL                             R3 0 1
       39 SETTABLEKS                       R3 R2 K11 ["startTime"]
       41 JUMP                             ; [+23]
       42 DUPTABLE                         R3 K14 [{"uuid", "status", "errors"}]
       43 GETUPVAL                         R4 2
       44 GETTABLEKS                       R4 R4 K7 ["PreviewData"]
       46 GETTABLEKS                       R4 R4 K8 ["uuid"]
       48 SETTABLEKS                       R4 R3 K8 ["uuid"]
       50 GETUPVAL                         R4 3
       51 GETTABLEKS                       R4 R4 K15 ["STATUS"]
       53 GETTABLEKS                       R4 R4 K16 ["FAILED"]
       55 SETTABLEKS                       R4 R3 K12 ["status"]
       57 NEWTABLE                         R4 0 1
       59 MOVE                             R5 R1
       60 SETLIST                          R4 R5 1 [1]
       62 SETTABLEKS                       R4 R3 K13 ["errors"]
       64 MOVE                             R2 R3
       65 GETUPVAL                         R4 2
       66 GETTABLEKS                       R4 R4 K7 ["PreviewData"]
       68 GETTABLEKS                       R4 R4 K17 ["allPreviews"]
       70 GETTABLEN                        R3 R4 1
       71 SETTABLEKS                       R3 R2 K18 ["previewImage"]
       73 GETUPVAL                         R3 5
       74 SETTABLEKS                       R3 R2 K19 ["meshParts"]
       76 GETUPVAL                         R3 1
       77 GETTABLEKS                       R3 R3 K20 ["createPartGroup"]
       79 GETUPVAL                         R4 5
       80 CALL                             R3 1 1
       81 SETTABLEKS                       R3 R2 K21 ["partGroup"]
       83 GETUPVAL                         R3 2
       84 GETTABLEKS                       R3 R3 K7 ["PreviewData"]
       86 GETTABLEKS                       R3 R3 K22 ["rotation"]
       88 SETTABLEKS                       R3 R2 K22 ["rotation"]
       90 GETUPVAL                         R3 2
       91 GETTABLEKS                       R3 R3 K7 ["PreviewData"]
       93 GETTABLEKS                       R3 R3 K23 ["seed"]
       95 SETTABLEKS                       R3 R2 K23 ["seed"]
       97 GETUPVAL                         R3 2
       98 GETTABLEKS                       R3 R3 K7 ["PreviewData"]
      100 GETTABLEKS                       R3 R3 K24 ["prompt"]
      102 SETTABLEKS                       R3 R2 K24 ["prompt"]
      104 GETUPVAL                         R3 6
      105 GETTABLEKS                       R3 R3 K25 ["smartUVUnwrap"]
      107 SETTABLEKS                       R3 R2 K25 ["smartUVUnwrap"]
      109 GETUPVAL                         R3 6
      110 GETTABLEKS                       R3 R3 K26 ["promptMasking"]
      112 SETTABLEKS                       R3 R2 K26 ["promptMasking"]
      114 GETUPVAL                         R3 7
      115 GETUPVAL                         R4 5
      116 GETUPVAL                         R5 1
      117 CALL                             R3 2 1
      118 GETUPVAL                         R4 8
      119 GETTABLEKS                       R4 R4 K27 ["updateGeneration"]
      121 DUPTABLE                         R5 K30 [{"action", "uuid", "data"}]
      122 GETUPVAL                         R6 3
      123 GETTABLEKS                       R6 R6 K31 ["GENERATION_ACTIONS"]
      125 GETTABLEKS                       R6 R6 K32 ["UPDATE"]
      127 SETTABLEKS                       R6 R5 K28 ["action"]
      129 GETTABLEKS                       R6 R2 K8 ["uuid"]
      131 SETTABLEKS                       R6 R5 K8 ["uuid"]
      133 SETTABLEKS                       R2 R5 K29 ["data"]
      135 CALL                             R4 1 0
      136 GETUPVAL                         R4 8
      137 GETTABLEKS                       R4 R4 K33 ["updateModelToGenerations"]
      139 DUPTABLE                         R5 K35 [{"action", "hash", "uuid"}]
      140 GETUPVAL                         R6 3
      141 GETTABLEKS                       R6 R6 K31 ["GENERATION_ACTIONS"]
      143 GETTABLEKS                       R6 R6 K36 ["ADD"]
      145 SETTABLEKS                       R6 R5 K28 ["action"]
      147 SETTABLEKS                       R3 R5 K34 ["hash"]
      149 GETTABLEKS                       R6 R2 K8 ["uuid"]
      151 SETTABLEKS                       R6 R5 K8 ["uuid"]
      153 CALL                             R4 1 0
      154 GETUPVAL                         R4 9
      155 LOADK                            R6 K37 ["GeneratedTexture"]
      156 GETUPVAL                         R7 2
      157 GETTABLEKS                       R7 R7 K7 ["PreviewData"]
      159 GETTABLEKS                       R7 R7 K38 ["serverId"]
      161 GETUPVAL                         R8 5
      162 GETTABLEKS                       R9 R2 K24 ["prompt"]
      164 GETTABLEKS                       R10 R2 K23 ["seed"]
      166 GETTABLEKS                       R11 R2 K22 ["rotation"]
      168 GETTABLEKS                       R12 R2 K25 ["smartUVUnwrap"]
      170 GETTABLEKS                       R13 R2 K26 ["promptMasking"]
      172 GETTABLEKS                       R14 R2 K8 ["uuid"]
      174 NAMECALL                         R4 R4 K39 ["report"]
      176 CALL                             R4 10 0
      177 GETUPVAL                         R4 10
      178 GETUPVAL                         R5 8
      179 GETUPVAL                         R6 4
      180 GETUPVAL                         R7 1
      181 CALL                             R4 3 0
      182 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["use"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K1 ["useContext"]
       13 GETUPVAL                         R5 4
       14 CALL                             R4 1 1
       15 GETUPVAL                         R5 3
       16 GETTABLEKS                       R5 R5 K1 ["useContext"]
       18 GETUPVAL                         R6 5
       19 CALL                             R5 1 1
       20 GETUPVAL                         R6 3
       21 GETTABLEKS                       R6 R6 K1 ["useContext"]
       23 GETUPVAL                         R7 6
       24 CALL                             R6 1 1
       25 GETUPVAL                         R7 3
       26 GETTABLEKS                       R7 R7 K1 ["useContext"]
       28 GETUPVAL                         R8 7
       29 CALL                             R7 1 1
       30 LOADNIL                          R8
       31 GETUPVAL                         R9 3
       32 GETTABLEKS                       R9 R9 K2 ["useRef"]
       34 MOVE                             R10 R8
       35 CALL                             R9 1 1
       36 GETUPVAL                         R10 3
       37 GETTABLEKS                       R10 R10 K3 ["createRef"]
       39 GETTABLEKS                       R11 R0 K4 ["PreviewData"]
       41 CALL                             R10 1 1
       42 GETTABLEKS                       R11 R0 K4 ["PreviewData"]
       44 SETTABLEKS                       R11 R10 K5 ["current"]
       46 GETUPVAL                         R11 3
       47 GETTABLEKS                       R11 R11 K6 ["useEffect"]
       49 NEWCLOSURE                       R12 P0
       50 CAPTURE                          UPVAL U8
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R7
       53 CAPTURE                          REF R8
       54 CAPTURE                          UPVAL U9
       55 CAPTURE                          VAL R10
       56 CAPTURE                          VAL R0
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R9
       60 NEWTABLE                         R13 0 1
       62 MOVE                             R14 R3
       63 SETLIST                          R13 R14 1 [1]
       65 CALL                             R11 2 0
       66 LOADK                            R13 K7 ["PreviewArea"]
       67 LOADK                            R14 K8 ["SaveApply"]
       68 NAMECALL                         R11 R2 K9 ["getText"]
       70 CALL                             R11 3 1
       71 GETIMPORT                        R12 K12 [string.format]
       73 LOADK                            R15 K13 ["General"]
       74 LOADK                            R16 K14 ["QuotaTooltip"]
       75 NAMECALL                         R13 R2 K9 ["getText"]
       77 CALL                             R13 3 1
       78 GETTABLEKS                       R14 R4 K15 ["quota"]
       80 GETTABLEKS                       R15 R4 K16 ["total"]
       82 GETTABLEKS                       R16 R4 K16 ["total"]
       84 CALL                             R12 4 1
       85 LOADK                            R15 K7 ["PreviewArea"]
       86 LOADK                            R16 K17 ["Reroll"]
       87 NAMECALL                         R13 R2 K9 ["getText"]
       89 CALL                             R13 3 1
       90 GETTABLEKS                       R14 R0 K4 ["PreviewData"]
       92 GETTABLEKS                       R14 R14 K18 ["prompt"]
       94 GETUPVAL                         R15 3
       95 GETTABLEKS                       R15 R15 K19 ["useState"]
       97 LOADB                            R16 0
       98 CALL                             R15 1 2
       99 GETUPVAL                         R17 3
      100 GETTABLEKS                       R17 R17 K2 ["useRef"]
      102 GETIMPORT                        R18 K22 [Instance.new]
      104 LOADK                            R19 K23 ["Camera"]
      105 CALL                             R18 1 -1
      106 CALL                             R17 -1 1
      107 GETTABLEKS                       R18 R17 K5 ["current"]
      109 GETUPVAL                         R19 3
      110 GETTABLEKS                       R19 R19 K24 ["useMemo"]
      112 NEWCLOSURE                       R20 P1
      113 CAPTURE                          VAL R0
      114 CAPTURE                          UPVAL U10
      115 NEWTABLE                         R21 0 1
      117 GETTABLEKS                       R22 R0 K4 ["PreviewData"]
      119 GETTABLEKS                       R22 R22 K25 ["meshParts"]
      121 SETLIST                          R21 R22 1 [1]
      123 CALL                             R19 2 1
      124 GETUPVAL                         R20 3
      125 GETTABLEKS                       R20 R20 K24 ["useMemo"]
      127 NEWCLOSURE                       R21 P2
      128 CAPTURE                          VAL R0
      129 CAPTURE                          UPVAL U11
      130 NEWTABLE                         R22 0 1
      132 GETTABLEKS                       R23 R0 K4 ["PreviewData"]
      134 GETTABLEKS                       R23 R23 K26 ["rotation"]
      136 SETLIST                          R22 R23 1 [1]
      138 CALL                             R20 2 1
      139 GETUPVAL                         R21 3
      140 GETTABLEKS                       R21 R21 K19 ["useState"]
      142 LOADN                            R22 1
      143 CALL                             R21 1 2
      144 GETUPVAL                         R23 3
      145 GETTABLEKS                       R23 R23 K19 ["useState"]
      147 LOADN                            R24 1
      148 CALL                             R23 1 2
      149 GETTABLEKS                       R26 R0 K4 ["PreviewData"]
      151 GETTABLEKS                       R26 R26 K27 ["allPreviews"]
      153 GETTABLE                         R25 R26 R23
      154 GETTABLEKS                       R27 R0 K4 ["PreviewData"]
      156 GETTABLEKS                       R27 R27 K27 ["allPreviews"]
      158 LENGTH                           R26 R27
      159 NEWTABLE                         R27 0 0
      161 GETUPVAL                         R28 3
      162 GETTABLEKS                       R28 R28 K6 ["useEffect"]
      164 NEWCLOSURE                       R29 P3
      165 CAPTURE                          VAL R0
      166 CAPTURE                          VAL R27
      167 NEWTABLE                         R30 0 2
      169 MOVE                             R31 R27
      170 GETTABLEKS                       R32 R0 K4 ["PreviewData"]
      172 GETTABLEKS                       R32 R32 K27 ["allPreviews"]
      174 SETLIST                          R30 R31 2 [1]
      176 CALL                             R28 2 0
      177 GETUPVAL                         R28 3
      178 GETTABLEKS                       R28 R28 K6 ["useEffect"]
      180 NEWCLOSURE                       R29 P4
      181 CAPTURE                          VAL R9
      182 CAPTURE                          VAL R26
      183 NEWTABLE                         R30 0 1
      185 MOVE                             R31 R26
      186 SETLIST                          R30 R31 1 [1]
      188 CALL                             R28 2 0
      189 GETUPVAL                         R28 3
      190 GETTABLEKS                       R28 R28 K2 ["useRef"]
      192 MOVE                             R29 R21
      193 CALL                             R28 1 1
      194 SETTABLEKS                       R21 R28 K5 ["current"]
      196 GETUPVAL                         R29 3
      197 GETTABLEKS                       R29 R29 K2 ["useRef"]
      199 MOVE                             R30 R23
      200 CALL                             R29 1 1
      201 SETTABLEKS                       R23 R29 K5 ["current"]
      203 GETUPVAL                         R30 3
      204 GETTABLEKS                       R30 R30 K28 ["useCallback"]
      206 NEWCLOSURE                       R31 P5
      207 CAPTURE                          VAL R0
      208 CAPTURE                          VAL R16
      209 CAPTURE                          UPVAL U9
      210 CAPTURE                          VAL R27
      211 CAPTURE                          VAL R28
      212 CAPTURE                          VAL R29
      213 CAPTURE                          VAL R18
      214 CAPTURE                          UPVAL U12
      215 CAPTURE                          VAL R19
      216 NEWTABLE                         R32 0 1
      218 MOVE                             R33 R27
      219 SETLIST                          R32 R33 1 [1]
      221 CALL                             R30 2 1
      222 GETUPVAL                         R31 3
      223 GETTABLEKS                       R31 R31 K28 ["useCallback"]
      225 NEWCLOSURE                       R32 P6
      226 CAPTURE                          VAL R24
      227 CAPTURE                          VAL R22
      228 CAPTURE                          VAL R26
      229 NEWTABLE                         R33 0 1
      231 MOVE                             R34 R26
      232 SETLIST                          R33 R34 1 [1]
      234 CALL                             R31 2 1
      235 GETUPVAL                         R32 3
      236 GETTABLEKS                       R32 R32 K28 ["useCallback"]
      238 NEWCLOSURE                       R33 P7
      239 CAPTURE                          VAL R24
      240 CAPTURE                          VAL R22
      241 CAPTURE                          VAL R26
      242 NEWTABLE                         R34 0 1
      244 MOVE                             R35 R26
      245 SETLIST                          R34 R35 1 [1]
      247 CALL                             R32 2 1
      248 GETUPVAL                         R33 3
      249 GETTABLEKS                       R33 R33 K6 ["useEffect"]
      251 NEWCLOSURE                       R34 P8
      252 CAPTURE                          VAL R24
      253 NEWTABLE                         R35 0 1
      255 GETTABLEKS                       R36 R0 K4 ["PreviewData"]
      257 GETTABLEKS                       R36 R36 K29 ["uuid"]
      259 SETLIST                          R35 R36 1 [1]
      261 CALL                             R33 2 0
      262 GETUPVAL                         R34 13
      263 GETTABLEKS                       R34 R34 K30 ["find"]
      265 GETTABLEKS                       R35 R0 K4 ["PreviewData"]
      267 GETTABLEKS                       R35 R35 K27 ["allPreviews"]
      269 DUPCLOSURE                       R36 K31 [PROTO_14]
      270 CAPTURE                          UPVAL U11
      271 CALL                             R34 2 1
      272 JUMPIFNOTEQKNIL                  R34 ; [+2]
      274 LOADB                            R33 0 +1
      275 LOADB                            R33 1
      276 LOADB                            R34 0
      277 JUMPIFEQKNIL                     R25 ; [+12]
      279 GETTABLEKS                       R35 R25 K32 ["status"]
      281 GETUPVAL                         R36 11
      282 GETTABLEKS                       R36 R36 K33 ["STATUS"]
      284 GETTABLEKS                       R36 R36 K34 ["COMPLETED"]
      286 JUMPIFEQ                         R35 R36 ; [+2]
      288 LOADB                            R34 0 +1
      289 LOADB                            R34 1
      290 GETUPVAL                         R35 3
      291 GETTABLEKS                       R35 R35 K24 ["useMemo"]
      293 NEWCLOSURE                       R36 P10
      294 CAPTURE                          VAL R4
      295 CAPTURE                          UPVAL U11
      296 CAPTURE                          UPVAL U14
      297 NEWTABLE                         R37 0 1
      299 GETTABLEKS                       R38 R4 K35 ["generations"]
      301 SETLIST                          R37 R38 1 [1]
      303 CALL                             R35 2 1
      304 LOADNIL                          R36
      305 LOADNIL                          R37
      306 GETTABLEKS                       R38 R0 K36 ["Enabled"]
      308 JUMPIFNOT                        R38 ; [+4]
      309 GETTABLEKS                       R36 R0 K36 ["Enabled"]
      311 DUPCLOSURE                       R37 K37 [PROTO_16]
      312 JUMP                             ; [+7]
      313 GETUPVAL                         R38 3
      314 GETTABLEKS                       R38 R38 K19 ["useState"]
      316 LOADB                            R39 0
      317 CALL                             R38 1 2
      318 MOVE                             R36 R38
      319 MOVE                             R37 R39
      320 GETUPVAL                         R38 3
      321 GETTABLEKS                       R38 R38 K6 ["useEffect"]
      323 NEWCLOSURE                       R39 P12
      324 CAPTURE                          REF R37
      325 CAPTURE                          VAL R33
      326 CAPTURE                          VAL R35
      327 NEWTABLE                         R40 0 2
      329 MOVE                             R41 R33
      330 MOVE                             R42 R35
      331 SETLIST                          R40 R41 2 [1]
      333 CALL                             R38 2 0
      334 GETUPVAL                         R38 3
      335 GETTABLEKS                       R38 R38 K6 ["useEffect"]
      337 NEWCLOSURE                       R39 P13
      338 CAPTURE                          VAL R0
      339 CAPTURE                          VAL R5
      340 CAPTURE                          UPVAL U8
      341 CAPTURE                          VAL R3
      342 CAPTURE                          VAL R7
      343 CAPTURE                          VAL R2
      344 NEWTABLE                         R40 0 2
      346 GETTABLEKS                       R41 R0 K4 ["PreviewData"]
      348 GETTABLEKS                       R41 R41 K38 ["imageFailed"]
      350 GETTABLEKS                       R42 R0 K4 ["PreviewData"]
      352 GETTABLEKS                       R42 R42 K39 ["previewUrlCount"]
      354 SETLIST                          R40 R41 2 [1]
      356 CALL                             R38 2 0
      357 GETUPVAL                         R38 3
      358 GETTABLEKS                       R38 R38 K28 ["useCallback"]
      360 NEWCLOSURE                       R39 P14
      361 CAPTURE                          VAL R5
      362 CAPTURE                          VAL R0
      363 CAPTURE                          VAL R7
      364 CAPTURE                          REF R8
      365 NEWTABLE                         R40 0 3
      367 GETTABLEKS                       R41 R0 K4 ["PreviewData"]
      369 GETTABLEKS                       R41 R41 K29 ["uuid"]
      371 GETTABLEKS                       R42 R5 K40 ["removePreview"]
      373 MOVE                             R43 R8
      374 SETLIST                          R40 R41 3 [1]
      376 CALL                             R38 2 1
      377 GETUPVAL                         R39 3
      378 GETTABLEKS                       R39 R39 K28 ["useCallback"]
      380 NEWCLOSURE                       R40 P15
      381 CAPTURE                          REF R37
      382 CAPTURE                          VAL R5
      383 CAPTURE                          VAL R0
      384 CAPTURE                          VAL R6
      385 CAPTURE                          UPVAL U15
      386 CAPTURE                          UPVAL U8
      387 CAPTURE                          VAL R3
      388 CAPTURE                          VAL R7
      389 CAPTURE                          VAL R2
      390 CAPTURE                          VAL R1
      391 CAPTURE                          UPVAL U16
      392 CAPTURE                          VAL R4
      393 NEWTABLE                         R41 0 6
      395 MOVE                             R42 R36
      396 MOVE                             R43 R3
      397 GETTABLEKS                       R44 R5 K41 ["addOrUpdatePreview"]
      399 GETTABLEKS                       R45 R5 K42 ["addOrUpdateModelToPreview"]
      401 MOVE                             R46 R6
      402 MOVE                             R47 R7
      403 SETLIST                          R41 R42 6 [1]
      405 CALL                             R39 2 1
      406 GETUPVAL                         R40 3
      407 GETTABLEKS                       R40 R40 K28 ["useCallback"]
      409 NEWCLOSURE                       R41 P16
      410 CAPTURE                          REF R37
      411 CAPTURE                          VAL R7
      412 CAPTURE                          VAL R0
      413 CAPTURE                          UPVAL U11
      414 CAPTURE                          VAL R5
      415 CAPTURE                          VAL R3
      416 CAPTURE                          VAL R6
      417 CAPTURE                          UPVAL U8
      418 CAPTURE                          VAL R4
      419 CAPTURE                          VAL R1
      420 CAPTURE                          UPVAL U16
      421 NEWTABLE                         R42 0 7
      423 MOVE                             R43 R3
      424 GETTABLEKS                       R44 R4 K43 ["updateGeneration"]
      426 GETTABLEKS                       R45 R4 K44 ["updateModelToGenerations"]
      428 GETTABLEKS                       R46 R5 K40 ["removePreview"]
      430 GETTABLEKS                       R47 R6 K45 ["smartUVUnwrap"]
      432 GETTABLEKS                       R48 R0 K4 ["PreviewData"]
      434 MOVE                             R49 R7
      435 SETLIST                          R42 R43 7 [1]
      437 CALL                             R40 2 1
      438 GETUPVAL                         R41 17
      439 GETTABLEKS                       R41 R41 K21 ["new"]
      441 CALL                             R41 0 1
      442 GETUPVAL                         R42 18
      443 LOADK                            R44 K7 ["PreviewArea"]
      444 NAMECALL                         R42 R42 K0 ["use"]
      446 CALL                             R42 2 1
      447 MOVE                             R43 R34
      448 JUMPIFNOT                        R43 ; [+1]
      449 NOT                              R43 R15
      450 GETUPVAL                         R44 3
      451 GETTABLEKS                       R44 R44 K46 ["createElement"]
      453 GETUPVAL                         R45 19
      454 DUPTABLE                         R46 K56 [{["AutomaticSize"], ["HorizontalAlignment"], ["Layout"], ["VerticalAlignment"], ["LayoutOrder"], ["Padding"], ["Size"], ["Style"] = "Box"}]
      455 GETIMPORT                        R47 K59 [Enum.AutomaticSize.Y]
      457 SETTABLEKS                       R47 R46 K47 ["AutomaticSize"]
      459 GETIMPORT                        R47 K61 [Enum.HorizontalAlignment.Center]
      461 SETTABLEKS                       R47 R46 K48 ["HorizontalAlignment"]
      463 GETIMPORT                        R47 K64 [Enum.FillDirection.Vertical]
      465 SETTABLEKS                       R47 R46 K49 ["Layout"]
      467 GETIMPORT                        R47 K65 [Enum.VerticalAlignment.Center]
      469 SETTABLEKS                       R47 R46 K50 ["VerticalAlignment"]
      471 GETTABLEKS                       R47 R0 K51 ["LayoutOrder"]
      473 SETTABLEKS                       R47 R46 K51 ["LayoutOrder"]
      475 GETTABLEKS                       R47 R42 K52 ["Padding"]
      477 SETTABLEKS                       R47 R46 K52 ["Padding"]
      479 GETTABLEKS                       R47 R42 K53 ["Size"]
      481 SETTABLEKS                       R47 R46 K53 ["Size"]
      483 DUPTABLE                         R47 K68 [{"Display", "PreviewActionArea"}]
      484 GETUPVAL                         R48 3
      485 GETTABLEKS                       R48 R48 K46 ["createElement"]
      487 GETUPVAL                         R49 19
      488 DUPTABLE                         R50 K72 [{["AnchorPoint"], ["LayoutOrder"] = 2, ["Position"], ["Size"]}]
      489 GETIMPORT                        R51 K74 [Vector2.new]
      491 LOADK                            R52 K75 [0.5]
      492 LOADK                            R53 K75 [0.5]
      493 CALL                             R51 2 1
      494 SETTABLEKS                       R51 R50 K69 ["AnchorPoint"]
      496 GETIMPORT                        R51 K78 [UDim2.fromScale]
      498 LOADK                            R52 K75 [0.5]
      499 LOADK                            R53 K75 [0.5]
      500 CALL                             R51 2 1
      501 SETTABLEKS                       R51 R50 K71 ["Position"]
      503 GETTABLEKS                       R51 R42 K53 ["Size"]
      505 SETTABLEKS                       R51 R50 K53 ["Size"]
      507 DUPTABLE                         R51 K82 [{"UIPadding", "ImageContainer", "Controls"}]
      508 GETUPVAL                         R52 3
      509 GETTABLEKS                       R52 R52 K46 ["createElement"]
      511 LOADK                            R53 K79 ["UIPadding"]
      512 DUPTABLE                         R54 K85 [{"PaddingLeft", "PaddingRight"}]
      513 GETIMPORT                        R55 K87 [UDim.new]
      515 LOADN                            R56 0
      516 LOADN                            R57 8
      517 CALL                             R55 2 1
      518 SETTABLEKS                       R55 R54 K83 ["PaddingLeft"]
      520 GETIMPORT                        R55 K87 [UDim.new]
      522 LOADN                            R56 0
      523 LOADN                            R57 8
      524 CALL                             R55 2 1
      525 SETTABLEKS                       R55 R54 K84 ["PaddingRight"]
      527 CALL                             R52 2 1
      528 SETTABLEKS                       R52 R51 K79 ["UIPadding"]
      530 GETUPVAL                         R52 3
      531 GETTABLEKS                       R52 R52 K46 ["createElement"]
      533 GETUPVAL                         R53 19
      534 DUPTABLE                         R54 K90 [{"BackgroundColor3", "AnchorPoint", "Position", "ZIndex"}]
      535 GETIMPORT                        R55 K92 [Color3.new]
      537 LOADN                            R56 0
      538 LOADN                            R57 0
      539 LOADN                            R58 0
      540 CALL                             R55 3 1
      541 SETTABLEKS                       R55 R54 K88 ["BackgroundColor3"]
      543 GETIMPORT                        R55 K74 [Vector2.new]
      545 LOADK                            R56 K75 [0.5]
      546 LOADK                            R57 K75 [0.5]
      547 CALL                             R55 2 1
      548 SETTABLEKS                       R55 R54 K69 ["AnchorPoint"]
      550 GETIMPORT                        R55 K78 [UDim2.fromScale]
      552 LOADK                            R56 K75 [0.5]
      553 LOADK                            R57 K75 [0.5]
      554 CALL                             R55 2 1
      555 SETTABLEKS                       R55 R54 K71 ["Position"]
      557 NAMECALL                         R55 R41 K93 ["getNextOrder"]
      559 CALL                             R55 1 1
      560 SETTABLEKS                       R55 R54 K89 ["ZIndex"]
      562 DUPTABLE                         R55 K98 [{"Corner", "Image", "AssetRenderModel", "LoadingIndicator"}]
      563 GETUPVAL                         R56 3
      564 GETTABLEKS                       R56 R56 K46 ["createElement"]
      566 LOADK                            R57 K99 ["UICorner"]
      567 CALL                             R56 1 1
      568 SETTABLEKS                       R56 R55 K94 ["Corner"]
      570 JUMPIFNOT                        R43 ; [+42]
      571 GETUPVAL                         R56 3
      572 GETTABLEKS                       R56 R56 K46 ["createElement"]
      574 GETUPVAL                         R57 20
      575 DUPTABLE                         R58 K100 [{"AnchorPoint", "Position", "Size", "Image"}]
      576 GETIMPORT                        R59 K74 [Vector2.new]
      578 LOADK                            R60 K75 [0.5]
      579 LOADK                            R61 K75 [0.5]
      580 CALL                             R59 2 1
      581 SETTABLEKS                       R59 R58 K69 ["AnchorPoint"]
      583 GETIMPORT                        R59 K78 [UDim2.fromScale]
      585 LOADK                            R60 K75 [0.5]
      586 LOADK                            R61 K75 [0.5]
      587 CALL                             R59 2 1
      588 SETTABLEKS                       R59 R58 K71 ["Position"]
      590 GETIMPORT                        R59 K101 [UDim2.new]
      592 LOADN                            R60 1
      593 LOADN                            R61 0
      594 LOADN                            R62 1
      595 LOADN                            R63 -32
      596 CALL                             R59 4 1
      597 SETTABLEKS                       R59 R58 K53 ["Size"]
      599 GETTABLEKS                       R59 R25 K102 ["previewId"]
      601 SETTABLEKS                       R59 R58 K95 ["Image"]
      603 DUPTABLE                         R59 K104 [{"UIAspectRatioConstraint"}]
      604 GETUPVAL                         R60 3
      605 GETTABLEKS                       R60 R60 K46 ["createElement"]
      607 LOADK                            R61 K103 ["UIAspectRatioConstraint"]
      608 CALL                             R60 1 1
      609 SETTABLEKS                       R60 R59 K103 ["UIAspectRatioConstraint"]
      611 CALL                             R56 3 1
      612 JUMP                             ; [+1]
      613 LOADNIL                          R56
      614 SETTABLEKS                       R56 R55 K95 ["Image"]
      616 JUMPIFNOT                        R34 ; [+1]
      617 JUMPIFNOT                        R15 ; [+39]
      618 GETUPVAL                         R56 3
      619 GETTABLEKS                       R56 R56 K46 ["createElement"]
      621 GETUPVAL                         R57 21
      622 DUPTABLE                         R58 K114 [{["BackgroundColor3"], ["Camera"], ["LayoutOrder"], ["Model"], ["ShouldMuteModelSounds"] = True, ["Size"], ["Static"] = True, ["FocusDirection"], ["LightColor"], ["LightDirection"] = {1, 1, 1}, ["EnableSky"] = True}]
      623 GETTABLEKS                       R59 R42 K115 ["BackgroundColor"]
      625 SETTABLEKS                       R59 R58 K88 ["BackgroundColor3"]
      627 SETTABLEKS                       R18 R58 K23 ["Camera"]
      629 NAMECALL                         R59 R41 K93 ["getNextOrder"]
      631 CALL                             R59 1 1
      632 SETTABLEKS                       R59 R58 K51 ["LayoutOrder"]
      634 SETTABLEKS                       R19 R58 K105 ["Model"]
      636 GETIMPORT                        R59 K101 [UDim2.new]
      638 LOADN                            R60 1
      639 LOADN                            R61 0
      640 LOADN                            R62 1
      641 LOADN                            R63 -32
      642 CALL                             R59 4 1
      643 SETTABLEKS                       R59 R58 K53 ["Size"]
      645 SETTABLEKS                       R20 R58 K109 ["FocusDirection"]
      647 GETIMPORT                        R59 K92 [Color3.new]
      649 LOADN                            R60 0
      650 LOADN                            R61 0
      651 LOADN                            R62 0
      652 CALL                             R59 3 1
      653 SETTABLEKS                       R59 R58 K110 ["LightColor"]
      655 CALL                             R56 2 1
      656 JUMP                             ; [+1]
      657 LOADNIL                          R56
      658 SETTABLEKS                       R56 R55 K96 ["AssetRenderModel"]
      660 JUMPIF                           R34 ; [+21]
      661 GETUPVAL                         R56 3
      662 GETTABLEKS                       R56 R56 K46 ["createElement"]
      664 GETUPVAL                         R57 22
      665 DUPTABLE                         R58 K116 [{"AnchorPoint", "Position"}]
      666 GETIMPORT                        R59 K74 [Vector2.new]
      668 LOADK                            R60 K75 [0.5]
      669 LOADK                            R61 K75 [0.5]
      670 CALL                             R59 2 1
      671 SETTABLEKS                       R59 R58 K69 ["AnchorPoint"]
      673 GETIMPORT                        R59 K78 [UDim2.fromScale]
      675 LOADK                            R60 K75 [0.5]
      676 LOADK                            R61 K75 [0.5]
      677 CALL                             R59 2 1
      678 SETTABLEKS                       R59 R58 K71 ["Position"]
      680 CALL                             R56 2 1
      681 JUMP                             ; [+1]
      682 LOADNIL                          R56
      683 SETTABLEKS                       R56 R55 K97 ["LoadingIndicator"]
      685 CALL                             R52 3 1
      686 SETTABLEKS                       R52 R51 K80 ["ImageContainer"]
      688 MOVE                             R52 R33
      689 JUMPIFNOT                        R52 ; [+87]
      690 GETUPVAL                         R52 3
      691 GETTABLEKS                       R52 R52 K46 ["createElement"]
      693 GETUPVAL                         R53 19
      694 DUPTABLE                         R54 K117 [{"Size", "AnchorPoint", "Layout", "Position", "ZIndex"}]
      695 GETIMPORT                        R55 K101 [UDim2.new]
      697 LOADN                            R56 0
      698 LOADN                            R57 50
      699 LOADN                            R58 0
      700 LOADN                            R59 32
      701 CALL                             R55 4 1
      702 SETTABLEKS                       R55 R54 K53 ["Size"]
      704 GETIMPORT                        R55 K74 [Vector2.new]
      706 LOADK                            R56 K75 [0.5]
      707 LOADN                            R57 1
      708 CALL                             R55 2 1
      709 SETTABLEKS                       R55 R54 K69 ["AnchorPoint"]
      711 GETIMPORT                        R55 K119 [Enum.FillDirection.Horizontal]
      713 SETTABLEKS                       R55 R54 K49 ["Layout"]
      715 GETIMPORT                        R55 K78 [UDim2.fromScale]
      717 LOADK                            R56 K75 [0.5]
      718 LOADN                            R57 1
      719 CALL                             R55 2 1
      720 SETTABLEKS                       R55 R54 K71 ["Position"]
      722 NAMECALL                         R55 R41 K93 ["getNextOrder"]
      724 CALL                             R55 1 1
      725 SETTABLEKS                       R55 R54 K89 ["ZIndex"]
      727 DUPTABLE                         R55 K122 [{"PreviousButton", "NextButton"}]
      728 GETUPVAL                         R56 3
      729 GETTABLEKS                       R56 R56 K46 ["createElement"]
      731 GETUPVAL                         R57 23
      732 DUPTABLE                         R58 K127 [{["AnchorPoint"], ["LayoutOrder"] = 1, ["LeftIcon"], ["Style"] = "PreviewAreaImageRotateButton", ["OnClick"]}]
      733 GETIMPORT                        R59 K74 [Vector2.new]
      735 LOADN                            R60 0
      736 LOADK                            R61 K75 [0.5]
      737 CALL                             R59 2 1
      738 SETTABLEKS                       R59 R58 K69 ["AnchorPoint"]
      740 GETTABLEKS                       R59 R42 K124 ["LeftIcon"]
      742 SETTABLEKS                       R59 R58 K124 ["LeftIcon"]
      744 NEWCLOSURE                       R59 P17
      745 CAPTURE                          VAL R32
      746 CAPTURE                          VAL R30
      747 SETTABLEKS                       R59 R58 K126 ["OnClick"]
      749 CALL                             R56 2 1
      750 SETTABLEKS                       R56 R55 K120 ["PreviousButton"]
      752 GETUPVAL                         R56 3
      753 GETTABLEKS                       R56 R56 K46 ["createElement"]
      755 GETUPVAL                         R57 23
      756 DUPTABLE                         R58 K128 [{["AnchorPoint"], ["LayoutOrder"] = 2, ["LeftIcon"], ["Style"] = "PreviewAreaImageRotateButton", ["OnClick"]}]
      757 GETIMPORT                        R59 K74 [Vector2.new]
      759 LOADN                            R60 1
      760 LOADK                            R61 K75 [0.5]
      761 CALL                             R59 2 1
      762 SETTABLEKS                       R59 R58 K69 ["AnchorPoint"]
      764 GETTABLEKS                       R59 R42 K129 ["RightIcon"]
      766 SETTABLEKS                       R59 R58 K124 ["LeftIcon"]
      768 NEWCLOSURE                       R59 P18
      769 CAPTURE                          VAL R31
      770 CAPTURE                          VAL R30
      771 SETTABLEKS                       R59 R58 K126 ["OnClick"]
      773 CALL                             R56 2 1
      774 SETTABLEKS                       R56 R55 K121 ["NextButton"]
      776 CALL                             R52 3 1
      777 SETTABLEKS                       R52 R51 K81 ["Controls"]
      779 CALL                             R48 3 1
      780 SETTABLEKS                       R48 R47 K66 ["Display"]
      782 GETUPVAL                         R48 3
      783 GETTABLEKS                       R48 R48 K46 ["createElement"]
      785 GETUPVAL                         R49 19
      786 DUPTABLE                         R50 K132 [{["LayoutOrder"] = 4, ["Padding"] = 10, ["Size"]}]
      787 GETIMPORT                        R51 K101 [UDim2.new]
      789 LOADN                            R52 1
      790 LOADN                            R53 0
      791 LOADN                            R54 0
      792 LOADN                            R55 140
      793 CALL                             R51 4 1
      794 SETTABLEKS                       R51 R50 K53 ["Size"]
      796 DUPTABLE                         R51 K134 [{"TextInput"}]
      797 GETUPVAL                         R52 3
      798 GETTABLEKS                       R52 R52 K46 ["createElement"]
      800 GETUPVAL                         R53 24
      801 DUPTABLE                         R54 K140 [{["BottomComponent"], ["BottomComponentProps"], ["Disabled"] = True, ["MultiLine"] = True, ["Text"], ["Size"]}]
      802 GETUPVAL                         R55 25
      803 SETTABLEKS                       R55 R54 K135 ["BottomComponent"]
      805 DUPTABLE                         R55 K147 [{"Enabled", "OnBackButtonClick", "GenerateButtonText", "OnGenerateButtonClick", "OnRerollButtonClick", "RerollTooltipText", "QuotaTooltipText", "Size", "Style"}]
      806 SETTABLEKS                       R36 R55 K36 ["Enabled"]
      808 SETTABLEKS                       R38 R55 K141 ["OnBackButtonClick"]
      810 SETTABLEKS                       R11 R55 K142 ["GenerateButtonText"]
      812 SETTABLEKS                       R40 R55 K143 ["OnGenerateButtonClick"]
      814 SETTABLEKS                       R39 R55 K144 ["OnRerollButtonClick"]
      816 SETTABLEKS                       R13 R55 K145 ["RerollTooltipText"]
      818 SETTABLEKS                       R12 R55 K146 ["QuotaTooltipText"]
      820 GETIMPORT                        R56 K101 [UDim2.new]
      822 LOADN                            R57 1
      823 LOADN                            R58 0
      824 LOADN                            R59 0
      825 LOADN                            R60 32
      826 CALL                             R56 4 1
      827 SETTABLEKS                       R56 R55 K53 ["Size"]
      829 SETTABLEKS                       R42 R55 K54 ["Style"]
      831 SETTABLEKS                       R55 R54 K136 ["BottomComponentProps"]
      833 SETTABLEKS                       R14 R54 K139 ["Text"]
      835 GETIMPORT                        R55 K101 [UDim2.new]
      837 LOADN                            R56 1
      838 LOADN                            R57 0
      839 LOADN                            R58 0
      840 LOADN                            R59 120
      841 CALL                             R55 4 1
      842 SETTABLEKS                       R55 R54 K53 ["Size"]
      844 CALL                             R52 2 1
      845 SETTABLEKS                       R52 R51 K133 ["TextInput"]
      847 CALL                             R48 3 1
      848 SETTABLEKS                       R48 R47 K67 ["PreviewActionArea"]
      850 CALL                             R44 3 -1
      851 CLOSEUPVALS                      R8
      852 RETURN                           R44 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TextureGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["RunService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Dash"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["React"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K10 ["Packages"]
       31 GETTABLEKS                       R5 R5 K13 ["Framework"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R4 K14 ["ContextServices"]
       36 GETTABLEKS                       R6 R5 K15 ["withContext"]
       38 GETTABLEKS                       R7 R5 K16 ["Analytics"]
       40 GETTABLEKS                       R8 R5 K17 ["Localization"]
       42 GETTABLEKS                       R9 R5 K18 ["Stylizer"]
       44 GETIMPORT                        R10 K9 [require]
       46 GETTABLEKS                       R11 R0 K19 ["Src"]
       48 GETTABLEKS                       R11 R11 K20 ["Components"]
       50 GETTABLEKS                       R11 R11 K21 ["TextureGenerationServiceContext"]
       52 CALL                             R10 1 1
       53 GETTABLEKS                       R11 R4 K22 ["UI"]
       55 GETTABLEKS                       R12 R11 K23 ["AssetRenderModel"]
       57 GETTABLEKS                       R13 R11 K24 ["Button"]
       59 GETTABLEKS                       R14 R11 K25 ["IconButton"]
       61 GETTABLEKS                       R15 R11 K26 ["Image"]
       63 GETTABLEKS                       R16 R11 K27 ["LoadingIndicator"]
       65 GETTABLEKS                       R17 R11 K28 ["Pane"]
       67 GETTABLEKS                       R18 R11 K29 ["TextInput"]
       69 GETTABLEKS                       R19 R11 K30 ["TextLabel"]
       71 GETTABLEKS                       R20 R11 K31 ["Tooltip"]
       73 GETTABLEKS                       R21 R0 K19 ["Src"]
       75 GETTABLEKS                       R21 R21 K32 ["Hooks"]
       77 GETIMPORT                        R22 K9 [require]
       79 GETTABLEKS                       R23 R21 K33 ["useSelectedMeshParts"]
       81 CALL                             R22 1 1
       82 GETTABLEKS                       R23 R4 K34 ["Style"]
       84 GETTABLEKS                       R23 R23 K18 ["Stylizer"]
       86 GETTABLEKS                       R24 R4 K35 ["Util"]
       88 GETTABLEKS                       R24 R24 K36 ["StyleModifier"]
       90 GETTABLEKS                       R25 R4 K35 ["Util"]
       92 GETTABLEKS                       R25 R25 K37 ["LayoutOrderIterator"]
       94 GETTABLEKS                       R26 R0 K19 ["Src"]
       96 GETTABLEKS                       R26 R26 K35 ["Util"]
       98 GETIMPORT                        R27 K9 [require]
      100 GETTABLEKS                       R28 R26 K38 ["centerCameraOnModelForRotation"]
      102 CALL                             R27 1 1
      103 GETIMPORT                        R28 K9 [require]
      105 GETTABLEKS                       R29 R26 K39 ["cloneIgnoreArchivable"]
      107 CALL                             R28 1 1
      108 GETIMPORT                        R29 K9 [require]
      110 GETTABLEKS                       R30 R26 K40 ["Constants"]
      112 CALL                             R29 1 1
      113 GETIMPORT                        R30 K9 [require]
      115 GETTABLEKS                       R31 R26 K41 ["createHashFromMeshParts"]
      117 CALL                             R30 1 1
      118 GETIMPORT                        R31 K9 [require]
      120 GETTABLEKS                       R32 R26 K42 ["createOptionsFromContext"]
      122 CALL                             R31 1 1
      123 GETIMPORT                        R32 K9 [require]
      125 GETTABLEKS                       R33 R26 K43 ["fetchAndSetQuotas"]
      127 CALL                             R32 1 1
      128 GETIMPORT                        R33 K9 [require]
      130 GETTABLEKS                       R34 R26 K44 ["GenerationsContext"]
      132 CALL                             R33 1 1
      133 GETIMPORT                        R34 K9 [require]
      135 GETTABLEKS                       R35 R26 K45 ["PreviewsContext"]
      137 CALL                             R34 1 1
      138 GETIMPORT                        R35 K9 [require]
      140 GETTABLEKS                       R36 R26 K46 ["OptionsContext"]
      142 CALL                             R35 1 1
      143 GETIMPORT                        R36 K9 [require]
      145 GETTABLEKS                       R37 R0 K19 ["Src"]
      147 GETTABLEKS                       R37 R37 K47 ["Flags"]
      149 GETTABLEKS                       R37 R37 K48 ["getFIntTextureGeneratorMaxConcurrentGenerations"]
      151 CALL                             R36 1 1
      152 GETIMPORT                        R37 K9 [require]
      154 GETTABLEKS                       R38 R0 K19 ["Src"]
      156 GETTABLEKS                       R38 R38 K49 ["Types"]
      158 CALL                             R37 1 1
      159 DUPCLOSURE                       R38 K50 [PROTO_0]
      160 CAPTURE                          VAL R3
      161 CAPTURE                          VAL R17
      162 CAPTURE                          VAL R13
      163 CAPTURE                          VAL R15
      164 CAPTURE                          VAL R14
      165 CAPTURE                          VAL R24
      166 DUPCLOSURE                       R39 K51 [PROTO_26]
      167 CAPTURE                          VAL R7
      168 CAPTURE                          VAL R8
      169 CAPTURE                          VAL R22
      170 CAPTURE                          VAL R3
      171 CAPTURE                          VAL R33
      172 CAPTURE                          VAL R34
      173 CAPTURE                          VAL R35
      174 CAPTURE                          VAL R10
      175 CAPTURE                          VAL R30
      176 CAPTURE                          VAL R1
      177 CAPTURE                          VAL R28
      178 CAPTURE                          VAL R29
      179 CAPTURE                          VAL R27
      180 CAPTURE                          VAL R2
      181 CAPTURE                          VAL R36
      182 CAPTURE                          VAL R31
      183 CAPTURE                          VAL R32
      184 CAPTURE                          VAL R25
      185 CAPTURE                          VAL R23
      186 CAPTURE                          VAL R17
      187 CAPTURE                          VAL R15
      188 CAPTURE                          VAL R12
      189 CAPTURE                          VAL R16
      190 CAPTURE                          VAL R14
      191 CAPTURE                          VAL R18
      192 CAPTURE                          VAL R38
      193 RETURN                           R39 1
