PROTO_0:
        0 GETTABLEKS                       R3 R1 K0 ["pressed"]
        2 JUMPIFNOT                        R3 ; [+2]
        3 LOADK                            R2 K1 ["bg-system-contrast content-inverse-emphasis"]
        4 JUMP                             ; [+1]
        5 LOADK                            R2 K2 ["bg-shift-300 content-action-utility"]
        6 GETTABLEKS                       R4 R1 K0 ["pressed"]
        8 JUMPIFNOT                        R4 ; [+2]
        9 LOADK                            R3 K3 ["content-inverse-emphasis"]
       10 JUMP                             ; [+1]
       11 LOADK                            R3 K4 ["content-action-utility"]
       12 NEWTABLE                         R4 2 0
       14 GETTABLEKS                       R5 R1 K5 ["leadingIcon"]
       16 JUMPIFEQKNIL                     R5 ; [+25]
       18 GETUPVAL                         R5 0
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R6 R6 K6 ["Icon"]
       22 DUPTABLE                         R7 K12 [{["name"], ["size"], ["tag"], ["LayoutOrder"] = 1}]
       23 GETTABLEKS                       R8 R1 K5 ["leadingIcon"]
       25 SETTABLEKS                       R8 R7 K7 ["name"]
       27 GETUPVAL                         R8 1
       28 GETTABLEKS                       R8 R8 K13 ["Enums"]
       30 GETTABLEKS                       R8 R8 K14 ["IconSize"]
       32 GETTABLEKS                       R8 R8 K15 ["Small"]
       34 SETTABLEKS                       R8 R7 K8 ["size"]
       36 SETTABLEKS                       R3 R7 K9 ["tag"]
       38 CALL                             R5 2 1
       39 SETTABLEKS                       R5 R4 K16 ["Leading"]
       41 JUMP                             ; [+27]
       42 GETTABLEKS                       R5 R1 K17 ["leadingText"]
       44 JUMPIFEQKNIL                     R5 ; [+24]
       46 GETUPVAL                         R5 0
       47 GETUPVAL                         R6 1
       48 GETTABLEKS                       R6 R6 K18 ["Text"]
       50 DUPTABLE                         R7 K22 [{["Text"], ["AutomaticSize"], ["Size"], ["tag"] = "text-label-small", ["LayoutOrder"] = 1}]
       51 GETTABLEKS                       R8 R1 K17 ["leadingText"]
       53 SETTABLEKS                       R8 R7 K18 ["Text"]
       55 GETIMPORT                        R8 K25 [Enum.AutomaticSize.XY]
       57 SETTABLEKS                       R8 R7 K19 ["AutomaticSize"]
       59 GETIMPORT                        R8 K28 [UDim2.fromOffset]
       61 LOADN                            R9 0
       62 LOADN                            R10 0
       63 CALL                             R8 2 1
       64 SETTABLEKS                       R8 R7 K20 ["Size"]
       66 CALL                             R5 2 1
       67 SETTABLEKS                       R5 R4 K16 ["Leading"]
       69 GETUPVAL                         R5 0
       70 GETUPVAL                         R6 1
       71 GETTABLEKS                       R6 R6 K18 ["Text"]
       73 DUPTABLE                         R7 K30 [{["Text"], ["AutomaticSize"], ["Size"], ["tag"], ["LayoutOrder"] = 2}]
       74 GETTABLEKS                       R8 R1 K31 ["text"]
       76 SETTABLEKS                       R8 R7 K18 ["Text"]
       78 GETIMPORT                        R8 K25 [Enum.AutomaticSize.XY]
       80 SETTABLEKS                       R8 R7 K19 ["AutomaticSize"]
       82 GETIMPORT                        R8 K28 [UDim2.fromOffset]
       84 LOADN                            R9 0
       85 LOADN                            R10 0
       86 CALL                             R8 2 1
       87 SETTABLEKS                       R8 R7 K20 ["Size"]
       89 LOADK                            R9 K32 ["text-label-small text-no-wrap %*"]
       90 MOVE                             R11 R3
       91 NAMECALL                         R9 R9 K33 ["format"]
       93 CALL                             R9 2 1
       94 MOVE                             R8 R9
       95 SETTABLEKS                       R8 R7 K9 ["tag"]
       97 CALL                             R5 2 1
       98 SETTABLEKS                       R5 R4 K34 ["Count"]
      100 GETUPVAL                         R5 0
      101 GETUPVAL                         R6 1
      102 GETTABLEKS                       R6 R6 K35 ["View"]
      104 DUPTABLE                         R7 K38 [{"testId", "onActivated", "LayoutOrder", "AutomaticSize", "Size", "tag"}]
      105 GETTABLEKS                       R8 R1 K36 ["testId"]
      107 SETTABLEKS                       R8 R7 K36 ["testId"]
      109 GETTABLEKS                       R8 R1 K37 ["onActivated"]
      111 SETTABLEKS                       R8 R7 K37 ["onActivated"]
      113 GETTABLEKS                       R8 R1 K10 ["LayoutOrder"]
      115 SETTABLEKS                       R8 R7 K10 ["LayoutOrder"]
      117 GETIMPORT                        R8 K40 [Enum.AutomaticSize.X]
      119 SETTABLEKS                       R8 R7 K19 ["AutomaticSize"]
      121 GETIMPORT                        R8 K42 [UDim2.new]
      123 LOADN                            R9 0
      124 LOADN                            R10 0
      125 LOADN                            R11 0
      126 GETTABLEKS                       R12 R0 K20 ["Size"]
      128 GETTABLEKS                       R12 R12 K43 ["Size_600"]
      130 CALL                             R8 4 1
      131 SETTABLEKS                       R8 R7 K20 ["Size"]
      133 LOADK                            R9 K44 ["row align-x-center align-y-center gap-xsmall radius-circle padding-x-small %*"]
      134 MOVE                             R11 R2
      135 NAMECALL                         R9 R9 K33 ["format"]
      137 CALL                             R9 2 1
      138 MOVE                             R8 R9
      139 SETTABLEKS                       R8 R7 K9 ["tag"]
      141 MOVE                             R8 R4
      142 CALL                             R5 3 -1
      143 RETURN                           R5 -1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["Size"]
        2 GETTABLEKS                       R3 R3 K1 ["Size_600"]
        4 GETUPVAL                         R4 0
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R5 R5 K2 ["View"]
        8 DUPTABLE                         R6 K9 [{["testId"] = "--appkit-comment-add-reaction", ["onActivated"], ["LayoutOrder"], [4], ["tag"] = "row align-x-center align-y-center radius-circle bg-shift-300"}]
        9 SETTABLEKS                       R1 R6 K5 ["onActivated"]
       11 SETTABLEKS                       R2 R6 K6 ["LayoutOrder"]
       13 GETIMPORT                        R7 K12 [UDim2.fromOffset]
       15 MOVE                             R8 R3
       16 MOVE                             R9 R3
       17 CALL                             R7 2 1
       18 SETTABLEKS                       R7 R6 K0 ["Size"]
       20 DUPTABLE                         R7 K14 [{"Plus"}]
       21 GETUPVAL                         R8 0
       22 GETUPVAL                         R9 1
       23 GETTABLEKS                       R9 R9 K15 ["Icon"]
       25 DUPTABLE                         R10 K20 [{["name"] = "plus-small", ["size"], ["style"]}]
       26 GETUPVAL                         R11 1
       27 GETTABLEKS                       R11 R11 K21 ["Enums"]
       29 GETTABLEKS                       R11 R11 K22 ["IconSize"]
       31 GETTABLEKS                       R11 R11 K23 ["Small"]
       33 SETTABLEKS                       R11 R10 K18 ["size"]
       35 GETTABLEKS                       R11 R0 K24 ["Color"]
       37 GETTABLEKS                       R11 R11 K25 ["ActionUtility"]
       39 GETTABLEKS                       R11 R11 K26 ["Foreground"]
       41 SETTABLEKS                       R11 R10 K19 ["style"]
       43 CALL                             R8 2 1
       44 SETTABLEKS                       R8 R7 K13 ["Plus"]
       46 CALL                             R4 3 -1
       47 RETURN                           R4 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Size"]
        2 GETTABLEKS                       R1 R1 K1 ["Size_800"]
        4 GETTABLEKS                       R2 R0 K0 ["Size"]
        6 GETTABLEKS                       R2 R2 K2 ["Size_1000"]
        8 GETTABLEKS                       R3 R0 K3 ["Gap"]
       10 GETTABLEKS                       R3 R3 K4 ["Medium"]
       12 DUPTABLE                         R4 K15 [{["avatarSize"], ["indent"], ["gutter"], ["stub"] = 6, ["thickness"], ["centerX"], ["replyCenterX"], ["avatarCenterY"], ["columnHeight"]}]
       13 SETTABLEKS                       R1 R4 K5 ["avatarSize"]
       15 SETTABLEKS                       R2 R4 K6 ["indent"]
       17 SETTABLEKS                       R3 R4 K7 ["gutter"]
       19 GETTABLEKS                       R5 R0 K16 ["Stroke"]
       21 GETTABLEKS                       R5 R5 K17 ["Thick"]
       23 SETTABLEKS                       R5 R4 K10 ["thickness"]
       25 DIVK                             R5 R1 K18 [2]
       26 SETTABLEKS                       R5 R4 K11 ["centerX"]
       28 DIVK                             R6 R1 K18 [2]
       29 ADD                              R5 R2 R6
       30 SETTABLEKS                       R5 R4 K12 ["replyCenterX"]
       32 LOADN                            R6 6
       33 DIVK                             R7 R1 K18 [2]
       34 ADD                              R5 R6 R7
       35 SETTABLEKS                       R5 R4 K13 ["avatarCenterY"]
       37 LOADN                            R6 6
       38 ADD                              R5 R6 R1
       39 SETTABLEKS                       R5 R4 K14 ["columnHeight"]
       41 RETURN                           R4 1

