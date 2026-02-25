PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Frame"]
        4 NEWTABLE                         R3 4 0
        6 GETTABLEKS                       R4 R0 K2 ["Position"]
        8 SETTABLEKS                       R4 R3 K2 ["Position"]
       10 GETTABLEKS                       R4 R0 K3 ["LayoutOrder"]
       12 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R4 R5 K4 ["Tag"]
       17 LOADK                            R5 K5 ["X-Row X-Fit X-Middle X-Center StartPage-Selected StartPage-Circular StartPage-Selected StartPage-PillPaddingS"]
       18 SETTABLE                         R5 R3 R4
       19 NEWTABLE                         R4 0 1
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R5 R6 K0 ["createElement"]
       24 LOADK                            R6 K6 ["TextLabel"]
       25 NEWTABLE                         R7 4 0
       27 GETTABLEKS                       R8 R0 K7 ["Text"]
       29 SETTABLEKS                       R8 R7 K7 ["Text"]
       31 LOADN                            R8 12
       32 SETTABLEKS                       R8 R7 K8 ["TextSize"]
       34 GETUPVAL                         R9 0
       35 GETTABLEKS                       R8 R9 K4 ["Tag"]
       37 LOADK                            R9 K9 ["X-Fit StartPage-TextColor StartPage-FontBold X-Transparent"]
       38 SETTABLE                         R9 R7 R8
       39 CALL                             R5 2 -1
       40 SETLIST                          R4 R5 -1 [1]
       42 CALL                             R1 3 -1
       43 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
