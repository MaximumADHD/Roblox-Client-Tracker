MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Enums"]
       13 GETTABLEKS                       R2 R2 K8 ["AnnotationRequestType"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Enums"]
       22 GETTABLEKS                       R3 R3 K9 ["AnnotationRequestStatus"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K7 ["Enums"]
       31 GETTABLEKS                       R4 R4 K10 ["UIRequestStatus"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K7 ["Enums"]
       40 GETTABLEKS                       R5 R5 K11 ["AnnotationEditingMode"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Src"]
       47 GETTABLEKS                       R6 R6 K7 ["Enums"]
       49 GETTABLEKS                       R6 R6 K12 ["PlaceContentPreference"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K6 ["Src"]
       56 GETTABLEKS                       R7 R7 K7 ["Enums"]
       58 GETTABLEKS                       R7 R7 K13 ["AnnotationPlaceContentPreference"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K6 ["Src"]
       65 GETTABLEKS                       R8 R8 K7 ["Enums"]
       67 GETTABLEKS                       R8 R8 K14 ["AnnotationChannelContentPreference"]
       69 CALL                             R7 1 1
       70 NEWTABLE                         R8 0 0
       72 RETURN                           R8 1
