PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["ref"]
        3 GETTABLEKS                       R0 R1 K1 ["current"]
        5 JUMPIFNOTEQKNIL                  R0 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 0
        9 DUPTABLE                         R3 K3 [{"backgroundColor"}]
       10 GETTABLEKS                       R5 R0 K4 ["Parent"]
       12 GETTABLEKS                       R4 R5 K5 ["BackgroundColor3"]
       14 SETTABLEKS                       R4 R3 K2 ["backgroundColor"]
       16 NAMECALL                         R1 R1 K6 ["setState"]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["ref"]
        3 GETTABLEKS                       R0 R1 K1 ["current"]
        5 JUMPIFNOTEQKNIL                  R0 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K2 ["colorChanged"]
       11 JUMPIFNOT                        R1 ; [+10]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R1 R2 K2 ["colorChanged"]
       15 NAMECALL                         R1 R1 K3 ["Disconnect"]
       17 CALL                             R1 1 0
       18 GETUPVAL                         R1 0
       19 LOADNIL                          R2
       20 SETTABLEKS                       R2 R1 K2 ["colorChanged"]
       22 GETTABLEKS                       R1 R0 K4 ["Parent"]
       24 JUMPIFNOT                        R1 ; [+32]
       25 GETUPVAL                         R1 0
       26 GETTABLEKS                       R2 R0 K4 ["Parent"]
       28 LOADK                            R4 K5 ["BackgroundColor3"]
       29 NAMECALL                         R2 R2 K6 ["GetPropertyChangedSignal"]
       31 CALL                             R2 2 1
       32 GETUPVAL                         R4 1
       33 NAMECALL                         R2 R2 K7 ["Connect"]
       35 CALL                             R2 2 1
       36 SETTABLEKS                       R2 R1 K2 ["colorChanged"]
       38 GETUPVAL                         R3 0
       39 GETTABLEKS                       R2 R3 K0 ["ref"]
       41 GETTABLEKS                       R1 R2 K1 ["current"]
       43 JUMPIFNOTEQKNIL                  R1 ; [+2]
       45 RETURN                           R0 0
       46 GETUPVAL                         R2 0
       47 DUPTABLE                         R4 K9 [{"backgroundColor"}]
       48 GETTABLEKS                       R6 R1 K4 ["Parent"]
       50 GETTABLEKS                       R5 R6 K5 ["BackgroundColor3"]
       52 SETTABLEKS                       R5 R4 K8 ["backgroundColor"]
       54 NAMECALL                         R2 R2 K10 ["setState"]
       56 CALL                             R2 2 0
       57 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 DUPTABLE                         R1 K1 [{"backgroundColor"}]
        5 LOADNIL                          R2
        6 SETTABLEKS                       R2 R1 K0 ["backgroundColor"]
        8 SETTABLEKS                       R1 R0 K2 ["state"]
       10 NEWCLOSURE                       R1 P0
       11 CAPTURE                          VAL R0
       12 NEWCLOSURE                       R2 P1
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R1
       15 SETTABLEKS                       R2 R0 K3 ["parentChanged"]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R2 R3 K4 ["createRef"]
       20 CALL                             R2 0 1
       21 SETTABLEKS                       R2 R0 K5 ["ref"]
       23 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["parentChanged"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R2 R0 K0 ["ref"]
        6 GETTABLEKS                       R1 R2 K1 ["current"]
        8 LOADK                            R4 K2 ["Parent"]
        9 NAMECALL                         R2 R1 K3 ["GetPropertyChangedSignal"]
       11 CALL                             R2 2 1
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          VAL R0
       14 NAMECALL                         R2 R2 K4 ["Connect"]
       16 CALL                             R2 2 1
       17 SETTABLEKS                       R2 R0 K5 ["parentChangedSignal"]
       19 GETTABLEKS                       R2 R0 K6 ["parentChanged"]
       21 CALL                             R2 0 0
       22 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R1 R0 K0 ["parentChangedSignal"]
        6 JUMPIFNOT                        R1 ; [+8]
        7 GETTABLEKS                       R1 R0 K0 ["parentChangedSignal"]
        9 NAMECALL                         R1 R1 K1 ["Disconnect"]
       11 CALL                             R1 1 0
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K0 ["parentChangedSignal"]
       15 GETTABLEKS                       R1 R0 K2 ["colorChanged"]
       17 JUMPIFNOT                        R1 ; [+8]
       18 GETTABLEKS                       R1 R0 K2 ["colorChanged"]
       20 NAMECALL                         R1 R1 K1 ["Disconnect"]
       22 CALL                             R1 1 0
       23 LOADNIL                          R1
       24 SETTABLEKS                       R1 R0 K2 ["colorChanged"]
       26 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Stylizer"]
        4 GETTABLEKS                       R4 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R4 K3 ["UseMask"]
        8 ORK                              R2 R3 K2 [False]
        9 GETTABLEKS                       R5 R0 K0 ["props"]
       11 GETTABLEKS                       R4 R5 K4 ["IsLoadedThumbnail"]
       13 ORK                              R3 R4 K2 [False]
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R5 R6 K5 ["Dictionary"]
       17 GETTABLEKS                       R4 R5 K6 ["join"]
       19 GETTABLEKS                       R5 R0 K0 ["props"]
       21 DUPTABLE                         R6 K7 [{"UseMask", "IsLoadedThumbnail", "Stylizer"}]
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R7 R8 K8 ["None"]
       25 SETTABLEKS                       R7 R6 K3 ["UseMask"]
       27 GETUPVAL                         R8 0
       28 GETTABLEKS                       R7 R8 K8 ["None"]
       30 SETTABLEKS                       R7 R6 K4 ["IsLoadedThumbnail"]
       32 GETUPVAL                         R8 0
       33 GETTABLEKS                       R7 R8 K8 ["None"]
       35 SETTABLEKS                       R7 R6 K1 ["Stylizer"]
       37 CALL                             R4 2 1
       38 GETUPVAL                         R5 1
       39 CALL                             R5 0 1
       40 JUMPIFNOT                        R5 ; [+51]
       41 GETUPVAL                         R6 2
       42 GETTABLEKS                       R5 R6 K9 ["createElement"]
       44 LOADK                            R6 K10 ["ImageLabel"]
       45 GETUPVAL                         R9 0
       46 GETTABLEKS                       R8 R9 K5 ["Dictionary"]
       48 GETTABLEKS                       R7 R8 K6 ["join"]
       50 MOVE                             R8 R4
       51 DUPTABLE                         R9 K12 [{"ImageColor3"}]
       52 JUMPIFNOT                        R3 ; [+7]
       53 GETIMPORT                        R10 K15 [Color3.new]
       55 LOADN                            R11 1
       56 LOADN                            R12 1
       57 LOADN                            R13 1
       58 CALL                             R10 3 1
       59 JUMPIF                           R10 ; [+8]
       60 GETTABLEKS                       R13 R1 K16 ["assetConfig"]
       62 GETTABLEKS                       R12 R13 K17 ["packagePermissions"]
       64 GETTABLEKS                       R11 R12 K18 ["subjectThumbnail"]
       66 GETTABLEKS                       R10 R11 K19 ["defaultImageColor"]
       68 SETTABLEKS                       R10 R9 K11 ["ImageColor3"]
       70 CALL                             R7 2 1
       71 DUPTABLE                         R8 K21 [{"Mask"}]
       72 GETUPVAL                         R10 2
       73 GETTABLEKS                       R9 R10 K9 ["createElement"]
       75 LOADK                            R10 K22 ["UICorner"]
       76 DUPTABLE                         R11 K24 [{"CornerRadius"}]
       77 GETIMPORT                        R12 K26 [UDim.new]
       79 JUMPIFNOT                        R2 ; [+2]
       80 LOADN                            R13 1
       81 JUMP                             ; [+1]
       82 LOADK                            R13 K27 [0.1]
       83 LOADN                            R14 0
       84 CALL                             R12 2 1
       85 SETTABLEKS                       R12 R11 K23 ["CornerRadius"]
       87 CALL                             R9 2 1
       88 SETTABLEKS                       R9 R8 K20 ["Mask"]
       90 CALL                             R5 3 -1
       91 RETURN                           R5 -1
       92 GETUPVAL                         R6 2
       93 GETTABLEKS                       R5 R6 K9 ["createElement"]
       95 LOADK                            R6 K10 ["ImageLabel"]
       96 GETUPVAL                         R9 0
       97 GETTABLEKS                       R8 R9 K5 ["Dictionary"]
       99 GETTABLEKS                       R7 R8 K6 ["join"]
      101 MOVE                             R8 R4
      102 NEWTABLE                         R9 8 0
      104 GETUPVAL                         R11 2
      105 GETTABLEKS                       R10 R11 K28 ["Ref"]
      107 GETTABLEKS                       R11 R0 K29 ["ref"]
      109 SETTABLE                         R11 R9 R10
      110 JUMPIFNOT                        R3 ; [+7]
      111 GETIMPORT                        R10 K15 [Color3.new]
      113 LOADN                            R11 1
      114 LOADN                            R12 1
      115 LOADN                            R13 1
      116 CALL                             R10 3 1
      117 JUMPIF                           R10 ; [+8]
      118 GETTABLEKS                       R13 R1 K16 ["assetConfig"]
      120 GETTABLEKS                       R12 R13 K17 ["packagePermissions"]
      122 GETTABLEKS                       R11 R12 K18 ["subjectThumbnail"]
      124 GETTABLEKS                       R10 R11 K19 ["defaultImageColor"]
      126 SETTABLEKS                       R10 R9 K11 ["ImageColor3"]
      128 LOADN                            R10 0
      129 SETTABLEKS                       R10 R9 K30 ["ImageTransparency"]
      131 GETTABLEKS                       R13 R1 K16 ["assetConfig"]
      133 GETTABLEKS                       R12 R13 K17 ["packagePermissions"]
      135 GETTABLEKS                       R11 R12 K18 ["subjectThumbnail"]
      137 GETTABLEKS                       R10 R11 K31 ["backgroundColor"]
      139 SETTABLEKS                       R10 R9 K32 ["BackgroundColor3"]
      141 JUMPIFNOT                        R2 ; [+2]
      142 LOADN                            R10 0
      143 JUMP                             ; [+1]
      144 LOADN                            R10 1
      145 SETTABLEKS                       R10 R9 K33 ["BackgroundTransparency"]
      147 LOADN                            R10 0
      148 SETTABLEKS                       R10 R9 K34 ["BorderSizePixel"]
      150 CALL                             R7 2 1
      151 DUPTABLE                         R8 K21 [{"Mask"}]
      152 MOVE                             R9 R2
      153 JUMPIFNOT                        R9 ; [+29]
      154 GETUPVAL                         R10 2
      155 GETTABLEKS                       R9 R10 K9 ["createElement"]
      157 LOADK                            R10 K10 ["ImageLabel"]
      158 DUPTABLE                         R11 K37 [{"BackgroundTransparency", "Size", "Image", "ImageColor3"}]
      159 LOADN                            R12 1
      160 SETTABLEKS                       R12 R11 K33 ["BackgroundTransparency"]
      162 GETIMPORT                        R12 K39 [UDim2.new]
      164 LOADN                            R13 1
      165 LOADN                            R14 0
      166 LOADN                            R15 1
      167 LOADN                            R16 0
      168 CALL                             R12 4 1
      169 SETTABLEKS                       R12 R11 K35 ["Size"]
      171 GETUPVAL                         R13 3
      172 GETTABLEKS                       R12 R13 K40 ["AVATAR_MASK"]
      174 SETTABLEKS                       R12 R11 K36 ["Image"]
      176 GETTABLEKS                       R13 R0 K41 ["state"]
      178 GETTABLEKS                       R12 R13 K31 ["backgroundColor"]
      180 SETTABLEKS                       R12 R11 K11 ["ImageColor3"]
      182 CALL                             R9 2 1
      183 SETTABLEKS                       R9 R8 K20 ["Mask"]
      185 CALL                             R5 3 -1
      186 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R5 K1 [script]
        3 GETTABLEKS                       R4 R5 K2 ["Parent"]
        5 GETTABLEKS                       R3 R4 K2 ["Parent"]
        7 GETTABLEKS                       R2 R3 K2 ["Parent"]
        9 GETTABLEKS                       R1 R2 K2 ["Parent"]
       11 GETTABLEKS                       R0 R1 K2 ["Parent"]
       13 GETIMPORT                        R1 K4 [require]
       15 GETTABLEKS                       R4 R0 K5 ["Src"]
       17 GETTABLEKS                       R3 R4 K6 ["Flags"]
       19 GETTABLEKS                       R2 R3 K7 ["getFFlagAACPermissionsPage"]
       21 CALL                             R1 1 1
       22 GETTABLEKS                       R2 R0 K8 ["Packages"]
       24 GETIMPORT                        R3 K4 [require]
       26 GETTABLEKS                       R4 R2 K9 ["Cryo"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K4 [require]
       31 GETTABLEKS                       R5 R2 K10 ["Roact"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K4 [require]
       36 GETTABLEKS                       R6 R2 K11 ["Framework"]
       38 CALL                             R5 1 1
       39 GETTABLEKS                       R7 R0 K5 ["Src"]
       41 GETTABLEKS                       R6 R7 K12 ["Util"]
       43 GETIMPORT                        R7 K4 [require]
       45 GETTABLEKS                       R8 R6 K13 ["Images"]
       47 CALL                             R7 1 1
       48 GETTABLEKS                       R8 R5 K14 ["ContextServices"]
       50 GETTABLEKS                       R9 R8 K15 ["withContext"]
       52 GETTABLEKS                       R10 R4 K16 ["PureComponent"]
       54 LOADK                            R12 K17 ["CollaboratorThumbnail"]
       55 NAMECALL                         R10 R10 K18 ["extend"]
       57 CALL                             R10 2 1
       58 DUPCLOSURE                       R11 K19 [PROTO_2]
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R4
       61 SETTABLEKS                       R11 R10 K20 ["init"]
       63 DUPCLOSURE                       R11 K21 [PROTO_4]
       64 CAPTURE                          VAL R1
       65 SETTABLEKS                       R11 R10 K22 ["didMount"]
       67 DUPCLOSURE                       R11 K23 [PROTO_5]
       68 CAPTURE                          VAL R1
       69 SETTABLEKS                       R11 R10 K24 ["willUnmount"]
       71 DUPCLOSURE                       R11 K25 [PROTO_6]
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R7
       76 SETTABLEKS                       R11 R10 K26 ["render"]
       78 MOVE                             R11 R9
       79 DUPTABLE                         R12 K28 [{"Stylizer"}]
       80 GETTABLEKS                       R13 R8 K27 ["Stylizer"]
       82 SETTABLEKS                       R13 R12 K27 ["Stylizer"]
       84 CALL                             R11 1 1
       85 MOVE                             R12 R10
       86 CALL                             R11 1 1
       87 MOVE                             R10 R11
       88 RETURN                           R10 1
