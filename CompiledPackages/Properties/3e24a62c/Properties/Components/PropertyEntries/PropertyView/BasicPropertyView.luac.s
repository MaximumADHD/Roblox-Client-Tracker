PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getInfo"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R3 R1 K1 ["parts"]
        7 GETTABLEKS                       R3 R3 K2 ["value"]
        9 GETTABLEKS                       R3 R3 K3 ["multiple"]
       11 JUMPIFNOT                        R3 ; [+2]
       12 LOADK                            R2 K4 ["- multiple -"]
       13 RETURN                           R2 1
       14 GETTABLEKS                       R3 R1 K1 ["parts"]
       16 GETTABLEKS                       R3 R3 K2 ["value"]
       18 GETTABLEKS                       R3 R3 K2 ["value"]
       20 FASTCALL1                        TOSTRING R3 ; [+2]
       21 GETIMPORT                        R2 K6 [tostring]
       23 CALL                             R2 1 1
       24 RETURN                           R2 1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R2 1 -1
        5 CALL                             R1 -1 1
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K0 ["createElement"]
        9 GETUPVAL                         R3 3
       10 DUPTABLE                         R4 K8 [{"text", "label", "onChanged", "isDisabled", "size", "width", "variant"}]
       11 SETTABLEKS                       R1 R4 K1 ["text"]
       13 LOADK                            R5 K9 [""]
       14 SETTABLEKS                       R5 R4 K2 ["label"]
       16 DUPCLOSURE                       R5 K10 [PROTO_1]
       17 SETTABLEKS                       R5 R4 K3 ["onChanged"]
       19 LOADB                            R5 1
       20 SETTABLEKS                       R5 R4 K4 ["isDisabled"]
       22 GETUPVAL                         R5 4
       23 GETTABLEKS                       R5 R5 K11 ["XSmall"]
       25 SETTABLEKS                       R5 R4 K5 ["size"]
       27 GETIMPORT                        R5 K14 [UDim.new]
       29 LOADN                            R6 1
       30 LOADN                            R7 0
       31 CALL                             R5 2 1
       32 SETTABLEKS                       R5 R4 K6 ["width"]
       34 GETUPVAL                         R5 5
       35 GETTABLEKS                       R5 R5 K15 ["Contrast"]
       37 SETTABLEKS                       R5 R4 K7 ["variant"]
       39 CALL                             R2 2 -1
       40 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R3 R3 K7 ["Foundation"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETIMPORT                        R4 K1 [script]
       20 GETTABLEKS                       R4 R4 K4 ["Parent"]
       22 GETTABLEKS                       R4 R4 K8 ["PropertyViewTypes"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K4 ["Parent"]
       29 GETTABLEKS                       R5 R5 K9 ["React"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R1 K10 ["Signals"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R1 K11 ["SignalsReact"]
       41 CALL                             R6 1 1
       42 GETTABLEKS                       R7 R2 K12 ["Enums"]
       44 GETTABLEKS                       R7 R7 K13 ["InputSize"]
       46 GETTABLEKS                       R8 R2 K12 ["Enums"]
       48 GETTABLEKS                       R8 R8 K14 ["InputVariant"]
       50 GETTABLEKS                       R9 R2 K15 ["TextInput"]
       52 GETTABLEKS                       R10 R5 K16 ["createComputed"]
       54 GETTABLEKS                       R11 R6 K17 ["useSignalBinding"]
       56 DUPCLOSURE                       R12 K18 [PROTO_2]
       57 CAPTURE                          VAL R11
       58 CAPTURE                          VAL R10
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R9
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R8
       63 RETURN                           R12 1
