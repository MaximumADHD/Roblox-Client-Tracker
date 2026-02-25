PROTO_0:
        0 LOADK                            R3 K0 ["%."]
        1 MOVE                             R4 R1
        2 LOADK                            R5 K1 ["f"]
        3 CONCAT                           R2 R3 R5
        4 MOVE                             R4 R0
        5 NAMECALL                         R2 R2 K2 ["format"]
        7 CALL                             R2 2 1
        8 LOADK                            R6 K4 ["%.?0+$"]
        9 NAMECALL                         R4 R2 K5 ["match"]
       11 CALL                             R4 2 1
       12 ORK                              R3 R4 K3 [""]
       13 LOADN                            R6 1
       14 LENGTH                           R8 R2
       15 LENGTH                           R9 R3
       16 SUB                              R7 R8 R9
       17 NAMECALL                         R4 R2 K6 ["sub"]
       19 CALL                             R4 3 -1
       20 RETURN                           R4 -1

PROTO_1:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 FASTCALL1                        TONUMBER R0 ; [+3]
        3 MOVE                             R2 R0
        4 GETIMPORT                        R1 K1 [tonumber]
        6 CALL                             R1 1 1
        7 JUMPIF                           R1 ; [+1]
        8 GETUPVAL                         R1 0
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R5 R6 K2 ["Range"]
       12 GETTABLEKS                       R4 R5 K3 ["Min"]
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R6 R7 K2 ["Range"]
       17 GETTABLEKS                       R5 R6 K4 ["Max"]
       19 FASTCALL3                        MATH_CLAMP R1 R4 R5
       21 MOVE                             R3 R1
       22 GETIMPORT                        R2 K7 [math.clamp]
       24 CALL                             R2 3 1
       25 MOVE                             R1 R2
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R2 R3 K8 ["OnValueChanged"]
       29 MOVE                             R3 R1
       30 CALL                             R2 1 0
       31 GETUPVAL                         R3 2
       32 GETTABLEKS                       R2 R3 K9 ["current"]
       34 JUMPIFNOT                        R2 ; [+27]
       35 MOVE                             R4 R1
       36 GETUPVAL                         R6 1
       37 GETTABLEKS                       R5 R6 K10 ["InputPrecision"]
       39 LOADK                            R7 K11 ["%."]
       40 MOVE                             R8 R5
       41 LOADK                            R9 K12 ["f"]
       42 CONCAT                           R6 R7 R9
       43 MOVE                             R8 R4
       44 NAMECALL                         R6 R6 K13 ["format"]
       46 CALL                             R6 2 1
       47 LOADK                            R10 K15 ["%.?0+$"]
       48 NAMECALL                         R8 R6 K16 ["match"]
       50 CALL                             R8 2 1
       51 ORK                              R7 R8 K14 [""]
       52 LOADN                            R10 1
       53 LENGTH                           R12 R6
       54 LENGTH                           R13 R7
       55 SUB                              R11 R12 R13
       56 NAMECALL                         R8 R6 K17 ["sub"]
       58 CALL                             R8 3 1
       59 MOVE                             R3 R8
       60 SETTABLEKS                       R3 R2 K18 ["Text"]
       62 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^%s*[-]?[0-9]*[.]?[0-9]*%s*$"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+5]
        6 LENGTH                           R2 R0
        7 JUMPIFNOTEQKN                    R2 K4 [1] ; [+3]
        9 LOADK                            R2 K5 [""]
       10 RETURN                           R2 1
       11 JUMPIF                           R1 ; [+7]
       12 GETUPVAL                         R2 0
       13 GETUPVAL                         R3 1
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R4 R5 K6 ["InputPrecision"]
       17 CALL                             R2 2 -1
       18 RETURN                           R2 -1
       19 JUMPIFEQKS                       R1 K5 [""] ; [+11]
       21 FASTCALL1                        TONUMBER R1 ; [+3]
       22 MOVE                             R3 R1
       23 GETIMPORT                        R2 K8 [tonumber]
       25 CALL                             R2 1 1
       26 JUMPIFEQKNIL                     R2 ; [+4]
       28 GETUPVAL                         R3 3
       29 MOVE                             R4 R2
       30 CALL                             R3 1 0
       31 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["useState"]
        8 GETTABLEKS                       R3 R0 K2 ["Value"]
       10 CALL                             R2 1 2
       11 GETTABLEKS                       R5 R0 K2 ["Value"]
       13 GETTABLEKS                       R7 R0 K3 ["Range"]
       15 GETTABLEKS                       R6 R7 K4 ["Min"]
       17 GETTABLEKS                       R8 R0 K3 ["Range"]
       19 GETTABLEKS                       R7 R8 K5 ["Max"]
       21 FASTCALL                         MATH_CLAMP ; [+2]
       22 GETIMPORT                        R4 K8 [math.clamp]
       24 CALL                             R4 3 1
       25 GETTABLEKS                       R6 R0 K9 ["InputPrecision"]
       27 LOADK                            R8 K10 ["%."]
       28 MOVE                             R9 R6
       29 LOADK                            R10 K11 ["f"]
       30 CONCAT                           R7 R8 R10
       31 MOVE                             R9 R4
       32 NAMECALL                         R7 R7 K12 ["format"]
       34 CALL                             R7 2 1
       35 LOADK                            R11 K14 ["%.?0+$"]
       36 NAMECALL                         R9 R7 K15 ["match"]
       38 CALL                             R9 2 1
       39 ORK                              R8 R9 K13 [""]
       40 LOADN                            R11 1
       41 LENGTH                           R13 R7
       42 LENGTH                           R14 R8
       43 SUB                              R12 R13 R14
       44 NAMECALL                         R9 R7 K16 ["sub"]
       46 CALL                             R9 3 1
       47 MOVE                             R5 R9
       48 GETUPVAL                         R7 0
       49 GETTABLEKS                       R6 R7 K17 ["createElement"]
       51 GETUPVAL                         R7 1
       52 DUPTABLE                         R8 K26 [{"ClearTextOnFocus", "Disabled", "ForwardRef", "LayoutOrder", "Size", "Text", "OnFocusLost", "OnFormatText"}]
       53 GETTABLEKS                       R9 R0 K18 ["ClearTextOnFocus"]
       55 SETTABLEKS                       R9 R8 K18 ["ClearTextOnFocus"]
       57 GETTABLEKS                       R9 R0 K19 ["Disabled"]
       59 SETTABLEKS                       R9 R8 K19 ["Disabled"]
       61 SETTABLEKS                       R1 R8 K20 ["ForwardRef"]
       63 GETTABLEKS                       R9 R0 K21 ["LayoutOrder"]
       65 SETTABLEKS                       R9 R8 K21 ["LayoutOrder"]
       67 GETTABLEKS                       R9 R0 K22 ["Size"]
       69 SETTABLEKS                       R9 R8 K22 ["Size"]
       71 SETTABLEKS                       R5 R8 K23 ["Text"]
       73 NEWCLOSURE                       R9 P0
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R0
       76 CAPTURE                          VAL R1
       77 SETTABLEKS                       R9 R8 K24 ["OnFocusLost"]
       79 NEWCLOSURE                       R9 P1
       80 CAPTURE                          UPVAL U2
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R0
       83 CAPTURE                          VAL R3
       84 SETTABLEKS                       R9 R8 K25 ["OnFormatText"]
       86 CALL                             R6 2 -1
       87 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
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
       21 GETTABLEKS                       R3 R1 K9 ["UI"]
       23 GETTABLEKS                       R4 R3 K10 ["TextInput"]
       25 DUPCLOSURE                       R5 K11 [PROTO_0]
       26 DUPCLOSURE                       R6 K12 [PROTO_3]
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R4
       29 CAPTURE                          VAL R5
       30 RETURN                           R6 1
