PROTO_0:
        0 LOADK                            R4 K0 ["Handle"]
        1 NAMECALL                         R2 R0 K1 ["FindFirstChild"]
        3 CALL                             R2 2 1
        4 LOADK                            R5 K2 ["WrapLayer"]
        5 NAMECALL                         R3 R2 K3 ["FindFirstChildOfClass"]
        7 CALL                             R3 2 1
        8 NEWTABLE                         R4 0 0
       10 NEWTABLE                         R5 0 0
       12 JUMPIF                           R3 ; [+8]
       13 LOADB                            R6 0
       14 NEWTABLE                         R7 0 1
       16 LOADK                            R8 K4 ["Missing wraplayer"]
       17 SETLIST                          R7 R8 1 [1]
       19 LOADNIL                          R8
       20 RETURN                           R6 3
       21 NEWTABLE                         R6 0 2
       23 GETTABLEKS                       R7 R3 K5 ["ReferenceMeshId"]
       25 GETTABLEKS                       R8 R3 K6 ["CageMeshId"]
       27 SETLIST                          R6 R7 2 [1]
       29 GETUPVAL                         R7 0
       30 LOADNIL                          R8
       31 LOADNIL                          R9
       32 FORGPREP                         R7
       33 DUPTABLE                         R12 K11 [{"fullName", "fieldName", "contentId", "context"}]
       34 GETIMPORT                        R13 K14 [string.format]
       36 LOADK                            R14 K15 ["%s %s"]
       37 NAMECALL                         R15 R3 K16 ["GetFullName"]
       39 CALL                             R15 1 1
       40 GETUPVAL                         R17 1
       41 GETTABLE                         R16 R17 R10
       42 CALL                             R13 3 1
       43 SETTABLEKS                       R13 R12 K7 ["fullName"]
       45 SETTABLEKS                       R11 R12 K8 ["fieldName"]
       47 GETTABLE                         R13 R6 R10
       48 SETTABLEKS                       R13 R12 K9 ["contentId"]
       50 GETTABLEKS                       R13 R0 K17 ["Name"]
       52 SETTABLEKS                       R13 R12 K10 ["context"]
       54 GETTABLEKS                       R14 R12 K9 ["contentId"]
       56 JUMPIFEQKS                       R14 K18 [""] ; [+6]
       58 LOADB                            R13 1
       59 GETTABLEKS                       R14 R12 K9 ["contentId"]
       61 JUMPIFNOTEQKNIL                  R14 ; [+3]
       63 GETTABLEKS                       R13 R1 K19 ["allowEditableInstances"]
       65 JUMPIF                           R13 ; [+23]
       66 GETUPVAL                         R14 2
       67 GETTABLEKS                       R14 R14 K20 ["reportFailure"]
       69 GETUPVAL                         R16 3
       70 GETTABLE                         R15 R16 R10
       71 LOADNIL                          R16
       72 MOVE                             R17 R1
       73 CALL                             R14 3 0
       74 MOVE                             R15 R5
       75 GETIMPORT                        R16 K14 [string.format]
       77 LOADK                            R17 K21 ["Missing %s (i.e. invalid %s) on layered clothing accessory '%s'. Make sure you are using a valid meshId and try again.\n"]
       78 GETUPVAL                         R19 1
       79 GETTABLE                         R18 R19 R10
       80 MOVE                             R19 R11
       81 GETTABLEKS                       R20 R0 K17 ["Name"]
       83 CALL                             R16 4 -1
       84 FASTCALL                         TABLE_INSERT ; [+2]
       85 GETIMPORT                        R14 K24 [table.insert]
       87 CALL                             R14 -1 0
       88 JUMP                             ; [+29]
       89 GETUPVAL                         R14 4
       90 MOVE                             R15 R3
       91 MOVE                             R16 R11
       92 MOVE                             R17 R1
       93 CALL                             R14 3 2
       94 JUMPIF                           R14 ; [+14]
       95 MOVE                             R17 R5
       96 GETIMPORT                        R18 K14 [string.format]
       98 LOADK                            R19 K25 ["Failed to %s for layered clothing accessory '%s'. Make sure mesh exists and try again."]
       99 GETUPVAL                         R21 1
      100 GETTABLE                         R20 R21 R10
      101 GETTABLEKS                       R21 R0 K17 ["Name"]
      103 CALL                             R18 3 -1
      104 FASTCALL                         TABLE_INSERT ; [+2]
      105 GETIMPORT                        R16 K24 [table.insert]
      107 CALL                             R16 -1 0
      108 JUMP                             ; [+9]
      109 SETTABLEKS                       R15 R12 K26 ["editableMesh"]
      111 FASTCALL2                        TABLE_INSERT R4 R12 ; [+5]
      113 MOVE                             R17 R4
      114 MOVE                             R18 R12
      115 GETIMPORT                        R16 K24 [table.insert]
      117 CALL                             R16 2 0
      118 FORGLOOP                         R7 2 ; [-86]
      120 LENGTH                           R7 R5
      121 LOADN                            R8 0
      122 JUMPIFNOTLT                      R8 R7 ; [+5]
      124 LOADB                            R7 0
      125 MOVE                             R8 R5
      126 LOADNIL                          R9
      127 RETURN                           R7 3
      128 LOADB                            R7 1
      129 LOADNIL                          R8
      130 MOVE                             R9 R4
      131 RETURN                           R7 3

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R2 K6 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K7 ["Analytics"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R4 R0 K5 ["util"]
       23 GETTABLEKS                       R4 R4 K8 ["getEditableMeshFromContext"]
       25 CALL                             R3 1 1
       26 NEWTABLE                         R4 0 2
       28 LOADK                            R5 K9 ["InnerCage"]
       29 LOADK                            R6 K10 ["OuterCage"]
       30 SETLIST                          R4 R5 2 [1]
       32 NEWTABLE                         R5 0 2
       34 LOADK                            R6 K11 ["ReferenceMeshId"]
       35 LOADK                            R7 K12 ["CageMeshId"]
       36 SETLIST                          R5 R6 2 [1]
       38 NEWTABLE                         R6 0 2
       40 GETTABLEKS                       R7 R2 K13 ["ErrorType"]
       42 GETTABLEKS                       R7 R7 K14 ["validateLayeredClothingAccessory_NoInnerCageId"]
       44 GETTABLEKS                       R8 R2 K13 ["ErrorType"]
       46 GETTABLEKS                       R8 R8 K15 ["validateLayeredClothingAccessory_NoOuterCageId"]
       48 SETLIST                          R6 R7 2 [1]
       50 DUPCLOSURE                       R7 K16 [PROTO_0]
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R3
       56 RETURN                           R7 1
