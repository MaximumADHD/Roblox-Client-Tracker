PROTO_0:
        0 DUPTABLE                         R1 K10 [{[1] = 1, ["Image"], ["ImageTransparency"] = 0, ["ImageColor3"], ["ScaleType"], ["SliceCenter"], ["Position"], ["Size"]}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K11 ["ROUNDED_BACKGROUND_IMAGE"]
        4 SETTABLEKS                       R2 R1 K2 ["Image"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K12 ["WHITE"]
        9 SETTABLEKS                       R2 R1 K5 ["ImageColor3"]
       11 GETIMPORT                        R2 K15 [Enum.ScaleType.Slice]
       13 SETTABLEKS                       R2 R1 K6 ["ScaleType"]
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R2 R2 K16 ["ROUNDED_FRAME_SLICE"]
       18 SETTABLEKS                       R2 R1 K7 ["SliceCenter"]
       20 GETIMPORT                        R2 K19 [UDim2.new]
       22 LOADN                            R3 0
       23 LOADN                            R4 0
       24 LOADN                            R5 0
       25 LOADN                            R6 0
       26 CALL                             R2 4 1
       27 SETTABLEKS                       R2 R1 K8 ["Position"]
       29 GETIMPORT                        R2 K19 [UDim2.new]
       31 LOADN                            R3 1
       32 LOADN                            R4 0
       33 LOADN                            R5 1
       34 LOADN                            R6 0
       35 CALL                             R2 4 1
       36 SETTABLEKS                       R2 R1 K9 ["Size"]
       38 GETUPVAL                         R2 3
       39 GETTABLEKS                       R2 R2 K20 ["Dictionary"]
       41 GETTABLEKS                       R2 R2 K21 ["join"]
       43 MOVE                             R3 R0
       44 NEWTABLE                         R4 8 0
       46 GETUPVAL                         R5 3
       47 GETTABLEKS                       R5 R5 K22 ["None"]
       49 SETTABLEKS                       R5 R4 K23 ["ForwardRef"]
       51 GETUPVAL                         R5 4
       52 GETTABLEKS                       R5 R5 K24 ["Children"]
       54 GETUPVAL                         R6 3
       55 GETTABLEKS                       R6 R6 K22 ["None"]
       57 SETTABLE                         R6 R4 R5
       58 GETUPVAL                         R5 3
       59 GETTABLEKS                       R5 R5 K22 ["None"]
       61 SETTABLEKS                       R5 R4 K25 ["BackgroundColor3"]
       63 GETUPVAL                         R5 3
       64 GETTABLEKS                       R5 R5 K22 ["None"]
       66 SETTABLEKS                       R5 R4 K0 ["BackgroundTransparency"]
       68 GETUPVAL                         R5 3
       69 GETTABLEKS                       R5 R5 K22 ["None"]
       71 SETTABLEKS                       R5 R4 K26 ["BorderColor3"]
       73 CALL                             R2 2 1
       74 GETUPVAL                         R3 3
       75 GETTABLEKS                       R3 R3 K20 ["Dictionary"]
       77 GETTABLEKS                       R3 R3 K21 ["join"]
       79 MOVE                             R4 R1
       80 MOVE                             R5 R2
       81 NEWTABLE                         R6 1 0
       83 GETUPVAL                         R7 4
       84 GETTABLEKS                       R7 R7 K27 ["Ref"]
       86 GETTABLEKS                       R8 R0 K23 ["ForwardRef"]
       88 SETTABLE                         R8 R6 R7
       89 CALL                             R3 3 1
       90 MOVE                             R1 R3
       91 GETTABLEKS                       R3 R0 K25 ["BackgroundColor3"]
       93 JUMPIFNOT                        R3 ; [+4]
       94 GETTABLEKS                       R3 R0 K25 ["BackgroundColor3"]
       96 SETTABLEKS                       R3 R1 K5 ["ImageColor3"]
       98 GETTABLEKS                       R3 R0 K0 ["BackgroundTransparency"]
      100 JUMPIFNOT                        R3 ; [+4]
      101 GETTABLEKS                       R3 R0 K0 ["BackgroundTransparency"]
      103 SETTABLEKS                       R3 R1 K3 ["ImageTransparency"]
      105 GETTABLEKS                       R3 R0 K26 ["BorderColor3"]
      107 JUMPIF                           R3 ; [+3]
      108 GETUPVAL                         R3 1
      109 GETTABLEKS                       R3 R3 K28 ["GRAY_3"]
      111 LOADNIL                          R4
      112 GETTABLEKS                       R5 R0 K29 ["BorderSizePixel"]
      114 JUMPIFNOTEQKN                    R5 K4 [0] ; [+3]
      116 LOADN                            R4 1
      117 JUMP                             ; [+1]
      118 LOADN                            R4 0
      119 GETUPVAL                         R5 4
      120 GETTABLEKS                       R5 R5 K30 ["createElement"]
      122 GETUPVAL                         R6 5
      123 MOVE                             R7 R1
      124 DUPTABLE                         R8 K32 [{"Border"}]
      125 GETUPVAL                         R9 4
      126 GETTABLEKS                       R9 R9 K30 ["createElement"]
      128 LOADK                            R10 K33 ["ImageLabel"]
      129 DUPTABLE                         R11 K34 [{["Size"], [2] = 1, ["Image"], ["ImageColor3"], ["ImageTransparency"], ["ScaleType"], ["SliceCenter"]}]
      130 GETIMPORT                        R12 K19 [UDim2.new]
      132 LOADN                            R13 1
      133 LOADN                            R14 0
      134 LOADN                            R15 1
      135 LOADN                            R16 0
      136 CALL                             R12 4 1
      137 SETTABLEKS                       R12 R11 K9 ["Size"]
      139 GETUPVAL                         R12 0
      140 GETTABLEKS                       R12 R12 K35 ["ROUNDED_BORDER_IMAGE"]
      142 SETTABLEKS                       R12 R11 K2 ["Image"]
      144 SETTABLEKS                       R3 R11 K5 ["ImageColor3"]
      146 SETTABLEKS                       R4 R11 K3 ["ImageTransparency"]
      148 GETIMPORT                        R12 K15 [Enum.ScaleType.Slice]
      150 SETTABLEKS                       R12 R11 K6 ["ScaleType"]
      152 GETUPVAL                         R12 2
      153 GETTABLEKS                       R12 R12 K16 ["ROUNDED_FRAME_SLICE"]
      155 SETTABLEKS                       R12 R11 K7 ["SliceCenter"]
      157 GETUPVAL                         R13 4
      158 GETTABLEKS                       R13 R13 K24 ["Children"]
      160 GETTABLE                         R12 R0 R13
      161 CALL                             R9 3 1
      162 SETTABLEKS                       R9 R8 K31 ["Border"]
      164 CALL                             R5 3 -1
      165 RETURN                           R5 -1

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+2]
        1 LOADK                            R1 K0 ["ImageButton"]
        2 JUMP                             ; [+1]
        3 LOADK                            R1 K1 ["ImageLabel"]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          VAL R1
       11 GETUPVAL                         R3 5
       12 MOVE                             R4 R2
       13 CALL                             R3 1 1
       14 MOVE                             R2 R3
       15 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Roact"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["Cryo"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K5 [require]
       23 GETTABLEKS                       R5 R0 K3 ["Packages"]
       25 GETTABLEKS                       R5 R5 K6 ["Roact"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K5 [require]
       30 GETTABLEKS                       R6 R0 K3 ["Packages"]
       32 GETTABLEKS                       R6 R6 K8 ["Framework"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K5 [require]
       37 GETTABLEKS                       R7 R0 K9 ["Src"]
       39 GETTABLEKS                       R7 R7 K10 ["Util"]
       41 GETTABLEKS                       R7 R7 K11 ["Constants"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K5 [require]
       46 GETTABLEKS                       R8 R0 K9 ["Src"]
       48 GETTABLEKS                       R8 R8 K10 ["Util"]
       50 GETTABLEKS                       R8 R8 K12 ["Colors"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K5 [require]
       55 GETTABLEKS                       R9 R0 K9 ["Src"]
       57 GETTABLEKS                       R9 R9 K10 ["Util"]
       59 GETTABLEKS                       R9 R9 K13 ["Images"]
       61 CALL                             R8 1 1
       62 GETTABLEKS                       R9 R5 K14 ["Wrappers"]
       64 GETTABLEKS                       R9 R9 K15 ["withForwardRef"]
       66 DUPCLOSURE                       R10 K16 [PROTO_1]
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R9
       73 RETURN                           R10 1
