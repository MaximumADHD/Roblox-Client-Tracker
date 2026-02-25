PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R4 R5 K0 ["None"]
        4 CALL                             R3 1 -1
        5 NAMECALL                         R1 R0 K1 ["dispatch"]
        7 CALL                             R1 -1 0
        8 GETUPVAL                         R3 2
        9 DUPTABLE                         R4 K4 [{"ItemCFrame", "AttachmentCFrame"}]
       10 GETIMPORT                        R5 K7 [CFrame.new]
       12 CALL                             R5 0 1
       13 SETTABLEKS                       R5 R4 K2 ["ItemCFrame"]
       15 GETIMPORT                        R5 K7 [CFrame.new]
       17 CALL                             R5 0 1
       18 SETTABLEKS                       R5 R4 K3 ["AttachmentCFrame"]
       20 CALL                             R3 1 -1
       21 NAMECALL                         R1 R0 K1 ["dispatch"]
       23 CALL                             R1 -1 0
       24 GETUPVAL                         R1 3
       25 NEWTABLE                         R3 0 0
       27 NAMECALL                         R1 R1 K8 ["Set"]
       29 CALL                             R1 2 0
       30 GETUPVAL                         R3 4
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R4 R5 K0 ["None"]
       34 CALL                             R3 1 -1
       35 NAMECALL                         R1 R0 K1 ["dispatch"]
       37 CALL                             R1 -1 0
       38 GETUPVAL                         R3 5
       39 GETUPVAL                         R6 6
       40 GETTABLEKS                       R5 R6 K9 ["TABS_KEYS"]
       42 GETTABLEKS                       R4 R5 K0 ["None"]
       44 CALL                             R3 1 -1
       45 NAMECALL                         R1 R0 K1 ["dispatch"]
       47 CALL                             R1 -1 0
       48 GETUPVAL                         R3 7
       49 GETUPVAL                         R6 8
       50 GETTABLEKS                       R5 R6 K10 ["TOOL_MODE"]
       52 GETTABLEKS                       R4 R5 K0 ["None"]
       54 CALL                             R3 1 -1
       55 NAMECALL                         R1 R0 K1 ["dispatch"]
       57 CALL                             R1 -1 0
       58 GETUPVAL                         R1 9
       59 LOADB                            R3 1
       60 NAMECALL                         R1 R1 K11 ["SetEnabled"]
       62 CALL                             R1 2 0
       63 RETURN                           R0 0

PROTO_1:
        0 DUPCLOSURE                       R0 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 CAPTURE                          UPVAL U7
        9 CAPTURE                          UPVAL U8
       10 CAPTURE                          UPVAL U9
       11 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Cryo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["AvatarToolsShared"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R4 R2 K8 ["Util"]
       25 GETTABLEKS                       R3 R4 K9 ["AccessoryAndBodyToolShared"]
       27 GETTABLEKS                       R4 R3 K10 ["PreviewConstants"]
       29 GETIMPORT                        R5 K4 [require]
       31 GETTABLEKS                       R8 R0 K11 ["Src"]
       33 GETTABLEKS                       R7 R8 K12 ["Actions"]
       35 GETTABLEKS                       R6 R7 K13 ["SetAccessoryTypeInfo"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K4 [require]
       40 GETTABLEKS                       R9 R0 K11 ["Src"]
       42 GETTABLEKS                       R8 R9 K12 ["Actions"]
       44 GETTABLEKS                       R7 R8 K14 ["SetAttachmentPoint"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K4 [require]
       49 GETTABLEKS                       R10 R0 K11 ["Src"]
       51 GETTABLEKS                       R9 R10 K12 ["Actions"]
       53 GETTABLEKS                       R8 R9 K15 ["SelectPreviewTab"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K4 [require]
       58 GETTABLEKS                       R11 R0 K11 ["Src"]
       60 GETTABLEKS                       R10 R11 K12 ["Actions"]
       62 GETTABLEKS                       R9 R10 K16 ["SetToolMode"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K4 [require]
       67 GETTABLEKS                       R12 R0 K11 ["Src"]
       69 GETTABLEKS                       R11 R12 K12 ["Actions"]
       71 GETTABLEKS                       R10 R11 K17 ["SetEditingCage"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K4 [require]
       76 GETTABLEKS                       R13 R0 K11 ["Src"]
       78 GETTABLEKS                       R12 R13 K8 ["Util"]
       80 GETTABLEKS                       R11 R12 K18 ["Constants"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K20 [game]
       85 LOADK                            R13 K21 ["Selection"]
       86 NAMECALL                         R11 R11 K22 ["GetService"]
       88 CALL                             R11 2 1
       89 GETIMPORT                        R12 K20 [game]
       91 LOADK                            R14 K23 ["ChangeHistoryService"]
       92 NAMECALL                         R12 R12 K22 ["GetService"]
       94 CALL                             R12 2 1
       95 DUPCLOSURE                       R13 K24 [PROTO_1]
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R10
      105 CAPTURE                          VAL R12
      106 RETURN                           R13 1