PROTO_3:
        0 GETUPVAL                         R5 0
        1 LOADK                            R6 K0 ["Frame"]
        2 DUPTABLE                         R7 K10 [{["AnchorPoint"], ["Position"], ["Size"], ["BackgroundColor3"], ["BackgroundTransparency"] = 0, ["BorderSizePixel"] = 0, ["ZIndex"] = 1}]
        3 SETTABLEKS                       R4 R7 K1 ["AnchorPoint"]
        5 SETTABLEKS                       R3 R7 K2 ["Position"]
        7 SETTABLEKS                       R2 R7 K3 ["Size"]
        9 GETTABLEKS                       R8 R0 K11 ["Color"]
       11 GETTABLEKS                       R8 R8 K12 ["Stroke"]
       13 GETTABLEKS                       R8 R8 K13 ["Default"]
       15 GETTABLEKS                       R8 R8 K14 ["Color3"]
       17 SETTABLEKS                       R8 R7 K4 ["BackgroundColor3"]
       19 CALL                             R5 2 -1
       20 RETURN                           R5 -1

PROTO_4:
        0 GETTABLEKS                       R3 R1 K0 ["thickness"]
        2 GETUPVAL                         R4 0
        3 LOADK                            R5 K1 ["Frame"]
        4 DUPTABLE                         R6 K11 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ClipsDescendants"] = True, ["ZIndex"] = 1}]
        5 GETIMPORT                        R7 K14 [UDim2.fromOffset]
        7 LOADN                            R8 0
        8 GETTABLEKS                       R10 R1 K15 ["avatarCenterY"]
       10 SUB                              R9 R10 R2
       11 CALL                             R7 2 1
       12 SETTABLEKS                       R7 R6 K2 ["Position"]
       14 GETIMPORT                        R7 K14 [UDim2.fromOffset]
       16 GETTABLEKS                       R9 R1 K16 ["centerX"]
       18 ADD                              R8 R9 R2
       19 ADD                              R9 R2 R3
       20 CALL                             R7 2 1
       21 SETTABLEKS                       R7 R6 K3 ["Size"]
       23 DUPTABLE                         R7 K18 [{"Ring"}]
       24 GETUPVAL                         R8 0
       25 LOADK                            R9 K1 ["Frame"]
       26 DUPTABLE                         R10 K19 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
       27 GETIMPORT                        R11 K14 [UDim2.fromOffset]
       29 GETTABLEKS                       R12 R1 K16 ["centerX"]
       31 MINUS                            R13 R2
       32 CALL                             R11 2 1
       33 SETTABLEKS                       R11 R10 K2 ["Position"]
       35 GETIMPORT                        R11 K14 [UDim2.fromOffset]
       37 MULK                             R12 R2 K20 [2]
       38 MULK                             R13 R2 K20 [2]
       39 CALL                             R11 2 1
       40 SETTABLEKS                       R11 R10 K3 ["Size"]
       42 DUPTABLE                         R11 K23 [{"Corner", "Stroke"}]
       43 GETUPVAL                         R12 0
       44 LOADK                            R13 K24 ["UICorner"]
       45 DUPTABLE                         R14 K26 [{"CornerRadius"}]
       46 GETIMPORT                        R15 K29 [UDim.new]
       48 LOADN                            R16 0
       49 MOVE                             R17 R2
       50 CALL                             R15 2 1
       51 SETTABLEKS                       R15 R14 K25 ["CornerRadius"]
       53 CALL                             R12 2 1
       54 SETTABLEKS                       R12 R11 K21 ["Corner"]
       56 GETUPVAL                         R12 0
       57 LOADK                            R13 K30 ["UIStroke"]
       58 DUPTABLE                         R14 K34 [{["Color"], ["Thickness"], ["Transparency"] = 0}]
       59 GETTABLEKS                       R15 R0 K31 ["Color"]
       61 GETTABLEKS                       R15 R15 K22 ["Stroke"]
       63 GETTABLEKS                       R15 R15 K35 ["Default"]
       65 GETTABLEKS                       R15 R15 K36 ["Color3"]
       67 SETTABLEKS                       R15 R14 K31 ["Color"]
       69 SETTABLEKS                       R3 R14 K32 ["Thickness"]
       71 CALL                             R12 2 1
       72 SETTABLEKS                       R12 R11 K22 ["Stroke"]
       74 CALL                             R8 3 1
       75 SETTABLEKS                       R8 R7 K17 ["Ring"]
       77 CALL                             R4 3 -1
       78 RETURN                           R4 -1

