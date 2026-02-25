PROTO_0:
        0 GETIMPORT                        R2 K1 [game]
        2 GETTABLEKS                       R1 R2 K2 ["CoreGui"]
        4 LOADK                            R3 K3 ["PlaceAnnotations"]
        5 NAMECALL                         R1 R1 K4 ["FindFirstChild"]
        7 CALL                             R1 2 1
        8 JUMPIF                           R1 ; [+13]
        9 GETIMPORT                        R1 K7 [Instance.new]
       11 LOADK                            R2 K8 ["Folder"]
       12 CALL                             R1 1 1
       13 LOADK                            R2 K3 ["PlaceAnnotations"]
       14 SETTABLEKS                       R2 R1 K9 ["Name"]
       16 GETIMPORT                        R3 K1 [game]
       18 GETTABLEKS                       R2 R3 K2 ["CoreGui"]
       20 SETTABLEKS                       R2 R1 K10 ["Parent"]
       22 GETIMPORT                        R1 K7 [Instance.new]
       24 LOADK                            R2 K11 ["Part"]
       25 CALL                             R1 1 1
       26 GETIMPORT                        R3 K1 [game]
       28 GETTABLEKS                       R2 R3 K12 ["Workspace"]
       30 SETTABLEKS                       R2 R1 K10 ["Parent"]
       32 GETIMPORT                        R2 K7 [Instance.new]
       34 LOADK                            R3 K13 ["WorkspaceAnnotation"]
       35 CALL                             R2 1 1
       36 NAMECALL                         R3 R2 K14 ["GetStringUniqueId"]
       38 CALL                             R3 1 1
       39 SETTABLEKS                       R3 R2 K9 ["Name"]
       41 LOADK                            R3 K15 [123456789]
       42 SETTABLEKS                       R3 R2 K16 ["AuthorId"]
       44 GETIMPORT                        R4 K19 [DateTime.now]
       46 CALL                             R4 0 1
       47 GETTABLEKS                       R3 R4 K20 ["UnixTimestamp"]
       49 SETTABLEKS                       R3 R2 K21 ["CreationTimeUnix"]
       51 GETTABLEKS                       R3 R2 K21 ["CreationTimeUnix"]
       53 SETTABLEKS                       R3 R2 K22 ["LastModifiedTimeUnix"]
       55 SETTABLEKS                       R1 R2 K23 ["Adornee"]
       57 LOADK                            R3 K24 [""]
       58 SETTABLEKS                       R3 R2 K25 ["TaggedUsers"]
       60 LOADK                            R3 K26 ["TestChannel"]
       61 SETTABLEKS                       R3 R2 K27 ["ChannelId"]
       63 JUMPIFNOT                        R0 ; [+2]
       64 SETTABLEKS                       R0 R2 K28 ["Contents"]
       66 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
