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
       15 JUMPIFNOT                        R3 ; [+30]
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
       34 MULK                             R13 R4 K13 [100]
       35 ADDK                             R12 R13 K12 [0.5]
       36 FASTCALL1                        MATH_FLOOR R12 ; [+2]
       37 GETIMPORT                        R11 K15 [math.floor]
       39 CALL                             R11 1 1
       40 LOADK                            R12 K16 ["% )"]
       41 CONCAT                           R5 R9 R12
       42 LOADNIL                          R6
       43 LOADN                            R7 20
       44 LOADN                            R8 10
       45 JUMP                             ; [+9]
       46 GETTABLEKS                       R9 R1 K17 ["progress"]
       48 ORK                              R4 R9 K4 [0]
       49 GETTABLEKS                       R5 R1 K18 ["progressTitle"]
       51 GETTABLEKS                       R6 R1 K19 ["progressText"]
       53 LOADN                            R7 30
       54 LOADN                            R8 24
       55 GETTABLEKS                       R9 R1 K20 ["Localization"]
       57 GETUPVAL                         R10 0
       58 GETTABLEKS                       R10 R10 K21 ["createElement"]
       60 GETUPVAL                         R11 1
       61 GETTABLEKS                       R11 R11 K22 ["View"]
       63 DUPTABLE                         R12 K27 [{["tag"] = "bg-transparency-100", ["Position"], ["Size"]}]
       64 GETIMPORT                        R13 K30 [UDim2.new]
       66 LOADK                            R14 K12 [0.5]
       67 LOADN                            R15 -200
       68 LOADN                            R16 0
       69 LOADN                            R17 314
       70 CALL                             R13 4 1
       71 SETTABLEKS                       R13 R12 K25 ["Position"]
       73 GETIMPORT                        R13 K30 [UDim2.new]
       75 LOADN                            R14 0
       76 LOADN                            R15 400
       77 LOADN                            R16 0
       78 LOADN                            R17 6
       79 CALL                             R13 4 1
       80 SETTABLEKS                       R13 R12 K26 ["Size"]
       82 DUPTABLE                         R13 K36 [{"Title", "Message", "Bar", "ProgressPercentText", "TimeWarning"}]
       83 JUMPIFNOT                        R5 ; [+30]
       84 GETUPVAL                         R14 0
       85 GETTABLEKS                       R14 R14 K21 ["createElement"]
       87 GETUPVAL                         R15 1
       88 GETTABLEKS                       R15 R15 K37 ["Text"]
       90 DUPTABLE                         R16 K39 [{["Position"], ["Size"], ["Text"], ["tag"] = "text-body-large text-align-x-center text-align-y-center content-default"}]
       91 GETIMPORT                        R17 K30 [UDim2.new]
       93 LOADN                            R18 0
       94 LOADN                            R19 0
       95 LOADN                            R20 0
       96 ADD                              R22 R7 R8
       97 MINUS                            R21 R22
       98 CALL                             R17 4 1
       99 SETTABLEKS                       R17 R16 K25 ["Position"]
      101 GETIMPORT                        R17 K30 [UDim2.new]
      103 LOADN                            R18 1
      104 LOADN                            R19 0
      105 LOADN                            R20 0
      106 MOVE                             R21 R7
      107 CALL                             R17 4 1
      108 SETTABLEKS                       R17 R16 K26 ["Size"]
      110 SETTABLEKS                       R5 R16 K37 ["Text"]
      112 CALL                             R14 2 1
      113 JUMP                             ; [+1]
      114 LOADNIL                          R14
      115 SETTABLEKS                       R14 R13 K31 ["Title"]
      117 JUMPIFNOT                        R6 ; [+29]
      118 GETUPVAL                         R14 0
      119 GETTABLEKS                       R14 R14 K21 ["createElement"]
      121 GETUPVAL                         R15 1
      122 GETTABLEKS                       R15 R15 K37 ["Text"]
      124 DUPTABLE                         R16 K39 [{["Position"], ["Size"], ["Text"], ["tag"] = "text-body-large text-align-x-center text-align-y-center content-default"}]
      125 GETIMPORT                        R17 K30 [UDim2.new]
      127 LOADN                            R18 0
      128 LOADN                            R19 0
      129 LOADN                            R20 0
      130 LOADN                            R21 -32
      131 CALL                             R17 4 1
      132 SETTABLEKS                       R17 R16 K25 ["Position"]
      134 GETIMPORT                        R17 K30 [UDim2.new]
      136 LOADN                            R18 1
      137 LOADN                            R19 0
      138 LOADN                            R20 0
      139 LOADN                            R21 30
      140 CALL                             R17 4 1
      141 SETTABLEKS                       R17 R16 K26 ["Size"]
      143 SETTABLEKS                       R6 R16 K37 ["Text"]
      145 CALL                             R14 2 1
      146 JUMP                             ; [+1]
      147 LOADNIL                          R14
      148 SETTABLEKS                       R14 R13 K32 ["Message"]
      150 GETUPVAL                         R14 0
      151 GETTABLEKS                       R14 R14 K21 ["createElement"]
      153 GETUPVAL                         R15 1
      154 GETTABLEKS                       R15 R15 K40 ["Progress"]
      156 DUPTABLE                         R16 K44 [{"shape", "value", "width"}]
      157 GETUPVAL                         R17 2
      158 GETTABLEKS                       R17 R17 K45 ["ProgressShape"]
      160 GETTABLEKS                       R17 R17 K33 ["Bar"]
      162 SETTABLEKS                       R17 R16 K41 ["shape"]
      164 MULK                             R17 R4 K13 [100]
      165 SETTABLEKS                       R17 R16 K42 ["value"]
      167 GETIMPORT                        R17 K47 [UDim.new]
      169 LOADN                            R18 1
      170 LOADN                            R19 0
      171 CALL                             R17 2 1
      172 SETTABLEKS                       R17 R16 K43 ["width"]
      174 CALL                             R14 2 1
      175 SETTABLEKS                       R14 R13 K33 ["Bar"]
      177 JUMPIF                           R3 ; [+42]
      178 GETUPVAL                         R14 0
      179 GETTABLEKS                       R14 R14 K21 ["createElement"]
      181 GETUPVAL                         R15 1
      182 GETTABLEKS                       R15 R15 K37 ["Text"]
      184 DUPTABLE                         R16 K49 [{["Position"], ["Size"], ["Text"], ["tag"] = "text-caption-medium text-align-x-left text-align-y-center content-muted"}]
      185 GETIMPORT                        R17 K30 [UDim2.new]
      187 LOADN                            R18 0
      188 LOADN                            R19 0
      189 LOADN                            R20 0
      190 LOADN                            R21 15
      191 CALL                             R17 4 1
      192 SETTABLEKS                       R17 R16 K25 ["Position"]
      194 GETIMPORT                        R17 K30 [UDim2.new]
      196 LOADN                            R18 1
      197 LOADN                            R19 0
      198 LOADN                            R20 0
      199 LOADN                            R21 10
      200 CALL                             R17 4 1
      201 SETTABLEKS                       R17 R16 K26 ["Size"]
      203 LOADK                            R19 K50 ["AssetConfig"]
      204 LOADK                            R20 K51 ["ProgressBarProgressText"]
      205 DUPTABLE                         R21 K53 [{"percent"}]
      206 MULK                             R23 R4 K13 [100]
      207 FASTCALL1                        MATH_FLOOR R23 ; [+2]
      208 GETIMPORT                        R22 K15 [math.floor]
      210 CALL                             R22 1 1
      211 SETTABLEKS                       R22 R21 K52 ["percent"]
      213 NAMECALL                         R17 R9 K54 ["getText"]
      215 CALL                             R17 4 1
      216 SETTABLEKS                       R17 R16 K37 ["Text"]
      218 CALL                             R14 2 1
      219 JUMP                             ; [+1]
      220 LOADNIL                          R14
      221 SETTABLEKS                       R14 R13 K34 ["ProgressPercentText"]
      223 JUMPIF                           R3 ; [+34]
      224 GETUPVAL                         R14 0
      225 GETTABLEKS                       R14 R14 K21 ["createElement"]
      227 GETUPVAL                         R15 1
      228 GETTABLEKS                       R15 R15 K37 ["Text"]
      230 DUPTABLE                         R16 K56 [{["Position"], ["Size"], ["Text"], ["tag"] = "text-caption-medium text-align-x-right text-align-y-center content-inverse-muted"}]
      231 GETIMPORT                        R17 K30 [UDim2.new]
      233 LOADN                            R18 0
      234 LOADN                            R19 0
      235 LOADN                            R20 0
      236 LOADN                            R21 15
      237 CALL                             R17 4 1
      238 SETTABLEKS                       R17 R16 K25 ["Position"]
      240 GETIMPORT                        R17 K30 [UDim2.new]
      242 LOADN                            R18 1
      243 LOADN                            R19 0
      244 LOADN                            R20 0
      245 LOADN                            R21 10
      246 CALL                             R17 4 1
      247 SETTABLEKS                       R17 R16 K26 ["Size"]
      249 LOADK                            R19 K50 ["AssetConfig"]
      250 LOADK                            R20 K57 ["ProgressUploadWaitTimeWarning"]
      251 NAMECALL                         R17 R9 K54 ["getText"]
      253 CALL                             R17 3 1
      254 SETTABLEKS                       R17 R16 K37 ["Text"]
      256 CALL                             R14 2 1
      257 JUMP                             ; [+1]
      258 LOADNIL                          R14
      259 SETTABLEKS                       R14 R13 K35 ["TimeWarning"]
      261 CALL                             R10 3 -1
      262 RETURN                           R10 -1

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
