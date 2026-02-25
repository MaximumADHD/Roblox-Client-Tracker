PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["layoutRef"]
        3 GETTABLEKS                       R0 R1 K1 ["current"]
        5 JUMPIFEQKNIL                     R0 ; [+12]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K2 ["containerRef"]
       10 GETTABLEKS                       R0 R1 K1 ["current"]
       12 JUMPIFEQKNIL                     R0 ; [+5]
       14 GETUPVAL                         R0 0
       15 NAMECALL                         R0 R0 K3 ["resizeContainer"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["layoutRef"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["createRef"]
        9 CALL                             R1 0 1
       10 SETTABLEKS                       R1 R0 K2 ["containerRef"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R2 R3 K3 ["Dictionary"]
       15 GETTABLEKS                       R1 R2 K4 ["join"]
       17 GETUPVAL                         R2 2
       18 NEWTABLE                         R3 2 0
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R4 R5 K5 ["Ref"]
       23 GETTABLEKS                       R5 R0 K1 ["layoutRef"]
       25 SETTABLE                         R5 R3 R4
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R5 R6 K6 ["Change"]
       29 GETTABLEKS                       R4 R5 K7 ["AbsoluteContentSize"]
       31 NEWCLOSURE                       R5 P0
       32 CAPTURE                          VAL R0
       33 SETTABLE                         R5 R3 R4
       34 CALL                             R1 2 1
       35 SETTABLEKS                       R1 R0 K8 ["layoutProps"]
       37 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R4 K1 ["Size"]
        4 JUMPIFEQKNIL                     R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 FASTCALL2K                       ASSERT R2 K2 ; [+4]
       10 LOADK                            R3 K2 ["Size must not be specified!"]
       11 GETIMPORT                        R1 K4 [assert]
       13 CALL                             R1 2 0
       14 LOADNIL                          R1
       15 GETTABLEKS                       R4 R0 K0 ["props"]
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R5 R6 K5 ["Children"]
       20 GETTABLE                         R3 R4 R5
       21 LENGTH                           R2 R3
       22 JUMPIFNOTEQKN                    R2 K6 [1] ; [+43]
       24 GETTABLEKS                       R6 R0 K0 ["props"]
       26 GETUPVAL                         R8 0
       27 GETTABLEKS                       R7 R8 K5 ["Children"]
       29 GETTABLE                         R5 R6 R7
       30 GETTABLEN                        R4 R5 1
       31 JUMPIFEQKS                       R4 K7 ["table"] ; [+2]
       33 LOADB                            R3 0 +1
       34 LOADB                            R3 1
       35 FASTCALL1                        TYPEOF R3 ; [+2]
       36 GETIMPORT                        R2 K9 [typeof]
       38 CALL                             R2 1 1
       39 JUMPIFNOT                        R2 ; [+26]
       40 GETUPVAL                         R4 1
       41 GETTABLEKS                       R3 R4 K10 ["Dictionary"]
       43 GETTABLEKS                       R2 R3 K11 ["join"]
       45 NEWTABLE                         R3 1 0
       47 GETUPVAL                         R5 0
       48 GETTABLEKS                       R4 R5 K12 ["createElement"]
       50 GETUPVAL                         R5 2
       51 GETTABLEKS                       R6 R0 K13 ["layoutProps"]
       53 CALL                             R4 2 1
       54 SETTABLEKS                       R4 R3 K14 ["Layout"]
       56 GETTABLEKS                       R6 R0 K0 ["props"]
       58 GETUPVAL                         R8 0
       59 GETTABLEKS                       R7 R8 K5 ["Children"]
       61 GETTABLE                         R5 R6 R7
       62 GETTABLEN                        R4 R5 1
       63 CALL                             R2 2 1
       64 MOVE                             R1 R2
       65 JUMP                             ; [+24]
       66 GETUPVAL                         R4 1
       67 GETTABLEKS                       R3 R4 K10 ["Dictionary"]
       69 GETTABLEKS                       R2 R3 K11 ["join"]
       71 NEWTABLE                         R3 1 0
       73 GETUPVAL                         R5 0
       74 GETTABLEKS                       R4 R5 K12 ["createElement"]
       76 GETUPVAL                         R5 2
       77 GETTABLEKS                       R6 R0 K13 ["layoutProps"]
       79 CALL                             R4 2 1
       80 SETTABLEKS                       R4 R3 K14 ["Layout"]
       82 GETTABLEKS                       R5 R0 K0 ["props"]
       84 GETUPVAL                         R7 0
       85 GETTABLEKS                       R6 R7 K5 ["Children"]
       87 GETTABLE                         R4 R5 R6
       88 CALL                             R2 2 1
       89 MOVE                             R1 R2
       90 GETUPVAL                         R4 1
       91 GETTABLEKS                       R3 R4 K10 ["Dictionary"]
       93 GETTABLEKS                       R2 R3 K11 ["join"]
       95 GETTABLEKS                       R3 R0 K0 ["props"]
       97 NEWTABLE                         R4 2 0
       99 GETUPVAL                         R6 0
      100 GETTABLEKS                       R5 R6 K5 ["Children"]
      102 SETTABLE                         R1 R4 R5
      103 GETUPVAL                         R6 0
      104 GETTABLEKS                       R5 R6 K15 ["Ref"]
      106 GETTABLEKS                       R6 R0 K16 ["containerRef"]
      108 SETTABLE                         R6 R4 R5
      109 CALL                             R2 2 1
      110 GETUPVAL                         R4 0
      111 GETTABLEKS                       R3 R4 K12 ["createElement"]
      113 GETUPVAL                         R4 3
      114 MOVE                             R5 R2
      115 CALL                             R3 2 -1
      116 RETURN                           R3 -1

PROTO_3:
        0 NAMECALL                         R1 R0 K0 ["resizeContainer"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 NAMECALL                         R1 R0 K0 ["resizeContainer"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["layoutRef"]
        2 GETTABLEKS                       R1 R2 K1 ["current"]
        4 JUMPIFNOT                        R1 ; [+16]
        5 GETTABLEKS                       R2 R1 K2 ["AbsoluteContentSize"]
        7 GETTABLEKS                       R4 R0 K3 ["containerRef"]
        9 GETTABLEKS                       R3 R4 K1 ["current"]
       11 GETIMPORT                        R4 K6 [UDim2.new]
       13 LOADN                            R5 1
       14 LOADN                            R6 0
       15 LOADN                            R7 0
       16 GETTABLEKS                       R8 R2 K7 ["Y"]
       18 CALL                             R4 4 1
       19 SETTABLEKS                       R4 R3 K8 ["Size"]
       21 RETURN                           R0 0

PROTO_6:
        0 LOADK                            R3 K0 ["FitComponent(%s, %s)"]
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 NAMECALL                         R3 R3 K1 ["format"]
        5 CALL                             R3 3 1
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K2 ["Component"]
        9 MOVE                             R6 R3
       10 NAMECALL                         R4 R4 K3 ["extend"]
       12 CALL                             R4 2 1
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R2
       17 SETTABLEKS                       R5 R4 K4 ["init"]
       19 NEWCLOSURE                       R5 P1
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R5 R4 K5 ["render"]
       26 DUPCLOSURE                       R5 K6 [PROTO_3]
       27 SETTABLEKS                       R5 R4 K7 ["didMount"]
       29 DUPCLOSURE                       R5 K8 [PROTO_4]
       30 SETTABLEKS                       R5 R4 K9 ["didUpdate"]
       32 DUPCLOSURE                       R5 K10 [PROTO_5]
       33 SETTABLEKS                       R5 R4 K11 ["resizeContainer"]
       35 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K8 [PROTO_6]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 RETURN                           R3 1
