PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["IconButton clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["Components"]
       22 GETTABLEKS                       R3 R3 K9 ["IconButton"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K10 [PROTO_0]
       26 DUPTABLE                         R4 K12 [{"stories"}]
       27 NEWTABLE                         R5 0 11
       29 DUPTABLE                         R6 K16 [{["name"] = "Default Button", ["story"]}]
       30 GETTABLEKS                       R7 R1 K17 ["createElement"]
       32 MOVE                             R8 R2
       33 NEWTABLE                         R9 4 0
       35 LOADK                            R10 K18 ["PointingHand"]
       36 SETTABLEKS                       R10 R9 K19 ["Cursor"]
       38 SETTABLEKS                       R3 R9 K20 ["OnClick"]
       40 LOADK                            R10 K14 ["Default Button"]
       41 SETTABLEKS                       R10 R9 K21 ["Text"]
       43 GETTABLEKS                       R10 R1 K22 ["Tag"]
       45 LOADK                            R11 K23 ["X-Fit"]
       46 SETTABLE                         R11 R9 R10
       47 CALL                             R7 2 1
       48 SETTABLEKS                       R7 R6 K15 ["story"]
       50 DUPTABLE                         R7 K25 [{["name"] = "Primary Brand Button", ["story"]}]
       51 GETTABLEKS                       R8 R1 K17 ["createElement"]
       53 MOVE                             R9 R2
       54 NEWTABLE                         R10 4 0
       56 LOADK                            R11 K18 ["PointingHand"]
       57 SETTABLEKS                       R11 R10 K19 ["Cursor"]
       59 SETTABLEKS                       R3 R10 K20 ["OnClick"]
       61 LOADK                            R11 K26 ["PrimaryBrand Button"]
       62 SETTABLEKS                       R11 R10 K21 ["Text"]
       64 GETTABLEKS                       R11 R1 K22 ["Tag"]
       66 LOADK                            R12 K27 ["PrimaryBrand X-Fit"]
       67 SETTABLE                         R12 R10 R11
       68 CALL                             R8 2 1
       69 SETTABLEKS                       R8 R7 K15 ["story"]
       71 DUPTABLE                         R8 K29 [{["name"] = "Primary Button", ["story"]}]
       72 GETTABLEKS                       R9 R1 K17 ["createElement"]
       74 MOVE                             R10 R2
       75 NEWTABLE                         R11 4 0
       77 LOADK                            R12 K18 ["PointingHand"]
       78 SETTABLEKS                       R12 R11 K19 ["Cursor"]
       80 SETTABLEKS                       R3 R11 K20 ["OnClick"]
       82 LOADK                            R12 K28 ["Primary Button"]
       83 SETTABLEKS                       R12 R11 K21 ["Text"]
       85 GETTABLEKS                       R12 R1 K22 ["Tag"]
       87 LOADK                            R13 K30 ["Primary X-Fit"]
       88 SETTABLE                         R13 R11 R12
       89 CALL                             R9 2 1
       90 SETTABLEKS                       R9 R8 K15 ["story"]
       92 DUPTABLE                         R9 K32 [{["name"] = "Secondary Button", ["story"]}]
       93 GETTABLEKS                       R10 R1 K17 ["createElement"]
       95 MOVE                             R11 R2
       96 NEWTABLE                         R12 4 0
       98 LOADK                            R13 K18 ["PointingHand"]
       99 SETTABLEKS                       R13 R12 K19 ["Cursor"]
      101 SETTABLEKS                       R3 R12 K20 ["OnClick"]
      103 LOADK                            R13 K31 ["Secondary Button"]
      104 SETTABLEKS                       R13 R12 K21 ["Text"]
      106 GETTABLEKS                       R13 R1 K22 ["Tag"]
      108 LOADK                            R14 K33 ["Secondary X-Fit"]
      109 SETTABLE                         R14 R12 R13
      110 CALL                             R10 2 1
      111 SETTABLEKS                       R10 R9 K15 ["story"]
      113 DUPTABLE                         R10 K35 [{["name"] = "Custom Color", ["story"]}]
      114 GETTABLEKS                       R11 R1 K17 ["createElement"]
      116 MOVE                             R12 R2
      117 NEWTABLE                         R13 8 0
      119 GETIMPORT                        R14 K38 [Color3.fromRGB]
      121 LOADN                            R15 200
      122 LOADN                            R16 100
      123 LOADN                            R17 100
      124 CALL                             R14 3 1
      125 SETTABLEKS                       R14 R13 K39 ["BackgroundColor3"]
      127 LOADK                            R14 K18 ["PointingHand"]
      128 SETTABLEKS                       R14 R13 K19 ["Cursor"]
      130 SETTABLEKS                       R3 R13 K20 ["OnClick"]
      132 LOADK                            R14 K40 ["Custom Button"]
      133 SETTABLEKS                       R14 R13 K21 ["Text"]
      135 GETTABLEKS                       R14 R1 K22 ["Tag"]
      137 LOADK                            R15 K23 ["X-Fit"]
      138 SETTABLE                         R15 R13 R14
      139 CALL                             R11 2 1
      140 SETTABLEKS                       R11 R10 K15 ["story"]
      142 DUPTABLE                         R11 K42 [{["name"] = "Button with Tooltip", ["story"]}]
      143 GETTABLEKS                       R12 R1 K17 ["createElement"]
      145 MOVE                             R13 R2
      146 NEWTABLE                         R14 8 0
      148 LOADK                            R15 K43 ["rbxasset://textures/ui/common/robux_color@2x.png"]
      149 SETTABLEKS                       R15 R14 K44 ["LeftIcon"]
      151 LOADK                            R15 K18 ["PointingHand"]
      152 SETTABLEKS                       R15 R14 K19 ["Cursor"]
      154 SETTABLEKS                       R3 R14 K20 ["OnClick"]
      156 LOADK                            R15 K45 ["Hover over me"]
      157 SETTABLEKS                       R15 R14 K21 ["Text"]
      159 LOADK                            R15 K46 ["This is a button tooltip"]
      160 SETTABLEKS                       R15 R14 K47 ["TooltipText"]
      162 GETTABLEKS                       R15 R1 K22 ["Tag"]
      164 LOADK                            R16 K23 ["X-Fit"]
      165 SETTABLE                         R16 R14 R15
      166 CALL                             R12 2 1
      167 SETTABLEKS                       R12 R11 K15 ["story"]
      169 DUPTABLE                         R12 K49 [{["name"] = "Disabled", ["story"]}]
      170 GETTABLEKS                       R13 R1 K17 ["createElement"]
      172 MOVE                             R14 R2
      173 NEWTABLE                         R15 2 0
      175 LOADK                            R16 K48 ["Disabled"]
      176 SETTABLEKS                       R16 R15 K21 ["Text"]
      178 GETTABLEKS                       R16 R1 K22 ["Tag"]
      180 LOADK                            R17 K50 ["X-Fit Disabled"]
      181 SETTABLE                         R17 R15 R16
      182 CALL                             R13 2 1
      183 SETTABLEKS                       R13 R12 K15 ["story"]
      185 DUPTABLE                         R13 K52 [{["name"] = "IconOnly", ["story"]}]
      186 GETTABLEKS                       R14 R1 K17 ["createElement"]
      188 MOVE                             R15 R2
      189 NEWTABLE                         R16 4 0
      191 LOADK                            R17 K43 ["rbxasset://textures/ui/common/robux_color@2x.png"]
      192 SETTABLEKS                       R17 R16 K44 ["LeftIcon"]
      194 LOADK                            R17 K18 ["PointingHand"]
      195 SETTABLEKS                       R17 R16 K19 ["Cursor"]
      197 SETTABLEKS                       R3 R16 K20 ["OnClick"]
      199 GETTABLEKS                       R17 R1 K22 ["Tag"]
      201 LOADK                            R18 K23 ["X-Fit"]
      202 SETTABLE                         R18 R16 R17
      203 CALL                             R14 2 1
      204 SETTABLEKS                       R14 R13 K15 ["story"]
      206 DUPTABLE                         R14 K54 [{["name"] = "NoOnClick", ["story"]}]
      207 GETTABLEKS                       R15 R1 K17 ["createElement"]
      209 MOVE                             R16 R2
      210 NEWTABLE                         R17 4 0
      212 GETIMPORT                        R18 K58 [Enum.TextXAlignment.Center]
      214 SETTABLEKS                       R18 R17 K56 ["TextXAlignment"]
      216 LOADK                            R18 K59 ["No OnClick Passed"]
      217 SETTABLEKS                       R18 R17 K21 ["Text"]
      219 GETTABLEKS                       R18 R1 K22 ["Tag"]
      221 LOADK                            R19 K23 ["X-Fit"]
      222 SETTABLE                         R19 R17 R18
      223 CALL                             R15 2 1
      224 SETTABLEKS                       R15 R14 K15 ["story"]
      226 DUPTABLE                         R15 K61 [{["name"] = "RightIcon", ["story"]}]
      227 GETTABLEKS                       R16 R1 K17 ["createElement"]
      229 MOVE                             R17 R2
      230 NEWTABLE                         R18 4 0
      232 SETTABLEKS                       R3 R18 K20 ["OnClick"]
      234 LOADK                            R19 K43 ["rbxasset://textures/ui/common/robux_color@2x.png"]
      235 SETTABLEKS                       R19 R18 K60 ["RightIcon"]
      237 LOADK                            R19 K21 ["Text"]
      238 SETTABLEKS                       R19 R18 K21 ["Text"]
      240 GETTABLEKS                       R19 R1 K22 ["Tag"]
      242 LOADK                            R20 K23 ["X-Fit"]
      243 SETTABLE                         R20 R18 R19
      244 CALL                             R16 2 1
      245 SETTABLEKS                       R16 R15 K15 ["story"]
      247 DUPTABLE                         R16 K63 [{["name"] = "Link", ["story"]}]
      248 GETTABLEKS                       R17 R1 K17 ["createElement"]
      250 MOVE                             R18 R2
      251 NEWTABLE                         R19 8 0
      253 LOADK                            R20 K18 ["PointingHand"]
      254 SETTABLEKS                       R20 R19 K19 ["Cursor"]
      256 LOADK                            R20 K43 ["rbxasset://textures/ui/common/robux_color@2x.png"]
      257 SETTABLEKS                       R20 R19 K44 ["LeftIcon"]
      259 SETTABLEKS                       R3 R19 K20 ["OnClick"]
      261 LOADK                            R20 K64 ["Link style"]
      262 SETTABLEKS                       R20 R19 K21 ["Text"]
      264 GETTABLEKS                       R20 R1 K22 ["Tag"]
      266 LOADK                            R21 K65 ["X-Fit Link"]
      267 SETTABLE                         R21 R19 R20
      268 CALL                             R17 2 1
      269 SETTABLEKS                       R17 R16 K15 ["story"]
      271 SETLIST                          R5 R6 11 [1]
      273 SETTABLEKS                       R5 R4 K11 ["stories"]
      275 RETURN                           R4 1
