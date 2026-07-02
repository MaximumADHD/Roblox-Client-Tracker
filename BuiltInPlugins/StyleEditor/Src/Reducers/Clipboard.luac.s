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
        2 DUPTABLE                         R4 K2 [{"Property", "Transition"}]
        3 DUPTABLE                         R5 K5 [{"Name", "Value", "Transition"}]
        4 GETTABLEKS                       R6 R1 K6 ["propertyName"]
        6 SETTABLEKS                       R6 R5 K3 ["Name"]
        8 GETTABLEKS                       R6 R1 K7 ["propertyValue"]
       10 SETTABLEKS                       R6 R5 K4 ["Value"]
       12 GETUPVAL                         R7 1
       13 JUMPIFNOT                        R7 ; [+3]
       14 GETTABLEKS                       R6 R1 K8 ["transitionValue"]
       16 JUMP                             ; [+1]
       17 LOADNIL                          R6
       18 SETTABLEKS                       R6 R5 K1 ["Transition"]
       20 SETTABLEKS                       R5 R4 K0 ["Property"]
       22 GETUPVAL                         R6 1
       23 JUMPIFNOT                        R6 ; [+4]
       24 GETUPVAL                         R5 2
       25 GETTABLEKS                       R5 R5 K9 ["None"]
       27 JUMP                             ; [+1]
       28 LOADNIL                          R5
       29 SETTABLEKS                       R5 R4 K1 ["Transition"]
       31 CALL                             R2 2 -1
       32 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K2 [{"Transition", "Property"}]
        3 GETTABLEKS                       R6 R1 K3 ["propertyName"]
        5 JUMPIF                           R6 ; [+3]
        6 GETTABLEKS                       R6 R1 K4 ["transitionValue"]
        8 JUMPIFNOT                        R6 ; [+10]
        9 DUPTABLE                         R5 K7 [{"Name", "TransitionValue"}]
       10 GETTABLEKS                       R6 R1 K3 ["propertyName"]
       12 SETTABLEKS                       R6 R5 K5 ["Name"]
       14 GETTABLEKS                       R6 R1 K4 ["transitionValue"]
       16 SETTABLEKS                       R6 R5 K6 ["TransitionValue"]
       18 JUMP                             ; [+3]
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R5 R5 K8 ["None"]
       22 SETTABLEKS                       R5 R4 K0 ["Transition"]
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R5 R5 K8 ["None"]
       27 SETTABLEKS                       R5 R4 K1 ["Property"]
       29 CALL                             R2 2 -1
       30 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Dash"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["join"]
       25 GETIMPORT                        R4 K4 [require]
       27 GETTABLEKS                       R5 R0 K9 ["Src"]
       29 GETTABLEKS                       R5 R5 K10 ["Types"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K11 ["Actions"]
       36 GETTABLEKS                       R5 R5 K12 ["Clipboard"]
       38 GETIMPORT                        R6 K4 [require]
       40 GETTABLEKS                       R7 R5 K13 ["CopyInstanceToClipboard"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K4 [require]
       45 GETTABLEKS                       R8 R5 K14 ["CopyAttributeToClipboard"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K4 [require]
       50 GETTABLEKS                       R9 R5 K15 ["CopyPropertyToClipboard"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K4 [require]
       55 GETTABLEKS                       R10 R5 K16 ["CopyInstancesToClipboard"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K4 [require]
       60 GETTABLEKS                       R11 R5 K17 ["CopyTransitionToClipboard"]
       62 CALL                             R10 1 1
       63 GETIMPORT                        R11 K4 [require]
       65 GETTABLEKS                       R12 R0 K9 ["Src"]
       67 GETTABLEKS                       R12 R12 K18 ["Flags"]
       69 GETTABLEKS                       R12 R12 K19 ["getFFlagStyleQuery"]
       71 CALL                             R11 1 1
       72 CALL                             R11 0 1
       73 GETIMPORT                        R12 K4 [require]
       75 GETTABLEKS                       R13 R0 K9 ["Src"]
       77 GETTABLEKS                       R13 R13 K18 ["Flags"]
       79 GETTABLEKS                       R13 R13 K20 ["getFFlagStyleEditorSupportTransitions"]
       81 CALL                             R12 1 1
       82 CALL                             R12 0 1
       83 DUPTABLE                         R13 K27 [{["DEPRECATED_Instance"] = , ["Instances"], ["Attribute"] = , ["Property"] = , ["Transition"] = }]
       84 NEWTABLE                         R14 0 0
       86 SETTABLEKS                       R14 R13 K23 ["Instances"]
       88 GETTABLEKS                       R14 R1 K28 ["createReducer"]
       90 MOVE                             R15 R13
       91 NEWTABLE                         R16 8 0
       93 GETTABLEKS                       R17 R6 K29 ["name"]
       95 DUPCLOSURE                       R18 K30 [PROTO_0]
       96 CAPTURE                          VAL R3
       97 SETTABLE                         R18 R16 R17
       98 GETTABLEKS                       R17 R9 K29 ["name"]
      100 DUPCLOSURE                       R18 K31 [PROTO_1]
      101 CAPTURE                          VAL R11
      102 CAPTURE                          VAL R3
      103 SETTABLE                         R18 R16 R17
      104 GETTABLEKS                       R17 R7 K29 ["name"]
      106 DUPCLOSURE                       R18 K32 [PROTO_2]
      107 CAPTURE                          VAL R3
      108 SETTABLE                         R18 R16 R17
      109 GETTABLEKS                       R17 R8 K29 ["name"]
      111 DUPCLOSURE                       R18 K33 [PROTO_3]
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R12
      114 CAPTURE                          VAL R2
      115 SETTABLE                         R18 R16 R17
      116 GETTABLEKS                       R17 R10 K29 ["name"]
      118 JUMPIFNOT                        R12 ; [+4]
      119 DUPCLOSURE                       R18 K34 [PROTO_4]
      120 CAPTURE                          VAL R3
      121 CAPTURE                          VAL R2
      122 JUMP                             ; [+1]
      123 LOADNIL                          R18
      124 SETTABLE                         R18 R16 R17
      125 CALL                             R14 2 -1
      126 RETURN                           R14 -1
