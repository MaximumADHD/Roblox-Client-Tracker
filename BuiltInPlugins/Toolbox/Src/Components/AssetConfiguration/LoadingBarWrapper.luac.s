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
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETTABLEKS                       R1 R0 K0 ["props"]
        7 GETTABLEKS                       R2 R0 K1 ["state"]
        9 GETTABLEKS                       R5 R2 K2 ["progress"]
       11 FASTCALL2K                       MATH_MAX R5 K3 ; [+4]
       13 LOADK                            R6 K3 [0]
       14 GETIMPORT                        R4 K6 [math.max]
       16 CALL                             R4 2 1
       17 FASTCALL2K                       MATH_MIN R4 K7 ; [+4]
       19 LOADK                            R5 K7 [1]
       20 GETIMPORT                        R3 K9 [math.min]
       22 CALL                             R3 2 1
       23 GETTABLEKS                       R5 R1 K10 ["loadingText"]
       25 LOADK                            R6 K11 [" ( "]
       26 MULK                             R11 R3 K13 [100]
       27 ADDK                             R10 R11 K12 [0.5]
       28 FASTCALL1                        MATH_FLOOR R10 ; [+2]
       29 GETIMPORT                        R9 K15 [math.floor]
       31 CALL                             R9 1 1
       32 MOVE                             R7 R9
       33 LOADK                            R8 K16 ["% )"]
       34 CONCAT                           R4 R5 R8
       35 GETUPVAL                         R5 1
       36 GETTABLEKS                       R5 R5 K17 ["createElement"]
       38 LOADK                            R6 K18 ["Frame"]
       39 DUPTABLE                         R7 K22 [{"BackgroundTransparency", "Size", "Position"}]
       40 LOADN                            R8 1
       41 SETTABLEKS                       R8 R7 K19 ["BackgroundTransparency"]
       43 GETTABLEKS                       R8 R1 K20 ["Size"]
       45 SETTABLEKS                       R8 R7 K20 ["Size"]
       47 GETTABLEKS                       R8 R1 K21 ["Position"]
       49 SETTABLEKS                       R8 R7 K21 ["Position"]
       51 DUPTABLE                         R8 K25 [{"LoadingTitle", "LoadingBar"}]
       52 GETUPVAL                         R9 1
       53 GETTABLEKS                       R9 R9 K17 ["createElement"]
       55 GETUPVAL                         R10 2
       56 DUPTABLE                         R11 K29 [{"Position", "Size", "Text", "TextXAlignment", "TextYAlignment"}]
       57 GETIMPORT                        R12 K32 [UDim2.new]
       59 LOADN                            R13 0
       60 LOADN                            R14 0
       61 LOADN                            R15 0
       62 LOADN                            R16 226
       63 CALL                             R12 4 1
       64 SETTABLEKS                       R12 R11 K21 ["Position"]
       66 GETIMPORT                        R12 K32 [UDim2.new]
       68 LOADN                            R13 1
       69 LOADN                            R14 0
       70 LOADN                            R15 0
       71 LOADN                            R16 20
       72 CALL                             R12 4 1
       73 SETTABLEKS                       R12 R11 K20 ["Size"]
       75 SETTABLEKS                       R4 R11 K26 ["Text"]
       77 GETIMPORT                        R12 K35 [Enum.TextXAlignment.Center]
       79 SETTABLEKS                       R12 R11 K27 ["TextXAlignment"]
       81 GETIMPORT                        R12 K36 [Enum.TextYAlignment.Center]
       83 SETTABLEKS                       R12 R11 K28 ["TextYAlignment"]
       85 CALL                             R9 2 1
       86 SETTABLEKS                       R9 R8 K23 ["LoadingTitle"]
       88 GETUPVAL                         R9 1
       89 GETTABLEKS                       R9 R9 K17 ["createElement"]
       91 GETUPVAL                         R10 3
       92 DUPTABLE                         R11 K38 [{"Progress", "Size"}]
       93 SETTABLEKS                       R3 R11 K37 ["Progress"]
       95 GETIMPORT                        R12 K32 [UDim2.new]
       97 LOADN                            R13 1
       98 LOADN                            R14 0
       99 LOADN                            R15 1
      100 LOADN                            R16 0
      101 CALL                             R12 4 1
      102 SETTABLEKS                       R12 R11 K20 ["Size"]
      104 CALL                             R9 2 1
      105 SETTABLEKS                       R9 R8 K24 ["LoadingBar"]
      107 CALL                             R5 3 -1
      108 RETURN                           R5 -1

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
       41 GETIMPORT                        R9 K9 [require]
       43 GETTABLEKS                       R10 R0 K18 ["Src"]
       45 GETTABLEKS                       R10 R10 K19 ["Flags"]
       47 GETTABLEKS                       R10 R10 K20 ["getFFlagToolboxAssetConfigFoundationMigration"]
       49 CALL                             R9 1 1
       50 DUPCLOSURE                       R10 K21 [PROTO_0]
       51 SETTABLEKS                       R10 R8 K22 ["init"]
       53 DUPCLOSURE                       R10 K23 [PROTO_1]
       54 CAPTURE                          VAL R1
       55 SETTABLEKS                       R10 R8 K24 ["loadUntil"]
       57 DUPCLOSURE                       R10 K25 [PROTO_3]
       58 CAPTURE                          VAL R1
       59 SETTABLEKS                       R10 R8 K26 ["didMount"]
       61 DUPCLOSURE                       R10 K27 [PROTO_4]
       62 SETTABLEKS                       R10 R8 K28 ["willUnmount"]
       64 DUPCLOSURE                       R10 K29 [PROTO_5]
       65 CAPTURE                          VAL R9
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R7
       69 SETTABLEKS                       R10 R8 K30 ["render"]
       71 RETURN                           R8 1
