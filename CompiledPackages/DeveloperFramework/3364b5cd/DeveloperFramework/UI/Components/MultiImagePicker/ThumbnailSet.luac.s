PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Theme"]
        4 GETTABLEKS                       R3 R2 K2 ["ThumbnailSet"]
        6 GETTABLEKS                       R4 R1 K3 ["Thumbnails"]
        8 JUMPIF                           R4 ; [+2]
        9 NEWTABLE                         R4 0 0
       11 GETTABLEKS                       R5 R1 K4 ["Order"]
       13 JUMPIF                           R5 ; [+2]
       14 NEWTABLE                         R5 0 0
       16 GETTABLEKS                       R6 R1 K5 ["Enabled"]
       18 GETTABLEKS                       R7 R1 K6 ["HoverBarsEnabled"]
       20 GETTABLEKS                       R8 R1 K7 ["ThumbnailSize"]
       22 NEWTABLE                         R9 4 0
       24 JUMPIFNOT                        R6 ; [+135]
       25 GETIMPORT                        R10 K9 [pairs]
       27 MOVE                             R11 R4
       28 CALL                             R10 1 3
       29 FORGPREP_NEXT                    R10
       30 GETTABLEKS                       R15 R14 K10 ["id"]
       32 JUMPIFNOTEQKS                    R15 K11 ["DragDestination"] ; [+22]
       34 GETUPVAL                         R16 0
       35 GETTABLEKS                       R15 R16 K12 ["createElement"]
       37 GETUPVAL                         R16 1
       38 DUPTABLE                         R17 K14 [{"LayoutOrder", "Theme"}]
       39 GETUPVAL                         R20 2
       40 GETTABLEKS                       R19 R20 K15 ["List"]
       42 GETTABLEKS                       R18 R19 K16 ["find"]
       44 MOVE                             R19 R5
       45 MOVE                             R20 R13
       46 CALL                             R18 2 1
       47 SETTABLEKS                       R18 R17 K13 ["LayoutOrder"]
       49 SETTABLEKS                       R2 R17 K1 ["Theme"]
       51 CALL                             R15 2 1
       52 SETTABLEKS                       R15 R9 K11 ["DragDestination"]
       54 JUMP                             ; [+85]
       55 LOADNIL                          R15
       56 GETTABLEKS                       R16 R14 K17 ["videoHash"]
       58 JUMPIF                           R16 ; [+13]
       59 GETTABLEKS                       R16 R14 K18 ["imageId"]
       61 JUMPIFNOT                        R16 ; [+5]
       62 LOADK                            R16 K19 ["rbxassetid://"]
       63 GETTABLEKS                       R17 R14 K18 ["imageId"]
       65 CONCAT                           R15 R16 R17
       66 JUMP                             ; [+5]
       67 GETTABLEKS                       R16 R14 K20 ["tempId"]
       69 JUMPIFNOT                        R16 ; [+2]
       70 GETTABLEKS                       R15 R14 K20 ["tempId"]
       72 FASTCALL1                        TOSTRING R13 ; [+3]
       73 MOVE                             R17 R13
       74 GETIMPORT                        R16 K22 [tostring]
       76 CALL                             R16 1 1
       77 GETUPVAL                         R18 0
       78 GETTABLEKS                       R17 R18 K12 ["createElement"]
       80 GETUPVAL                         R18 3
       81 DUPTABLE                         R19 K35 [{"HoverBarEnabled", "Id", "Image", "LayoutOrder", "Preview", "InReview", "IsModerated", "VideoHash", "VideoTitle", "StartDragging", "DragMove", "PromptDeleteThumbnail", "PromptPreviewThumbnail", "Theme"}]
       82 SETTABLEKS                       R7 R19 K23 ["HoverBarEnabled"]
       84 SETTABLEKS                       R13 R19 K24 ["Id"]
       86 SETTABLEKS                       R15 R19 K25 ["Image"]
       88 GETUPVAL                         R22 2
       89 GETTABLEKS                       R21 R22 K15 ["List"]
       91 GETTABLEKS                       R20 R21 K16 ["find"]
       93 MOVE                             R21 R5
       94 MOVE                             R22 R13
       95 CALL                             R20 2 1
       96 SETTABLEKS                       R20 R19 K13 ["LayoutOrder"]
       98 GETTABLEKS                       R20 R14 K20 ["tempId"]
      100 SETTABLEKS                       R20 R19 K26 ["Preview"]
      102 GETTABLEKS                       R21 R14 K36 ["approved"]
      104 NOT                              R20 R21
      105 SETTABLEKS                       R20 R19 K27 ["InReview"]
      107 GETTABLEKS                       R20 R14 K37 ["isModerated"]
      109 SETTABLEKS                       R20 R19 K28 ["IsModerated"]
      111 GETTABLEKS                       R21 R14 K17 ["videoHash"]
      113 ORK                              R20 R21 K38 []
      114 SETTABLEKS                       R20 R19 K29 ["VideoHash"]
      116 GETTABLEKS                       R20 R14 K39 ["videoTitle"]
      118 SETTABLEKS                       R20 R19 K30 ["VideoTitle"]
      120 GETTABLEKS                       R20 R1 K31 ["StartDragging"]
      122 SETTABLEKS                       R20 R19 K31 ["StartDragging"]
      124 GETTABLEKS                       R20 R1 K32 ["DragMove"]
      126 SETTABLEKS                       R20 R19 K32 ["DragMove"]
      128 GETTABLEKS                       R20 R1 K33 ["PromptDeleteThumbnail"]
      130 SETTABLEKS                       R20 R19 K33 ["PromptDeleteThumbnail"]
      132 GETTABLEKS                       R20 R1 K34 ["PromptPreviewThumbnail"]
      134 SETTABLEKS                       R20 R19 K34 ["PromptPreviewThumbnail"]
      136 SETTABLEKS                       R2 R19 K1 ["Theme"]
      138 CALL                             R17 2 1
      139 SETTABLE                         R17 R9 R16
      140 FORGLOOP                         R10 2 ; [-111]
      142 GETUPVAL                         R11 0
      143 GETTABLEKS                       R10 R11 K12 ["createElement"]
      145 GETUPVAL                         R11 4
      146 DUPTABLE                         R12 K41 [{"LayoutOrder", "OnClick", "Theme"}]
      147 LENGTH                           R14 R5
      148 ADDK                             R13 R14 K42 [1]
      149 SETTABLEKS                       R13 R12 K13 ["LayoutOrder"]
      151 GETTABLEKS                       R13 R1 K43 ["AddNew"]
      153 SETTABLEKS                       R13 R12 K40 ["OnClick"]
      155 SETTABLEKS                       R2 R12 K1 ["Theme"]
      157 CALL                             R10 2 1
      158 SETTABLEKS                       R10 R9 K44 ["NewThumbnail"]
      160 GETUPVAL                         R11 0
      161 GETTABLEKS                       R10 R11 K12 ["createElement"]
      163 LOADK                            R11 K45 ["UIGridLayout"]
      164 DUPTABLE                         R12 K51 [{"CellPadding", "CellSize", "FillDirection", "HorizontalAlignment", "SortOrder"}]
      165 GETTABLEKS                       R13 R3 K52 ["Padding"]
      167 SETTABLEKS                       R13 R12 K46 ["CellPadding"]
      169 SETTABLEKS                       R8 R12 K47 ["CellSize"]
      171 GETIMPORT                        R13 K55 [Enum.FillDirection.Horizontal]
      173 SETTABLEKS                       R13 R12 K48 ["FillDirection"]
      175 GETIMPORT                        R13 K57 [Enum.HorizontalAlignment.Left]
      177 SETTABLEKS                       R13 R12 K49 ["HorizontalAlignment"]
      179 GETIMPORT                        R13 K58 [Enum.SortOrder.LayoutOrder]
      181 SETTABLEKS                       R13 R12 K50 ["SortOrder"]
      183 CALL                             R10 2 1
      184 SETTABLEKS                       R10 R9 K59 ["Layout"]
      186 GETUPVAL                         R11 0
      187 GETTABLEKS                       R10 R11 K12 ["createElement"]
      189 GETUPVAL                         R11 5
      190 DUPTABLE                         R12 K62 [{"LayoutOrder", "Position", "AutomaticSize", "HorizontalAlignment"}]
      191 GETTABLEKS                       R14 R1 K13 ["LayoutOrder"]
      193 ORK                              R13 R14 K42 [1]
      194 SETTABLEKS                       R13 R12 K13 ["LayoutOrder"]
      196 GETTABLEKS                       R13 R1 K60 ["Position"]
      198 JUMPIF                           R13 ; [+3]
      199 GETIMPORT                        R13 K65 [UDim2.new]
      201 CALL                             R13 0 1
      202 SETTABLEKS                       R13 R12 K60 ["Position"]
      204 GETIMPORT                        R13 K67 [Enum.AutomaticSize.Y]
      206 SETTABLEKS                       R13 R12 K61 ["AutomaticSize"]
      208 GETIMPORT                        R13 K57 [Enum.HorizontalAlignment.Left]
      210 SETTABLEKS                       R13 R12 K49 ["HorizontalAlignment"]
      212 MOVE                             R13 R9
      213 CALL                             R10 3 -1
      214 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R4 R0 K4 ["Parent"]
       20 GETTABLEKS                       R3 R4 K8 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R4 R0 K2 ["UI"]
       25 GETTABLEKS                       R3 R4 K9 ["Components"]
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R5 R3 K10 ["Pane"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETIMPORT                        R8 K1 [script]
       36 GETTABLEKS                       R7 R8 K4 ["Parent"]
       38 GETTABLEKS                       R6 R7 K11 ["Thumbnail"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K6 [require]
       43 GETIMPORT                        R9 K1 [script]
       45 GETTABLEKS                       R8 R9 K4 ["Parent"]
       47 GETTABLEKS                       R7 R8 K12 ["DragDestination"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K6 [require]
       52 GETIMPORT                        R10 K1 [script]
       54 GETTABLEKS                       R9 R10 K4 ["Parent"]
       56 GETTABLEKS                       R8 R9 K13 ["NewThumbnail"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K6 [require]
       61 GETIMPORT                        R11 K1 [script]
       63 GETTABLEKS                       R10 R11 K4 ["Parent"]
       65 GETTABLEKS                       R9 R10 K14 ["types"]
       67 CALL                             R8 1 1
       68 GETTABLEKS                       R9 R1 K15 ["PureComponent"]
       70 LOADK                            R11 K16 ["ThumbnailSet"]
       71 NAMECALL                         R9 R9 K17 ["extend"]
       73 CALL                             R9 2 1
       74 DUPCLOSURE                       R10 K18 [PROTO_0]
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R4
       81 SETTABLEKS                       R10 R9 K19 ["render"]
       83 RETURN                           R9 1
