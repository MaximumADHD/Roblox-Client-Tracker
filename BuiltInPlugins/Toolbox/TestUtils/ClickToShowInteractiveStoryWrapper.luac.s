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
        1 GETTABLEKS                       R3 R0 K2 ["props"]
        3 GETTABLEKS                       R3 R3 K3 ["IsShownByDefault"]
        5 JUMPIFNOT                        R3 ; [+5]
        6 GETTABLEKS                       R2 R0 K2 ["props"]
        8 GETTABLEKS                       R2 R2 K3 ["IsShownByDefault"]
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
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["createElement"]
        7 LOADK                            R4 K3 ["Frame"]
        8 DUPTABLE                         R5 K8 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Size"]}]
        9 GETIMPORT                        R6 K11 [Enum.AutomaticSize.Y]
       11 SETTABLEKS                       R6 R5 K4 ["AutomaticSize"]
       13 GETIMPORT                        R6 K14 [UDim2.new]
       15 LOADN                            R7 1
       16 LOADN                            R8 0
       17 LOADN                            R9 0
       18 LOADN                            R10 0
       19 CALL                             R6 4 1
       20 SETTABLEKS                       R6 R5 K7 ["Size"]
       22 DUPTABLE                         R6 K17 [{"Button", "SearchOption"}]
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R7 R7 K2 ["createElement"]
       26 LOADK                            R8 K18 ["TextButton"]
       27 NEWTABLE                         R9 4 0
       29 GETIMPORT                        R10 K20 [UDim2.fromOffset]
       31 LOADN                            R11 200
       32 LOADN                            R12 50
       33 CALL                             R10 2 1
       34 SETTABLEKS                       R10 R9 K7 ["Size"]
       36 LOADK                            R10 K21 ["Click to View Component"]
       37 SETTABLEKS                       R10 R9 K22 ["Text"]
       39 GETUPVAL                         R10 0
       40 GETTABLEKS                       R10 R10 K23 ["Event"]
       42 GETTABLEKS                       R10 R10 K24 ["Activated"]
       44 GETTABLEKS                       R11 R0 K25 ["toggleIsShowing"]
       46 SETTABLE                         R11 R9 R10
       47 CALL                             R7 2 1
       48 SETTABLEKS                       R7 R6 K15 ["Button"]
       50 GETTABLEKS                       R8 R2 K26 ["isShowing"]
       52 JUMPIFNOT                        R8 ; [+8]
       53 GETTABLEKS                       R7 R1 K27 ["OnRender"]
       55 GETTABLEKS                       R8 R2 K26 ["isShowing"]
       57 GETTABLEKS                       R9 R0 K25 ["toggleIsShowing"]
       59 CALL                             R7 2 1
       60 JUMP                             ; [+1]
       61 LOADNIL                          R7
       62 SETTABLEKS                       R7 R6 K16 ["SearchOption"]
       64 CALL                             R3 3 -1
       65 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
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
