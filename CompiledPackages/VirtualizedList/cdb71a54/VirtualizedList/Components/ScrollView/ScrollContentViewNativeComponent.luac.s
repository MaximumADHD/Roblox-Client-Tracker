PROTO_0:
        0 SETTABLEKS                       R1 R0 K0 ["props"]
        2 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["assign"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["isArray"]
        3 GETTABLEKS                       R3 R0 K1 ["props"]
        5 GETTABLEKS                       R3 R3 K2 ["style"]
        7 CALL                             R2 1 1
        8 JUMPIFNOT                        R2 ; [+13]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K3 ["reduce"]
       12 GETTABLEKS                       R2 R0 K1 ["props"]
       14 GETTABLEKS                       R2 R2 K2 ["style"]
       16 DUPCLOSURE                       R3 K4 [PROTO_1]
       17 CAPTURE                          UPVAL U1
       18 NEWTABLE                         R4 0 0
       20 CALL                             R1 3 1
       21 JUMP                             ; [+4]
       22 GETTABLEKS                       R1 R0 K1 ["props"]
       24 GETTABLEKS                       R1 R1 K2 ["style"]
       26 GETUPVAL                         R2 1
       27 GETTABLEKS                       R2 R2 K5 ["assign"]
       29 NEWTABLE                         R3 4 0
       31 LOADK                            R4 K6 ["RCTScrollContentView"]
       32 SETTABLEKS                       R4 R3 K7 ["Name"]
       34 GETUPVAL                         R4 2
       35 GETTABLEKS                       R4 R4 K8 ["AbsoluteSize"]
       37 GETTABLEKS                       R5 R0 K1 ["props"]
       39 GETTABLEKS                       R5 R5 K9 ["onLayout"]
       41 SETTABLE                         R5 R3 R4
       42 GETIMPORT                        R4 K12 [UDim2.new]
       44 LOADN                            R5 1
       45 LOADN                            R6 0
       46 LOADN                            R7 1
       47 LOADN                            R8 0
       48 CALL                             R4 4 1
       49 SETTABLEKS                       R4 R3 K13 ["Size"]
       51 GETTABLEKS                       R5 R0 K1 ["props"]
       53 GETTABLEKS                       R5 R5 K14 ["AutomaticSize"]
       55 JUMPIFNOT                        R5 ; [+8]
       56 DUPTABLE                         R4 K15 [{"AutomaticSize"}]
       57 GETTABLEKS                       R5 R0 K1 ["props"]
       59 GETTABLEKS                       R5 R5 K14 ["AutomaticSize"]
       61 SETTABLEKS                       R5 R4 K14 ["AutomaticSize"]
       63 JUMP                             ; [+1]
       64 LOADNIL                          R4
       65 MOVE                             R5 R1
       66 CALL                             R2 3 1
       67 GETUPVAL                         R3 3
       68 GETTABLEKS                       R3 R3 K16 ["createElement"]
       70 LOADK                            R4 K17 ["Frame"]
       71 MOVE                             R5 R2
       72 GETTABLEKS                       R6 R0 K1 ["props"]
       74 GETTABLEKS                       R6 R6 K18 ["children"]
       76 CALL                             R3 3 -1
       77 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K6 ["Array"]
       18 GETTABLEKS                       R4 R2 K7 ["Object"]
       20 GETIMPORT                        R5 K4 [require]
       22 GETTABLEKS                       R6 R1 K8 ["React"]
       24 CALL                             R5 1 1
       25 GETTABLEKS                       R6 R5 K9 ["Change"]
       27 GETTABLEKS                       R7 R5 K10 ["Component"]
       29 LOADK                            R9 K11 ["ScrollContentViewNativeComponent"]
       30 NAMECALL                         R7 R7 K12 ["extend"]
       32 CALL                             R7 2 1
       33 DUPCLOSURE                       R8 K13 [PROTO_0]
       34 SETTABLEKS                       R8 R7 K14 ["init"]
       36 DUPCLOSURE                       R8 K15 [PROTO_2]
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R6
       40 CAPTURE                          VAL R5
       41 SETTABLEKS                       R8 R7 K16 ["render"]
       43 RETURN                           R7 1