PROTO_5:
        0 GETTABLEKS                       R5 R3 K0 ["isReply"]
        2 JUMPIFEQKB                       R5 TRUE ; [+2]
        4 LOADB                            R4 0 +1
        5 LOADB                            R4 1
        6 JUMPIFNOT                        R4 ; [+6]
        7 GETTABLEKS                       R6 R2 K1 ["indent"]
        9 GETTABLEKS                       R7 R2 K2 ["avatarSize"]
       11 ADD                              R5 R6 R7
       12 JUMP                             ; [+2]
       13 GETTABLEKS                       R5 R2 K2 ["avatarSize"]
       15 JUMPIFNOT                        R4 ; [+3]
       16 GETTABLEKS                       R6 R2 K1 ["indent"]
       18 JUMP                             ; [+1]
       19 LOADN                            R6 0
       20 JUMPIFNOT                        R4 ; [+3]
       21 GETTABLEKS                       R7 R2 K3 ["replyCenterX"]
       23 JUMP                             ; [+2]
       24 GETTABLEKS                       R7 R2 K4 ["centerX"]
       26 DUPTABLE                         R8 K6 [{"Avatar"}]
       27 GETUPVAL                         R9 0
       28 LOADK                            R10 K7 ["Frame"]
       29 DUPTABLE                         R11 K16 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ZIndex"] = 2}]
       30 GETIMPORT                        R12 K19 [UDim2.fromOffset]
       32 MOVE                             R13 R6
       33 GETTABLEKS                       R14 R2 K20 ["stub"]
       35 CALL                             R12 2 1
       36 SETTABLEKS                       R12 R11 K8 ["Position"]
       38 GETIMPORT                        R12 K19 [UDim2.fromOffset]
       40 GETTABLEKS                       R13 R2 K2 ["avatarSize"]
       42 GETTABLEKS                       R14 R2 K2 ["avatarSize"]
       44 CALL                             R12 2 1
       45 SETTABLEKS                       R12 R11 K9 ["Size"]
       47 DUPTABLE                         R12 K22 [{"Inner"}]
       48 GETUPVAL                         R13 1
       49 GETTABLEKS                       R13 R13 K23 ["avatarFor"]
       51 GETTABLEKS                       R14 R1 K24 ["userId"]
       53 GETTABLEKS                       R15 R1 K25 ["avatarInitials"]
       55 JUMPIF                           R15 ; [+2]
       56 GETTABLEKS                       R15 R1 K26 ["user"]
       58 GETUPVAL                         R16 2
       59 GETTABLEKS                       R16 R16 K27 ["Enums"]
       61 GETTABLEKS                       R16 R16 K28 ["InputSize"]
       63 GETTABLEKS                       R16 R16 K29 ["Small"]
       65 GETTABLEKS                       R17 R2 K2 ["avatarSize"]
       67 GETTABLEKS                       R18 R1 K30 ["userPresence"]
       69 CALL                             R13 5 1
       70 SETTABLEKS                       R13 R12 K21 ["Inner"]
       72 CALL                             R9 3 1
       73 SETTABLEKS                       R9 R8 K5 ["Avatar"]
       75 JUMPIFNOT                        R4 ; [+43]
       76 GETTABLEKS                       R9 R3 K31 ["isFirstReply"]
       78 JUMPIF                           R9 ; [+40]
       79 GETIMPORT                        R10 K19 [UDim2.fromOffset]
       81 GETTABLEKS                       R11 R2 K32 ["thickness"]
       83 GETTABLEKS                       R12 R2 K20 ["stub"]
       85 CALL                             R10 2 1
       86 GETIMPORT                        R11 K19 [UDim2.fromOffset]
       88 MOVE                             R12 R7
       89 LOADN                            R13 0
       90 CALL                             R11 2 1
       91 GETIMPORT                        R12 K35 [Vector2.new]
       93 LOADK                            R13 K36 [0.5]
       94 LOADN                            R14 0
       95 CALL                             R12 2 1
       96 GETUPVAL                         R13 0
       97 LOADK                            R14 K7 ["Frame"]
       98 DUPTABLE                         R15 K39 [{["AnchorPoint"], ["Position"], ["Size"], ["BackgroundColor3"], ["BackgroundTransparency"] = 0, ["BorderSizePixel"] = 0, ["ZIndex"] = 1}]
       99 SETTABLEKS                       R12 R15 K37 ["AnchorPoint"]
      101 SETTABLEKS                       R11 R15 K8 ["Position"]
      103 SETTABLEKS                       R10 R15 K9 ["Size"]
      105 GETTABLEKS                       R16 R0 K40 ["Color"]
      107 GETTABLEKS                       R16 R16 K41 ["Stroke"]
      109 GETTABLEKS                       R16 R16 K42 ["Default"]
      111 GETTABLEKS                       R16 R16 K43 ["Color3"]
      113 SETTABLEKS                       R16 R15 K38 ["BackgroundColor3"]
      115 CALL                             R13 2 1
      116 MOVE                             R9 R13
      117 SETTABLEKS                       R9 R8 K44 ["Inbound"]
      119 JUMPIFNOT                        R4 ; [+108]
      120 GETTABLEKS                       R9 R3 K31 ["isFirstReply"]
      122 JUMPIFNOT                        R9 ; [+105]
      123 GETTABLEKS                       R9 R0 K45 ["Radius"]
      125 GETTABLEKS                       R9 R9 K46 ["Medium"]
      127 GETTABLEKS                       R10 R2 K32 ["thickness"]
      129 GETIMPORT                        R12 K19 [UDim2.fromOffset]
      131 GETTABLEKS                       R13 R2 K32 ["thickness"]
      133 GETTABLEKS                       R16 R2 K47 ["avatarCenterY"]
      135 SUB                              R15 R16 R9
      136 ADD                              R14 R15 R10
      137 CALL                             R12 2 1
      138 GETIMPORT                        R13 K19 [UDim2.fromOffset]
      140 GETTABLEKS                       R14 R2 K4 ["centerX"]
      142 LOADN                            R15 0
      143 CALL                             R13 2 1
      144 GETIMPORT                        R14 K35 [Vector2.new]
      146 LOADK                            R15 K36 [0.5]
      147 LOADN                            R16 0
      148 CALL                             R14 2 1
      149 GETUPVAL                         R15 0
      150 LOADK                            R16 K7 ["Frame"]
      151 DUPTABLE                         R17 K39 [{["AnchorPoint"], ["Position"], ["Size"], ["BackgroundColor3"], ["BackgroundTransparency"] = 0, ["BorderSizePixel"] = 0, ["ZIndex"] = 1}]
      152 SETTABLEKS                       R14 R17 K37 ["AnchorPoint"]
      154 SETTABLEKS                       R13 R17 K8 ["Position"]
      156 SETTABLEKS                       R12 R17 K9 ["Size"]
      158 GETTABLEKS                       R18 R0 K40 ["Color"]
      160 GETTABLEKS                       R18 R18 K41 ["Stroke"]
      162 GETTABLEKS                       R18 R18 K42 ["Default"]
      164 GETTABLEKS                       R18 R18 K43 ["Color3"]
      166 SETTABLEKS                       R18 R17 K38 ["BackgroundColor3"]
      168 CALL                             R15 2 1
      169 MOVE                             R11 R15
      170 SETTABLEKS                       R11 R8 K48 ["ElbowDown"]
      172 GETUPVAL                         R11 3
      173 MOVE                             R12 R0
      174 MOVE                             R13 R2
      175 MOVE                             R14 R9
      176 CALL                             R11 3 1
      177 SETTABLEKS                       R11 R8 K49 ["ElbowCorner"]
      179 GETIMPORT                        R12 K19 [UDim2.fromOffset]
      181 GETTABLEKS                       R15 R2 K1 ["indent"]
      183 GETTABLEKS                       R17 R2 K4 ["centerX"]
      185 ADD                              R16 R17 R9
      186 SUB                              R14 R15 R16
      187 ADD                              R13 R14 R10
      188 GETTABLEKS                       R14 R2 K32 ["thickness"]
      190 CALL                             R12 2 1
      191 GETIMPORT                        R13 K19 [UDim2.fromOffset]
      193 GETTABLEKS                       R16 R2 K4 ["centerX"]
      195 ADD                              R15 R16 R9
      196 SUB                              R14 R15 R10
      197 GETTABLEKS                       R15 R2 K47 ["avatarCenterY"]
      199 CALL                             R13 2 1
      200 GETIMPORT                        R14 K35 [Vector2.new]
      202 LOADN                            R15 0
      203 LOADK                            R16 K36 [0.5]
      204 CALL                             R14 2 1
      205 GETUPVAL                         R15 0
      206 LOADK                            R16 K7 ["Frame"]
      207 DUPTABLE                         R17 K39 [{["AnchorPoint"], ["Position"], ["Size"], ["BackgroundColor3"], ["BackgroundTransparency"] = 0, ["BorderSizePixel"] = 0, ["ZIndex"] = 1}]
      208 SETTABLEKS                       R14 R17 K37 ["AnchorPoint"]
      210 SETTABLEKS                       R13 R17 K8 ["Position"]
      212 SETTABLEKS                       R12 R17 K9 ["Size"]
      214 GETTABLEKS                       R18 R0 K40 ["Color"]
      216 GETTABLEKS                       R18 R18 K41 ["Stroke"]
      218 GETTABLEKS                       R18 R18 K42 ["Default"]
      220 GETTABLEKS                       R18 R18 K43 ["Color3"]
      222 SETTABLEKS                       R18 R17 K38 ["BackgroundColor3"]
      224 CALL                             R15 2 1
      225 MOVE                             R11 R15
      226 SETTABLEKS                       R11 R8 K50 ["ElbowAcross"]
      228 GETTABLEKS                       R9 R3 K51 ["hasReply"]
      230 JUMPIFNOT                        R9 ; [+50]
      231 GETIMPORT                        R10 K52 [UDim2.new]
      233 LOADN                            R11 0
      234 GETTABLEKS                       R12 R2 K32 ["thickness"]
      236 LOADN                            R13 1
      237 GETTABLEKS                       R16 R2 K20 ["stub"]
      239 GETTABLEKS                       R17 R2 K2 ["avatarSize"]
      241 ADD                              R15 R16 R17
      242 MINUS                            R14 R15
      243 CALL                             R10 4 1
      244 GETIMPORT                        R11 K19 [UDim2.fromOffset]
      246 MOVE                             R12 R7
      247 GETTABLEKS                       R14 R2 K20 ["stub"]
      249 GETTABLEKS                       R15 R2 K2 ["avatarSize"]
      251 ADD                              R13 R14 R15
      252 CALL                             R11 2 1
      253 GETIMPORT                        R12 K35 [Vector2.new]
      255 LOADK                            R13 K36 [0.5]
      256 LOADN                            R14 0
      257 CALL                             R12 2 1
      258 GETUPVAL                         R13 0
      259 LOADK                            R14 K7 ["Frame"]
      260 DUPTABLE                         R15 K39 [{["AnchorPoint"], ["Position"], ["Size"], ["BackgroundColor3"], ["BackgroundTransparency"] = 0, ["BorderSizePixel"] = 0, ["ZIndex"] = 1}]
      261 SETTABLEKS                       R12 R15 K37 ["AnchorPoint"]
      263 SETTABLEKS                       R11 R15 K8 ["Position"]
      265 SETTABLEKS                       R10 R15 K9 ["Size"]
      267 GETTABLEKS                       R16 R0 K40 ["Color"]
      269 GETTABLEKS                       R16 R16 K41 ["Stroke"]
      271 GETTABLEKS                       R16 R16 K42 ["Default"]
      273 GETTABLEKS                       R16 R16 K43 ["Color3"]
      275 SETTABLEKS                       R16 R15 K38 ["BackgroundColor3"]
      277 CALL                             R13 2 1
      278 MOVE                             R9 R13
      279 SETTABLEKS                       R9 R8 K53 ["Descending"]
      281 GETUPVAL                         R9 0
      282 LOADK                            R10 K7 ["Frame"]
      283 DUPTABLE                         R11 K58 [{["LayoutOrder"] = 1, ["ClipsDescendants"] = False, ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Size"], ["AutomaticSize"]}]
      284 GETIMPORT                        R12 K19 [UDim2.fromOffset]
      286 MOVE                             R13 R5
      287 GETTABLEKS                       R14 R2 K59 ["columnHeight"]
      289 CALL                             R12 2 1
      290 SETTABLEKS                       R12 R11 K9 ["Size"]
      292 GETIMPORT                        R12 K62 [Enum.AutomaticSize.None]
      294 SETTABLEKS                       R12 R11 K57 ["AutomaticSize"]
      296 MOVE                             R12 R8
      297 CALL                             R9 3 -1
      298 RETURN                           R9 -1

PROTO_6:
        0 GETTABLEKS                       R6 R3 K0 ["isReply"]
        2 JUMPIFNOT                        R6 ; [+6]
        3 GETTABLEKS                       R6 R2 K1 ["indent"]
        5 GETTABLEKS                       R7 R2 K2 ["avatarSize"]
        7 ADD                              R5 R6 R7
        8 JUMP                             ; [+2]
        9 GETTABLEKS                       R5 R2 K2 ["avatarSize"]
       11 GETUPVAL                         R6 0
       12 MOVE                             R7 R0
       13 MOVE                             R8 R1
       14 MOVE                             R9 R2
       15 MOVE                             R10 R3
       16 CALL                             R6 4 1
       17 NEWTABLE                         R7 0 0
       19 GETTABLEKS                       R8 R1 K3 ["timestamp"]
       21 JUMPIFEQKNIL                     R8 ; [+9]
       23 GETTABLEKS                       R10 R1 K3 ["timestamp"]
       25 FASTCALL2                        TABLE_INSERT R7 R10 ; [+4]
       27 MOVE                             R9 R7
       28 GETIMPORT                        R8 K6 [table.insert]
       30 CALL                             R8 2 0
       31 GETTABLEKS                       R8 R1 K7 ["label"]
       33 JUMPIFEQKNIL                     R8 ; [+9]
       35 GETTABLEKS                       R10 R1 K7 ["label"]
       37 FASTCALL2                        TABLE_INSERT R7 R10 ; [+4]
       39 MOVE                             R9 R7
       40 GETIMPORT                        R8 K6 [table.insert]
       42 CALL                             R8 2 0
       43 DUPTABLE                         R8 K9 [{"User"}]
       44 GETUPVAL                         R9 1
       45 GETUPVAL                         R10 2
       46 GETTABLEKS                       R10 R10 K10 ["Text"]
       48 DUPTABLE                         R11 K17 [{["Text"], ["LayoutOrder"] = 1, ["AutomaticSize"], ["Size"], ["tag"] = "text-caption-large content-default text-align-x-left text-align-y-center text-no-wrap"}]
       49 GETTABLEKS                       R12 R1 K18 ["user"]
       51 SETTABLEKS                       R12 R11 K10 ["Text"]
       53 GETIMPORT                        R12 K21 [Enum.AutomaticSize.X]
       55 SETTABLEKS                       R12 R11 K13 ["AutomaticSize"]
       57 GETIMPORT                        R12 K24 [UDim2.new]
       59 LOADN                            R13 0
       60 LOADN                            R14 0
       61 LOADN                            R15 1
       62 LOADN                            R16 0
       63 CALL                             R12 4 1
       64 SETTABLEKS                       R12 R11 K14 ["Size"]
       66 CALL                             R9 2 1
       67 SETTABLEKS                       R9 R8 K8 ["User"]
       69 LENGTH                           R9 R7
       70 LOADN                            R10 0
       71 JUMPIFNOTLT                      R10 R9 ; [+31]
       73 GETUPVAL                         R9 1
       74 GETUPVAL                         R10 2
       75 GETTABLEKS                       R10 R10 K10 ["Text"]
       77 DUPTABLE                         R11 K27 [{["Text"], ["LayoutOrder"] = 2, ["AutomaticSize"], ["Size"], ["tag"] = "text-body-medium content-muted text-align-x-left text-align-y-center text-no-wrap"}]
       78 LOADK                            R13 K28 [" · "]
       79 GETIMPORT                        R14 K30 [table.concat]
       81 MOVE                             R15 R7
       82 LOADK                            R16 K28 [" · "]
       83 CALL                             R14 2 1
       84 CONCAT                           R12 R13 R14
       85 SETTABLEKS                       R12 R11 K10 ["Text"]
       87 GETIMPORT                        R12 K21 [Enum.AutomaticSize.X]
       89 SETTABLEKS                       R12 R11 K13 ["AutomaticSize"]
       91 GETIMPORT                        R12 K24 [UDim2.new]
       93 LOADN                            R13 0
       94 LOADN                            R14 0
       95 LOADN                            R15 1
       96 LOADN                            R16 0
       97 CALL                             R12 4 1
       98 SETTABLEKS                       R12 R11 K14 ["Size"]
      100 CALL                             R9 2 1
      101 SETTABLEKS                       R9 R8 K31 ["Meta"]
      103 DUPTABLE                         R9 K32 [{"Text"}]
      104 GETUPVAL                         R10 1
      105 GETUPVAL                         R11 2
      106 GETTABLEKS                       R11 R11 K33 ["View"]
      108 DUPTABLE                         R12 K36 [{["LayoutOrder"] = 1, ["Position"], ["Size"], ["layout"]}]
      109 GETIMPORT                        R13 K38 [UDim2.fromOffset]
      111 LOADN                            R14 0
      112 LOADN                            R15 0
      113 CALL                             R13 2 1
      114 SETTABLEKS                       R13 R12 K34 ["Position"]
      116 GETIMPORT                        R13 K24 [UDim2.new]
      118 LOADN                            R14 1
      119 GETTABLEKS                       R16 R1 K39 ["onOverflowClick"]
      121 JUMPIFEQKNIL                     R16 ; [+7]
      123 GETTABLEKS                       R16 R0 K14 ["Size"]
      125 GETTABLEKS                       R16 R16 K40 ["Size_1000"]
      127 MINUS                            R15 R16
      128 JUMP                             ; [+1]
      129 LOADN                            R15 0
      130 LOADN                            R16 1
      131 LOADN                            R17 0
      132 CALL                             R13 4 1
      133 SETTABLEKS                       R13 R12 K14 ["Size"]
      135 DUPTABLE                         R13 K45 [{"FillDirection", "VerticalAlignment", "HorizontalAlignment", "SortOrder"}]
      136 GETIMPORT                        R14 K47 [Enum.FillDirection.Horizontal]
      138 SETTABLEKS                       R14 R13 K41 ["FillDirection"]
      140 GETIMPORT                        R14 K49 [Enum.VerticalAlignment.Center]
      142 SETTABLEKS                       R14 R13 K42 ["VerticalAlignment"]
      144 GETIMPORT                        R14 K51 [Enum.HorizontalAlignment.Left]
      146 SETTABLEKS                       R14 R13 K43 ["HorizontalAlignment"]
      148 GETIMPORT                        R14 K52 [Enum.SortOrder.LayoutOrder]
      150 SETTABLEKS                       R14 R13 K44 ["SortOrder"]
      152 SETTABLEKS                       R13 R12 K35 ["layout"]
      154 MOVE                             R13 R8
      155 CALL                             R10 3 1
      156 SETTABLEKS                       R10 R9 K10 ["Text"]
      158 GETTABLEKS                       R10 R1 K39 ["onOverflowClick"]
      160 JUMPIFEQKNIL                     R10 ; [+47]
      162 GETUPVAL                         R10 1
      163 GETUPVAL                         R11 2
      164 GETTABLEKS                       R11 R11 K33 ["View"]
      166 DUPTABLE                         R12 K54 [{"AnchorPoint", "Position", "Size"}]
      167 GETIMPORT                        R13 K56 [Vector2.new]
      169 LOADN                            R14 1
      170 LOADK                            R15 K57 [0.5]
      171 CALL                             R13 2 1
      172 SETTABLEKS                       R13 R12 K53 ["AnchorPoint"]
      174 GETIMPORT                        R13 K59 [UDim2.fromScale]
      176 LOADN                            R14 1
      177 LOADK                            R15 K57 [0.5]
      178 CALL                             R13 2 1
      179 SETTABLEKS                       R13 R12 K34 ["Position"]
      181 GETIMPORT                        R13 K38 [UDim2.fromOffset]
      183 GETTABLEKS                       R14 R0 K14 ["Size"]
      185 GETTABLEKS                       R14 R14 K60 ["Size_800"]
      187 GETTABLEKS                       R15 R0 K14 ["Size"]
      189 GETTABLEKS                       R15 R15 K60 ["Size_800"]
      191 CALL                             R13 2 1
      192 SETTABLEKS                       R13 R12 K14 ["Size"]
      194 DUPTABLE                         R13 K62 [{"Button"}]
      195 GETUPVAL                         R14 1
      196 GETUPVAL                         R15 3
      197 DUPTABLE                         R16 K68 [{["icon"] = "three-dots-horizontal", ["onActivated"], ["isCompact"] = True}]
      198 GETTABLEKS                       R17 R1 K39 ["onOverflowClick"]
      200 SETTABLEKS                       R17 R16 K65 ["onActivated"]
      202 CALL                             R14 2 1
      203 SETTABLEKS                       R14 R13 K61 ["Button"]
      205 CALL                             R10 3 1
      206 SETTABLEKS                       R10 R9 K69 ["Overflow"]
      208 DUPTABLE                         R10 K72 [{"Attribution", "Body"}]
      209 GETUPVAL                         R11 1
      210 GETUPVAL                         R12 2
      211 GETTABLEKS                       R12 R12 K33 ["View"]
      213 DUPTABLE                         R13 K73 [{["LayoutOrder"] = 1, ["Size"]}]
      214 GETIMPORT                        R14 K24 [UDim2.new]
      216 LOADN                            R15 1
      217 LOADN                            R16 0
      218 LOADN                            R17 0
      219 GETTABLEKS                       R18 R0 K14 ["Size"]
      221 GETTABLEKS                       R18 R18 K74 ["Size_700"]
      223 CALL                             R14 4 1
      224 SETTABLEKS                       R14 R13 K14 ["Size"]
      226 MOVE                             R14 R9
      227 CALL                             R11 3 1
      228 SETTABLEKS                       R11 R10 K70 ["Attribution"]
      230 GETUPVAL                         R11 1
      231 GETUPVAL                         R12 2
      232 GETTABLEKS                       R12 R12 K10 ["Text"]
      234 DUPTABLE                         R13 K76 [{["Text"], ["LayoutOrder"] = 2, ["Size"], ["AutomaticSize"], ["tag"] = "text-caption-large content-emphasis text-wrap text-align-x-left"}]
      235 GETTABLEKS                       R14 R1 K77 ["body"]
      237 SETTABLEKS                       R14 R13 K10 ["Text"]
      239 GETIMPORT                        R14 K24 [UDim2.new]
      241 LOADN                            R15 1
      242 LOADN                            R16 0
      243 LOADN                            R17 0
      244 LOADN                            R18 0
      245 CALL                             R14 4 1
      246 SETTABLEKS                       R14 R13 K14 ["Size"]
      248 GETIMPORT                        R14 K79 [Enum.AutomaticSize.Y]
      250 SETTABLEKS                       R14 R13 K13 ["AutomaticSize"]
      252 CALL                             R11 2 1
      253 SETTABLEKS                       R11 R10 K71 ["Body"]
      255 GETTABLEKS                       R12 R1 K80 ["reactions"]
      257 JUMPIFEQKNIL                     R12 ; [+8]
      259 LOADB                            R11 1
      260 GETTABLEKS                       R13 R1 K80 ["reactions"]
      262 LENGTH                           R12 R13
      263 LOADN                            R13 0
      264 JUMPIFLT                         R13 R12 ; [+12]
      266 LOADB                            R11 1
      267 GETTABLEKS                       R12 R1 K81 ["onAddReaction"]
      269 JUMPIFNOTEQKNIL                  R12 ; [+7]
      271 GETTABLEKS                       R12 R1 K82 ["onReply"]
      273 JUMPIFNOTEQKNIL                  R12 ; [+2]
      275 LOADB                            R11 0 +1
      276 LOADB                            R11 1
      277 JUMPIFNOT                        R11 ; [+223]
      278 NEWTABLE                         R12 1 0
      280 LOADN                            R13 0
      281 GETTABLEKS                       R14 R1 K80 ["reactions"]
      283 JUMPIFEQKNIL                     R14 ; [+50]
      285 GETTABLEKS                       R14 R1 K80 ["reactions"]
      287 LOADNIL                          R15
      288 LOADNIL                          R16
      289 FORGPREP                         R14
      290 ADDK                             R13 R13 K12 [1]
      291 LOADK                            R20 K83 ["reaction_%*"]
      292 MOVE                             R22 R17
      293 NAMECALL                         R20 R20 K84 ["format"]
      295 CALL                             R20 2 1
      296 MOVE                             R19 R20
      297 GETUPVAL                         R20 4
      298 MOVE                             R21 R0
      299 DUPTABLE                         R22 K89 [{"testId", "leadingText", "text", "pressed", "onActivated", "LayoutOrder"}]
      300 LOADK                            R24 K90 ["--appkit-comment-reaction-%*"]
      301 MOVE                             R26 R17
      302 NAMECALL                         R24 R24 K84 ["format"]
      304 CALL                             R24 2 1
      305 MOVE                             R23 R24
      306 SETTABLEKS                       R23 R22 K85 ["testId"]
      308 GETTABLEKS                       R23 R18 K91 ["emoji"]
      310 SETTABLEKS                       R23 R22 K86 ["leadingText"]
      312 GETTABLEKS                       R24 R18 K92 ["count"]
      314 FASTCALL1                        TOSTRING R24 ; [+2]
      315 GETIMPORT                        R23 K94 [tostring]
      317 CALL                             R23 1 1
      318 SETTABLEKS                       R23 R22 K87 ["text"]
      320 GETTABLEKS                       R23 R18 K95 ["isReacted"]
      322 SETTABLEKS                       R23 R22 K88 ["pressed"]
      324 GETTABLEKS                       R23 R18 K96 ["onToggle"]
      326 SETTABLEKS                       R23 R22 K65 ["onActivated"]
      328 SETTABLEKS                       R13 R22 K11 ["LayoutOrder"]
      330 CALL                             R20 2 1
      331 SETTABLE                         R20 R12 R19
      332 FORGLOOP                         R14 2 ; [-43]
      334 GETTABLEKS                       R14 R1 K81 ["onAddReaction"]
      336 JUMPIFEQKNIL                     R14 ; [+10]
      338 ADDK                             R13 R13 K12 [1]
      339 GETUPVAL                         R14 5
      340 MOVE                             R15 R0
      341 GETTABLEKS                       R16 R1 K81 ["onAddReaction"]
      343 MOVE                             R17 R13
      344 CALL                             R14 3 1
      345 SETTABLEKS                       R14 R12 K97 ["Add"]
      347 DUPTABLE                         R14 K98 [{"Left"}]
      348 GETUPVAL                         R15 1
      349 GETUPVAL                         R16 2
      350 GETTABLEKS                       R16 R16 K33 ["View"]
      352 DUPTABLE                         R17 K99 [{"Position", "AnchorPoint", "AutomaticSize", "Size", "layout"}]
      353 GETIMPORT                        R18 K59 [UDim2.fromScale]
      355 LOADN                            R19 0
      356 LOADK                            R20 K57 [0.5]
      357 CALL                             R18 2 1
      358 SETTABLEKS                       R18 R17 K34 ["Position"]
      360 GETIMPORT                        R18 K56 [Vector2.new]
      362 LOADN                            R19 0
      363 LOADK                            R20 K57 [0.5]
      364 CALL                             R18 2 1
      365 SETTABLEKS                       R18 R17 K53 ["AnchorPoint"]
      367 GETIMPORT                        R18 K21 [Enum.AutomaticSize.X]
      369 SETTABLEKS                       R18 R17 K13 ["AutomaticSize"]
      371 GETIMPORT                        R18 K24 [UDim2.new]
      373 LOADN                            R19 0
      374 LOADN                            R20 0
      375 LOADN                            R21 1
      376 LOADN                            R22 0
      377 CALL                             R18 4 1
      378 SETTABLEKS                       R18 R17 K14 ["Size"]
      380 DUPTABLE                         R18 K101 [{"FillDirection", "VerticalAlignment", "SortOrder", "Padding"}]
      381 GETIMPORT                        R19 K47 [Enum.FillDirection.Horizontal]
      383 SETTABLEKS                       R19 R18 K41 ["FillDirection"]
      385 GETIMPORT                        R19 K49 [Enum.VerticalAlignment.Center]
      387 SETTABLEKS                       R19 R18 K42 ["VerticalAlignment"]
      389 GETIMPORT                        R19 K52 [Enum.SortOrder.LayoutOrder]
      391 SETTABLEKS                       R19 R18 K44 ["SortOrder"]
      393 GETIMPORT                        R19 K103 [UDim.new]
      395 LOADN                            R20 0
      396 GETTABLEKS                       R21 R0 K104 ["Gap"]
      398 GETTABLEKS                       R21 R21 K105 ["XSmall"]
      400 CALL                             R19 2 1
      401 SETTABLEKS                       R19 R18 K100 ["Padding"]
      403 SETTABLEKS                       R18 R17 K35 ["layout"]
      405 MOVE                             R18 R12
      406 CALL                             R15 3 1
      407 SETTABLEKS                       R15 R14 K50 ["Left"]
      409 GETTABLEKS                       R15 R1 K82 ["onReply"]
      411 JUMPIFEQKNIL                     R15 ; [+55]
      413 GETUPVAL                         R15 1
      414 GETUPVAL                         R16 2
      415 GETTABLEKS                       R16 R16 K33 ["View"]
      417 DUPTABLE                         R17 K106 [{"AnchorPoint", "Position", "AutomaticSize", "Size"}]
      418 GETIMPORT                        R18 K56 [Vector2.new]
      420 LOADN                            R19 1
      421 LOADK                            R20 K57 [0.5]
      422 CALL                             R18 2 1
      423 SETTABLEKS                       R18 R17 K53 ["AnchorPoint"]
      425 GETIMPORT                        R18 K59 [UDim2.fromScale]
      427 LOADN                            R19 1
      428 LOADK                            R20 K57 [0.5]
      429 CALL                             R18 2 1
      430 SETTABLEKS                       R18 R17 K34 ["Position"]
      432 GETIMPORT                        R18 K21 [Enum.AutomaticSize.X]
      434 SETTABLEKS                       R18 R17 K13 ["AutomaticSize"]
      436 GETIMPORT                        R18 K24 [UDim2.new]
      438 LOADN                            R19 0
      439 LOADN                            R20 0
      440 LOADN                            R21 0
      441 GETTABLEKS                       R22 R0 K14 ["Size"]
      443 GETTABLEKS                       R22 R22 K107 ["Size_600"]
      445 CALL                             R18 4 1
      446 SETTABLEKS                       R18 R17 K14 ["Size"]
      448 DUPTABLE                         R18 K109 [{"Chip"}]
      449 GETUPVAL                         R19 4
      450 MOVE                             R20 R0
      451 DUPTABLE                         R21 K113 [{["testId"] = "--appkit-comment-reply", ["leadingIcon"] = "arrow-thick-to-left", ["text"], ["onActivated"]}]
      452 GETTABLEKS                       R23 R1 K115 ["replyLabel"]
      454 ORK                              R22 R23 K114 ["Reply"]
      455 SETTABLEKS                       R22 R21 K87 ["text"]
      457 GETTABLEKS                       R22 R1 K82 ["onReply"]
      459 SETTABLEKS                       R22 R21 K65 ["onActivated"]
      461 CALL                             R19 2 1
      462 SETTABLEKS                       R19 R18 K108 ["Chip"]
      464 CALL                             R15 3 1
      465 SETTABLEKS                       R15 R14 K114 ["Reply"]
      467 GETUPVAL                         R15 1
      468 GETUPVAL                         R16 2
      469 GETTABLEKS                       R16 R16 K33 ["View"]
      471 DUPTABLE                         R17 K118 [{["LayoutOrder"] = 3, ["Size"], ["padding"]}]
      472 GETIMPORT                        R18 K24 [UDim2.new]
      474 LOADN                            R19 1
      475 LOADN                            R20 0
      476 LOADN                            R21 0
      477 GETTABLEKS                       R22 R0 K14 ["Size"]
      479 GETTABLEKS                       R22 R22 K60 ["Size_800"]
      481 CALL                             R18 4 1
      482 SETTABLEKS                       R18 R17 K14 ["Size"]
      484 DUPTABLE                         R18 K120 [{"top"}]
      485 GETIMPORT                        R19 K103 [UDim.new]
      487 LOADN                            R20 0
      488 GETTABLEKS                       R21 R0 K100 ["Padding"]
      490 GETTABLEKS                       R21 R21 K105 ["XSmall"]
      492 CALL                             R19 2 1
      493 SETTABLEKS                       R19 R18 K119 ["top"]
      495 SETTABLEKS                       R18 R17 K117 ["padding"]
      497 MOVE                             R18 R14
      498 CALL                             R15 3 1
      499 SETTABLEKS                       R15 R10 K121 ["Actions"]
      501 GETUPVAL                         R12 1
      502 GETUPVAL                         R13 2
      503 GETTABLEKS                       R13 R13 K33 ["View"]
      505 DUPTABLE                         R14 K123 [{["testId"] = "--appkit-comment", ["LayoutOrder"], ["Size"], ["AutomaticSize"], ["layout"]}]
      506 MOVE                             R15 R4
      507 JUMPIF                           R15 ; [+2]
      508 GETTABLEKS                       R15 R1 K11 ["LayoutOrder"]
      510 SETTABLEKS                       R15 R14 K11 ["LayoutOrder"]
      512 GETIMPORT                        R15 K24 [UDim2.new]
      514 LOADN                            R16 1
      515 LOADN                            R17 0
      516 LOADN                            R18 0
      517 LOADN                            R19 0
      518 CALL                             R15 4 1
      519 SETTABLEKS                       R15 R14 K14 ["Size"]
      521 GETIMPORT                        R15 K79 [Enum.AutomaticSize.Y]
      523 SETTABLEKS                       R15 R14 K13 ["AutomaticSize"]
      525 DUPTABLE                         R15 K125 [{"FillDirection", "VerticalFlex", "SortOrder", "Padding"}]
      526 GETIMPORT                        R16 K47 [Enum.FillDirection.Horizontal]
      528 SETTABLEKS                       R16 R15 K41 ["FillDirection"]
      530 GETIMPORT                        R16 K128 [Enum.UIFlexAlignment.Fill]
      532 SETTABLEKS                       R16 R15 K124 ["VerticalFlex"]
      534 GETIMPORT                        R16 K52 [Enum.SortOrder.LayoutOrder]
      536 SETTABLEKS                       R16 R15 K44 ["SortOrder"]
      538 GETIMPORT                        R16 K103 [UDim.new]
      540 LOADN                            R17 0
      541 GETTABLEKS                       R18 R2 K129 ["gutter"]
      543 CALL                             R16 2 1
      544 SETTABLEKS                       R16 R15 K100 ["Padding"]
      546 SETTABLEKS                       R15 R14 K35 ["layout"]
      548 DUPTABLE                         R15 K131 [{"Avatar", "Body"}]
      549 SETTABLEKS                       R6 R15 K130 ["Avatar"]
      551 GETUPVAL                         R16 1
      552 GETUPVAL                         R17 2
      553 GETTABLEKS                       R17 R17 K33 ["View"]
      555 DUPTABLE                         R18 K132 [{["LayoutOrder"] = 2, ["Size"], ["AutomaticSize"], ["layout"]}]
      556 GETIMPORT                        R19 K24 [UDim2.new]
      558 LOADN                            R20 1
      559 GETTABLEKS                       R23 R2 K129 ["gutter"]
      561 ADD                              R22 R5 R23
      562 MINUS                            R21 R22
      563 LOADN                            R22 0
      564 LOADN                            R23 0
      565 CALL                             R19 4 1
      566 SETTABLEKS                       R19 R18 K14 ["Size"]
      568 GETIMPORT                        R19 K79 [Enum.AutomaticSize.Y]
      570 SETTABLEKS                       R19 R18 K13 ["AutomaticSize"]
      572 DUPTABLE                         R19 K133 [{"FillDirection", "SortOrder", "Padding"}]
      573 GETIMPORT                        R20 K135 [Enum.FillDirection.Vertical]
      575 SETTABLEKS                       R20 R19 K41 ["FillDirection"]
      577 GETIMPORT                        R20 K52 [Enum.SortOrder.LayoutOrder]
      579 SETTABLEKS                       R20 R19 K44 ["SortOrder"]
      581 GETIMPORT                        R20 K103 [UDim.new]
      583 LOADN                            R21 0
      584 GETTABLEKS                       R22 R0 K104 ["Gap"]
      586 GETTABLEKS                       R22 R22 K136 ["XXSmall"]
      588 CALL                             R20 2 1
      589 SETTABLEKS                       R20 R19 K100 ["Padding"]
      591 SETTABLEKS                       R19 R18 K35 ["layout"]
      593 MOVE                             R19 R10
      594 CALL                             R16 3 1
      595 SETTABLEKS                       R16 R15 K71 ["Body"]
      597 CALL                             R12 3 -1
      598 RETURN                           R12 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 MOVE                             R3 R1
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R3 R0 K2 ["replies"]
       11 JUMPIFEQKNIL                     R3 ; [+6]
       13 GETTABLEKS                       R4 R0 K2 ["replies"]
       15 LENGTH                           R3 R4
       16 JUMPIFNOTEQKN                    R3 K3 [0] ; [+20]
       18 GETUPVAL                         R3 2
       19 MOVE                             R4 R1
       20 MOVE                             R5 R0
       21 MOVE                             R6 R2
       22 DUPTABLE                         R7 K7 [{"isReply", "isFirstReply", "hasReply"}]
       23 GETTABLEKS                       R8 R0 K4 ["isReply"]
       25 SETTABLEKS                       R8 R7 K4 ["isReply"]
       27 GETTABLEKS                       R8 R0 K5 ["isFirstReply"]
       29 SETTABLEKS                       R8 R7 K5 ["isFirstReply"]
       31 GETTABLEKS                       R8 R0 K6 ["hasReply"]
       33 SETTABLEKS                       R8 R7 K6 ["hasReply"]
       35 CALL                             R3 4 -1
       36 RETURN                           R3 -1
       37 DUPTABLE                         R3 K9 [{"Parent"}]
       38 GETUPVAL                         R4 2
       39 MOVE                             R5 R1
       40 MOVE                             R6 R0
       41 MOVE                             R7 R2
       42 DUPTABLE                         R8 K11 [{["hasReply"] = True}]
       43 LOADN                            R9 1
       44 CALL                             R4 5 1
       45 SETTABLEKS                       R4 R3 K8 ["Parent"]
       47 GETTABLEKS                       R4 R0 K2 ["replies"]
       49 LOADNIL                          R5
       50 LOADNIL                          R6
       51 FORGPREP                         R4
       52 DUPTABLE                         R9 K24 [{"user", "timestamp", "label", "body", "userId", "avatarInitials", "userPresence", "reactions", "onAddReaction", "onReply", "replyLabel", "onOverflowClick"}]
       53 GETTABLEKS                       R10 R8 K12 ["user"]
       55 SETTABLEKS                       R10 R9 K12 ["user"]
       57 GETTABLEKS                       R10 R8 K13 ["timestamp"]
       59 SETTABLEKS                       R10 R9 K13 ["timestamp"]
       61 GETTABLEKS                       R10 R8 K14 ["label"]
       63 SETTABLEKS                       R10 R9 K14 ["label"]
       65 GETTABLEKS                       R10 R8 K15 ["body"]
       67 SETTABLEKS                       R10 R9 K15 ["body"]
       69 GETTABLEKS                       R10 R8 K16 ["userId"]
       71 SETTABLEKS                       R10 R9 K16 ["userId"]
       73 GETTABLEKS                       R10 R8 K17 ["avatarInitials"]
       75 SETTABLEKS                       R10 R9 K17 ["avatarInitials"]
       77 GETTABLEKS                       R10 R8 K18 ["userPresence"]
       79 SETTABLEKS                       R10 R9 K18 ["userPresence"]
       81 GETTABLEKS                       R10 R8 K19 ["reactions"]
       83 SETTABLEKS                       R10 R9 K19 ["reactions"]
       85 GETTABLEKS                       R10 R8 K20 ["onAddReaction"]
       87 SETTABLEKS                       R10 R9 K20 ["onAddReaction"]
       89 GETTABLEKS                       R10 R8 K21 ["onReply"]
       91 SETTABLEKS                       R10 R9 K21 ["onReply"]
       93 GETTABLEKS                       R10 R8 K22 ["replyLabel"]
       95 SETTABLEKS                       R10 R9 K22 ["replyLabel"]
       97 GETTABLEKS                       R10 R8 K23 ["onOverflowClick"]
       99 SETTABLEKS                       R10 R9 K23 ["onOverflowClick"]
      101 LOADK                            R11 K25 ["reply_%*"]
      102 MOVE                             R13 R7
      103 NAMECALL                         R11 R11 K26 ["format"]
      105 CALL                             R11 2 1
      106 MOVE                             R10 R11
      107 GETUPVAL                         R11 2
      108 MOVE                             R12 R1
      109 MOVE                             R13 R9
      110 MOVE                             R14 R2
      111 DUPTABLE                         R15 K27 [{["isReply"] = True, ["isFirstReply"], ["hasReply"]}]
      112 JUMPIFEQKN                       R7 K28 [1] ; [+2]
      114 LOADB                            R16 0 +1
      115 LOADB                            R16 1
      116 SETTABLEKS                       R16 R15 K5 ["isFirstReply"]
      118 GETTABLEKS                       R18 R0 K2 ["replies"]
      120 LENGTH                           R17 R18
      121 JUMPIFLT                         R7 R17 ; [+2]
      123 LOADB                            R16 0 +1
      124 LOADB                            R16 1
      125 SETTABLEKS                       R16 R15 K6 ["hasReply"]
      127 ADDK                             R16 R7 K28 [1]
      128 CALL                             R11 5 1
      129 SETTABLE                         R11 R3 R10
      130 FORGLOOP                         R4 2 ; [-79]
      132 GETUPVAL                         R4 3
      133 GETUPVAL                         R5 0
      134 GETTABLEKS                       R5 R5 K29 ["View"]
      136 DUPTABLE                         R6 K34 [{"LayoutOrder", "Size", "AutomaticSize", "layout"}]
      137 GETTABLEKS                       R7 R0 K30 ["LayoutOrder"]
      139 SETTABLEKS                       R7 R6 K30 ["LayoutOrder"]
      141 GETIMPORT                        R7 K37 [UDim2.new]
      143 LOADN                            R8 1
      144 LOADN                            R9 0
      145 LOADN                            R10 0
      146 LOADN                            R11 0
      147 CALL                             R7 4 1
      148 SETTABLEKS                       R7 R6 K31 ["Size"]
      150 GETIMPORT                        R7 K40 [Enum.AutomaticSize.Y]
      152 SETTABLEKS                       R7 R6 K32 ["AutomaticSize"]
      154 DUPTABLE                         R7 K44 [{"FillDirection", "HorizontalAlignment", "SortOrder"}]
      155 GETIMPORT                        R8 K46 [Enum.FillDirection.Vertical]
      157 SETTABLEKS                       R8 R7 K41 ["FillDirection"]
      159 GETIMPORT                        R8 K48 [Enum.HorizontalAlignment.Left]
      161 SETTABLEKS                       R8 R7 K42 ["HorizontalAlignment"]
      163 GETIMPORT                        R8 K49 [Enum.SortOrder.LayoutOrder]
      165 SETTABLEKS                       R8 R7 K43 ["SortOrder"]
      167 SETTABLEKS                       R7 R6 K33 ["layout"]
      169 MOVE                             R7 R3
      170 CALL                             R4 3 -1
      171 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 FASTCALL2K                       ASSERT R0 K4 ; [+5]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K4 ["AppFramework.Comment must run inside the DesignAssist plugin tree"]
       11 GETIMPORT                        R1 K6 [assert]
       13 CALL                             R1 2 0
       14 GETIMPORT                        R1 K8 [require]
       16 GETTABLEKS                       R2 R0 K9 ["Packages"]
       18 GETTABLEKS                       R2 R2 K10 ["React"]
       20 CALL                             R1 1 1
       21 GETIMPORT                        R2 K8 [require]
       23 GETTABLEKS                       R3 R0 K9 ["Packages"]
       25 GETTABLEKS                       R3 R3 K11 ["Foundation"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K8 [require]
       30 GETIMPORT                        R4 K1 [script]
       32 GETTABLEKS                       R4 R4 K12 ["Parent"]
       34 GETTABLEKS                       R4 R4 K13 ["ChatBubble"]
       36 CALL                             R3 1 1
       37 GETIMPORT                        R4 K8 [require]
       39 GETIMPORT                        R5 K1 [script]
       41 GETTABLEKS                       R5 R5 K12 ["Parent"]
       43 GETTABLEKS                       R5 R5 K14 ["UtilityButton"]
       45 CALL                             R4 1 1
       46 GETTABLEKS                       R5 R1 K15 ["createElement"]
       48 DUPCLOSURE                       R6 K16 [PROTO_0]
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R2
       51 DUPCLOSURE                       R7 K17 [PROTO_1]
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R2
       54 DUPCLOSURE                       R8 K18 [PROTO_2]
       55 DUPCLOSURE                       R9 K19 [PROTO_3]
       56 CAPTURE                          VAL R5
       57 DUPCLOSURE                       R10 K20 [PROTO_4]
       58 CAPTURE                          VAL R5
       59 DUPCLOSURE                       R11 K21 [PROTO_5]
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R10
       64 DUPCLOSURE                       R12 K22 [PROTO_6]
       65 CAPTURE                          VAL R11
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R7
       71 DUPCLOSURE                       R13 K23 [PROTO_7]
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R12
       75 CAPTURE                          VAL R5
       76 RETURN                           R13 1
