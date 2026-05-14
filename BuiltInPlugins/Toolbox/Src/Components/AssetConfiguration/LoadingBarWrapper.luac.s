PROTO_0:
        0 DUPTABLE                         R4 K2 [{"progress", "time"}]
        1 LOADN                            R5 0
        2 SETTABLEKS                       R5 R4 K0 ["progress"]
        4 LOADN                            R5 0
        5 SETTABLEKS                       R5 R4 K1 ["time"]
        7 NAMECALL                         R2 R0 K3 ["setState"]
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R2 K1 ["progress"]
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
       20 DUPTABLE                         R6 K6 [{"time", "progress"}]
       21 SETTABLEKS                       R3 R6 K5 ["time"]
       23 GETTABLEKS                       R8 R0 K7 ["props"]
       25 GETTABLEKS                       R8 R8 K8 ["loadingTime"]
       27 DIV                              R7 R3 R8
       28 SETTABLEKS                       R7 R6 K1 ["progress"]
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
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["isMounted"]
        3 GETIMPORT                        R1 K2 [spawn]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_4:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["isMounted"]
        3 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R5 R2 K2 ["progress"]
        6 FASTCALL2K                       MATH_MAX R5 K3 ; [+4]
        8 LOADK                            R6 K3 [0]
        9 GETIMPORT                        R4 K6 [math.max]
       11 CALL                             R4 2 1
       12 FASTCALL2K                       MATH_MIN R4 K7 ; [+4]
       14 LOADK                            R5 K7 [1]
       15 GETIMPORT                        R3 K9 [math.min]
       17 CALL                             R3 2 1
       18 GETTABLEKS                       R5 R1 K10 ["loadingText"]
       20 LOADK                            R6 K11 [" ( "]
       21 MULK                             R11 R3 K13 [100]
       22 ADDK                             R10 R11 K12 [0.5]
       23 FASTCALL1                        MATH_FLOOR R10 ; [+2]
       24 GETIMPORT                        R9 K15 [math.floor]
       26 CALL                             R9 1 1
       27 MOVE                             R7 R9
       28 LOADK                            R8 K16 ["% )"]
       29 CONCAT                           R4 R5 R8
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K17 ["createElement"]
       33 LOADK                            R6 K18 ["Frame"]
       34 DUPTABLE                         R7 K22 [{"BackgroundTransparency", "Size", "Position"}]
       35 LOADN                            R8 1
       36 SETTABLEKS                       R8 R7 K19 ["BackgroundTransparency"]
       38 GETTABLEKS                       R8 R1 K20 ["Size"]
       40 SETTABLEKS                       R8 R7 K20 ["Size"]
       42 GETTABLEKS                       R8 R1 K21 ["Position"]
       44 SETTABLEKS                       R8 R7 K21 ["Position"]
       46 DUPTABLE                         R8 K25 [{"LoadingTitle", "LoadingBar"}]
       47 GETUPVAL                         R9 0
       48 GETTABLEKS                       R9 R9 K17 ["createElement"]
       50 GETUPVAL                         R10 1
       51 DUPTABLE                         R11 K29 [{"Position", "Size", "Text", "TextXAlignment", "TextYAlignment"}]
       52 GETIMPORT                        R12 K32 [UDim2.new]
       54 LOADN                            R13 0
       55 LOADN                            R14 0
       56 LOADN                            R15 0
       57 LOADN                            R16 226
       58 CALL                             R12 4 1
       59 SETTABLEKS                       R12 R11 K21 ["Position"]
       61 GETIMPORT                        R12 K32 [UDim2.new]
       63 LOADN                            R13 1
       64 LOADN                            R14 0
       65 LOADN                            R15 0
       66 LOADN                            R16 20
       67 CALL                             R12 4 1
       68 SETTABLEKS                       R12 R11 K20 ["Size"]
       70 SETTABLEKS                       R4 R11 K26 ["Text"]
       72 GETIMPORT                        R12 K35 [Enum.TextXAlignment.Center]
       74 SETTABLEKS                       R12 R11 K27 ["TextXAlignment"]
       76 GETIMPORT                        R12 K36 [Enum.TextYAlignment.Center]
       78 SETTABLEKS                       R12 R11 K28 ["TextYAlignment"]
       80 CALL                             R9 2 1
       81 SETTABLEKS                       R9 R8 K23 ["LoadingTitle"]
       83 GETUPVAL                         R9 0
       84 GETTABLEKS                       R9 R9 K17 ["createElement"]
       86 GETUPVAL                         R10 2
       87 DUPTABLE                         R11 K38 [{"Progress", "Size"}]
       88 SETTABLEKS                       R3 R11 K37 ["Progress"]
       90 GETIMPORT                        R12 K32 [UDim2.new]
       92 LOADN                            R13 1
       93 LOADN                            R14 0
       94 LOADN                            R15 1
       95 LOADN                            R16 0
       96 CALL                             R12 4 1
       97 SETTABLEKS                       R12 R11 K20 ["Size"]
       99 CALL                             R9 2 1
      100 SETTABLEKS                       R9 R8 K24 ["LoadingBar"]
      102 CALL                             R5 3 -1
      103 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [game]
       13 LOADK                            R3 K5 ["RunService"]
       14 NAMECALL                         R1 R1 K6 ["GetService"]
       16 CALL                             R1 2 1
       17 GETTABLEKS                       R2 R0 K7 ["Packages"]
       19 GETIMPORT                        R3 K9 [require]
       21 GETTABLEKS                       R4 R2 K10 ["Roact"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K9 [require]
       26 GETTABLEKS                       R5 R2 K11 ["Framework"]
       28 CALL                             R4 1 1
       29 GETTABLEKS                       R5 R4 K12 ["UI"]
       31 GETTABLEKS                       R6 R5 K13 ["TextLabel"]
       33 GETTABLEKS                       R7 R5 K14 ["LoadingBar"]
       35 GETTABLEKS                       R8 R3 K15 ["Component"]
       37 LOADK                            R10 K16 ["LoadingBarWrapper"]
       38 NAMECALL                         R8 R8 K17 ["extend"]
       40 CALL                             R8 2 1
       41 DUPCLOSURE                       R9 K18 [PROTO_0]
       42 SETTABLEKS                       R9 R8 K19 ["init"]
       44 DUPCLOSURE                       R9 K20 [PROTO_1]
       45 CAPTURE                          VAL R1
       46 SETTABLEKS                       R9 R8 K21 ["loadUntil"]
       48 DUPCLOSURE                       R9 K22 [PROTO_3]
       49 CAPTURE                          VAL R1
       50 SETTABLEKS                       R9 R8 K23 ["didMount"]
       52 DUPCLOSURE                       R9 K24 [PROTO_4]
       53 SETTABLEKS                       R9 R8 K25 ["willUnmount"]
       55 DUPCLOSURE                       R9 K26 [PROTO_5]
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R7
       59 SETTABLEKS                       R9 R8 K27 ["render"]
       61 RETURN                           R8 1
