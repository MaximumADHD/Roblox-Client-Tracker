PROTO_0:
        0 NEWTABLE                         R2 4 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R0 R1 K2 ["container"]
       10 GETIMPORT                        R2 K5 [Instance.new]
       12 LOADK                            R3 K6 ["Frame"]
       13 CALL                             R2 1 1
       14 LOADK                            R3 K7 ["OverlayRect"]
       15 SETTABLEKS                       R3 R2 K8 ["Name"]
       17 LOADN                            R3 1
       18 SETTABLEKS                       R3 R2 K9 ["BackgroundTransparency"]
       20 SETTABLEKS                       R0 R2 K10 ["Parent"]
       22 SETTABLEKS                       R2 R1 K11 ["node"]
       24 GETIMPORT                        R3 K5 [Instance.new]
       26 LOADK                            R4 K6 ["Frame"]
       27 CALL                             R3 1 1
       28 LOADK                            R4 K12 ["OverlayRectPadding"]
       29 SETTABLEKS                       R4 R3 K8 ["Name"]
       31 GETIMPORT                        R4 K15 [Color3.fromRGB]
       33 LOADN                            R5 77
       34 LOADN                            R6 200
       35 LOADN                            R7 0
       36 CALL                             R4 3 1
       37 SETTABLEKS                       R4 R3 K16 ["BackgroundColor3"]
       39 GETIMPORT                        R4 K19 [UDim2.fromScale]
       41 LOADN                            R5 1
       42 LOADN                            R6 1
       43 CALL                             R4 2 1
       44 SETTABLEKS                       R4 R3 K20 ["Size"]
       46 LOADK                            R4 K21 [0.4]
       47 SETTABLEKS                       R4 R3 K9 ["BackgroundTransparency"]
       49 LOADN                            R4 0
       50 SETTABLEKS                       R4 R3 K22 ["BorderSizePixel"]
       52 SETTABLEKS                       R2 R3 K10 ["Parent"]
       54 SETTABLEKS                       R3 R1 K23 ["padding"]
       56 GETIMPORT                        R4 K5 [Instance.new]
       58 LOADK                            R5 K6 ["Frame"]
       59 CALL                             R4 1 1
       60 LOADK                            R5 K24 ["OverlayRectContent"]
       61 SETTABLEKS                       R5 R4 K8 ["Name"]
       63 GETIMPORT                        R5 K15 [Color3.fromRGB]
       65 LOADN                            R6 120
       66 LOADN                            R7 170
       67 LOADN                            R8 210
       68 CALL                             R5 3 1
       69 SETTABLEKS                       R5 R4 K16 ["BackgroundColor3"]
       71 GETIMPORT                        R5 K19 [UDim2.fromScale]
       73 LOADN                            R6 1
       74 LOADN                            R7 1
       75 CALL                             R5 2 1
       76 SETTABLEKS                       R5 R4 K20 ["Size"]
       78 LOADN                            R5 0
       79 SETTABLEKS                       R5 R4 K22 ["BorderSizePixel"]
       81 LOADN                            R5 2
       82 SETTABLEKS                       R5 R4 K25 ["ZIndex"]
       84 SETTABLEKS                       R2 R4 K10 ["Parent"]
       86 SETTABLEKS                       R4 R1 K26 ["content"]
       88 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["node"]
        2 NAMECALL                         R1 R1 K1 ["Destroy"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["AbsoluteSize"]
        2 GETTABLEKS                       R3 R1 K1 ["AbsolutePosition"]
        4 LOADK                            R6 K2 ["UIPadding"]
        5 NAMECALL                         R4 R1 K3 ["FindFirstChildOfClass"]
        7 CALL                             R4 2 1
        8 JUMPIFNOT                        R4 ; [+73]
        9 GETTABLEKS                       R8 R4 K4 ["PaddingTop"]
       11 GETTABLEKS                       R7 R8 K5 ["Scale"]
       13 GETTABLEKS                       R8 R2 K6 ["Y"]
       15 MUL                              R6 R7 R8
       16 GETTABLEKS                       R8 R4 K4 ["PaddingTop"]
       18 GETTABLEKS                       R7 R8 K7 ["Offset"]
       20 ADD                              R5 R6 R7
       21 GETTABLEKS                       R9 R4 K8 ["PaddingLeft"]
       23 GETTABLEKS                       R8 R9 K5 ["Scale"]
       25 GETTABLEKS                       R9 R2 K9 ["X"]
       27 MUL                              R7 R8 R9
       28 GETTABLEKS                       R9 R4 K8 ["PaddingLeft"]
       30 GETTABLEKS                       R8 R9 K7 ["Offset"]
       32 ADD                              R6 R7 R8
       33 GETTABLEKS                       R10 R4 K10 ["PaddingBottom"]
       35 GETTABLEKS                       R9 R10 K5 ["Scale"]
       37 GETTABLEKS                       R10 R2 K6 ["Y"]
       39 MUL                              R8 R9 R10
       40 GETTABLEKS                       R10 R4 K10 ["PaddingBottom"]
       42 GETTABLEKS                       R9 R10 K7 ["Offset"]
       44 ADD                              R7 R8 R9
       45 GETTABLEKS                       R11 R4 K11 ["PaddingRight"]
       47 GETTABLEKS                       R10 R11 K5 ["Scale"]
       49 GETTABLEKS                       R11 R2 K9 ["X"]
       51 MUL                              R9 R10 R11
       52 GETTABLEKS                       R11 R4 K11 ["PaddingRight"]
       54 GETTABLEKS                       R10 R11 K7 ["Offset"]
       56 ADD                              R8 R9 R10
       57 GETTABLEKS                       R9 R0 K12 ["content"]
       59 GETIMPORT                        R10 K15 [UDim2.fromOffset]
       61 MOVE                             R11 R6
       62 MOVE                             R12 R5
       63 CALL                             R10 2 1
       64 SETTABLEKS                       R10 R9 K16 ["Position"]
       66 GETTABLEKS                       R9 R0 K12 ["content"]
       68 GETIMPORT                        R10 K15 [UDim2.fromOffset]
       70 GETTABLEKS                       R13 R2 K9 ["X"]
       72 SUB                              R12 R13 R6
       73 SUB                              R11 R12 R8
       74 GETTABLEKS                       R14 R2 K6 ["Y"]
       76 SUB                              R13 R14 R5
       77 SUB                              R12 R13 R7
       78 CALL                             R10 2 1
       79 SETTABLEKS                       R10 R9 K17 ["Size"]
       81 JUMP                             ; [+20]
       82 GETTABLEKS                       R5 R0 K12 ["content"]
       84 GETIMPORT                        R6 K15 [UDim2.fromOffset]
       86 LOADN                            R7 0
       87 LOADN                            R8 0
       88 CALL                             R6 2 1
       89 SETTABLEKS                       R6 R5 K16 ["Position"]
       91 GETTABLEKS                       R5 R0 K12 ["content"]
       93 GETIMPORT                        R6 K15 [UDim2.fromOffset]
       95 GETTABLEKS                       R7 R2 K9 ["X"]
       97 GETTABLEKS                       R8 R2 K6 ["Y"]
       99 CALL                             R6 2 1
      100 SETTABLEKS                       R6 R5 K17 ["Size"]
      102 GETTABLEKS                       R5 R0 K18 ["node"]
      104 GETIMPORT                        R6 K15 [UDim2.fromOffset]
      106 GETTABLEKS                       R7 R2 K9 ["X"]
      108 GETTABLEKS                       R8 R2 K6 ["Y"]
      110 CALL                             R6 2 1
      111 SETTABLEKS                       R6 R5 K17 ["Size"]
      113 GETTABLEKS                       R5 R0 K18 ["node"]
      115 GETIMPORT                        R6 K15 [UDim2.fromOffset]
      117 GETTABLEKS                       R7 R3 K9 ["X"]
      119 GETTABLEKS                       R8 R3 K6 ["Y"]
      121 CALL                             R6 2 1
      122 SETTABLEKS                       R6 R5 K16 ["Position"]
      124 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_1]
       10 SETTABLEKS                       R1 R0 K4 ["remove"]
       12 DUPCLOSURE                       R1 K5 [PROTO_2]
       13 SETTABLEKS                       R1 R0 K6 ["update"]
       15 DUPTABLE                         R1 K7 [{"new"}]
       16 GETTABLEKS                       R2 R0 K2 ["new"]
       18 SETTABLEKS                       R2 R1 K2 ["new"]
       20 RETURN                           R1 1
