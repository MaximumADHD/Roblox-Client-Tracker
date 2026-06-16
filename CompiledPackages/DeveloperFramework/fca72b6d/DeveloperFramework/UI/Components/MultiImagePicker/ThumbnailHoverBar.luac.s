PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Enabled"]
        2 GETTABLEKS                       R2 R0 K1 ["Theme"]
        4 GETTABLEKS                       R3 R2 K2 ["ThumbnailHoverBar"]
        6 GETTABLEKS                       R4 R3 K3 ["Padding"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["createElement"]
       11 LOADK                            R6 K5 ["Frame"]
       12 DUPTABLE                         R7 K13 [{"Visible", "BackgroundTransparency", "BorderSizePixel", "BackgroundColor3", "Size", "Position", "AnchorPoint"}]
       13 SETTABLEKS                       R1 R7 K6 ["Visible"]
       15 LOADK                            R8 K14 [0.3]
       16 SETTABLEKS                       R8 R7 K7 ["BackgroundTransparency"]
       18 LOADN                            R8 0
       19 SETTABLEKS                       R8 R7 K8 ["BorderSizePixel"]
       21 GETTABLEKS                       R8 R2 K15 ["Colors"]
       23 GETTABLEKS                       R8 R8 K16 ["Black"]
       25 SETTABLEKS                       R8 R7 K9 ["BackgroundColor3"]
       27 GETIMPORT                        R8 K19 [UDim2.new]
       29 LOADN                            R9 1
       30 LOADN                            R10 0
       31 LOADN                            R11 0
       32 LOADN                            R12 40
       33 CALL                             R8 4 1
       34 SETTABLEKS                       R8 R7 K10 ["Size"]
       36 GETIMPORT                        R8 K19 [UDim2.new]
       38 LOADN                            R9 0
       39 LOADN                            R10 0
       40 LOADN                            R11 1
       41 LOADN                            R12 0
       42 CALL                             R8 4 1
       43 SETTABLEKS                       R8 R7 K11 ["Position"]
       45 GETIMPORT                        R8 K21 [Vector2.new]
       47 LOADN                            R9 0
       48 LOADN                            R10 1
       49 CALL                             R8 2 1
       50 SETTABLEKS                       R8 R7 K12 ["AnchorPoint"]
       52 DUPTABLE                         R8 K24 [{"Padding", "Zoom", "Delete"}]
       53 GETUPVAL                         R9 0
       54 GETTABLEKS                       R9 R9 K4 ["createElement"]
       56 LOADK                            R10 K25 ["UIPadding"]
       57 DUPTABLE                         R11 K30 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       58 SETTABLEKS                       R4 R11 K26 ["PaddingTop"]
       60 SETTABLEKS                       R4 R11 K27 ["PaddingBottom"]
       62 SETTABLEKS                       R4 R11 K28 ["PaddingLeft"]
       64 SETTABLEKS                       R4 R11 K29 ["PaddingRight"]
       66 CALL                             R9 2 1
       67 SETTABLEKS                       R9 R8 K3 ["Padding"]
       69 GETUPVAL                         R9 0
       70 GETTABLEKS                       R9 R9 K4 ["createElement"]
       72 GETUPVAL                         R10 1
       73 DUPTABLE                         R11 K33 [{"Position", "AnchorPoint", "Image", "ButtonPressed", "Theme"}]
       74 GETIMPORT                        R12 K19 [UDim2.new]
       76 LOADN                            R13 0
       77 LOADN                            R14 0
       78 LOADK                            R15 K34 [0.5]
       79 LOADN                            R16 0
       80 CALL                             R12 4 1
       81 SETTABLEKS                       R12 R11 K11 ["Position"]
       83 GETIMPORT                        R12 K21 [Vector2.new]
       85 LOADN                            R13 0
       86 LOADK                            R14 K34 [0.5]
       87 CALL                             R12 2 1
       88 SETTABLEKS                       R12 R11 K12 ["AnchorPoint"]
       90 GETTABLEKS                       R12 R3 K35 ["ZoomImage"]
       92 SETTABLEKS                       R12 R11 K31 ["Image"]
       94 GETTABLEKS                       R12 R0 K36 ["PromptPreviewThumbnail"]
       96 SETTABLEKS                       R12 R11 K32 ["ButtonPressed"]
       98 SETTABLEKS                       R2 R11 K1 ["Theme"]
      100 CALL                             R9 2 1
      101 SETTABLEKS                       R9 R8 K22 ["Zoom"]
      103 GETUPVAL                         R9 0
      104 GETTABLEKS                       R9 R9 K4 ["createElement"]
      106 GETUPVAL                         R10 1
      107 DUPTABLE                         R11 K33 [{"Position", "AnchorPoint", "Image", "ButtonPressed", "Theme"}]
      108 GETIMPORT                        R12 K19 [UDim2.new]
      110 LOADN                            R13 1
      111 LOADN                            R14 0
      112 LOADK                            R15 K34 [0.5]
      113 LOADN                            R16 0
      114 CALL                             R12 4 1
      115 SETTABLEKS                       R12 R11 K11 ["Position"]
      117 GETIMPORT                        R12 K21 [Vector2.new]
      119 LOADN                            R13 1
      120 LOADK                            R14 K34 [0.5]
      121 CALL                             R12 2 1
      122 SETTABLEKS                       R12 R11 K12 ["AnchorPoint"]
      124 GETTABLEKS                       R12 R3 K37 ["DeleteImage"]
      126 SETTABLEKS                       R12 R11 K31 ["Image"]
      128 GETTABLEKS                       R12 R0 K38 ["PromptDeleteThumbnail"]
      130 SETTABLEKS                       R12 R11 K32 ["ButtonPressed"]
      132 SETTABLEKS                       R2 R11 K1 ["Theme"]
      134 CALL                             R9 2 1
      135 SETTABLEKS                       R9 R8 K23 ["Delete"]
      137 CALL                             R5 3 -1
      138 RETURN                           R5 -1

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
