PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["IsPbr"]
        2 NOT                              R1 R2
        3 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["IsPbr"]
        2 NOT                              R1 R2
        3 JUMPIF                           R1 ; [+3]
        4 GETUPVAL                         R2 0
        5 CALL                             R2 0 1
        6 NOT                              R1 R2
        7 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R6 R0 K6 ["Src"]
       11 GETTABLEKS                       R5 R6 K7 ["Components"]
       13 GETTABLEKS                       R4 R5 K8 ["Properties"]
       15 GETTABLEKS                       R3 R4 K9 ["Types"]
       17 GETTABLEKS                       R2 R3 K10 ["PathProperty"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K5 [require]
       22 GETTABLEKS                       R5 R0 K6 ["Src"]
       24 GETTABLEKS                       R4 R5 K11 ["Flags"]
       26 GETTABLEKS                       R3 R4 K12 ["getEFEnableEmissiveMask"]
       28 CALL                             R2 1 1
       29 DUPCLOSURE                       R3 K13 [PROTO_0]
       30 DUPCLOSURE                       R4 K14 [PROTO_1]
       31 CAPTURE                          VAL R2
       32 NEWTABLE                         R5 0 1
       34 DUPTABLE                         R6 K16 [{"Section", "Properties"}]
       35 LOADK                            R7 K17 ["ObjectGeneral"]
       36 SETTABLEKS                       R7 R6 K15 ["Section"]
       38 NEWTABLE                         R7 0 6
       40 DUPTABLE                         R8 K20 [{"Name", "Editable"}]
       41 LOADK                            R9 K21 ["ImportName"]
       42 SETTABLEKS                       R9 R8 K18 ["Name"]
       44 LOADB                            R9 1
       45 SETTABLEKS                       R9 R8 K19 ["Editable"]
       47 DUPTABLE                         R9 K24 [{"Name", "Editable", "AllowPickFile", "ComponentFactory"}]
       48 LOADK                            R10 K25 ["DiffuseFilePath"]
       49 SETTABLEKS                       R10 R9 K18 ["Name"]
       51 LOADB                            R10 0
       52 SETTABLEKS                       R10 R9 K19 ["Editable"]
       54 LOADB                            R10 1
       55 SETTABLEKS                       R10 R9 K22 ["AllowPickFile"]
       57 SETTABLEKS                       R1 R9 K23 ["ComponentFactory"]
       59 DUPTABLE                         R10 K27 [{"Name", "Editable", "AllowPickFile", "ComponentFactory", "ShouldHide"}]
       60 LOADK                            R11 K28 ["NormalFilePath"]
       61 SETTABLEKS                       R11 R10 K18 ["Name"]
       63 LOADB                            R11 0
       64 SETTABLEKS                       R11 R10 K19 ["Editable"]
       66 LOADB                            R11 1
       67 SETTABLEKS                       R11 R10 K22 ["AllowPickFile"]
       69 SETTABLEKS                       R1 R10 K23 ["ComponentFactory"]
       71 SETTABLEKS                       R3 R10 K26 ["ShouldHide"]
       73 DUPTABLE                         R11 K27 [{"Name", "Editable", "AllowPickFile", "ComponentFactory", "ShouldHide"}]
       74 LOADK                            R12 K29 ["MetalnessFilePath"]
       75 SETTABLEKS                       R12 R11 K18 ["Name"]
       77 LOADB                            R12 0
       78 SETTABLEKS                       R12 R11 K19 ["Editable"]
       80 LOADB                            R12 1
       81 SETTABLEKS                       R12 R11 K22 ["AllowPickFile"]
       83 SETTABLEKS                       R1 R11 K23 ["ComponentFactory"]
       85 SETTABLEKS                       R3 R11 K26 ["ShouldHide"]
       87 DUPTABLE                         R12 K27 [{"Name", "Editable", "AllowPickFile", "ComponentFactory", "ShouldHide"}]
       88 LOADK                            R13 K30 ["RoughnessFilePath"]
       89 SETTABLEKS                       R13 R12 K18 ["Name"]
       91 LOADB                            R13 0
       92 SETTABLEKS                       R13 R12 K19 ["Editable"]
       94 LOADB                            R13 1
       95 SETTABLEKS                       R13 R12 K22 ["AllowPickFile"]
       97 SETTABLEKS                       R1 R12 K23 ["ComponentFactory"]
       99 SETTABLEKS                       R3 R12 K26 ["ShouldHide"]
      101 DUPTABLE                         R13 K27 [{"Name", "Editable", "AllowPickFile", "ComponentFactory", "ShouldHide"}]
      102 LOADK                            R14 K31 ["EmissiveFilePath"]
      103 SETTABLEKS                       R14 R13 K18 ["Name"]
      105 LOADB                            R14 0
      106 SETTABLEKS                       R14 R13 K19 ["Editable"]
      108 LOADB                            R14 1
      109 SETTABLEKS                       R14 R13 K22 ["AllowPickFile"]
      111 SETTABLEKS                       R1 R13 K23 ["ComponentFactory"]
      113 SETTABLEKS                       R4 R13 K26 ["ShouldHide"]
      115 SETLIST                          R7 R8 6 [1]
      117 SETTABLEKS                       R7 R6 K8 ["Properties"]
      119 SETLIST                          R5 R6 1 [1]
      121 RETURN                           R5 1
