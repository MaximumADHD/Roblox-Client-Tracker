PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Enabled"]
        2 GETTABLEKS                       R2 R0 K1 ["Theme"]
        4 GETTABLEKS                       R3 R2 K2 ["ThumbnailHoverBar"]
        6 GETTABLEKS                       R4 R3 K3 ["Padding"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["createElement"]
       11 LOADK                            R6 K5 ["Frame"]
       12 DUPTABLE                         R7 K15 [{["Visible"], ["BackgroundTransparency"] = 0.3, ["BorderSizePixel"] = 0, ["BackgroundColor3"], ["Size"], ["Position"], ["AnchorPoint"]}]
       13 SETTABLEKS                       R1 R7 K6 ["Visible"]
       15 GETTABLEKS                       R8 R2 K16 ["Colors"]
       17 GETTABLEKS                       R8 R8 K17 ["Black"]
       19 SETTABLEKS                       R8 R7 K11 ["BackgroundColor3"]
       21 GETIMPORT                        R8 K20 [UDim2.new]
       23 LOADN                            R9 1
       24 LOADN                            R10 0
       25 LOADN                            R11 0
       26 LOADN                            R12 40
       27 CALL                             R8 4 1
       28 SETTABLEKS                       R8 R7 K12 ["Size"]
       30 GETIMPORT                        R8 K20 [UDim2.new]
       32 LOADN                            R9 0
       33 LOADN                            R10 0
       34 LOADN                            R11 1
       35 LOADN                            R12 0
       36 CALL                             R8 4 1
       37 SETTABLEKS                       R8 R7 K13 ["Position"]
       39 GETIMPORT                        R8 K22 [Vector2.new]
       41 LOADN                            R9 0
       42 LOADN                            R10 1
       43 CALL                             R8 2 1
       44 SETTABLEKS                       R8 R7 K14 ["AnchorPoint"]
       46 DUPTABLE                         R8 K25 [{"Padding", "Zoom", "Delete"}]
       47 GETUPVAL                         R9 0
       48 GETTABLEKS                       R9 R9 K4 ["createElement"]
       50 LOADK                            R10 K26 ["UIPadding"]
       51 DUPTABLE                         R11 K31 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       52 SETTABLEKS                       R4 R11 K27 ["PaddingTop"]
       54 SETTABLEKS                       R4 R11 K28 ["PaddingBottom"]
       56 SETTABLEKS                       R4 R11 K29 ["PaddingLeft"]
       58 SETTABLEKS                       R4 R11 K30 ["PaddingRight"]
       60 CALL                             R9 2 1
       61 SETTABLEKS                       R9 R8 K3 ["Padding"]
       63 GETUPVAL                         R9 0
       64 GETTABLEKS                       R9 R9 K4 ["createElement"]
       66 GETUPVAL                         R10 1
       67 DUPTABLE                         R11 K34 [{"Position", "AnchorPoint", "Image", "ButtonPressed", "Theme"}]
       68 GETIMPORT                        R12 K20 [UDim2.new]
       70 LOADN                            R13 0
       71 LOADN                            R14 0
       72 LOADK                            R15 K35 [0.5]
       73 LOADN                            R16 0
       74 CALL                             R12 4 1
       75 SETTABLEKS                       R12 R11 K13 ["Position"]
       77 GETIMPORT                        R12 K22 [Vector2.new]
       79 LOADN                            R13 0
       80 LOADK                            R14 K35 [0.5]
       81 CALL                             R12 2 1
       82 SETTABLEKS                       R12 R11 K14 ["AnchorPoint"]
       84 GETTABLEKS                       R12 R3 K36 ["ZoomImage"]
       86 SETTABLEKS                       R12 R11 K32 ["Image"]
       88 GETTABLEKS                       R12 R0 K37 ["PromptPreviewThumbnail"]
       90 SETTABLEKS                       R12 R11 K33 ["ButtonPressed"]
       92 SETTABLEKS                       R2 R11 K1 ["Theme"]
       94 CALL                             R9 2 1
       95 SETTABLEKS                       R9 R8 K23 ["Zoom"]
       97 GETUPVAL                         R9 0
       98 GETTABLEKS                       R9 R9 K4 ["createElement"]
      100 GETUPVAL                         R10 1
      101 DUPTABLE                         R11 K34 [{"Position", "AnchorPoint", "Image", "ButtonPressed", "Theme"}]
      102 GETIMPORT                        R12 K20 [UDim2.new]
      104 LOADN                            R13 1
      105 LOADN                            R14 0
      106 LOADK                            R15 K35 [0.5]
      107 LOADN                            R16 0
      108 CALL                             R12 4 1
      109 SETTABLEKS                       R12 R11 K13 ["Position"]
      111 GETIMPORT                        R12 K22 [Vector2.new]
      113 LOADN                            R13 1
      114 LOADK                            R14 K35 [0.5]
      115 CALL                             R12 2 1
      116 SETTABLEKS                       R12 R11 K14 ["AnchorPoint"]
      118 GETTABLEKS                       R12 R3 K38 ["DeleteImage"]
      120 SETTABLEKS                       R12 R11 K32 ["Image"]
      122 GETTABLEKS                       R12 R0 K39 ["PromptDeleteThumbnail"]
      124 SETTABLEKS                       R12 R11 K33 ["ButtonPressed"]
      126 SETTABLEKS                       R2 R11 K1 ["Theme"]
      128 CALL                             R9 2 1
      129 SETTABLEKS                       R9 R8 K24 ["Delete"]
      131 CALL                             R5 3 -1
      132 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETIMPORT                        R3 K1 [script]
       20 GETTABLEKS                       R3 R3 K4 ["Parent"]
       22 GETTABLEKS                       R3 R3 K8 ["HoverBarButton"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETIMPORT                        R4 K1 [script]
       29 GETTABLEKS                       R4 R4 K4 ["Parent"]
       31 GETTABLEKS                       R4 R4 K9 ["types"]
       33 CALL                             R3 1 1
       34 DUPCLOSURE                       R4 K10 [PROTO_0]
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R2
       37 RETURN                           R4 1
