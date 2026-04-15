PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Item"]
        2 GETTABLEKS                       R3 R1 K1 ["Enabled"]
        4 JUMPIFNOTEQKB                    R3 FALSE ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K2 ["createElement"]
       11 LOADK                            R4 K3 ["TextButton"]
       12 NEWTABLE                         R5 4 0
       14 GETTABLEKS                       R6 R0 K4 ["NextOrder"]
       16 CALL                             R6 0 1
       17 SETTABLEKS                       R6 R5 K5 ["LayoutOrder"]
       19 GETTABLEKS                       R6 R1 K6 ["Text"]
       21 SETTABLEKS                       R6 R5 K6 ["Text"]
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R7 R8 K7 ["Event"]
       26 GETTABLEKS                       R6 R7 K8 ["Activated"]
       28 JUMPIFNOT                        R2 ; [+3]
       29 GETTABLEKS                       R7 R1 K9 ["OnClick"]
       31 JUMP                             ; [+1]
       32 LOADNIL                          R7
       33 SETTABLE                         R7 R5 R6
       34 GETUPVAL                         R7 0
       35 GETTABLEKS                       R6 R7 K10 ["Tag"]
       37 GETUPVAL                         R9 1
       38 GETTABLEKS                       R8 R9 K11 ["Styling"]
       40 GETTABLEKS                       R7 R8 K12 ["joinTags"]
       42 LOADK                            R8 K13 ["VPF-TextButton"]
       43 JUMPIFNOT                        R2 ; [+2]
       44 LOADNIL                          R9
       45 JUMP                             ; [+1]
       46 LOADK                            R9 K14 ["VPF-TextButton--Disabled"]
       47 CALL                             R7 2 1
       48 SETTABLE                         R7 R5 R6
       49 CALL                             R3 2 -1
       50 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ViewportToolingFramework"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Types"]
       25 CALL                             R3 1 1
       26 DUPCLOSURE                       R4 K10 [PROTO_0]
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R1
       29 RETURN                           R4 1
