PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["isAvatar"]
        6 GETUPVAL                         R2 0
        7 CALL                             R1 1 1
        8 JUMPIFNOT                        R1 ; [+7]
        9 GETUPVAL                         R3 2
       10 LOADB                            R4 1
       11 CALL                             R3 1 -1
       12 NAMECALL                         R1 R0 K1 ["dispatch"]
       14 CALL                             R1 -1 0
       15 RETURN                           R0 0
       16 NAMECALL                         R1 R0 K2 ["getState"]
       18 CALL                             R1 1 1
       19 GETTABLEKS                       R3 R1 K3 ["selectItem"]
       21 GETTABLEKS                       R2 R3 K4 ["accessoryTypeInfo"]
       23 JUMPIF                           R2 ; [+1]
       24 RETURN                           R0 0
       25 GETUPVAL                         R3 3
       26 JUMPIF                           R3 ; [+11]
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R5 R2 K5 ["Name"]
       30 NAMECALL                         R3 R3 K6 ["FindFirstChild"]
       32 CALL                             R3 2 1
       33 SETUPVAL                         R3 3
       34 GETUPVAL                         R3 3
       35 JUMPIF                           R3 ; [+2]
       36 LOADNIL                          R3
       37 RETURN                           R3 1
       38 GETTABLEKS                       R3 R2 K7 ["Bounds"]
       40 GETTABLEKS                       R4 R2 K8 ["Offset"]
       42 GETUPVAL                         R5 4
       43 GETUPVAL                         R9 3
       44 GETTABLEKS                       R8 R9 K9 ["WorldPosition"]
       46 ADD                              R7 R8 R4
       47 MOVE                             R8 R3
       48 GETUPVAL                         R10 0
       49 GETTABLEKS                       R9 R10 K10 ["CFrame"]
       51 GETUPVAL                         R11 0
       52 GETTABLEKS                       R10 R11 K11 ["Size"]
       54 NAMECALL                         R5 R5 K12 ["checkAccessoryBounds"]
       56 CALL                             R5 5 1
       57 GETUPVAL                         R8 2
       58 MOVE                             R9 R5
       59 CALL                             R8 1 -1
       60 NAMECALL                         R6 R0 K1 ["dispatch"]
       62 CALL                             R6 -1 0
       63 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          REF R1
        5 CAPTURE                          UPVAL U2
        6 CLOSEUPVALS                      R1
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["AvatarToolsShared"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R3 R1 K7 ["Util"]
       18 GETTABLEKS                       R2 R3 K8 ["AccessoryAndBodyToolShared"]
       20 GETTABLEKS                       R3 R2 K9 ["AccessoryUtil"]
       22 GETTABLEKS                       R4 R2 K10 ["ItemCharacteristics"]
       24 GETIMPORT                        R5 K4 [require]
       26 GETTABLEKS                       R8 R0 K11 ["Src"]
       28 GETTABLEKS                       R7 R8 K12 ["Actions"]
       30 GETTABLEKS                       R6 R7 K13 ["SetInBounds"]
       32 CALL                             R5 1 1
       33 DUPCLOSURE                       R6 K14 [PROTO_1]
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R5
       36 CAPTURE                          VAL R3
       37 RETURN                           R6 1
