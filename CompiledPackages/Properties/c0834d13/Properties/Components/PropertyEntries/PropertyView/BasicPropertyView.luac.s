PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K7 [{"text", "label", "onChanged", "isDisabled", "size", "width"}]
        5 GETTABLEKS                       R8 R0 K8 ["info"]
        7 GETTABLEKS                       R7 R8 K9 ["parts"]
        9 GETTABLEKS                       R6 R7 K10 ["value"]
       11 GETTABLEKS                       R5 R6 K11 ["multiple"]
       13 JUMPIFNOT                        R5 ; [+2]
       14 LOADK                            R4 K12 ["- multiple -"]
       15 JUMP                             ; [+12]
       16 GETTABLEKS                       R8 R0 K8 ["info"]
       18 GETTABLEKS                       R7 R8 K9 ["parts"]
       20 GETTABLEKS                       R6 R7 K10 ["value"]
       22 GETTABLEKS                       R5 R6 K10 ["value"]
       24 FASTCALL1                        TOSTRING R5 ; [+2]
       25 GETIMPORT                        R4 K14 [tostring]
       27 CALL                             R4 1 1
       28 SETTABLEKS                       R4 R3 K1 ["text"]
       30 LOADK                            R4 K15 [""]
       31 SETTABLEKS                       R4 R3 K2 ["label"]
       33 DUPCLOSURE                       R4 K16 [PROTO_0]
       34 SETTABLEKS                       R4 R3 K3 ["onChanged"]
       36 LOADB                            R4 1
       37 SETTABLEKS                       R4 R3 K4 ["isDisabled"]
       39 GETUPVAL                         R5 2
       40 GETTABLEKS                       R4 R5 K17 ["XSmall"]
       42 SETTABLEKS                       R4 R3 K5 ["size"]
       44 GETIMPORT                        R4 K20 [UDim.new]
       46 LOADN                            R5 1
       47 LOADN                            R6 0
       48 CALL                             R4 2 1
       49 SETTABLEKS                       R4 R3 K6 ["width"]
       51 CALL                             R1 2 -1
       52 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["PropertyEditorTypes"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R5 R0 K6 ["Parent"]
       23 GETTABLEKS                       R4 R5 K9 ["React"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R4 R1 K10 ["TextInput"]
       28 GETTABLEKS                       R6 R1 K11 ["Enums"]
       30 GETTABLEKS                       R5 R6 K12 ["InputSize"]
       32 DUPCLOSURE                       R6 K13 [PROTO_1]
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R5
       36 RETURN                           R6 1
