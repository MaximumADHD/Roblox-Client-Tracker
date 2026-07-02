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
       17 DUPTABLE                         R6 K8 [{["BackgroundTransparency"] = 1, ["ZIndex"], ["Position"]}]
       18 GETTABLEKS                       R7 R1 K2 ["ZIndex"]
       20 SETTABLEKS                       R7 R6 K2 ["ZIndex"]
       22 GETTABLEKS                       R7 R1 K7 ["Position"]
       24 SETTABLEKS                       R7 R6 K7 ["Position"]
       26 DUPTABLE                         R7 K11 [{"Foreground", "Background"}]
       27 GETUPVAL                         R8 0
       28 GETTABLEKS                       R8 R8 K3 ["createElement"]
       30 LOADK                            R9 K4 ["Frame"]
       31 DUPTABLE                         R10 K13 [{["BackgroundTransparency"] = 1, ["Size"], ["ZIndex"]}]
       32 GETIMPORT                        R11 K16 [UDim2.fromScale]
       34 LOADN                            R12 1
       35 LOADN                            R13 1
       36 CALL                             R11 2 1
       37 SETTABLEKS                       R11 R10 K12 ["Size"]
       39 SETTABLEKS                       R3 R10 K2 ["ZIndex"]
       41 DUPTABLE                         R11 K18 [{"ForegroundLine"}]
       42 GETUPVAL                         R12 0
       43 GETTABLEKS                       R12 R12 K3 ["createElement"]
       45 LOADK                            R13 K19 ["Path2D"]
       46 DUPTABLE                         R14 K24 [{"Color3", "Thickness", "ref", "Transparency"}]
       47 GETTABLEKS                       R15 R1 K25 ["Color"]
       49 JUMPIF                           R15 ; [+2]
       50 GETTABLEKS                       R15 R2 K25 ["Color"]
       52 SETTABLEKS                       R15 R14 K20 ["Color3"]
       54 GETTABLEKS                       R15 R1 K21 ["Thickness"]
       56 JUMPIF                           R15 ; [+2]
       57 GETTABLEKS                       R15 R2 K21 ["Thickness"]
       59 SETTABLEKS                       R15 R14 K21 ["Thickness"]
       61 GETTABLEKS                       R16 R0 K26 ["pathRefs"]
       63 GETTABLEN                        R15 R16 1
       64 SETTABLEKS                       R15 R14 K22 ["ref"]
       66 GETTABLEKS                       R15 R2 K23 ["Transparency"]
       68 JUMPIF                           R15 ; [+2]
       69 GETTABLEKS                       R15 R1 K23 ["Transparency"]
       71 SETTABLEKS                       R15 R14 K23 ["Transparency"]
       73 CALL                             R12 2 1
       74 SETTABLEKS                       R12 R11 K17 ["ForegroundLine"]
       76 CALL                             R8 3 1
       77 SETTABLEKS                       R8 R7 K9 ["Foreground"]
       79 GETUPVAL                         R8 0
       80 GETTABLEKS                       R8 R8 K3 ["createElement"]
       82 LOADK                            R9 K4 ["Frame"]
       83 DUPTABLE                         R10 K13 [{["BackgroundTransparency"] = 1, ["Size"], ["ZIndex"]}]
       84 GETIMPORT                        R11 K16 [UDim2.fromScale]
       86 LOADN                            R12 1
       87 LOADN                            R13 1
       88 CALL                             R11 2 1
       89 SETTABLEKS                       R11 R10 K12 ["Size"]
       91 SUBK                             R11 R3 K6 [1]
       92 SETTABLEKS                       R11 R10 K2 ["ZIndex"]
       94 DUPTABLE                         R11 K28 [{"ContrastPath"}]
       95 GETTABLEKS                       R12 R2 K29 ["ContrastColor"]
       97 JUMPIFNOT                        R12 ; [+30]
       98 GETUPVAL                         R12 0
       99 GETTABLEKS                       R12 R12 K3 ["createElement"]
      101 LOADK                            R13 K19 ["Path2D"]
      102 DUPTABLE                         R14 K24 [{"Color3", "Thickness", "ref", "Transparency"}]
      103 GETTABLEKS                       R15 R2 K29 ["ContrastColor"]
      105 SETTABLEKS                       R15 R14 K20 ["Color3"]
      107 GETTABLEKS                       R16 R1 K21 ["Thickness"]
      109 JUMPIF                           R16 ; [+2]
      110 GETTABLEKS                       R16 R2 K21 ["Thickness"]
      112 ADDK                             R15 R16 K6 [1]
      113 SETTABLEKS                       R15 R14 K21 ["Thickness"]
      115 GETTABLEKS                       R16 R0 K26 ["pathRefs"]
      117 GETTABLEN                        R15 R16 2
      118 SETTABLEKS                       R15 R14 K22 ["ref"]
      120 GETTABLEKS                       R15 R2 K23 ["Transparency"]
      122 JUMPIF                           R15 ; [+2]
      123 GETTABLEKS                       R15 R1 K23 ["Transparency"]
      125 SETTABLEKS                       R15 R14 K23 ["Transparency"]
      127 CALL                             R12 2 1
      128 SETTABLEKS                       R12 R11 K27 ["ContrastPath"]
      130 CALL                             R8 3 1
      131 SETTABLEKS                       R8 R7 K10 ["Background"]
      133 CALL                             R4 3 -1
      134 RETURN                           R4 -1

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
       44 DUPTABLE                         R8 K20 [{["Position"], ["Transparency"] = 0}]
       45 GETIMPORT                        R9 K23 [UDim2.new]
       47 CALL                             R9 0 1
       48 SETTABLEKS                       R9 R8 K17 ["Position"]
       50 SETTABLEKS                       R8 R7 K24 ["defaultProps"]
       52 DUPCLOSURE                       R8 K25 [PROTO_1]
       53 CAPTURE                          VAL R2
       54 SETTABLEKS                       R8 R7 K26 ["init"]
       56 DUPCLOSURE                       R8 K27 [PROTO_2]
       57 CAPTURE                          VAL R2
       58 SETTABLEKS                       R8 R7 K28 ["render"]
       60 DUPCLOSURE                       R8 K29 [PROTO_3]
       61 SETTABLEKS                       R8 R7 K30 ["didMount"]
       63 DUPCLOSURE                       R8 K31 [PROTO_4]
       64 SETTABLEKS                       R8 R7 K32 ["didUpdate"]
       66 MOVE                             R8 R5
       67 DUPTABLE                         R9 K33 [{"Stylizer"}]
       68 SETTABLEKS                       R6 R9 K13 ["Stylizer"]
       70 CALL                             R8 1 1
       71 MOVE                             R9 R7
       72 CALL                             R8 1 1
       73 MOVE                             R7 R8
       74 RETURN                           R7 1
