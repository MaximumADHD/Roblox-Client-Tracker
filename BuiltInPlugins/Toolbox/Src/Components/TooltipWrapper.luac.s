PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R1 K2 ["Text"]
        4 ORK                              R3 R4 K1 [""]
        5 FASTCALL1                        TOSTRING R3 ; [+2]
        6 GETIMPORT                        R2 K4 [tostring]
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R3 R1 K5 ["SizeConstraint"]
       11 JUMPIF                           R3 ; [+2]
       12 GETIMPORT                        R3 K8 [Enum.SizeConstraint.RelativeXY]
       14 GETTABLEKS                       R4 R1 K9 ["canShowCurrentTooltip"]
       16 GETTABLEKS                       R5 R1 K10 ["isHovered"]
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R6 R7 K11 ["createElement"]
       21 LOADK                            R7 K12 ["Frame"]
       22 DUPTABLE                         R8 K15 [{"Size", "BackgroundTransparency", "SizeConstraint"}]
       23 GETIMPORT                        R9 K18 [UDim2.new]
       25 LOADN                            R10 1
       26 LOADN                            R11 0
       27 LOADN                            R12 1
       28 LOADN                            R13 0
       29 CALL                             R9 4 1
       30 SETTABLEKS                       R9 R8 K13 ["Size"]
       32 LOADN                            R9 1
       33 SETTABLEKS                       R9 R8 K14 ["BackgroundTransparency"]
       35 SETTABLEKS                       R3 R8 K5 ["SizeConstraint"]
       37 DUPTABLE                         R9 K20 [{"Tooltip"}]
       38 GETUPVAL                         R11 0
       39 GETTABLEKS                       R10 R11 K11 ["createElement"]
       41 GETUPVAL                         R11 1
       42 DUPTABLE                         R12 K23 [{"Enabled", "Text", "Priority"}]
       43 AND                              R13 R4 R5
       44 SETTABLEKS                       R13 R12 K21 ["Enabled"]
       46 SETTABLEKS                       R2 R12 K2 ["Text"]
       48 LOADN                            R13 2
       49 SETTABLEKS                       R13 R12 K22 ["Priority"]
       51 CALL                             R10 2 1
       52 SETTABLEKS                       R10 R9 K19 ["Tooltip"]
       54 CALL                             R6 3 -1
       55 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Roact"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R5 K5 [require]
       18 GETTABLEKS                       R6 R1 K7 ["Framework"]
       20 CALL                             R5 1 1
       21 GETTABLEKS                       R4 R5 K8 ["UI"]
       23 GETTABLEKS                       R3 R4 K9 ["Tooltip"]
       25 GETTABLEKS                       R4 R2 K10 ["PureComponent"]
       27 LOADK                            R6 K11 ["TooltipWrapper"]
       28 NAMECALL                         R4 R4 K12 ["extend"]
       30 CALL                             R4 2 1
       31 DUPCLOSURE                       R5 K13 [PROTO_0]
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R3
       34 SETTABLEKS                       R5 R4 K14 ["render"]
       36 RETURN                           R4 1
