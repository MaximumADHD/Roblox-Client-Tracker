PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["layoutRef"]
        3 GETTABLEKS                       R0 R0 K1 ["current"]
        5 JUMPIFEQKNIL                     R0 ; [+12]
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K2 ["containerRef"]
       10 GETTABLEKS                       R0 R0 K1 ["current"]
       12 JUMPIFEQKNIL                     R0 ; [+5]
       14 GETUPVAL                         R0 0
       15 NAMECALL                         R0 R0 K3 ["resizeContainer"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["layoutRef"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["createRef"]
        9 CALL                             R1 0 1
       10 SETTABLEKS                       R1 R0 K2 ["containerRef"]
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K3 ["Dictionary"]
       15 GETTABLEKS                       R1 R1 K4 ["join"]
       17 GETUPVAL                         R2 2
       18 NEWTABLE                         R3 2 0
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K5 ["Ref"]
       23 GETTABLEKS                       R5 R0 K1 ["layoutRef"]
       25 SETTABLE                         R5 R3 R4
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K6 ["Change"]
       29 GETTABLEKS                       R4 R4 K7 ["AbsoluteContentSize"]
       31 NEWCLOSURE                       R5 P0
       32 CAPTURE                          VAL R0
       33 SETTABLE                         R5 R3 R4
       34 CALL                             R1 2 1
       35 SETTABLEKS                       R1 R0 K8 ["layoutProps"]
       37 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R3 K1 ["Size"]
        4 JUMPIFEQKNIL                     R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 FASTCALL2K                       ASSERT R2 K2 ; [+4]
       10 LOADK                            R3 K2 ["Size must not be specified!"]
       11 GETIMPORT                        R1 K4 [assert]
       13 CALL                             R1 2 0
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K5 ["Dictionary"]
       17 GETTABLEKS                       R1 R1 K6 ["join"]
       19 NEWTABLE                         R2 2 0
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K7 ["createElement"]
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R5 R0 K8 ["layoutProps"]
       27 CALL                             R3 2 1
       28 SETTABLEKS                       R3 R2 K9 ["Layout"]
       30 LOADB                            R3 0
       31 GETUPVAL                         R4 3
       32 LOADN                            R5 0
       33 JUMPIFNOTLT                      R5 R4 ; [+35]
       35 GETUPVAL                         R3 1
       36 GETTABLEKS                       R3 R3 K7 ["createElement"]
       38 LOADK                            R4 K10 ["UIPadding"]
       39 DUPTABLE                         R5 K15 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       40 GETIMPORT                        R6 K18 [UDim.new]
       42 LOADN                            R7 0
       43 GETUPVAL                         R8 3
       44 CALL                             R6 2 1
       45 SETTABLEKS                       R6 R5 K11 ["PaddingTop"]
       47 GETIMPORT                        R6 K18 [UDim.new]
       49 LOADN                            R7 0
       50 GETUPVAL                         R8 3
       51 CALL                             R6 2 1
       52 SETTABLEKS                       R6 R5 K12 ["PaddingBottom"]
       54 GETIMPORT                        R6 K18 [UDim.new]
       56 LOADN                            R7 0
       57 GETUPVAL                         R8 3
       58 CALL                             R6 2 1
       59 SETTABLEKS                       R6 R5 K13 ["PaddingLeft"]
       61 GETIMPORT                        R6 K18 [UDim.new]
       63 LOADN                            R7 0
       64 GETUPVAL                         R8 3
       65 CALL                             R6 2 1
       66 SETTABLEKS                       R6 R5 K14 ["PaddingRight"]
       68 CALL                             R3 2 1
       69 SETTABLEKS                       R3 R2 K19 ["Padding"]
       71 GETTABLEKS                       R4 R0 K0 ["props"]
       73 GETUPVAL                         R5 1
       74 GETTABLEKS                       R5 R5 K20 ["Children"]
       76 GETTABLE                         R3 R4 R5
       77 CALL                             R1 2 1
       78 GETUPVAL                         R2 0
       79 GETTABLEKS                       R2 R2 K5 ["Dictionary"]
       81 GETTABLEKS                       R2 R2 K6 ["join"]
       83 GETTABLEKS                       R3 R0 K0 ["props"]
       85 NEWTABLE                         R4 2 0
       87 GETUPVAL                         R5 1
       88 GETTABLEKS                       R5 R5 K20 ["Children"]
       90 SETTABLE                         R1 R4 R5
       91 GETUPVAL                         R5 1
       92 GETTABLEKS                       R5 R5 K21 ["Ref"]
       94 GETTABLEKS                       R6 R0 K22 ["containerRef"]
       96 SETTABLE                         R6 R4 R5
       97 CALL                             R2 2 1
       98 GETUPVAL                         R3 1
       99 GETTABLEKS                       R3 R3 K7 ["createElement"]
      101 GETUPVAL                         R4 4
      102 MOVE                             R5 R2
      103 CALL                             R3 2 -1
      104 RETURN                           R3 -1

PROTO_3:
        0 NAMECALL                         R1 R0 K0 ["resizeContainer"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["layoutRef"]
        2 GETTABLEKS                       R1 R1 K1 ["current"]
        4 GETTABLEKS                       R1 R1 K2 ["AbsoluteContentSize"]
        6 GETTABLEKS                       R2 R0 K3 ["containerRef"]
        8 GETTABLEKS                       R2 R2 K1 ["current"]
       10 GETIMPORT                        R3 K6 [UDim2.new]
       12 LOADN                            R4 1
       13 LOADN                            R5 0
       14 LOADN                            R6 0
       15 GETTABLEKS                       R8 R1 K7 ["Y"]
       17 GETUPVAL                         R10 0
       18 MULK                             R9 R10 K8 [2]
       19 ADD                              R7 R8 R9
       20 CALL                             R3 4 1
       21 SETTABLEKS                       R3 R2 K9 ["Size"]
       23 RETURN                           R0 0

PROTO_5:
        0 LOADK                            R3 K0 ["FitComponent(%s, %s)"]
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 NAMECALL                         R3 R3 K1 ["format"]
        5 CALL                             R3 3 1
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K2 ["Component"]
        9 MOVE                             R6 R3
       10 NAMECALL                         R4 R4 K3 ["extend"]
       12 CALL                             R4 2 1
       13 GETTABLEKS                       R6 R2 K5 ["BorderSize"]
       15 ORK                              R5 R6 K4 [0]
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R6 R6 K6 ["Dictionary"]
       19 GETTABLEKS                       R6 R6 K7 ["join"]
       21 MOVE                             R7 R2
       22 DUPTABLE                         R8 K8 [{"BorderSize"}]
       23 GETUPVAL                         R9 1
       24 GETTABLEKS                       R9 R9 K9 ["None"]
       26 SETTABLEKS                       R9 R8 K5 ["BorderSize"]
       28 CALL                             R6 2 1
       29 MOVE                             R2 R6
       30 NEWCLOSURE                       R6 P0
       31 CAPTURE                          UPVAL U0
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          REF R2
       34 SETTABLEKS                       R6 R4 K10 ["init"]
       36 NEWCLOSURE                       R6 P1
       37 CAPTURE                          UPVAL U1
       38 CAPTURE                          UPVAL U0
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R0
       42 SETTABLEKS                       R6 R4 K11 ["render"]
       44 DUPCLOSURE                       R6 K12 [PROTO_3]
       45 SETTABLEKS                       R6 R4 K13 ["didMount"]
       47 NEWCLOSURE                       R6 P3
       48 CAPTURE                          VAL R5
       49 SETTABLEKS                       R6 R4 K14 ["resizeContainer"]
       51 CLOSEUPVALS                      R2
       52 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Cryo"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K9 [PROTO_5]
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 RETURN                           R3 1
