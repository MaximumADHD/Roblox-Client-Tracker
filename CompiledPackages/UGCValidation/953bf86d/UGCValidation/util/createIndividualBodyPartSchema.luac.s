PROTO_0:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["ASSET_TYPE_INFO"]
        3 GETTABLE                         R3 R4 R0
        4 GETTABLEKS                       R5 R3 K1 ["subParts"]
        6 GETTABLE                         R4 R5 R1
        7 DUPTABLE                         R5 K5 [{"ClassName", "Name", "_children"}]
        8 LOADK                            R6 K6 ["MeshPart"]
        9 SETTABLEKS                       R6 R5 K2 ["ClassName"]
       11 NEWTABLE                         R6 0 1
       13 MOVE                             R7 R1
       14 SETLIST                          R6 R7 1 [1]
       16 SETTABLEKS                       R6 R5 K3 ["Name"]
       18 NEWTABLE                         R6 0 3
       20 DUPTABLE                         R7 K7 [{"Name", "ClassName"}]
       21 NEWTABLE                         R8 0 1
       23 LOADK                            R9 K8 ["AvatarPartScaleType"]
       24 SETLIST                          R8 R9 1 [1]
       26 SETTABLEKS                       R8 R7 K3 ["Name"]
       28 LOADK                            R8 K9 ["StringValue"]
       29 SETTABLEKS                       R8 R7 K2 ["ClassName"]
       31 DUPTABLE                         R8 K7 [{"Name", "ClassName"}]
       32 NEWTABLE                         R9 0 3
       34 MOVE                             R10 R1
       35 MOVE                             R12 R1
       36 LOADK                            R13 K10 ["WrapTarget"]
       37 CONCAT                           R11 R12 R13
       38 LOADK                            R12 K10 ["WrapTarget"]
       39 SETLIST                          R9 R10 3 [1]
       41 SETTABLEKS                       R9 R8 K3 ["Name"]
       43 LOADK                            R9 K10 ["WrapTarget"]
       44 SETTABLEKS                       R9 R8 K2 ["ClassName"]
       46 DUPTABLE                         R9 K12 [{"Name", "ClassName", "_optional"}]
       47 NEWTABLE                         R10 0 1
       49 LOADK                            R11 K13 ["SurfaceAppearance"]
       50 SETLIST                          R10 R11 1 [1]
       52 SETTABLEKS                       R10 R9 K3 ["Name"]
       54 LOADK                            R10 K13 ["SurfaceAppearance"]
       55 SETTABLEKS                       R10 R9 K2 ["ClassName"]
       57 LOADB                            R10 1
       58 SETTABLEKS                       R10 R9 K11 ["_optional"]
       60 SETLIST                          R6 R7 3 [1]
       62 SETTABLEKS                       R6 R5 K4 ["_children"]
       64 GETTABLEKS                       R7 R5 K4 ["_children"]
       66 DUPTABLE                         R8 K7 [{"Name", "ClassName"}]
       67 NEWTABLE                         R9 0 1
       69 GETTABLEKS                       R11 R4 K14 ["rigAttachmentToParent"]
       71 GETTABLEKS                       R10 R11 K15 ["name"]
       73 SETLIST                          R9 R10 1 [1]
       75 SETTABLEKS                       R9 R8 K3 ["Name"]
       77 LOADK                            R9 K16 ["Attachment"]
       78 SETTABLEKS                       R9 R8 K2 ["ClassName"]
       80 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
       82 GETIMPORT                        R6 K19 [table.insert]
       84 CALL                             R6 2 0
       85 GETIMPORT                        R6 K21 [pairs]
       87 GETTABLEKS                       R7 R4 K22 ["otherAttachments"]
       89 CALL                             R6 1 3
       90 FORGPREP_NEXT                    R6
       91 GETTABLEKS                       R12 R5 K4 ["_children"]
       93 DUPTABLE                         R13 K7 [{"Name", "ClassName"}]
       94 NEWTABLE                         R14 0 1
       96 MOVE                             R15 R9
       97 SETLIST                          R14 R15 1 [1]
       99 SETTABLEKS                       R14 R13 K3 ["Name"]
      101 LOADK                            R14 K16 ["Attachment"]
      102 SETTABLEKS                       R14 R13 K2 ["ClassName"]
      104 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      106 GETIMPORT                        R11 K19 [table.insert]
      108 CALL                             R11 2 0
      109 FORGLOOP                         R6 1 ; [-19]
      111 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R3 K6 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K7 ["Constants"]
       18 CALL                             R2 1 1
       19 DUPCLOSURE                       R3 K8 [PROTO_0]
       20 CAPTURE                          VAL R2
       21 RETURN                           R3 1
