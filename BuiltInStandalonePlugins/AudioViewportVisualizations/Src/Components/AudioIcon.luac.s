PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["Color"]
        2 GETTABLEKS                       R2 R2 K1 ["OverMedia"]
        4 GETTABLEKS                       R2 R2 K2 ["OverMedia_300"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K3 ["systemColor"]
        9 MOVE                             R4 R1
       10 GETTABLEKS                       R5 R0 K4 ["variant"]
       12 CALL                             R3 2 1
       13 GETTABLEKS                       R5 R0 K4 ["variant"]
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R6 R6 K5 ["Standard"]
       18 JUMPIFEQ                         R5 R6 ; [+2]
       20 LOADB                            R4 0 +1
       21 LOADB                            R4 1
       22 GETTABLEKS                       R6 R0 K6 ["selected"]
       24 JUMPIFNOT                        R6 ; [+5]
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R5 R5 K7 ["getSelectionColor"]
       28 CALL                             R5 0 1
       29 JUMP                             ; [+4]
       30 GETUPVAL                         R5 2
       31 GETTABLEKS                       R5 R5 K8 ["getHoverColor"]
       33 CALL                             R5 0 1
       34 GETUPVAL                         R6 3
       35 GETTABLEKS                       R7 R2 K9 ["Color3"]
       37 SETTABLEKS                       R7 R6 K10 ["BackgroundColor3"]
       39 GETUPVAL                         R6 3
       40 GETTABLEKS                       R7 R0 K11 ["transparency"]
       42 SETTABLEKS                       R7 R6 K12 ["BackgroundTransparency"]
       44 GETUPVAL                         R6 4
       45 SETTABLEKS                       R5 R6 K0 ["Color"]
       47 GETUPVAL                         R6 4
       48 GETTABLEKS                       R7 R1 K13 ["Stroke"]
       50 GETTABLEKS                       R7 R7 K14 ["Thicker"]
       52 SETTABLEKS                       R7 R6 K15 ["Thickness"]
       54 GETUPVAL                         R6 4
       55 GETTABLEKS                       R8 R0 K6 ["selected"]
       57 JUMPIF                           R8 ; [+3]
       58 GETTABLEKS                       R8 R0 K16 ["hovered"]
       60 JUMPIFNOT                        R8 ; [+2]
       61 LOADN                            R7 0
       62 JUMP                             ; [+1]
       63 LOADN                            R7 1
       64 SETTABLEKS                       R7 R6 K17 ["Transparency"]
       66 GETUPVAL                         R6 5
       67 JUMPIFNOT                        R4 ; [+2]
       68 LOADK                            R7 K18 ["speaker-no-lines"]
       69 JUMP                             ; [+1]
       70 LOADK                            R7 K19 ["speaker"]
       71 SETTABLEKS                       R7 R6 K20 ["Text"]
       73 GETUPVAL                         R6 5
       74 JUMPIFNOT                        R4 ; [+2]
       75 GETUPVAL                         R7 6
       76 JUMP                             ; [+3]
       77 GETIMPORT                        R7 K23 [UDim2.new]
       79 CALL                             R7 0 1
       80 SETTABLEKS                       R7 R6 K24 ["Position"]
       82 GETUPVAL                         R6 5
       83 GETTABLEKS                       R7 R1 K25 ["Size"]
       85 GETTABLEKS                       R7 R7 K26 ["Size_500"]
       87 SETTABLEKS                       R7 R6 K27 ["TextSize"]
       89 GETUPVAL                         R6 5
       90 GETTABLEKS                       R7 R3 K9 ["Color3"]
       92 SETTABLEKS                       R7 R6 K28 ["TextColor3"]
       94 GETUPVAL                         R6 5
       95 GETTABLEKS                       R7 R3 K17 ["Transparency"]
       97 SETTABLEKS                       R7 R6 K29 ["TextTransparency"]
       99 GETUPVAL                         R6 7
      100 GETTABLEKS                       R8 R0 K30 ["count"]
      102 LOADN                            R9 99
      103 JUMPIFNOTLT                      R9 R8 ; [+3]
      105 GETUPVAL                         R7 8
      106 JUMP                             ; [+6]
      107 GETTABLEKS                       R8 R0 K30 ["count"]
      109 FASTCALL1                        TOSTRING R8 ; [+2]
      110 GETIMPORT                        R7 K32 [tostring]
      112 CALL                             R7 1 1
      113 SETTABLEKS                       R7 R6 K20 ["Text"]
      115 GETUPVAL                         R6 7
      116 GETTABLEKS                       R7 R3 K9 ["Color3"]
      118 SETTABLEKS                       R7 R6 K28 ["TextColor3"]
      120 GETUPVAL                         R6 7
      121 GETTABLEKS                       R7 R3 K17 ["Transparency"]
      123 SETTABLEKS                       R7 R6 K29 ["TextTransparency"]
      125 GETUPVAL                         R6 7
      126 GETTABLEKS                       R7 R0 K33 ["merged"]
      128 SETTABLEKS                       R7 R6 K34 ["Visible"]
      130 GETUPVAL                         R6 5
      131 GETTABLEKS                       R8 R0 K33 ["merged"]
      133 NOT                              R7 R8
      134 SETTABLEKS                       R7 R6 K34 ["Visible"]
      136 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R3 K0 ["Plugin"]
        1 LOADK                            R4 K1 ["OverflowCount"]
        2 NAMECALL                         R1 R0 K2 ["getText"]
        4 CALL                             R1 3 1
        5 GETIMPORT                        R2 K5 [Instance.new]
        7 LOADK                            R3 K6 ["Frame"]
        8 CALL                             R2 1 1
        9 LOADB                            R3 0
       10 SETTABLEKS                       R3 R2 K7 ["AutoLocalize"]
       12 GETIMPORT                        R3 K10 [UDim2.fromScale]
       14 LOADN                            R4 1
       15 LOADN                            R5 1
       16 CALL                             R3 2 1
       17 SETTABLEKS                       R3 R2 K11 ["Size"]
       19 LOADN                            R3 0
       20 SETTABLEKS                       R3 R2 K12 ["BorderSizePixel"]
       22 GETIMPORT                        R3 K5 [Instance.new]
       24 LOADK                            R4 K13 ["UICorner"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K15 [UDim.new]
       28 LOADK                            R5 K16 [0.5]
       29 LOADN                            R6 0
       30 CALL                             R4 2 1
       31 SETTABLEKS                       R4 R3 K17 ["CornerRadius"]
       33 SETTABLEKS                       R2 R3 K18 ["Parent"]
       35 GETIMPORT                        R4 K5 [Instance.new]
       37 LOADK                            R5 K19 ["UIStroke"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K23 [Enum.ApplyStrokeMode.Border]
       41 SETTABLEKS                       R5 R4 K21 ["ApplyStrokeMode"]
       43 SETTABLEKS                       R2 R4 K18 ["Parent"]
       45 GETIMPORT                        R5 K5 [Instance.new]
       47 LOADK                            R6 K24 ["TextLabel"]
       48 CALL                             R5 1 1
       49 LOADK                            R6 K25 ["Count"]
       50 SETTABLEKS                       R6 R5 K26 ["Name"]
       52 GETIMPORT                        R6 K10 [UDim2.fromScale]
       54 LOADN                            R7 1
       55 LOADN                            R8 1
       56 CALL                             R6 2 1
       57 SETTABLEKS                       R6 R5 K11 ["Size"]
       59 LOADN                            R6 1
       60 SETTABLEKS                       R6 R5 K27 ["BackgroundTransparency"]
       62 LOADN                            R6 0
       63 SETTABLEKS                       R6 R5 K12 ["BorderSizePixel"]
       65 GETUPVAL                         R8 0
       66 GETTABLEKS                       R8 R8 K28 ["Font"]
       68 FASTCALL1                        TYPEOF R8 ; [+2]
       69 GETIMPORT                        R7 K30 [typeof]
       71 CALL                             R7 1 1
       72 JUMPIFNOTEQKS                    R7 K28 ["Font"] ; [+5]
       74 GETUPVAL                         R6 0
       75 GETTABLEKS                       R6 R6 K28 ["Font"]
       77 JUMP                             ; [+6]
       78 GETIMPORT                        R6 K32 [Font.fromEnum]
       80 GETUPVAL                         R7 0
       81 GETTABLEKS                       R7 R7 K28 ["Font"]
       83 CALL                             R6 1 1
       84 SETTABLEKS                       R6 R5 K33 ["FontFace"]
       86 GETUPVAL                         R6 0
       87 GETTABLEKS                       R6 R6 K34 ["FontSize"]
       89 SETTABLEKS                       R6 R5 K35 ["TextSize"]
       91 GETUPVAL                         R6 0
       92 GETTABLEKS                       R6 R6 K36 ["LineHeight"]
       94 SETTABLEKS                       R6 R5 K36 ["LineHeight"]
       96 LOADB                            R6 0
       97 SETTABLEKS                       R6 R5 K37 ["Visible"]
       99 SETTABLEKS                       R2 R5 K18 ["Parent"]
      101 GETIMPORT                        R6 K5 [Instance.new]
      103 LOADK                            R7 K24 ["TextLabel"]
      104 CALL                             R6 1 1
      105 LOADK                            R7 K38 ["Glyph"]
      106 SETTABLEKS                       R7 R6 K26 ["Name"]
      108 GETIMPORT                        R7 K10 [UDim2.fromScale]
      110 LOADN                            R8 1
      111 LOADN                            R9 1
      112 CALL                             R7 2 1
      113 SETTABLEKS                       R7 R6 K11 ["Size"]
      115 LOADN                            R7 1
      116 SETTABLEKS                       R7 R6 K27 ["BackgroundTransparency"]
      118 LOADN                            R7 0
      119 SETTABLEKS                       R7 R6 K12 ["BorderSizePixel"]
      121 GETUPVAL                         R7 1
      122 SETTABLEKS                       R7 R6 K33 ["FontFace"]
      124 LOADB                            R7 0
      125 SETTABLEKS                       R7 R6 K37 ["Visible"]
      127 SETTABLEKS                       R2 R6 K18 ["Parent"]
      129 NEWCLOSURE                       R7 P0
      130 CAPTURE                          UPVAL U2
      131 CAPTURE                          UPVAL U3
      132 CAPTURE                          UPVAL U4
      133 CAPTURE                          VAL R2
      134 CAPTURE                          VAL R4
      135 CAPTURE                          VAL R6
      136 CAPTURE                          UPVAL U5
      137 CAPTURE                          VAL R5
      138 CAPTURE                          VAL R1
      139 NEWCLOSURE                       R8 P1
      140 CAPTURE                          VAL R2
      141 DUPTABLE                         R9 K42 [{"instance", "update", "destroy"}]
      142 SETTABLEKS                       R2 R9 K39 ["instance"]
      144 SETTABLEKS                       R7 R9 K40 ["update"]
      146 SETTABLEKS                       R8 R9 K41 ["destroy"]
      148 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioViewportVisualizations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["BuilderIcons"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["StudioColorsUtil"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Components"]
       36 GETTABLEKS                       R5 R5 K13 ["NameStatusBadge"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R1 K14 ["Enums"]
       41 GETTABLEKS                       R5 R5 K15 ["StatusBadgeVariant"]
       43 GETTABLEKS                       R6 R1 K16 ["Utility"]
       45 GETTABLEKS                       R6 R6 K17 ["getTokens"]
       47 GETTABLEKS                       R7 R1 K14 ["Enums"]
       49 GETTABLEKS                       R7 R7 K18 ["ColorMode"]
       51 GETTABLEKS                       R7 R7 K19 ["Dark"]
       53 GETTABLEKS                       R8 R1 K14 ["Enums"]
       55 GETTABLEKS                       R8 R8 K20 ["Device"]
       57 GETTABLEKS                       R8 R8 K21 ["Desktop"]
       59 CALL                             R6 2 1
       60 GETTABLEKS                       R7 R6 K22 ["Typography"]
       62 GETTABLEKS                       R7 R7 K23 ["LabelSmall"]
       64 GETTABLEKS                       R8 R2 K24 ["Font"]
       66 GETTABLEKS                       R8 R8 K25 ["Regular"]
       68 GETIMPORT                        R9 K28 [UDim2.fromOffset]
       70 LOADN                            R10 -1
       71 LOADN                            R11 0
       72 CALL                             R9 2 1
       73 DUPCLOSURE                       R10 K29 [PROTO_2]
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R9
       80 DUPTABLE                         R11 K31 [{"create"}]
       81 SETTABLEKS                       R10 R11 K30 ["create"]
       83 RETURN                           R11 1
