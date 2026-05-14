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
       29 DUPTABLE                         R6 K15 [{"name", "story"}]
       30 LOADK                            R7 K16 ["Default Button"]
       31 SETTABLEKS                       R7 R6 K13 ["name"]
       33 GETTABLEKS                       R7 R1 K17 ["createElement"]
       35 MOVE                             R8 R2
       36 NEWTABLE                         R9 4 0
       38 LOADK                            R10 K18 ["PointingHand"]
       39 SETTABLEKS                       R10 R9 K19 ["Cursor"]
       41 SETTABLEKS                       R3 R9 K20 ["OnClick"]
       43 LOADK                            R10 K16 ["Default Button"]
       44 SETTABLEKS                       R10 R9 K21 ["Text"]
       46 GETTABLEKS                       R10 R1 K22 ["Tag"]
       48 LOADK                            R11 K23 ["X-Fit"]
       49 SETTABLE                         R11 R9 R10
       50 CALL                             R7 2 1
       51 SETTABLEKS                       R7 R6 K14 ["story"]
       53 DUPTABLE                         R7 K15 [{"name", "story"}]
       54 LOADK                            R8 K24 ["Primary Brand Button"]
       55 SETTABLEKS                       R8 R7 K13 ["name"]
       57 GETTABLEKS                       R8 R1 K17 ["createElement"]
       59 MOVE                             R9 R2
       60 NEWTABLE                         R10 4 0
       62 LOADK                            R11 K18 ["PointingHand"]
       63 SETTABLEKS                       R11 R10 K19 ["Cursor"]
       65 SETTABLEKS                       R3 R10 K20 ["OnClick"]
       67 LOADK                            R11 K25 ["PrimaryBrand Button"]
       68 SETTABLEKS                       R11 R10 K21 ["Text"]
       70 GETTABLEKS                       R11 R1 K22 ["Tag"]
       72 LOADK                            R12 K26 ["PrimaryBrand X-Fit"]
       73 SETTABLE                         R12 R10 R11
       74 CALL                             R8 2 1
       75 SETTABLEKS                       R8 R7 K14 ["story"]
       77 DUPTABLE                         R8 K15 [{"name", "story"}]
       78 LOADK                            R9 K27 ["Primary Button"]
       79 SETTABLEKS                       R9 R8 K13 ["name"]
       81 GETTABLEKS                       R9 R1 K17 ["createElement"]
       83 MOVE                             R10 R2
       84 NEWTABLE                         R11 4 0
       86 LOADK                            R12 K18 ["PointingHand"]
       87 SETTABLEKS                       R12 R11 K19 ["Cursor"]
       89 SETTABLEKS                       R3 R11 K20 ["OnClick"]
       91 LOADK                            R12 K27 ["Primary Button"]
       92 SETTABLEKS                       R12 R11 K21 ["Text"]
       94 GETTABLEKS                       R12 R1 K22 ["Tag"]
       96 LOADK                            R13 K28 ["Primary X-Fit"]
       97 SETTABLE                         R13 R11 R12
       98 CALL                             R9 2 1
       99 SETTABLEKS                       R9 R8 K14 ["story"]
      101 DUPTABLE                         R9 K15 [{"name", "story"}]
      102 LOADK                            R10 K29 ["Secondary Button"]
      103 SETTABLEKS                       R10 R9 K13 ["name"]
      105 GETTABLEKS                       R10 R1 K17 ["createElement"]
      107 MOVE                             R11 R2
      108 NEWTABLE                         R12 4 0
      110 LOADK                            R13 K18 ["PointingHand"]
      111 SETTABLEKS                       R13 R12 K19 ["Cursor"]
      113 SETTABLEKS                       R3 R12 K20 ["OnClick"]
      115 LOADK                            R13 K29 ["Secondary Button"]
      116 SETTABLEKS                       R13 R12 K21 ["Text"]
      118 GETTABLEKS                       R13 R1 K22 ["Tag"]
      120 LOADK                            R14 K30 ["Secondary X-Fit"]
      121 SETTABLE                         R14 R12 R13
      122 CALL                             R10 2 1
      123 SETTABLEKS                       R10 R9 K14 ["story"]
      125 DUPTABLE                         R10 K15 [{"name", "story"}]
      126 LOADK                            R11 K31 ["Custom Color"]
      127 SETTABLEKS                       R11 R10 K13 ["name"]
      129 GETTABLEKS                       R11 R1 K17 ["createElement"]
      131 MOVE                             R12 R2
      132 NEWTABLE                         R13 8 0
      134 GETIMPORT                        R14 K34 [Color3.fromRGB]
      136 LOADN                            R15 200
      137 LOADN                            R16 100
      138 LOADN                            R17 100
      139 CALL                             R14 3 1
      140 SETTABLEKS                       R14 R13 K35 ["BackgroundColor3"]
      142 LOADK                            R14 K18 ["PointingHand"]
      143 SETTABLEKS                       R14 R13 K19 ["Cursor"]
      145 SETTABLEKS                       R3 R13 K20 ["OnClick"]
      147 LOADK                            R14 K36 ["Custom Button"]
      148 SETTABLEKS                       R14 R13 K21 ["Text"]
      150 GETTABLEKS                       R14 R1 K22 ["Tag"]
      152 LOADK                            R15 K23 ["X-Fit"]
      153 SETTABLE                         R15 R13 R14
      154 CALL                             R11 2 1
      155 SETTABLEKS                       R11 R10 K14 ["story"]
      157 DUPTABLE                         R11 K15 [{"name", "story"}]
      158 LOADK                            R12 K37 ["Button with Tooltip"]
      159 SETTABLEKS                       R12 R11 K13 ["name"]
      161 GETTABLEKS                       R12 R1 K17 ["createElement"]
      163 MOVE                             R13 R2
      164 NEWTABLE                         R14 8 0
      166 LOADK                            R15 K38 ["rbxasset://textures/ui/common/robux_color@2x.png"]
      167 SETTABLEKS                       R15 R14 K39 ["LeftIcon"]
      169 LOADK                            R15 K18 ["PointingHand"]
      170 SETTABLEKS                       R15 R14 K19 ["Cursor"]
      172 SETTABLEKS                       R3 R14 K20 ["OnClick"]
      174 LOADK                            R15 K40 ["Hover over me"]
      175 SETTABLEKS                       R15 R14 K21 ["Text"]
      177 LOADK                            R15 K41 ["This is a button tooltip"]
      178 SETTABLEKS                       R15 R14 K42 ["TooltipText"]
      180 GETTABLEKS                       R15 R1 K22 ["Tag"]
      182 LOADK                            R16 K23 ["X-Fit"]
      183 SETTABLE                         R16 R14 R15
      184 CALL                             R12 2 1
      185 SETTABLEKS                       R12 R11 K14 ["story"]
      187 DUPTABLE                         R12 K15 [{"name", "story"}]
      188 LOADK                            R13 K43 ["Disabled"]
      189 SETTABLEKS                       R13 R12 K13 ["name"]
      191 GETTABLEKS                       R13 R1 K17 ["createElement"]
      193 MOVE                             R14 R2
      194 NEWTABLE                         R15 2 0
      196 LOADK                            R16 K43 ["Disabled"]
      197 SETTABLEKS                       R16 R15 K21 ["Text"]
      199 GETTABLEKS                       R16 R1 K22 ["Tag"]
      201 LOADK                            R17 K44 ["X-Fit Disabled"]
      202 SETTABLE                         R17 R15 R16
      203 CALL                             R13 2 1
      204 SETTABLEKS                       R13 R12 K14 ["story"]
      206 DUPTABLE                         R13 K15 [{"name", "story"}]
      207 LOADK                            R14 K45 ["IconOnly"]
      208 SETTABLEKS                       R14 R13 K13 ["name"]
      210 GETTABLEKS                       R14 R1 K17 ["createElement"]
      212 MOVE                             R15 R2
      213 NEWTABLE                         R16 4 0
      215 LOADK                            R17 K38 ["rbxasset://textures/ui/common/robux_color@2x.png"]
      216 SETTABLEKS                       R17 R16 K39 ["LeftIcon"]
      218 LOADK                            R17 K18 ["PointingHand"]
      219 SETTABLEKS                       R17 R16 K19 ["Cursor"]
      221 SETTABLEKS                       R3 R16 K20 ["OnClick"]
      223 GETTABLEKS                       R17 R1 K22 ["Tag"]
      225 LOADK                            R18 K23 ["X-Fit"]
      226 SETTABLE                         R18 R16 R17
      227 CALL                             R14 2 1
      228 SETTABLEKS                       R14 R13 K14 ["story"]
      230 DUPTABLE                         R14 K15 [{"name", "story"}]
      231 LOADK                            R15 K46 ["NoOnClick"]
      232 SETTABLEKS                       R15 R14 K13 ["name"]
      234 GETTABLEKS                       R15 R1 K17 ["createElement"]
      236 MOVE                             R16 R2
      237 NEWTABLE                         R17 4 0
      239 GETIMPORT                        R18 K50 [Enum.TextXAlignment.Center]
      241 SETTABLEKS                       R18 R17 K48 ["TextXAlignment"]
      243 LOADK                            R18 K51 ["No OnClick Passed"]
      244 SETTABLEKS                       R18 R17 K21 ["Text"]
      246 GETTABLEKS                       R18 R1 K22 ["Tag"]
      248 LOADK                            R19 K23 ["X-Fit"]
      249 SETTABLE                         R19 R17 R18
      250 CALL                             R15 2 1
      251 SETTABLEKS                       R15 R14 K14 ["story"]
      253 DUPTABLE                         R15 K15 [{"name", "story"}]
      254 LOADK                            R16 K52 ["RightIcon"]
      255 SETTABLEKS                       R16 R15 K13 ["name"]
      257 GETTABLEKS                       R16 R1 K17 ["createElement"]
      259 MOVE                             R17 R2
      260 NEWTABLE                         R18 4 0
      262 SETTABLEKS                       R3 R18 K20 ["OnClick"]
      264 LOADK                            R19 K38 ["rbxasset://textures/ui/common/robux_color@2x.png"]
      265 SETTABLEKS                       R19 R18 K52 ["RightIcon"]
      267 LOADK                            R19 K21 ["Text"]
      268 SETTABLEKS                       R19 R18 K21 ["Text"]
      270 GETTABLEKS                       R19 R1 K22 ["Tag"]
      272 LOADK                            R20 K23 ["X-Fit"]
      273 SETTABLE                         R20 R18 R19
      274 CALL                             R16 2 1
      275 SETTABLEKS                       R16 R15 K14 ["story"]
      277 DUPTABLE                         R16 K15 [{"name", "story"}]
      278 LOADK                            R17 K53 ["Link"]
      279 SETTABLEKS                       R17 R16 K13 ["name"]
      281 GETTABLEKS                       R17 R1 K17 ["createElement"]
      283 MOVE                             R18 R2
      284 NEWTABLE                         R19 8 0
      286 LOADK                            R20 K18 ["PointingHand"]
      287 SETTABLEKS                       R20 R19 K19 ["Cursor"]
      289 LOADK                            R20 K38 ["rbxasset://textures/ui/common/robux_color@2x.png"]
      290 SETTABLEKS                       R20 R19 K39 ["LeftIcon"]
      292 SETTABLEKS                       R3 R19 K20 ["OnClick"]
      294 LOADK                            R20 K54 ["Link style"]
      295 SETTABLEKS                       R20 R19 K21 ["Text"]
      297 GETTABLEKS                       R20 R1 K22 ["Tag"]
      299 LOADK                            R21 K55 ["X-Fit Link"]
      300 SETTABLE                         R21 R19 R20
      301 CALL                             R17 2 1
      302 SETTABLEKS                       R17 R16 K14 ["story"]
      304 SETLIST                          R5 R6 11 [1]
      306 SETTABLEKS                       R5 R4 K11 ["stories"]
      308 RETURN                           R4 1
