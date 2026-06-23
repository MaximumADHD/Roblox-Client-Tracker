PROTO_0:
        0 FASTCALL2K                       RAWGET R0 K0 ; [+5]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K0 ["focus"]
        4 GETIMPORT                        R1 K2 [rawget]
        6 CALL                             R1 2 1
        7 JUMPIFNOT                        R1 ; [+1]
        8 RETURN                           R0 1
        9 LOADNIL                          R1
       10 RETURN                           R1 1

PROTO_1:
        0 FASTCALL2K                       RAWGET R0 K0 ; [+5]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K0 ["widget"]
        4 GETIMPORT                        R1 K2 [rawget]
        6 CALL                             R1 2 1
        7 JUMPIFNOT                        R1 ; [+1]
        8 RETURN                           R0 1
        9 LOADNIL                          R1
       10 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R2 K7 ["Device"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Providers"]
       18 GETTABLEKS                       R3 R3 K9 ["Preferences"]
       20 GETTABLEKS                       R3 R3 K10 ["PreferencesProvider"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Enums"]
       27 GETTABLEKS                       R4 R4 K11 ["Theme"]
       29 CALL                             R3 1 1
       30 NEWTABLE                         R4 2 0
       32 DUPCLOSURE                       R5 K12 [PROTO_0]
       33 SETTABLEKS                       R5 R4 K13 ["toDeveloperStorybookStoryProps"]
       35 DUPCLOSURE                       R5 K14 [PROTO_1]
       36 SETTABLEKS                       R5 R4 K15 ["toFlipbookStoryProps"]
       38 RETURN                           R4 1
