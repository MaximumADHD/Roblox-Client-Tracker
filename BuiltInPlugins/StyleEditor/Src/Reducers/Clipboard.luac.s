PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K2 [{"DEPRECATED_Instance", "Instances"}]
        3 GETTABLEKS                       R5 R1 K3 ["instance"]
        5 SETTABLEKS                       R5 R4 K0 ["DEPRECATED_Instance"]
        7 NEWTABLE                         R5 0 1
        9 GETTABLEKS                       R6 R1 K3 ["instance"]
       11 SETLIST                          R5 R6 1 [1]
       13 SETTABLEKS                       R5 R4 K1 ["Instances"]
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 DUPTABLE                         R4 K1 [{"Instances"}]
        6 GETTABLEKS                       R5 R1 K2 ["instances"]
        8 SETTABLEKS                       R5 R4 K0 ["Instances"]
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1

PROTO_2:
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

PROTO_3:
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
       46 GETIMPORT                        R8 K4 [require]
       48 GETTABLEKS                       R9 R4 K15 ["CopyInstancesToClipboard"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K4 [require]
       53 GETTABLEKS                       R12 R0 K9 ["Src"]
       55 GETTABLEKS                       R11 R12 K16 ["Flags"]
       57 GETTABLEKS                       R10 R11 K17 ["getFFlagStyleQuery"]
       59 CALL                             R9 1 1
       60 CALL                             R9 0 1
       61 DUPTABLE                         R10 K22 [{"DEPRECATED_Instance", "Instances", "Attribute", "Property"}]
       62 LOADNIL                          R11
       63 SETTABLEKS                       R11 R10 K18 ["DEPRECATED_Instance"]
       65 NEWTABLE                         R11 0 0
       67 SETTABLEKS                       R11 R10 K19 ["Instances"]
       69 LOADNIL                          R11
       70 SETTABLEKS                       R11 R10 K20 ["Attribute"]
       72 LOADNIL                          R11
       73 SETTABLEKS                       R11 R10 K21 ["Property"]
       75 GETTABLEKS                       R11 R1 K23 ["createReducer"]
       77 MOVE                             R12 R10
       78 NEWTABLE                         R13 4 0
       80 GETTABLEKS                       R14 R5 K24 ["name"]
       82 DUPCLOSURE                       R15 K25 [PROTO_0]
       83 CAPTURE                          VAL R3
       84 SETTABLE                         R15 R13 R14
       85 GETTABLEKS                       R14 R8 K24 ["name"]
       87 DUPCLOSURE                       R15 K26 [PROTO_1]
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R3
       90 SETTABLE                         R15 R13 R14
       91 GETTABLEKS                       R14 R6 K24 ["name"]
       93 DUPCLOSURE                       R15 K27 [PROTO_2]
       94 CAPTURE                          VAL R3
       95 SETTABLE                         R15 R13 R14
       96 GETTABLEKS                       R14 R7 K24 ["name"]
       98 DUPCLOSURE                       R15 K28 [PROTO_3]
       99 CAPTURE                          VAL R3
      100 SETTABLE                         R15 R13 R14
      101 CALL                             R11 2 -1
      102 RETURN                           R11 -1
