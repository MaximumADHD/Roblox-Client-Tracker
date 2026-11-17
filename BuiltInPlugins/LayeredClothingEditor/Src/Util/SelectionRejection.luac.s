PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["PREVIEW_FOLDER_NAME"]
        3 NAMECALL                         R2 R0 K1 ["FindFirstAncestor"]
        5 CALL                             R2 2 1
        6 JUMPIFEQKNIL                     R2 ; [+3]
        8 LOADB                            R2 1
        9 RETURN                           R2 1
       10 JUMPIF                           R1 ; [+2]
       11 LOADB                            R2 0
       12 RETURN                           R2 1
       13 LOADB                            R2 1
       14 JUMPIFEQ                         R0 R1 ; [+17]
       16 LOADB                            R2 1
       17 GETTABLEKS                       R3 R1 K2 ["Parent"]
       19 JUMPIFEQ                         R0 R3 ; [+12]
       21 LOADB                            R2 1
       22 GETTABLEKS                       R3 R0 K2 ["Parent"]
       24 GETTABLEKS                       R4 R1 K2 ["Parent"]
       26 JUMPIFEQ                         R3 R4 ; [+5]
       28 MOVE                             R4 R1
       29 NAMECALL                         R2 R0 K3 ["IsDescendantOf"]
       31 CALL                             R2 2 1
       32 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getHandle"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 LOADB                            R2 0
        6 JUMPIFEQKNIL                     R1 ; [+14]
        8 LOADK                            R4 K1 ["MeshPart"]
        9 NAMECALL                         R2 R1 K2 ["IsA"]
       11 CALL                             R2 2 1
       12 JUMPIFNOT                        R2 ; [+8]
       13 LOADK                            R5 K3 ["WrapTarget"]
       14 NAMECALL                         R3 R1 K4 ["FindFirstChildWhichIsA"]
       16 CALL                             R3 2 1
       17 JUMPIFNOTEQKNIL                  R3 ; [+2]
       19 LOADB                            R2 0 +1
       20 LOADB                            R2 1
       21 RETURN                           R2 1

