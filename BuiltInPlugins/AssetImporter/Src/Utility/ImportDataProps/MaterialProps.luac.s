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
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["Properties"]
       15 GETTABLEKS                       R2 R2 K9 ["Types"]
       17 GETTABLEKS                       R2 R2 K10 ["PathProperty"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K5 [require]
       22 GETTABLEKS                       R3 R0 K6 ["Src"]
       24 GETTABLEKS                       R3 R3 K11 ["Flags"]
       26 GETTABLEKS                       R3 R3 K12 ["getEFEnableEmissiveMask"]
       28 CALL                             R2 1 1
       29 DUPCLOSURE                       R3 K13 [PROTO_0]
       30 DUPCLOSURE                       R4 K14 [PROTO_1]
       31 CAPTURE                          VAL R2
       32 NEWTABLE                         R5 0 1
       34 DUPTABLE                         R6 K17 [{["Section"] = "ObjectGeneral", ["Properties"]}]
       35 NEWTABLE                         R7 0 6
       37 DUPTABLE                         R8 K22 [{["Name"] = "ImportName", ["Editable"] = True}]
       38 DUPTABLE                         R9 K27 [{["Name"] = "DiffuseFilePath", ["Editable"] = False, ["AllowPickFile"] = True, ["ComponentFactory"]}]
       39 SETTABLEKS                       R1 R9 K26 ["ComponentFactory"]
       41 DUPTABLE                         R10 K30 [{["Name"] = "NormalFilePath", ["Editable"] = False, ["AllowPickFile"] = True, ["ComponentFactory"], ["ShouldHide"]}]
       42 SETTABLEKS                       R1 R10 K26 ["ComponentFactory"]
       44 SETTABLEKS                       R3 R10 K29 ["ShouldHide"]
       46 DUPTABLE                         R11 K32 [{["Name"] = "MetalnessFilePath", ["Editable"] = False, ["AllowPickFile"] = True, ["ComponentFactory"], ["ShouldHide"]}]
       47 SETTABLEKS                       R1 R11 K26 ["ComponentFactory"]
       49 SETTABLEKS                       R3 R11 K29 ["ShouldHide"]
       51 DUPTABLE                         R12 K34 [{["Name"] = "RoughnessFilePath", ["Editable"] = False, ["AllowPickFile"] = True, ["ComponentFactory"], ["ShouldHide"]}]
       52 SETTABLEKS                       R1 R12 K26 ["ComponentFactory"]
       54 SETTABLEKS                       R3 R12 K29 ["ShouldHide"]
       56 DUPTABLE                         R13 K36 [{["Name"] = "EmissiveFilePath", ["Editable"] = False, ["AllowPickFile"] = True, ["ComponentFactory"], ["ShouldHide"]}]
       57 SETTABLEKS                       R1 R13 K26 ["ComponentFactory"]
       59 SETTABLEKS                       R4 R13 K29 ["ShouldHide"]
       61 SETLIST                          R7 R8 6 [1]
       63 SETTABLEKS                       R7 R6 K8 ["Properties"]
       65 SETLIST                          R5 R6 1 [1]
       67 RETURN                           R5 1
