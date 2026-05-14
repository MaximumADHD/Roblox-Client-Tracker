PROTO_0:
        0 DUPTABLE                         R1 K8 [{"BackgroundTransparency", "Image", "ImageTransparency", "ImageColor3", "ScaleType", "SliceCenter", "Position", "Size"}]
        1 LOADN                            R2 1
        2 SETTABLEKS                       R2 R1 K0 ["BackgroundTransparency"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K9 ["ROUNDED_BACKGROUND_IMAGE"]
        7 SETTABLEKS                       R2 R1 K1 ["Image"]
        9 LOADN                            R2 0
       10 SETTABLEKS                       R2 R1 K2 ["ImageTransparency"]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K10 ["WHITE"]
       15 SETTABLEKS                       R2 R1 K3 ["ImageColor3"]
       17 GETIMPORT                        R2 K13 [Enum.ScaleType.Slice]
       19 SETTABLEKS                       R2 R1 K4 ["ScaleType"]
       21 GETUPVAL                         R2 2
       22 GETTABLEKS                       R2 R2 K14 ["ROUNDED_FRAME_SLICE"]
       24 SETTABLEKS                       R2 R1 K5 ["SliceCenter"]
       26 GETIMPORT                        R2 K17 [UDim2.new]
       28 LOADN                            R3 0
       29 LOADN                            R4 0
       30 LOADN                            R5 0
       31 LOADN                            R6 0
       32 CALL                             R2 4 1
       33 SETTABLEKS                       R2 R1 K6 ["Position"]
       35 GETIMPORT                        R2 K17 [UDim2.new]
       37 LOADN                            R3 1
       38 LOADN                            R4 0
       39 LOADN                            R5 1
       40 LOADN                            R6 0
       41 CALL                             R2 4 1
       42 SETTABLEKS                       R2 R1 K7 ["Size"]
       44 GETUPVAL                         R2 3
       45 GETTABLEKS                       R2 R2 K18 ["Dictionary"]
       47 GETTABLEKS                       R2 R2 K19 ["join"]
       49 MOVE                             R3 R0
       50 NEWTABLE                         R4 8 0
       52 GETUPVAL                         R5 3
       53 GETTABLEKS                       R5 R5 K20 ["None"]
       55 SETTABLEKS                       R5 R4 K21 ["ForwardRef"]
       57 GETUPVAL                         R5 4
       58 GETTABLEKS                       R5 R5 K22 ["Children"]
       60 GETUPVAL                         R6 3
       61 GETTABLEKS                       R6 R6 K20 ["None"]
       63 SETTABLE                         R6 R4 R5
       64 GETUPVAL                         R5 3
       65 GETTABLEKS                       R5 R5 K20 ["None"]
       67 SETTABLEKS                       R5 R4 K23 ["BackgroundColor3"]
       69 GETUPVAL                         R5 3
       70 GETTABLEKS                       R5 R5 K20 ["None"]
       72 SETTABLEKS                       R5 R4 K0 ["BackgroundTransparency"]
       74 GETUPVAL                         R5 3
       75 GETTABLEKS                       R5 R5 K20 ["None"]
       77 SETTABLEKS                       R5 R4 K24 ["BorderColor3"]
       79 CALL                             R2 2 1
       80 GETUPVAL                         R3 3
       81 GETTABLEKS                       R3 R3 K18 ["Dictionary"]
       83 GETTABLEKS                       R3 R3 K19 ["join"]
       85 MOVE                             R4 R1
       86 MOVE                             R5 R2
       87 NEWTABLE                         R6 1 0
       89 GETUPVAL                         R7 4
       90 GETTABLEKS                       R7 R7 K25 ["Ref"]
       92 GETTABLEKS                       R8 R0 K21 ["ForwardRef"]
       94 SETTABLE                         R8 R6 R7
       95 CALL                             R3 3 1
       96 MOVE                             R1 R3
       97 GETTABLEKS                       R3 R0 K23 ["BackgroundColor3"]
       99 JUMPIFNOT                        R3 ; [+4]
      100 GETTABLEKS                       R3 R0 K23 ["BackgroundColor3"]
      102 SETTABLEKS                       R3 R1 K3 ["ImageColor3"]
      104 GETTABLEKS                       R3 R0 K0 ["BackgroundTransparency"]
      106 JUMPIFNOT                        R3 ; [+4]
      107 GETTABLEKS                       R3 R0 K0 ["BackgroundTransparency"]
      109 SETTABLEKS                       R3 R1 K2 ["ImageTransparency"]
      111 GETTABLEKS                       R3 R0 K24 ["BorderColor3"]
      113 JUMPIF                           R3 ; [+3]
      114 GETUPVAL                         R3 1
      115 GETTABLEKS                       R3 R3 K26 ["GRAY_3"]
      117 LOADNIL                          R4
      118 GETTABLEKS                       R5 R0 K27 ["BorderSizePixel"]
      120 JUMPIFNOTEQKN                    R5 K28 [0] ; [+3]
      122 LOADN                            R4 1
      123 JUMP                             ; [+1]
      124 LOADN                            R4 0
      125 GETUPVAL                         R5 4
      126 GETTABLEKS                       R5 R5 K29 ["createElement"]
      128 GETUPVAL                         R6 5
      129 MOVE                             R7 R1
      130 DUPTABLE                         R8 K31 [{"Border"}]
      131 GETUPVAL                         R9 4
      132 GETTABLEKS                       R9 R9 K29 ["createElement"]
      134 LOADK                            R10 K32 ["ImageLabel"]
      135 DUPTABLE                         R11 K33 [{"Size", "BackgroundTransparency", "Image", "ImageColor3", "ImageTransparency", "ScaleType", "SliceCenter"}]
      136 GETIMPORT                        R12 K17 [UDim2.new]
      138 LOADN                            R13 1
      139 LOADN                            R14 0
      140 LOADN                            R15 1
      141 LOADN                            R16 0
      142 CALL                             R12 4 1
      143 SETTABLEKS                       R12 R11 K7 ["Size"]
      145 LOADN                            R12 1
      146 SETTABLEKS                       R12 R11 K0 ["BackgroundTransparency"]
      148 GETUPVAL                         R12 0
      149 GETTABLEKS                       R12 R12 K34 ["ROUNDED_BORDER_IMAGE"]
      151 SETTABLEKS                       R12 R11 K1 ["Image"]
      153 SETTABLEKS                       R3 R11 K3 ["ImageColor3"]
      155 SETTABLEKS                       R4 R11 K2 ["ImageTransparency"]
      157 GETIMPORT                        R12 K13 [Enum.ScaleType.Slice]
      159 SETTABLEKS                       R12 R11 K4 ["ScaleType"]
      161 GETUPVAL                         R12 2
      162 GETTABLEKS                       R12 R12 K14 ["ROUNDED_FRAME_SLICE"]
      164 SETTABLEKS                       R12 R11 K5 ["SliceCenter"]
      166 GETUPVAL                         R13 4
      167 GETTABLEKS                       R13 R13 K22 ["Children"]
      169 GETTABLE                         R12 R0 R13
      170 CALL                             R9 3 1
      171 SETTABLEKS                       R9 R8 K30 ["Border"]
      173 CALL                             R5 3 -1
      174 RETURN                           R5 -1

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