PROTO_2:
        0 JUMPIF                           R0 ; [+6]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["Reason"]
        4 GETTABLEKS                       R2 R2 K1 ["UnsupportedType"]
        6 RETURN                           R2 1
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R5 R5 K2 ["PREVIEW_FOLDER_NAME"]
       10 NAMECALL                         R3 R0 K3 ["FindFirstAncestor"]
       12 CALL                             R3 2 1
       13 JUMPIFEQKNIL                     R3 ; [+3]
       15 LOADB                            R2 1
       16 JUMP                             ; [+22]
       17 JUMPIF                           R1 ; [+2]
       18 LOADB                            R2 0
       19 JUMP                             ; [+19]
       20 LOADB                            R2 1
       21 JUMPIFEQ                         R0 R1 ; [+17]
       23 LOADB                            R2 1
       24 GETTABLEKS                       R3 R1 K4 ["Parent"]
       26 JUMPIFEQ                         R0 R3 ; [+12]
       28 LOADB                            R2 1
       29 GETTABLEKS                       R3 R0 K4 ["Parent"]
       31 GETTABLEKS                       R4 R1 K4 ["Parent"]
       33 JUMPIFEQ                         R3 R4 ; [+5]
       35 MOVE                             R4 R1
       36 NAMECALL                         R2 R0 K5 ["IsDescendantOf"]
       38 CALL                             R2 2 1
       39 JUMPIFNOT                        R2 ; [+6]
       40 GETUPVAL                         R2 0
       41 GETTABLEKS                       R2 R2 K0 ["Reason"]
       43 GETTABLEKS                       R2 R2 K6 ["ToolItem"]
       45 RETURN                           R2 1
       46 LOADK                            R4 K7 ["Workspace"]
       47 NAMECALL                         R2 R0 K8 ["FindFirstAncestorOfClass"]
       49 CALL                             R2 2 1
       50 JUMPIFNOTEQKNIL                  R2 ; [+7]
       52 GETUPVAL                         R2 0
       53 GETTABLEKS                       R2 R2 K0 ["Reason"]
       55 GETTABLEKS                       R2 R2 K9 ["NotInWorkspace"]
       57 RETURN                           R2 1
       58 GETUPVAL                         R2 2
       59 GETTABLEKS                       R2 R2 K10 ["isAvatar"]
       61 MOVE                             R3 R0
       62 CALL                             R2 1 1
       63 JUMPIFNOT                        R2 ; [+6]
       64 GETUPVAL                         R2 0
       65 GETTABLEKS                       R2 R2 K0 ["Reason"]
       67 GETTABLEKS                       R2 R2 K11 ["Character"]
       69 RETURN                           R2 1
       70 GETUPVAL                         R2 2
       71 GETTABLEKS                       R2 R2 K12 ["isMeshPartAccessory"]
       73 MOVE                             R3 R0
       74 CALL                             R2 1 1
       75 JUMPIF                           R2 ; [+12]
       76 GETUPVAL                         R2 2
       77 GETTABLEKS                       R2 R2 K13 ["isLegacyAccessory"]
       79 MOVE                             R3 R0
       80 CALL                             R2 1 1
       81 JUMPIF                           R2 ; [+6]
       82 GETUPVAL                         R2 0
       83 GETTABLEKS                       R2 R2 K0 ["Reason"]
       85 GETTABLEKS                       R2 R2 K1 ["UnsupportedType"]
       87 RETURN                           R2 1
       88 GETUPVAL                         R3 2
       89 GETTABLEKS                       R3 R3 K14 ["getHandle"]
       91 MOVE                             R4 R0
       92 CALL                             R3 1 1
       93 LOADB                            R2 0
       94 JUMPIFEQKNIL                     R3 ; [+15]
       96 LOADK                            R6 K15 ["MeshPart"]
       97 NAMECALL                         R4 R3 K16 ["IsA"]
       99 CALL                             R4 2 1
      100 MOVE                             R2 R4
      101 JUMPIFNOT                        R2 ; [+8]
      102 LOADK                            R6 K17 ["WrapTarget"]
      103 NAMECALL                         R4 R3 K18 ["FindFirstChildWhichIsA"]
      105 CALL                             R4 2 1
      106 JUMPIFNOTEQKNIL                  R4 ; [+2]
      108 LOADB                            R2 0 +1
      109 LOADB                            R2 1
      110 JUMPIFNOT                        R2 ; [+6]
      111 GETUPVAL                         R2 0
      112 GETTABLEKS                       R2 R2 K0 ["Reason"]
      114 GETTABLEKS                       R2 R2 K19 ["BodyPart"]
      116 RETURN                           R2 1
      117 GETUPVAL                         R2 2
      118 GETTABLEKS                       R2 R2 K20 ["hasInvalidCage"]
      120 MOVE                             R3 R0
      121 CALL                             R2 1 1
      122 JUMPIFNOT                        R2 ; [+6]
      123 GETUPVAL                         R2 0
      124 GETTABLEKS                       R2 R2 K0 ["Reason"]
      126 GETTABLEKS                       R2 R2 K21 ["MissingCageMesh"]
      128 RETURN                           R2 1
      129 LOADNIL                          R2
      130 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["AvatarToolsShared"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["Util"]
       18 GETTABLEKS                       R2 R2 K8 ["AccessoryAndBodyToolShared"]
       20 GETTABLEKS                       R2 R2 K9 ["ItemCharacteristics"]
       22 GETIMPORT                        R3 K4 [require]
       24 GETTABLEKS                       R4 R0 K10 ["Src"]
       26 GETTABLEKS                       R4 R4 K7 ["Util"]
       28 GETTABLEKS                       R4 R4 K11 ["Constants"]
       30 CALL                             R3 1 1
       31 NEWTABLE                         R4 2 0
       33 DUPTABLE                         R5 K24 [{["ToolItem"] = "RejectToolItem", ["NotInWorkspace"] = "RejectNotInWorkspace", ["Character"] = "RejectCharacter", ["UnsupportedType"] = "RejectUnsupportedType", ["BodyPart"] = "RejectBodyPart", ["MissingCageMesh"] = "RejectMissingCageMesh"}]
       34 SETTABLEKS                       R5 R4 K25 ["Reason"]
       36 DUPCLOSURE                       R5 K26 [PROTO_0]
       37 CAPTURE                          VAL R3
       38 DUPCLOSURE                       R6 K27 [PROTO_1]
       39 CAPTURE                          VAL R2
       40 DUPCLOSURE                       R7 K28 [PROTO_2]
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R2
       44 SETTABLEKS                       R7 R4 K29 ["getReason"]
       46 RETURN                           R4 1
