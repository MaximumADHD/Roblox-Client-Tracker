PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 MOVE                             R8 R5
        5 NAMECALL                         R6 R0 K0 ["IsA"]
        7 CALL                             R6 2 1
        8 JUMPIFNOT                        R6 ; [+2]
        9 LOADB                            R6 1
       10 RETURN                           R6 1
       11 FORGLOOP                         R1 2 ; [-8]
       13 LOADB                            R1 0
       14 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 NOT                              R2 R3
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["Instance picker was already active before trying to pick."]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 LOADB                            R1 1
        9 SETUPVAL                         R1 0
       10 GETUPVAL                         R1 1
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          VAL R0
       13 NAMECALL                         R1 R1 K3 ["PickInstanceAsync"]
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_7:
        0 LOADK                            R3 K0 ["InstancePicker"]
        1 NAMECALL                         R1 R0 K1 ["GetPluginComponent"]
        3 CALL                             R1 2 1
        4 FASTCALL2K                       ASSERT R1 K2 ; [+5]
        6 MOVE                             R3 R1
        7 LOADK                            R4 K2 ["Cannot start properties, InstancePicker component was not found."]
        8 GETIMPORT                        R2 K4 [assert]
       10 CALL                             R2 2 0
       11 LOADB                            R2 0
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          REF R2
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R5 R6 K5 ["Signal"]
       17 GETTABLEKS                       R4 R5 K6 ["new"]
       19 CALL                             R4 0 1
       20 GETTABLEKS                       R5 R1 K7 ["Activated"]
       22 NEWCLOSURE                       R7 P1
       23 CAPTURE                          REF R2
       24 CAPTURE                          VAL R4
       25 NAMECALL                         R5 R5 K8 ["Connect"]
       27 CALL                             R5 2 1
       28 GETUPVAL                         R8 0
       29 GETTABLEKS                       R7 R8 K5 ["Signal"]
       31 GETTABLEKS                       R6 R7 K6 ["new"]
       33 CALL                             R6 0 1
       34 GETTABLEKS                       R7 R1 K9 ["Deactivated"]
       36 NEWCLOSURE                       R9 P2
       37 CAPTURE                          REF R2
       38 CAPTURE                          VAL R6
       39 NAMECALL                         R7 R7 K8 ["Connect"]
       41 CALL                             R7 2 1
       42 NEWCLOSURE                       R8 P3
       43 CAPTURE                          REF R2
       44 CAPTURE                          VAL R1
       45 NEWCLOSURE                       R9 P4
       46 CAPTURE                          REF R2
       47 CAPTURE                          VAL R1
       48 NEWCLOSURE                       R10 P5
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R7
       51 DUPTABLE                         R11 K15 [{"isActive", "activated", "deactivated", "pickInstanceAsync", "deactivateInstancePickerAsync"}]
       52 SETTABLEKS                       R3 R11 K10 ["isActive"]
       54 SETTABLEKS                       R4 R11 K11 ["activated"]
       56 SETTABLEKS                       R6 R11 K12 ["deactivated"]
       58 SETTABLEKS                       R8 R11 K13 ["pickInstanceAsync"]
       60 SETTABLEKS                       R9 R11 K14 ["deactivateInstancePickerAsync"]
       62 MOVE                             R12 R10
       63 CLOSEUPVALS                      R2
       64 RETURN                           R11 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PropertiesPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Properties"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_7]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
