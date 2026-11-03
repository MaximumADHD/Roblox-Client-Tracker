PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"text", "layoutOrder"}]
        5 GETTABLEKS                       R4 R0 K1 ["text"]
        7 SETTABLEKS                       R4 R3 K1 ["text"]
        9 GETTABLEKS                       R4 R0 K2 ["layoutOrder"]
       11 SETTABLEKS                       R4 R3 K2 ["layoutOrder"]
       13 DUPTABLE                         R4 K5 [{"Input"}]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K0 ["createElement"]
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R6 R6 K6 ["NumberInput"]
       20 DUPTABLE                         R7 K20 [{["isRequired"] = True, ["label"] = "", ["onChanged"], ["size"], ["width"], ["value"], ["suffix"], ["minimum"], ["maximum"], ["controlsVariant"], ["isScrubbable"] = True}]
       21 GETTABLEKS                       R8 R0 K11 ["onChanged"]
       23 SETTABLEKS                       R8 R7 K11 ["onChanged"]
       25 GETUPVAL                         R8 2
       26 GETTABLEKS                       R8 R8 K21 ["Enums"]
       28 GETTABLEKS                       R8 R8 K22 ["InputSize"]
       30 GETTABLEKS                       R8 R8 K23 ["XSmall"]
       32 SETTABLEKS                       R8 R7 K12 ["size"]
       34 GETIMPORT                        R8 K26 [UDim.new]
       36 LOADN                            R9 1
       37 LOADN                            R10 0
       38 CALL                             R8 2 1
       39 SETTABLEKS                       R8 R7 K13 ["width"]
       41 GETTABLEKS                       R8 R0 K14 ["value"]
       43 SETTABLEKS                       R8 R7 K14 ["value"]
       45 GETTABLEKS                       R8 R0 K15 ["suffix"]
       47 SETTABLEKS                       R8 R7 K15 ["suffix"]
       49 GETTABLEKS                       R8 R0 K16 ["minimum"]
       51 SETTABLEKS                       R8 R7 K16 ["minimum"]
       53 GETTABLEKS                       R8 R0 K17 ["maximum"]
       55 SETTABLEKS                       R8 R7 K17 ["maximum"]
       57 GETUPVAL                         R8 2
       58 GETTABLEKS                       R8 R8 K21 ["Enums"]
       60 GETTABLEKS                       R8 R8 K27 ["NumberInputControlsVariant"]
       62 GETTABLEKS                       R8 R8 K28 ["None"]
       64 SETTABLEKS                       R8 R7 K18 ["controlsVariant"]
       66 CALL                             R5 2 1
       67 SETTABLEKS                       R5 R4 K4 ["Input"]
       69 CALL                             R1 3 -1
       70 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimatedImageImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Components"]
       20 GETTABLEKS                       R3 R3 K10 ["MetadataRow"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["React"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K12 [PROTO_0]
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R1
       34 RETURN                           R4 1
