PROTO_0:
        0 DUPTABLE                         R1 K9 [{"Children", "AspectRatio", "CornerRadius", "FlexItem", "ListLayout", "SizeConstraint", "Padding", "Scale", "Stroke"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K10 ["createElement"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K11 ["Fragment"]
        7 NEWTABLE                         R4 0 0
        9 GETTABLEKS                       R5 R0 K12 ["children"]
       11 CALL                             R2 3 1
       12 SETTABLEKS                       R2 R1 K0 ["Children"]
       14 GETTABLEKS                       R3 R0 K13 ["aspectRatio"]
       16 JUMPIFEQKNIL                     R3 ; [+12]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R2 R3 K10 ["createElement"]
       21 GETUPVAL                         R3 1
       22 DUPTABLE                         R4 K15 [{"value"}]
       23 GETTABLEKS                       R5 R0 K13 ["aspectRatio"]
       25 SETTABLEKS                       R5 R4 K14 ["value"]
       27 CALL                             R2 2 1
       28 JUMP                             ; [+1]
       29 LOADNIL                          R2
       30 SETTABLEKS                       R2 R1 K1 ["AspectRatio"]
       32 GETTABLEKS                       R3 R0 K16 ["cornerRadius"]
       34 JUMPIFEQKNIL                     R3 ; [+12]
       36 GETUPVAL                         R3 0
       37 GETTABLEKS                       R2 R3 K10 ["createElement"]
       39 LOADK                            R3 K17 ["UICorner"]
       40 DUPTABLE                         R4 K18 [{"CornerRadius"}]
       41 GETTABLEKS                       R5 R0 K16 ["cornerRadius"]
       43 SETTABLEKS                       R5 R4 K2 ["CornerRadius"]
       45 CALL                             R2 2 1
       46 JUMP                             ; [+1]
       47 LOADNIL                          R2
       48 SETTABLEKS                       R2 R1 K2 ["CornerRadius"]
       50 GETTABLEKS                       R3 R0 K19 ["flexItem"]
       52 JUMPIFEQKNIL                     R3 ; [+32]
       54 GETUPVAL                         R3 0
       55 GETTABLEKS                       R2 R3 K10 ["createElement"]
       57 LOADK                            R3 K20 ["UIFlexItem"]
       58 DUPTABLE                         R4 K25 [{"FlexMode", "GrowRatio", "ShrinkRatio", "ItemLineAlignment"}]
       59 GETTABLEKS                       R6 R0 K19 ["flexItem"]
       61 GETTABLEKS                       R5 R6 K21 ["FlexMode"]
       63 SETTABLEKS                       R5 R4 K21 ["FlexMode"]
       65 GETTABLEKS                       R6 R0 K19 ["flexItem"]
       67 GETTABLEKS                       R5 R6 K22 ["GrowRatio"]
       69 SETTABLEKS                       R5 R4 K22 ["GrowRatio"]
       71 GETTABLEKS                       R6 R0 K19 ["flexItem"]
       73 GETTABLEKS                       R5 R6 K23 ["ShrinkRatio"]
       75 SETTABLEKS                       R5 R4 K23 ["ShrinkRatio"]
       77 GETTABLEKS                       R6 R0 K19 ["flexItem"]
       79 GETTABLEKS                       R5 R6 K24 ["ItemLineAlignment"]
       81 SETTABLEKS                       R5 R4 K24 ["ItemLineAlignment"]
       83 CALL                             R2 2 1
       84 JUMP                             ; [+1]
       85 LOADNIL                          R2
       86 SETTABLEKS                       R2 R1 K3 ["FlexItem"]
       88 GETTABLEKS                       R3 R0 K26 ["layout"]
       90 JUMPIFEQKNIL                     R3 ; [+68]
       92 GETTABLEKS                       R4 R0 K26 ["layout"]
       94 GETTABLEKS                       R3 R4 K27 ["FillDirection"]
       96 JUMPIFEQKNIL                     R3 ; [+62]
       98 GETUPVAL                         R3 0
       99 GETTABLEKS                       R2 R3 K10 ["createElement"]
      101 LOADK                            R3 K28 ["UIListLayout"]
      102 DUPTABLE                         R4 K35 [{"FillDirection", "ItemLineAlignment", "HorizontalAlignment", "HorizontalFlex", "VerticalAlignment", "VerticalFlex", "Padding", "SortOrder", "Wraps"}]
      103 GETTABLEKS                       R6 R0 K26 ["layout"]
      105 GETTABLEKS                       R5 R6 K27 ["FillDirection"]
      107 SETTABLEKS                       R5 R4 K27 ["FillDirection"]
      109 GETTABLEKS                       R6 R0 K26 ["layout"]
      111 GETTABLEKS                       R5 R6 K24 ["ItemLineAlignment"]
      113 SETTABLEKS                       R5 R4 K24 ["ItemLineAlignment"]
      115 GETTABLEKS                       R6 R0 K26 ["layout"]
      117 GETTABLEKS                       R5 R6 K29 ["HorizontalAlignment"]
      119 SETTABLEKS                       R5 R4 K29 ["HorizontalAlignment"]
      121 GETTABLEKS                       R6 R0 K26 ["layout"]
      123 GETTABLEKS                       R5 R6 K30 ["HorizontalFlex"]
      125 SETTABLEKS                       R5 R4 K30 ["HorizontalFlex"]
      127 GETTABLEKS                       R6 R0 K26 ["layout"]
      129 GETTABLEKS                       R5 R6 K31 ["VerticalAlignment"]
      131 SETTABLEKS                       R5 R4 K31 ["VerticalAlignment"]
      133 GETTABLEKS                       R6 R0 K26 ["layout"]
      135 GETTABLEKS                       R5 R6 K32 ["VerticalFlex"]
      137 SETTABLEKS                       R5 R4 K32 ["VerticalFlex"]
      139 GETTABLEKS                       R6 R0 K26 ["layout"]
      141 GETTABLEKS                       R5 R6 K6 ["Padding"]
      143 SETTABLEKS                       R5 R4 K6 ["Padding"]
      145 GETTABLEKS                       R6 R0 K26 ["layout"]
      147 GETTABLEKS                       R5 R6 K33 ["SortOrder"]
      149 SETTABLEKS                       R5 R4 K33 ["SortOrder"]
      151 GETTABLEKS                       R6 R0 K26 ["layout"]
      153 GETTABLEKS                       R5 R6 K34 ["Wraps"]
      155 SETTABLEKS                       R5 R4 K34 ["Wraps"]
      157 CALL                             R2 2 1
      158 JUMP                             ; [+1]
      159 LOADNIL                          R2
      160 SETTABLEKS                       R2 R1 K4 ["ListLayout"]
      162 GETTABLEKS                       R3 R0 K36 ["sizeConstraint"]
      164 JUMPIFEQKNIL                     R3 ; [+9]
      166 GETUPVAL                         R3 0
      167 GETTABLEKS                       R2 R3 K10 ["createElement"]
      169 LOADK                            R3 K37 ["UISizeConstraint"]
      170 GETTABLEKS                       R4 R0 K36 ["sizeConstraint"]
      172 CALL                             R2 2 1
      173 JUMP                             ; [+1]
      174 LOADNIL                          R2
      175 SETTABLEKS                       R2 R1 K5 ["SizeConstraint"]
      177 GETTABLEKS                       R3 R0 K38 ["padding"]
      179 JUMPIFEQKNIL                     R3 ; [+12]
      181 GETUPVAL                         R3 0
      182 GETTABLEKS                       R2 R3 K10 ["createElement"]
      184 GETUPVAL                         R3 2
      185 DUPTABLE                         R4 K15 [{"value"}]
      186 GETTABLEKS                       R5 R0 K38 ["padding"]
      188 SETTABLEKS                       R5 R4 K14 ["value"]
      190 CALL                             R2 2 1
      191 JUMP                             ; [+1]
      192 LOADNIL                          R2
      193 SETTABLEKS                       R2 R1 K6 ["Padding"]
      195 GETTABLEKS                       R3 R0 K39 ["scale"]
      197 JUMPIFEQKNIL                     R3 ; [+12]
      199 GETUPVAL                         R3 0
      200 GETTABLEKS                       R2 R3 K10 ["createElement"]
      202 LOADK                            R3 K40 ["UIScale"]
      203 DUPTABLE                         R4 K41 [{"Scale"}]
      204 GETTABLEKS                       R5 R0 K39 ["scale"]
      206 SETTABLEKS                       R5 R4 K7 ["Scale"]
      208 CALL                             R2 2 1
      209 JUMP                             ; [+1]
      210 LOADNIL                          R2
      211 SETTABLEKS                       R2 R1 K7 ["Scale"]
      213 GETTABLEKS                       R3 R0 K42 ["stroke"]
      215 JUMPIFEQKNIL                     R3 ; [+9]
      217 GETUPVAL                         R3 0
      218 GETTABLEKS                       R2 R3 K10 ["createElement"]
      220 LOADK                            R3 K43 ["UIStroke"]
      221 GETTABLEKS                       R4 R0 K42 ["stroke"]
      223 CALL                             R2 2 1
      224 JUMP                             ; [+1]
      225 LOADNIL                          R2
      226 SETTABLEKS                       R2 R1 K8 ["Stroke"]
      228 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["Padding"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R6 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R6 K10 ["AspectRatio"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R7 R0 K8 ["Components"]
       32 GETTABLEKS                       R6 R7 K11 ["Types"]
       34 CALL                             R5 1 1
       35 DUPCLOSURE                       R6 K12 [PROTO_0]
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R3
       39 RETURN                           R6 1
