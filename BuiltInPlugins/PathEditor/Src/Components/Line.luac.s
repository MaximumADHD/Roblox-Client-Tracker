PROTO_0:
        0 LOADN                            R2 1
        1 LOADN                            R0 5
        2 LOADN                            R1 1
        3 FORNPREP                         R0
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K0 ["pathRefs"]
        7 GETTABLE                         R3 R4 R2
        8 NAMECALL                         R3 R3 K1 ["getValue"]
       10 CALL                             R3 1 1
       11 JUMPIFNOT                        R3 ; [+8]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K2 ["props"]
       15 GETTABLEKS                       R6 R6 K3 ["ControlPoints"]
       17 NAMECALL                         R4 R3 K4 ["SetControlPoints"]
       19 CALL                             R4 2 0
       20 FORNLOOP                         R0
       21 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["pathRefs"]
        4 LOADN                            R3 1
        5 LOADN                            R1 5
        6 LOADN                            R2 1
        7 FORNPREP                         R1
        8 GETTABLEKS                       R4 R0 K0 ["pathRefs"]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K1 ["createRef"]
       13 CALL                             R5 0 1
       14 SETTABLE                         R5 R4 R3
       15 FORNLOOP                         R1
       16 NEWCLOSURE                       R1 P0
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R1 R0 K2 ["setControlPoints"]
       20 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K0 ["props"]
        4 GETTABLEKS                       R2 R2 K1 ["Stylizer"]
        6 GETTABLEKS                       R4 R1 K2 ["ZIndex"]
        8 JUMPIFNOT                        R4 ; [+3]
        9 GETTABLEKS                       R3 R1 K2 ["ZIndex"]
       11 JUMP                             ; [+1]
       12 LOADN                            R3 1
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K3 ["createElement"]
       16 LOADK                            R5 K4 ["Frame"]
       17 DUPTABLE                         R6 K7 [{"BackgroundTransparency", "ZIndex", "Position"}]
       18 LOADN                            R7 1
       19 SETTABLEKS                       R7 R6 K5 ["BackgroundTransparency"]
       21 GETTABLEKS                       R7 R1 K2 ["ZIndex"]
       23 SETTABLEKS                       R7 R6 K2 ["ZIndex"]
       25 GETTABLEKS                       R7 R1 K6 ["Position"]
       27 SETTABLEKS                       R7 R6 K6 ["Position"]
       29 DUPTABLE                         R7 K10 [{"Foreground", "Background"}]
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R8 R8 K3 ["createElement"]
       33 LOADK                            R9 K4 ["Frame"]
       34 DUPTABLE                         R10 K12 [{"BackgroundTransparency", "Size", "ZIndex"}]
       35 LOADN                            R11 1
       36 SETTABLEKS                       R11 R10 K5 ["BackgroundTransparency"]
       38 GETIMPORT                        R11 K15 [UDim2.fromScale]
       40 LOADN                            R12 1
       41 LOADN                            R13 1
       42 CALL                             R11 2 1
       43 SETTABLEKS                       R11 R10 K11 ["Size"]
       45 SETTABLEKS                       R3 R10 K2 ["ZIndex"]
       47 DUPTABLE                         R11 K17 [{"ForegroundLine"}]
       48 GETUPVAL                         R12 0
       49 GETTABLEKS                       R12 R12 K3 ["createElement"]
       51 LOADK                            R13 K18 ["Path2D"]
       52 DUPTABLE                         R14 K23 [{"Color3", "Thickness", "ref", "Transparency"}]
       53 GETTABLEKS                       R15 R1 K24 ["Color"]
       55 JUMPIF                           R15 ; [+2]
       56 GETTABLEKS                       R15 R2 K24 ["Color"]
       58 SETTABLEKS                       R15 R14 K19 ["Color3"]
       60 GETTABLEKS                       R15 R1 K20 ["Thickness"]
       62 JUMPIF                           R15 ; [+2]
       63 GETTABLEKS                       R15 R2 K20 ["Thickness"]
       65 SETTABLEKS                       R15 R14 K20 ["Thickness"]
       67 GETTABLEKS                       R16 R0 K25 ["pathRefs"]
       69 GETTABLEN                        R15 R16 1
       70 SETTABLEKS                       R15 R14 K21 ["ref"]
       72 GETTABLEKS                       R15 R2 K22 ["Transparency"]
       74 JUMPIF                           R15 ; [+2]
       75 GETTABLEKS                       R15 R1 K22 ["Transparency"]
       77 SETTABLEKS                       R15 R14 K22 ["Transparency"]
       79 CALL                             R12 2 1
       80 SETTABLEKS                       R12 R11 K16 ["ForegroundLine"]
       82 CALL                             R8 3 1
       83 SETTABLEKS                       R8 R7 K8 ["Foreground"]
       85 GETUPVAL                         R8 0
       86 GETTABLEKS                       R8 R8 K3 ["createElement"]
       88 LOADK                            R9 K4 ["Frame"]
       89 DUPTABLE                         R10 K12 [{"BackgroundTransparency", "Size", "ZIndex"}]
       90 LOADN                            R11 1
       91 SETTABLEKS                       R11 R10 K5 ["BackgroundTransparency"]
       93 GETIMPORT                        R11 K15 [UDim2.fromScale]
       95 LOADN                            R12 1
       96 LOADN                            R13 1
       97 CALL                             R11 2 1
       98 SETTABLEKS                       R11 R10 K11 ["Size"]
      100 SUBK                             R11 R3 K26 [1]
      101 SETTABLEKS                       R11 R10 K2 ["ZIndex"]
      103 DUPTABLE                         R11 K28 [{"ContrastPath"}]
      104 GETTABLEKS                       R12 R2 K29 ["ContrastColor"]
      106 JUMPIFNOT                        R12 ; [+30]
      107 GETUPVAL                         R12 0
      108 GETTABLEKS                       R12 R12 K3 ["createElement"]
      110 LOADK                            R13 K18 ["Path2D"]
      111 DUPTABLE                         R14 K23 [{"Color3", "Thickness", "ref", "Transparency"}]
      112 GETTABLEKS                       R15 R2 K29 ["ContrastColor"]
      114 SETTABLEKS                       R15 R14 K19 ["Color3"]
      116 GETTABLEKS                       R16 R1 K20 ["Thickness"]
      118 JUMPIF                           R16 ; [+2]
      119 GETTABLEKS                       R16 R2 K20 ["Thickness"]
      121 ADDK                             R15 R16 K26 [1]
      122 SETTABLEKS                       R15 R14 K20 ["Thickness"]
      124 GETTABLEKS                       R16 R0 K25 ["pathRefs"]
      126 GETTABLEN                        R15 R16 2
      127 SETTABLEKS                       R15 R14 K21 ["ref"]
      129 GETTABLEKS                       R15 R2 K22 ["Transparency"]
      131 JUMPIF                           R15 ; [+2]
      132 GETTABLEKS                       R15 R1 K22 ["Transparency"]
      134 SETTABLEKS                       R15 R14 K22 ["Transparency"]
      136 CALL                             R12 2 1
      137 SETTABLEKS                       R12 R11 K27 ["ContrastPath"]
      139 CALL                             R8 3 1
      140 SETTABLEKS                       R8 R7 K9 ["Background"]
      142 CALL                             R4 3 -1
      143 RETURN                           R4 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["setControlPoints"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["setControlPoints"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Packages"]
       20 GETTABLEKS                       R3 R3 K8 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K7 ["Packages"]
       27 GETTABLEKS                       R4 R4 K9 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K11 ["withContext"]
       34 GETTABLEKS                       R6 R3 K12 ["Style"]
       36 GETTABLEKS                       R6 R6 K13 ["Stylizer"]
       38 GETTABLEKS                       R7 R2 K14 ["Component"]
       40 LOADK                            R9 K15 ["Line"]
       41 NAMECALL                         R7 R7 K16 ["extend"]
       43 CALL                             R7 2 1
       44 DUPTABLE                         R8 K19 [{"Position", "Transparency"}]
       45 GETIMPORT                        R9 K22 [UDim2.new]
       47 CALL                             R9 0 1
       48 SETTABLEKS                       R9 R8 K17 ["Position"]
       50 LOADN                            R9 0
       51 SETTABLEKS                       R9 R8 K18 ["Transparency"]
       53 SETTABLEKS                       R8 R7 K23 ["defaultProps"]
       55 DUPCLOSURE                       R8 K24 [PROTO_1]
       56 CAPTURE                          VAL R2
       57 SETTABLEKS                       R8 R7 K25 ["init"]
       59 DUPCLOSURE                       R8 K26 [PROTO_2]
       60 CAPTURE                          VAL R2
       61 SETTABLEKS                       R8 R7 K27 ["render"]
       63 DUPCLOSURE                       R8 K28 [PROTO_3]
       64 SETTABLEKS                       R8 R7 K29 ["didMount"]
       66 DUPCLOSURE                       R8 K30 [PROTO_4]
       67 SETTABLEKS                       R8 R7 K31 ["didUpdate"]
       69 MOVE                             R8 R5
       70 DUPTABLE                         R9 K32 [{"Stylizer"}]
       71 SETTABLEKS                       R6 R9 K13 ["Stylizer"]
       73 CALL                             R8 1 1
       74 MOVE                             R9 R7
       75 CALL                             R8 1 1
       76 MOVE                             R7 R8
       77 RETURN                           R7 1
