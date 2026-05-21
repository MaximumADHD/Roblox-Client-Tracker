PROTO_0:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R5 R0
        3 GETIMPORT                        R4 K1 [type]
        5 CALL                             R4 1 1
        6 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 LOADK                            R4 K3 ["router must be a table"]
       11 CALL                             R2 2 0
       12 GETUPVAL                         R2 0
       13 FASTCALL1                        TYPE R1 ; [+3]
       14 MOVE                             R5 R1
       15 GETIMPORT                        R4 K1 [type]
       17 CALL                             R4 1 1
       18 JUMPIFEQKS                       R4 K4 ["string"] ; [+2]
       20 LOADB                            R3 0 +1
       21 LOADB                            R3 1
       22 LOADK                            R4 K5 ["routeName must be a string"]
       23 CALL                             R2 2 0
       24 GETTABLEKS                       R2 R0 K6 ["childRouters"]
       26 JUMPIFNOT                        R2 ; [+8]
       27 GETTABLEKS                       R3 R0 K6 ["childRouters"]
       29 GETTABLE                         R2 R3 R1
       30 JUMPIFNOT                        R2 ; [+4]
       31 GETTABLEKS                       R3 R0 K6 ["childRouters"]
       33 GETTABLE                         R2 R3 R1
       34 RETURN                           R2 1
       35 GETUPVAL                         R2 0
       36 GETTABLEKS                       R5 R0 K7 ["getComponentForRouteName"]
       38 FASTCALL1                        TYPE R5 ; [+2]
       39 GETIMPORT                        R4 K1 [type]
       41 CALL                             R4 1 1
       42 JUMPIFEQKS                       R4 K8 ["function"] ; [+2]
       44 LOADB                            R3 0 +1
       45 LOADB                            R3 1
       46 LOADK                            R4 K9 ["router.getComponentForRouteName must be a function if no child routers are specified"]
       47 CALL                             R2 2 0
       48 GETTABLEKS                       R2 R0 K7 ["getComponentForRouteName"]
       50 MOVE                             R3 R1
       51 CALL                             R2 1 1
       52 FASTCALL1                        TYPE R2 ; [+3]
       53 MOVE                             R4 R2
       54 GETIMPORT                        R3 K1 [type]
       56 CALL                             R3 1 1
       57 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+4]
       59 GETTABLEKS                       R3 R2 K10 ["router"]
       61 RETURN                           R3 1
       62 LOADNIL                          R3
       63 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K5 ["utils"]
       11 GETTABLEKS                       R1 R1 K6 ["validate"]
       13 CALL                             R0 1 1
       14 DUPCLOSURE                       R1 K7 [PROTO_0]
       15 CAPTURE                          VAL R0
       16 RETURN                           R1 1
