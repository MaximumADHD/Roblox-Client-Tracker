PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_4:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 NOT                              R2 R3
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["Instance picker was already active before trying to pick."]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 LOADB                            R1 1
        9 SETUPVAL                         R1 0
       10 MOVE                             R1 R0
       11 JUMPIFNOT                        R1 ; [+2]
       12 GETTABLEKS                       R1 R0 K3 ["filter"]
       14 GETUPVAL                         R2 1
       15 MOVE                             R4 R1
       16 JUMPIF                           R4 ; [+1]
       17 DUPCLOSURE                       R4 K4 [PROTO_4]
       18 NAMECALL                         R2 R2 K5 ["PickInstanceAsync"]
       20 CALL                             R2 2 1
       21 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["Trying to deactivate instance picker, but it's not active."]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 1
        8 LOADNIL                          R2
        9 NAMECALL                         R0 R0 K3 ["SubmitPickedInstanceAsync"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_8:
        0 LOADK                            R3 K0 ["InstancePicker"]
        1 NAMECALL                         R1 R0 K1 ["GetPluginComponent"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+3]
        5 LOADNIL                          R2
        6 DUPCLOSURE                       R3 K2 [PROTO_0]
        7 RETURN                           R2 2
        8 LOADB                            R2 0
        9 NEWCLOSURE                       R3 P1
       10 CAPTURE                          REF R2
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K3 ["new"]
       14 CALL                             R4 0 1
       15 GETTABLEKS                       R5 R1 K4 ["Activated"]
       17 NEWCLOSURE                       R7 P2
       18 CAPTURE                          REF R2
       19 CAPTURE                          VAL R4
       20 NAMECALL                         R5 R5 K5 ["Connect"]
       22 CALL                             R5 2 1
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R6 R6 K3 ["new"]
       26 CALL                             R6 0 1
       27 GETTABLEKS                       R7 R1 K6 ["Deactivated"]
       29 NEWCLOSURE                       R9 P3
       30 CAPTURE                          REF R2
       31 CAPTURE                          VAL R6
       32 NAMECALL                         R7 R7 K5 ["Connect"]
       34 CALL                             R7 2 1
       35 NEWCLOSURE                       R8 P4
       36 CAPTURE                          REF R2
       37 CAPTURE                          VAL R1
       38 NEWCLOSURE                       R9 P5
       39 CAPTURE                          REF R2
       40 CAPTURE                          VAL R1
       41 NEWCLOSURE                       R10 P6
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R7
       44 DUPTABLE                         R11 K12 [{"isActive", "activated", "deactivated", "pickInstanceAsync", "deactivateInstancePickerAsync"}]
       45 SETTABLEKS                       R3 R11 K7 ["isActive"]
       47 SETTABLEKS                       R4 R11 K8 ["activated"]
       49 SETTABLEKS                       R6 R11 K9 ["deactivated"]
       51 SETTABLEKS                       R8 R11 K10 ["pickInstanceAsync"]
       53 SETTABLEKS                       R9 R11 K11 ["deactivateInstancePickerAsync"]
       55 MOVE                             R12 R11
       56 MOVE                             R13 R10
       57 CLOSEUPVALS                      R2
       58 RETURN                           R12 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Signal"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_8]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
