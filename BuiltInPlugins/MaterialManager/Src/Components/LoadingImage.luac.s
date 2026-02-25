PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["mostRecentRequestedImage"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 DUPTABLE                         R3 K2 [{"currentImageLoaded"}]
        8 LOADB                            R4 0
        9 SETTABLEKS                       R4 R3 K1 ["currentImageLoaded"]
       11 NAMECALL                         R1 R1 K3 ["setState"]
       13 CALL                             R1 2 0
       14 GETUPVAL                         R1 0
       15 SETTABLEKS                       R0 R1 K0 ["mostRecentRequestedImage"]
       17 JUMPIFEQKNIL                     R0 ; [+10]
       19 JUMPIFEQKS                       R0 K4 [""] ; [+8]
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R1 R2 K5 ["ImageLoader"]
       24 MOVE                             R3 R0
       25 NAMECALL                         R1 R1 K6 ["loadImage"]
       27 CALL                             R1 2 0
       28 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["isMounted"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K1 ["mostRecentRequestedImage"]
        8 JUMPIFNOTEQ                      R0 R1 ; [+9]
       10 GETUPVAL                         R1 0
       11 DUPTABLE                         R3 K3 [{"currentImageLoaded"}]
       12 LOADB                            R4 1
       13 SETTABLEKS                       R4 R3 K2 ["currentImageLoaded"]
       15 NAMECALL                         R1 R1 K4 ["setState"]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 DUPTABLE                         R2 K2 [{"currentImageLoaded"}]
        3 LOADB                            R3 0
        4 SETTABLEKS                       R3 R2 K1 ["currentImageLoaded"]
        6 SETTABLEKS                       R2 R0 K3 ["state"]
        8 LOADNIL                          R2
        9 SETTABLEKS                       R2 R0 K4 ["mostRecentRequestedImage"]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R1
       14 SETTABLEKS                       R2 R0 K5 ["requestLoadImage"]
       16 NEWCLOSURE                       R2 P1
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R2 R0 K6 ["onImageLoaded"]
       20 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 LOADB                            R2 1
        3 SETTABLEKS                       R2 R0 K1 ["isMounted"]
        5 GETTABLEKS                       R3 R1 K2 ["ImageLoader"]
        7 GETTABLEKS                       R2 R3 K3 ["ImageLoaded"]
        9 GETTABLEKS                       R4 R0 K4 ["onImageLoaded"]
       11 NAMECALL                         R2 R2 K5 ["Connect"]
       13 CALL                             R2 2 1
       14 SETTABLEKS                       R2 R0 K6 ["onImageLoaderConnection"]
       16 GETTABLEKS                       R2 R0 K7 ["requestLoadImage"]
       18 GETTABLEKS                       R3 R1 K8 ["Image"]
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["onImageLoaderConnection"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["onImageLoaderConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["onImageLoaderConnection"]
       11 LOADB                            R1 0
       12 SETTABLEKS                       R1 R0 K2 ["isMounted"]
       14 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R1 K1 ["Image"]
        4 GETTABLEKS                       R5 R3 K1 ["Image"]
        6 JUMPIFEQ                         R4 R5 ; [+6]
        8 GETTABLEKS                       R4 R0 K2 ["requestLoadImage"]
       10 GETTABLEKS                       R5 R3 K1 ["Image"]
       12 CALL                             R4 1 0
       13 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R0 K1 ["state"]
        4 GETTABLEKS                       R2 R3 K2 ["currentImageLoaded"]
        6 JUMPIFNOT                        R2 ; [+42]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K3 ["join"]
       10 MOVE                             R4 R1
       11 DUPTABLE                         R5 K11 [{"Size", "LayoutOrder", "AnchorPoint", "Position", "ZIndex", "ImageTransparency", "ImageLoader"}]
       12 GETIMPORT                        R6 K14 [UDim2.new]
       14 LOADN                            R7 1
       15 LOADN                            R8 0
       16 LOADN                            R9 1
       17 LOADN                            R10 0
       18 CALL                             R6 4 1
       19 SETTABLEKS                       R6 R5 K4 ["Size"]
       21 LOADN                            R6 2
       22 SETTABLEKS                       R6 R5 K5 ["LayoutOrder"]
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R6 R7 K15 ["None"]
       27 SETTABLEKS                       R6 R5 K6 ["AnchorPoint"]
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R6 R7 K15 ["None"]
       32 SETTABLEKS                       R6 R5 K7 ["Position"]
       34 GETUPVAL                         R7 0
       35 GETTABLEKS                       R6 R7 K15 ["None"]
       37 SETTABLEKS                       R6 R5 K8 ["ZIndex"]
       39 LOADK                            R6 K16 [0.5]
       40 SETTABLEKS                       R6 R5 K9 ["ImageTransparency"]
       42 GETUPVAL                         R7 0
       43 GETTABLEKS                       R6 R7 K15 ["None"]
       45 SETTABLEKS                       R6 R5 K10 ["ImageLoader"]
       47 CALL                             R3 2 1
       48 JUMPIF                           R3 ; [+2]
       49 NEWTABLE                         R3 0 0
       51 GETUPVAL                         R5 1
       52 GETTABLEKS                       R4 R5 K17 ["createElement"]
       54 LOADK                            R5 K18 ["Frame"]
       55 DUPTABLE                         R6 K20 [{"LayoutOrder", "AnchorPoint", "Position", "Size", "ZIndex", "BackgroundTransparency"}]
       56 GETTABLEKS                       R7 R1 K5 ["LayoutOrder"]
       58 SETTABLEKS                       R7 R6 K5 ["LayoutOrder"]
       60 GETTABLEKS                       R7 R1 K6 ["AnchorPoint"]
       62 SETTABLEKS                       R7 R6 K6 ["AnchorPoint"]
       64 GETTABLEKS                       R7 R1 K7 ["Position"]
       66 SETTABLEKS                       R7 R6 K7 ["Position"]
       68 GETTABLEKS                       R7 R1 K4 ["Size"]
       70 SETTABLEKS                       R7 R6 K4 ["Size"]
       72 GETTABLEKS                       R7 R1 K8 ["ZIndex"]
       74 SETTABLEKS                       R7 R6 K8 ["ZIndex"]
       76 LOADN                            R7 1
       77 SETTABLEKS                       R7 R6 K19 ["BackgroundTransparency"]
       79 DUPTABLE                         R7 K23 [{"Image", "LoadingSpinner"}]
       80 MOVE                             R8 R2
       81 JUMPIFNOT                        R8 ; [+6]
       82 GETUPVAL                         R9 1
       83 GETTABLEKS                       R8 R9 K17 ["createElement"]
       85 LOADK                            R9 K24 ["ImageLabel"]
       86 MOVE                             R10 R3
       87 CALL                             R8 2 1
       88 SETTABLEKS                       R8 R7 K21 ["Image"]
       90 JUMPIF                           R2 ; [+33]
       91 GETUPVAL                         R9 1
       92 GETTABLEKS                       R8 R9 K17 ["createElement"]
       94 GETUPVAL                         R9 2
       95 DUPTABLE                         R10 K25 [{"LayoutOrder", "AnchorPoint", "Position", "Size"}]
       96 LOADN                            R11 1
       97 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
       99 GETIMPORT                        R11 K27 [Vector2.new]
      101 LOADK                            R12 K16 [0.5]
      102 LOADK                            R13 K16 [0.5]
      103 CALL                             R11 2 1
      104 SETTABLEKS                       R11 R10 K6 ["AnchorPoint"]
      106 GETIMPORT                        R11 K14 [UDim2.new]
      108 LOADK                            R12 K16 [0.5]
      109 LOADN                            R13 0
      110 LOADK                            R14 K16 [0.5]
      111 LOADN                            R15 0
      112 CALL                             R11 4 1
      113 SETTABLEKS                       R11 R10 K7 ["Position"]
      115 GETIMPORT                        R11 K29 [UDim2.fromScale]
      117 LOADK                            R12 K16 [0.5]
      118 LOADK                            R13 K16 [0.5]
      119 CALL                             R11 2 1
      120 SETTABLEKS                       R11 R10 K4 ["Size"]
      122 CALL                             R8 2 1
      123 JUMP                             ; [+1]
      124 LOADNIL                          R8
      125 SETTABLEKS                       R8 R7 K22 ["LoadingSpinner"]
      127 CALL                             R4 3 -1
      128 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Roact"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R1 K8 ["Dash"]
       25 GETTABLEKS                       R4 R1 K9 ["ContextServices"]
       27 GETTABLEKS                       R5 R4 K10 ["withContext"]
       29 GETTABLEKS                       R6 R1 K11 ["UI"]
       31 GETTABLEKS                       R7 R6 K12 ["LoadingIndicator"]
       33 GETIMPORT                        R8 K4 [require]
       35 GETTABLEKS                       R11 R0 K13 ["Src"]
       37 GETTABLEKS                       R10 R11 K14 ["Controllers"]
       39 GETTABLEKS                       R9 R10 K15 ["ImageLoader"]
       41 CALL                             R8 1 1
       42 GETTABLEKS                       R9 R2 K16 ["PureComponent"]
       44 LOADK                            R11 K17 ["LoadingImage"]
       45 NAMECALL                         R9 R9 K18 ["extend"]
       47 CALL                             R9 2 1
       48 DUPCLOSURE                       R10 K19 [PROTO_2]
       49 SETTABLEKS                       R10 R9 K20 ["init"]
       51 DUPCLOSURE                       R10 K21 [PROTO_3]
       52 SETTABLEKS                       R10 R9 K22 ["didMount"]
       54 DUPCLOSURE                       R10 K23 [PROTO_4]
       55 SETTABLEKS                       R10 R9 K24 ["willUnmount"]
       57 DUPCLOSURE                       R10 K25 [PROTO_5]
       58 SETTABLEKS                       R10 R9 K26 ["didUpdate"]
       60 DUPCLOSURE                       R10 K27 [PROTO_6]
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R7
       64 SETTABLEKS                       R10 R9 K28 ["render"]
       66 MOVE                             R10 R5
       67 DUPTABLE                         R11 K29 [{"ImageLoader"}]
       68 SETTABLEKS                       R8 R11 K15 ["ImageLoader"]
       70 CALL                             R10 1 1
       71 MOVE                             R11 R9
       72 CALL                             R10 1 1
       73 MOVE                             R9 R10
       74 RETURN                           R9 1
