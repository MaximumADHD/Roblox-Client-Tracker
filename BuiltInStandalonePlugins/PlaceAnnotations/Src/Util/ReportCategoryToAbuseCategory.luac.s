MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Enums"]
       13 GETTABLEKS                       R2 R2 K8 ["ReportCategory"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 16 0
       18 GETTABLEKS                       R3 R1 K9 ["Bullying"]
       20 LOADK                            R4 K10 ["ABUSE_CATEGORY_BULLYING"]
       21 SETTABLE                         R4 R2 R3
       22 GETTABLEKS                       R3 R1 K11 ["Discrimination"]
       24 LOADK                            R4 K12 ["ABUSE_CATEGORY_DISCRIMINATION"]
       25 SETTABLE                         R4 R2 R3
       26 GETTABLEKS                       R3 R1 K13 ["SharingPersonalInformation"]
       28 LOADK                            R4 K14 ["ABUSE_CATEGORY_ASKING_OR_GIVING_PII"]
       29 SETTABLE                         R4 R2 R3
       30 GETTABLEKS                       R3 R1 K15 ["DangerousSuggestions"]
       32 LOADK                            R4 K16 ["ABUSE_CATEGORY_DANGEROUS_ASK"]
       33 SETTABLE                         R4 R2 R3
       34 GETTABLEKS                       R3 R1 K17 ["UnsafeRequests"]
       36 LOADK                            R4 K16 ["ABUSE_CATEGORY_DANGEROUS_ASK"]
       37 SETTABLE                         R4 R2 R3
       38 GETTABLEKS                       R3 R1 K18 ["ThreatsOfViolence"]
       40 LOADK                            R4 K19 ["ABUSE_CATEGORY_VIOLENCE_OR_TERRORISM"]
       41 SETTABLE                         R4 R2 R3
       42 GETTABLEKS                       R3 R1 K20 ["RomanceOrSex"]
       44 LOADK                            R4 K21 ["ABUSE_CATEGORY_DATING_OR_SEXUAL_CONTENT"]
       45 SETTABLE                         R4 R2 R3
       46 GETTABLEKS                       R3 R1 K22 ["IllegalGoodsActivities"]
       48 LOADK                            R4 K23 ["ABUSE_CATEGORY_ILLEGAL_CONTENT"]
       49 SETTABLE                         R4 R2 R3
       50 GETTABLEKS                       R3 R1 K24 ["SuicideSelfHarm"]
       52 LOADK                            R4 K25 ["ABUSE_CATEGORY_SUICIDE_OR_SELF_HARM"]
       53 SETTABLE                         R4 R2 R3
       54 GETIMPORT                        R3 K28 [table.freeze]
       56 MOVE                             R4 R2
       57 CALL                             R3 1 -1
       58 RETURN                           R3 -1
