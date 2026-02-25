PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Value"]
        3 GETUPVAL                         R1 1
        4 JUMPIFEQ                         R0 R1 ; [+10]
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K0 ["Value"]
       10 JUMPIF                           R1 ; [+3]
       11 GETUPVAL                         R2 3
       12 GETTABLEKS                       R1 R2 K1 ["Min"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+18]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["OnChanged"]
        5 GETUPVAL                         R2 2
        6 GETUPVAL                         R4 3
        7 GETTABLEKS                       R3 R4 K1 ["Min"]
        9 GETUPVAL                         R5 3
       10 GETTABLEKS                       R4 R5 K2 ["Max"]
       12 FASTCALL                         MATH_CLAMP ; [+2]
       13 GETIMPORT                        R1 K5 [math.clamp]
       15 CALL                             R1 3 1
       16 CALL                             R0 1 0
       17 GETUPVAL                         R0 4
       18 LOADB                            R1 0
       19 CALL                             R0 1 0
       20 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 ORK                              R2 R0 K0 [0]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["Schema"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R3 R0 K1 ["Value"]
        5 CALL                             R2 1 2
        6 GETUPVAL                         R4 1
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R2
       10 CAPTURE                          VAL R3
       11 CAPTURE                          VAL R1
       12 NEWTABLE                         R6 0 1
       14 GETTABLEKS                       R7 R0 K1 ["Value"]
       16 SETLIST                          R6 R7 1 [1]
       18 CALL                             R4 2 0
       19 GETUPVAL                         R4 0
       20 LOADB                            R5 0
       21 CALL                             R4 1 2
       22 GETUPVAL                         R6 1
       23 NEWCLOSURE                       R7 P1
       24 CAPTURE                          VAL R4
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R5
       29 NEWTABLE                         R8 0 2
       31 MOVE                             R9 R4
       32 MOVE                             R10 R2
       33 SETLIST                          R8 R9 2 [1]
       35 CALL                             R6 2 0
       36 GETUPVAL                         R7 2
       37 GETTABLEKS                       R6 R7 K2 ["createElement"]
       39 GETUPVAL                         R7 3
       40 DUPTABLE                         R8 K14 [{"Disabled", "Max", "Min", "OnInputEnded", "OnValueChanged", "Size", "CustomValidation", "ShowInput", "SnapIncrement", "StyleModifier", "VerticalDragTolerance", "Value"}]
       41 GETTABLEKS                       R9 R0 K3 ["Disabled"]
       43 SETTABLEKS                       R9 R8 K3 ["Disabled"]
       45 GETTABLEKS                       R9 R1 K4 ["Max"]
       47 SETTABLEKS                       R9 R8 K4 ["Max"]
       49 GETTABLEKS                       R9 R1 K5 ["Min"]
       51 SETTABLEKS                       R9 R8 K5 ["Min"]
       53 NEWCLOSURE                       R9 P2
       54 CAPTURE                          VAL R5
       55 SETTABLEKS                       R9 R8 K6 ["OnInputEnded"]
       57 NEWCLOSURE                       R9 P3
       58 CAPTURE                          VAL R3
       59 SETTABLEKS                       R9 R8 K7 ["OnValueChanged"]
       61 GETIMPORT                        R9 K17 [UDim2.new]
       63 LOADN                            R10 1
       64 LOADN                            R11 0
       65 LOADN                            R12 0
       66 LOADN                            R13 24
       67 CALL                             R9 4 1
       68 SETTABLEKS                       R9 R8 K8 ["Size"]
       70 GETTABLEKS                       R9 R0 K9 ["CustomValidation"]
       72 SETTABLEKS                       R9 R8 K9 ["CustomValidation"]
       74 GETTABLEKS                       R9 R1 K10 ["ShowInput"]
       76 SETTABLEKS                       R9 R8 K10 ["ShowInput"]
       78 GETTABLEKS                       R9 R1 K11 ["SnapIncrement"]
       80 SETTABLEKS                       R9 R8 K11 ["SnapIncrement"]
       82 GETTABLEKS                       R10 R0 K18 ["HasError"]
       84 JUMPIFNOT                        R10 ; [+4]
       85 GETUPVAL                         R10 4
       86 GETTABLEKS                       R9 R10 K19 ["Error"]
       88 JUMP                             ; [+1]
       89 LOADNIL                          R9
       90 SETTABLEKS                       R9 R8 K12 ["StyleModifier"]
       92 LOADN                            R9 0
       93 SETTABLEKS                       R9 R8 K13 ["VerticalDragTolerance"]
       95 SETTABLEKS                       R2 R8 K1 ["Value"]
       97 CALL                             R6 2 -1
       98 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
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
       21 GETTABLEKS                       R3 R2 K9 ["useEffect"]
       23 GETTABLEKS                       R4 R2 K10 ["useState"]
       25 GETTABLEKS                       R6 R1 K11 ["Util"]
       27 GETTABLEKS                       R5 R6 K12 ["StyleModifier"]
       29 GETTABLEKS                       R7 R1 K13 ["UI"]
       31 GETTABLEKS                       R6 R7 K14 ["Slider"]
       33 DUPCLOSURE                       R7 K15 [PROTO_4]
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R6
       38 CAPTURE                          VAL R5
       39 RETURN                           R7 1
