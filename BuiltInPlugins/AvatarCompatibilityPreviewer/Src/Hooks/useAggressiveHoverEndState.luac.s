PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["AbsolutePosition"]
        2 GETTABLEKS                       R4 R1 K1 ["AbsoluteSize"]
        4 ADD                              R3 R2 R4
        5 LOADB                            R4 0
        6 GETTABLEKS                       R5 R0 K2 ["X"]
        8 GETTABLEKS                       R6 R2 K2 ["X"]
       10 JUMPIFNOTLE                      R6 R5 ; [+23]
       12 LOADB                            R4 0
       13 GETTABLEKS                       R5 R0 K2 ["X"]
       15 GETTABLEKS                       R6 R3 K2 ["X"]
       17 JUMPIFNOTLE                      R5 R6 ; [+16]
       19 LOADB                            R4 0
       20 GETTABLEKS                       R5 R0 K3 ["Y"]
       22 GETTABLEKS                       R6 R2 K3 ["Y"]
       24 JUMPIFNOTLE                      R6 R5 ; [+9]
       26 GETTABLEKS                       R5 R0 K3 ["Y"]
       28 GETTABLEKS                       R6 R3 K3 ["Y"]
       30 JUMPIFLE                         R5 R6 ; [+2]
       32 LOADB                            R4 0 +1
       33 LOADB                            R4 1
       34 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["PluginGui"]
        2 NAMECALL                         R1 R1 K1 ["IsA"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+5]
        6 GETUPVAL                         R0 0
        7 NAMECALL                         R0 R0 K2 ["GetRelativeMousePosition"]
        9 CALL                             R0 1 1
       10 JUMP                             ; [+4]
       11 GETUPVAL                         R0 1
       12 NAMECALL                         R0 R0 K3 ["GetMouseLocation"]
       14 CALL                             R0 1 1
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R1 R2 K4 ["current"]
       18 JUMPIFEQKNIL                     R1 ; [+39]
       20 GETUPVAL                         R3 2
       21 GETTABLEKS                       R2 R3 K4 ["current"]
       23 GETTABLEKS                       R3 R2 K5 ["AbsolutePosition"]
       25 GETTABLEKS                       R5 R2 K6 ["AbsoluteSize"]
       27 ADD                              R4 R3 R5
       28 LOADB                            R1 0
       29 GETTABLEKS                       R5 R0 K7 ["X"]
       31 GETTABLEKS                       R6 R3 K7 ["X"]
       33 JUMPIFNOTLE                      R6 R5 ; [+23]
       35 LOADB                            R1 0
       36 GETTABLEKS                       R5 R0 K7 ["X"]
       38 GETTABLEKS                       R6 R4 K7 ["X"]
       40 JUMPIFNOTLE                      R5 R6 ; [+16]
       42 LOADB                            R1 0
       43 GETTABLEKS                       R5 R0 K8 ["Y"]
       45 GETTABLEKS                       R6 R3 K8 ["Y"]
       47 JUMPIFNOTLE                      R6 R5 ; [+9]
       49 GETTABLEKS                       R5 R0 K8 ["Y"]
       51 GETTABLEKS                       R6 R4 K8 ["Y"]
       53 JUMPIFLE                         R5 R6 ; [+2]
       55 LOADB                            R1 0 +1
       56 LOADB                            R1 1
       57 JUMPIF                           R1 ; [+5]
       58 GETUPVAL                         R2 3
       59 GETTABLEKS                       R1 R2 K9 ["disable"]
       61 CALL                             R1 0 0
       62 RETURN                           R0 0
       63 GETIMPORT                        R1 K12 [task.wait]
       65 CALL                             R1 0 0
       66 JUMPBACK                         ; [-67]
       67 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["enabled"]
        3 JUMPIF                           R0 ; [+2]
        4 LOADNIL                          R0
        5 RETURN                           R0 1
        6 GETIMPORT                        R0 K3 [task.spawn]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U0
       13 CALL                             R0 1 1
       14 NEWCLOSURE                       R1 P1
       15 CAPTURE                          VAL R0
       16 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 LOADB                            R3 0
        9 CALL                             R2 1 1
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K2 ["useEffect"]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R1
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          VAL R0
       18 NEWTABLE                         R5 0 1
       20 GETTABLEKS                       R6 R2 K3 ["enabled"]
       22 SETLIST                          R5 R6 1 [1]
       24 CALL                             R3 2 0
       25 DUPTABLE                         R3 K6 [{"hover", "isHovered"}]
       26 GETTABLEKS                       R4 R2 K7 ["enable"]
       28 SETTABLEKS                       R4 R3 K4 ["hover"]
       30 GETTABLEKS                       R4 R2 K3 ["enabled"]
       32 SETTABLEKS                       R4 R3 K5 ["isHovered"]
       34 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Hooks"]
       27 GETTABLEKS                       R4 R5 K11 ["useToggleState"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R5 R1 K12 ["ContextServices"]
       32 GETTABLEKS                       R4 R5 K13 ["Focus"]
       34 GETIMPORT                        R5 K15 [game]
       36 LOADK                            R7 K16 ["UserInputService"]
       37 NAMECALL                         R5 R5 K17 ["GetService"]
       39 CALL                             R5 2 1
       40 DUPCLOSURE                       R6 K18 [PROTO_0]
       41 DUPCLOSURE                       R7 K19 [PROTO_4]
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R5
       46 RETURN                           R7 1
