PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"Instance"}]
        3 GETTABLEKS                       R5 R1 K2 ["instance"]
        5 SETTABLEKS                       R5 R4 K0 ["Instance"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"Attribute"}]
        3 DUPTABLE                         R5 K4 [{"Name", "Value"}]
        4 GETTABLEKS                       R6 R1 K5 ["attributeName"]
        6 SETTABLEKS                       R6 R5 K2 ["Name"]
        8 GETTABLEKS                       R6 R1 K6 ["attributeValue"]
       10 SETTABLEKS                       R6 R5 K3 ["Value"]
       12 SETTABLEKS                       R5 R4 K0 ["Attribute"]
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"Property"}]
        3 DUPTABLE                         R5 K4 [{"Name", "Value"}]
        4 GETTABLEKS                       R6 R1 K5 ["propertyName"]
        6 SETTABLEKS                       R6 R5 K2 ["Name"]
        8 GETTABLEKS                       R6 R1 K6 ["propertyValue"]
       10 SETTABLEKS                       R6 R5 K3 ["Value"]
       12 SETTABLEKS                       R5 R4 K0 ["Property"]
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Dash"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["join"]
       25 GETTABLEKS                       R6 R0 K9 ["Src"]
       27 GETTABLEKS                       R5 R6 K10 ["Actions"]
       29 GETTABLEKS                       R4 R5 K11 ["Clipboard"]
       31 GETIMPORT                        R5 K4 [require]
       33 GETTABLEKS                       R6 R4 K12 ["CopyInstanceToClipboard"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K4 [require]
       38 GETTABLEKS                       R7 R4 K13 ["CopyAttributeToClipboard"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K4 [require]
       43 GETTABLEKS                       R8 R4 K14 ["CopyPropertyToClipboard"]
       45 CALL                             R7 1 1
       46 DUPTABLE                         R8 K18 [{"Instance", "Attribute", "Property"}]
       47 LOADNIL                          R9
       48 SETTABLEKS                       R9 R8 K15 ["Instance"]
       50 LOADNIL                          R9
       51 SETTABLEKS                       R9 R8 K16 ["Attribute"]
       53 LOADNIL                          R9
       54 SETTABLEKS                       R9 R8 K17 ["Property"]
       56 GETTABLEKS                       R9 R1 K19 ["createReducer"]
       58 MOVE                             R10 R8
       59 NEWTABLE                         R11 4 0
       61 GETTABLEKS                       R12 R5 K20 ["name"]
       63 DUPCLOSURE                       R13 K21 [PROTO_0]
       64 CAPTURE                          VAL R3
       65 SETTABLE                         R13 R11 R12
       66 GETTABLEKS                       R12 R6 K20 ["name"]
       68 DUPCLOSURE                       R13 K22 [PROTO_1]
       69 CAPTURE                          VAL R3
       70 SETTABLE                         R13 R11 R12
       71 GETTABLEKS                       R12 R7 K20 ["name"]
       73 DUPCLOSURE                       R13 K23 [PROTO_2]
       74 CAPTURE                          VAL R3
       75 SETTABLE                         R13 R11 R12
       76 CALL                             R9 2 -1
       77 RETURN                           R9 -1
