PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["Stylizer"]
        5 JUMPIF                           R1 ; [+1]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R5 R0 K3 ["AbsoluteSize"]
        9 GETTABLEKS                       R4 R5 K4 ["X"]
       11 GETUPVAL                         R8 0
       12 GETTABLEKS                       R7 R8 K0 ["props"]
       14 GETTABLEKS                       R6 R7 K5 ["Items"]
       16 LENGTH                           R5 R6
       17 SUB                              R3 R4 R5
       18 ADDK                             R2 R3 K2 [1]
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R5 R6 K0 ["props"]
       22 GETTABLEKS                       R4 R5 K5 ["Items"]
       24 LENGTH                           R3 R4
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R6 R0 K3 ["AbsoluteSize"]
       28 GETTABLEKS                       R5 R6 K6 ["Y"]
       30 SETTABLEKS                       R5 R4 K7 ["iconSize"]
       32 GETTABLEKS                       R4 R1 K8 ["TextPadding"]
       34 DIV                              R5 R2 R3
       35 GETIMPORT                        R6 K11 [table.clone]
       37 GETUPVAL                         R9 0
       38 GETTABLEKS                       R8 R9 K0 ["props"]
       40 GETTABLEKS                       R7 R8 K5 ["Items"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K11 [table.clone]
       45 GETUPVAL                         R10 0
       46 GETTABLEKS                       R9 R10 K12 ["state"]
       48 GETTABLEKS                       R8 R9 K13 ["sizes"]
       50 CALL                             R7 1 1
       51 NEWTABLE                         R8 0 0
       53 MOVE                             R9 R6
       54 LOADNIL                          R10
       55 LOADNIL                          R11
       56 FORGPREP                         R9
       57 GETUPVAL                         R17 0
       58 GETTABLEKS                       R16 R17 K14 ["refs"]
       60 GETTABLE                         R15 R16 R12
       61 GETTABLEKS                       R14 R15 K15 ["current"]
       63 JUMPIFNOT                        R14 ; [+119]
       64 LOADN                            R15 0
       65 LOADK                            R18 K16 ["Container"]
       66 NAMECALL                         R16 R14 K17 ["FindFirstChild"]
       68 CALL                             R16 2 1
       69 JUMPIFNOT                        R16 ; [+42]
       70 GETTABLEKS                       R16 R14 K16 ["Container"]
       72 LOADK                            R18 K18 ["Layout"]
       73 NAMECALL                         R16 R16 K17 ["FindFirstChild"]
       75 CALL                             R16 2 1
       76 JUMPIFNOT                        R16 ; [+35]
       77 GETTABLEKS                       R16 R14 K16 ["Container"]
       79 LOADK                            R18 K19 ["ImageContainer"]
       80 NAMECALL                         R16 R16 K17 ["FindFirstChild"]
       82 CALL                             R16 2 1
       83 JUMPIFNOT                        R16 ; [+28]
       84 GETTABLEKS                       R17 R14 K16 ["Container"]
       86 GETTABLEKS                       R16 R17 K19 ["ImageContainer"]
       88 LOADK                            R18 K20 ["Image"]
       89 NAMECALL                         R16 R16 K17 ["FindFirstChild"]
       91 CALL                             R16 2 1
       92 JUMPIFNOT                        R16 ; [+19]
       93 GETTABLEKS                       R19 R14 K16 ["Container"]
       95 GETTABLEKS                       R18 R19 K18 ["Layout"]
       97 GETTABLEKS                       R17 R18 K21 ["Padding"]
       99 GETTABLEKS                       R16 R17 K22 ["Offset"]
      101 GETTABLEKS                       R21 R14 K16 ["Container"]
      103 GETTABLEKS                       R20 R21 K19 ["ImageContainer"]
      105 GETTABLEKS                       R19 R20 K20 ["Image"]
      107 GETTABLEKS                       R18 R19 K3 ["AbsoluteSize"]
      109 GETTABLEKS                       R17 R18 K4 ["X"]
      111 ADD                              R15 R16 R17
      112 GETTABLEKS                       R17 R13 K23 ["Label"]
      114 JUMPIFNOT                        R17 ; [+35]
      115 GETUPVAL                         R18 2
      116 GETTABLEKS                       R20 R13 K23 ["Label"]
      118 GETUPVAL                         R22 3
      119 JUMPIFNOT                        R22 ; [+5]
      120 LOADK                            R23 K24 ["TextSize"]
      121 NAMECALL                         R21 R14 K25 ["GetStyled"]
      123 CALL                             R21 2 1
      124 JUMP                             ; [+2]
      125 GETTABLEKS                       R21 R14 K24 ["TextSize"]
      127 GETUPVAL                         R23 3
      128 JUMPIFNOT                        R23 ; [+5]
      129 LOADK                            R24 K26 ["Font"]
      130 NAMECALL                         R22 R14 K25 ["GetStyled"]
      132 CALL                             R22 2 1
      133 JUMP                             ; [+2]
      134 GETTABLEKS                       R22 R14 K26 ["Font"]
      136 GETIMPORT                        R23 K29 [Vector2.new]
      138 LOADK                            R24 K30 [∞]
      139 LOADK                            R25 K30 [∞]
      140 CALL                             R23 2 -1
      141 NAMECALL                         R18 R18 K31 ["GetTextSize"]
      143 CALL                             R18 -1 1
      144 GETTABLEKS                       R17 R18 K4 ["X"]
      146 LOADN                            R19 2
      147 MUL                              R18 R19 R4
      148 ADD                              R16 R17 R18
      149 JUMP                             ; [+1]
      150 LOADN                            R16 0
      151 ADD                              R17 R16 R15
      152 JUMPIFNOTLT                      R5 R17 ; [+20]
      154 GETIMPORT                        R18 K33 [UDim2.new]
      156 LOADN                            R19 0
      157 MOVE                             R20 R17
      158 LOADN                            R21 1
      159 LOADN                            R22 0
      160 CALL                             R18 4 1
      161 SETTABLE                         R18 R7 R12
      162 SUB                              R2 R2 R17
      163 SUBK                             R3 R3 K2 [1]
      164 DIV                              R5 R2 R3
      165 FASTCALL2                        TABLE_INSERT R8 R12 ; [+5]
      167 MOVE                             R19 R8
      168 MOVE                             R20 R12
      169 GETIMPORT                        R18 K35 [table.insert]
      171 CALL                             R18 2 0
      172 JUMP                             ; [+8]
      173 GETIMPORT                        R18 K33 [UDim2.new]
      175 LOADN                            R19 0
      176 MOVE                             R20 R5
      177 LOADN                            R21 1
      178 LOADN                            R22 0
      179 CALL                             R18 4 1
      180 SETTABLE                         R18 R7 R12
      181 FORGLOOP                         R9 2 ; [-125]
      183 MOVE                             R9 R8
      184 LOADNIL                          R10
      185 LOADNIL                          R11
      186 FORGPREP                         R9
      187 LOADNIL                          R14
      188 SETTABLE                         R14 R6 R13
      189 FORGLOOP                         R9 2 ; [-3]
      191 LENGTH                           R9 R8
      192 JUMPIFEQKN                       R9 K36 [0] ; [+2]
      194 JUMPBACK                         ; [-144]
      195 GETUPVAL                         R8 0
      196 DUPTABLE                         R10 K37 [{"sizes"}]
      197 SETTABLEKS                       R7 R10 K13 ["sizes"]
      199 NAMECALL                         R8 R8 K38 ["setState"]
      201 CALL                             R8 2 0
      202 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 SETTABLEKS                       R1 R0 K0 ["evaluateMinimums"]
        7 NEWTABLE                         R1 0 0
        9 SETTABLEKS                       R1 R0 K1 ["refs"]
       11 GETUPVAL                         R2 3
       12 GETTABLEKS                       R1 R2 K2 ["createRef"]
       14 CALL                             R1 0 1
       15 SETTABLEKS                       R1 R0 K3 ["ref"]
       17 DUPTABLE                         R1 K5 [{"sizes"}]
       18 NEWTABLE                         R2 0 0
       20 SETTABLEKS                       R2 R1 K4 ["sizes"]
       22 SETTABLEKS                       R1 R0 K6 ["state"]
       24 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["evaluateMinimums"]
        2 GETTABLEKS                       R3 R0 K1 ["ref"]
        4 GETTABLEKS                       R2 R3 K2 ["current"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R3 K1 ["Items"]
        4 GETTABLEKS                       R3 R1 K1 ["Items"]
        6 JUMPIFEQ                         R2 R3 ; [+8]
        8 GETTABLEKS                       R2 R0 K2 ["evaluateMinimums"]
       10 GETTABLEKS                       R4 R0 K3 ["ref"]
       12 GETTABLEKS                       R3 R4 K4 ["current"]
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnItemActivated"]
        3 GETUPVAL                         R2 1
        4 JUMPIFNOT                        R2 ; [+2]
        5 GETUPVAL                         R1 2
        6 JUMP                             ; [+1]
        7 GETUPVAL                         R1 3
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnItemActivated"]
        3 GETUPVAL                         R2 1
        4 JUMPIFNOT                        R2 ; [+2]
        5 GETUPVAL                         R1 2
        6 JUMP                             ; [+1]
        7 GETUPVAL                         R1 3
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnItemActivated"]
        3 GETUPVAL                         R2 1
        4 JUMPIFNOT                        R2 ; [+2]
        5 GETUPVAL                         R1 2
        6 JUMP                             ; [+1]
        7 GETUPVAL                         R1 3
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Items"]
        4 GETTABLEKS                       R3 R1 K2 ["LayoutOrder"]
        6 GETTABLEKS                       R4 R1 K3 ["SelectedIndex"]
        8 GETTABLEKS                       R5 R1 K4 ["SelectedId"]
       10 JUMPIFEQKNIL                     R5 ; [+22]
       12 MOVE                             R5 R2
       13 LOADNIL                          R6
       14 LOADNIL                          R7
       15 FORGPREP                         R5
       16 FASTCALL1                        TYPEOF R9 ; [+3]
       17 MOVE                             R11 R9
       18 GETIMPORT                        R10 K6 [typeof]
       20 CALL                             R10 1 1
       21 JUMPIFNOTEQKS                    R10 K7 ["table"] ; [+9]
       23 GETTABLEKS                       R10 R9 K8 ["Id"]
       25 GETTABLEKS                       R11 R1 K4 ["SelectedId"]
       27 JUMPIFNOTEQ                      R10 R11 ; [+3]
       29 MOVE                             R4 R8
       30 JUMP                             ; [+2]
       31 FORGLOOP                         R5 2 ; [-16]
       33 GETTABLEKS                       R5 R1 K9 ["Size"]
       35 GETTABLEKS                       R6 R1 K10 ["StyleModifier"]
       37 GETUPVAL                         R8 0
       38 GETTABLEKS                       R7 R8 K11 ["new"]
       40 CALL                             R7 0 1
       41 NEWTABLE                         R8 0 0
       43 LENGTH                           R11 R2
       44 LOADN                            R12 1
       45 JUMPIFLT                         R12 R11 ; [+2]
       47 LOADB                            R10 0 +1
       48 LOADB                            R10 1
       49 FASTCALL2K                       ASSERT R10 K12 ; [+4]
       51 LOADK                            R11 K12 ["Segmented Button should contain more than one item"]
       52 GETIMPORT                        R9 K14 [assert]
       54 CALL                             R9 2 0
       55 GETTABLEKS                       R9 R1 K1 ["Items"]
       57 LOADNIL                          R10
       58 LOADNIL                          R11
       59 FORGPREP                         R9
       60 FASTCALL1                        TYPEOF R13 ; [+3]
       61 MOVE                             R16 R13
       62 GETIMPORT                        R15 K6 [typeof]
       64 CALL                             R15 1 1
       65 JUMPIFEQKS                       R15 K7 ["table"] ; [+2]
       67 LOADB                            R14 0 +1
       68 LOADB                            R14 1
       69 JUMPIFNOT                        R14 ; [+3]
       70 GETTABLEKS                       R15 R13 K8 ["Id"]
       72 JUMP                             ; [+1]
       73 MOVE                             R15 R13
       74 JUMPIFNOT                        R14 ; [+3]
       75 GETTABLEKS                       R16 R13 K15 ["Label"]
       77 JUMP                             ; [+1]
       78 MOVE                             R16 R13
       79 JUMPIFNOT                        R14 ; [+3]
       80 GETTABLEKS                       R17 R13 K16 ["Icon"]
       82 JUMP                             ; [+1]
       83 LOADNIL                          R17
       84 GETTABLEKS                       R19 R0 K17 ["refs"]
       86 GETTABLE                         R18 R19 R12
       87 JUMPIF                           R18 ; [+7]
       88 GETTABLEKS                       R18 R0 K17 ["refs"]
       90 GETUPVAL                         R20 1
       91 GETTABLEKS                       R19 R20 K18 ["createRef"]
       93 CALL                             R19 0 1
       94 SETTABLE                         R19 R18 R12
       95 JUMPIFNOTEQKN                    R12 K19 [1] ; [+77]
       97 GETUPVAL                         R19 1
       98 GETTABLEKS                       R18 R19 K20 ["createElement"]
      100 GETUPVAL                         R19 2
      101 NEWTABLE                         R20 8 0
      103 GETUPVAL                         R22 1
      104 GETTABLEKS                       R21 R22 K21 ["Ref"]
      106 GETTABLEKS                       R23 R0 K17 ["refs"]
      108 GETTABLE                         R22 R23 R12
      109 SETTABLE                         R22 R20 R21
      110 SETTABLEKS                       R17 R20 K16 ["Icon"]
      112 NAMECALL                         R21 R7 K22 ["getNextOrder"]
      114 CALL                             R21 1 1
      115 SETTABLEKS                       R21 R20 K2 ["LayoutOrder"]
      117 NEWCLOSURE                       R21 P0
      118 CAPTURE                          VAL R1
      119 CAPTURE                          VAL R14
      120 CAPTURE                          VAL R13
      121 CAPTURE                          VAL R12
      122 SETTABLEKS                       R21 R20 K23 ["OnClick"]
      124 GETTABLEKS                       R23 R0 K24 ["state"]
      126 GETTABLEKS                       R22 R23 K25 ["sizes"]
      128 GETTABLE                         R21 R22 R12
      129 JUMPIF                           R21 ; [+8]
      130 GETIMPORT                        R21 K27 [UDim2.new]
      132 LENGTH                           R23 R2
      133 DIVRK                            R22 R19 K23 ["OnClick"]
      134 LOADN                            R23 255
      135 LOADN                            R24 1
      136 LOADN                            R25 0
      137 CALL                             R21 4 1
      138 SETTABLEKS                       R21 R20 K9 ["Size"]
      140 JUMPIFNOTEQ                      R4 R12 ; [+3]
      142 LOADK                            R21 K28 ["RoundLeftActive"]
      143 JUMP                             ; [+1]
      144 LOADK                            R21 K29 ["RoundLeft"]
      145 SETTABLEKS                       R21 R20 K30 ["Style"]
      147 SETTABLEKS                       R6 R20 K10 ["StyleModifier"]
      149 SETTABLEKS                       R16 R20 K31 ["Text"]
      151 CALL                             R18 2 1
      152 SETTABLE                         R18 R8 R15
      153 MOVE                             R19 R15
      154 LOADK                            R20 K32 ["Separator"]
      155 CONCAT                           R18 R19 R20
      156 GETUPVAL                         R20 1
      157 GETTABLEKS                       R19 R20 K20 ["createElement"]
      159 GETUPVAL                         R20 3
      160 DUPTABLE                         R21 K34 [{"DominantAxis", "LayoutOrder"}]
      161 GETIMPORT                        R22 K37 [Enum.DominantAxis.Height]
      163 SETTABLEKS                       R22 R21 K33 ["DominantAxis"]
      165 NAMECALL                         R22 R7 K22 ["getNextOrder"]
      167 CALL                             R22 1 1
      168 SETTABLEKS                       R22 R21 K2 ["LayoutOrder"]
      170 CALL                             R19 2 1
      171 SETTABLE                         R19 R8 R18
      172 JUMP                             ; [+135]
      173 LENGTH                           R18 R2
      174 JUMPIFNOTEQ                      R12 R18 ; [+58]
      176 GETUPVAL                         R19 1
      177 GETTABLEKS                       R18 R19 K20 ["createElement"]
      179 GETUPVAL                         R19 2
      180 NEWTABLE                         R20 8 0
      182 GETUPVAL                         R22 1
      183 GETTABLEKS                       R21 R22 K21 ["Ref"]
      185 GETTABLEKS                       R23 R0 K17 ["refs"]
      187 GETTABLE                         R22 R23 R12
      188 SETTABLE                         R22 R20 R21
      189 SETTABLEKS                       R17 R20 K16 ["Icon"]
      191 NAMECALL                         R21 R7 K22 ["getNextOrder"]
      193 CALL                             R21 1 1
      194 SETTABLEKS                       R21 R20 K2 ["LayoutOrder"]
      196 NEWCLOSURE                       R21 P1
      197 CAPTURE                          VAL R1
      198 CAPTURE                          VAL R14
      199 CAPTURE                          VAL R13
      200 CAPTURE                          VAL R12
      201 SETTABLEKS                       R21 R20 K23 ["OnClick"]
      203 GETTABLEKS                       R23 R0 K24 ["state"]
      205 GETTABLEKS                       R22 R23 K25 ["sizes"]
      207 GETTABLE                         R21 R22 R12
      208 JUMPIF                           R21 ; [+8]
      209 GETIMPORT                        R21 K27 [UDim2.new]
      211 LENGTH                           R23 R2
      212 DIVRK                            R22 R19 K23 ["OnClick"]
      213 LOADN                            R23 255
      214 LOADN                            R24 1
      215 LOADN                            R25 0
      216 CALL                             R21 4 1
      217 SETTABLEKS                       R21 R20 K9 ["Size"]
      219 JUMPIFNOTEQ                      R4 R12 ; [+3]
      221 LOADK                            R21 K38 ["RoundRightActive"]
      222 JUMP                             ; [+1]
      223 LOADK                            R21 K39 ["RoundRight"]
      224 SETTABLEKS                       R21 R20 K30 ["Style"]
      226 SETTABLEKS                       R6 R20 K10 ["StyleModifier"]
      228 SETTABLEKS                       R16 R20 K31 ["Text"]
      230 CALL                             R18 2 1
      231 SETTABLE                         R18 R8 R15
      232 JUMP                             ; [+75]
      233 GETUPVAL                         R19 1
      234 GETTABLEKS                       R18 R19 K20 ["createElement"]
      236 GETUPVAL                         R19 2
      237 NEWTABLE                         R20 8 0
      239 GETUPVAL                         R22 1
      240 GETTABLEKS                       R21 R22 K21 ["Ref"]
      242 GETTABLEKS                       R23 R0 K17 ["refs"]
      244 GETTABLE                         R22 R23 R12
      245 SETTABLE                         R22 R20 R21
      246 SETTABLEKS                       R17 R20 K16 ["Icon"]
      248 NAMECALL                         R21 R7 K22 ["getNextOrder"]
      250 CALL                             R21 1 1
      251 SETTABLEKS                       R21 R20 K2 ["LayoutOrder"]
      253 NEWCLOSURE                       R21 P2
      254 CAPTURE                          VAL R1
      255 CAPTURE                          VAL R14
      256 CAPTURE                          VAL R13
      257 CAPTURE                          VAL R12
      258 SETTABLEKS                       R21 R20 K23 ["OnClick"]
      260 GETTABLEKS                       R23 R0 K24 ["state"]
      262 GETTABLEKS                       R22 R23 K25 ["sizes"]
      264 GETTABLE                         R21 R22 R12
      265 JUMPIF                           R21 ; [+8]
      266 GETIMPORT                        R21 K27 [UDim2.new]
      268 LENGTH                           R23 R2
      269 DIVRK                            R22 R19 K23 ["OnClick"]
      270 LOADN                            R23 255
      271 LOADN                            R24 1
      272 LOADN                            R25 0
      273 CALL                             R21 4 1
      274 SETTABLEKS                       R21 R20 K9 ["Size"]
      276 JUMPIFNOTEQ                      R4 R12 ; [+3]
      278 LOADK                            R21 K40 ["RoundCenterActive"]
      279 JUMP                             ; [+1]
      280 LOADK                            R21 K41 ["RoundCenter"]
      281 SETTABLEKS                       R21 R20 K30 ["Style"]
      283 SETTABLEKS                       R6 R20 K10 ["StyleModifier"]
      285 SETTABLEKS                       R16 R20 K31 ["Text"]
      287 CALL                             R18 2 1
      288 SETTABLE                         R18 R8 R15
      289 MOVE                             R19 R15
      290 LOADK                            R20 K32 ["Separator"]
      291 CONCAT                           R18 R19 R20
      292 GETUPVAL                         R20 1
      293 GETTABLEKS                       R19 R20 K20 ["createElement"]
      295 GETUPVAL                         R20 3
      296 DUPTABLE                         R21 K34 [{"DominantAxis", "LayoutOrder"}]
      297 GETIMPORT                        R22 K37 [Enum.DominantAxis.Height]
      299 SETTABLEKS                       R22 R21 K33 ["DominantAxis"]
      301 NAMECALL                         R22 R7 K22 ["getNextOrder"]
      303 CALL                             R22 1 1
      304 SETTABLEKS                       R22 R21 K2 ["LayoutOrder"]
      306 CALL                             R19 2 1
      307 SETTABLE                         R19 R8 R18
      308 FORGLOOP                         R9 2 ; [-249]
      310 GETUPVAL                         R10 1
      311 GETTABLEKS                       R9 R10 K20 ["createElement"]
      313 GETUPVAL                         R10 4
      314 NEWTABLE                         R11 8 0
      316 GETIMPORT                        R12 K44 [Enum.FillDirection.Horizontal]
      318 SETTABLEKS                       R12 R11 K45 ["Layout"]
      320 SETTABLEKS                       R3 R11 K2 ["LayoutOrder"]
      322 SETTABLEKS                       R5 R11 K9 ["Size"]
      324 GETUPVAL                         R13 1
      325 GETTABLEKS                       R12 R13 K21 ["Ref"]
      327 GETTABLEKS                       R13 R0 K46 ["ref"]
      329 SETTABLE                         R13 R11 R12
      330 GETUPVAL                         R14 1
      331 GETTABLEKS                       R13 R14 K47 ["Change"]
      333 GETTABLEKS                       R12 R13 K48 ["AbsoluteSize"]
      335 GETTABLEKS                       R13 R0 K49 ["evaluateMinimums"]
      337 SETTABLE                         R13 R11 R12
      338 MOVE                             R12 R8
      339 CALL                             R9 3 -1
      340 RETURN                           R9 -1

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
       18 GETTABLEKS                       R4 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R4 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["withContext"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K10 ["SharedFlags"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R4 K11 ["getFFlagDeveloperFrameworkMigrateStylingV2"]
       32 CALL                             R5 0 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R9 R0 K2 ["UI"]
       37 GETTABLEKS                       R8 R9 K12 ["Components"]
       39 GETTABLEKS                       R7 R8 K13 ["DEPRECATED_Button"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R10 R0 K2 ["UI"]
       46 GETTABLEKS                       R9 R10 K12 ["Components"]
       48 GETTABLEKS                       R8 R9 K14 ["Pane"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R11 R0 K2 ["UI"]
       55 GETTABLEKS                       R10 R11 K12 ["Components"]
       57 GETTABLEKS                       R9 R10 K15 ["Separator"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K6 [require]
       62 GETTABLEKS                       R11 R0 K16 ["Util"]
       64 GETTABLEKS                       R10 R11 K17 ["LayoutOrderIterator"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K6 [require]
       69 GETIMPORT                        R12 K1 [script]
       71 GETTABLEKS                       R11 R12 K18 ["style"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K20 [game]
       76 LOADK                            R13 K21 ["TextService"]
       77 NAMECALL                         R11 R11 K22 ["GetService"]
       79 CALL                             R11 2 1
       80 GETTABLEKS                       R12 R1 K23 ["PureComponent"]
       82 LOADK                            R14 K24 ["SegmentedButton"]
       83 NAMECALL                         R12 R12 K25 ["extend"]
       85 CALL                             R12 2 1
       86 DUPCLOSURE                       R13 K26 [PROTO_1]
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R1
       91 SETTABLEKS                       R13 R12 K27 ["init"]
       93 DUPCLOSURE                       R13 K28 [PROTO_2]
       94 SETTABLEKS                       R13 R12 K29 ["didMount"]
       96 DUPCLOSURE                       R13 K30 [PROTO_3]
       97 SETTABLEKS                       R13 R12 K31 ["didUpdate"]
       99 DUPCLOSURE                       R13 K32 [PROTO_7]
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R7
      105 SETTABLEKS                       R13 R12 K33 ["render"]
      107 MOVE                             R13 R3
      108 DUPTABLE                         R14 K35 [{"Stylizer"}]
      109 GETTABLEKS                       R15 R2 K34 ["Stylizer"]
      111 SETTABLEKS                       R15 R14 K34 ["Stylizer"]
      113 CALL                             R13 1 1
      114 MOVE                             R14 R12
      115 CALL                             R13 1 1
      116 MOVE                             R12 R13
      117 RETURN                           R12 1
