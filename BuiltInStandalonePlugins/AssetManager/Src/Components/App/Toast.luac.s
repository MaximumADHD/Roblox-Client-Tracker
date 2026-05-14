PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["use"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["Hooks"]
        9 GETTABLEKS                       R2 R2 K2 ["useTokens"]
       11 CALL                             R2 0 1
       12 JUMPIF                           R1 ; [+2]
       13 LOADNIL                          R3
       14 RETURN                           R3 1
       15 GETTABLEKS                       R5 R1 K3 ["Key"]
       17 GETTABLEKS                       R6 R1 K4 ["SubKey"]
       19 GETTABLEKS                       R7 R1 K5 ["Args"]
       21 NAMECALL                         R3 R0 K6 ["getText"]
       23 CALL                             R3 4 1
       24 GETUPVAL                         R4 3
       25 GETTABLEKS                       R4 R4 K7 ["createElement"]
       27 GETUPVAL                         R5 2
       28 GETTABLEKS                       R5 R5 K8 ["View"]
       30 DUPTABLE                         R6 K13 [{"ZIndex", "Position", "backgroundStyle", "tag"}]
       31 LOADN                            R7 4
       32 SETTABLEKS                       R7 R6 K9 ["ZIndex"]
       34 GETIMPORT                        R7 K16 [UDim2.new]
       36 LOADN                            R8 1
       37 LOADN                            R9 248
       38 LOADN                            R10 1
       39 LOADN                            R11 248
       40 CALL                             R7 4 1
       41 SETTABLEKS                       R7 R6 K10 ["Position"]
       43 GETTABLEKS                       R7 R2 K17 ["Inverse"]
       45 GETTABLEKS                       R7 R7 K18 ["Surface"]
       47 GETTABLEKS                       R7 R7 K19 ["Surface_0"]
       49 SETTABLEKS                       R7 R6 K11 ["backgroundStyle"]
       51 LOADK                            R7 K20 ["padding-xsmall anchor-bottom-right auto-xy radius-small data-testid=toast-container"]
       52 SETTABLEKS                       R7 R6 K12 ["tag"]
       54 DUPTABLE                         R7 K22 [{"Text"}]
       55 GETUPVAL                         R8 3
       56 GETTABLEKS                       R8 R8 K7 ["createElement"]
       58 GETUPVAL                         R9 2
       59 GETTABLEKS                       R9 R9 K21 ["Text"]
       61 DUPTABLE                         R10 K23 [{"Text", "tag"}]
       62 SETTABLEKS                       R3 R10 K21 ["Text"]
       64 LOADK                            R11 K24 ["text-body-small content-inverse-default auto-xy text-wrap text-align-x-left data-testid=toast-text"]
       65 SETTABLEKS                       R11 R10 K12 ["tag"]
       67 CALL                             R8 2 1
       68 SETTABLEKS                       R8 R7 K21 ["Text"]
       70 CALL                             R4 3 -1
       71 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K12 ["Src"]
       36 GETTABLEKS                       R7 R7 K13 ["Hooks"]
       38 GETTABLEKS                       R7 R7 K14 ["useToast"]
       40 CALL                             R6 1 1
       41 DUPCLOSURE                       R7 K15 [PROTO_0]
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R6
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R1
       46 RETURN                           R7 1
