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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 1
        6 DUPTABLE                         R3 K4 [{"Contents", "Size", "Modal"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K5 ["createElement"]
       10 LOADK                            R6 K6 ["TextLabel"]
       11 DUPTABLE                         R7 K13 [{["BackgroundTransparency"] = 1, ["Size"], ["Text"] = "HELLO!", ["TextScaled"] = True}]
       12 GETIMPORT                        R8 K16 [UDim2.fromScale]
       14 LOADN                            R9 1
       15 LOADN                            R10 1
       16 CALL                             R8 2 1
       17 SETTABLEKS                       R8 R7 K2 ["Size"]
       19 CALL                             R5 2 1
       20 SETTABLEKS                       R5 R3 K1 ["Contents"]
       22 GETIMPORT                        R5 K19 [Vector2.new]
       24 LOADN                            R6 400
       25 LOADN                            R7 400
       26 CALL                             R5 2 1
       27 SETTABLEKS                       R5 R3 K2 ["Size"]
       29 SETTABLEKS                       R0 R3 K3 ["Modal"]
       31 CALL                             R2 1 3
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R5 R5 K5 ["createElement"]
       35 LOADK                            R6 K20 ["Frame"]
       36 NEWTABLE                         R7 2 0
       38 LOADN                            R8 1
       39 SETTABLEKS                       R8 R7 K7 ["BackgroundTransparency"]
       41 GETUPVAL                         R8 0
       42 GETTABLEKS                       R8 R8 K21 ["Tag"]
       44 LOADK                            R9 K22 ["X-Column X-Fit"]
       45 SETTABLE                         R9 R7 R8
       46 DUPTABLE                         R8 K25 [{"ShowToggle", "ModalToggle"}]
       47 GETUPVAL                         R9 0
       48 GETTABLEKS                       R9 R9 K5 ["createElement"]
       50 GETUPVAL                         R10 2
       51 DUPTABLE                         R11 K27 [{"OnClick", "Text"}]
       52 NEWCLOSURE                       R12 P0
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R2
       56 SETTABLEKS                       R12 R11 K26 ["OnClick"]
       58 LOADK                            R13 K28 ["%* Dialog Widget"]
       59 JUMPIFNOT                        R4 ; [+2]
       60 LOADK                            R15 K29 ["Hide"]
       61 JUMP                             ; [+1]
       62 LOADK                            R15 K30 ["Show"]
       63 NAMECALL                         R13 R13 K31 ["format"]
       65 CALL                             R13 2 1
       66 MOVE                             R12 R13
       67 SETTABLEKS                       R12 R11 K9 ["Text"]
       69 CALL                             R9 2 1
       70 SETTABLEKS                       R9 R8 K23 ["ShowToggle"]
       72 GETUPVAL                         R9 0
       73 GETTABLEKS                       R9 R9 K5 ["createElement"]
       75 GETUPVAL                         R10 2
       76 DUPTABLE                         R11 K27 [{"OnClick", "Text"}]
       77 NEWCLOSURE                       R12 P1
       78 CAPTURE                          VAL R1
       79 SETTABLEKS                       R12 R11 K26 ["OnClick"]
       81 LOADK                            R13 K32 ["Modal: %*"]
       82 JUMPIFNOT                        R0 ; [+2]
       83 LOADK                            R15 K33 ["ON"]
       84 JUMP                             ; [+1]
       85 LOADK                            R15 K34 ["OFF"]
       86 NAMECALL                         R13 R13 K31 ["format"]
       88 CALL                             R13 2 1
       89 MOVE                             R12 R13
       90 SETTABLEKS                       R12 R11 K9 ["Text"]
       92 CALL                             R9 2 1
       93 SETTABLEKS                       R9 R8 K24 ["ModalToggle"]
       95 CALL                             R5 3 -1
       96 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K9 ["Components"]
       22 GETTABLEKS                       R3 R3 K10 ["IconButton"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETIMPORT                        R4 K1 [script]
       29 GETTABLEKS                       R4 R4 K4 ["Parent"]
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
