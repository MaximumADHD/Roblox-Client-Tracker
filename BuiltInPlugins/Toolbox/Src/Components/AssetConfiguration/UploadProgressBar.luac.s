PROTO_0:
        0 DUPTABLE                         R3 K2 [{"animProgress", "time"}]
        1 LOADN                            R4 0
        2 SETTABLEKS                       R4 R3 K0 ["animProgress"]
        4 LOADN                            R4 0
        5 SETTABLEKS                       R4 R3 K1 ["time"]
        7 NAMECALL                         R1 R0 K3 ["setState"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R2 K1 ["animProgress"]
        4 JUMPIFNOTLT                      R2 R1 ; [+29]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["RenderStepped"]
        9 NAMECALL                         R2 R2 K3 ["Wait"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R0 K4 ["isMounted"]
       14 JUMPIFNOT                        R3 ; [+19]
       15 GETTABLEKS                       R4 R0 K0 ["state"]
       17 GETTABLEKS                       R4 R4 K5 ["time"]
       19 ADD                              R3 R4 R2
       20 DUPTABLE                         R6 K6 [{"time", "animProgress"}]
       21 SETTABLEKS                       R3 R6 K5 ["time"]
       23 GETTABLEKS                       R8 R0 K7 ["props"]
       25 GETTABLEKS                       R8 R8 K8 ["loadingTime"]
       27 DIV                              R7 R3 R8
       28 SETTABLEKS                       R7 R6 K1 ["animProgress"]
       30 NAMECALL                         R4 R0 K9 ["setState"]
       32 CALL                             R4 2 0
       33 JUMPBACK                         ; [-34]
       34 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["props"]
        4 GETTABLEKS                       R2 R2 K1 ["holdPercent"]
        6 NAMECALL                         R0 R0 K2 ["loadUntil"]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 0
       10 GETTABLEKS                       R0 R0 K3 ["isMounted"]
       12 JUMPIFNOT                        R0 ; [+14]
       13 GETUPVAL                         R0 0
       14 GETTABLEKS                       R0 R0 K0 ["props"]
       16 GETTABLEKS                       R0 R0 K4 ["onFinish"]
       18 JUMPIFNOTEQKNIL                  R0 ; [+8]
       20 GETUPVAL                         R0 1
       21 GETTABLEKS                       R0 R0 K5 ["RenderStepped"]
       23 NAMECALL                         R0 R0 K6 ["Wait"]
       25 CALL                             R0 1 0
       26 JUMPBACK                         ; [-18]
       27 GETUPVAL                         R0 0
       28 LOADN                            R2 1
       29 NAMECALL                         R0 R0 K2 ["loadUntil"]
       31 CALL                             R0 2 0
       32 GETUPVAL                         R0 0
       33 LOADK                            R2 K7 [1.5]
       34 NAMECALL                         R0 R0 K2 ["loadUntil"]
       36 CALL                             R0 2 0
       37 GETUPVAL                         R0 0
       38 GETTABLEKS                       R0 R0 K3 ["isMounted"]
       40 JUMPIFNOT                        R0 ; [+6]
       41 GETUPVAL                         R0 0
       42 GETTABLEKS                       R0 R0 K0 ["props"]
       44 GETTABLEKS                       R0 R0 K4 ["onFinish"]
       46 CALL                             R0 0 0
       47 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["loadingText"]
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 LOADB                            R1 1
        7 SETTABLEKS                       R1 R0 K2 ["isMounted"]
        9 GETIMPORT                        R1 K4 [spawn]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U0
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["loadingText"]
        4 JUMPIFNOT                        R3 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R3 R2 K2 ["uploadSucceeded"]
        8 JUMPIFEQKNIL                     R3 ; [+10]
       10 GETTABLEKS                       R3 R1 K2 ["uploadSucceeded"]
       12 GETTABLEKS                       R4 R2 K2 ["uploadSucceeded"]
       14 JUMPIFEQ                         R3 R4 ; [+4]
       16 GETTABLEKS                       R3 R2 K3 ["onFinish"]
       18 CALL                             R3 0 0
       19 RETURN                           R0 0

PROTO_5:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["isMounted"]
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["UploadProgressBar should be used when FFlagToolboxAssetConfigFoundationMigration is enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R1 R0 K3 ["props"]
       10 GETTABLEKS                       R2 R0 K4 ["state"]
       12 GETTABLEKS                       R4 R1 K5 ["loadingText"]
       14 JUMPIFNOTEQKNIL                  R4 ; [+2]
       16 LOADB                            R3 0 +1
       17 LOADB                            R3 1
       18 LOADNIL                          R4
       19 LOADNIL                          R5
       20 LOADNIL                          R6
       21 LOADNIL                          R7
       22 LOADNIL                          R8
       23 JUMPIFNOT                        R3 ; [+31]
       24 GETTABLEKS                       R11 R2 K6 ["animProgress"]
       26 FASTCALL2K                       MATH_MAX R11 K7 ; [+4]
       28 LOADK                            R12 K7 [0]
       29 GETIMPORT                        R10 K10 [math.max]
       31 CALL                             R10 2 1
       32 FASTCALL2K                       MATH_MIN R10 K11 ; [+4]
       34 LOADK                            R11 K11 [1]
       35 GETIMPORT                        R9 K13 [math.min]
       37 CALL                             R9 2 1
       38 MOVE                             R4 R9
       39 GETTABLEKS                       R9 R1 K5 ["loadingText"]
       41 LOADK                            R10 K14 [" ( "]
       42 MULK                             R15 R4 K16 [100]
       43 ADDK                             R14 R15 K15 [0.5]
       44 FASTCALL1                        MATH_FLOOR R14 ; [+2]
       45 GETIMPORT                        R13 K18 [math.floor]
       47 CALL                             R13 1 1
       48 MOVE                             R11 R13
       49 LOADK                            R12 K19 ["% )"]
       50 CONCAT                           R5 R9 R12
       51 LOADNIL                          R6
       52 LOADN                            R7 20
       53 LOADN                            R8 10
       54 JUMP                             ; [+9]
       55 GETTABLEKS                       R9 R1 K20 ["progress"]
       57 ORK                              R4 R9 K7 [0]
       58 GETTABLEKS                       R5 R1 K21 ["progressTitle"]
       60 GETTABLEKS                       R6 R1 K22 ["progressText"]
       62 LOADN                            R7 30
       63 LOADN                            R8 24
       64 GETTABLEKS                       R9 R1 K23 ["Localization"]
       66 GETUPVAL                         R10 1
       67 GETTABLEKS                       R10 R10 K24 ["createElement"]
       69 GETUPVAL                         R11 2
       70 GETTABLEKS                       R11 R11 K25 ["View"]
       72 DUPTABLE                         R12 K29 [{"tag", "Position", "Size"}]
       73 LOADK                            R13 K30 ["bg-transparency-100"]
       74 SETTABLEKS                       R13 R12 K26 ["tag"]
       76 GETIMPORT                        R13 K33 [UDim2.new]
       78 LOADK                            R14 K15 [0.5]
       79 LOADN                            R15 56
       80 LOADN                            R16 0
       81 LOADN                            R17 58
       82 CALL                             R13 4 1
       83 SETTABLEKS                       R13 R12 K27 ["Position"]
       85 GETIMPORT                        R13 K33 [UDim2.new]
       87 LOADN                            R14 0
       88 LOADN                            R15 144
       89 LOADN                            R16 0
       90 LOADN                            R17 6
       91 CALL                             R13 4 1
       92 SETTABLEKS                       R13 R12 K28 ["Size"]
       94 DUPTABLE                         R13 K39 [{"Title", "Message", "Bar", "ProgressPercentText", "TimeWarning"}]
       95 JUMPIFNOT                        R5 ; [+33]
       96 GETUPVAL                         R14 1
       97 GETTABLEKS                       R14 R14 K24 ["createElement"]
       99 GETUPVAL                         R15 2
      100 GETTABLEKS                       R15 R15 K40 ["Text"]
      102 DUPTABLE                         R16 K41 [{"Position", "Size", "Text", "tag"}]
      103 GETIMPORT                        R17 K33 [UDim2.new]
      105 LOADN                            R18 0
      106 LOADN                            R19 0
      107 LOADN                            R20 0
      108 ADD                              R22 R7 R8
      109 MINUS                            R21 R22
      110 CALL                             R17 4 1
      111 SETTABLEKS                       R17 R16 K27 ["Position"]
      113 GETIMPORT                        R17 K33 [UDim2.new]
      115 LOADN                            R18 1
      116 LOADN                            R19 0
      117 LOADN                            R20 0
      118 MOVE                             R21 R7
      119 CALL                             R17 4 1
      120 SETTABLEKS                       R17 R16 K28 ["Size"]
      122 SETTABLEKS                       R5 R16 K40 ["Text"]
      124 LOADK                            R17 K42 ["text-body-large text-align-x-center text-align-y-center content-default"]
      125 SETTABLEKS                       R17 R16 K26 ["tag"]
      127 CALL                             R14 2 1
      128 JUMP                             ; [+1]
      129 LOADNIL                          R14
      130 SETTABLEKS                       R14 R13 K34 ["Title"]
      132 JUMPIFNOT                        R6 ; [+32]
      133 GETUPVAL                         R14 1
      134 GETTABLEKS                       R14 R14 K24 ["createElement"]
      136 GETUPVAL                         R15 2
      137 GETTABLEKS                       R15 R15 K40 ["Text"]
      139 DUPTABLE                         R16 K41 [{"Position", "Size", "Text", "tag"}]
      140 GETIMPORT                        R17 K33 [UDim2.new]
      142 LOADN                            R18 0
      143 LOADN                            R19 0
      144 LOADN                            R20 0
      145 LOADN                            R21 224
      146 CALL                             R17 4 1
      147 SETTABLEKS                       R17 R16 K27 ["Position"]
      149 GETIMPORT                        R17 K33 [UDim2.new]
      151 LOADN                            R18 1
      152 LOADN                            R19 0
      153 LOADN                            R20 0
      154 LOADN                            R21 30
      155 CALL                             R17 4 1
      156 SETTABLEKS                       R17 R16 K28 ["Size"]
      158 SETTABLEKS                       R6 R16 K40 ["Text"]
      160 LOADK                            R17 K42 ["text-body-large text-align-x-center text-align-y-center content-default"]
      161 SETTABLEKS                       R17 R16 K26 ["tag"]
      163 CALL                             R14 2 1
      164 JUMP                             ; [+1]
      165 LOADNIL                          R14
      166 SETTABLEKS                       R14 R13 K35 ["Message"]
      168 GETUPVAL                         R14 1
      169 GETTABLEKS                       R14 R14 K24 ["createElement"]
      171 GETUPVAL                         R15 2
      172 GETTABLEKS                       R15 R15 K43 ["Progress"]
      174 DUPTABLE                         R16 K47 [{"shape", "value", "width"}]
      175 GETUPVAL                         R17 3
      176 GETTABLEKS                       R17 R17 K48 ["ProgressShape"]
      178 GETTABLEKS                       R17 R17 K36 ["Bar"]
      180 SETTABLEKS                       R17 R16 K44 ["shape"]
      182 MULK                             R17 R4 K16 [100]
      183 SETTABLEKS                       R17 R16 K45 ["value"]
      185 GETIMPORT                        R17 K50 [UDim.new]
      187 LOADN                            R18 1
      188 LOADN                            R19 0
      189 CALL                             R17 2 1
      190 SETTABLEKS                       R17 R16 K46 ["width"]
      192 CALL                             R14 2 1
      193 SETTABLEKS                       R14 R13 K36 ["Bar"]
      195 JUMPIF                           R3 ; [+45]
      196 GETUPVAL                         R14 1
      197 GETTABLEKS                       R14 R14 K24 ["createElement"]
      199 GETUPVAL                         R15 2
      200 GETTABLEKS                       R15 R15 K40 ["Text"]
      202 DUPTABLE                         R16 K41 [{"Position", "Size", "Text", "tag"}]
      203 GETIMPORT                        R17 K33 [UDim2.new]
      205 LOADN                            R18 0
      206 LOADN                            R19 0
      207 LOADN                            R20 0
      208 LOADN                            R21 15
      209 CALL                             R17 4 1
      210 SETTABLEKS                       R17 R16 K27 ["Position"]
      212 GETIMPORT                        R17 K33 [UDim2.new]
      214 LOADN                            R18 1
      215 LOADN                            R19 0
      216 LOADN                            R20 0
      217 LOADN                            R21 10
      218 CALL                             R17 4 1
      219 SETTABLEKS                       R17 R16 K28 ["Size"]
      221 LOADK                            R19 K51 ["AssetConfig"]
      222 LOADK                            R20 K52 ["ProgressBarProgressText"]
      223 DUPTABLE                         R21 K54 [{"percent"}]
      224 MULK                             R23 R4 K16 [100]
      225 FASTCALL1                        MATH_FLOOR R23 ; [+2]
      226 GETIMPORT                        R22 K18 [math.floor]
      228 CALL                             R22 1 1
      229 SETTABLEKS                       R22 R21 K53 ["percent"]
      231 NAMECALL                         R17 R9 K55 ["getText"]
      233 CALL                             R17 4 1
      234 SETTABLEKS                       R17 R16 K40 ["Text"]
      236 LOADK                            R17 K56 ["text-caption-medium text-align-x-left text-align-y-center content-muted"]
      237 SETTABLEKS                       R17 R16 K26 ["tag"]
      239 CALL                             R14 2 1
      240 JUMP                             ; [+1]
      241 LOADNIL                          R14
      242 SETTABLEKS                       R14 R13 K37 ["ProgressPercentText"]
      244 JUMPIF                           R3 ; [+37]
      245 GETUPVAL                         R14 1
      246 GETTABLEKS                       R14 R14 K24 ["createElement"]
      248 GETUPVAL                         R15 2
      249 GETTABLEKS                       R15 R15 K40 ["Text"]
      251 DUPTABLE                         R16 K41 [{"Position", "Size", "Text", "tag"}]
      252 GETIMPORT                        R17 K33 [UDim2.new]
      254 LOADN                            R18 0
      255 LOADN                            R19 0
      256 LOADN                            R20 0
      257 LOADN                            R21 15
      258 CALL                             R17 4 1
      259 SETTABLEKS                       R17 R16 K27 ["Position"]
      261 GETIMPORT                        R17 K33 [UDim2.new]
      263 LOADN                            R18 1
      264 LOADN                            R19 0
      265 LOADN                            R20 0
      266 LOADN                            R21 10
      267 CALL                             R17 4 1
      268 SETTABLEKS                       R17 R16 K28 ["Size"]
      270 LOADK                            R19 K51 ["AssetConfig"]
      271 LOADK                            R20 K57 ["ProgressUploadWaitTimeWarning"]
      272 NAMECALL                         R17 R9 K55 ["getText"]
      274 CALL                             R17 3 1
      275 SETTABLEKS                       R17 R16 K40 ["Text"]
      277 LOADK                            R17 K58 ["text-caption-medium text-align-x-right text-align-y-center content-inverse-muted"]
      278 SETTABLEKS                       R17 R16 K26 ["tag"]
      280 CALL                             R14 2 1
      281 JUMP                             ; [+1]
      282 LOADNIL                          R14
      283 SETTABLEKS                       R14 R13 K38 ["TimeWarning"]
      285 CALL                             R10 3 -1
      286 RETURN                           R10 -1

PROTO_7:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 MOVE                             R0 R1
        5 DUPTABLE                         R1 K4 [{"progress", "progressText", "progressTitle", "uploadSucceeded"}]
        6 GETTABLEKS                       R2 R0 K5 ["progressPercentage"]
        8 SETTABLEKS                       R2 R1 K0 ["progress"]
       10 GETTABLEKS                       R2 R0 K1 ["progressText"]
       12 SETTABLEKS                       R2 R1 K1 ["progressText"]
       14 GETTABLEKS                       R2 R0 K2 ["progressTitle"]
       16 SETTABLEKS                       R2 R1 K2 ["progressTitle"]
       18 GETTABLEKS                       R2 R0 K3 ["uploadSucceeded"]
       20 SETTABLEKS                       R2 R1 K3 ["uploadSucceeded"]
       22 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["RunService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R0 K8 ["Packages"]
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R2 K11 ["React"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R2 K12 ["Roact"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K10 [require]
       27 GETTABLEKS                       R6 R2 K13 ["RoactRodux"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K10 [require]
       32 GETTABLEKS                       R7 R2 K14 ["Framework"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K10 [require]
       37 GETTABLEKS                       R8 R2 K15 ["Foundation"]
       39 CALL                             R7 1 1
       40 GETTABLEKS                       R8 R6 K16 ["ContextServices"]
       42 GETTABLEKS                       R9 R8 K17 ["withContext"]
       44 GETTABLEKS                       R10 R7 K18 ["Enums"]
       46 GETTABLEKS                       R11 R4 K19 ["Component"]
       48 LOADK                            R13 K20 ["UploadProgressBar"]
       49 NAMECALL                         R11 R11 K21 ["extend"]
       51 CALL                             R11 2 1
       52 GETIMPORT                        R12 K10 [require]
       54 GETTABLEKS                       R13 R0 K22 ["Src"]
       56 GETTABLEKS                       R13 R13 K23 ["Flags"]
       58 GETTABLEKS                       R13 R13 K24 ["getFFlagToolboxAssetConfigFoundationMigration"]
       60 CALL                             R12 1 1
       61 DUPCLOSURE                       R13 K25 [PROTO_0]
       62 SETTABLEKS                       R13 R11 K26 ["init"]
       64 DUPCLOSURE                       R13 K27 [PROTO_1]
       65 CAPTURE                          VAL R1
       66 SETTABLEKS                       R13 R11 K28 ["loadUntil"]
       68 DUPCLOSURE                       R13 K29 [PROTO_3]
       69 CAPTURE                          VAL R1
       70 SETTABLEKS                       R13 R11 K30 ["didMount"]
       72 DUPCLOSURE                       R13 K31 [PROTO_4]
       73 SETTABLEKS                       R13 R11 K32 ["didUpdate"]
       75 DUPCLOSURE                       R13 K33 [PROTO_5]
       76 SETTABLEKS                       R13 R11 K34 ["willUnmount"]
       78 DUPCLOSURE                       R13 K35 [PROTO_6]
       79 CAPTURE                          VAL R12
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R10
       83 SETTABLEKS                       R13 R11 K36 ["render"]
       85 DUPCLOSURE                       R13 K37 [PROTO_7]
       86 MOVE                             R14 R9
       87 DUPTABLE                         R15 K40 [{"Localization", "Stylizer"}]
       88 GETTABLEKS                       R16 R8 K38 ["Localization"]
       90 SETTABLEKS                       R16 R15 K38 ["Localization"]
       92 GETTABLEKS                       R16 R8 K39 ["Stylizer"]
       94 SETTABLEKS                       R16 R15 K39 ["Stylizer"]
       96 CALL                             R14 1 1
       97 MOVE                             R15 R11
       98 CALL                             R14 1 1
       99 MOVE                             R11 R14
      100 GETTABLEKS                       R14 R5 K41 ["connect"]
      102 MOVE                             R15 R13
      103 CALL                             R14 1 1
      104 MOVE                             R15 R11
      105 CALL                             R14 1 -1
      106 RETURN                           R14 -1
