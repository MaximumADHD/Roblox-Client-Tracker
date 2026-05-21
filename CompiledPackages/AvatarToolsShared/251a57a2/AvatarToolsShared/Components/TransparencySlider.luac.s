PROTO_0:
        0 DUPTABLE                         R2 K1 [{"value"}]
        1 GETTABLEKS                       R3 R1 K2 ["Value"]
        3 SETTABLEKS                       R3 R2 K0 ["value"]
        5 SETTABLEKS                       R2 R0 K3 ["state"]
        7 GETTABLEKS                       R2 R1 K4 ["Item"]
        9 SETTABLEKS                       R2 R0 K5 ["item"]
       11 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["item"]
        2 GETTABLEKS                       R2 R0 K1 ["props"]
        4 GETTABLEKS                       R2 R2 K2 ["Item"]
        6 JUMPIFEQ                         R1 R2 ; [+11]
        8 DUPTABLE                         R5 K4 [{"value"}]
        9 GETTABLEKS                       R6 R0 K1 ["props"]
       11 GETTABLEKS                       R6 R6 K5 ["Value"]
       13 SETTABLEKS                       R6 R5 K3 ["value"]
       15 NAMECALL                         R3 R0 K6 ["setState"]
       17 CALL                             R3 2 0
       18 SETTABLEKS                       R2 R0 K0 ["item"]
       20 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+3]
        2 GETUPVAL                         R1 0
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 JUMPIFNOT                        R1 ; [+11]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K1 ["MAX_TRANSPARENCY_PERCENT"]
       10 DIV                              R2 R0 R3
       11 SUBRK                            R1 R0 K2 ["setTransparency"]
       12 GETUPVAL                         R2 3
       13 GETTABLEKS                       R2 R2 K2 ["setTransparency"]
       15 GETUPVAL                         R3 1
       16 MOVE                             R4 R1
       17 CALL                             R2 2 0
       18 GETUPVAL                         R1 4
       19 DUPTABLE                         R3 K4 [{"value"}]
       20 SETTABLEKS                       R0 R3 K3 ["value"]
       22 NAMECALL                         R1 R1 K5 ["setState"]
       24 CALL                             R1 2 0
       25 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Title"]
        4 GETTABLEKS                       R3 R1 K2 ["Item"]
        6 GETTABLEKS                       R4 R1 K3 ["Height"]
        8 GETTABLEKS                       R5 R1 K4 ["LayoutOrder"]
       10 GETTABLEKS                       R6 R1 K5 ["IsDisabled"]
       12 GETTABLEKS                       R7 R1 K6 ["SetValue"]
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R8 R8 K7 ["createElement"]
       17 GETUPVAL                         R9 1
       18 DUPTABLE                         R10 K11 [{"Title", "Value", "MaxValue", "Height", "UsePercentage", "LayoutOrder", "IsDisabled", "SetValue"}]
       19 SETTABLEKS                       R2 R10 K1 ["Title"]
       21 GETTABLEKS                       R11 R0 K12 ["state"]
       23 GETTABLEKS                       R11 R11 K13 ["value"]
       25 SETTABLEKS                       R11 R10 K8 ["Value"]
       27 GETUPVAL                         R11 2
       28 GETTABLEKS                       R11 R11 K14 ["MAX_TRANSPARENCY_PERCENT"]
       30 SETTABLEKS                       R11 R10 K9 ["MaxValue"]
       32 SETTABLEKS                       R4 R10 K3 ["Height"]
       34 LOADB                            R11 1
       35 SETTABLEKS                       R11 R10 K10 ["UsePercentage"]
       37 SETTABLEKS                       R5 R10 K4 ["LayoutOrder"]
       39 SETTABLEKS                       R6 R10 K5 ["IsDisabled"]
       41 NEWCLOSURE                       R11 P0
       42 CAPTURE                          VAL R7
       43 CAPTURE                          VAL R3
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          UPVAL U3
       46 CAPTURE                          VAL R0
       47 SETTABLEKS                       R11 R10 K6 ["SetValue"]
       49 CALL                             R8 2 -1
       50 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K1 [script]
       16 GETTABLEKS                       R2 R2 K2 ["Parent"]
       18 GETTABLEKS                       R2 R2 K2 ["Parent"]
       20 GETTABLEKS                       R2 R2 K6 ["Components"]
       22 GETIMPORT                        R3 K4 [require]
       24 GETTABLEKS                       R4 R2 K7 ["SliderSetting"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K1 [script]
       29 GETTABLEKS                       R4 R4 K2 ["Parent"]
       31 GETTABLEKS                       R4 R4 K2 ["Parent"]
       33 GETTABLEKS                       R4 R4 K8 ["Util"]
       35 GETIMPORT                        R5 K4 [require]
       37 GETTABLEKS                       R6 R4 K9 ["AccessoryAndBodyToolShared"]
       39 GETTABLEKS                       R6 R6 K10 ["TransparencyUtil"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K4 [require]
       44 GETTABLEKS                       R7 R4 K9 ["AccessoryAndBodyToolShared"]
       46 GETTABLEKS                       R7 R7 K11 ["Constants"]
       48 CALL                             R6 1 1
       49 GETTABLEKS                       R7 R1 K12 ["PureComponent"]
       51 LOADK                            R9 K13 ["TransparencySlider"]
       52 NAMECALL                         R7 R7 K14 ["extend"]
       54 CALL                             R7 2 1
       55 GETIMPORT                        R8 K4 [require]
       57 GETTABLEKS                       R9 R0 K15 ["Framework"]
       59 CALL                             R8 1 1
       60 GETTABLEKS                       R9 R8 K8 ["Util"]
       62 GETTABLEKS                       R10 R9 K16 ["Typecheck"]
       64 GETTABLEKS                       R11 R10 K17 ["wrap"]
       66 MOVE                             R12 R7
       67 GETIMPORT                        R13 K1 [script]
       69 CALL                             R11 2 0
       70 DUPCLOSURE                       R11 K18 [PROTO_0]
       71 SETTABLEKS                       R11 R7 K19 ["init"]
       73 DUPCLOSURE                       R11 K20 [PROTO_1]
       74 SETTABLEKS                       R11 R7 K21 ["didUpdate"]
       76 DUPCLOSURE                       R11 K22 [PROTO_3]
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R5
       81 SETTABLEKS                       R11 R7 K23 ["render"]
       83 RETURN                           R7 1
