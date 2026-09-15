PROTO_0:
        0 DUPTABLE                         R3 K3 [{[1] = 0, ["time"] = 0}]
        1 NAMECALL                         R1 R0 K4 ["setState"]
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

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
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R4 R1 K2 ["loadingText"]
        6 JUMPIFNOTEQKNIL                  R4 ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 LOADNIL                          R4
       11 LOADNIL                          R5
       12 LOADNIL                          R6
       13 LOADNIL                          R7
       14 LOADNIL                          R8
       15 JUMPIFNOT                        R3 ; [+31]
       16 GETTABLEKS                       R11 R2 K3 ["animProgress"]
       18 FASTCALL2K                       MATH_MAX R11 K4 ; [+4]
       20 LOADK                            R12 K4 [0]
       21 GETIMPORT                        R10 K7 [math.max]
       23 CALL                             R10 2 1
       24 FASTCALL2K                       MATH_MIN R10 K8 ; [+4]
       26 LOADK                            R11 K8 [1]
       27 GETIMPORT                        R9 K10 [math.min]
       29 CALL                             R9 2 1
       30 MOVE                             R4 R9
       31 GETTABLEKS                       R9 R1 K2 ["loadingText"]
       33 LOADK                            R10 K11 [" ( "]
       34 MULK                             R15 R4 K13 [100]
       35 ADDK                             R14 R15 K12 [0.5]
       36 FASTCALL1                        MATH_FLOOR R14 ; [+2]
       37 GETIMPORT                        R13 K15 [math.floor]
       39 CALL                             R13 1 1
       40 MOVE                             R11 R13
       41 LOADK                            R12 K16 ["% )"]
       42 CONCAT                           R5 R9 R12
       43 LOADNIL                          R6
       44 LOADN                            R7 20
       45 LOADN                            R8 10
       46 JUMP                             ; [+9]
       47 GETTABLEKS                       R9 R1 K17 ["progress"]
       49 ORK                              R4 R9 K4 [0]
       50 GETTABLEKS                       R5 R1 K18 ["progressTitle"]
       52 GETTABLEKS                       R6 R1 K19 ["progressText"]
       54 LOADN                            R7 30
       55 LOADN                            R8 24
       56 GETTABLEKS                       R9 R1 K20 ["Localization"]
       58 GETUPVAL                         R10 0
       59 GETTABLEKS                       R10 R10 K21 ["createElement"]
       61 GETUPVAL                         R11 1
       62 GETTABLEKS                       R11 R11 K22 ["View"]
       64 DUPTABLE                         R12 K27 [{["tag"] = "bg-transparency-100", ["Position"], ["Size"]}]
       65 GETIMPORT                        R13 K30 [UDim2.new]
       67 LOADK                            R14 K12 [0.5]
       68 LOADN                            R15 -200
       69 LOADN                            R16 0
       70 LOADN                            R17 314
       71 CALL                             R13 4 1
       72 SETTABLEKS                       R13 R12 K25 ["Position"]
       74 GETIMPORT                        R13 K30 [UDim2.new]
       76 LOADN                            R14 0
       77 LOADN                            R15 400
       78 LOADN                            R16 0
       79 LOADN                            R17 6
       80 CALL                             R13 4 1
       81 SETTABLEKS                       R13 R12 K26 ["Size"]
       83 DUPTABLE                         R13 K36 [{"Title", "Message", "Bar", "ProgressPercentText", "TimeWarning"}]
       84 JUMPIFNOT                        R5 ; [+30]
       85 GETUPVAL                         R14 0
       86 GETTABLEKS                       R14 R14 K21 ["createElement"]
       88 GETUPVAL                         R15 1
       89 GETTABLEKS                       R15 R15 K37 ["Text"]
       91 DUPTABLE                         R16 K39 [{["Position"], ["Size"], ["Text"], ["tag"] = "text-body-large text-align-x-center text-align-y-center content-default"}]
       92 GETIMPORT                        R17 K30 [UDim2.new]
       94 LOADN                            R18 0
       95 LOADN                            R19 0
       96 LOADN                            R20 0
       97 ADD                              R22 R7 R8
       98 MINUS                            R21 R22
       99 CALL                             R17 4 1
      100 SETTABLEKS                       R17 R16 K25 ["Position"]
      102 GETIMPORT                        R17 K30 [UDim2.new]
      104 LOADN                            R18 1
      105 LOADN                            R19 0
      106 LOADN                            R20 0
      107 MOVE                             R21 R7
      108 CALL                             R17 4 1
      109 SETTABLEKS                       R17 R16 K26 ["Size"]
      111 SETTABLEKS                       R5 R16 K37 ["Text"]
      113 CALL                             R14 2 1
      114 JUMP                             ; [+1]
      115 LOADNIL                          R14
      116 SETTABLEKS                       R14 R13 K31 ["Title"]
      118 JUMPIFNOT                        R6 ; [+29]
      119 GETUPVAL                         R14 0
      120 GETTABLEKS                       R14 R14 K21 ["createElement"]
      122 GETUPVAL                         R15 1
      123 GETTABLEKS                       R15 R15 K37 ["Text"]
      125 DUPTABLE                         R16 K39 [{["Position"], ["Size"], ["Text"], ["tag"] = "text-body-large text-align-x-center text-align-y-center content-default"}]
      126 GETIMPORT                        R17 K30 [UDim2.new]
      128 LOADN                            R18 0
      129 LOADN                            R19 0
      130 LOADN                            R20 0
      131 LOADN                            R21 -32
      132 CALL                             R17 4 1
      133 SETTABLEKS                       R17 R16 K25 ["Position"]
      135 GETIMPORT                        R17 K30 [UDim2.new]
      137 LOADN                            R18 1
      138 LOADN                            R19 0
      139 LOADN                            R20 0
      140 LOADN                            R21 30
      141 CALL                             R17 4 1
      142 SETTABLEKS                       R17 R16 K26 ["Size"]
      144 SETTABLEKS                       R6 R16 K37 ["Text"]
      146 CALL                             R14 2 1
      147 JUMP                             ; [+1]
      148 LOADNIL                          R14
      149 SETTABLEKS                       R14 R13 K32 ["Message"]
      151 GETUPVAL                         R14 0
      152 GETTABLEKS                       R14 R14 K21 ["createElement"]
      154 GETUPVAL                         R15 1
      155 GETTABLEKS                       R15 R15 K40 ["Progress"]
      157 DUPTABLE                         R16 K44 [{"shape", "value", "width"}]
      158 GETUPVAL                         R17 2
      159 GETTABLEKS                       R17 R17 K45 ["ProgressShape"]
      161 GETTABLEKS                       R17 R17 K33 ["Bar"]
      163 SETTABLEKS                       R17 R16 K41 ["shape"]
      165 MULK                             R17 R4 K13 [100]
      166 SETTABLEKS                       R17 R16 K42 ["value"]
      168 GETIMPORT                        R17 K47 [UDim.new]
      170 LOADN                            R18 1
      171 LOADN                            R19 0
      172 CALL                             R17 2 1
      173 SETTABLEKS                       R17 R16 K43 ["width"]
      175 CALL                             R14 2 1
      176 SETTABLEKS                       R14 R13 K33 ["Bar"]
      178 JUMPIF                           R3 ; [+42]
      179 GETUPVAL                         R14 0
      180 GETTABLEKS                       R14 R14 K21 ["createElement"]
      182 GETUPVAL                         R15 1
      183 GETTABLEKS                       R15 R15 K37 ["Text"]
      185 DUPTABLE                         R16 K49 [{["Position"], ["Size"], ["Text"], ["tag"] = "text-caption-medium text-align-x-left text-align-y-center content-muted"}]
      186 GETIMPORT                        R17 K30 [UDim2.new]
      188 LOADN                            R18 0
      189 LOADN                            R19 0
      190 LOADN                            R20 0
      191 LOADN                            R21 15
      192 CALL                             R17 4 1
      193 SETTABLEKS                       R17 R16 K25 ["Position"]
      195 GETIMPORT                        R17 K30 [UDim2.new]
      197 LOADN                            R18 1
      198 LOADN                            R19 0
      199 LOADN                            R20 0
      200 LOADN                            R21 10
      201 CALL                             R17 4 1
      202 SETTABLEKS                       R17 R16 K26 ["Size"]
      204 LOADK                            R19 K50 ["AssetConfig"]
      205 LOADK                            R20 K51 ["ProgressBarProgressText"]
      206 DUPTABLE                         R21 K53 [{"percent"}]
      207 MULK                             R23 R4 K13 [100]
      208 FASTCALL1                        MATH_FLOOR R23 ; [+2]
      209 GETIMPORT                        R22 K15 [math.floor]
      211 CALL                             R22 1 1
      212 SETTABLEKS                       R22 R21 K52 ["percent"]
      214 NAMECALL                         R17 R9 K54 ["getText"]
      216 CALL                             R17 4 1
      217 SETTABLEKS                       R17 R16 K37 ["Text"]
      219 CALL                             R14 2 1
      220 JUMP                             ; [+1]
      221 LOADNIL                          R14
      222 SETTABLEKS                       R14 R13 K34 ["ProgressPercentText"]
      224 JUMPIF                           R3 ; [+34]
      225 GETUPVAL                         R14 0
      226 GETTABLEKS                       R14 R14 K21 ["createElement"]
      228 GETUPVAL                         R15 1
      229 GETTABLEKS                       R15 R15 K37 ["Text"]
      231 DUPTABLE                         R16 K56 [{["Position"], ["Size"], ["Text"], ["tag"] = "text-caption-medium text-align-x-right text-align-y-center content-inverse-muted"}]
      232 GETIMPORT                        R17 K30 [UDim2.new]
      234 LOADN                            R18 0
      235 LOADN                            R19 0
      236 LOADN                            R20 0
      237 LOADN                            R21 15
      238 CALL                             R17 4 1
      239 SETTABLEKS                       R17 R16 K25 ["Position"]
      241 GETIMPORT                        R17 K30 [UDim2.new]
      243 LOADN                            R18 1
      244 LOADN                            R19 0
      245 LOADN                            R20 0
      246 LOADN                            R21 10
      247 CALL                             R17 4 1
      248 SETTABLEKS                       R17 R16 K26 ["Size"]
      250 LOADK                            R19 K50 ["AssetConfig"]
      251 LOADK                            R20 K57 ["ProgressUploadWaitTimeWarning"]
      252 NAMECALL                         R17 R9 K54 ["getText"]
      254 CALL                             R17 3 1
      255 SETTABLEKS                       R17 R16 K37 ["Text"]
      257 CALL                             R14 2 1
      258 JUMP                             ; [+1]
      259 LOADNIL                          R14
      260 SETTABLEKS                       R14 R13 K35 ["TimeWarning"]
      262 CALL                             R10 3 -1
      263 RETURN                           R10 -1

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
       52 DUPCLOSURE                       R12 K22 [PROTO_0]
       53 SETTABLEKS                       R12 R11 K23 ["init"]
       55 DUPCLOSURE                       R12 K24 [PROTO_1]
       56 CAPTURE                          VAL R1
       57 SETTABLEKS                       R12 R11 K25 ["loadUntil"]
       59 DUPCLOSURE                       R12 K26 [PROTO_3]
       60 CAPTURE                          VAL R1
       61 SETTABLEKS                       R12 R11 K27 ["didMount"]
       63 DUPCLOSURE                       R12 K28 [PROTO_4]
       64 SETTABLEKS                       R12 R11 K29 ["didUpdate"]
       66 DUPCLOSURE                       R12 K30 [PROTO_5]
       67 SETTABLEKS                       R12 R11 K31 ["willUnmount"]
       69 DUPCLOSURE                       R12 K32 [PROTO_6]
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R10
       73 SETTABLEKS                       R12 R11 K33 ["render"]
       75 DUPCLOSURE                       R12 K34 [PROTO_7]
       76 MOVE                             R13 R9
       77 DUPTABLE                         R14 K37 [{"Localization", "Stylizer"}]
       78 GETTABLEKS                       R15 R8 K35 ["Localization"]
       80 SETTABLEKS                       R15 R14 K35 ["Localization"]
       82 GETTABLEKS                       R15 R8 K36 ["Stylizer"]
       84 SETTABLEKS                       R15 R14 K36 ["Stylizer"]
       86 CALL                             R13 1 1
       87 MOVE                             R14 R11
       88 CALL                             R13 1 1
       89 MOVE                             R11 R13
       90 GETTABLEKS                       R13 R5 K38 ["connect"]
       92 MOVE                             R14 R12
       93 CALL                             R13 1 1
       94 MOVE                             R14 R11
       95 CALL                             R13 1 -1
       96 RETURN                           R13 -1
