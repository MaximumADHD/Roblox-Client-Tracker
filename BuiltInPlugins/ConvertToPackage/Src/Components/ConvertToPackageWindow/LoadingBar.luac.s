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
        0 GETTABLEKS                       R3 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R3 K1 ["progress"]
        4 JUMPIFNOTLT                      R2 R1 ; [+29]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K2 ["RenderStepped"]
        9 NAMECALL                         R2 R2 K3 ["Wait"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R0 K4 ["isMounted"]
       14 JUMPIFNOT                        R3 ; [+19]
       15 GETTABLEKS                       R5 R0 K0 ["state"]
       17 GETTABLEKS                       R4 R5 K5 ["time"]
       19 ADD                              R3 R4 R2
       20 DUPTABLE                         R6 K6 [{"time", "progress"}]
       21 SETTABLEKS                       R3 R6 K5 ["time"]
       23 GETTABLEKS                       R9 R0 K7 ["props"]
       25 GETTABLEKS                       R8 R9 K8 ["loadingTime"]
       27 DIV                              R7 R3 R8
       28 SETTABLEKS                       R7 R6 K1 ["progress"]
       30 NAMECALL                         R4 R0 K9 ["setState"]
       32 CALL                             R4 2 0
       33 JUMPBACK                         ; [-34]
       34 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["props"]
        4 GETTABLEKS                       R2 R3 K1 ["holdPercent"]
        6 NAMECALL                         R0 R0 K2 ["loadUntil"]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R0 R1 K3 ["isMounted"]
       12 JUMPIFNOT                        R0 ; [+14]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K0 ["props"]
       16 GETTABLEKS                       R0 R1 K4 ["onFinish"]
       18 JUMPIFNOTEQKNIL                  R0 ; [+8]
       20 GETUPVAL                         R1 1
       21 GETTABLEKS                       R0 R1 K5 ["RenderStepped"]
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
       37 GETUPVAL                         R1 0
       38 GETTABLEKS                       R0 R1 K3 ["isMounted"]
       40 JUMPIFNOT                        R0 ; [+6]
       41 GETUPVAL                         R2 0
       42 GETTABLEKS                       R1 R2 K0 ["props"]
       44 GETTABLEKS                       R0 R1 K4 ["onFinish"]
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
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R0 K2 ["state"]
        6 GETTABLEKS                       R6 R3 K3 ["progress"]
        8 FASTCALL2K                       MATH_MAX R6 K4 ; [+4]
       10 LOADK                            R7 K4 [0]
       11 GETIMPORT                        R5 K7 [math.max]
       13 CALL                             R5 2 1
       14 FASTCALL2K                       MATH_MIN R5 K8 ; [+4]
       16 LOADK                            R6 K8 [1]
       17 GETIMPORT                        R4 K10 [math.min]
       19 CALL                             R4 2 1
       20 GETTABLEKS                       R6 R1 K11 ["loadingText"]
       22 LOADK                            R7 K12 [" ( "]
       23 MULK                             R12 R4 K14 [100]
       24 ADDK                             R11 R12 K13 [0.5]
       25 FASTCALL1                        MATH_FLOOR R11 ; [+2]
       26 GETIMPORT                        R10 K16 [math.floor]
       28 CALL                             R10 1 1
       29 MOVE                             R8 R10
       30 LOADK                            R9 K17 ["% )"]
       31 CONCAT                           R5 R6 R9
       32 GETUPVAL                         R7 0
       33 GETTABLEKS                       R6 R7 K18 ["createElement"]
       35 LOADK                            R7 K19 ["Frame"]
       36 DUPTABLE                         R8 K23 [{"BackgroundTransparency", "Size", "Position"}]
       37 LOADN                            R9 1
       38 SETTABLEKS                       R9 R8 K20 ["BackgroundTransparency"]
       40 GETTABLEKS                       R9 R1 K21 ["Size"]
       42 SETTABLEKS                       R9 R8 K21 ["Size"]
       44 GETTABLEKS                       R9 R1 K22 ["Position"]
       46 SETTABLEKS                       R9 R8 K22 ["Position"]
       48 DUPTABLE                         R9 K26 [{"LoadingTitle", "LoadingBackgroundBar"}]
       49 GETUPVAL                         R11 0
       50 GETTABLEKS                       R10 R11 K18 ["createElement"]
       52 LOADK                            R11 K27 ["TextLabel"]
       53 DUPTABLE                         R12 K34 [{"BackgroundTransparency", "Font", "Position", "Size", "Text", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment"}]
       54 LOADN                            R13 1
       55 SETTABLEKS                       R13 R12 K20 ["BackgroundTransparency"]
       57 GETUPVAL                         R14 1
       58 GETTABLEKS                       R13 R14 K35 ["FONT"]
       60 SETTABLEKS                       R13 R12 K28 ["Font"]
       62 GETIMPORT                        R13 K38 [UDim2.new]
       64 LOADN                            R14 0
       65 LOADN                            R15 0
       66 LOADN                            R16 0
       67 LOADN                            R17 226
       68 CALL                             R13 4 1
       69 SETTABLEKS                       R13 R12 K22 ["Position"]
       71 GETIMPORT                        R13 K38 [UDim2.new]
       73 LOADN                            R14 1
       74 LOADN                            R15 0
       75 LOADN                            R16 0
       76 LOADN                            R17 20
       77 CALL                             R13 4 1
       78 SETTABLEKS                       R13 R12 K21 ["Size"]
       80 SETTABLEKS                       R5 R12 K29 ["Text"]
       82 GETTABLEKS                       R14 R2 K39 ["loading"]
       84 GETTABLEKS                       R13 R14 K40 ["text"]
       86 SETTABLEKS                       R13 R12 K30 ["TextColor3"]
       88 GETUPVAL                         R14 1
       89 GETTABLEKS                       R13 R14 K41 ["FONT_SIZE_MEDIUM"]
       91 SETTABLEKS                       R13 R12 K31 ["TextSize"]
       93 GETIMPORT                        R13 K44 [Enum.TextXAlignment.Center]
       95 SETTABLEKS                       R13 R12 K32 ["TextXAlignment"]
       97 GETIMPORT                        R13 K45 [Enum.TextYAlignment.Center]
       99 SETTABLEKS                       R13 R12 K33 ["TextYAlignment"]
      101 CALL                             R10 2 1
      102 SETTABLEKS                       R10 R9 K24 ["LoadingTitle"]
      104 GETUPVAL                         R11 0
      105 GETTABLEKS                       R10 R11 K18 ["createElement"]
      107 GETUPVAL                         R11 2
      108 DUPTABLE                         R12 K47 [{"Style"}]
      109 LOADK                            R13 K48 ["BorderBox"]
      110 SETTABLEKS                       R13 R12 K46 ["Style"]
      112 DUPTABLE                         R13 K50 [{"LoadingBar"}]
      113 GETUPVAL                         R15 0
      114 GETTABLEKS                       R14 R15 K18 ["createElement"]
      116 GETUPVAL                         R15 2
      117 DUPTABLE                         R16 K52 [{"Style", "BackgroundColor", "Size"}]
      118 LOADK                            R17 K53 ["Box"]
      119 SETTABLEKS                       R17 R16 K46 ["Style"]
      121 GETTABLEKS                       R18 R2 K39 ["loading"]
      123 GETTABLEKS                       R17 R18 K54 ["bar"]
      125 SETTABLEKS                       R17 R16 K51 ["BackgroundColor"]
      127 GETIMPORT                        R17 K38 [UDim2.new]
      129 MOVE                             R18 R4
      130 LOADN                            R19 0
      131 LOADN                            R20 1
      132 LOADN                            R21 0
      133 CALL                             R17 4 1
      134 SETTABLEKS                       R17 R16 K21 ["Size"]
      136 CALL                             R14 2 1
      137 SETTABLEKS                       R14 R13 K49 ["LoadingBar"]
      139 CALL                             R10 3 1
      140 SETTABLEKS                       R10 R9 K25 ["LoadingBackgroundBar"]
      142 CALL                             R6 3 -1
      143 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [game]
       13 LOADK                            R3 K5 ["RunService"]
       14 NAMECALL                         R1 R1 K6 ["GetService"]
       16 CALL                             R1 2 1
       17 GETTABLEKS                       R2 R0 K7 ["Packages"]
       19 GETIMPORT                        R3 K9 [require]
       21 GETTABLEKS                       R4 R2 K10 ["Framework"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K9 [require]
       26 GETTABLEKS                       R5 R2 K11 ["Roact"]
       28 CALL                             R4 1 1
       29 GETTABLEKS                       R5 R3 K12 ["ContextServices"]
       31 GETTABLEKS                       R6 R5 K13 ["withContext"]
       33 GETTABLEKS                       R8 R0 K14 ["Src"]
       35 GETTABLEKS                       R7 R8 K15 ["Util"]
       37 GETIMPORT                        R8 K9 [require]
       39 GETTABLEKS                       R9 R7 K16 ["Constants"]
       41 CALL                             R8 1 1
       42 GETTABLEKS                       R9 R3 K17 ["UI"]
       44 GETTABLEKS                       R10 R9 K18 ["Pane"]
       46 GETTABLEKS                       R11 R4 K19 ["Component"]
       48 LOADK                            R13 K20 ["LoadingBar"]
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
       64 SETTABLEKS                       R12 R11 K29 ["willUnmount"]
       66 DUPCLOSURE                       R12 K30 [PROTO_5]
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R10
       70 SETTABLEKS                       R12 R11 K31 ["render"]
       72 MOVE                             R12 R6
       73 DUPTABLE                         R13 K33 [{"Stylizer"}]
       74 GETTABLEKS                       R14 R5 K32 ["Stylizer"]
       76 SETTABLEKS                       R14 R13 K32 ["Stylizer"]
       78 CALL                             R12 1 1
       79 MOVE                             R13 R11
       80 CALL                             R12 1 1
       81 MOVE                             R11 R12
       82 RETURN                           R11 1
