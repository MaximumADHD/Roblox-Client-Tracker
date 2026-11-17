PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["mostRecentRequestedImage"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 DUPTABLE                         R3 K3 [{["currentImageLoaded"] = False}]
        8 NAMECALL                         R1 R1 K4 ["setState"]
       10 CALL                             R1 2 0
       11 GETUPVAL                         R1 0
       12 SETTABLEKS                       R0 R1 K0 ["mostRecentRequestedImage"]
       14 JUMPIFEQKNIL                     R0 ; [+10]
       16 JUMPIFEQKS                       R0 K5 [""] ; [+8]
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R1 R1 K6 ["ImageLoader"]
       21 MOVE                             R3 R0
       22 NAMECALL                         R1 R1 K7 ["loadImage"]
       24 CALL                             R1 2 0
       25 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isMounted"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["mostRecentRequestedImage"]
        8 JUMPIFNOTEQ                      R0 R1 ; [+6]
       10 GETUPVAL                         R1 0
       11 DUPTABLE                         R3 K4 [{["currentImageLoaded"] = True}]
       12 NAMECALL                         R1 R1 K5 ["setState"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 DUPTABLE                         R2 K3 [{["currentImageLoaded"] = False}]
        3 SETTABLEKS                       R2 R0 K4 ["state"]
        5 LOADNIL                          R2
        6 SETTABLEKS                       R2 R0 K5 ["mostRecentRequestedImage"]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 SETTABLEKS                       R2 R0 K6 ["requestLoadImage"]
       13 NEWCLOSURE                       R2 P1
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R2 R0 K7 ["onImageLoaded"]
       17 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 LOADB                            R2 1
        3 SETTABLEKS                       R2 R0 K1 ["isMounted"]
        5 GETTABLEKS                       R2 R1 K2 ["ImageLoader"]
        7 GETTABLEKS                       R2 R2 K3 ["ImageLoaded"]
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
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R2 R2 K2 ["currentImageLoaded"]
        6 JUMPIFNOT                        R2 ; [+36]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K3 ["join"]
       10 MOVE                             R4 R1
       11 DUPTABLE                         R5 K13 [{["Size"], ["LayoutOrder"] = 2, ["AnchorPoint"], ["Position"], ["ZIndex"], ["ImageTransparency"] = 0.5, ["ImageLoader"]}]
       12 GETIMPORT                        R6 K16 [UDim2.new]
       14 LOADN                            R7 1
       15 LOADN                            R8 0
       16 LOADN                            R9 1
       17 LOADN                            R10 0
       18 CALL                             R6 4 1
       19 SETTABLEKS                       R6 R5 K4 ["Size"]
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R6 R6 K17 ["None"]
       24 SETTABLEKS                       R6 R5 K7 ["AnchorPoint"]
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K17 ["None"]
       29 SETTABLEKS                       R6 R5 K8 ["Position"]
       31 GETUPVAL                         R6 0
       32 GETTABLEKS                       R6 R6 K17 ["None"]
       34 SETTABLEKS                       R6 R5 K9 ["ZIndex"]
       36 GETUPVAL                         R6 0
       37 GETTABLEKS                       R6 R6 K17 ["None"]
       39 SETTABLEKS                       R6 R5 K12 ["ImageLoader"]
       41 CALL                             R3 2 1
       42 JUMPIF                           R3 ; [+2]
       43 NEWTABLE                         R3 0 0
       45 GETUPVAL                         R4 1
       46 GETTABLEKS                       R4 R4 K18 ["createElement"]
       48 LOADK                            R5 K19 ["Frame"]
       49 DUPTABLE                         R6 K22 [{["LayoutOrder"], ["AnchorPoint"], ["Position"], ["Size"], ["ZIndex"], ["BackgroundTransparency"] = 1}]
       50 GETTABLEKS                       R7 R1 K5 ["LayoutOrder"]
       52 SETTABLEKS                       R7 R6 K5 ["LayoutOrder"]
       54 GETTABLEKS                       R7 R1 K7 ["AnchorPoint"]
       56 SETTABLEKS                       R7 R6 K7 ["AnchorPoint"]
       58 GETTABLEKS                       R7 R1 K8 ["Position"]
       60 SETTABLEKS                       R7 R6 K8 ["Position"]
       62 GETTABLEKS                       R7 R1 K4 ["Size"]
       64 SETTABLEKS                       R7 R6 K4 ["Size"]
       66 GETTABLEKS                       R7 R1 K9 ["ZIndex"]
       68 SETTABLEKS                       R7 R6 K9 ["ZIndex"]
       70 DUPTABLE                         R7 K25 [{"Image", "LoadingSpinner"}]
       71 MOVE                             R8 R2
       72 JUMPIFNOT                        R8 ; [+6]
       73 GETUPVAL                         R8 1
       74 GETTABLEKS                       R8 R8 K18 ["createElement"]
       76 LOADK                            R9 K26 ["ImageLabel"]
       77 MOVE                             R10 R3
       78 CALL                             R8 2 1
       79 SETTABLEKS                       R8 R7 K23 ["Image"]
       81 JUMPIF                           R2 ; [+30]
       82 GETUPVAL                         R8 1
       83 GETTABLEKS                       R8 R8 K18 ["createElement"]
       85 GETUPVAL                         R9 2
       86 DUPTABLE                         R10 K27 [{["LayoutOrder"] = 1, ["AnchorPoint"], ["Position"], ["Size"]}]
       87 GETIMPORT                        R11 K29 [Vector2.new]
       89 LOADK                            R12 K11 [0.5]
       90 LOADK                            R13 K11 [0.5]
       91 CALL                             R11 2 1
       92 SETTABLEKS                       R11 R10 K7 ["AnchorPoint"]
       94 GETIMPORT                        R11 K16 [UDim2.new]
       96 LOADK                            R12 K11 [0.5]
       97 LOADN                            R13 0
       98 LOADK                            R14 K11 [0.5]
       99 LOADN                            R15 0
      100 CALL                             R11 4 1
      101 SETTABLEKS                       R11 R10 K8 ["Position"]
      103 GETIMPORT                        R11 K31 [UDim2.fromScale]
      105 LOADK                            R12 K11 [0.5]
      106 LOADK                            R13 K11 [0.5]
      107 CALL                             R11 2 1
      108 SETTABLEKS                       R11 R10 K4 ["Size"]
      110 CALL                             R8 2 1
      111 JUMP                             ; [+1]
      112 LOADNIL                          R8
      113 SETTABLEKS                       R8 R7 K24 ["LoadingSpinner"]
      115 CALL                             R4 3 -1
      116 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Roact"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R1 K8 ["Dash"]
       25 GETTABLEKS                       R4 R1 K9 ["ContextServices"]
       27 GETTABLEKS                       R5 R4 K10 ["withContext"]
       29 GETTABLEKS                       R6 R1 K11 ["UI"]
       31 GETTABLEKS                       R7 R6 K12 ["LoadingIndicator"]
       33 GETIMPORT                        R8 K4 [require]
       35 GETTABLEKS                       R9 R0 K13 ["Src"]
       37 GETTABLEKS                       R9 R9 K14 ["Controllers"]
       39 GETTABLEKS                       R9 R9 K15 ["ImageLoader"]
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
