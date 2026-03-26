PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 2
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_1:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_1]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useState"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 1
        6 DUPTABLE                         R3 K4 [{"Contents", "Size", "Modal"}]
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R5 R6 K5 ["createElement"]
       10 LOADK                            R6 K6 ["TextLabel"]
       11 DUPTABLE                         R7 K10 [{"BackgroundTransparency", "Size", "Text", "TextScaled"}]
       12 LOADN                            R8 1
       13 SETTABLEKS                       R8 R7 K7 ["BackgroundTransparency"]
       15 GETIMPORT                        R8 K13 [UDim2.fromScale]
       17 LOADN                            R9 1
       18 LOADN                            R10 1
       19 CALL                             R8 2 1
       20 SETTABLEKS                       R8 R7 K2 ["Size"]
       22 LOADK                            R8 K14 ["HELLO!"]
       23 SETTABLEKS                       R8 R7 K8 ["Text"]
       25 LOADB                            R8 1
       26 SETTABLEKS                       R8 R7 K9 ["TextScaled"]
       28 CALL                             R5 2 1
       29 SETTABLEKS                       R5 R3 K1 ["Contents"]
       31 GETIMPORT                        R5 K17 [Vector2.new]
       33 LOADN                            R6 144
       34 LOADN                            R7 144
       35 CALL                             R5 2 1
       36 SETTABLEKS                       R5 R3 K2 ["Size"]
       38 SETTABLEKS                       R0 R3 K3 ["Modal"]
       40 CALL                             R2 1 3
       41 GETUPVAL                         R6 0
       42 GETTABLEKS                       R5 R6 K5 ["createElement"]
       44 LOADK                            R6 K18 ["Frame"]
       45 NEWTABLE                         R7 2 0
       47 LOADN                            R8 1
       48 SETTABLEKS                       R8 R7 K7 ["BackgroundTransparency"]
       50 GETUPVAL                         R9 0
       51 GETTABLEKS                       R8 R9 K19 ["Tag"]
       53 LOADK                            R9 K20 ["X-Column X-Fit"]
       54 SETTABLE                         R9 R7 R8
       55 DUPTABLE                         R8 K23 [{"ShowToggle", "ModalToggle"}]
       56 GETUPVAL                         R10 0
       57 GETTABLEKS                       R9 R10 K5 ["createElement"]
       59 GETUPVAL                         R10 2
       60 DUPTABLE                         R11 K25 [{"OnClick", "Text"}]
       61 NEWCLOSURE                       R12 P0
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R2
       65 SETTABLEKS                       R12 R11 K24 ["OnClick"]
       67 LOADK                            R13 K26 ["%* Dialog Widget"]
       68 JUMPIFNOT                        R4 ; [+2]
       69 LOADK                            R15 K27 ["Hide"]
       70 JUMP                             ; [+1]
       71 LOADK                            R15 K28 ["Show"]
       72 NAMECALL                         R13 R13 K29 ["format"]
       74 CALL                             R13 2 1
       75 MOVE                             R12 R13
       76 SETTABLEKS                       R12 R11 K8 ["Text"]
       78 CALL                             R9 2 1
       79 SETTABLEKS                       R9 R8 K21 ["ShowToggle"]
       81 GETUPVAL                         R10 0
       82 GETTABLEKS                       R9 R10 K5 ["createElement"]
       84 GETUPVAL                         R10 2
       85 DUPTABLE                         R11 K25 [{"OnClick", "Text"}]
       86 NEWCLOSURE                       R12 P1
       87 CAPTURE                          VAL R1
       88 SETTABLEKS                       R12 R11 K24 ["OnClick"]
       90 LOADK                            R13 K30 ["Modal: %*"]
       91 JUMPIFNOT                        R0 ; [+2]
       92 LOADK                            R15 K31 ["ON"]
       93 JUMP                             ; [+1]
       94 LOADK                            R15 K32 ["OFF"]
       95 NAMECALL                         R13 R13 K29 ["format"]
       97 CALL                             R13 2 1
       98 MOVE                             R12 R13
       99 SETTABLEKS                       R12 R11 K8 ["Text"]
      101 CALL                             R9 2 1
      102 SETTABLEKS                       R9 R8 K22 ["ModalToggle"]
      104 CALL                             R5 3 -1
      105 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R5 R0 K2 ["UI"]
       20 GETTABLEKS                       R4 R5 K9 ["Components"]
       22 GETTABLEKS                       R3 R4 K10 ["IconButton"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETIMPORT                        R5 K1 [script]
       29 GETTABLEKS                       R4 R5 K4 ["Parent"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K11 [PROTO_3]
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R2
       36 DUPTABLE                         R5 K13 [{"story"}]
       37 GETTABLEKS                       R6 R1 K14 ["createElement"]
       39 MOVE                             R7 R4
       40 CALL                             R6 1 1
       41 SETTABLEKS                       R6 R5 K12 ["story"]
       43 RETURN                           R5 1
