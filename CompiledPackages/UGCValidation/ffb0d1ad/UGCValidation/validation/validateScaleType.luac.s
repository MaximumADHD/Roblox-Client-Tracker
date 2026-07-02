PROTO_0:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R2 1
        2 RETURN                           R2 1
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["AvatarPartScaleTypes"]
        6 GETTABLEKS                       R4 R0 K1 ["Value"]
        8 GETTABLE                         R2 R3 R4
        9 JUMPIF                           R2 ; [+31]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K2 ["reportFailure"]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K3 ["ErrorType"]
       16 GETTABLEKS                       R3 R3 K4 ["validateScaleType_InvalidAvatarPartScaleType"]
       18 LOADNIL                          R4
       19 MOVE                             R5 R1
       20 CALL                             R2 3 0
       21 GETTABLEKS                       R3 R0 K5 ["Parent"]
       23 FASTCALL1                        ASSERT R3 ; [+2]
       24 GETIMPORT                        R2 K7 [assert]
       26 CALL                             R2 1 0
       27 LOADB                            R2 0
       28 NEWTABLE                         R3 0 1
       30 GETIMPORT                        R4 K10 [string.format]
       32 LOADK                            R5 K11 ["The AvatarPartScaleType value in '%s' is invalid. Please, verify the value you are using is either Classic, ProportionsSlender, or ProportionsNormal."]
       33 GETTABLEKS                       R6 R0 K5 ["Parent"]
       35 GETTABLEKS                       R6 R6 K12 ["Name"]
       37 CALL                             R4 2 -1
       38 SETLIST                          R3 R4 -1 [1]
       40 RETURN                           R2 2
       41 LOADB                            R2 1
       42 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Constants"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["util"]
       16 GETTABLEKS                       R3 R3 K7 ["Types"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R4 R0 K8 ["Analytics"]
       23 CALL                             R3 1 1
       24 DUPCLOSURE                       R4 K9 [PROTO_0]
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R3
       27 RETURN                           R4 1
