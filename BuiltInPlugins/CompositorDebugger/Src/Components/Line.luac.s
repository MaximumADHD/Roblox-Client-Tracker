PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["From"]
        4 GETTABLEKS                       R3 R1 K2 ["To"]
        6 GETTABLEKS                       R4 R2 K3 ["X"]
        8 GETTABLEKS                       R5 R3 K3 ["X"]
       10 JUMPIFNOTLT                      R5 R4 ; [+4]
       12 MOVE                             R4 R3
       13 MOVE                             R3 R2
       14 MOVE                             R2 R4
       15 GETIMPORT                        R4 K6 [UDim2.new]
       17 LOADN                            R5 0
       18 GETTABLEKS                       R8 R2 K3 ["X"]
       20 GETTABLEKS                       R9 R3 K3 ["X"]
       22 ADD                              R7 R8 R9
       23 DIVK                             R6 R7 K7 [2]
       24 LOADN                            R7 0
       25 GETTABLEKS                       R10 R2 K8 ["Y"]
       27 GETTABLEKS                       R11 R3 K8 ["Y"]
       29 ADD                              R9 R10 R11
       30 DIVK                             R8 R9 K7 [2]
       31 CALL                             R4 4 1
       32 GETTABLEKS                       R9 R3 K3 ["X"]
       34 GETTABLEKS                       R10 R2 K3 ["X"]
       36 SUB                              R8 R9 R10
       37 GETTABLEKS                       R10 R3 K3 ["X"]
       39 GETTABLEKS                       R11 R2 K3 ["X"]
       41 SUB                              R9 R10 R11
       42 MUL                              R7 R8 R9
       43 GETTABLEKS                       R10 R3 K8 ["Y"]
       45 GETTABLEKS                       R11 R2 K8 ["Y"]
       47 SUB                              R9 R10 R11
       48 GETTABLEKS                       R11 R3 K8 ["Y"]
       50 GETTABLEKS                       R12 R2 K8 ["Y"]
       52 SUB                              R10 R11 R12
       53 MUL                              R8 R9 R10
       54 ADD                              R6 R7 R8
       55 FASTCALL1                        MATH_SQRT R6 ; [+2]
       56 GETIMPORT                        R5 K11 [math.sqrt]
       58 CALL                             R5 1 1
       59 GETIMPORT                        R6 K6 [UDim2.new]
       61 LOADN                            R7 0
       62 ADDK                             R8 R5 K12 [1]
       63 LOADN                            R9 0
       64 GETTABLEKS                       R11 R1 K13 ["Width"]
       66 ORK                              R10 R11 K12 [1]
       67 CALL                             R6 4 1
       68 GETTABLEKS                       R9 R3 K8 ["Y"]
       70 GETTABLEKS                       R10 R2 K8 ["Y"]
       72 SUB                              R8 R9 R10
       73 GETTABLEKS                       R10 R3 K3 ["X"]
       75 GETTABLEKS                       R11 R2 K3 ["X"]
       77 SUB                              R9 R10 R11
       78 FASTCALL2                        MATH_ATAN2 R8 R9 ; [+3]
       80 GETIMPORT                        R7 K15 [math.atan2]
       82 CALL                             R7 2 1
       83 GETUPVAL                         R9 0
       84 GETTABLEKS                       R8 R9 K16 ["createElement"]
       86 LOADK                            R9 K17 ["Frame"]
       87 NEWTABLE                         R10 8 0
       89 SETTABLEKS                       R4 R10 K18 ["Position"]
       91 SETTABLEKS                       R6 R10 K19 ["Size"]
       93 GETIMPORT                        R11 K21 [Vector2.new]
       95 LOADK                            R12 K22 [0.5]
       96 LOADK                            R13 K22 [0.5]
       97 CALL                             R11 2 1
       98 SETTABLEKS                       R11 R10 K23 ["AnchorPoint"]
      100 GETTABLEKS                       R11 R1 K24 ["Transparency"]
      102 SETTABLEKS                       R11 R10 K25 ["BackgroundTransparency"]
      104 LOADN                            R11 0
      105 SETTABLEKS                       R11 R10 K26 ["BorderSizePixel"]
      107 FASTCALL1                        MATH_DEG R7 ; [+3]
      108 MOVE                             R12 R7
      109 GETIMPORT                        R11 K28 [math.deg]
      111 CALL                             R11 1 1
      112 SETTABLEKS                       R11 R10 K29 ["Rotation"]
      114 GETTABLEKS                       R11 R1 K30 ["ZIndex"]
      116 SETTABLEKS                       R11 R10 K30 ["ZIndex"]
      118 GETUPVAL                         R12 0
      119 GETTABLEKS                       R11 R12 K31 ["Tag"]
      121 GETUPVAL                         R14 0
      122 GETTABLEKS                       R13 R14 K31 ["Tag"]
      124 GETTABLE                         R12 R1 R13
      125 SETTABLE                         R12 R10 R11
      126 CALL                             R8 2 -1
      127 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["PureComponent"]
       16 LOADK                            R4 K9 ["Line"]
       17 NAMECALL                         R2 R2 K10 ["extend"]
       19 CALL                             R2 2 1
       20 DUPCLOSURE                       R3 K11 [PROTO_0]
       21 CAPTURE                          VAL R1
       22 SETTABLEKS                       R3 R2 K12 ["render"]
       24 RETURN                           R2 1
