PROTO_0:
        0 DUPTABLE                         R1 K1 [{"isShowing"}]
        1 GETTABLEKS                       R3 R0 K0 ["isShowing"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["isShowing"]
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_0]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"isShowing"}]
        1 GETTABLEKS                       R4 R0 K2 ["props"]
        3 GETTABLEKS                       R3 R4 K3 ["IsShownByDefault"]
        5 JUMPIFNOT                        R3 ; [+5]
        6 GETTABLEKS                       R3 R0 K2 ["props"]
        8 GETTABLEKS                       R2 R3 K3 ["IsShownByDefault"]
       10 JUMP                             ; [+1]
       11 LOADB                            R2 0
       12 SETTABLEKS                       R2 R1 K0 ["isShowing"]
       14 SETTABLEKS                       R1 R0 K4 ["state"]
       16 NEWCLOSURE                       R1 P0
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R1 R0 K5 ["toggleIsShowing"]
       20 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["createElement"]
        7 LOADK                            R4 K3 ["Frame"]
        8 DUPTABLE                         R5 K7 [{"AutomaticSize", "BackgroundTransparency", "Size"}]
        9 GETIMPORT                        R6 K10 [Enum.AutomaticSize.Y]
       11 SETTABLEKS                       R6 R5 K4 ["AutomaticSize"]
       13 LOADN                            R6 1
       14 SETTABLEKS                       R6 R5 K5 ["BackgroundTransparency"]
       16 GETIMPORT                        R6 K13 [UDim2.new]
       18 LOADN                            R7 1
       19 LOADN                            R8 0
       20 LOADN                            R9 0
       21 LOADN                            R10 0
       22 CALL                             R6 4 1
       23 SETTABLEKS                       R6 R5 K6 ["Size"]
       25 DUPTABLE                         R6 K16 [{"Button", "SearchOption"}]
       26 GETUPVAL                         R8 0
       27 GETTABLEKS                       R7 R8 K2 ["createElement"]
       29 LOADK                            R8 K17 ["TextButton"]
       30 NEWTABLE                         R9 4 0
       32 GETIMPORT                        R10 K19 [UDim2.fromOffset]
       34 LOADN                            R11 200
       35 LOADN                            R12 50
       36 CALL                             R10 2 1
       37 SETTABLEKS                       R10 R9 K6 ["Size"]
       39 LOADK                            R10 K20 ["Click to View Component"]
       40 SETTABLEKS                       R10 R9 K21 ["Text"]
       42 GETUPVAL                         R12 0
       43 GETTABLEKS                       R11 R12 K22 ["Event"]
       45 GETTABLEKS                       R10 R11 K23 ["Activated"]
       47 GETTABLEKS                       R11 R0 K24 ["toggleIsShowing"]
       49 SETTABLE                         R11 R9 R10
       50 CALL                             R7 2 1
       51 SETTABLEKS                       R7 R6 K14 ["Button"]
       53 GETTABLEKS                       R8 R2 K25 ["isShowing"]
       55 JUMPIFNOT                        R8 ; [+8]
       56 GETTABLEKS                       R7 R1 K26 ["OnRender"]
       58 GETTABLEKS                       R8 R2 K25 ["isShowing"]
       60 GETTABLEKS                       R9 R0 K24 ["toggleIsShowing"]
       62 CALL                             R7 2 1
       63 JUMP                             ; [+1]
       64 LOADNIL                          R7
       65 SETTABLEKS                       R7 R6 K15 ["SearchOption"]
       67 CALL                             R3 3 -1
       68 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["PureComponent"]
       16 LOADK                            R4 K9 ["ClickToShowInteractiveStoryWrapper"]
       17 NAMECALL                         R2 R2 K10 ["extend"]
       19 CALL                             R2 2 1
       20 DUPCLOSURE                       R3 K11 [PROTO_2]
       21 SETTABLEKS                       R3 R2 K12 ["init"]
       23 DUPCLOSURE                       R3 K13 [PROTO_3]
       24 CAPTURE                          VAL R1
       25 SETTABLEKS                       R3 R2 K14 ["render"]
       27 RETURN                           R2 1
