PROTO_0:
        0 FASTCALL1                        TONUMBER R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tonumber]
        4 CALL                             R1 1 1
        5 FASTCALL1                        TYPE R1 ; [+3]
        6 MOVE                             R3 R1
        7 GETIMPORT                        R2 K3 [type]
        9 CALL                             R2 1 1
       10 JUMPIFNOTEQKS                    R2 K4 ["number"] ; [+4]
       12 JUMPIFNOTEQ                      R1 R1 ; [+2]
       14 RETURN                           R1 1
       15 LOADN                            R2 1
       16 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"triangleText"}]
        2 SETTABLEKS                       R0 R3 K0 ["triangleText"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"drawcallText"}]
        2 SETTABLEKS                       R0 R3 K0 ["drawcallText"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"totalTaskMsText"}]
        2 SETTABLEKS                       R0 R3 K0 ["totalTaskMsText"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"totalRenderMsText"}]
        2 SETTABLEKS                       R0 R3 K0 ["totalRenderMsText"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 DUPTABLE                         R2 K5 [{"triangleText", "drawcallText", "totalTaskMsText", "totalRenderMsText"}]
        3 GETTABLEKS                       R4 R1 K6 ["MaxTriangles"]
        5 FASTCALL1                        TOSTRING R4 ; [+2]
        6 GETIMPORT                        R3 K8 [tostring]
        8 CALL                             R3 1 1
        9 SETTABLEKS                       R3 R2 K1 ["triangleText"]
       11 GETTABLEKS                       R4 R1 K9 ["MaxDrawCalls"]
       13 FASTCALL1                        TOSTRING R4 ; [+2]
       14 GETIMPORT                        R3 K8 [tostring]
       16 CALL                             R3 1 1
       17 SETTABLEKS                       R3 R2 K2 ["drawcallText"]
       19 GETTABLEKS                       R4 R1 K10 ["MaxTotalTaskMs"]
       21 FASTCALL1                        TOSTRING R4 ; [+2]
       22 GETIMPORT                        R3 K8 [tostring]
       24 CALL                             R3 1 1
       25 SETTABLEKS                       R3 R2 K3 ["totalTaskMsText"]
       27 GETTABLEKS                       R4 R1 K11 ["MaxTotalRenderMs"]
       29 FASTCALL1                        TOSTRING R4 ; [+2]
       30 GETIMPORT                        R3 K8 [tostring]
       32 CALL                             R3 1 1
       33 SETTABLEKS                       R3 R2 K4 ["totalRenderMsText"]
       35 SETTABLEKS                       R2 R0 K12 ["state"]
       37 NEWCLOSURE                       R2 P0
       38 CAPTURE                          VAL R0
       39 SETTABLEKS                       R2 R0 K13 ["setTriangleText"]
       41 NEWCLOSURE                       R2 P1
       42 CAPTURE                          VAL R0
       43 SETTABLEKS                       R2 R0 K14 ["setDrawcallText"]
       45 NEWCLOSURE                       R2 P2
       46 CAPTURE                          VAL R0
       47 SETTABLEKS                       R2 R0 K15 ["setTotalTaskMsText"]
       49 NEWCLOSURE                       R2 P3
       50 CAPTURE                          VAL R0
       51 SETTABLEKS                       R2 R0 K16 ["setTotalRenderMsText"]
       53 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setTriangleText"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["DefaultMaxTriangles"]
        6 FASTCALL1                        TOSTRING R2 ; [+2]
        7 GETIMPORT                        R1 K3 [tostring]
        9 CALL                             R1 1 1
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 0
       12 GETTABLEKS                       R0 R0 K4 ["setDrawcallText"]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K5 ["DefaultMaxDrawCalls"]
       17 FASTCALL1                        TOSTRING R2 ; [+2]
       18 GETIMPORT                        R1 K3 [tostring]
       20 CALL                             R1 1 1
       21 CALL                             R0 1 0
       22 GETUPVAL                         R0 0
       23 GETTABLEKS                       R0 R0 K6 ["setTotalTaskMsText"]
       25 GETUPVAL                         R2 1
       26 GETTABLEKS                       R2 R2 K7 ["DefaultMaxTaskMs"]
       28 FASTCALL1                        TOSTRING R2 ; [+2]
       29 GETIMPORT                        R1 K3 [tostring]
       31 CALL                             R1 1 1
       32 CALL                             R0 1 0
       33 GETUPVAL                         R0 0
       34 GETTABLEKS                       R0 R0 K8 ["setTotalRenderMsText"]
       36 GETUPVAL                         R2 1
       37 GETTABLEKS                       R2 R2 K9 ["DefaultMaxRenderMs"]
       39 FASTCALL1                        TOSTRING R2 ; [+2]
       40 GETIMPORT                        R1 K3 [tostring]
       42 CALL                             R1 1 1
       43 CALL                             R0 1 0
       44 GETUPVAL                         R0 1
       45 GETTABLEKS                       R0 R0 K10 ["OnResetToDefault"]
       47 CALL                             R0 0 0
       48 RETURN                           R0 0

PROTO_7:
        0 FASTCALL1                        TONUMBER R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [tonumber]
        4 CALL                             R2 1 1
        5 FASTCALL1                        TYPE R2 ; [+3]
        6 MOVE                             R4 R2
        7 GETIMPORT                        R3 K3 [type]
        9 CALL                             R3 1 1
       10 JUMPIFNOTEQKS                    R3 K4 ["number"] ; [+5]
       12 JUMPIFNOTEQ                      R2 R2 ; [+3]
       14 MOVE                             R1 R2
       15 JUMP                             ; [+1]
       16 LOADN                            R1 1
       17 LOADN                            R4 1
       18 LOADN                            R5 100
       19 FASTCALL3                        MATH_CLAMP R1 R4 R5
       21 MOVE                             R3 R1
       22 GETIMPORT                        R2 K7 [math.clamp]
       24 CALL                             R2 3 1
       25 MOVE                             R1 R2
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K8 ["OnSettingsUpdated"]
       29 DUPTABLE                         R3 K10 [{"maxTotalRenderMs"}]
       30 SETTABLEKS                       R1 R3 K9 ["maxTotalRenderMs"]
       32 CALL                             R2 1 0
       33 GETUPVAL                         R2 1
       34 GETTABLEKS                       R2 R2 K11 ["setTotalRenderMsText"]
       36 FASTCALL1                        TOSTRING R1 ; [+3]
       37 MOVE                             R4 R1
       38 GETIMPORT                        R3 K13 [tostring]
       40 CALL                             R3 1 1
       41 CALL                             R2 1 0
       42 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setTotalRenderMsText"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_9:
        0 FASTCALL1                        TONUMBER R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [tonumber]
        4 CALL                             R2 1 1
        5 FASTCALL1                        TYPE R2 ; [+3]
        6 MOVE                             R4 R2
        7 GETIMPORT                        R3 K3 [type]
        9 CALL                             R3 1 1
       10 JUMPIFNOTEQKS                    R3 K4 ["number"] ; [+5]
       12 JUMPIFNOTEQ                      R2 R2 ; [+3]
       14 MOVE                             R1 R2
       15 JUMP                             ; [+1]
       16 LOADN                            R1 1
       17 LOADN                            R4 1
       18 LOADN                            R5 100
       19 FASTCALL3                        MATH_CLAMP R1 R4 R5
       21 MOVE                             R3 R1
       22 GETIMPORT                        R2 K7 [math.clamp]
       24 CALL                             R2 3 1
       25 MOVE                             R1 R2
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K8 ["OnSettingsUpdated"]
       29 DUPTABLE                         R3 K10 [{"maxTotalTaskMs"}]
       30 SETTABLEKS                       R1 R3 K9 ["maxTotalTaskMs"]
       32 CALL                             R2 1 0
       33 GETUPVAL                         R2 1
       34 GETTABLEKS                       R2 R2 K11 ["setTotalTaskMsText"]
       36 FASTCALL1                        TOSTRING R1 ; [+3]
       37 MOVE                             R4 R1
       38 GETIMPORT                        R3 K13 [tostring]
       40 CALL                             R3 1 1
       41 CALL                             R2 1 0
       42 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setTotalTaskMsText"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["createElement"]
        9 LOADK                            R5 K4 ["Frame"]
       10 NEWTABLE                         R6 4 0
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K5 ["Tag"]
       15 LOADK                            R8 K6 ["X-Fill X-Column Component-ThermometerSettings"]
       16 SETTABLE                         R8 R6 R7
       17 GETIMPORT                        R7 K9 [UDim2.new]
       19 LOADN                            R8 1
       20 LOADN                            R9 0
       21 LOADN                            R10 1
       22 LOADN                            R11 0
       23 CALL                             R7 4 1
       24 SETTABLEKS                       R7 R6 K10 ["Size"]
       26 LOADN                            R7 1
       27 SETTABLEKS                       R7 R6 K11 ["BackgroundTransparency"]
       29 DUPTABLE                         R7 K20 [{"Layout", "Padding", "ButtonFrame", "RenderMsLabel", "RenderMsInput", "TaskMsLabel", "TaskMsInput", "DefaultBudgetInformation"}]
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R8 R8 K3 ["createElement"]
       33 LOADK                            R9 K21 ["UIListLayout"]
       34 DUPTABLE                         R10 K26 [{"Padding", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
       35 GETIMPORT                        R11 K28 [UDim.new]
       37 LOADN                            R12 0
       38 LOADN                            R13 30
       39 CALL                             R11 2 1
       40 SETTABLEKS                       R11 R10 K13 ["Padding"]
       42 GETIMPORT                        R11 K31 [Enum.FillDirection.Vertical]
       44 SETTABLEKS                       R11 R10 K22 ["FillDirection"]
       46 GETIMPORT                        R11 K33 [Enum.HorizontalAlignment.Left]
       48 SETTABLEKS                       R11 R10 K23 ["HorizontalAlignment"]
       50 GETIMPORT                        R11 K35 [Enum.VerticalAlignment.Top]
       52 SETTABLEKS                       R11 R10 K24 ["VerticalAlignment"]
       54 GETIMPORT                        R11 K37 [Enum.SortOrder.LayoutOrder]
       56 SETTABLEKS                       R11 R10 K25 ["SortOrder"]
       58 CALL                             R8 2 1
       59 SETTABLEKS                       R8 R7 K12 ["Layout"]
       61 GETUPVAL                         R8 0
       62 GETTABLEKS                       R8 R8 K3 ["createElement"]
       64 LOADK                            R9 K38 ["UIPadding"]
       65 CALL                             R8 1 1
       66 SETTABLEKS                       R8 R7 K13 ["Padding"]
       68 GETUPVAL                         R8 0
       69 GETTABLEKS                       R8 R8 K3 ["createElement"]
       71 LOADK                            R9 K4 ["Frame"]
       72 NEWTABLE                         R10 4 0
       74 GETUPVAL                         R11 0
       75 GETTABLEKS                       R11 R11 K5 ["Tag"]
       77 LOADK                            R12 K39 ["X-Fit X-Row Component-ThermometerSettings"]
       78 SETTABLE                         R12 R10 R11
       79 LOADN                            R11 1
       80 SETTABLEKS                       R11 R10 K11 ["BackgroundTransparency"]
       82 LOADN                            R11 1
       83 SETTABLEKS                       R11 R10 K36 ["LayoutOrder"]
       85 DUPTABLE                         R11 K42 [{"Layout", "BackToMainButton", "ResetToDefaultButton"}]
       86 GETUPVAL                         R12 0
       87 GETTABLEKS                       R12 R12 K3 ["createElement"]
       89 LOADK                            R13 K21 ["UIListLayout"]
       90 DUPTABLE                         R14 K26 [{"Padding", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
       91 GETIMPORT                        R15 K28 [UDim.new]
       93 LOADN                            R16 0
       94 LOADN                            R17 5
       95 CALL                             R15 2 1
       96 SETTABLEKS                       R15 R14 K13 ["Padding"]
       98 GETIMPORT                        R15 K31 [Enum.FillDirection.Vertical]
      100 SETTABLEKS                       R15 R14 K22 ["FillDirection"]
      102 GETIMPORT                        R15 K33 [Enum.HorizontalAlignment.Left]
      104 SETTABLEKS                       R15 R14 K23 ["HorizontalAlignment"]
      106 GETIMPORT                        R15 K44 [Enum.VerticalAlignment.Center]
      108 SETTABLEKS                       R15 R14 K24 ["VerticalAlignment"]
      110 GETIMPORT                        R15 K37 [Enum.SortOrder.LayoutOrder]
      112 SETTABLEKS                       R15 R14 K25 ["SortOrder"]
      114 CALL                             R12 2 1
      115 SETTABLEKS                       R12 R11 K12 ["Layout"]
      117 GETUPVAL                         R12 0
      118 GETTABLEKS                       R12 R12 K3 ["createElement"]
      120 LOADK                            R13 K45 ["ImageButton"]
      121 NEWTABLE                         R14 4 0
      123 GETIMPORT                        R15 K9 [UDim2.new]
      125 LOADN                            R16 0
      126 LOADN                            R17 32
      127 LOADN                            R18 0
      128 LOADN                            R19 32
      129 CALL                             R15 4 1
      130 SETTABLEKS                       R15 R14 K10 ["Size"]
      132 LOADN                            R15 1
      133 SETTABLEKS                       R15 R14 K11 ["BackgroundTransparency"]
      135 GETUPVAL                         R15 0
      136 GETTABLEKS                       R15 R15 K46 ["Event"]
      138 GETTABLEKS                       R15 R15 K47 ["Activated"]
      140 GETTABLEKS                       R16 R1 K48 ["OnCloseSettings"]
      142 SETTABLE                         R16 R14 R15
      143 LOADN                            R15 1
      144 SETTABLEKS                       R15 R14 K36 ["LayoutOrder"]
      146 CALL                             R12 2 1
      147 SETTABLEKS                       R12 R11 K40 ["BackToMainButton"]
      149 GETUPVAL                         R12 0
      150 GETTABLEKS                       R12 R12 K3 ["createElement"]
      152 GETUPVAL                         R13 1
      153 DUPTABLE                         R14 K52 [{"Text", "Cursor", "OnClick", "LayoutOrder"}]
      154 LOADK                            R17 K53 ["SceneBudgetThermometer"]
      155 LOADK                            R18 K54 ["ResetToDefault"]
      156 NAMECALL                         R15 R3 K55 ["getText"]
      158 CALL                             R15 3 1
      159 SETTABLEKS                       R15 R14 K49 ["Text"]
      161 LOADK                            R15 K56 ["PointingHand"]
      162 SETTABLEKS                       R15 R14 K50 ["Cursor"]
      164 NEWCLOSURE                       R15 P0
      165 CAPTURE                          VAL R0
      166 CAPTURE                          VAL R1
      167 SETTABLEKS                       R15 R14 K51 ["OnClick"]
      169 LOADN                            R15 2
      170 SETTABLEKS                       R15 R14 K36 ["LayoutOrder"]
      172 CALL                             R12 2 1
      173 SETTABLEKS                       R12 R11 K41 ["ResetToDefaultButton"]
      175 CALL                             R8 3 1
      176 SETTABLEKS                       R8 R7 K14 ["ButtonFrame"]
      178 GETUPVAL                         R8 0
      179 GETTABLEKS                       R8 R8 K3 ["createElement"]
      181 LOADK                            R9 K57 ["TextLabel"]
      182 DUPTABLE                         R10 K58 [{"Text", "LayoutOrder"}]
      183 LOADK                            R13 K53 ["SceneBudgetThermometer"]
      184 LOADK                            R14 K59 ["MaxTotalRenderCpuMs"]
      185 NAMECALL                         R11 R3 K55 ["getText"]
      187 CALL                             R11 3 1
      188 SETTABLEKS                       R11 R10 K49 ["Text"]
      190 LOADN                            R11 6
      191 SETTABLEKS                       R11 R10 K36 ["LayoutOrder"]
      193 CALL                             R8 2 1
      194 SETTABLEKS                       R8 R7 K15 ["RenderMsLabel"]
      196 GETUPVAL                         R8 0
      197 GETTABLEKS                       R8 R8 K3 ["createElement"]
      199 GETUPVAL                         R9 2
      200 DUPTABLE                         R10 K62 [{"Text", "LayoutOrder", "OnFocusLost", "OnTextChanged"}]
      201 GETTABLEKS                       R11 R2 K63 ["totalRenderMsText"]
      203 SETTABLEKS                       R11 R10 K49 ["Text"]
      205 LOADN                            R11 7
      206 SETTABLEKS                       R11 R10 K36 ["LayoutOrder"]
      208 NEWCLOSURE                       R11 P1
      209 CAPTURE                          VAL R1
      210 CAPTURE                          VAL R0
      211 SETTABLEKS                       R11 R10 K60 ["OnFocusLost"]
      213 NEWCLOSURE                       R11 P2
      214 CAPTURE                          VAL R0
      215 SETTABLEKS                       R11 R10 K61 ["OnTextChanged"]
      217 CALL                             R8 2 1
      218 SETTABLEKS                       R8 R7 K16 ["RenderMsInput"]
      220 GETUPVAL                         R8 0
      221 GETTABLEKS                       R8 R8 K3 ["createElement"]
      223 LOADK                            R9 K57 ["TextLabel"]
      224 DUPTABLE                         R10 K58 [{"Text", "LayoutOrder"}]
      225 LOADK                            R13 K53 ["SceneBudgetThermometer"]
      226 LOADK                            R14 K64 ["MaxTotalTaskCpuMs"]
      227 NAMECALL                         R11 R3 K55 ["getText"]
      229 CALL                             R11 3 1
      230 SETTABLEKS                       R11 R10 K49 ["Text"]
      232 LOADN                            R11 8
      233 SETTABLEKS                       R11 R10 K36 ["LayoutOrder"]
      235 CALL                             R8 2 1
      236 SETTABLEKS                       R8 R7 K17 ["TaskMsLabel"]
      238 GETUPVAL                         R8 0
      239 GETTABLEKS                       R8 R8 K3 ["createElement"]
      241 GETUPVAL                         R9 2
      242 DUPTABLE                         R10 K62 [{"Text", "LayoutOrder", "OnFocusLost", "OnTextChanged"}]
      243 GETTABLEKS                       R11 R2 K65 ["totalTaskMsText"]
      245 SETTABLEKS                       R11 R10 K49 ["Text"]
      247 LOADN                            R11 9
      248 SETTABLEKS                       R11 R10 K36 ["LayoutOrder"]
      250 NEWCLOSURE                       R11 P3
      251 CAPTURE                          VAL R1
      252 CAPTURE                          VAL R0
      253 SETTABLEKS                       R11 R10 K60 ["OnFocusLost"]
      255 NEWCLOSURE                       R11 P4
      256 CAPTURE                          VAL R0
      257 SETTABLEKS                       R11 R10 K61 ["OnTextChanged"]
      259 CALL                             R8 2 1
      260 SETTABLEKS                       R8 R7 K18 ["TaskMsInput"]
      262 GETUPVAL                         R8 0
      263 GETTABLEKS                       R8 R8 K3 ["createElement"]
      265 LOADK                            R9 K4 ["Frame"]
      266 NEWTABLE                         R10 4 0
      268 GETUPVAL                         R11 0
      269 GETTABLEKS                       R11 R11 K5 ["Tag"]
      271 LOADK                            R12 K66 ["X-Fit X-Row X-Corner"]
      272 SETTABLE                         R12 R10 R11
      273 LOADN                            R11 1
      274 SETTABLEKS                       R11 R10 K11 ["BackgroundTransparency"]
      276 LOADN                            R11 10
      277 SETTABLEKS                       R11 R10 K36 ["LayoutOrder"]
      279 DUPTABLE                         R11 K69 [{"Layout", "Padding", "InformationImageLabel", "BudgetInformationLabel"}]
      280 GETUPVAL                         R12 0
      281 GETTABLEKS                       R12 R12 K3 ["createElement"]
      283 LOADK                            R13 K21 ["UIListLayout"]
      284 DUPTABLE                         R14 K26 [{"Padding", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
      285 GETIMPORT                        R15 K28 [UDim.new]
      287 LOADN                            R16 0
      288 LOADN                            R17 5
      289 CALL                             R15 2 1
      290 SETTABLEKS                       R15 R14 K13 ["Padding"]
      292 GETIMPORT                        R15 K31 [Enum.FillDirection.Vertical]
      294 SETTABLEKS                       R15 R14 K22 ["FillDirection"]
      296 GETIMPORT                        R15 K33 [Enum.HorizontalAlignment.Left]
      298 SETTABLEKS                       R15 R14 K23 ["HorizontalAlignment"]
      300 GETIMPORT                        R15 K44 [Enum.VerticalAlignment.Center]
      302 SETTABLEKS                       R15 R14 K24 ["VerticalAlignment"]
      304 GETIMPORT                        R15 K37 [Enum.SortOrder.LayoutOrder]
      306 SETTABLEKS                       R15 R14 K25 ["SortOrder"]
      308 CALL                             R12 2 1
      309 SETTABLEKS                       R12 R11 K12 ["Layout"]
      311 GETUPVAL                         R12 0
      312 GETTABLEKS                       R12 R12 K3 ["createElement"]
      314 LOADK                            R13 K38 ["UIPadding"]
      315 DUPTABLE                         R14 K74 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      316 GETIMPORT                        R15 K28 [UDim.new]
      318 LOADN                            R16 0
      319 LOADN                            R17 0
      320 CALL                             R15 2 1
      321 SETTABLEKS                       R15 R14 K70 ["PaddingTop"]
      323 GETIMPORT                        R15 K28 [UDim.new]
      325 LOADN                            R16 0
      326 LOADN                            R17 0
      327 CALL                             R15 2 1
      328 SETTABLEKS                       R15 R14 K71 ["PaddingBottom"]
      330 GETIMPORT                        R15 K28 [UDim.new]
      332 LOADN                            R16 0
      333 LOADN                            R17 0
      334 CALL                             R15 2 1
      335 SETTABLEKS                       R15 R14 K72 ["PaddingLeft"]
      337 GETIMPORT                        R15 K28 [UDim.new]
      339 LOADN                            R16 0
      340 LOADN                            R17 0
      341 CALL                             R15 2 1
      342 SETTABLEKS                       R15 R14 K73 ["PaddingRight"]
      344 CALL                             R12 2 1
      345 SETTABLEKS                       R12 R11 K13 ["Padding"]
      347 GETUPVAL                         R12 0
      348 GETTABLEKS                       R12 R12 K3 ["createElement"]
      350 LOADK                            R13 K75 ["ImageLabel"]
      351 NEWTABLE                         R14 4 0
      353 GETUPVAL                         R15 0
      354 GETTABLEKS                       R15 R15 K5 ["Tag"]
      356 LOADK                            R16 K76 ["InformationLabel"]
      357 SETTABLE                         R16 R14 R15
      358 GETIMPORT                        R15 K9 [UDim2.new]
      360 LOADN                            R16 0
      361 LOADN                            R17 16
      362 LOADN                            R18 0
      363 LOADN                            R19 16
      364 CALL                             R15 4 1
      365 SETTABLEKS                       R15 R14 K10 ["Size"]
      367 LOADN                            R15 1
      368 SETTABLEKS                       R15 R14 K11 ["BackgroundTransparency"]
      370 LOADN                            R15 1
      371 SETTABLEKS                       R15 R14 K36 ["LayoutOrder"]
      373 CALL                             R12 2 1
      374 SETTABLEKS                       R12 R11 K67 ["InformationImageLabel"]
      376 GETUPVAL                         R12 0
      377 GETTABLEKS                       R12 R12 K3 ["createElement"]
      379 LOADK                            R13 K57 ["TextLabel"]
      380 NEWTABLE                         R14 4 0
      382 GETUPVAL                         R15 0
      383 GETTABLEKS                       R15 R15 K5 ["Tag"]
      385 LOADK                            R16 K77 ["X-Fit BudgetLabel"]
      386 SETTABLE                         R16 R14 R15
      387 LOADK                            R17 K78 ["SceneMonitor"]
      388 LOADK                            R18 K79 ["DefaultSettingsInformation"]
      389 NAMECALL                         R15 R3 K55 ["getText"]
      391 CALL                             R15 3 1
      392 SETTABLEKS                       R15 R14 K49 ["Text"]
      394 LOADB                            R15 1
      395 SETTABLEKS                       R15 R14 K80 ["TextWrapped"]
      397 LOADN                            R15 2
      398 SETTABLEKS                       R15 R14 K36 ["LayoutOrder"]
      400 CALL                             R12 2 1
      401 SETTABLEKS                       R12 R11 K68 ["BudgetInformationLabel"]
      403 CALL                             R8 3 1
      404 SETTABLEKS                       R8 R7 K19 ["DefaultBudgetInformation"]
      406 CALL                             R4 3 -1
      407 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PerformanceTools"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["withContext"]
       25 GETTABLEKS                       R5 R2 K11 ["UI"]
       27 GETTABLEKS                       R5 R5 K12 ["IconButton"]
       29 GETTABLEKS                       R6 R2 K11 ["UI"]
       31 GETTABLEKS                       R6 R6 K13 ["TextInput"]
       33 DUPCLOSURE                       R7 K14 [PROTO_0]
       34 GETTABLEKS                       R8 R1 K15 ["Component"]
       36 LOADK                            R10 K16 ["ThermometerSettings"]
       37 NAMECALL                         R8 R8 K17 ["extend"]
       39 CALL                             R8 2 1
       40 DUPCLOSURE                       R9 K18 [PROTO_5]
       41 SETTABLEKS                       R9 R8 K19 ["init"]
       43 DUPCLOSURE                       R9 K20 [PROTO_11]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R6
       47 SETTABLEKS                       R9 R8 K21 ["render"]
       49 MOVE                             R9 R4
       50 DUPTABLE                         R10 K23 [{"Localization"}]
       51 GETTABLEKS                       R11 R3 K22 ["Localization"]
       53 SETTABLEKS                       R11 R10 K22 ["Localization"]
       55 CALL                             R9 1 1
       56 MOVE                             R10 R8
       57 CALL                             R9 1 1
       58 MOVE                             R8 R9
       59 RETURN                           R8 1
