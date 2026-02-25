PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R4 R2 K1 ["Settings"]
        5 GETTABLEKS                       R3 R4 K2 ["Current"]
        7 GETUPVAL                         R5 0
        8 CALL                             R5 0 1
        9 GETUPVAL                         R6 1
       10 GETTABLE                         R4 R5 R6
       11 JUMPIF                           R4 ; [+7]
       12 GETTABLEKS                       R5 R1 K3 ["localizationPageController"]
       14 GETUPVAL                         R8 1
       15 NAMECALL                         R6 R5 K4 ["getAutoTranslationTargetLanguages"]
       17 CALL                             R6 2 1
       18 MOVE                             R4 R6
       19 GETUPVAL                         R7 2
       20 GETTABLEKS                       R6 R7 K5 ["Dictionary"]
       22 GETTABLEKS                       R5 R6 K6 ["join"]
       24 MOVE                             R6 R3
       25 DUPTABLE                         R7 K8 [{"AutoTranslationTargetLanguages"}]
       26 SETTABLEKS                       R4 R7 K7 ["AutoTranslationTargetLanguages"]
       28 CALL                             R5 2 1
       29 MOVE                             R3 R5
       30 GETUPVAL                         R7 3
       31 MOVE                             R8 R3
       32 CALL                             R7 1 -1
       33 NAMECALL                         R5 R0 K9 ["dispatch"]
       35 CALL                             R5 -1 0
       36 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Cryo"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R3 K4 [require]
       20 GETTABLEKS                       R6 R0 K7 ["Src"]
       22 GETTABLEKS                       R5 R6 K8 ["Util"]
       24 GETTABLEKS                       R4 R5 K9 ["GameSettingsUtilities"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R2 R3 K10 ["getAutoTranslatedLanguages"]
       29 GETIMPORT                        R3 K4 [require]
       31 GETTABLEKS                       R6 R0 K7 ["Src"]
       33 GETTABLEKS                       R5 R6 K11 ["Actions"]
       35 GETTABLEKS                       R4 R5 K12 ["SetCurrentSettings"]
       37 CALL                             R3 1 1
       38 DUPCLOSURE                       R4 K13 [PROTO_1]
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R3
       42 RETURN                           R4 1
